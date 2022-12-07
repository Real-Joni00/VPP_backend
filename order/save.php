<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$firstname = filter_var($input->etunimi,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$lastname = filter_var($input->sukunimi,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$address = filter_var($input->osoite,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$zip = filter_var($input->postinro,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$city = filter_var($input->postitmp,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$cart = $input->cart;

try {
    $db = openDb();
    $db->beginTransaction();

    $sql = "insert into asiakas (etunimi,sukunimi,osoite,postinro,postitmp) values
    ('" .
        filter_var($firstname,FILTER_SANITIZE_FULL_SPECIAL_CHARS) . "','" . 
        filter_var($lastname,FILTER_SANITIZE_FULL_SPECIAL_CHARS) . "','" . 
        filter_var($address,FILTER_SANITIZE_FULL_SPECIAL_CHARS) . "','" . 
        filter_var($zip,FILTER_SANITIZE_FULL_SPECIAL_CHARS) . "','" . 
        filter_var($city,FILTER_SANITIZE_FULL_SPECIAL_CHARS) 
    .    "')";

    $customer_id = executeInsert($db,$sql);

    $sql = "insert into tilaus (asiakasnro) values ($customer_id)";
    $order_id = executeInsert($db,$sql);

    foreach ($cart as $product) {
        $sql = "insert into tilausrivi (tilausnro,tuotenro) values ("
        .
            $order_id . "," .
            $product->id
        .    ")";
        executeInsert($db,$sql);
    }

$db->commit();

header('HTTP/1.1 200 OK');
$data = array('id' => $customer_id);
echo json_encode($data);
}
catch (PDOException $pdoex) {
    $db->rollback();
    returnError($pdoex);
}