<?php
    function clear_string($cl_str) 
    {
        $cl_str = strip_tags($cl_str);
        $cl_str = mysql_real_escape_string($cl_str);
        $cl_str = trim($cl_str);
        return $cl_str;
    }

    function fungenpass()
    {
        $number = 7;
        $arr = array('a','b','c','d','e','f',

                    'g','h','i','j','k','l',

                    'm','n','o','p','r','s',

                    't','u','v','x','y','z',

                    '1','2','3','4','5','6',

                    '7','8','9','0');
        // Генерируем пароль
        $pass = "";
        for($i = 0; $i < $number; $i++)
        {
        // Вычисляем случайный индекс массива
        $index = rand(0, count($arr) - 1);
        $pass .= $arr[$index];
        }
        return $pass;
    }

    function send_mail($from,$to,$subject,$body)
    {
        $charset = 'utf-8'; //кодировка
        mb_language("ru"); //на каком языке у нас находится сообщения
        $headers  = "MIME-Version: 1.0 \n" ; // стандартный шаблон это для того  
        $headers .= "From: <".$from."> \n"; // чтобы почтовый сервис смог
        $headers .= "Reply-To: <".$from."> \n"; // разобрать это сообщения
        $headers .= "Content-Type: text/html; charset=$charset \n"; // то есть понять что это e-mail
        
        $subject = '=?'.$charset.'?B?'.base64_encode($subject).'?='; //кодируем чтобы почтовый сервис смог разобрать эту тему

        mail($to,$subject,$body,$headers); // формирования и отправка e-mail
    }
?>