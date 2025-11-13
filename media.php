<?php
session_start();
if(!empty($_SESSION['nama'])){
$uidi=$_SESSION['idu'];
$usre=$_SESSION['nama'];
$level=$_SESSION['level'];
$klss=$_SESSION['idk'];
$ortu=$_SESSION['ortu'];
$idd=$_SESSION['id'];

include "config/conn.php";
include "config/fungsi.php";
?>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SISTEM ABSENSI SISWA</title>

    <!-- Core CSS - Include with every page -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Tables -->
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/custom-modern.css" rel="stylesheet">
    <link href="css/edu-theme.css" rel="stylesheet">
    <script type="text/javascript">
      var detik=<?php echo date('s'); ?>;
      var menit=<?php echo date('i'); ?>;
      var jam=<?php echo date('H'); ?>;
      function clock()
      {
        if (detik!=0 && detik%60==0) {
          menit++;
          detik=0;
        }
        second = detik;

        if (menit!=0 && menit%60==0) {
          jam++;
          menit=0;
        }
        minute=menit;

        if (jam!=0 && jam%24==0) {
          jam=0;
        }
        hour=jam;

        if (detik<10) {
          second='0'+detik;
        }
        if (menit<10) {
          minute='0'+menit;
        }
        if (jam<10) {
          hour='0'+jam;
        }
        waktu=hour+':'+minute+':'+second;

        document.getElementById("clock").innerHTML=waktu;
        detik++;
      }
      setInterval(clock,1000);
    </script>
    <style media="screen">
      .labelol{
        padding: 0;
        margin:0;
      }
    </style>
</head>

<body>

    <div id="wrapper">

        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="media.php?module=home">SISTEM PEMBELAJARAN DIGITAL</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
<?php
if($level=="admin") {
echo "[[$usre]]";
}
elseif($level=="guru") {
echo "Guru: $usre";
}
else {
echo "Siswa: $usre";
}
?>

                   </a>
                </li>
       <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
<?php
if ($level == "admin" || $level == "guru") {
    // Query sekolah untuk admin/guru
    $sqla = mysqli_query($koneksi, "SELECT * FROM sekolah WHERE id='$idd'");
    $rsa  = mysqli_fetch_array($sqla);

    echo $rsa['nama'];
} else {
    // Query kelas dan sekolah untuk user/siswa
    $sql  = mysqli_query($koneksi, "SELECT * FROM kelas WHERE idk='$klss'");
    $rs   = mysqli_fetch_array($sql);

    $sqla = mysqli_query($koneksi, "SELECT * FROM sekolah WHERE id='$idd'");
    $rsa  = mysqli_fetch_array($sqla);

    echo "Kelas: " . $rs['nama'] . " | " . $rsa['nama'];
}
?>

                   </a>
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
<?php
$tgl_lengkap= tgl_ina(date("Y-m-d"));
if ($level=="guru") {
$hhari= hari_ina(date("l"));
echo "<b>$hhari, $tgl_lengkap</b>"; echo " | <label class='labelol' id='clock'></label>";
}
else {
  echo "$tgl_lengkap";
}
 ?>
                   </a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="" href="logout.php">
<?php echo "Logout"; ?>
                   </a>
                </li>

                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">

                    <?php 
if ($level == 'admin') { ?>

    <li>
        <a href="#"><i class="fa fa-dashboard fa-fw"></i> Data Siswa<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="media.php?module=input_siswa&act=input">Input Data</a></li>
            <li><a href="media.php?module=tampil">View Data</a></li>
        </ul>
    </li>

    <li>
        <a href="#"><i class="fa fa-dashboard fa-fw"></i> Data Guru<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="media.php?module=input_guru&act=input">Input Data</a></li>
            <li><a href="media.php?module=guru">View Data</a></li>
        </ul>
    </li>

    <li>
        <a href="#"><i class="fa fa-dashboard fa-fw"></i> Data Kelas<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="media.php?module=input_kelas&act=input">Input Data</a></li>
            <li><a href="media.php?module=kelas">View Data</a></li>
        </ul>
    </li>

    <li>
        <a href="#"><i class="fa fa-dashboard fa-fw"></i> Data Mata Pelajaran<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="media.php?module=input_pelajaran&act=input">Input Data</a></li>
            <li><a href="media.php?module=mata_pelajaran">View Data</a></li>
        </ul>
    </li>

    <li>
        <a href="#"><i class="fa fa-dashboard fa-fw"></i> Data Jadwal<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="media.php?module=input_jadwal&act=input">Input Data</a></li>
            <li><a href="media.php?module=senin">View Data</a></li>
        </ul>
    </li>

    <li>
        <a href="media.php?module=sekolah"><i class="fa fa-dashboard fa-fw"></i> Data Sekolah</a>
    </li>

<?php 
} elseif ($level == 'guru') { ?>

    <li>
        <a href="media.php?module=jadwal_mengajar"><i class="fa fa-bar-chart-o fa-fw"></i> Jadwal Mengajar</a>
    </li>
    <li>
        <a href="media.php?module=guru_det"><i class="fa fa-dashboard fa-fw"></i> Data Guru</a>
    </li>
    <li>
        <a href="#"><i class="fa fa-tasks fa-fw"></i> Tugas<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="media.php?module=daftar_tugas">View Tugas</a></li>
            <li><a href="media.php?module=input_tugas&act">Buat Tugas</a></li>
            <li><a href="media.php?module=input_nilai&act">Penilaian</a></li>
        </ul>
    </li>

<?php 
} elseif ($level == 'user') { ?>

    <li>
        <a href="media.php?module=siswa_senin"><i class="fa fa-bar-chart-o fa-fw"></i> Jadwal Belajar</a>
    </li>
    <li>
        <a href="#"><i class="fa fa-tasks fa-fw"></i> Daftar Tugas<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="media.php?module=pengumpulan&act">Pengumpulan</a></li>
            <li><a href="media.php?module=view_nilai">lihat nilai</a></li>
        </ul>
    </li>
    <li>
        <a href="media.php?module=siswa_det"><i class="fa fa-dashboard fa-fw"></i> Data Siswa</a>
    </li>

<?php } ?>
</ul>

                    </ul>
                    <!-- /#side-menu -->
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
<?php include "content.php";  ?>
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- Page-Level Plugin Scripts - Tables -->
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
    </script>

</body>

</html>

<?php }
else {
  echo "<center><h2>Anda Harus Login Terlebih Dahulu</h2>
    <a href=index.php><b>Klik ini untuk Login</b></a></center>";
} 
?>
