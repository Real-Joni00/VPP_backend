<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$url = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$url);
$product_id = $parameters[1];

try {
  $db = openDb();
  $sql = "select * from tuotteet where id = $product_id";
  $query = $db->query($sql);
  $product = $query->fetch(PDO::FETCH_ASSOC);

  header('HTTP/1.1 200 OK');
    echo json_encode(array("product" => $product));
}
catch (PDOException $pdoex) {
  returnError($pdoex);
}