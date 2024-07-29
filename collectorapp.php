<!DOCTYPE html>
<html>
<head>

</head>
<body>



<?php
$db = new PDO('mysql:host=db; dbname=collector', 'root','password');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$query = $db->prepare('SELECT * FROM `exoplanets`');
$query->execute();
$exoPlanets = $query->fetchAll();
echo '<h1>Exoplanets</h1>';
var_dump($exoPlanets);



?>



</body>
</html>
