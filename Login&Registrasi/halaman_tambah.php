<?php
    include 'koneksi.php';

    $nama = $_POST['nama'];
    $tanggal = $_POST['tanggal'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $pass2 = $_POST['pass2'];

    if ($pass !== $pass2) {
        echo "<script>
                alert('Password tidak sesuai!');
              </script>";
    } else {
        // Enkripsi password
        $pass = password_hash($pass, PASSWORD_DEFAULT);

        mysqli_query($koneksi, "INSERT INTO pengunjung VALUES('', '$nama', '$tanggal', '$email', '$pass')");

        header("location: login.php");
        exit(); // Make sure to exit after redirecting
    }
?>
