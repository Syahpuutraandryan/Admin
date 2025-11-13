<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Sistem SmartMI</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    
    <link rel="stylesheet" href="css/custom.css">
</head>
<body>
    <?php
    // Blok PHP dipindahkan ke atas agar lebih rapi dan jelas.
    include 'config/conn.php';
    ?>

    <div class="container">
        <div class="row">
            <!-- Gunakan col-md-4 col-md-offset-4 untuk memastikan kartu di tengah halaman -->
            <div class="col-md-4 col-md-offset-4">
                
                <form class="login-card" method="post" action="ceklog.php">
                    
                    <h2>Login Web SmartMI</h2>
                    
                    <!-- INPUT GROUP: USERNAME -->
                    <div class="input-group">
                        <!-- PENTING: Pastikan tidak ada spasi antara </i> dan <input> -->
                        <i class="fa-solid fa-user icon"></i><input type="text" name="username" required>
                        <label>Username</label>
                    </div>
                    
                    <!-- INPUT GROUP: PASSWORD -->
                    <div class="input-group">
                        <i class="fa-solid fa-lock icon"></i>
                        <input type="password" name="password" required>
                        <label>Password</label>
                    </div>

                    <button type="submit" class="login-btn">Login</button>
                    
                    <!-- Teks Developer -->
                    <div class="developer-credit">
                        Aplikasi Pembelajaran Digital
                    </div>

                </form>
                
            </div>
        </div>
    </div>
    
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
