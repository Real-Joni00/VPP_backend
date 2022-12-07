<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$url = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$url);
$product_id = $parameters[1];

try {
  $db = openDb();
  selectAsJson($db,"select * from tuotteet where id = $product_id");
}
catch (PDOException $pdoex) {
  returnError($pdoex);
}