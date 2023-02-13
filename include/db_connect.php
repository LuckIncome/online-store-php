<?php
    $db_host =     'localhost';
    $db_user =     'root';
    $db_pass =     '';
    $db_database = 'shop_db';

    $link = mysql_connect($db_host, $db_user, $db_pass);

    mysql_select_db($db_database, $link) or die("Нет соединение с БД".mysql_error());
    mysql_query("SET names UTF-8");
?>