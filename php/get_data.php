<?php
include 'koneksi.php';

$result = $conn->query("SELECT p.nama AS produk, SUM(j.jumlah) AS jumlah_penjualan
                        FROM penjualan j 
                        JOIN produk p ON j.id_produk = p.id_produk 
                        GROUP BY p.id_produk");

$data = [];
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

header('Content-Type: application/json');
echo json_encode($data);
?>
