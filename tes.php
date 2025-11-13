<?php
session_start();
$_SESSION['idg'] = 26; // Ganti dengan ID guru yang valid
$_SESSION['level'] = 'guru';
$_SESSION['username'] = 'guru_test';
echo "Session set! <a href='form_tugas.php'>Kembali ke form</a>";
?>