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

// Hapus pengetahuan
if ($module=='pengetahuan' AND $act=='hapus'){
  mysqli_query($conn,"DELETE FROM basis_pengetahuan WHERE kode_pengetahuan='$_GET[id]'");
  header('location:../../index.php?module='.$module);
}

// Input pengetahuan
elseif ($module=='pengetahuan' AND $act=='input'){
$id_penyakit=$_POST[id_penyakit];
$id_gejala=$_POST[id_gejala];
$mb=$_POST[mb];
$md=$_POST[md];
mysqli_query($conn,"INSERT INTO basis_pengetahuan(id_penyakit,id_gejala,mb,md) VALUES('$id_penyakit','$id_gejala','$mb','$md')");
header('location:../../index.php?module='.$module);
}

// Update pengetahuan
elseif ($module=='pengetahuan' AND $act=='update'){
$id_penyakit=$_POST[id_penyakit];
$id_gejala=$_POST[id_gejala];
$mb=$_POST[mb];
$md=$_POST[md];
  mysqli_query($conn,"UPDATE basis_pengetahuan SET
					id_penyakit   = '$id_penyakit',
					id_gejala   = '$id_gejala',
					mb   = '$mb',
					md   = '$md'
          WHERE kode_pengetahuan = '$_POST[id]'");
  header('location:../../index.php?module='.$module);
 }
 
?>
<?php } ?>