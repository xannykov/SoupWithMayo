<?php

$host = 'localhost';
$db = 'soup_with_mayo';
$user = 'root';
$password = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_STRINGIFY_FETCHES => false,
    PDO::ATTR_EMULATE_PREPARES => false
];

// Устанавливаем соединение с базой данных
$pdo = new PDO($dsn, $user, $password, $options);


$sql = "SELECT path_img, id FROM soup_images";

$result = $pdo->query($sql);

// Подготавливаем запрос
$stmt = $pdo->prepare($sql);

// Выполняем запрос
$result = $stmt->execute();

$data = array();
while ($row = $stmt->fetch()) {
    array_push($data, $row);
}

