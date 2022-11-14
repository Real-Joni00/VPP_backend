<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Accept,Content-Type', 'AccessControl-Allow-Header');
header('Access-Control-Allow-Credentials:true');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Content-Type: Application/json');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOS']))
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHODS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

    exit(0);
}