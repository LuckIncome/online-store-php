<?php
    include("include/db_connect.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=windows-1251" />
    <meta name="author" content="Helsing" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/jcarousellite_1.0.1.js"></script>
    <script type="text/javascript" src="js/shop-script.js"></script>
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
            <div id="block-sorting">
                <p id="nav-breadcrumbs"><a href="index.php">Главная страница</a> \ <span>Все товары</span></p>
                <ul id="options-list">
                    <li>Вид: </li>
                    <li><img id="style-grid" src="images/icon-grid.png" /></li>
                    <li><img id="style-list" src="images/icon-list.png" /></li>
                    
                    <li>Сортировка:</li>
                    <li><a id="select-sort">Без сортировки</a>
                        <ul id="sorting-list">
                            <li><a href="">От дешевых к дорогим</a></li>
                            <li><a href="">От дорогих к дешевым</a></li>
                            <li><a href="">Популярное</a></li>
                            <li><a href="">Новинки</a></li>
                            <li><a href="">От А до Я</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <ul id="block-tovar-grid">
                <?php
                    $result = mysql_query("SELECT * FROM table_products LIMIT 4", $link);
                    if (mysql_num_rows($result) > 0) 
                    {
                        $row = mysql_fetch_array($result);
                        do 
                        {
                            if ($row["image"] != "" && file_exists("./uploads_images/".$row["image"]))
                            {
                                $img_path = './uploads_images/'.$row["image"];
                                $max_width = 200;
                                $max_height = 200;
                                list($width, $height) = getimagesize($img_path);
                                $ratioh = $max_height/$height;
                                $ratiow = $max_width/$width;
                                $ratio = min($ratioh, $ratiow);
                                $width = intval($ratio*$width);
                                $height = intval($ratio*$height);
                            } else 
                            {
                                $img_path = '/images/no-image.png';
                                $width = 100;
                                $height = 200;
                            }
                            echo '
                                <li>
                                    <div class="block-images-grid">
                                        <img src="'.$img_path.'" width="'.$width.'" height="'.$height.'" />
                                    </div>
                                    <p class="style-title-grid"><a href="">'.$row["title"].'</a></p>
                                    <ul class="reviews-and-counts-grid">
                                        <li><img src="/images/eye-icon.png" /></li>
                                        <li><img src="/images/comment-icon.png" /></li>
                                    </ul>
                                    <a class="add-cart-style-grid"></a>
                                    <p class="style-price-grid"><strong></strong> руб.</p>
                                    <div class="mini-features">
                                        '.$row["mini_features"].'
                                    </div>
                                </li>
                            ';
                        }
                        while ($row = mysql_fetch_array($result));
                    }
                ?>
            </ul>
        </div>        
        <?php
            include("include/block-footer.php");
        ?>          
    </div>
</body>
</html>

