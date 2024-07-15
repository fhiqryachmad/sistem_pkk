<?php
session_start();
require_once "support/myfunction.php";

// Cek Login, terdaftar atau tidak
if (isset($_POST["submit"]) and $_POST["submit"] == "proses") {
    login($_POST["username"], $_POST["password"]); // Memanggil fungsi login dengan seluruh data POST
}

// Jika sudah login, arahkan ke halaman index.php
jump_if_login_sucess();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login - Dashboard Admin</title>
    <link href="../css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #3498db; /* Warna background */
            color: #333; /* Warna teks */
            font-family: Arial, sans-serif; /* Font family */
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #2980b9; /* Warna header card */
            border-radius: 15px 15px 0 0;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .form-control {
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: box-shadow 0.3s ease-in-out;
        }
        .form-control:focus {
            border-color: #2980b9; /* Warna border saat focus */
            box-shadow: 0 0 0 0.2rem rgba(41, 128, 185, 0.25); /* Efek shadow saat focus */
        }
        .btn-primary {
            background-color: #2980b9; /* Warna tombol */
            border-color: #2980b9;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #1f6696; /* Warna tombol saat hover */
            border-color: #1f6696;
        }
    </style>
</head>
<body>
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4">Selamat Datang di Website PKK Kampung Petta</h3></div>
                                <div class="card-body">
                                    <form method="post" action="login.php">
                                        
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="username" id="username" type="text" placeholder="Username" />
                                            <label for="username">Username</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="password" id="inputPassword" type="password" placeholder="Password" />
                                            <label for="inputPassword">Password</label>
                                        </div>
                                        
                                        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <button type="submit" class="btn btn-primary" name="login">Login</button>
                                            <input type="hidden" name="submit" value="proses" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../js/scripts.js"></script>
</body>
</html>
