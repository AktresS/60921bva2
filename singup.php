<?php
    session_start(["use_strict_mode" => true]);
    require("db.php");

    $user_name = $_POST['user_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    if (empty($user_name) || empty($email) || empty($password)){
        $_SESSION['message'] = '**Заполните все поля**';
        header('Location: register.php');
    }
    else{
        if (!empty($db)){
            $user_query = $db->query("INSERT INTO cupc_schem.user (user_name, email, password) OVERRIDING USER VALUE VALUES ('".$_POST['user_name']."', '".$_POST['email']."', '".md5($_POST['password'])."')");
            $_SESSION['message'] = 'Регистрация прошла успешно';
            header('Location: login.php');
        }
    }
