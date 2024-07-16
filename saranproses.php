<?php
session_start();
require_once "admin/support/myfunction.php"; // Pastikan path ini benar

// Setup koneksi database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sistem_pkk";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Mengecek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Cek apakah form telah dikirimkan
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mengambil data dari form
    $nama = $_POST['nama'];
    $lindongan = $_POST['lindongan'];
    $saran = $_POST['saran'];

    // Memasukkan data ke dalam database
    $sql = "INSERT INTO tb_saran (nama, lindongan, saran) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $nama, $lindongan, $saran);

    if ($stmt->execute()) {
        // Menyimpan status sukses dalam session
        $_SESSION['status'] = 'success';
    } else {
        // Menyimpan status error dalam session
        $_SESSION['status'] = 'error';
    }

    // Mengarahkan kembali ke halaman frontend
    header("Location: index.php"); // Gantilah 'index.php' dengan halaman frontend Anda
    exit();
}
?>
