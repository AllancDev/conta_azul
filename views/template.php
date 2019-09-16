<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8" />
        <title>Sistema <?= $viewData['company_name'] ?></title>
        <link rel = "stylesheet" href = "<?= BASE_URL; ?>/assets/css/template.css" />
    </head>
    <body> 
        <div class = "left-menu" >
            <div class = "company-name">
                <?= $viewData['company_name'] ?> 
            </div>

            <div class = "menu-area">
                <ul>
                    <li><a href = "<?= BASE_URL; ?>" >Home</a></li>
                    <li><a href = "<?= BASE_URL; ?>/permissions" >Permissões</a></li>
                </ul>
            </div>
        </div>


        <div class = "container">
            <div class = "top-menu" >
            <div class = "top-right"><a href = "<?= BASE_URL . '/login/logout'; ?>" >Sair</a></div>
                <div class = "top-right" >
                    <?= $viewData['user_email']; ?>
                </div>
            </div>

            <div class = "area-app">
                <?php 
                    $this -> loadViewInTemplate($viewName, $viewData);
                ?>
            </div>
        </div> 
    </body>
</html>