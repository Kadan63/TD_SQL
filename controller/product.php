<?php require ("../model/product.php"); ?>

<?php 
$produit = new Produit;
$recupProduit = $produit->listProduct(); 

?>