<title>Detail Riwayat</title>
<?php

if ($_GET['id']) {
  // $arcolor = array('#ffffff', '#cc66ff', '#019AFF', '#00CBFD', '#00FEFE', '#A4F804', '#FFFC00', '#FDCD01', '#FD9A01', '#FB6700');
  $arcolor = array('#ffffff', '#B2A4FF', '#B4E4FF', '#B9F3FC', '#B6E2A1', '#FFF2CC', '#FFD4B2', '#FAAB78');
  date_default_timezone_set("Asia/Jakarta");
  $inptanggal = date('Y-m-d H:i:s');

  $arbobot = array('0', '1', '0.8', '0.6', '0.4', '-0.2', '-0.4', '-0.6', '-0.8', '-1');
  $argejala = array();

  for ($i = 0; $i < count($_POST['kondisi']); $i++) {
    $arkondisi = explode("_", $_POST['kondisi'][$i]);
    if (strlen($_POST['kondisi'][$i]) > 1) {
      $argejala += array($arkondisi[0] => $arkondisi[1]);
    }
  }

  $sqlkondisi = mysqli_query($conn,"SELECT * FROM kondisi order by id+0");
  while ($rkondisi = mysqli_fetch_array($sqlkondisi)) {
    $arkondisitext[$rkondisi['id']] = $rkondisi['kondisi'];
  }

  $sqlpkt = mysqli_query($conn,"SELECT * FROM penyakit order by id_penyakit+0");
  while ($rpkt = mysqli_fetch_array($sqlpkt)) {
    $arpkt[$rpkt['id_penyakit']] = $rpkt['nama_penyakit'];
    $ardpkt[$rpkt['id_penyakit']] = $rpkt['det_penyakit'];
    $arspkt[$rpkt['id_penyakit']] = $rpkt['srn_penyakit'];
    $argpkt[$rpkt['id_penyakit']] = $rpkt['gambar'];
  }

  $sqlhasil = mysqli_query($conn,"SELECT * FROM hasil where id_hasil=" . $_GET['id']);
  while ($rhasil = mysqli_fetch_array($sqlhasil)) {
    $arpenyakit = unserialize($rhasil['penyakit']);
    $argejala = unserialize($rhasil['gejala']);
  }

  $np1 = 0;
  foreach ($arpenyakit as $key1 => $value1) {
    $np1++;
    $idpkt1[$np1] = $key1;
    $vlpkt1[$np1] = $value1;
  }


// --------------------- END -------------------------

echo "<div class='content'>
	<h2 class='text text-primary'>Hasil Diagnosis &nbsp;&nbsp;<button id='print' onClick='window.print();' data-toggle='tooltip' data-placement='right' title='Klik tombol ini untuk mencetak hasil diagnosa'><i class='fa fa-print'></i> Cetak</button> </h2>
  
		  <hr><table class='table table-bordered table-striped diagnosa'> 
          <th width=8% style='text-align: center'>No</th>
          <th width=20% style='text-align: center'>Nama Penyakit</th>
          <th style='text-align: center'>Gejala</th>
          </tr>";
  $ig = 0;
  foreach ($argejala as $key => $value) {
    $kondisi = $value;
    $ig++;
    $gejala = $key;
    $sql4 = mysqli_query($conn,"SELECT * FROM basis_pengetahuan where id_gejala = '$key'");
    $r4 = mysqli_fetch_array($sql4);
    echo '<tr><td style="text-align: center; vertical-align:middle">' . $ig . '</td>';
    echo '<td style="vertical-align:middle">' . str_pad($r4[nama_penyakit], 3) . '</td>';
    echo '<td style="vertical-align:middle"><span class="hasil text text-primary" >' . $r4[nama_gejala] . "</span></td>";
  }

  echo "<div>  
		  <hr><table class='table table-bordered table-striped diagnosa'> 
          <th width=8% style='text-align: center'>No</th>
          <th width=10% style='text-align: center'>Kode</th>
          <th style='text-align: center'>Gejala yang dialami (keluhan)</th>
          <th width=20% style='text-align: center'>Pilihan</th>
          </tr>";
  $ig = 0;
  foreach ($argejala as $key => $value) {
    $kondisi = $value;
    $ig++;
    $gejala = $key;
    $sql4 = mysqli_query($conn,"SELECT * FROM gejala where id_gejala = '$key'");
    $r4 = mysqli_fetch_array($sql4);
    echo '<tr><td style="text-align: center; vertical-align:middle">' . $ig . '</td>';
    echo '<td style="vertical-align:middle">G' . str_pad($r4[id_gejala], 3) . '</td>';
    echo '<td style="vertical-align:middle"><span class="hasil text text-primary">' . $r4[nama_gejala] . "</span></td>";
    echo '<td style="vertical-align:middle"><span class="kondisipilih" style="color:' . $arcolor[$kondisi] . '">' . $arkondisitext[$kondisi] . "</span></td></tr>";
  }
  $np = 0;
  foreach ($arpenyakit as $key => $value) {
    $np++;
    $idpkt[$np] = $key;
    $nmpkt[$np] = $arpkt[$key];
    $vlpkt[$np] = $value;
  }
  if ($argpkt[$idpkt[1]]) {
    $gambar = 'gambar/penyakit/' . $argpkt[$idpkt[1]];
  } else {
    $gambar = 'gambar/noimage.png';
  }
  echo "</table><div class='well well-small'><img class='card-img-top img-bordered-sm' style='float:right; margin-left:15px;' src='" . $gambar . "' height=200><h3>Hasil Diagnosa</h3>";
  echo "<div class='callout callout-default'>Jenis penyakit yang diderita adalah <b><h3 class='text text-success'>" . $nmpkt[1] . "</b> / " . round($vlpkt[1], 2)*100 . " %<br></h3>";
  echo "</div></div><div class='box box-info box-solid'><div class='box-header with-border'><h3 class='box-title'>Detail</h3></div><div class='box-body'><h4>";
  echo $ardpkt[$idpkt[1]];
  echo "</h4></div></div>
          <div class='box box-warning box-solid'><div class='box-header with-border'><h3 class='box-title'>Saran</h3></div><div class='box-body'><h4>";
  echo $arspkt[$idpkt[1]];
  echo "</h4></div></div>
          <div class='box box-danger box-solid'><div class='box-header with-border'><h3 class='box-title'>Kemungkinan lain:</h3></div><div class='box-body'><h4>";
  for ($ipl = 2; $ipl < count($idpkt); $ipl++) {
    echo " <h4><i class='fa fa-check-square-o'></i> " . $nmpkt[$ipl] . "</b> / " . round($vlpkt[$ipl], 2)*100 . "%<br></h4>";
  }
  echo "</div></div>
		  </div>";
}
?>