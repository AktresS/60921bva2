<?php
    session_start(["use_strict_mode" => true]);
    require('db.php');

    if (isset($_GET['logout'])) {
        session_unset();
        header("Location: index.php");
        die();
    }

    if (isset($_GET['register'])) {
        if (!empty($db)){
            $users_query = $db->query("INSERT INTO cupc_schem.user (user_name, email, password) OVERRIDING USER VALUE VALUES ('".$_POST['user_name']."', '".$_POST['email']."', '".md5($_POST['password'])."')");

            $_SESSION['email'] = strtolower($_POST['login']);

            header("Location: index.php");
            die();
        }


    } else if (isset($_POST['login'])) {
        if (!empty($db)){
            $query = $db->query("SELECT * FROM cupc_schem.user WHERE email = '".strtolower($_POST['login'])."'");

            if ($row = $query->fetch())
            {
                if (md5($_POST["password"]) == $row['password']) {
                    $_SESSION['email'] = $_POST['login'];
                    $_SESSION['message'] = 'Вы успешно вошли в сиситему';
                    header("Location: login.php");
                }
                else {
                    $_SESSION['message'] = 'Вы ввели неправильный пароль!';
                    header("Location: login.php");
                    die();
                }
            }
            else {
                $_SESSION['message'] = 'Вы ввели неправильный логин!';
                header("Location: login.php");
                die();
            }
        }
    }

    if ($_GET['logout'] == 1){
        unset($_SESSION['email']);
        $_SESSION['message'] = 'Вы успешно вышли из сиситемы';
        header("Location: index.php");
        die();
    }
?>
