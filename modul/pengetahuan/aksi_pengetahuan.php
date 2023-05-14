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
$value = $_POST[id_penyakit];
$exploded_value = explode('|', $value);
$id_penyakit = $exploded_value[0];
$nama_penyakit = $exploded_value[1];
// $id_penyakit=$_POST[id_penyakit];
// $nama_penyakit=$_POST[nama_penyakit];
$value2 = $_POST[id_gejala];
$exploded_value2 = explode('|', $value2);
$id_gejala = $exploded_value2[0];
$nama_gejala = $exploded_value2[1];
// $id_gejala=$_POST[id_gejala];
// $nama_gejala=$_POST[nama_gejala];
$mb=$_POST[mb];
$md=$_POST[md];
mysqli_query($conn,"INSERT INTO basis_pengetahuan(id_penyakit,nama_penyakit,id_gejala,nama_gejala,mb,md) VALUES('$id_penyakit','$nama_penyakit','$id_gejala','$nama_gejala','$mb','$md')");
header('location:../../index.php?module='.$module);
}

// Update pengetahuan
elseif ($module=='pengetahuan' AND $act=='update'){
  $value = $_POST[id_penyakit];
  $exploded_value = explode('|', $value);
  $id_penyakit = $exploded_value[0];
  $nama_penyakit = $exploded_value[1];
  $value2 = $_POST[id_gejala];
  $exploded_value2 = explode('|', $value2);
  $id_gejala = $exploded_value2[0];
  $nama_gejala = $exploded_value2[1];
$mb=$_POST[mb];
$md=$_POST[md];
  mysqli_query($conn,"UPDATE basis_pengetahuan SET
					id_penyakit   = '$id_penyakit',
					nama_penyakit   = '$nama_penyakit',
					id_gejala   = '$id_gejala',
					nama_gejala   = '$nama_gejala',
					mb   = '$mb',
					md   = '$md'
          WHERE kode_pengetahuan = '$_POST[id]'");
  header('location:../../index.php?module='.$module);
 }
 
?>
<?php } ?>