<?php require("../controller/product.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste </title>
</head>
<body>
    <h1>Liste des produits</h1>
    <a href="" title="Ajouter">Ajouter un nouveau produit</a>
    <table style="border:1px solid black;width:100%;">
        <tr >
            <th style="text-align:left;">Nom</th>
            <th style="text-align:left;">Prix</th>
            <th colspan="2" style="text-align:left;">Action</th>
        </tr>
        <?php foreach ($recupProduit as $key => $cafe) : ?>
        <tr>
            <td><?php echo $cafe->title;?></td>
            <td><?php echo $cafe->price;?></td>
            <td><a href="" title="Modifier">Modifier</a></td>
            <td><a href="" title="Supprimer">Supprimer</a></td>
        </tr>
        <?php endforeach ?>
    </table>
    

</body>
</html>