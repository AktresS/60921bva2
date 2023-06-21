<?php
    session_start(["use_strict_mode" => true]);
    require("db.php");

    $login = $_POST['login'];
    $password = md5($_POST['password']);

    if (!empty($db)){
        $query = $db->query("SELECT * FROM cupc_schem.user WHERE 'email' = '$login' AND 'password' = '$password' ");
    }
