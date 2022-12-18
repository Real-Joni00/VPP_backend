<?php
require_once("./headers.php");

session_start();
require("./db_user_controller.php");

if(!isset($_SESSION['käyttäjänimi'])){
    http_response_code(403);
    echo "Ei pääsyä tilaukseen";
    return;
}

