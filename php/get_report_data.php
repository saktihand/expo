<?php
include 'koneksi.php';

$filter = $_GET['filter'];
$data = [];

if ($filter == 'bulanan') {
    $query = "
        SELECT DATE_FORMAT(tanggal_pemasukan, '%Y-%m') AS tanggal, jumlah, 'pemasukan' AS tipe 
        FROM pemasukan
        UNION ALL
        SELECT DATE_FORMAT(tanggal_pengeluaran, '%Y-%m') AS tanggal, jumlah, 'pengeluaran' AS tipe 
        FROM pengeluaran
        ORDER BY tanggal
    ";
} elseif ($filter == 'tahunan') {
    $query = "
        SELECT YEAR(tanggal_pemasukan) AS tanggal, jumlah, 'pemasukan' AS tipe 
        FROM pemasukan
        UNION ALL
        SELECT YEAR(tanggal_pengeluaran) AS tanggal, jumlah, 'pengeluaran' AS tipe 
        FROM pengeluaran
        ORDER BY tanggal
    ";
}

$result = $conn->query($query);

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

$conn->close();

echo json_encode($data);
?>
