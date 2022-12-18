<?php
require_once("./headers.php");

session_start();
require("./db_user_controller.php");

$body = file_get_contents("php://input");
$user = json_decode($body);

if(!isset($user->uname) || !isset($user->pw)){
    http_response_code(401);
    echo "Väärä käyttäjänimi tai salasnana";
    return;
}

$uname = $user->uname;
$pw = $user->pw;

registerUser($uname, $pw);

$_SESSION['käyttäjänimi'] = $uname;

http_response_code(200);
echo "Käyttäjä $uname rekisteröity";