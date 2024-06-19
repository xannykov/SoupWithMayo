<?php require_once('logic.php');

function isActivePage($page) {
    if (basename($_SERVER['PHP_SELF']) === $page) {
        return 'style="background: black; color: white;"';
    } else {
        return '';
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/stylles/header_website.css">
    <link rel="shortcut icon" href="static/icon/icon.png" type="image/x-icon">
    <script src="script.js"></script>
    <script>let currentLanguage = 'russian';</script>
</head>
<body>
<header>
    <a href="main_website.php" class="logo">СУП С МАЙОНЕЗОМ</a>
    <nav>
        <ul>
            <li><a href="best_of_the_force.php" <?php echo isActivePage('best_of_the_force.php'); ?>>ЛУЧШЕЕ ЗА ФОРС</a></li>
            <li><a href="about_the_project.php" <?php echo isActivePage('about_the_project.php'); ?>>О ПРОЕКТЕ</a></li>
            <li><a href="contacts.php" <?php echo isActivePage('contacts.php'); ?>>КОНТАКТЫ</a></li>
            <li><a href="ketchup.php" <?php echo isActivePage('ketchup.php'); ?>>КЕТЧУП</a></li>
            <label class="switch">
                <input type="checkbox" onclick="toggleLanguage()">
                <span class="slider round">
                    <span></span>
                </span>
            </label>
            <li class="dropdown">
                <a href="javascript:void(0);" class="icon" onclick="toggleMenu()">&#9776;</a>
                <div class="dropdown-content">
                    <a href="best_of_the_force.php" <?php echo isActivePage('best_of_the_force.php'); ?>>ЛУЧШЕЕ ЗА ФОРС</a>
                    <a href="about_the_project.php" <?php echo isActivePage('about_the_project.php'); ?>>О ПРОЕКТЕ</a>
                    <a href="contacts.php" <?php echo isActivePage('contacts.php'); ?>>КОНТАКТЫ</a>
                    <a href="ketchup.php" <?php echo isActivePage('ketchup.php'); ?>>КЕТЧУП</a>
                </div>
            </li>
        </ul>
    </nav>
</header>
</body>
</html>