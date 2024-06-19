// =========================
var dropdown = document.querySelector('.dropdown');
var dropdownContent = document.querySelector('.dropdown-content');
dropdown.addEventListener('click', toggleDropdown);

// Функция для переключения отображения выпадающего меню
function toggleDropdown() {
    if (dropdownContent.style.display === 'block') {
        dropdownContent.style.display = 'none';
    } else {
        dropdownContent.style.display = 'block';
    }
}
// =========================


// =========================
// Функция появления модального окна при отсутствии альбома на площадке
function showModal() {
    var modal = document.getElementById('myModal');
    modal.style.display = 'block';

    setTimeout(function(){
        modal.style.display = "none";
    }, 2000);
}
// =========================


// =========================
function redirectTo(url) {
    window.open(url, '_blank');
}
// =========================


// =========================
// Функции перевода сайта
function toggleLanguage() {
    const logoElement = document.querySelector('.logo');
    const bestOfTheForceLink = document.querySelector('a[href="best_of_the_force.php"]');
    const aboutTheProjectLink = document.querySelector('a[href="about_the_project.php"]');
    const contactsLink = document.querySelector('a[href="contacts.php"]');
    const ketchupLink = document.querySelector('a[href="ketchup.php"]');
    const dropdownLinks = document.querySelectorAll('.dropdown-content a');
    const detailsbtn = document.querySelectorAll('.details-btn');

    const infoProjects = document.querySelectorAll('.info-project');

    if (currentLanguage === 'russian') {
        localStorage.setItem('selectedLanguage', currentLanguage);
        // Переводим на английский
        logoElement.textContent = 'SOUP WITH MAYO';
        bestOfTheForceLink.textContent = 'BEST OF THE FORCE';
        aboutTheProjectLink.textContent = 'ABOUT THE PROJECT';
        contactsLink.textContent = 'CONTACTS';
        ketchupLink.textContent = 'KETCHUP';

        detailsbtn.forEach(btn => {
            btn.textContent = 'MORE DETAILED';
        });

        dropdownLinks.forEach(link => {
            switch (link.getAttribute('href')) {
                case 'best_of_the_force.php':
                    link.textContent = 'BEST OF THE FORCE';
                    break;
                case 'about_the_project.php':
                    link.textContent = 'ABOUT THE PROJECT';
                    break;
                case 'contacts.php':
                    link.textContent = 'CONTACTS';
                    break;
                case 'ketchup.php':
                    link.textContent = 'KETCHUP';
                    break;
                default:
                    break;
            }
        });

        infoProjects.forEach(project => {
            const header = project.querySelector('.info-header');
            const text = project.querySelector('.info-text');

            switch (header.textContent) {
                case 'О ЧЁМ САЙТ ?':
                    header.innerHTML = '<p>WHAT IS THE SITE ABOUT ?</p>';
                    text.innerHTML = `<p>THIS SITE IS DEDICATED TO FORS, WHICH BECAME POPULAR IN EARLY 2023.
                                      <br>"SOUP WITH MAYO" IS A JOKE, THE ESSENCE OF WHICH IS TO TAKE AN ALBUM/ SINGLE COVER OF ANY ARTIST AND CHANGE THE RELEASE NAME TO THE PHRASE "SOUP WITH MAYO". KINDA FUNNY.
                                      <br>THIS SITE PRESENTS A COLLECTION OF ALTERED COVERS OF POPULAR ARTISTS.</p>`;
                    break;
                case 'ЭТО ЗАКОННО ?':
                    header.textContent = 'IS IT LEGAL ?';
                    text.textContent = 'OF COURSE!';
                    break;
                case 'КОГДА БУДУТ НОВЫЕ ОБЛОЖКИ ?':
                    header.textContent = 'WHEN WILL THERE BE NEW COVERS ?';
                    text.textContent = 'FORS LASTED A COUPLE OF MONTHS AND FUCKED EVERYONE.';
                    break;
                case 'ПОЧЕМУ САЙТ ГОВНО ?':
                    header.textContent = 'WHY IS THE SITE SHIT ?';
                    text.textContent = 'BECAUSE FUCKING.';
                    break;
                default:
                    break;
            }
        });

        currentLanguage = 'english';
    } else {
        localStorage.setItem('selectedLanguage', currentLanguage);
        // Переводим на русский
        logoElement.textContent = 'СУП С МАЙОНЕЗОМ';
        bestOfTheForceLink.textContent = 'ЛУЧШЕЕ ЗА ФОРС';
        aboutTheProjectLink.textContent = 'О ПРОЕКТЕ';
        contactsLink.textContent = 'КОНТАКТЫ';
        ketchupLink.textContent = 'КЕТЧУП';

        detailsbtn.forEach(btn => {
            btn.textContent = 'ПОДРОБНЕЕ';
        });

        dropdownLinks.forEach(link => {
            switch (link.getAttribute('href')) {
                case 'best_of_the_force.php':
                    link.textContent = 'ЛУЧШЕЕ ЗА ФОРС';
                    break;
                case 'about_the_project.php':
                    link.textContent = 'О ПРОЕКТЕ';
                    break;
                case 'contacts.php':
                    link.textContent = 'КОНТАКТЫ';
                    break;
                case 'ketchup.php':
                    link.textContent = 'КЕТЧУП';
                    break;
                default:
                    break;
            }
        });

        infoProjects.forEach(project => {
            const header = project.querySelector('.info-header');
            const text = project.querySelector('.info-text');

            switch (header.textContent) {
                case 'WHAT IS THE SITE ABOUT ?':
                    header.innerHTML = '<p>О ЧЁМ САЙТ ?</p>';
                    text.innerHTML = `<p>ДАННЫЙ САЙТ ПОСВЯЩЁН ФОРСУ, КОТОРЫЙ СТАЛ ПОПУЛЯРНЫМ В НАЧАЛЕ 2023 ГОДА. 
                                      <br>"СУП С МАЙОНЕЗОМ" - ЭТО РОФЛ, СУТЬ КОТОРОГО ЗАКЛЮЧАЕТСЯ В ТОМ, ЧТО БЕРЁТСЯ ОБЛОЖКА АЛЬБОМА/СИНГЛА ЛЮБОГО ИСПОЛНИТЕЛЯ И МЕНЯЕТСЯ НАЗВАНИЕ РЕЛИЗА НА ФРАЗУ "СУП С МАЙОНЕЗОМ". ТИПО СМЕШНО.
                                      <br>НА ДАННОМ САЙТЕ ПРЕДСТАВЛЕНА ПОДБОРКА ВИДОИЗМЕНЁННЫХ ОБЛОЖЕК ПОПУЛЯРНЫХ ИСПОЛНИТЕЛЕЙ.</p>`;
                    break;
                case 'IS IT LEGAL ?':
                    header.textContent = 'ЭТО ЗАКОННО ?';
                    text.textContent = 'НУ КОНЕЧНО!';
                    break;
                case 'WHEN WILL THERE BE NEW COVERS ?':
                    header.textContent = 'КОГДА БУДУТ НОВЫЕ ОБЛОЖКИ ?';
                    text.textContent = 'ФОРС ПРОДЛИЛСЯ ПАРУ МЕСЯЦЕВ И ВСЕХ ПОДЗАЕБАЛ.';
                    break;
                case 'WHY IS THE SITE SHIT ?':
                    header.textContent = 'ПОЧЕМУ САЙТ ГОВНО ?';
                    text.textContent = 'ПОТОМУ ЧТО БЛЯТЬ.';
                    break;
                default:
                    break;
            }
        });

        currentLanguage = 'russian';
    }
}
// =========================