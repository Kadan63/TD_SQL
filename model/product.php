<?php 
class Produit{

    public function __construct(){
    }
    public function listProduct(){
        $servername = 'localhost';
        $username = 'root';
        $password ='';
        $bddname = 'Shop_ton_cafe';

        echo 'BDD Connectée.';

        try{
            $dbc = new PDO("mysql:host=$servername;dbname=$bddname", $username, $password);
            $dbc->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $requete = 'SELECT * FROM product' or die('Erreur SQL !<br>'.$requete.'<br>'.mysql_error());
            $result = $dbc->query($requete);
            $products=$result->fetchAll(PDO::FETCH_OBJ);
            $result->closeCursor();
            return $products;
        }
        catch(PDOException $e){
            echo "Erreur : " . $e->getMessage();
            echo "Erreur code : ". $e->getCode();
        }
    }
}
?>