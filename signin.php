<?php
    session_start(["use_strict_mode" => true]);
    require_once 'db.php';

    if (isset($_POST['login'])){

        if (!empty($db)){
            $result = $db->query("SELECT * FROM cupc_schem.user WHERE email = '".$_POST['login']."'");

            if ($row = $result->fetch())
            {
                if (md5($_POST["password"]) == $row['password']){
                    $_SESSION['username'] = $_POST['login'];
                    $_SESSION['user_id'] = $row['id'];
                    $_SESSION['message'] = 'Вы успешно вошли в сиситему';
                    header("Location: index.php");
                    die();
                }
                else {
                    $_SESSION['message'] = 'Вы ввели неправильный пароль!';
                    header("Location: index.php?page=login");
                    die();
                }

            }
            else {
                $_SESSION['message'] = 'Вы ввели неправильный логин!';
                header("Location: index.php?page=login");
                die();
            }

        }
    }

if ($_GET['logout'] == 1){
    unset($_SESSION['username']);
    $_SESSION['message'] = 'Вы успешно вышли из сиситемы';
    header("Location: index.php");
    die();
}

header("Location: index.php?page=login");
die();