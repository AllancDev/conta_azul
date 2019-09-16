<!DOCTYPE html>
<html>
    <head>
        <meta charset = 'utf-8' />
        <title> Login </title>
        <link rel = "stylesheet" href = "<?= BASE_URL; ?>/assets/css/login.css" />
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0" />
    </head>
    <body>
        <div class = "login-area">
            <form method = "POST">
                <input type = "email" name = "email" required placeholder = "Digite seu email: " />
                <input type = "password" name = "password" required placeholder = "Digite sua senha: " />
                <input type = "submit" value = "Entrar" /><br />

                <?php 
                    if(isset($error) && !empty($error) ) {
                ?>
                    <div class = "warning" >
                        <?= $error; ?>
                    </div>
                <?php 
                    }
                ?>
            </form>
        </div>

    </body>
</html>