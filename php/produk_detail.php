<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Detail Produk</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../Logo/Logo.png"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
            <h2>Detail Product</h2>
        </header>

        <div class="card-product">
            <?php
            $id_produk = $_GET['id_produk'];
            $result = $conn->query("SELECT * FROM produk WHERE id_produk = $id_produk");
            $produk = $result->fetch_assoc();
            ?>
            <div class="product-container">
                <div class="product-image">
                    <?php echo "<img src='../img/{$produk['url_gambar']}' alt='{$produk['nama']}' width='250'>"; ?>
                </div>
                <div class="product-details">
                    <?php
                    echo "<h2>{$produk['nama']}</h2>";
                    echo "<p><b>Deskripsi:</b> {$produk['deskripsi']}</p>";
                    echo "<p><b>Tanggal Rilis:</b> {$produk['tanggal_rilis']}</p>";
                    echo "<p><b>Harga:</b> {$produk['harga']}</p>";

                    $result = $conn->query("SELECT SUM(jumlah) AS total_penjualan FROM penjualan WHERE id_produk = $id_produk");
                    $penjualan = $result->fetch_assoc();
                    echo "<p><b>Total Penjualan:</b> {$penjualan['total_penjualan']}</p>";
                    ?>
                </div>
            </div>
        </div>


        <div class="card-product">
            <h3>Grafik Penjualan</h3>
            <canvas id="penjualanChart" width="400" height="200"></canvas>

            <script>
            fetch(`get_penjualan_data.php?id_produk=<?php echo $id_produk; ?>`)
                .then(response => response.json())
                .then(data => {
                    const tanggal = [];
                    const jumlah = [];

                    data.forEach(item => {
                        tanggal.push(item.tanggal);
                        jumlah.push(item.jumlah);
                    });

                    const ctx = document.getElementById('penjualanChart').getContext('2d');
                    new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: tanggal,
                            datasets: [{
                                label: 'Jumlah Penjualan',
                                data: jumlah,
                                borderColor: 'rgba(75, 192, 192, 1)',
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                fill: false
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
            </script>


        </div>
    </div>
</body>
</html>
