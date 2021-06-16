<?php include '../controller/product.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste </title>
</head>
<body>
    <h1>Liste des cafés</h1>
<?php foreach ($recupProduit as $key => $lecafe) :
    if ($lecafe -> idCategory == 3){
    echo "<article>";
    echo "<h2>$lecafe->title</h2>";
    echo "<p>$lecafe->price</p>";
    echo "<a href="localhost/TD_SQL/view/detail.php?id=<?php echo $kheys ?>">En savoir plus</a>";
    echo "</article>";
    }
endforeach;
    ?>
</body>
</html>