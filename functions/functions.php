<?php
    defined('myeshop') or die('Доступ запрещен!');
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

    // Группировка цен по разрядам.
    function group_numerals($int){
        
           switch (strlen($int)) {

            case '4':
            
            $price = substr($int,0,1).' '.substr($int,1,4);

            break;

            case '5':
            
            $price = substr($int,0,2).' '.substr($int,2,5);

            break;

            case '6':
            
            $price = substr($int,0,3).' '.substr($int,3,6);

            break;

            case '7':
            
            $price = substr($int,0,1).' '.substr($int,1,3).' '.substr($int,4,7);

            break;
            
            default:
            
            $price = $int;
            
            break;

        }
        return $price; 
    }

    function ftranslite($name){

        $name=preg_replace("/[\s+\.\,]/","-",$name);
        $name=preg_replace("/[\"\'\!\?\(\)\:\$\%]/","",$name); 

        static $trans= array(
        'а'=>'a', 'б'=>'b', 'в'=>'v', 'г'=>'g', 'д'=>'d', 'е'=>'e', 'ж'=>'zh', 'з'=>'z',
        'и'=>'i', 'й'=>'y', 'к'=>'k', 'л'=>'l', 'м'=>'m', 'н'=>'n', 'о'=>'o', 'п'=>'p',
        'р'=>'r', 'с'=>'s', 'т'=>'t', 'у'=>'u', 'ф'=>'f', 'ы'=>'i', 'э'=>'e', 'А'=>'A',
        'Б'=>'B', 'В'=>'V', 'Г'=>'G', 'Д'=>'D', 'Е'=>'E', 'Ж'=>'ZH', 'З'=>'Z', 'И'=>'I',
        'Й'=>'Y', 'К'=>'K', 'Л'=>'L', 'М'=>'M', 'Н'=>'N', 'О'=>'O', 'П'=>'P', 'Р'=>'R',
        'С'=>'S', 'Т'=>'T', 'У'=>'U', 'Ф'=>'F', 'Ы'=>'I', 'Э'=>'E', 'ё'=>"yo", 'х'=>"h",
        'ц'=>"ts", 'ч'=>"ch", 'ш'=>"sh", 'щ'=>"shch", 'ъ'=>"", 'ь'=>"", 'ю'=>"yu", 'я'=>"ya",
        'Ё'=>"YO", 'Х'=>"H", 'Ц'=>"TS", 'Ч'=>"CH", 'Ш'=>"SH", 'Щ'=>"SHCH", 'Ъ'=>"", 'Ь'=>"",
        'Ю'=>"YU", 'Я'=>"YA"
        );

        $strstring = strtr($name, $trans) ;

        return strtolower($strstring) ;
    }
?>