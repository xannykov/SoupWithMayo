<?php
require_once('logic.php');

// Список id для выборки изображений
$imageIds = [16, 62, 24, 56, 3, 1, 26, 66, 52, 49];

$idList = implode(',', $imageIds);

// Запрос для выборки изображений с их названиями альбомов
$sql = "SELECT si.id, si.path_img, soi.name_orig_album 
        FROM soup_images si
        INNER JOIN soup_original_images soi ON si.id = soi.id_rofl_album
        WHERE si.id IN ($idList)
        ORDER BY FIELD(si.id, $idList)";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$images = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/stylles/page_best.css">
    <link rel="shortcut icon" href="static/icon/icon.png" type="image/x-icon">
    <title>ЛУЧШЕЕ ЗА ФОРС</title>
</head>
<body>
    <?php require_once('header.php'); ?>
    <div class="image-list">
        <?php foreach ($images as $index => $image): ?>
            <div class="image-item">
                <p class="image-number"><?= $index + 1 ?></p>
                <img src="static/images/<?= $image['path_img']; ?>" alt="Image">
                <p class="album-name"><?= $image['name_orig_album']; ?></p>
            </div>
        <?php endforeach; ?>
    </div>
</body>
</html>
