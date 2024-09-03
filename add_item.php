<?php
require_once 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $image_url = filter_var($_POST['image_url'], FILTER_VALIDATE_URL);
    $name = htmlspecialchars(trim($_POST['name']));
    $fact = htmlspecialchars(trim($_POST['fact']));
    $location = htmlspecialchars(trim($_POST['location']));
    $type = htmlspecialchars(trim($_POST['type']));
    $orbital_period = htmlspecialchars(trim($_POST['orbital_period']));
    $distance = htmlspecialchars(trim($_POST['distance']));

    if (!$image_url) {
        echo "Invalid image URL.";
        exit;
    }

    try {
        $stmt = $db->prepare("
        INSERT INTO exoplanets (name, image_url, location, type, orbital_period, distance, fact) 
        VALUES (:name, :image_url, :location, :type, :orbital_period, :distance, :fact)");
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':image_url', $image_url);
        $stmt->bindParam(':location', $location);
        $stmt->bindParam(':type', $type);
        $stmt->bindParam(':orbital_period', $orbital_period);
        $stmt->bindParam(':distance', $distance);
        $stmt->bindParam(':fact', $fact);
        $stmt->execute();
        echo "<a class='returnLink' href='index.php'>Exoplanet added successfully!</a>";
    } catch (PDOException $exception) {
        echo 'Error: ' . $exception->getMessage();
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1">
    <title>Add Exoplanet</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="addItemBody">
<div class="header">
    <h1 class="formHeader">Add a New Exoplanet</h1>
</div>
<div class="formContainer">
    <form method="post">
        <div>
            <label for="imageUrl">Image URL:</label>
            <input type="url" id="imageUrl" name="image_url" placeholder="https://" required><br>
        </div>
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>
        </div>
        <div>
            <label for="fact">About:</label>
            <textarea type="text" id="fact" rows="5" cols="30" name="fact"></textarea><br>
        </div>
        <div>
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required><br>
        </div>
        <div>
            <label for="type">Type:</label>
            <input type="text" id="type" name="type" required><br>
        </div>
        <div>
            <label for="orbitalPeriod">Orbital Period:</label>
            <input type="text" id="orbitalPeriod" name="orbital_period" required><br> <!-- Nume corectat -->
        </div>
        <div>
            <label for="distance">Distance:</label>
            <input type="text" id="distance" name="distance" required><br>
        </div>
        <button type="submit" name="submit">Add Exoplanet</button>
    </form>
</div>
</body>
</html>