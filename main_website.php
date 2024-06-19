<?php require_once('logic.php');?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/stylles/stylemaincontainer.css">
    <link rel="stylesheet" href="static/stylles/stylecardcontainer.css">
    <link rel="shortcut icon" href="static/icon/icon.png" type="image/x-icon">
    <script src="script.js"></script>
    <title>ГЛАВНАЯ</title>
</head>

<body>
    <?php require_once('header.php'); ?>
    <div class="main-container">
        <div class="container">
            <tbody>
                <?php 
                shuffle($data);
                foreach ($data as $datas): ?>
                    <div class="card">
                        <img class="card-img" src="static/images/<?= $datas['path_img']; ?>">
                        <a href="card_info.php?id=<?= $datas['id']; ?>" class="details-btn">ПОДРОБНЕЕ</a>
                    </div>
                <?php endforeach; ?>
            </tbody>
        </div>
    </div>
</body>
</html>