<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Report</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../Logo/Logo.png"/>
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
            <h1>Report</h1>
        </header>
        <section class="card-product">
            <h2>Grafik Pemasukan dan Pengeluaran</h2>

            <label for="filter">Pilih Rentang Waktu:</label>
            <select id="filter">
                <option value="bulanan">Bulanan</option>
                <option value="tahunan">Tahunan</option>
            </select>

            <canvas id="reportChart" width="400" height="200"></canvas>
        </section>
    
        <section class="card-product">
            <h2>Pemasukan dan Pengeluaran</h2>
            <div class="buttons">
            <button id="btn-all" onclick="filterTable('all')">All Data</button>
            <button id="btn-pemasukan" onclick="filterTable('pemasukan')">Pemasukan</button>
            <button id="btn-pengeluaran" onclick="filterTable('pengeluaran')">Pengeluaran</button>
        </div>
            <div class="table-responsive" id="tableWrapper">
                <table>
                    <thead>
                        <tr>
                            <th>Produk</th>
                            <th>Jumlah</th>
                            <th>Tanggal</th>
                            <th>Tipe</th>
                            <th>Deskripsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        include 'koneksi.php';
                        $query = "
                            SELECT p.nama, pm.jumlah, pm.tanggal_pemasukan AS tanggal, 'pemasukan' AS tipe, pm.deskripsi 
                            FROM pemasukan pm 
                            JOIN produk p ON pm.id_produk = p.id_produk
                            UNION ALL
                            SELECT p.nama, pg.jumlah, pg.tanggal_pengeluaran AS tanggal, 'pengeluaran' AS tipe, pg.deskripsi 
                            FROM pengeluaran pg 
                            JOIN produk p ON pg.id_produk = p.id_produk
                            ORDER BY tanggal
                        ";

                        $result = $conn->query($query);

                        while($row = $result->fetch_assoc()) {
                            echo "<tr>
                                    <td>{$row['nama']}</td>
                                    <td>{$row['jumlah']}</td>
                                    <td>{$row['tanggal']}</td>
                                    <td>{$row['tipe']}</td>
                                    <td>{$row['deskripsi']}</td>
                                </tr>";
                        }

                        $conn->close();
                        ?>
                    </tbody>
                </table>
            </div>
            <div class="table-navigation">
                <button class="nav-button" id="prevButton"><i class='bx bx-chevron-left'></i>Previous</button>
                <button class="nav-button" id="nextButton">Next<i class='bx bx-chevron-right'></i></button>
            </div>
        </section>

    </div>
    <script>
            document.addEventListener('DOMContentLoaded', function() {
            const fetchData = (filter) => {
                fetch(`get_report_data.php?filter=${filter}`)
                    .then(response => response.json())
                    .then(data => {
                        console.log("Data fetched from server:", data);

                        let labels;
                        if (filter === 'bulanan') {
                            labels = [
                                'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
                                'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
                            ];
                        } else {
                            labels = [...new Set(data.map(item => new Date(item.tanggal).getFullYear()))].sort();
                        }

                        const pemasukan = {};
                        const pengeluaran = {};

                        data.forEach(item => {
                            let dateLabel;
                            if (filter === 'bulanan') {
                                const date = new Date(item.tanggal + '-01');
                                dateLabel = date.toLocaleString('id-ID', { month: 'long' });
                            } else {
                                dateLabel = new Date(item.tanggal).getFullYear();
                            }

                            if (item.tipe === 'pemasukan') {
                                if (!pemasukan[dateLabel]) {
                                    pemasukan[dateLabel] = 0;
                                }
                                pemasukan[dateLabel] += parseFloat(item.jumlah);
                            } else {
                                if (!pengeluaran[dateLabel]) {
                                    pengeluaran[dateLabel] = 0;
                                }
                                pengeluaran[dateLabel] += parseFloat(item.jumlah);
                            }
                        });

                        const pemasukanData = labels.map(label => pemasukan[label] || 0);
                        const pengeluaranData = labels.map(label => pengeluaran[label] || 0);

                        console.log("Labels:", labels);
                        console.log("Pemasukan Data:", pemasukanData);
                        console.log("Pengeluaran Data:", pengeluaranData);

                        if (window.myChart) {
                            window.myChart.destroy();
                        }

                        const ctx = document.getElementById('reportChart').getContext('2d');
                        window.myChart = new Chart(ctx, {
                            type: 'line',
                            data: {
                                labels: labels,
                                datasets: [{
                                    label: 'Pemasukan',
                                    data: pemasukanData,
                                    borderColor: 'rgba(75, 192, 192, 1)',
                                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                    fill: false
                                }, {
                                    label: 'Pengeluaran',
                                    data: pengeluaranData,
                                    borderColor: 'rgba(255, 99, 132, 1)',
                                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                                    fill: false
                                }]
                            },
                            options: {
                                scales: {
                                    y: {
                                        beginAtZero: true,
                                        min: filter === 'tahunan' ? 5000000 : 0, // Start from 5,000,000 for yearly data
                                        ticks: {
                                            stepSize: 5000000, // Interval 5.000.000
                                            callback: function(value) {
                                                return 'Rp ' + value.toLocaleString();
                                            }
                                        }
                                    }
                                }
                            }
                        });
                    })
                    .catch(error => {
                        console.error('Error fetching data:', error);
                    });
            };

            fetchData('bulanan');

            document.getElementById('filter').addEventListener('change', event => {
                fetchData(event.target.value);
            });
        });
        // navigation
        var tableWrapper = document.getElementById('tableWrapper');
                var prevButton = document.getElementById('prevButton');
                var nextButton = document.getElementById('nextButton');
                var rowsPerPage = 10;  // Number of rows per page
                var currentPage = 0;

        function showPage(page) {
            var rows = tableWrapper.querySelectorAll('tbody tr');
            var totalPages = Math.ceil(rows.length / rowsPerPage);

            // Hide all rows
            rows.forEach((row, index) => {
                row.style.display = 'none';
            });

            // Show the rows for the current page
            for (var i = page * rowsPerPage; i < (page + 1) * rowsPerPage && i < rows.length; i++) {
                rows[i].style.display = 'table-row';
            }

            // Enable or disable buttons based on the current page
            prevButton.disabled = page === 0;
            nextButton.disabled = page === totalPages - 1;
        }

        // Event listeners for the navigation buttons
        prevButton.addEventListener('click', function() {
            if (currentPage > 0) {
                currentPage--;
                showPage(currentPage);
            }
        });

        nextButton.addEventListener('click', function() {
            var rows = tableWrapper.querySelectorAll('tbody tr');
            var totalPages = Math.ceil(rows.length / rowsPerPage);
            if (currentPage < totalPages - 1) {
                currentPage++;
                showPage(currentPage);
            }
        });

        // Initial page load
        showPage(currentPage);

    </script>
</body>
</html>
