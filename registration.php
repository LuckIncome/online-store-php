<?php
    include("include/db_connect.php");
    include("functions/functions.php");
?>
<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=windows-1251" />
    <meta name="author" content="Helsing" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="trackbar/trackbar.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/jcarousellite_1.0.1.js"></script>
    <script type="text/javascript" src="js/shop-script.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="trackbar/jquery.trackbar.js"></script>
    <title>Интернет-Магазин Цифравой Техники</title>
</head>

<body>
    <div id="block-body">
        <?php
        include("include/block-header.php");
        ?>
        <div id="block-right">
            <?php
                include("include/block-category.php");
                include("include/block-parameter.php");
                include("include/block-news.php");
            ?>
        </div>
        <div id="block-content">
            <form method="post" id="form_reg" action="/reg/handler_reg.php">
                <p id="reg_message"></p>
                <div id="block-form-registration">
                    <ul id="form-registration">
                        <li>
                            <label>Логин</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_login" id="reg_login" />
                        </li>
                        <li>
                            <label>Пароль</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_pass" id="reg_pass" />
                            <span id="genpass">Сгенерировать</span>
                        </li>
                        <li>
                            <label>Фамилия</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_surname" id="reg_surname" />
                        </li>
                        <li>
                            <label>Имя</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_name" id="reg_name" />
                        </li>
                        <li>
                            <label>Отчество</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_patronymic" id="reg_patronymic" />
                        </li>
                        <li>
                            <label>E-mail</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_email" id="reg_email" />
                        </li>
                        <li>
                            <label>Мобильный телефон</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_phone" id="reg_phone" />
                        </li>
                        <li>
                            <label>Адрес доставки</label>
                            <span class="star">*</span>
                            <input type="text" name="reg_address" id="reg_address" />
                        </li>
                        <li>
                            <div id="block-captcha">
                                <img src="/reg/reg_captcha" />
                                <input type="text" name="reg_captcha" id="reg_captcha" />
                                <p id="reloadcaptcha">Обновить</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <p align="right"><input type="submit" name="reg_submit" id="form_submit" value="Регистрация" /></p>
            </form>
        </div>
        <?php
            include("include/block-footer.php");
        ?>
    </div>
</body>
</html>
