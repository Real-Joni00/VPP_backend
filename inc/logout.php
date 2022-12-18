<?php
require("./headers.php");

session_start();
session_destroy();
$_SESSION['käyttäjänimi'] = [];

http_response_code(200);
echo "Uloskirjautuminen onnistui";