<?php require_once('logic.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/stylles/page_contacts.css">
    <link rel="shortcut icon" href="static/icon/icon.png" type="image/x-icon">
    <script src="script.js"></script>
    <title>КОНТАКТЫ</title>
</head>

<body>
    <?php require_once('header.php'); ?>
    <div class="contacts-container">
        <div class="contact" onclick="redirectTo('https://github.com/xannykov')">
            <img src="static/icon/GitHubLogo.png" alt="Logo GitHub">
            <h2>GITHUB</h1>
        </div>

        <div class="contact" onclick="redirectTo('https://t.me/xannykov')">
        <img src="static/icon/TelegramLogo.png" alt="Logo Telegram">
            <h2>TELEGRAM</h1>
        </div>
        
        <div class="contact" onclick="redirectTo('https://vk.com/default_community')">
        <img src="static/icon/VkLogo.png" alt="Logo VK">
            <h2>VK GROUP</h1>
        </div>
    </div>
</body>
</html>