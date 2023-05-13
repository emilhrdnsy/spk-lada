<?php

session_start();
if (!(isset($_SESSION['username']) && isset($_SESSION['password']))) {
    header('location:index.php');
    exit();
} else {
?>
<?php
session_start();
include "../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus admin
if ($module=='admin' AND $act=='hapus'){
  mysqli_query($conn,"DELETE FROM admin WHERE username='$_GET[id]'");
  header('location:../../index.php?module='.$module);
}

// Input admin
elseif ($module=='admin' AND $act=='input'){
  $username=$_POST[username];
  $nama_lengkap=$_POST[nama_lengkap];
  $pass=md5($_POST[password]);
  mysqli_query($conn,"INSERT INTO admin(username,password,nama_lengkap) VALUES(
    '$username','$pass','$nama_lengkap')");
  header('location:../../index.php?module='.$module);
}

// Update admin
elseif ($module=='admin' AND $act=='update'){
  $username=$_POST[username];
  $nama_lengkap=$_POST[nama_lengkap];
  $new_password = md5($_POST[new_password]);
  // $password_hash = ;
  $pass = $_POST[password];
  if (password_verify($pass, $new_password)) {
    echo 'Password benar';
  } else {
    echo 'Password salah';
  }
  mysqli_query($conn,"UPDATE admin SET
    username      = '$username',
    nama_lengkap  = '$nama_lengkap',
    password      = '$new_password'
    WHERE username       = '$_POST[id]'");
  // header('location:../../index.php?module='.$module);
}
 
?>
<?php } ?>