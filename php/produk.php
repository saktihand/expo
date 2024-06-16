<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Dashboard - Produk</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../Logo/logo.png"/>
    <style>
        .custom-button {
            background-color: #709FB0;
            color: white;
            border: transparent;
            padding: 10px 20px;
            cursor: pointer;
        }

        .custom-button:hover {
            background-color: #709FB0; /* Same as the original color */
            color: white; /* Same as the original color */
        }
    </style>
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
            <h1>Produk</h1>
        </header>
        <div class="card-product">
            <h2>List Product</h2>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>Gambar</th>
                            <th>Nama Produk</th>
                            <th>Penjualan</th>
                            <th>Tanggal Rilis</th>
                            <th>Detail</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php        
                        $query = "SELECT p.id_produk, p.nama, p.url_gambar, p.tanggal_rilis, COALESCE(SUM(j.jumlah), 0) AS jumlah 
                                FROM produk p 
                                LEFT JOIN penjualan j ON p.id_produk = j.id_produk 
                                GROUP BY p.id_produk";

                        $result = $conn->query($query);

                        if ($result->num_rows > 0) {
                            while($row = $result->fetch_assoc()) {
                                echo "<tr>
                                        <td><img src='../img/{$row['url_gambar']}' alt='{$row['nama']}' width='100'></td>
                                        <td>{$row['nama']}</td>
                                        <td>{$row['jumlah']}</td>
                                        <td>{$row['tanggal_rilis']}</td>
                                        <td><a href='produk_detail.php?id_produk={$row['id_produk']}'><button type='button'style='background-color: #709FB0; color: white;'>Detail</button></a></td>
                                    </tr>";
                            }
                        } else {
                            echo "<tr><td colspan='5'>Tidak ada data yang ditemukan</td></tr>";
                        }

                        $conn->close();
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
