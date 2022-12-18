<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$input = json_decode(file_get_contents('php://input'));
$name = filter_var($input->nimi,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$price = filter_var($input->hinta,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$category_id = filter_var($input->kategoria_id,FILTER_SANITIZE_FULL_SPECIAL_CHARS);

try {
    $db = openDb();
    $sql = "insert into tuotteet (nimi, hinta, kuva, kategoria_id) values ('$name', '$price', NULL, '$category_id')";
    executeInsert($db, $sql);
    $data = array('id' => $db->lastInsertId(), 'nimi' => $name, 'hinta' => $price, 'kuva' => NULL);
    print json_encode($data);
}catch (PDOException $pdoex) {
    returnError($pdoex);
}