<?php
session_start();
if ($_SESSION['auth_admin'] == "yes_auth")
{
    define('myeshop', true);       
    if (isset($_GET["logout"]))
    {
        unset($_SESSION['auth_admin']);
        header("Location: login.php");
    }
    $_SESSION['urlpage'] = "<a href='index.php' >Главная</a>";  
    include("include/db_connect.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html;" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <title>Панель Управления - Вход</title>
</head>
<body>
    <div id="block-body">
        <?php
            include("include/block-header.php");
        ?>
    
    <div id="block-content">
        <div id="block-parameters">
            <p id="title-page" >Общая статистика</p>
        </div>
    </div>
    </div>
</body>
</html>
<?php
}else
{
    header("Location: login.php");
}
?>