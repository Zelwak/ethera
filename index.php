<?php
include('parameters.php');
include('functions.php');

$pdo = new PDO('mysql:host='.$host.';dbname='.$db_name.';charset=utf8', $user, $password);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ethera</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="script.js"></script>
</head>
<body>
    <a href="completeDB.php">Compléter la base</a>
    <div class="GUI">
        <h2>Informations</h2>
        <ul>
            <li class="_id">ID: <span></span></li>
            <li class="x">X: <span></span></li>
            <li class="y">Y: <span></span></li>
            <li class="width">width: <span></span></li>
            <li class="height">height: <span></span></li>
            <li class="type">type: <span></span></li>
        </ul>
    </div>
    <div class="fields">
        <?= display_fields($pdo); ?>
        <?= display_wizards($pdo); ?>
    </div>
</body>