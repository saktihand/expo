<?php
include 'koneksi.php';

$id_produk = $_GET['id_produk'];

$query = "SELECT DATE(tanggal_penjualan) AS tanggal, SUM(jumlah) AS jumlah 
          FROM penjualan 
          WHERE id_produk = $id_produk 
          GROUP BY DATE(tanggal_penjualan)";

$result = $conn->query($query);

$data = [];
while($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data);

$conn->close();
?>
