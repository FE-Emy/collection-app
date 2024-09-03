<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1">
    <title>Exoplanets</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
    <h1>Exoplanets</h1>
</div>
<div class="itemsContainer">
<?php
require_once 'db.php';
$query = $db->prepare('SELECT * FROM `exoplanets`');
$query->execute();
$exoPlanets = $query->fetchAll();
    foreach ($exoPlanets as $planet) {
        echo '<div class="itemCard">';
        echo '<img src="' . $planet['image_url'] . '" alt="' . $planet['name'] . '">';
        echo '<h2>' . $planet['name'] . '</h2>';
        echo '<br>';
        echo '<p>' . $planet['fact'] . '</p>';
        echo '<br>';
        echo '<p>Location: ' . $planet['location'] . '</p>';
        echo '<p>Type: ' . $planet['type'] . '</p>';
        echo '<p>Orbital period: : ' . $planet['orbital_period'] . '</p>';
        echo '<p>Distance: ' . $planet['distance'] . '</p>';
        echo '</div>';
    }
?>
</div>
<a class='addItemLink' href="add_item.php"><div class="addItemButton">Add new Exoplanets</div></a>
</body>
</html>