<?php include 'BDD.php' ?>

<?php

$serveur = $_SERVER['REQUEST_URI'];

switch ($serveur) {
    case 'TD_SQL/listproduct':
        include 'view/product-list.php';
        break;

    default:
        include 'view/404.php';
        break;
}
?> 