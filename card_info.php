<?php
require_once('logic.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Запрос к базе данных для получения данных о карточке из таблицы soup_images
    $stmt = $pdo->prepare("SELECT * FROM soup_images WHERE id = :id");
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $image = $stmt->fetch(PDO::FETCH_ASSOC);

    // Запрос к базе данных для получения связанного изображения из таблицы soup_original_images
    $stmt2 = $pdo->prepare("SELECT * FROM soup_original_images WHERE id_rofl_album = :id");
    $stmt2->bindParam(':id', $id);
    $stmt2->execute();
    $original_image = $stmt2->fetch(PDO::FETCH_ASSOC);
/*     var_dump($original_image); */
} else {
    // Если id не был передан, выполните какие-то действия по умолчанию или перенаправьте на другую страницу
    echo "Что-то пошло не так =(";
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/stylles/style_card_info.css">
    <link rel="shortcut icon" href="static/icon/icon.png" type="image/x-icon">
    <script src="script.js"></script>
    <title>ИНФОРМАЦИЯ ОБ АЛЬБОМЕ</title>
</head>

<body>
    <?php require_once('header.php'); ?>
    <div class="card-container">
        <div class="container-the-item">
            <div class="card-info">
                <img class="card-img" src="static/images/<?= $image['path_img']; ?>" alt="Rofl Album">
            </div>
            <div class="card-info">
                <img class="card-img" src="static/images_original/<?= $original_image['path_orig_img']; ?>" alt="Original Album">
            </div>
        </div>
        <div class="album-info">
            <h1 class="album-name"><?= strtoupper($original_image['name_orig_album']); ?></h1>      
            <div class="logo-container">
               <?php if ($original_image['spotify_url'] !== null): ?>
                    <a href="<?= $original_image['spotify_url']; ?>" target="_blank" >
                        <img src="static/icon/SpotifyLogo.png" alt="Logo Spotify" class="logo-place">
                    </a>
                <?php else: ?>
                    <div onclick="showModal()">
                        <img src="static/icon/SpotifyLogo.png" alt="Logo Spotify" class="logo-place">
                    </div>
                <?php endif; ?>

                <?php if ($original_image['yandex_url'] !== null): ?>
                    <a href="<?= $original_image['yandex_url']; ?>" target="_blank" >
                        <img src="static/icon/YandexLogo.png" alt="Logo Yandex" class="logo-place">
                    </a>
                <?php else: ?>
                    <div onclick="showModal()">
                        <img src="static/icon/YandexLogo.png" alt="Logo Yandex" class="logo-place">
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
        <!-- Всплывающее окно -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <p>Не доступно на данной площадке</p>
        </div>
    </div>
</body>
</html>