<?php
function openDb() {
    $db = new PDO('mysql:host=localhost;dbname=webshop;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    return $db;
}

function returnError(PDOException $pdoex) {
    echo header('HTTP/1.1 500 Internal Server Error');
    $error = array('error' => $pdoex->getmessage());
    echo json_encode($error);
    exit;
}

function selectAsJson(object $db,string $sql): void {
    $query = $db->query($sql);
    $results = $query->fetchAll(PDO::FETCH_ASSOC);
    header('HTTP/1.1 200 OK');
    echo json_encode($results);
}