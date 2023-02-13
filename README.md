![Интернет-Магазин-Цифравой-Техники](https://user-images.githubusercontent.com/54973796/218538717-bf8f688b-e53a-421f-b31d-1ca4ffb60496.png)

![Панель-Управления-Товары](https://user-images.githubusercontent.com/54973796/218539170-b80576bc-abf8-48ca-bd1e-6d64c08f9ab6.png)


## Требования

        *  PHP 5.6
        *  MySQL 5.6
        *  Apache 2.4

## Установка

```bash
    
    # Создайте БД названием "shop_db"

    # Импортируйте файл "shop_db.sql"

    # Напишите свои настройки БД в файле:
    /include/db_connect.php
    $db_host =     'localhost';
    $db_user =     'root';
    $db_pass =     '';
    $db_database = 'shop_db';

```

## Админка

<table>
        <thead>
            <th>URL</th>
            <th>Логин</th>
            <th>Пароль</th>
        </thead>
    <tbody>
        <tr> 
            <td> /admin/login.php </td>
            <td>admin1</td>
            <td> 123 </td>
        </tr>
    </tbody>
</table>
