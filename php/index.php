<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GlowRX Dashboard</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="shortcut icon" href="../Logo/logo.png"/>
</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <img src="../foto/logo.png" alt="">
            <span>GlowRX</span>
        </div>
        <nav>
            <ul>
                <li><i class='bx bxs-dashboard'></i><a href="index.php" >Dashboard</a></li>
                <li><i class='bx bx-bar-chart-alt-2'></i><a href="analytic.php">Analytics</a></li>
                <li><i class='bx bx-store-alt'></i><a href="produk.php">Product</a></li>
                <li><i class='bx bx-bulb'></i><a href="ai.php">Recommendation AI</a></li>
                <li><i class='bx bx-bar-chart-alt'></i><a href="report.php">Report</a></li>
                <li><i class='bx bx-happy-alt'></i><a href="profile.php">Profile</a></li>
                <li><i class='bx bxs-log-out'></i><a href="../index.php">Logout</a></li>
            </ul>
        </nav>
        <div class="user-info">
            <img src="../foto/manager.jpg" alt="User">
            <span>Adi Prasetyo<br>Manager</span>
        </div>
    </div>
    <div class="main-content">
        <header>
            <h1>Dashboard</h1>
        </header>
        <section class="stats">
            <div class="stat-card">
                <i class='bx bx-user'></i>
                <h2>Pengguna Aktif</h2>
                <?php
                    // Ambil data jumlah user
                    $result = $conn->query("SELECT COUNT(*) AS total_users FROM pengguna");
                    if ($result) {
                        $row = $result->fetch_assoc();
                        echo "<p> " . $row['total_users'] . "<span>+</span>" . "</p>";
                    } else {
                        echo "<p>Error retrieving data</p>";
                    }
                ?>
            </div>

            <div class="stat-card">
                <i class='bx bxl-deezer'></i>
                <h2>Produk Terlaris</h2>
                <?php
                    $result = $conn->query("SELECT p.nama, SUM(j.jumlah) AS total_penjualan 
                                            FROM penjualan j 
                                            JOIN produk p ON j.id_produk = p.id_produk 
                                            GROUP BY p.id_produk 
                                            ORDER BY total_penjualan DESC 
                                            LIMIT 1");
                    if ($result) {
                        $row = $result->fetch_assoc();
                        echo "<p>" . $row['nama'] . " <span>+" . $row['total_penjualan'] . "</span></p>";
                    } else {
                        echo "<p>Error retrieving data</p>";
                    }
                ?>
            </div>

            <div class="stat-card">
                <i class='bx bx-basket'></i>
                <h2>Total Produk</h2>
                <?php
                    $result = $conn->query("SELECT COUNT(*) AS total_produk FROM produk");
                    if ($result) {
                        $row = $result->fetch_assoc();
                        echo "<p>" . $row['total_produk'] . "</p>";
                    } else {
                        echo "<p>Error retrieving data</p>";
                    }
                ?>
            </div>
            
            <div class="stat-card">
                <i class='bx bxs-star-half'></i>
                <h2>Tingkat Kepuasan</h2>
                <?php
                    $result = $conn->query("SELECT AVG(rating) AS rate_penjualan FROM produk");
                    if ($result) {
                        $row = $result->fetch_assoc();
                        echo "<p>" . number_format($row['rate_penjualan'], 2) . "</p>";
                    } else {
                        echo "<p>Error retrieving data</p>";
                    }
                ?>
            </div>
        </section>

        <section class="card-prduct">
            <canvas id="penjualanChart" width="400" height="200"></canvas>
        </section>

        <script>
            document.addEventListener('DOMContentLoaded', function() {
                fetch('get_data.php')
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok ' + response.statusText);
                    }
                    return response.json();
                })
                .then(data => {
                    const produk = [];
                    const jumlah = [];

                    // Memproses data yang diterima dari get_data.php
                    data.forEach(item => {
                        produk.push(item.produk);
                        jumlah.push(item.jumlah_penjualan);
                    });

                    // Konfigurasi Chart.js
                    const ctx = document.getElementById('penjualanChart').getContext('2d');
                    new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: produk,
                            datasets: [{
                                label: 'Jumlah Penjualan',
                                data: jumlah,
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                borderColor: 'rgba(75, 192, 192, 1)',
                                borderWidth: 1
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });
                })
                .catch(error => console.error('Error fetching data:', error));
            });
        </script>


        <section class="card-product">
            <h2>Top Product</h2>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>Nama Produk</th>
                            <th>Jumlah Penjualan</th>
                            <th>Rating</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $result = $conn->query("SELECT p.nama, SUM(j.jumlah) AS total_penjualan, p.rating
                                                FROM penjualan j 
                                                JOIN produk p ON j.id_produk = p.id_produk 
                                                GROUP BY p.id_produk 
                                                ORDER BY total_penjualan DESC 
                                                LIMIT 5");

                        while($row = $result->fetch_assoc()) {
                            echo "<tr><td>{$row['nama']}</td><td>{$row['total_penjualan']}</td><td>{$row['rating']}</td></tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </section>

    </div>
</body>
</html>
