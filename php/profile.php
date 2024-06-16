<?php
session_start();
$conn = mysqli_connect("localhost", "root", "", "expo");

// Ambil data dari URL
$email = $_SESSION['login'];

// Periksa apakah $id sudah diset sebelum digunakan dalam query
if ($email!== null) {
    // Query data mahasiswa berdasarkan id
    $user = query("SELECT * FROM pengunjung WHERE email = '$email'")[0];
} else {
    // Tangani kasus ketika "id" tidak diset di dalam URL
    echo "ID tidak diberikan di dalam URL";
}

function query($query) {
  global $conn;
  $result = mysqli_query($conn, $query);

  if (!$result) {
      // Tangani kesalahan SQL
      die("Kesalahan SQL: " . mysqli_error($conn));
  }

  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row;
  }
  return $rows;
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile Manager</title>
    <link rel="stylesheet" href="../css/profile.css" />
    <link rel="shortcut icon" href="../Logo/Logo.png"/>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
      rel="stylesheet"/>
    <link rel="shortcut icon" href="../Logo/Logo.png"/>
  </head>

  <body>
    <div class="sidebar">
        <div class="logo">
            <img src="./logo.png" alt="Glow RX" />
            <span>Glow RX</span>
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
            <h1>Profile Manager</h1>
        </header>
                <div class="card-body media align-items-center">
                  <img
                    src="https://bootdey.com/img/Content/avatar/avatar1.png"
                    alt
                    class="d-block ui-w-80"/>  
                </div>

                <hr class="border-light m-0" />
                <div class="card-body">
                  <div class="form-group">
                    <label class="form-label">Nama</label>
                    <input
                      type="text"
                      class="form-control"
                      value="<?= $user["nama"] ?>"
                    />
                  </div>
                  <div class="form-group">
                    <label class="form-label">E-mail</label>
                    <input
                      type="text"
                      class="form-control mb-1"
                      value="<?= $user["email"] ?>"
                    />
                  </div>
                  <div class="form-group">
                    <label class="form-label">Tanggal lahir</label>
                    <input
                      type="text"
                      class="form-control"
                      value="<?= $user["tanggal"] ?>"
                    />
                  </div>
        </div>
      </div>
    </div>
    <script
      data-cfasync="false"
      src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"
    ></script>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript"></script>
  </body>
</html>
