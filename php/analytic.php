<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Analytic</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="shortcut icon" href="../Logo/Logo.png"/>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/collect.js/4.36.1/collect.min.js" integrity="sha512-aub0tRfsNTyfYpvUs0e9G/QRsIDgKmm4x59WRkHeWUc3CXbdiMwiMQ5tTSElshZu2LCq8piM/cbIsNwuuIR4gA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
</head>
<body onload="getData()">
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
            <h1>Analytic</h1>
        </header>
        <div class="charts">
            <div class="row">
                <div class="chart-item">
                    <h2>Gender</h2>
                    <canvas id="genderChart" width="400" height="200"></canvas>
                </div>
                <div class="chart-item">
                    <h2>Type Kulit</h2>
                    <canvas id="skinTypeChart" width="400" height="200"></canvas>
                </div>
            </div>
            <div class="chart-item">
            <h2>Jangkauan Iklan</h2>
                <canvas id="chartSales" width="400" height="200"></canvas>
            </div>
            <div class="chart-item">
                <h2>Kunjungan Produk</h2>
                <select id="filter">
                    <option value="daily">Harian</option>
                    <option value="monthly">Bulanan</option>
                    <option value="yearly">Tahunan</option>
                </select>
                <canvas id="chartTraffic" width="800" height="400"></canvas>
            </div>
        </div>
    </div>
    
    <script src="../js/analytic.js"></script>
</body>
</html>
