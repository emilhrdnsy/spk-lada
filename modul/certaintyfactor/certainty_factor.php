<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
   <title>Certainty Factor</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='aset/certaintyfactor/style.css'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css'>
   <link rel="stylesheet" href="aset/login/css/style.css">
</head>
<style>
@media only screen and (max-width: 400px) {
    img {
        width: 100%;
    }
}
</style>
<body>
  <div class="ma3">
  <article class="tc w-75 center pt5 pb2 ph3 mw6-ns ba bw1 b--light-gray" style="background: #fff;">
    <header class="mb4">
		<!-- <img class="br-100" src="gambar/admin/favicon2.png" style="width: 100px;" alt="Profile headshot" /> -->
      <h1 class="f3 lh-title mv2 dark-gray">Certainty Factor</h1>
	  
      <p class="f6 silver mt2 mb1" style="margin: 20px; text-align: justify;">
        Metode ini merupakan suatu metode untuk membuktikan ketidakpastian pemikiran seorang pakar, dimana untuk mengakomodasi hal tersebut seseorang biasanya menggunakan certainty factor untuk menggambarkan tingkat keyakinan pakar terhadap masalah yang sedang dihadapi. Hasil metode certainty factor yang berupa persentase, cocok untuk hasil program yang dibutuhkan pada penelitian. Metode ini di usulkan oleh Shortliffe dan Buchanan pada tahun 1975. Seorang pakar sering menganalisis informasi yang ada dengan ungkapan ketidakpastian, untuk mengakomodasi hal ini kita menggunakan Certainty Factor (CF) guna menggambarkan tingkat keyakinan pakar terhadap masalah yang sedang dihadapi.<br>
      </p>
      
      <p class="f6 silver mt2 mb0" style="margin: 20px; text-align: justify;">
        <table class="silver">
          <tr>
            <td  colspan="3">
              <b>Menghitung Nilai CF:</b>
            </td>
          </tr>
          <tr>
            <td colspan="3">
              <b>CF[H,E] = MB[H,E] - MD[H,E]</b>
            </td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>Keterangan:</td>
          </tr>
          <tr style="vertical-align: top">
            <td>CF(H,E)</td>
            <td>: &nbsp</td>
            <td>Certainty Factor dari hipotesis H yang dipengaruhi oleh fakta E.</td>
          </tr>
          <tr style="vertical-align: top">
            <td>MB(H,E)</td>
            <td>: &nbsp</td>
            <td>measure of belief (ukuran kepercayaan) terhadap hipotesis H, jika diberikan evidence E (antara 0 dan 1)</td>
          </tr>
          <tr style="vertical-align: top">
            <td>MD(H,E)</td>
            <td>: &nbsp </td>
            <td>measure of disbelief (ukuran ketidakpercayaan) terhadap hipotesis H, jika diberikan evidence E (antara 0 dan 1)</td>
          </tr>
        </table> 
      </p>

      <p class="f6 silver mt2 mb0" style="margin: 20px; text-align: justify;">
        <b>CF untuk premis tunggal:</b><br>
        CF(H,E) = CF(E) * CF(Rule)
        <br>
        <table class="silver">
          <tr>
            <td>Keterangan:</td>
          </tr>
          <tr>
            <td>CF(E) &nbsp</td>
            <td>: &nbsp</td>
            <td>Nilai keyakinan dari pengguna terhadap Evidence E</td>
          </tr>
        </table>  
      </p>

      <p class="f6 silver mt2 mb0" style="margin: 20px; text-align: justify;">
        Certainty Factor untuk kaidah dengan kesimpulan yang serupa (similarly concluded rules):<br>
        <b>Menghitung Nilai CFcombine<br></b>
        CFcombine(CF1,CF2) = CF1+CF2*(1-CF1) Jika keduanya > 0<br>
        CFcombine(CF1,CF2) = CF1+CF2/1-min⁡{[CF1]-[CF2]} Jika salah satu < 0<br>
        CFcombine(CF1,CF2) = CF1+CF2*(1+CF1) Jika keduanya < 0<br>
        
        <table class="silver">
          <tr>
            <td colspan=3 style="margin: 20px; text-align: justify;">Tabel konsultasi nilai parameter bobot tingkat kepercayaan Pada sesi konsultasi sistem, user diberikan jawaban masing masing yang memiliki nilai parameter bobot sebagai berikut, dapat di lihat pada tabel berikut.</td>
          </tr>      
        </table>  
      </p>
      <center>
        <table class="f6 silver mt2 mb0" style="margin: 20px; text-align: center;" border=1px solid silver>
          <tr>
            <th style="padding:5px; text-align: center;">Parameter</th>
            <th style="padding:5px; text-align: center;">Nilai</th>  
          </tr>
          <tr>
            <td style="padding:5px; text-align: center;">Pasti Iya</td>
            <td style="padding:5px; text-align: center;">1</td>  
          </tr>
          <tr>
            <td style="padding:5px; text-align: center;">Kemungkinan Besar Iya</td>
            <td style="padding:5px; text-align: center;">0,6</td>  
          </tr>
          <tr>
            <td style="padding:5px; text-align: center;">Mungkin Ya</td>
            <td style="padding:5px; text-align: center;">0,4</td>  
          </tr>
          <tr>
            <td style="padding:5px; text-align: center;">Tidak Tahu</td>
            <td style="padding:5px; text-align: center;">0</td>  
          </tr>
          <tr>
            <td style="padding:5px; text-align: center;">Mungkin Tidak</td>
            <td style="padding:5px; text-align: center;">-0,4</td>  
          </tr>
          <tr>
            <td style="padding:5px; text-align: center;">Kemungkinan Besar Tidak</td>
            <td style="padding:5px; text-align: center;">-0,6</td>  
          </tr>
          <tr>
            <td style="padding:5px; text-align: center;">Pasti Tidak</td>
            <td style="padding:5px; text-align: center;">-1</td>  
          </tr>
        </table>
      <center>

      <p class="f6 silver mt2 mb0" style="margin: 20px; text-align: justify;">
      <b>Kelebihan Metode Certainty Factor</b> <br>
        
        Metode ini cocok dipakai dalam sistem pakar untuk mengukur sesuatu apakah pasti atau tidak pasti dalam mendiagnosis. <br>
        Perhitungan dengan menggunakan metode ini dalam sekali hitung hanya dapat mengolah 2 data saja sehingga keakuratan data dapat terjaga.
        
      </p>

<!-- 
	   <br>
	   <h2 class="f5 silver mt1 mb1" style="margin: 20px; text-align: left;">Perhitungan Certainty Factor</h2> -->
	  <!-- <h2 class="f5 silver mt2 mb1">Copyright © 2022, <a class="link dim silver">Universitas Tadulako </a></h2> -->
	  <br>
     
	 
    </header>
    <p class="f6 tl lh-copy silver" style="margin: 20px; text-align: justify;"></p>
  </article>
</div>
</body>

</html>
