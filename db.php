<?php
    session_start(["use_strict_mode" => true]);

    try {
        $db = new PDO("pgsql:host=localhost;port=5432; dbname=cupcoffe_base", "postgres", "vikabezp19");
    } catch (PDOException $e) {
        die("Couldn't connect to the database cupcoffe_base: " . $e->getMessage());
}
