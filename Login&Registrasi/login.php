<?php
include 'koneksi.php';
session_start();
if (isset($_POST['login'])) {
  $user = $_POST['user'];
  $pass = $_POST['pass'];
  $batas = 1;
  
  // Periksa login untuk pengunjung
  $data = mysqli_query($koneksi, "select * from pengunjung");
  $sql = mysqli_query($koneksi, "select COUNT(*) as total FROM pengunjung");
  $row = mysqli_fetch_assoc($sql);

  while ($d = mysqli_fetch_array($data)) {
      if ($user == $d['email'] && password_verify($pass, $d['pass'])) {
          // Menciptakan session
          $_SESSION['login'] = $user;
          
          // Menuju ke halaman pemeriksaan session
          echo "<h1>Halo, kamu berhasil login!</h1>";
          echo "<h2>Klik <a href='login.php'> di sini (session2.php)</a> untuk menuju ke halaman pemeriksaan session</h2>";
          header("location:../php/index.php");
          exit();
      
      } else if ($batas == $row['total']) {
          header("location:login.php");
      } // Jika login gagal
      
      $batas++;
  }
}
else{
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Glow RX</title>
    <link rel="stylesheet" href="Login.css" />
    <link rel="shortcut icon" href="../Logo/logo.png"/>
  </head>
  <body>
    <main>
      <div id="particles-js"></div>
      <div class="box">
        <div class="inner-box">
          <div class="forms-wrap">
            <form action="" method="post" autocomplete="off" class="sign-in-form">
              <div class="logo">
                <img src="img/logo.png" alt="GLOW RX" href="index.php" />
                <h4>GLOW RX</h4>
              </div>

              <div class="heading">
                <h2>Selamat Datang Kembali</h2>
                <h6>Sudah punya akun?</h6>
                <a href="#" class="toggle">Daftar</a>
              </div>

              <div class="actual-form">
                <div class="input-wrap">
                  <input
                    type="text"
                    class="input-field"
                    autocomplete="off"
                    required name="user"
                  />
                  <label>Email</label>
                </div>

                <div class="input-wrap">
                  <input
                    type="password"
                    minlength="4"
                    class="input-field"
                    autocomplete="off"
                    required name="pass"
                  />
                  <label>Kata Sandi</label>
                </div>

                <input type="submit" name="login" value="masuk" class="sign-btn" />

                <p class="text">
                  Lupa kata sandi atau detail login anda?
                  <a href="#">Dapatkan Bantuan</a> masuk
                </p>
              </div>
            </form>

            <form method="post" action="halaman_tambah.php" autocomplete="off" class="sign-up-form">
              <div class="logo">
                <img src="img/logo.png" alt="STORY" />
                <h4>Glow RX</h4>
              </div>

              <div class="heading">
                <h2>Ayo Mulai Registrasi!</h2>
                <h6>Sudah memiliki akun?</h6>
                <a href="#" class="toggle">masuk</a>
              </div>

              <div class="actual-form">
                <div class="input-wrap">
                  <input name="nama"
                    type="text"
                    minlength="4"
                    class="input-field"
                    autocomplete="off"
                    required
                  />

                  <label>Nama</label>
                </div>

                <div class="input-wrap">
                  <input name="tanggal"
                    type="date"
                    class="input-field"
                    autocomplete="off"
                    placeholder="Tanggal Lahir"
                    required
                  />
                  <label>Tanggal Lahir</label>
                </div>

                <div class="input-wrap">
                  <input name="email"
                    type="email"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Email</label>
                </div>

                <div class="input-wrap">
                  <input name="pass"
                    type="password"
                    minlength="4"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Kata Sandi</label>
                </div>
                <div class="input-wrap">
                  <input
                    name="pass2"
                    type="password"
                    minlength="4"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Konfirmasi Kata Sandi</label>
                </div>

                <input name="simpan" type="submit" value="Daftar" class="sign-btn" />

                <p class="text">
                  <a href="#"></a>
                  <a href="#"></a>
                </p>
              </div>
            </form>
          </div>

          <div class="carousel">
            <div class="images-wrapper">
              <img src="img/image4.jpg" class="image img-1 show" alt="" />
              <img src="img/image2.jpg" class="image img-2" alt="" />
              <img src="img/image3.jpg" class="image img-3" alt="" />
            </div>

            <div class="text-slider">
              <div class="text-wrap">
                <div class="text-group">
                  <h3>Pintu Gerbang Menuju Sistem Informasi yang Seru</h3>
                  <h3>Eksplorasi Data</h3>
                  <h3>Analisis Berbagai Produk Kulit Anda</h3>
                </div>
              </div>

              <div class="bullets">
                <span class="active" data-value="1"></span>
                <span data-value="2"></span>
                <span data-value="3"></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Javascript file -->
    <script type="text/javascript" src="particles.js"></script>
    <script type="text/javascript" src="app.js"></script>
    <script src="login.js"></script>
  </body>
</html>

<?php } ?>
