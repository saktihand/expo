function getData() {
    // Inisialisasi chart untuk gender
    $.ajax({
        type: 'GET',
        url: '../php/get_analytic.php',
        data: {
            functionName: 'getDataGender',
        },
        success: function(response) {
            let data = JSON.parse(response);
            let counts = {
                'Laki-Laki': 0,
                'Perempuan': 0,
            };

            // Warna untuk setiap label
            let colors = {
                'Laki-Laki': 'rgba(150, 100, 232, 0.6)',
                'Perempuan': 'rgba(255, 99, 132, 0.6)'
            };

            // Menghitung jumlah jenis kelamin
            data.forEach(function(pengguna) {
                if (pengguna.jenis_kelamin in counts) {
                    counts[pengguna.jenis_kelamin]++;
                }
            });

            const ctx = document.getElementById('genderChart').getContext('2d');

            new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: Object.keys(counts),
                    datasets: [{
                        label: 'Jumlah Pengguna berdasarkan Jenis Kelamin',
                        backgroundColor: Object.values(colors),
                        borderColor: Object.values(colors),
                        data: Object.values(counts),
                        borderWidth: 1
                    }]
                },
                options: {
                    plugins: {
                        datalabels: {
                            formatter: (value, context) => {
                                let sum = 0;
                                let dataArr = context.chart.data.datasets[0].data;
                                dataArr.map(data => {
                                    sum += data;
                                });
                                let percentage = (value * 100 / sum).toFixed(2) + "%";
                                return percentage;
                            },
                            color: '#fff',
                            display: 'auto'
                        }
                    }
                },
                plugins: [ChartDataLabels]
            });
        },
        error: function(xhr, status, error) {
            console.error("Error fetching data: ", error);
        }
    });

    // Inisialisasi chart untuk jenis kulit
    $.ajax({
        type: 'GET',
        url: '../php/get_analytic.php',
        data: {
            functionName: 'getDataSkin',
        },
        success: function(response) {
            let data = JSON.parse(response);
            let counts = {
                'Normal': 0,
                'Kering': 0,
                'Berminyak' : 0,
                'Kombinasi' : 0
            };

            // Warna untuk setiap label
            let colors = {
                'Normal': 'rgba(150, 100, 232, 0.6)',
                'Kering': 'rgba(255, 99, 132, 0.6)',
                'Berminyak': 'rgba(250, 170, 232, 0.6)',
                'Kombinasi': 'rgba(180, 180, 132, 0.6)'
            };

            data.forEach(function(tipekulit) {
                if (tipekulit.tipe in counts) {
                    counts[tipekulit.tipe]++;
                }
            });

            const ctx = document.getElementById('skinTypeChart').getContext('2d');

            new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: Object.keys(counts),
                    datasets: [{
                        label: 'Jenis Kulit',
                        backgroundColor: Object.values(colors),
                        borderColor: Object.values(colors),
                        data: Object.values(counts),
                        borderWidth: 1
                    }]
                },
                options: {
                    plugins: {
                        datalabels: {
                            formatter: (value, context) => {
                                let sum = 0;
                                let dataArr = context.chart.data.datasets[0].data;
                                dataArr.map(data => {
                                    sum += data;
                                });
                                let percentage = (value * 100 / sum).toFixed(2) + "%";
                                return percentage;
                            },
                            color: '#fff',
                            display: 'auto'
                        }
                    }
                },
                plugins: [ChartDataLabels]
            });
        },
        error: function(xhr, status, error) {
            console.error("Error fetching data: ", error);
        }
    });

    // Ambil data penjualan
    $.ajax({
        type: 'GET',
        url: '../php/get_analytic.php',
        data: {
            functionName: 'getSalesData',
        },
        success: function(response) {
            let salesData = JSON.parse(response);
            let salesLabels = salesData.map(item => item.nama_kampanye + ' (' + item.tanggal_kampanye + ')');
            let salesValues = salesData.map(item => item.total_penjualan);

            const ctxSales = document.getElementById('chartSales').getContext('2d');
            new Chart(ctxSales, {
                type: 'bar',
                data: {
                    labels: salesLabels,
                    datasets: [{
                        label: 'Total Penjualan',
                        data: salesValues,
                        backgroundColor: 'rgba(54, 162, 235, 0.6)',
                        borderColor: 'rgba(54, 162, 235, 1)',
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
        }
    });

    // Ambil data lalu lintas harian
    $.ajax({
        type: 'GET',
        url: '../php/get_analytic.php',
        data: {
            functionName: 'getTrafficDataDaily',
        },
        success: function(response) {
            let trafficDataDaily = JSON.parse(response);
            let trafficLabelsDaily = trafficDataDaily.map(item => item.periode);
            let trafficValuesDaily = trafficDataDaily.map(item => item.total_kunjungan);

            const ctxTraffic = document.getElementById('chartTraffic').getContext('2d');
            var chartTraffic = new Chart(ctxTraffic, {
                type: 'bar',
                data: {
                    labels: trafficLabelsDaily,
                    datasets: [{
                        label: 'Total Kunjungan Harian',
                        data: trafficValuesDaily,
                        backgroundColor: 'rgba(75, 192, 192, 0.6)',
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

            document.getElementById('filter').addEventListener('change', function() {
                let filterValue = this.value;
                if (filterValue === 'daily') {
                    updateTrafficChart(trafficLabelsDaily, trafficValuesDaily, 'Total Kunjungan Harian');
                } else if (filterValue === 'monthly') {
                    $.ajax({
                        type: 'GET',
                        url: '../php/get_analytic.php',
                        data: {
                            functionName: 'getTrafficDataMonthly',
                        },
                        success: function(response) {
                            let trafficDataMonthly = JSON.parse(response);
                            let trafficLabelsMonthly = trafficDataMonthly.map(item => item.periode);
                            let trafficValuesMonthly = trafficDataMonthly.map(item => item.total_kunjungan);
                            updateTrafficChart(trafficLabelsMonthly, trafficValuesMonthly, 'Total Kunjungan Bulanan');
                        }
                    });
                } else if (filterValue === 'yearly') {
                    $.ajax({
                        type: 'GET',
                        url: '../php/get_analytic.php',
                        data: {
                            functionName: 'getTrafficDataYearly',
                        },
                        success: function(response) {
                            let trafficDataYearly = JSON.parse(response);
                            let trafficLabelsYearly = trafficDataYearly.map(item => item.periode);
                            let trafficValuesYearly = trafficDataYearly.map(item => item.total_kunjungan);
                            updateTrafficChart(trafficLabelsYearly, trafficValuesYearly, 'Total Kunjungan Tahunan');
                        }
                    });
                }
            });

            function updateTrafficChart(labels, data, label) {
                chartTraffic.data.labels = labels;
                chartTraffic.data.datasets[0].data = data;
                chartTraffic.data.datasets[0].label = label;
                chartTraffic.update();
            }
        }
    });
}

$(document).ready(function() {
    getData();
});
