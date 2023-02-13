<?php
if($_SERVER["REQUEST_METHOD"] == "POST")
{ 
 include("db_connect.php");
 include("../functions/functions.php");

 $id = clear_string($_POST['id']);
 $name = clear_string($_POST['name']);
 $good = clear_string($_POST['good']);
 $bad =  clear_string($_POST['bad']);
 $comment = clear_string($_POST['comment']);

    		mysql_query("INSERT INTO table_reviews(products_id,name,good_reviews,bad_reviews,comment,date)
						VALUES(						
                            '".$id."',
                            '".$name."',
                            '".$good."',
                            '".$bad."',
                            '".$comment."',
                             NOW()							
						)",$link);	

echo 'yes';
}
?>