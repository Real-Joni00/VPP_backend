<?php
require_once("./headers.php");

session_start();
require("./db_user_controller.php");

if (isset($_SESSION['käyttäjänimi'])){
    http_response_code(200);
    echo "Hei ".$_SESSION['käyttäjänimi'];
    return;
}

if (!isset($_POST['uname']) || !isset($_POST['pw'])){
    http_response_code(401);
    echo "Väärä käyttäjänimi tai salasnana";
    return;
}

$uname = $_POST['uname'];
$pw = $_POST['pw'];

$verified_user = checkUser($uname, $pw);

if ($verified_user){
    $_SESSION['käyttäjänimi'] = $verified_user;
    http_response_code(200);
    echo "Hei ".$verified_user;
} else {
    http_response_code(401);
    echo "Väärä käyttäjänimi tai salasana";
}