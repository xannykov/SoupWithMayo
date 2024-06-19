-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 16 2024 г., 21:45
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `soup_with_mayo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `soup_images`
--

CREATE TABLE `soup_images` (
  `id` int(50) UNSIGNED NOT NULL,
  `path_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `soup_images`
--

INSERT INTO `soup_images` (`id`, `path_img`) VALUES
(1, '50 цент.jpg'),
(2, '2014 Forest Hills Drive j cole.jpg'),
(3, 'american football.jpg'),
(4, 'aphex twin syro.jpg'),
(5, 'Arthur Russell World Of Echo.jpg'),
(6, 'asap rocky testing.jpg'),
(7, 'atomic heart soundtrack.jpg'),
(8, 'Billy Talent Crisis of Faith.jpg'),
(9, 'Black Country, New Road - For The First Time.jpg'),
(10, 'californication red hot chili peppers.jpg'),
(11, 'danny brown atrocity exhibition.jpg'),
(12, 'death grips Exmilitary.jpg'),
(13, 'Death Grips Government Plates.jpg'),
(14, 'death grips the money store .jpg'),
(15, 'Dedication.jpg'),
(16, 'dr dre -Chronic.jpg'),
(17, 'duster Stratosphere.jpg'),
(18, 'Fluke Atom bomb.jpg'),
(19, 'frank ocean blonde.jpg'),
(20, 'Garden - Crystal Clear.jpg'),
(21, 'kanye west ye.jpg'),
(22, 'kendrik lamar damn.jpg'),
(23, 'Mac de marco salad days.jpg'),
(24, 'machine girl wlfgrl.jpg'),
(25, 'Metallica Hardwired… to Self-Destruct.jpg'),
(26, 'MF DOOM MM..FOOD.jpg'),
(27, 'Nine Inch Nails  The Downward Spiral.jpg'),
(28, 'Nirvana_Nevermind.jpg'),
(29, 'Oblique Occasions - Anathema.jpg'),
(30, 'Panchiko — D E A T H M E T A L.jpg'),
(31, 'Pasteboard - Glitter.jpg'),
(32, 'queen News of the World.jpg'),
(33, 'RHCP The Getaway.jpg'),
(34, 'Silk Rhodes Silk Rhodes.jpg'),
(35, 'tally hall Good & Evil.jpg'),
(36, 'tame impala currents.jpg'),
(37, 'The Garden Surprise This Could Build Us A Home.jpg'),
(38, 'The Life Of Pablo.jpg'),
(39, 'the rolling stones Goats Head Soup.jpg'),
(40, 'this is happening lcd soundsystem.jpg'),
(41, 'Thundercat Drunk.jpg'),
(42, 'tyler the creator bastard.jpg'),
(43, 'Unwound Repetition.jpg'),
(44, 'yung lean stardust.jpg'),
(45, 'Zach Hill FACE TAT.jpg'),
(46, 'аппартаменты.jpg'),
(47, 'буерак пролетариат.jpg'),
(48, 'В диапазоне между отчаянием и надеждой.jpg'),
(49, 'ВАЛЕНТИН.jpg'),
(50, 'ГО Красный Альбом.jpg'),
(51, 'гоат.jpg'),
(52, 'депо.jpg'),
(53, 'Егор и Опизденевшие Сто лет одиночества.jpg'),
(54, 'заклинание невидимости.jpg'),
(55, 'канье.jpg'),
(56, 'каньи уэст My Beautiful Dark Twisted Fantasy.jpg'),
(57, 'кармэн.jpg'),
(58, 'кристал кастлес кристал кастелс.jpg'),
(59, 'лимп.jpg'),
(60, 'макулатура сеанс.jpg'),
(61, 'михаил круг я прошёл сибирь.jpg'),
(62, 'нойз.jpg'),
(63, 'скрип.jpg'),
(64, 'финал.jpg'),
(65, 'summer of haze jessica.jpg'),
(66, 'Sonic Youth - Dirty.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `soup_original_images`
--

CREATE TABLE `soup_original_images` (
  `id` int(50) UNSIGNED NOT NULL,
  `name_orig_album` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path_orig_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_rofl_album` int(50) UNSIGNED DEFAULT NULL,
  `yandex_url` varchar(100) DEFAULT NULL,
  `spotify_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `soup_original_images`
--

INSERT INTO `soup_original_images` (`id`, `name_orig_album`, `path_orig_img`, `id_rofl_album`, `yandex_url`, `spotify_url`) VALUES
(1, '50 Cent - Get Rich Or Die Tryin', '50 cent Get Rich or Die Tryin.jpg', 1, 'https://music.yandex.ru/album/1026', 'https://open.spotify.com/album/5G5rgQHzdQnw32SI0WjIo5?si=Zr38uZFwQoCqa3_nmaucxA'),
(2, 'J. Cole - 2014 Forest Hills Drive', '2014 Forest Hills Drive j cole.jpg', 2, 'https://music.yandex.ru/album/20025668', 'https://open.spotify.com/album/0UMMIkurRUmkruZ3KGBLtG?si=Vm6OpOcmTCi_vv8hJTsRIQ'),
(3, 'American Football - American Football', 'american football american football.jpg', 3, NULL, 'https://open.spotify.com/album/70OkRXiiwdTCtZ9YiPBzPp?si=og49-IPwQXelVwPdVcYfMQ'),
(4, 'Aphex Twin - Syro', 'apex twin syro.jpg', 4, NULL, 'https://open.spotify.com/album/4mwrMLVKo940qLFXEIef4w?si=LRD6uXJPT4yrgGbbwlIw3g'),
(5, 'Arthur Russell - World Of Echo', 'Arthur Russell World Of Echo.jpg', 5, 'https://music.yandex.ru/album/6337612', 'https://open.spotify.com/album/7hodLjVNQZSsNEqvG77ZkI?si=l4_RKCcdTAutAa8Ny7Hsog'),
(6, 'A$AP Rocky - Testing', 'asap rocky testing.jpg', 6, NULL, 'https://open.spotify.com/album/3MATDdrpHmQCmuOcozZjDa?si=u0xa3nFyQRuHURnUjsL2Cw'),
(7, 'Atomic Heart - Atomic Heart, Vol.1', 'atomic heart soundtrack.jpg', 7, 'https://music.yandex.ru/album/24982188', 'https://open.spotify.com/album/2XVO5mhDvOpSTYpXUDVisx?si=3wYHg8ioRPamH6HQEMaHuQ'),
(8, 'Billy Talent - Crisis of Faith', 'Billy Talent Crisis of Faith.jpg', 8, 'https://music.yandex.ru/album/20703818', 'https://open.spotify.com/album/0xwYNuGTVa31IWnADrA3tb?si=qVzmDwMBRRu1q5XMxWD-Ww'),
(9, 'Black Country, New Road - For The First Time', 'Black Country, New Road - For The First Time.jpg', 9, 'https://music.yandex.ru/album/13700352', 'https://open.spotify.com/album/2PfgptDcfJTFtoZIS3AukX?si=C8fMmnqFSku826QMTyTKVw'),
(10, 'Red Hot Chili Peppers - Callifornication', 'californication red hot chili peppers.jpg', 10, 'https://music.yandex.ru/album/21862', 'https://open.spotify.com/album/0fLhefnjlIV3pGNF9Wo8CD?si=Bw8LapZeRy-9daFTBXpEwA'),
(11, 'Danny Brown - Atrocity Exhibition', 'danny brown atrocity exhibition.jpg', 11, NULL, 'https://open.spotify.com/album/3A1vnUJDPz0xYMful9pO4I?si=yXyUCHc3SpetMg5uT3y_fw'),
(12, 'Death Grips - Exmilitary', 'death grips Exmilitary.jpg', 12, NULL, NULL),
(13, 'Death Grips - Government Plates', 'Death Grips Government Plates.jpg', 13, 'https://music.yandex.ru/album/4968453', 'https://open.spotify.com/album/3T01oOjbrox1jz0pR112oV?si=wyq9lDDTQRa_UPl8SK7tkA'),
(14, 'Death Grips - The Money Store', 'death grips the money store.jpg', 14, NULL, 'https://open.spotify.com/album/1PQDjdBpHPikAodJqjzm6a?si=J78aIxTSSB6Kb-y5sCdd3w'),
(15, 'Chief Keef - Dedication', 'Dedication.png', 15, 'https://music.yandex.ru/album/21823369', 'https://open.spotify.com/album/1cu8gZDe4a71AQgSlBHOAC?si=AQ3NMlmhR9WbDeDhzhLNXQ'),
(16, 'Dr.Dre - Chronic', 'dr dre -Chronic.jpg', 16, NULL, 'https://open.spotify.com/album/2V5rhszUpCudPcb01zevOt?si=MD3fx8ghTrSnAZk2s5LnHQ'),
(17, 'Duster - Stratosphere', 'duster Stratosphere.jpg', 17, 'https://music.yandex.ru/album/62494', 'https://open.spotify.com/album/2S3289mypNw2zP0OpFexMb?si=mDLQGkx2Tx-tHFPsQPGYFQ'),
(18, 'Fluke - Atom bomb', 'Fluke Atom bomb.jpg', 18, 'https://music.yandex.ru/album/32268', 'https://open.spotify.com/album/5TbRo1rBrhgHSTB4i2wdZS?si=7nNNohWkQ7q3KPLPzm9Hkg'),
(19, 'Frank Ocean - Blonde', 'frank ocean blonde.jpg', 19, 'https://music.yandex.ru/album/6277226', 'https://open.spotify.com/album/3mH6qwIy9crq0I9YQbOuDf?si=gFiftIZcTuOkXY3by2RKfg'),
(20, 'Crystal Clear - The Garden', 'Crystal Clear - Garden.jpg', 20, NULL, 'https://open.spotify.com/track/06suFc0VLlAItrJx5qQ0Bp?si=2c1b3be5fae948fe'),
(21, 'Kanye West - ye', 'kanye west ye.jpg', 21, 'https://music.yandex.ru/album/6011045', 'https://open.spotify.com/album/2Ek1q2haOnxVqhvVKqMvJe?si=tBXaJwwaQqa-S34A_6mMPQ'),
(22, 'Kendrick Lamar - Damn', 'kendrick lamar damn.jpg', 22, 'https://music.yandex.ru/album/4294416', 'https://open.spotify.com/album/4eLPsYPBmXABThSJ821sqY?si=JWO_B-8mSYiESaNCAbt0BA'),
(23, 'Mac DeMarco - Salad Days', 'mac de marco salad days.jpg', 23, 'https://music.yandex.ru/album/6417491', 'https://open.spotify.com/album/2sij95QgjmgrhNv33achzn?si=zaDwXy16RRebkT4ejj1A2g'),
(24, 'Machine Girl - WLFGRL', 'machine girl wlfgrl.jpg', 24, NULL, 'https://open.spotify.com/album/1GezMTE4OA4tikMDBQK5u3?si=6DJJ-2OiQXSp_aSe60W-Vg'),
(25, 'Metallica - Hardwired… to Self-Destruct', 'Hardwired… to Self-Destruct metallica.jpg', 25, 'https://music.yandex.ru/album/3935282', 'https://open.spotify.com/album/7LwifLL1anaEd9eIIfIkx7?si=0MpDNDZpQlaYIFQDKD4H8g'),
(26, 'MF DOOM - MM..FOOD', 'MF DOOM MM..FOOD.jpg', 26, 'https://music.yandex.ru/album/42603', 'https://open.spotify.com/album/1UcS2nqUhxrZjrBZ3tHk2N?si=V8mFtm4NTT6nFIOseBm14w'),
(27, 'Nine Inch Nails - The Downward Spiral', 'Nine Inch Nails  The Downward Spiral.jpg', 27, 'https://music.yandex.ru/album/5600808', 'https://open.spotify.com/album/5I7lLu8xXJfGRdFUqHaLQU?si=TqZ9LyGYQhyB_o5Lfc4kcw'),
(28, 'Nirvana - Nevermind', 'Nirvana_Nevermind.jpg', 28, 'https://music.yandex.ru/album/19235277', 'https://open.spotify.com/album/2UJcKiJxNryhL050F5Z1Fk?si=qE6Nc4B-Q9yqCLQJV-TJCg'),
(29, 'Oblique Occasions - Anathema', 'Oblique Occasions - Anathema.jpg', 29, NULL, 'https://open.spotify.com/album/1zheUVWIHSWWoLYQzdtrnR?si=H0LX0Zr5TwicVUsBPQt3aw'),
(30, 'Panchiko - D>E>A>T>H>M>E>T>A>L', 'Panchiko — D E A T H M E T A L.jpg', 30, 'https://music.yandex.ru/album/9961564', 'https://open.spotify.com/album/2MASm01cgG0a0CgioQpe6Q?si=9XtgfIePQFKpsh4RpV1CfA'),
(31, 'Pasteboard - Glitter', 'Pasteboard - Glitter.jpg', 31, NULL, 'https://open.spotify.com/album/3HvASlOR1hZ7IFnvFECDBS?si=9Lu5FrubTZOM_frUfB3HNA'),
(32, 'Queen - News of the World', 'queen News of the World.png', 32, 'https://music.yandex.ru/album/225652', 'https://open.spotify.com/album/7tB40pGzj6Tg0HePj2jWZt?si=RjUy6N5NTh6kSrkVNMdkrA'),
(33, 'Red Hot Chili Peppers - The Getaway', 'RHCP The Getaway.jpg', 33, 'https://music.yandex.ru/album/3550565', 'https://open.spotify.com/album/43otFXrY0bgaq5fB3GrZj6?si=fiafHbcGTxCw2Fif4CYFbQ'),
(34, 'Silk Rhodes - Silk Rhodes', 'Silk Rhodes Silk Rhodes.jpg', 34, 'https://music.yandex.ru/album/2327708', 'https://open.spotify.com/album/3i1kIb5NncLgLIU86ju8jr?si=0yDE2wZJTP-m0WA2f8wZeQ'),
(35, 'Tally Hall - Good & Evil', 'tally hall Good & Evil.jpg', 35, 'https://music.yandex.ru/album/3477741', 'https://open.spotify.com/album/2Vq0Y8wgiZRYtZ1mQ7zOMG?si=ttXyLGXkQoCkhtk9RHml4g'),
(36, 'Tame Impala - Currents', 'tame impala currents.jpg', 36, 'https://music.yandex.ru/album/2856531', 'https://open.spotify.com/album/79dL7FLiJFOO0EoehUHQBv?si=biHn6C9nRc-TdIpK7g8LlA'),
(37, 'The Garden - Surprise / This Could Build Us A Home', 'The Garden Surprise This Could Build Us A Home.jpg', 37, 'https://music.yandex.ru/album/2403599', NULL),
(38, 'Kanye West - The Life Of Pablo', 'The Life Of Pablo.jpg', 38, 'https://music.yandex.ru/album/3555472', 'https://open.spotify.com/album/7gsWAHLeT0w7es6FofOXk1?si=kn_tvgibS9OXOFj-fUIQCg'),
(39, 'The Rolling Stones - Goats Head Soup', 'the rolling stones Goats Head Soup.jpg', 39, 'https://music.yandex.ru/album/7555', 'https://open.spotify.com/album/6iVOz2hudE6dv5Yrcsw2c9?si=NnIULGIwRVS12BQXkisGhQ'),
(40, 'Lcd Soundsystem - This Is Happening', 'this is happening lcd soundsystem.jpg', 40, 'https://music.yandex.ru/album/2015169', 'https://open.spotify.com/album/4hnqM0JK4CM1phwfq1Ldyz?si=nmS57fTPSCWKtYc7hQMPIQ'),
(41, 'Thundercat - Drunk', 'Thundercat Drunk.jpg', 41, 'https://music.yandex.ru/album/6093531', 'https://open.spotify.com/album/7vHBQDqwzB7uDvoE5bncMM?si=GVR7ccGNQWehH5ejyzyOaQ'),
(42, 'Tyler, The Creator - Bastard', 'tyler the creator bastard.jpg', 42, 'https://music.yandex.ru/album/2380655', NULL),
(43, 'Unwound - Repetition', 'Unwound Repetition.jpg', 43, 'https://music.yandex.ru/album/6468879', 'https://open.spotify.com/album/30GshgppFRvO0G5RNbleZn?si=0gy443o8SXK6nN6SxJI2Pw'),
(44, 'Yung Lean - Stardust', 'yung lean stardust.jpg', 44, 'https://music.yandex.ru/album/22778156', 'https://open.spotify.com/album/7v6htsHRSZ34XJCki1uZxB?si=ad-_DsOrRDaIr4Hok0YcOw'),
(45, 'Zach Hill - FACE TAT', 'Zach Hill FACE TAT.jpg', 45, 'https://music.yandex.ru/album/1088889', 'https://open.spotify.com/album/4YM04MdeuE7h3mziHsvy9v?si=n-ytCIgtSTyamd62DonD2w'),
(46, 'Буерак - Скромные Аппартаменты', 'буерак скромные аппартаменты.jpg', 46, 'https://music.yandex.ru/album/4651737', 'https://open.spotify.com/album/59hClYI2ixPdMu5JxTi1v7?si=XtFxBq0vT_G12ErTdzUaFw'),
(47, 'Буерак - Пролетариат', 'буерак пролетариат.jpg', 47, 'https://music.yandex.ru/album/3732120\r\n', 'https://open.spotify.com/album/2TbijtbzEntv9910PDjYH1?si=jDQIfzMZRiS5P2IJMfCZ9A'),
(48, 'Порнофильмы - В диапазоне между отчаянием и надеждой', 'В диапазоне между отчаянием и надеждой.jpg', 48, 'https://music.yandex.ru/album/4714779', 'https://open.spotify.com/album/6qOOpX7g5uEw3NhOgmy3iq?si=ZRzauRHDR4241vyOOENBjw'),
(49, 'Валентин Стрыкало - Смирись и расслабься', 'валентин стрыкало смирись и расслабься.jpg', 49, NULL, 'https://open.spotify.com/album/6MtWkVH4nIqwo5fiM4J6xF?si=e08XoT_IRECghIv0mRMlbA'),
(50, 'Гражданская Оборона - Красный Альбом', 'ГО Красный Альбом.jpg', 50, 'https://music.yandex.ru/album/4784816', 'https://open.spotify.com/album/4GgekK0b2Bnw8chaSbv5Nc?si=FqXsShJDQ-i2VgjiScK8OA'),
(51, 'Yanix - G.O.A.T uslugi', 'goat uslugi.jpg', 51, 'https://music.yandex.ru/album/23298185', 'https://open.spotify.com/album/5BGuL5kFyLMYPBc9hOS1jI?si=1O6TUjLEQ4y3yNo3py-X_g'),
(52, 'Boulevard Depo - СЕРТОЛОВСКИЙ ТОКСИК', 'boulevard depo sertolovo toxic.jpg', 52, 'https://music.yandex.ru/album/24931386', 'https://open.spotify.com/album/63gdvthuxhbuDtTAJ7MKDC?si=8eHdRX_hTXaSv_kxDwm8Og'),
(53, 'Егор и Опизденевшие - Сто лет одиночества', 'Егор и Опизденевшие Сто лет одиночества.jpg', 53, 'https://music.yandex.ru/album/4784482', 'https://open.spotify.com/album/5frO1EmayXbNqZj4sFK0IH?si=Qxx-6_caTayQKoa2cr9UfA'),
(54, 'ikea flower - Invisibility Spells', 'ikea flower invisibility spells.jpg', 54, 'https://music.yandex.ru/album/12239481', 'https://open.spotify.com/album/3YjyyKc9PpmAXVfilCPbRB?si=0ojQA7UKSIarH3W9iPoiBw'),
(55, 'Kanye West - Graduation', 'Graduation.jpg', 55, 'https://music.yandex.ru/album/4418216', 'https://open.spotify.com/album/4SZko61aMnmgvNhfhgTuD3?si=hz38QswKTSqG-XvQRfJzgw'),
(56, 'Kanye West - My Beautiful Dark Twisted Fantasy', 'каньи уэст My Beautiful Dark Twisted Fantasy.jpg', 56, 'https://music.yandex.ru/album/169071', 'https://open.spotify.com/album/20r762YmB5HeofjMCiPMLv?si=bFpnkIJIS92yYKBGtXNO9g'),
(57, 'КАР-МЭН - Вокруг Света', 'кар мэн вокруг света.jpg', 57, 'https://music.yandex.ru/album/63119', 'https://open.spotify.com/album/1cAWbHu8Cr5ovfa4IinouC?si=1wO3F8Y-T2SEKn2dt7mH8w'),
(58, 'Crystal Castels - Crystal Castels', 'crystal castels.jpg', 58, NULL, 'https://open.spotify.com/album/3LnVvIeiLCngvwEnbdxwCT?si=uelffbisSTmDaQ-HYJd2jw'),
(59, 'Limp Bizkit - Results May Vary', 'limp bizkit result may vary.jpg', 59, 'https://music.yandex.ru/album/2898851', 'https://open.spotify.com/album/3oUoQ0UH7Rv06x1kpSjS36?si=fLPbSw7RRSyCylXlSC_W-Q'),
(60, 'макулатура - сеанс', 'макулатура сеанс.jpg', 60, 'https://music.yandex.ru/album/4637546', 'https://open.spotify.com/album/1grNfHVS1kxLCDrnDBHzPl?si=VuQrN2YYR-aB0anHPUiKhA'),
(61, 'Михаил Круг - Я прошёл сибирь', 'михаил круг я прошёл сибирь.jpg', 61, 'https://music.yandex.ru/album/1000404', 'https://open.spotify.com/album/4eHtrlNFINySGHfyB9AHNJ?si=_WKeMOIVTrCEYPbUAQnzrw'),
(62, 'Noize MC - Новый Альбом', 'нойз мс новый альбом.jpg', 62, 'https://music.yandex.ru/album/5195131', 'https://open.spotify.com/album/5O0lvSqOB9IEmHyKsYppAn?si=XYdHsy-0TJa0NudYD_Irgg'),
(63, 'Gruppa Skryptonite - Ты не верь слезам', 'Gruppa Skryptonite -Ты не верь слезам.jpg', 63, 'https://music.yandex.ru/album/19477294', 'https://open.spotify.com/album/6I8YWpqho1kTSzJdozzS8P?si=u7qfJBjrTral3W1nJ4VUhw'),
(64, 'FINSKY FAMILY - Богемская П=)ебота', 'finsky family.jpg', 64, 'https://music.yandex.ru/album/14036939', 'https://open.spotify.com/album/1cEHI9XvSrua9KDt7Wstmx?si=edCCLdNoTt6a4zE_-0Cs9Q'),
(65, 'Summer Of Haze - jessica', 'summer of haze kessica.jpg', 65, 'https://music.yandex.ru/album/6484334', 'https://open.spotify.com/album/5R5utjGy9ngPyF3INoUG9R?si=mJmdTBgkTauZB4WVEOMI_Q'),
(66, 'Sonic Youth - Dirty', 'Sonic Youth - Dirty.jpg', 66, 'https://music.yandex.ru/album/87027', 'https://open.spotify.com/album/05Zo2yt4reflRVNXFOYxDD?si=N613SWfWSpSK5fMVxPbvUA');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `soup_images`
--
ALTER TABLE `soup_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `soup_original_images`
--
ALTER TABLE `soup_original_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rofl_album` (`id_rofl_album`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `soup_images`
--
ALTER TABLE `soup_images`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `soup_original_images`
--
ALTER TABLE `soup_original_images`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `soup_original_images`
--
ALTER TABLE `soup_original_images`
  ADD CONSTRAINT `soup_original_images_ibfk_1` FOREIGN KEY (`id_rofl_album`) REFERENCES `soup_images` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
