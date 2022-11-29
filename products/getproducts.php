<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$uri = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$uri);  //Jotain tässä on vikana lol. Koitan selvittää joskus paremmalla ajalla :)
$category_id = $parameters[1];

try {
    $db = openDb();
    $sql = "select * from tuotekategoriat where id = $category_id";
    $query = $db->query($sql);
    $category = $query->fetch(PDO::FETCH_ASSOC);

    $sql = "select * from tuotteet where kategoria_id = $category_id";
    $query = $db->query($sql);
    $products = $query->fetchAll(PDO::FETCH_ASSOC);

    header('HTTP/1.1 200 OK');
    echo json_encode(array(
        "category" => $category['nimi'],
        "products" => $products
    ));
}

catch (PDOException $pdoex) {
    returnError($pdoex);
}