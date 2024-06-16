<?php
include "koneksi.php";

$functionName = htmlspecialchars($_GET['functionName']);

switch($functionName) {
    case 'getDataGender':
        getDataGender();
        break;
    case 'getDataSkin':
        getDataSkin();
        break;
    case 'getDataMaterialDistribution':
        getDataMaterialDistribution();
        break;
    case 'getSalesData':
        getSalesData($conn);
        break;
    case 'getTrafficDataDaily':
        getTrafficDataDaily($conn);
        break;
    case 'getTrafficDataMonthly':
        getTrafficDataMonthly($conn);
        break;
    case 'getTrafficDataYearly':
        getTrafficDataYearly($conn);
        break;
    default:
        echo json_encode([]);
        break;
}

function getDataGender() {
    global $conn;

    $data1 = [];
    $query1 = mysqli_query($conn, "SELECT jenis_kelamin FROM pengguna");

    while ($row1 = mysqli_fetch_assoc($query1)) {
        $data1[] = $row1;
    }
    echo json_encode($data1);
}

function getDataSkin() {
    global $conn;

    $data2 = [];
    $query2 = mysqli_query($conn, "SELECT tipekulit.tipe 
                                   FROM pengguna 
                                   JOIN tipekulit ON pengguna.id_tipe_kulit = tipekulit.id_tipe_kulit");

    while ($row2 = mysqli_fetch_assoc($query2)) {
        $data2[] = $row2;
    }
    echo json_encode($data2);
}

function getDataMaterialDistribution() {
    global $conn;

    $data3 = [];
    $query3 = mysqli_query($conn, "SELECT produk.nama AS produk, bahan.nama AS bahan, produk_bahan.jumlah
                                   FROM produk_bahan
                                   JOIN produk ON produk_bahan.id_produk = produk.id_produk
                                   JOIN bahan ON produk_bahan.id_bahan = bahan.id_bahan");

    while ($row3 = mysqli_fetch_assoc($query3)) {
        $data3[] = $row3;
    }
    echo json_encode($data3);
}

function getSalesData($conn) {
    $sql = "SELECT nama_kampanye, SUM(penjualan_sales) as total_penjualan, tanggal_kampanye 
            FROM sales 
            GROUP BY nama_kampanye, tanggal_kampanye";
    $result = $conn->query($sql);

    $salesData = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $salesData[] = $row;
        }
    }

    echo json_encode($salesData);
}

function getTrafficDataDaily($conn) {
    $sql = "SELECT DAYNAME(tanggal_kunjungan) as periode, COUNT(*) as total_kunjungan 
            FROM traffic 
            GROUP BY periode 
            ORDER BY FIELD(periode, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')";
    $result = $conn->query($sql);

    $trafficDataDaily = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $trafficDataDaily[] = $row;
        }
    }

    echo json_encode($trafficDataDaily);
}

function getTrafficDataMonthly($conn) {
    $sql = "SELECT DATE_FORMAT(tanggal_kunjungan, '%M') as periode, COUNT(*) as total_kunjungan 
            FROM traffic 
            GROUP BY periode 
            ORDER BY MONTH(tanggal_kunjungan)";
    $result = $conn->query($sql);

    $trafficDataMonthly = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $trafficDataMonthly[] = $row;
        }
    }

    echo json_encode($trafficDataMonthly);
}

function getTrafficDataYearly($conn) {
    $sql = "SELECT YEAR(tanggal_kunjungan) as periode, COUNT(*) as total_kunjungan 
            FROM traffic 
            GROUP BY periode";
    $result = $conn->query($sql);

    $trafficDataYearly = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $trafficDataYearly[] = $row;
        }
    }

    echo json_encode($trafficDataYearly);
}

mysqli_close($conn);
?>

