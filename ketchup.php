<?php require_once('logic.php'); 
$videoDir = 'static/order/';

$videoFiles = glob($videoDir . '*.mp4');

$randomVideo = $videoFiles[array_rand($videoFiles)];

$mimeType = mime_content_type($randomVideo);
?>

<!DOCTYPE html>
<html lang="en">
    
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/stylles/page_ketchup.css">
    <link rel="shortcut icon" href="static/icon/icon.png" type="image/x-icon">
    <title>КЕТЧУП</title>
</head>

<body>
    <?php require_once('header.php'); ?>
    <video controls autoplay>
        <source src="<?= $randomVideo; ?>" type="<?= $mimeType; ?>">
    </video>
</body>
</html>