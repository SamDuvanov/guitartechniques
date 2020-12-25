-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 25 2020 г., 23:06
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guitartechniques`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(5) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(20) DEFAULT NULL,
  `viewed` int(5) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `category_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `content`, `date`, `image`, `viewed`, `user_id`, `status`, `category_id`) VALUES
(2, 'Легатная техника', '<p>Данный прием &ndash; одна из основ гитарной игры для любого гитариста.</p>\r\n', '<p>Данный прием &ndash; одна из основ гитарной игры для любого гитариста. Он довольно важен, поскольку позволяет сочинять партии, звучание которых невозможно повторить при использовании техники переменного штриха. В данной статье мы подробно рассмотрим все подробности использования легато на гитаре, дадим советы и упражнения по тому, как развить ее и отрабатывать в дальнейшем.</p>\r\n\r\n<p>По сути, это &ndash; одни из основных приемов артикуляции в музыке. Это два диаметрально противоположных способа извлечения звука.&nbsp;Нон-легато&nbsp;&ndash; это стандартный штрих на гитаре, когда каждый звук проигрывает отдельным ударом по струне. Очень часто он подразумевает непрерывное исполнение тремоло на гитаре.&nbsp;Легато же &ndash; более плавный прием. Когда вы играете на гитаре, вам потребуется ударить по струне один раз, держа палец на одном ладу, и после этого &ndash; другим пальцем левой руки ударить по той же самой струне на другом ладу. Таким образом, получится очень плавная мелодия, которая звучит, не так отрывисто, как в случае с первым вариантом. Кроме того, скорость игры, таким образом, увеличивается.</p>\r\n\r\n<h2>Стандартное обозначение</h2>\r\n\r\n<p>В нотах прием легато обозначается дугой, которая проходит от одной ноты к другой. При этом, если внутри этой дуги включены другие ноты, то это означает, что они все играются при помощи легато.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"легато в музыке\" src=\"https://pereborom.ru/wp-content/uploads/2018/02/legato-v-muzyke.jpg\" style=\"height:200px; width:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Обозначение в табулатурах</h2>\r\n\r\n<p>Точно такой же дугой легато обозначается и в табах. Здесь действуют те же самые правила, что и в нотном написании, однако иногда так же над нотами ставится пояснение &ndash; что это за прием конкретно, хаммер он или пул оф.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://pereborom.ru/wp-content/uploads/2018/02/Hammer-On-1-2-4.png\" style=\"height:275px; width:1225px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-12-22', 'maxresdefault.jpg', 82, 1, NULL, 1),
(3, 'Бенд', '<p><strong>Бенд &mdash;&nbsp;</strong>подтяжка струны до высоты нужной ноты.</p>\r\n', '<p>Существует несколько бенд-приемов:</p>\r\n\r\n<ul>\r\n	<li>подтяжка вверх с &laquo;обрывом&raquo; звука в нужном пике,</li>\r\n	<li>предварительная подтяжка струны, с последующим ударом медиатора и возвратом струны в ее естественное состояние,</li>\r\n	<li>подтяжка вверх, с последующей чередой ударов медиатором по струне при возврате в исходное положение.</li>\r\n</ul>\r\n\r\n<p>Для отработки бенда лучше всего использовать две струны, при этом на &laquo;первой струне&raquo; берется нота в чистом виде, а на &laquo;второй струне&raquo; делается подтяжка, ноты должны зазвучать в унисон.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397490740.jpg\" style=\"height:60px; width:640px\" /></p>\r\n', '2020-12-22', 'bend.jpg', 20, 1, NULL, 1),
(4, 'Хаммер & Пул', '<p><strong>Хаммер</strong>&nbsp;&mdash; удар по струне безымянным пальцем после взятия первой...</p>\r\n', '<p><strong>Хаммер</strong>&nbsp;&mdash; удар по струне безымянным пальцем после взятия первой ноты указательным пальцем, при этом медиатором извлекается только первая нота.</p>\r\n\r\n<p><strong>Пул</strong>&nbsp;&mdash; сдергивание безымянного пальца со струны, таким образом, что бы звучала заранее взятая нота под указательным пальцем, при этом также извлекается только первая нота.</p>\r\n\r\n<p><em>Хаммер и пул &mdash; относятся к технике легато.</em></p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397486142.jpg\" style=\"height:60px; width:320px\" /></p>\r\n', '2020-12-22', 'hamer_pull.jpg', 15, 1, NULL, 1),
(5, 'Вибрато', '<p><strong>Вибрато</strong>&nbsp;&mdash; быстрое покачивание струны вверх-вниз ...</p>\r\n', '<p><strong>Вибрато</strong>&nbsp;&mdash; быстрое покачивание струны вверх-вниз, основной прием соло-гитары, который также применяется при игре бендов.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397491888.jpg\" style=\"height:60px; width:320px\" /></p>\r\n', NULL, 'vibrato.jpg', 8, 1, NULL, 1),
(6, 'Слайд', '<p><strong>Слайд</strong>&nbsp;&mdash; легатный прием &laquo;скольжения&raquo; (глиссандо) по струне (ам) ...</p>\r\n', '<p><strong>Слайд</strong>&nbsp;&mdash; легатный прием &laquo;скольжения&raquo; (глиссандо) по струне (ам), как в сторону повышения, так и понижения высоты тона.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397494993.jpg\" style=\"height:60px; width:640px\" /></p>\r\n\r\n<p>Существует несколько видов слайдов:&nbsp;<strong>классический</strong>,&nbsp;<strong>медиаторный</strong>&nbsp;и&nbsp;<strong>грязный слайд</strong>.</p>\r\n\r\n<p><strong>Медиаторный слайд</strong>&nbsp;&mdash; выполняется за счет скольжения ребра медиатора по струне (ам) в сторону головы грифа электрогитары, с последующим сдергиванием для звукоизвлечения аккорда зажатого левой рукой.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397496873.jpg\" style=\"height:60px; width:320px\" /></p>\r\n\r\n<p><strong>Грязный слайд</strong>&nbsp;&mdash; выполняется за счет скольжения пальцев левой руки в сторону корпуса электрогитары с увеличением скорости движения, и последующим спокойным возвратом в исходное положение.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397499211.jpg\" style=\"height:60px; width:320px\" /></p>\r\n', '2020-12-23', 'slide.jpg', 15, 1, NULL, 1),
(7, 'Флажолет', '<p><strong>Натуральный флажолет</strong>&nbsp;&mdash; лучше всего звучит над 3,&nbsp;5, 7 и 12 порожками ...</p>\r\n', '<p><strong>Натуральный флажолет</strong>&nbsp;&mdash; лучше всего звучит над 3,&nbsp;5, 7 и 12 порожками, при легком прикосновении струны над металлическими ладами с последующим ударом медиатора. Флажолет обозначается ромбом с буквой &laquo;N&raquo;.</p>\r\n\r\n<p><strong>Медиаторный (искусственный) флажолет</strong>&nbsp;&mdash; может быть взят на любой струне и любом ладу, за счет легкого глушения струны большим пальцем правой руки сразу после удара медиатором.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397500775.jpg\" style=\"height:60px; width:320px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-12-23', 'flagol.jpg', 2, 1, NULL, 1),
(8, 'Глушение струн', '<p><strong>Глушение струн</strong>&nbsp;&mdash; эффект достигается за счет глушения басовых струн тыльной ...</p>\r\n', '<p><strong>Глушение струн</strong>&nbsp;&mdash; эффект достигается за счет глушения басовых струн тыльной стороной ладони, широко применяется при игре тяжелых рифов.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397583329.jpg\" style=\"height:60px; width:320px\" /></p>\r\n', '2020-12-23', 'palm-mute.jpg', 9, 1, NULL, 1),
(9, 'Рейк', '<p><strong>Рейк</strong>&nbsp;&mdash; скольжение медиатором вниз с последующим ...</p>\r\n', '<p><strong>Рейк</strong>&nbsp;&mdash; скольжение медиатором вниз с последующим взятием последней ноты фразы, при этом струны приглушаются указательным пальцем левой руки и тыльной стороной ладони правой руки.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397586168.jpg\" style=\"height:60px; width:320px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-12-23', 'rake.jpg', 1, 1, NULL, 1),
(10, 'Тэппинг ', '<p><strong>Тэппинг</strong>&nbsp;&mdash; прием, при котором, первая нота берется&nbsp; ударом...</p>\r\n', '<p><strong>Тэппинг</strong>&nbsp;&mdash; прием, при котором, первая нота берется ударом пальца правой руки, затем идет пул левой рукой и третья нота берется третьим пальцем левой руки. Тэппинг удобен при исполнении паттернов. Паттерн &mdash; группа нот, короткая фраза или ритмический рисунок, мелодическая или аппликатурная модель.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397760463.jpg\" style=\"height:65px; width:480px\" /></p>\r\n', '2020-12-23', 'tapping.jpg', 2, 1, NULL, 1),
(11, 'Тремоло ', '<p><strong>Тремоло</strong>&nbsp;&mdash; ускоренный переменный штрих медиатором ...</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Тремоло</strong>&nbsp;&mdash; ускоренный переменный штрих медиатором. При игре ритмических рисунков, нужно следить за выделением сильных долей при переходе от фразы к фразе. Первый удар медиатором совершается вниз.</p>\r\n\r\n<p><img alt=\"Приемы игры на электрогитаре\" src=\"https://about-guitar.ru/wp-content/uploads/2016/10/big1397763276.jpg\" style=\"height:60px; width:320px\" /></p>\r\n', '2020-12-23', 'tremolo.jpg', NULL, 1, NULL, 1),
(12, 'Бой', '<p><strong>Игра боем</strong> &ndash; это основа основ, то, чему нужно учиться с самого начала</p>\r\n', '<p>Игра боем &ndash; это основа основ, то, чему нужно учиться с самого начала. Играть боем &ndash; значит ударять медиатором или пальцами сразу по всем струнам одновременно для получения полного звука, который отлично подходит для ритм-партий. Чтобы сыграть аккорд, зажмите струны на правильных ладах, а другой рукой ударяйте по струнам.<br />\r\n<br />\r\nНаиболее распространённый вид боя &ndash; удар медиатором вниз. Ударяйте по струнам так, чтобы ваша рука двигалась вниз к полу. Когда ваша рука возвращается в исходную позицию наверх, струны можно тоже задействовать. В большинстве случаев под игрой боем подразумевается чередование ударов по струнам вниз и вверх.</p>\r\n', '2020-12-23', 'boy.jpg', 24, 1, NULL, 2),
(13, 'Арпеджио', '<p><strong>Арпеджио </strong>&ndash; это когда вы играете отдельные ноты аккорда одну ...</p>\r\n', '<p>Арпеджио &ndash; это когда вы играете отдельные ноты аккорда одну за другой, а не вместе, как в игре боем. Это способствует тому, что при зажиме всего одного аккорда получается довольно эффектная и сочная игра.&nbsp;</p>\r\n', '2020-12-23', 'arpegio.jpg', 7, 1, NULL, 2),
(14, 'Натуральные гармоники', '<p><strong>Гармоника </strong>&ndash; это часть звуковой волны, которую генерирует каждая нота ...</p>\r\n', '<p>Всякий раз, когда вы играете какую-либо ноту на гитаре, вы слышите определённую высоту тона &ndash; звук, который можно идентифицировать с той или иной нотой. Гармоника &ndash; это часть звуковой волны, которую генерирует каждая нота. Все ноты производят серии едва заметных отклонений от основного тона, которые называются обертонами, потому что они выше основного тона. Поэтому гармоникой называется основной тон плюс обертоны.<br />\r\n<br />\r\nЗнайте, что гармоники можно использовать в своём музыкальном творчестве в качестве творческого приёма. Самым простым способом извлечения обертона является флажолет.<br />\r\n<br />\r\nСлегка коснитесь пальцем любой струны прямо над порожком двенадцатого лада и дёрните её. Только не давите на струну, а просто касайтесь. Таким образом вы извлечёте обертон в виде глуховатого звука, отдалённо напоминающего тембр флейты.<br />\r\n<br />\r\nТот же приём можно использовать на пятом и седьмом ладах.</p>\r\n', '2020-12-23', 'harmonics.jpg', NULL, 1, NULL, 2),
(15, 'Баррэ', '<p><strong>Баррэ</strong> &ndash; это приём игры на гитаре, когда указательный палец зажимает ...</p>\r\n', '<p>Баррэ &ndash; это приём игры на гитаре, когда указательный палец зажимает две и более струн на одном ладу одновременно. Научившись ставить баррэ, вы сможете быстро выучить множество аккордов, просто передвигая руку с поставленными в одной и той же позиции пальцами по грифу, не меняя постановку. В то же время эти движения могут стать серьёзным вызовом для начинающего гитариста, поскольку такие манипуляции требуют, чтобы левая рука была развита.<br />\r\n<br />\r\nНа практике, чтобы освоить этот приём и уверенно ставить баррэ, большинству новичков требуется несколько месяцев. Вам следует принять этот факт и не унывать, когда сперва ничего не будет получаться. Полное баррэ также можно построить, используя частичные баррэ, когда надо зажимать две или три струны вместо шести. Песня Джека Джонсона &quot;Flake&quot; является отличным примером, с которого можно начать обучение этому приёму.</p>\r\n', '2020-12-23', 'barre.jpg', 3, 1, NULL, 2),
(16, 'Стаккато', '<p><strong>Стаккато </strong>&ndash; это приём игры на гитаре, характеризующийся отрывистой ...</p>\r\n', '<p>Стаккато &ndash; это приём игры на гитаре, характеризующийся отрывистой игрой, звуки отделяются друг от друга короткими паузами. На нотном листе стаккато обозначается точками над или под нотами у их головок. Существует два основных способа игры в стиле стаккато на гитаре: глушение правой рукой и глушение левой рукой (здесь и ниже говорим о гитаристах-правшах). Оба способа подразумевают глушение струн сразу после удара по ним.<br />\r\n<br />\r\nВ первом случае нужно глушить струны правой ударной рукой, положив её на струны возле бриджа. Во втором случае, чтобы заглушить струны левой рукой, просто перестаньте зажимать аккорд, при этом сохраняя контакт со струнами.<br />\r\n<br />\r\nЕщё хороший способ для создания эффекта стаккато &ndash; глушить струны правой рукой прямо возле самого бриджа. Это двухступенчатый процесс: удар по струнам, глушение. Несколько круговое бьющее по струнам движение идёт главным образом от запястья и лишь немного от локтя.</p>\r\n', '2020-12-23', 'staccato.jpg', 3, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(5) NOT NULL,
  `article_id` int(5) NOT NULL,
  `tag_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(9, 2, 1),
(10, 2, 2),
(11, 2, 3),
(12, 2, 5),
(13, 2, 6),
(14, 3, 5),
(15, 3, 6),
(16, 3, 8),
(17, 4, 1),
(18, 4, 2),
(19, 4, 3),
(20, 4, 5),
(21, 4, 6),
(22, 5, 5),
(23, 5, 6),
(24, 5, 8),
(27, 7, 5),
(28, 7, 6),
(29, 7, 7),
(30, 8, 5),
(31, 8, 6),
(32, 10, 1),
(33, 10, 5),
(34, 10, 6),
(35, 11, 5),
(36, 11, 6),
(37, 12, 4),
(38, 12, 6),
(39, 13, 4),
(40, 13, 6),
(41, 14, 4),
(42, 14, 6),
(43, 14, 7),
(44, 15, 4),
(45, 15, 6),
(46, 16, 4),
(47, 16, 6),
(48, 6, 1),
(49, 6, 5),
(50, 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Электрогитара'),
(2, 'Акустическая гитара');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(5) NOT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `article_id` int(5) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `date`) VALUES
(2, 'Статья очень интересная', 1, 2, '2020-12-24'),
(3, 'Прекрасная статья !!!', 3, 3, '2020-12-24'),
(4, 'Super', 3, 3, '2020-12-24'),
(5, 'Очень интересно', 3, 4, '2020-12-24'),
(6, 'Прекрасно', 3, 5, '2020-12-24'),
(7, 'Скучно !!!', 3, 12, '2020-12-24'),
(8, 'Скучновато', 1, 6, '2020-12-24'),
(9, 'ADMIN, да, ты прав', 1, 6, '2020-12-24'),
(10, 'Так себе !!!', 1, 10, '2020-12-24'),
(11, 'Nice article', 4, 12, '2020-12-24'),
(12, 'Very cool !!!', 4, 13, '2020-12-24'),
(13, 'Very cool !!!', 4, 2, '2020-12-24'),
(14, 'Very cool !!!', 4, 3, '2020-12-24'),
(15, 'Весьма неплохо !', 5, 2, '2020-12-24'),
(16, 'JOHNY, ты неправ, статья скучная', 5, 3, '2020-12-24'),
(17, 'Так себе  ', 5, 4, '2020-12-24'),
(18, 'Восхитительно', 5, 5, '2020-12-24'),
(19, 'ADMIN, согласен', 5, 6, '2020-12-24'),
(20, 'Great article', 5, 12, '2020-12-24'),
(21, 'JOHNY, вы не правы ', 5, 13, '2020-12-24'),
(22, ':)))))))))))))))))))))', 5, 15, '2020-12-24'),
(23, 'Неплохо', 5, 16, '2020-12-24'),
(24, 'Стаття дуже цікава. Мені сподобалось', 6, 3, '2020-12-25');

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int(5) NOT NULL,
  `title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tag`
--

INSERT INTO `tag` (`id`, `title`) VALUES
(1, 'Легато'),
(2, 'Хамерон'),
(3, 'Пулофф'),
(4, 'Акустика'),
(5, 'Электрогитара'),
(6, 'Гитара'),
(7, 'Флажолет'),
(8, 'Подтяжка');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `isAdmin` int(1) DEFAULT 0,
  `photo` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `isAdmin`, `photo`) VALUES
(1, 'admin', 'a@a.com', 'admin', 1, NULL),
(2, 'Jimmy', 'j@j.com', '1234', 0, NULL),
(3, 'Егор', 'egor@e.ua', 'egor', 0, NULL),
(4, 'Johny', 'johny@j.com', 'johny', 0, NULL),
(5, 'Eddie', 'e@e.com', 'eddie', 0, NULL),
(6, 'John Doe', 'd@d.com', 'doe', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tag_ibfk_1` (`article_id`),
  ADD KEY `article_tag_ibfk_2` (`tag_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_ibfk_1` (`user_id`),
  ADD KEY `comment_ibfk_2` (`article_id`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
