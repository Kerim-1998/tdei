-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 23 2022 г., 06:04
-- Версия сервера: 10.1.38-MariaDB
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
-- База данных: `inventory`
--

-- --------------------------------------------------------

--
-- Структура таблицы `baradas`
--

CREATE TABLE `baradas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tema_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `baradas`
--

INSERT INTO `baradas` (`id`, `tema_tm`, `tema_ru`, `tema_en`, `dusundiris_tm`, `dusundiris_ru`, `dusundiris_en`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'Türkmenistanyň Döwlet energetika instituty', 'ГОСУДАРСТВЕННЫЙ ЭНЕРГЕТИЧЕСКИЙ ИНСТИТУТ ТУРКМЕНИСТАНА', 'The State Energy Institute of Turkmenistan', '<p>Türkmenistanyň Döwlet energetika instituty Mary şäherindäki Ýokary tehniki kollejiň binýadynda Türkmenistanyň ilkinji Prezidentiniň Karary bilen 1997-nji ýylyň 12-nji awgustynda döredildi. Türkmenistanyň Döwlet energetika instituty Türkmenistanyň Energetika ministrliginiň garamagyndaky pudaklaýyn ýokary okuw mekdebidir. Institutda 4 fakultet we 13 kafedra hereket edýär.</p> 							<p>Türkmenistanyň Döwlet energetika institutynyň dünýä ülňülerine laýyk gelýän täze binalar toplumy 2010-njy ýylyň 15-nji fewralynda  Hormatly Prezidentimiz Gurbanguly Berdimuhamedowyň gatnaşmagynda  açylyp,  ulanylmaga berildi. Milli Liderimiziň Berkarar döwletiň bagtyýarlyk döwründe „Döwlet adam üçindir“ diýen baş taglymatynyň miweleriniň biri bolan institut 6 sany binalar toplumyndan ybarat: administratiw-dolandyryş binasy,  okuw binasy, tejribe binasy, sport zalynyň we naharhananyň binasy, hersi  250 orunlyk talyplara niýetlenen 2 sany umumy ýaşaýyş jaýlar binalarydyr. Institutyň okuw we tejribe binalary häzirki zaman  interaktiw-multimedia, kompýuter tehnologiýalary, lingafon otaglary, öňdebaryjy okuw-tehniki enjamlary we abzallary, tehniki serişdeleri bilen üpjün edilendir. Umumy ýaşaýyş jaýlarynda talyplaryň ýaşamaklary, okamaklary we dynç almaklary üçin ähli amatlyklar we şertler döredilendir. Olarda “Galkynyş”, kompýuter, okalga, dynç alyş, gyzlar üçin tikinçilik otaglary ýerleşdirilen. Institutda, şeýle-de, döwrebap Tehniki serişdeler bölümi, kitaphana, ähli binalarda peýdalanmak mümkinçiligi bolan elektron kitaphana, internet otagy, okuw ussahanasy, 300 orunluk dabaralar zaly, „Kuwwat“ çeper höwesjeňler topary, talyplar sport kluby, sport meýdançalary bar.</p> 							 							<p>Institutyň professor-mugallymlary talyplara berilýän ylym-bilimiň  önümçilik bilen berk baglanşygyny saklamak maksady bilen nazary, amaly we tejribe okuwlarynyň mazmunyny çuňlaşdyrmak, baýlaşdyrmak, kämilleşdirmek ugrunda yzygiderli tagalla edýärler, ylmy-barlag işleri alyp barýarlar, okuw kitaplarydyr gollanmalaryny taýýarlaýarlar.  Institutda Türkmenistanyň Demokratik partiýasynyň, Türkmenistanyň Kärdeşler arkalaşyklarynyň, Magtymguly adyndaky Ýaşlar guramasynyň we Zenanlar birleşiginiň ilkinji guramalary  hereket edýär. Türkmenistanyň Döwlet energetika institutynda Türkmenistanyň Energetika  ministrliginiň edara-kärhanalary üçin zerur bolan energetika, senagat, maşyngurluşyk ugurlary boýunça dürli hünärdäki ýokary bilimli inženerler taýýarlanylýar.</p> 							 							<br> <br> 							<p> <b>Türkmenistanyň Döwlet energetika instituty şu aşakdaky daşary ýurt ýokary okuw mekdepleri bilen hyzmatdaşlyk edýär: </b> </p> 							<p>1. Milanyň Politehniki uniwersiteti (<a href=\"https://www.polimi.it\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.polimi.it</a>); </p> 							<p>2. Seul Milli ylym we tehnologiýa uniwersiteti (<a href=\"https://en.seoultech.ac.kr/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.en.seoultech.ac.kr</a>); </p> 							<p>3. Kazanyň Döwlet energetika uniwersiteti (<a href=\"https://kgeu.ru/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.kgeu.ru</a>); </p> 							<p>4. Islam Karimow adyndaky Daşkent döwlet tehniki uniwersiteti (<a href=\"http://tdtu.uz/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.tdtu.uz</a>);  </p> 							<p>5. Brest döwlet tehniki uniwersiteti (<a href=\"http://tk.bstu.by/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.tk.bstu.by</a>); </p> 							<p>6. Insburk şäheriniň Menejment merkezi (<a href=\"https://www.mci.edu/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.mci.edu</a>). </p> 							 		<br> <br>', '<p>Государственный энергетический институт Туркменистана был образован Указом первого Президента Туркменистана от 12 августа 1997 года на базе Высшего технического колледжа города Мары. Государственный энергетический институт Туркменистана является отраслевым высшим учебным заведением и находится в ведении Министерства энергетики Туркменистана.</p> 							<p>  15 февраля 2010 года был обновлен облик института и при участии нашего уважаемого Президента Гурбангулы Бердымухамедова открыт новый комплекс зданий, отвечающий мировым стандартам. Комплекс зданий Государственного энергетического института Туркменистана состоит из следующих основных корпусов: административный корпус, учебный корпус, лабораторный корпус, корпус для спортзала и столовой. Учебные и лабораторные корпуса института оснащены современными интерактивными, мультимедийными, компьютерными технологиями, лингафонными кабинетами, новейшими учебно-техническими оборудованиями. В настоящее время техническое оснащение вуза соответствует мировым стандартам. Созданные в институте условия дают возможность подготовить высококвалифицированных специалистов по различным инженерным направлениям, проводить научные исследования на высоком уровне. Благодаря развитой внутренней инфраструктуре, институт стал максимально комфортным местом для обучения, спортивного и творческого развития студентов. В Государственном энергетическом институте Туркменистана действует «Электронный учебный центр», который был создан с целью улучшения качества научно-образовательной деятельности института на основе Концепции развития системы цифрового образования в Туркменистане. В электронном учебном центре хранятся видео- и аудиозаписи лекционных, практических и лабораторных занятий по всем обучаемым дисциплинам. Информационная база и электронные учебные ресурсы сервера постоянно обогащаются. Комплекс технических средств и программного обеспечения электронного учебного центра предоставляет дополнительные инновационные возможности для усовершенствования образовательно-методического качества занятий. Наш вуз ведет успешное взаимовыгодное сотрудничество с несколькими престижными вузами различных стран Европы и Средней Азии. В рамках сотрудничества наши преподаватели систематически проходят краткосрочные курсы по повышению квалификации, участвуют в научных конференциях и форумах. Важную роль в техническом вузе играет и языковая подготовка студентов. Иноязычная коммуникативная компетенция, наряду с глубокими фундаментальными и инженерными знаниями, является одной из ключевых компетенций при подготовке специалистов. Иноязычная языковая подготовка ведется в лингафонных кабинетах, которые позволяют интенсифицировать процесс обучения иностранных языков, а также активно использовать образовательный потенциал студентов. </p> 							 							<p> С целью всестороннего изучения особенностей возобновляемых источников энергии, а также совершенствования научно-исследовательских работ в этой области, 29 января 2019 года по постановлению Президента Туркменистана Институт солнечной энергии Академии наук был передан в установленном порядке в ведение Государственного энергетического института Туркменистана. В этой связи, в Государственном энергетическом институте Туркменистана был создан научно-производственный центр «Возобновляемые источники энергии», где проводятся научно-исследовательские работы по таким направлениям как технология фотоэлектрических преобразователей; концентрация солнечной энергии и гелиотехника; биоэнергетика и разработка технологий производства биомассы; технология аккумуляции электрической энергии и т.д.   Специалисты научно-производственного центра и профессорско-преподавательский состав Государственного энергетического института Туркменистана вносят свою весомую лепту в реализацию научных проектов института, связанных с возобновляемыми источниками энергии. Так, разрабатываются научные основы использования солнечных фотоэлектрических станций; проекты по использованию солнечной энергии в сельском хозяйстве; ведутся исследовательские работы по оценке ресурсов солнечной энергетики, по созданию проектов биологических комплексов, использующих возобновляемые источники энергии; ведется анализ технических характеристик систем, аккумулирующих электрическую энергию в местных условиях; ведутся работы по изучению особенностей ветряных электростанций и т.д. Подготовка высококвалифицированных специалистов в области возобновляемой энергетики – одна из приоритетных задач Государственного энергетического института Туркменистана. Реализация президентских Программ и Концепций по развитию и совершенствованию электроэнергетической отрасли страны является священным долгом каждого работника этой сферы. </p> 							 							<br> <br> 							<p> <b>Государственный энергетический институт Туркменистана сотрудничает со следующими вузами: </b> </p> 							<p>1. Политехнический университет Милана (<a href=\"https://www.polimi.it\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.polimi.it</a>). </p> 							<p>2. Сеульский национальный университет науки и техники (<a href=\"https://en.seoultech.ac.kr/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.en.seoultech.ac.kr</a>). </p> 							<p>3. Казанский государственный энергетический университет (<a href=\"https://kgeu.ru/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.kgeu.ru</a>). </p> 							<p>4. Ташкентский государственный технический университет имени Ислама Каримова (<a href=\"http://tdtu.uz/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.tdtu.uz</a>).  </p> 							<p>5. Брестский государственный технический университет (<a href=\"http://bstu.by/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.bstu.by</a>). </p> 							<p>6. Центр менеджмента г. Инсбрука (<a href=\"https://www.mci.edu/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.mci.edu</a>). </p> <br> <br>', '<p>The State Energy Institute of Turkmenistan was established by the Decree the  of  the First President of Turkmenistan in 1997,  August 12,  on the basis of the Higher Technical College in Mary. The State Energy Institute of Turkmenistan is a branch-wise higher educational institution, which is under the supervision of the Ministry of Energy of Turkmenistan. There are 4 faculties and 13 chairs functioning at the institute. </p> 							<p>The new complex of buildings of the State Energy Institute of Turkmenistan meeting world standards was opened in 2010, February 15 with the participation of our Esteemed President Gurbanguly Berdimuhamedov. In the Epoch of Might and Happiness, being one of the fruitful results of the major doctrine of our National Leader  “State-for the people”, the institute consists of  a six-blocked complex: administartive block, academic block, laboratory block, block of sport hall and canteen, 250 placed two hostels intended for the students. Academic and laboratory blocks of the institute are provided with the modern ineractive-multimedia, computer technologies, lingophone rooms, up-to-date academic-technical equipment and devices, technical means. All the favourable conditions and comfort are created in the hostels for the students to live, to study and to rest. There are “Galkynysh” room, computer class, reading hall, recreation room, sewing workshop for the girls. There are also department of “Technical means”, library, electronic library with the opportunity to use in all the buildings, internet class, academic workshop, assembly hall for 300 seats,  an amateur art activities club “Kuvvat”, students’ sport club and sport grounds.  </p> 							 							<p>Professors and teachers of the institute do their best uninterruptedly on deepening, enriching, improving the content of the theoretical, practical, laboratory classes, conducting of the scientific-research works, elaborating of the educational books and manuals with purpose of keeping close connection of the manufacturing with the science and education taught to the students. The Democratic Party of Turkmenistan, the Trade Union of Turkmenistan, Magtymguly Youth Organization of Turkmenistan and Women’s Association work at the institute. The State Energy Institute of Turkmenistan trains highly-educated specialists of various fields necessary for the enterprises and associations of the energy, industry,  machine building sectors of the Ministry of Energy of Turkmenistan.</p> 							 							<br> <br> 							<p> <b>The State Energy Institute of Turkmenistan cooperates with the following higher education institutions:</b> </p> 							<p>1. Polytechnic University of Milan (<a href=\"https://www.polimi.it\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.polimi.it</a>); </p> 							<p>2. Seoul national university of science and technology (<a href=\"https://en.seoultech.ac.kr/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.en.seoultech.ac.kr</a>); </p> 							<p>3. Kazan State Power Engineering University (<a href=\"https://kgeu.ru/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.kgeu.ru</a>); </p> 							<p>4. Tashkent state technical university named after Islam Karimov (<a href=\"http://tdtu.uz/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.tdtu.uz</a>);  </p> 							<p>5. Brest State Technical University (<a href=\"http://en.bstu.by/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.en.bstu.by</a>); </p> 							<p>6. Management Center Innsbruck (<a href=\"https://www.mci.edu/\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>www.mci.edu</a>). </p><br> <br>', 'backend/barada/1646626068.jpeg', '2022-03-07 12:07:49', '2022-03-07 12:07:49');

-- --------------------------------------------------------

--
-- Структура таблицы `baslesiks`
--

CREATE TABLE `baslesiks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `yyl_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `baslesiks`
--

INSERT INTO `baslesiks` (`id`, `at_tm`, `at_ru`, `at_en`, `dusundiris_tm`, `dusundiris_ru`, `dusundiris_en`, `yyl_id`, `created_at`, `updated_at`) VALUES
(1, 'sad', 'asdas', 'dasd', 'asdas', 'dasd', 'asdasd', '3', '2022-03-14 13:14:51', '2022-03-14 13:14:51'),
(2, 'asd', 'asdas', 'dasd', 'asdasd', 'asdas', 'dasd', '4', '2022-03-14 13:14:58', '2022-03-14 13:14:58'),
(3, 'asdas', 'dasd', 'asdasd', 'sadasdas', 'dasd', 'asdasdas', '5', '2022-03-14 13:15:04', '2022-03-14 13:15:04'),
(4, 'asdsa', 'dsad', 'asd', 'asdasd', 'sad', 'asd', '3', '2022-03-14 13:15:09', '2022-03-14 13:15:09');

-- --------------------------------------------------------

--
-- Структура таблицы `carousels`
--

CREATE TABLE `carousels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `h1texttm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h1textru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h1texten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spantexttm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spantextru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spantexten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `carousels`
--

INSERT INTO `carousels` (`id`, `h1texttm`, `h1textru`, `h1texten`, `spantexttm`, `spantextru`, `spantexten`, `photo`, `nid`, `created_at`, `updated_at`) VALUES
(2, 'dsfg', 'dfgd', 'dfgd', 'dsgt', 'ygdf', 'fgdfg', 'backend/carousel/1643345593.jpeg', NULL, '2022-01-27 23:51:48', '2022-01-27 23:51:48'),
(3, 'sfsdf', 'fsdf', 'sdf', 'sdfsd', 'sdfsdf', 'sdfsdfsdf', 'backend/carousel/1645766832.jpeg', NULL, '2022-02-25 13:27:13', '2022-02-25 13:27:13');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eders`
--

CREATE TABLE `eders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ders_at_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_at_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_at_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mug_at_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mug_at_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mug_at_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `eders`
--

INSERT INTO `eders` (`id`, `ders_at_tm`, `ders_at_ru`, `ders_at_en`, `mug_at_tm`, `mug_at_ru`, `mug_at_en`, `created_at`, `updated_at`) VALUES
(2, '1. Ders: Gözegçilik-ölçeg serişdeleri:', '1. Курс: Контрольно-измерительные приборы', '1. Course: Control-measurement devices:', 'Ders mugallymy: Baýram Jumaýew, bayram.jumayev@sanly.tm', 'Преподаватель курса: Байрам Джумаев, bayram.jumayev@sanly.tm', 'Course lecturer: Bayram Jumayev, bayram.jumayev@sanly.tm', '2022-03-09 13:29:48', '2022-03-09 13:29:48');

-- --------------------------------------------------------

--
-- Структура таблицы `edusundiris`
--

CREATE TABLE `edusundiris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dusundiris_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `edusundiris`
--

INSERT INTO `edusundiris` (`id`, `dusundiris_tm`, `dusundiris_ru`, `dusundiris_en`, `created_at`, `updated_at`) VALUES
(5, '<p>  <b>Iş toparynyň esasy maksatlary:</b></p>\n							\n							<p>•	Okuw prosesinde infokommunikasion tehnologiýalaryň esasynda innowasion bilim beriş tehnologiýalary we didaktiki modelleri ornaşdyrmak we netijeli durmuşa geçirmek arkaly hyzmatdaş ýurtlaryň bilim ulgamlaryny sanly nesle girizmek; </p>\n							<p>•	Ýewropa Bileleşiginiň we hyzmatdaş ýurtlaryň ýokary okuw mekdepleriniň arasyndaky aragatnaşygy berkitmek bilen, bilimiň we okuwyň halkara derejesini we hünär taýýarlygyny ýokarlandyrmak, maglumat-bilim tehnologiýalary we sanly pedagogika ugurlarynda tejribe alyşmak hem-de öňdebaryjy çözgütleri ornaşdyrmak. </p>\n							\n							\n							<p><b>Taslamanyň anyk maksatlary:</b></p>\n						    <p>1.	2019-njy ýylyň awgustyna çenli maglumat-bilim tehnologiýalary we didaktiki modeller boýunça tejribe alyşmak we öňdebaryjy çözgütleri ornaşdyrmak üçin akademiki ulgamda durnukly tory işläp düzmek. Ilki bilen taslama gatnaşýan hyzmatdaş ýurtlaryň ýokary okuw mekdeplerinde tor ornaşdyrylar, emma soňky basgançaklarynda ol hyzmatdaş ýurtlaryň beýleki ýokary okuw mekdeplerine hem açyk bolar. Ol, taslamanyň resmi taýdan gutaranyndan soň hem işlemegini dowam eder, taslamanyň netijeliligini we durnuklulygyny ýokarlandyrmaga itergi berer. </p>\n           					<p>2.	Hyzmatdaş ýurtlaryň her biriniň aýratyn şertlerini nazara alyp, 2019-njy ýylyň dekabr aýyna çenli bilim ulgamyny sanly nesle uýgunlaşdyrmak maksatnamalaryny işläp düzmek. Bilim ulgamyny sanly nesle uýgunlaşdyrmagyň maksatnamasynyň maksady okuw prosesine maglumat-bilim tehnologiýalaryny we didaktiki modelleri girizmek bolup, ol herkime islendik wagt, islendik ýerde, islendik enjamyň – kompýuter, noutbuk, planşet, smartfon we beýlekileriň üsti bilen okamaga mümkinçilik berer.</p>\n							<p>3.	Maglumat-bilim tehnologiýalary üçin merkezleri, 2019-njy ýylyň noýabr aýyna çenli hyzmatdaş ýurtlaryň hemme ýokary okuw mekdeplerinde işjeň okuw otaglaryny, wirtual auditoriýalary döretmek. </p>\n							<p>4.	2020-nji ýylyň sentýabr aýyna çenli tälimçiler we mugallymlar üçin sanly başarnyklary okatmagyň we öwretmegiň innowasion usullaryny öwrenmekde okuwlary guramak.</p>\n							<p>5.	2021-nji ýylyň awgust aýyna çenli bilim gorlarynyň we sanly bilim beriş çeşmeleriniň wirtual bulut kitaphanasynyň açylmagyny işläp düzmek.</p>\n							<p>6.	Hyzmatdaş ýurtlaryň bilim edaralarynda we bütinleýin jemgyýetde bilim ulgamynyň sanly nesle uýgunlaşmagynyň wajyplygynyň habarlylygyny ýokarlandymak. </p>', '<p>  <b>Основными целями консорциума являются:</b></p>\n							<p>•	адаптация системы образования СП к цифровому поколению путем внедрения в учебный процесс и эффективной реализации инновационных образовательных технологий и дидактических моделей на базе ИКТ;</p>\n							<p>•	расширение международного измерения образования и профессиональной подготовки путем укрепления связей между вузами ЕС и СП, обмена опытом и передовой практикой в области цифровой педагогики и ИОТ.</p>\n							<p><b>Конкретные цели проекта: </b></p>\n						    <p>1.	разработать устойчивую академическую сеть для обмена опытом и передовым опытом в области ИОТ и дидактических моделей к августу 2019 года. Первоначально сеть будет состоять из вузов СП участвующих в проекте, но на более позднем этапе она будет открыта для других вузов СП. Она будет продолжать функционировать после официального завершения проекта, способствуя тем самым повышению результативности и устойчивости проекта.</p>\n           					<p>2.	разработать концепции адаптации системы образования к цифровому поколению к декабрю 2019 года с учетом конкретных условий каждой из СП. Целью концепций является адаптация образовательной системы к цифровому поколению путем внедрения в образовательный процесс ИОТ и дидактических моделей, что дает возможность КАЖДОМУ учиться в ЛЮБОЕ время и в ЛЮБОМ месте с помощью ЛЮБОГО преподавателя, используя ЛЮБОЕ устройство - компьютер, ноутбук, планшет, смартфон и др.</p>\n							<p>3.	создать Центры для ИОТ, классы активного обучения, виртуальные аудитории во всех вузах СП к ноябрю 2019 года. </p>\n							<p>4.	организация курсов для тренеров и преподавателей по приобретению цифровых навыков и инновационных методов преподавания и обучения к сентябрю 2020 года.</p>\n							<p>5.	разработать открытые образовательные ресурсы и облачную виртуальную библиотеку цифровых образовательных ресурсов к августу 2021 года.</p>\n							<p>6.	повышение осведомленности о необходимости адаптации системы образования к цифровому поколению в образовательных учреждениях СП и в обществе в целом. </p>', '<p><b>Specific project objectives are to: </b></p>\n				<p>1.	Develop a Sustainable academic network for sharing experience and exchange of good practices in the field of IET and didactic models by August 2019. The network will initially comprise of project PC universities, but it will be open for other HEIs in the PCs to join at a later stage. It will continue functioning after the official project end, thus contributing to project impact and sustainability improvement.</p>\n           		<p>2.	Develop Concepts of adapting the education system to the digital generation by December 2019 by taking into consideration the specific conditions of each of the PCs. The goal of the Concepts is to adapt the educational system to the digital generation by introducing and implementing effectively IET and didactic models in the education process, thus providing an opportunity for EVERYBODY to learn at ANY time and at ANY place with the help of ANY lecturer using ANY end device – computer, laptop, tablet, smart phone, etc.</p>\n				<p>3.	Create IET Centres, active learning classrooms, virtual classrooms in all PC HEIs by November 2019. </p>\n				<p>4.	Organize courses for trainers and lecturers for the acquisition of digital skills and innovative teaching and learning methods by September 2020.</p>\n				<p>5.	Develop OERs and a Cloud-based virtual library of the digital educational resources by August 2021.</p>\n				<p>6.	Raise awareness of the need to adapt the education system to the digital generation in the PCs institutions and in society at large. </p>', '2022-03-09 13:28:08', '2022-03-09 13:28:08');

-- --------------------------------------------------------

--
-- Структура таблицы `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `extra`
--

CREATE TABLE `extra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` int(11) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ugur_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `file`, `file_at_tm`, `file_at_ru`, `file_at_en`, `ugur_id`, `created_at`, `updated_at`) VALUES
(6, 'backend/file/1646645369.doc', '• Maglumat howpsuzlygynyň menejmenti.', '• Менеджмент информационной безопасности', '• Managament of information security.', '3', '2022-03-07 17:29:29', '2022-03-07 17:29:29'),
(7, 'backend/file/1646645448.doc', '• Infokommunikasion tehnologiýalar we aragatnaşyk ulgamlary.', '•	Инфокоммуникационные технологии и системы связи', '• Infocommunication technologies and communication systems.', '3', '2022-03-07 17:30:48', '2022-03-07 17:30:48'),
(8, 'backend/file/1646645514.doc', '• Elektroenergetika we elektrotehnika.', '•	Электроэнергетика и электротехника', '• Electroenergy and electrotechnology.', '3', '2022-03-07 17:31:54', '2022-03-07 17:31:54'),
(9, 'backend/file/1646645624.doc', '• Awtomatika we tehniki ulgamlarda dolandyryş.', '•	Автоматика и управление в технических системах', '•	Automation and management at the technical systems.', '4', '2022-03-07 17:33:44', '2022-03-07 17:33:44'),
(10, 'backend/file/1646645731.doc', '• Awtomatlaşdyrylan ulgamlaryň maglumat howpsuzlygynyň toplumlaýyn  üpjünçiligi.', '•	Комплексное обеспечение информационной безопасности автоматизированных систем', '• Complex supply of the information security of the automated systems.', '5', '2022-03-07 17:35:31', '2022-03-07 17:35:31'),
(11, 'backend/file/1646645827.doc', '• Mikroelektronika we ýarymgeçirijili enjamlar.', '•	Микроэлектроника и полупроводниковые приборы', '•	Microelectronics and semiconductor devices.', '6', '2022-03-07 17:37:07', '2022-03-07 17:37:07'),
(12, 'backend/file/1646645872.doc', '• Senagat elektronikasy;', '•	Промышленная электроника', '•	Industrial electronics;', '6', '2022-03-07 17:37:52', '2022-03-07 17:37:52'),
(13, 'backend/file/1646645962.docx', '• Buhgalterçilik hasaba alnyşy we audit (energetika pudagynda).', '•	Бухгалтерский учёт и аудит (в энергетической отрасли)', '• Accounting and audit (at the energy sector).', '7', '2022-03-07 17:39:22', '2022-03-07 17:39:22'),
(14, 'backend/file/1646645996.doc', '• Ykdysadyýet we dolandyryş (energetika pudagynda);', '•	Экономика и управление (в энергетической отрасли)', '• Economy and management (at the energy sector);', '7', '2022-03-07 17:39:56', '2022-03-07 17:39:56'),
(15, 'backend/file/1646647103.docx', '• Tehnologiki maşynlar we enjamlar.', '•	Технологические машины и оборудования', '•	Technological machines and equipment.', '8', '2022-03-07 17:58:23', '2022-03-07 17:58:23'),
(16, 'backend/file/1646647143.docx', '• Elektrik we elektromehaniki enjamlaryň tehniki ulanylyşy, hyzmat edilişi we  abatlanylyşy;', '•	Техническая эксплуатация, обслуживание и ремонт электрического и электроме- ханического оборудования', '•	Technical maintenance, repair and servicing of the electric and  electromechanical equipment;', '8', '2022-03-07 17:59:03', '2022-03-07 17:59:03'),
(17, 'backend/file/1646647177.docx', '• Metallary işläp bejermegiň tehnologiýasy we maşynlary;', '•	Машины и технология обработки металлов', '•	Metal processing technology and machines;', '8', '2022-03-07 17:59:37', '2022-03-07 17:59:37'),
(18, 'backend/file/1646647268.doc', '• Ýylylyk elektrik stansiýalarynda suwuň we ýangyjyň tehnologiýasy.', '•	Технология приготовления воды и топлива на тепловых электрических  станциях', '•	Water and fuel production technology at the thermal electric power stations.', '9', '2022-03-07 18:01:08', '2022-03-07 18:01:08'),
(19, 'backend/file/1646647304.doc', '• Elektrik we ýylylyk energiýasyny öndürmegiň tehnologiýasy;', '•	Технология производства электрической и тепловой энергии', '•	Technology of the electric and heat energy generation;', '9', '2022-03-07 18:01:44', '2022-03-07 18:01:44'),
(20, 'backend/file/1646647341.doc', '• Adaty däl we gaýtadan dikeldilýän energiýa çeşmeleri;', '•	Нетрадиционные и возобновляемые источники энергии', '•	Unconventional and renewable energy sources;', '9', '2022-03-07 18:02:21', '2022-03-07 18:02:21'),
(21, 'backend/file/1646647373.doc', '• Gazturbina desgalary we dwigatelleri;', '•	Газотурбинные установки и двигатели', '•	Gas-turbine units and engines;', '9', '2022-03-07 18:02:53', '2022-03-07 18:02:53'),
(22, 'backend/file/1646647406.doc', '• Elektrik üpjünçiligi;', '•	Электроснабжение', '•	Electric power supply;', '9', '2022-03-07 18:03:26', '2022-03-07 18:03:26'),
(23, 'backend/file/1646647444.doc', '• Elektroenergetiki ulgamlaryň rele goragy we awtomatikasy;', '•	Релейная защита и автоматизация электроэнергетических систем', '•	Relay protection and automation of the electric energy systems;', '9', '2022-03-07 18:04:04', '2022-03-07 18:04:04'),
(24, 'backend/file/1646647483.doc', '• Senagat desgalarynyň we tehnologik toplumlaryň elektrohereketlendirilişi  hem-de awtomatikasy;', '•	Электропривод и автоматика промышленных установок и технологических комплексов', '•	Electric drive and automation of the industrial structures and  technological complexes;', '9', '2022-03-07 18:04:43', '2022-03-07 18:04:43'),
(25, 'backend/file/1646647519.doc', '• Ýylylyk elektrik stansiýalary;', '•	Тепловые электрические станции', '•	Thermal electric power stations;', '9', '2022-03-07 18:05:19', '2022-03-07 18:05:19'),
(26, 'backend/file/1646647548.doc', '• Elektroenergetiki ulgamlar we torlar;', '•	Электроэнергетические системы и сети', '•	Electric energy systems and networks;', '9', '2022-03-07 18:05:48', '2022-03-07 18:05:48');

-- --------------------------------------------------------

--
-- Структура таблицы `habars`
--

CREATE TABLE `habars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `habars`
--

INSERT INTO `habars` (`id`, `at`, `email`, `tema`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Kerim', 'kgullyewprog@gmail.com', 'Okuw barada', '+99361167930', 'dfgjdfklgjdkf gjdf gjsd gdjfklgjsdf;klgjsdfgj dfgjsdfg sdf gsdfgsd', '2022-03-05 15:01:14', '2022-03-05 15:01:14'),
(3, 'sdfsdf', 'kgullyewprog@gmail.com', 'asdas', '+99361167930', 'fsdfsdgsdgsdfg', '2022-03-05 15:02:35', '2022-03-05 15:02:35'),
(4, 'Pylany', 'dasdasd@gmasd', 'sghfhsdf', '+93348748541', 'asdgsdfgsdfgaregsdfg fghxdf', '2022-03-10 11:50:32', '2022-03-10 11:50:32'),
(5, 'Kerim', 'kgullyewprog@gmail.com', 'Okuw barada', '+99361167930', 'ewrtfetfgdgdfg', '2022-03-10 12:55:34', '2022-03-10 12:55:34');

-- --------------------------------------------------------

--
-- Структура таблицы `hyzmats`
--

CREATE TABLE `hyzmats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hyz_at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hyz_at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hyz_at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hyzmats`
--

INSERT INTO `hyzmats` (`id`, `hyz_at_tm`, `hyz_at_ru`, `hyz_at_en`, `link`, `photo`, `created_at`, `updated_at`) VALUES
(5, '6. Insbruk şäheriniň Menejment merkezi', '6. Центр менеджмента г. Инсбрука', '6. Management Center Innsbruck', 'https://www.mci.edu/', 'backend/hyzmat/1646647778.jpeg', '2022-03-07 18:09:38', '2022-03-07 18:09:38'),
(6, '5. Brest döwlet tehniki uniwersiteti', '5. Брестский государственный технический университет', '5. Brest State Technical University', 'http://tk.bstu.by/', 'backend/hyzmat/1646648209.jpeg', '2022-03-07 18:16:49', '2022-03-07 18:16:49'),
(7, '4. Milanyň Politehniki uniwersiteti', '4. Политехнический университет Милана', '4. Polytechnic University of Milan', 'https://www.polimi.it/', 'backend/hyzmat/1646648247.jpeg', '2022-03-07 18:17:27', '2022-03-07 18:17:27'),
(8, '3. Islam Karimow adyndaky Daşkent döwlet tehniki uniwersiteti', '3. Ташкентский государственный технический университет имени Ислама Каримова', '3. Tashkent state technical university named after Islam Karimov', 'http://tdtu.uz/', 'backend/hyzmat/1646648286.jpeg', '2022-03-07 18:18:06', '2022-03-07 18:18:06'),
(9, '2. Kazanyň Döwlet energetika uniwersiteti', '2. Казанский государственный энергетический университет', '2. Kazan State Power Engineering University', 'https://kgeu.ru/', 'backend/hyzmat/1646648320.jpeg', '2022-03-07 18:18:41', '2022-03-07 18:18:41'),
(10, '1. Seul Milli ylym we tehnologiýa uniwersiteti', '1. Сеульский национальный университет науки и техники', '1. Seoul national university of science and technology', 'https://en.seoultech.ac.kr/', 'backend/hyzmat/1646648352.jpeg', '2022-03-07 18:19:12', '2022-03-07 18:19:12');

-- --------------------------------------------------------

--
-- Структура таблицы `kafwebols`
--

CREATE TABLE `kafwebols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kaf_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaf_at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaf_at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaf_at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gysga_text_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gysga_text_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gysga_text_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bol_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `kafwebols`
--

INSERT INTO `kafwebols` (`id`, `kaf_photo`, `kaf_at_tm`, `kaf_at_ru`, `kaf_at_en`, `gysga_text_tm`, `gysga_text_ru`, `gysga_text_en`, `dusundiris_tm`, `dusundiris_ru`, `dusundiris_en`, `bol_photo`, `created_at`, `updated_at`) VALUES
(5, 'backend/kafwebol/1646629665.jpeg', '\"Gaýtadan dikeldilýän energiýa çeşmeleri\" ylmy-önümçilik merkezi', 'Научно-производственном центре “Возобновляемые источники энергии”', 'Scientific and production centre \"Renewable energy sources\"', 'Ylmy-önümçilik merkeziniň bölümlerinde aşakdaky ugurlar boýunça ylmy-barlag işleri alnyp barylýar:', 'В структуру научно-производственного центра входят следующие лаборатории:', 'The structure of the scientific and production centre includes following laboratories:', '<p><b>Ylmy-önümçilik merkeziniň düzümine aşakdaky bölümler girýär:</b></p>                          <p>- Fotoelektrik özgerdijiler tehnologiýasy bölümi (PV);</p> 			<p>- Gün energiýasyny konsentrirlemek (CSP) we geliotehnika bölümi;</p> 			<p>- Bioenergetika we biomassany işlemek bölümi;</p> 			<p>- Ýel elektrik stansiýalary bölümi;</p> 			<p>- Elektrik energiýasyny akkumulirlemegiň tehnologiýasy bölümi;</p> 			<p>- Taslama bölümi.</p> 		<br> 		<p><b>Ylmy-önümçilik merkeziniň bölümlerinde aşakdaky ugurlar boýunça ylmy-barlag işleri alnyp barylýar:</b></p> 			 			<p><b>- Fotoelektrik özgerdijiler tehnologiýasy bölüminde:</b>Türkmenistanyň çäginde gün energetiki gurluşlary ornaşdyrmagyň ýerlerini saýlap almak, gün kadastryny işläp taýýarlamak we gün energetiki resurslaryna baha bermek boýunça teklipleri hödürlemek; synag (PV) fotoelektrik gün stansiýalaryny ýurdumyzyň welaýatlarynda ulanmaklygyň ylmy esaslaryny işläp taýýarlamak we bu babatda teklipleri hödürlemek.</p> 			 			<p><b>- Gün energiýasyny konsentrirlemek we geliotehnika bölüminde:</b> ykdysadyýetiň pudaklarynda, şeýle hem, jemgyýetçilik ýaşaýşyň gurşawlarynda peýdalanmak üçin, howa we suw geliogyzdyryjylaryň taslamalaryny işläp taýýaralamak; oba hojalyk önümlerini guratmak üçin gün energiýasyny peýdalanmagyň taslamalaryny taýýarlamak; Türkmenistanda (CSP) gün ýylylyk elektrik stansiýalaryny ulanmaklygyň ylmy esaslaryny işläp taýýarlamak; ýyladyş we gyzgyn suw üpjünçilik ulgamlary üçin kadalaşdyrmagyň intellektual ulgamlaryny, gurluşlaryny we enjamlaryny ornaşdyrmak boýunça teklipleri taýýarlamak; ýylylyk ulgamlarynda toplumlaýyn çäreleri amala aşyrmak ýoly bilen, merkezleşdirilen ýylylyk üpjünçilik ulgamlarynyň, şol bir wagtda-da binanyň öz içinde bar bolan ýylylyk sarp ediliş ulgamlarynyň işini amatly usulda kämilleşdirmek. </p> 		 			<p><b>- Bioenergetika we biomassany işläp taýýarlamak bölüminde:</b> innowasion tehnologiýalaryň esasynda galyndysyz özbaşdak işleýän bioenergetik toplumyň taslamasyny düzmek boýunça teklipleri hödürlemek; galyndylary gaýtadan işlemekligiň netijesinde biogaz almaklygyň ylmy esaslaryny öwrenmek; oba hojalygynda sarp edilýän ýylylyk we elektrik energiýasyny tygşytlamagyň esaslaryny öwrenmek, meselem,  guşlaryň bedenleriniň ýylylyk bölüp çykarmalarynyň tebigy aýratynlyklaryny öwrenmek, gün energiýasyny peýdalanýan ýyladyşhanalardan we guş saklanýan jaýlardan ybarat utgaşdyrylan geliodesgasynyň taslamasyny taýýarlamak; biogazy bug gazanlarynda ýangyç hökmünde ulanmak maksady bilen, oba hojalygyndaky we önümçilikdäki galyndylary peýdalanmagyň tehnologiýalaryny işläp taýýarlamak; iri oba hojalyk toplumlarynda ýangyjyň ýerli görnüşlerini peýdalanýan elektrik öndüriji gurluşlary we biogaz desgalaryny ornaşdyrmak boýunça teklipleri taýýarlamak.</p> 		 			<p><b>- Ýel elektrik stansiýalary bölüminde:</b> Türkmenistanyň çäginde ýel energetiki gurluşlary ornaşdyrmagyň ýerlerini saýlap almak; ýel kadastryny işläp taýýarlamak; ýel energetiki resurslaryna baha bermek boýunça teklipleri hödürlemek; ýel elektrik stansiýalaryň tehniki-ulanyş häsiýetnamalaryny ýerli şertlerde öwrenmek.</p> 			 			<p><b>- Elektrik energiýasyny akkumulirlemegiň tehnologiýasy bölüminde:</b> Elektrik energiýasyny akkumulirleýän ulgamlaryň ýerli şertlerde tehniki-ulanyş häsiýetnamalaryny derňemek; elektrik energiýasyny akkumulirlemekde täze tehnologiýalary ulanmaklygyň ylmy esaslaryny işläp düzmek; ýylylyk energiýasyny akkumulirläp, munuň esasynda elektrik energiýasyny almagyň mümkinçiliklerini we tehnologiýasyny derňemek.</p> 			 			<p><b>-	Taslama bölüminde: </b> Türkmenistanda hereket edýän gaz turbinaly elektrik stansiýalaryň ýanynda uly kuwwatlylyga eýe fotoelektrik gün stansiýalaryny gurnamak boýunça taslamalary işläp düzmek; merkezi elektrik üpjünçilik ulgamyndan uzakda ýerleşýän ilatly obalary kiçi kuwwatlylyga eýe fotoelektrik gün stansiýalaryň hasabyna üpjün etmeklik boýunça taslamalary taýýarlamak we bu stansiýalaryň biznes-planlaryny işläp düzmek.</p>', '<p><b>В структуру научно-производственного центра входят следующие лаборатории:</b></p>                          <p>- Технология фотоэлектрического преобразования (PV);</p> 			<p>- Концентрирование солнечной энергии (CSP) и гелиотехника;</p> 			<p>- Биоэнергетика и переработка биомассы;</p> 			<p>- Ветряные электрические станции; </p> 			<p>- Технология аккумулирования электрической энергии;</p> 	<p>- Проектный отдел.</p> 		<br> <p><b>В научно-производственном центре проводится научно-исследовательская работа по следующим направлениям:</b></p> 			 			<p><b>- В лаборатории технологии фотоэлектрического преобразования (PV):  </b> подготовка рекомендаций по выбору места расположения солнечных энергетических установок в Туркменистане; разработка солнечного кадастра; оценка энергетических ресурсов солнечной энергетики; разработка научных основ использования экспериментальных фотоэлектрических солнечных станций в велаятах Туркменистана и подготовка рекомендаций по их внедрению.</p> 			 			<p><b>- В лаборатории концентрировании солнечной энергии (CSP) и гелиотехники: </b> разработка проектов воздушных и водных гелионагревателей для использования в различных отраслях экономики; разработка проектов солнечных установок для сушки сельскохозяйственных продуктов; разработка научных основ по использованию солнечных тепловых станций (CSP) на территории Туркменистана; разработка научных основ по использованию солнечных коллекторов в системах горячего водоснабжения и теплоснабжения.</p> 		 			<p><b>- В лаборатории биоэнергетики и переработки биомассы:  </b> разработка проекта безотходного биоэнергетического комплекса с использованием инновационных технологий; разработка технологии переработки отходов для использования биогаза в паротурбинных установках; разработка рекомендаций по внедрению биогазовых установок в различных отраслях экономики.</p> 		 			<p><b>- В лаборатории ветряных электрических станций:</b> подготовка рекомендаций по выбору места для внедрения ветряных электрических станций в Туркменистане и разработка ветрового кадастра; оценка энергетических ресурсов ветроэнергетики; разработка научных основ для использования экспериментальных ветряных электрических станций в велаятах Туркменистана и подготовка рекомендаций по их внедрению.</p> 			 			<p><b>- В лаборатории технологии аккумулирования электрической энергии: </b>исследование технико-эксплуатационных характеристик систем аккумулирования электрической энергии в условиях Туркменистана; разработка научных основ новых технологий аккумулирования электрической энергии; исследование процессов получения электрической энергии от аккумулированной тепловой энергии.</p> 			 			<p><b>- В проектном отделе: </b> разработка проектов комбинированной системы фотоэлектрических и газотурбинных станций большой мощности; разработка проектов по обеспечению заселенных пунктов, находящихся вдали от центральной системы электроснабжения, электрической энергией за счет солнечных фотоэлектрических станций. </p>', '<p><b>The structure of the scientific and production centre includes following laboratories:</b></p>                          <p>- Technology of photoelectric conversions (PV);</p> 			<p>- Concentrated solar power (CSP) and solar technology;</p> 			<p>- Bio-energetics and biomass processing;</p> 			<p>- Wind power plants;</p> 			<p>- Technology of accumulation of electric energy;</p> 			<p>- Design department.</p> 			<br> 	<p><b>In the scientific and production centre research work is performed in following directions:</b></p> 			 			<p><b>- In laboratory of photoelectric conversion technology (PV):</b> preparation of proposal for choice of places for setting solar power installations in Turkmenistan; working out solar cadastre, evaluation of power resources of solar power; working out of scientific bases for use of experimental photoelectric solar stations in regions of Turkmenistan and preparation of proposal for their installation.</p> 			 			<p><b>-	In laboratory of concentrated solar power (CSP) and solar technology: </b> working out of projects of air and water solar heaters for various branches of economy; working out of projects of solar installations for drying of agricultural products; Working out of scientific bases on use of solar thermal stations (CSP) in the territory of Turkmenistan; working out of scientific bases on use of solar collectors in hot water and heat supply systems.</p> 		 			<p><b>-	In laboratory of bio-energetics and biomass processing:</b> working out of non-waste bioenergy complex project with the use of innovative technologies; working out of waste processing technology for biogas usage in steam turbine installations; working out of the proposal for introduction of biogas installations in various branches of economy.</p> 		 			<p><b>-	In laboratory of wind power plants: </b> Preparation of proposal for choice places for introduction of wind power plants in Turkmenistan and working out of a wind cadastre, evaluation of power resources of wind power; Working out of scientific bases for use of experimental wind power plants in regions of Turkmenistan and preparation of proposal for their introduction.</p> 			 			<p><b>-	In laboratory of technology of electric energy accumulation: </b> Research of operating characteristics of accumulation systems of electric energy in the conditions of Turkmenistan; working out of scientific bases of new accumulation technologies of electric energy; Researches of processes of electric energy receiving from accumulated thermal energy.</p> 			 			<p><b>-	In design department: </b> Working out of projects of the combined system of photoelectric and gas-turbine stations of the high capacity. </p>', 'backend/bolum/1646629665.jpeg', '2022-03-07 13:07:45', '2022-03-07 13:07:45'),
(6, 'backend/kafwebol/1646630999.jpeg', 'Bedenterbiýe kafedrasy', 'Кафедра «физкультура»', 'Department of physical training', 'Bedenterbiýe dersini öwretmek bilen talyplaryň watan öňündäki zähmet borjuny ýerine...', 'Благодаря урокам физической культуры проверяется в какой мере готов студент...', 'Due to lesson of the physical culture is checked what measure ready student to do duty...', '<p>Bedenterbiýe dersini öwretmek bilen talyplaryň watan öňündäki zähmet borjuny ýerine ýetirmäge ukyplylygy, onuň adam bedenine berilýän fiziki agramlary götermäge ukyplylygy, çeýeligi, güýji, şeýle hem sportuň dürli  görnüşleri boýunça ýeten derejeleri barlanýar. Talyplar öz saýlan hünärleri boýunça islendik kärhanada sportyň birnäçe görnüşleri boýunça düşünjeleriniň bardygyny we gerek bolsa ýaryşlara türgen hökmünde ýa-da emin hökmünde gatnaşmaga mümkinçilik berer.  Şeýle hem sanly tehnologiýa ulgamynda bedenterbiýe we sporta degişli terminleri we düşünjeleri öwrenerler. Talyplary Bedenterbiýe dersiniň öwrenýän esasy meseleleri bilen giňişleýin tanyşdyrmak we öwrenen bilimlerini durmuşda peýdalanmaklygy başarmak endigini döretmek, bedenterbiýe we sportuň ösüş taryhyndan düşünje bermek, Garaşsyzlyk ýyllarynda Berkarar döwletimiziň bagtyýarlyk zamanasynda milli türkmen sportynyň ösüşiniň aýratynlyklary barada giňişleýin maglumat bermek we öwretmek, talyplaryň saglygyny berkitmek, talyplary saýlap alan hünäri boýunça zähmete we harby gulluga taýýarlamak, talyplara sagdyn ýaşaýyş durmuşuny  ornaşdyrmakda, terbiýeçilik çärelerini geçirmekde bedenterbiýe we sport serişdeleriniň tutýan ornuny düşündirmek we olary gündelik durmuşda ulanmagy öwretmek, amaly sapaklaryň tehnikalary we taktikalary bilen tanyşdyrmak we olary öwrenmek, sanly tehnologiýa ulgamlarynyň sportda we bedenterbiýede tutýan orny barada düşünjeler öwretmek şu kafedranyň esasy maksatlary bolup durýar.</p>', '<p>Благодаря  урокам физической культуры проверяется в какой мере готов студент выполнить долг перед отечеством , готовности выдержать физические нагрузки в работе отраслях народного хозяйства.  Проверяеться выносливость , сила,  а также достижения по видам  спорта . Студенты в какой бы отрасли работали благодаря урокам физкультуры могут участвовать в  соревнованиях по разичным видам спорта или быть судьями по разным видам спорта.</p>   <p>А также студенты будут иметь все понятия по применению цифровых технологий в сфере спорта и физической культуры.  Уроки по физической культуре способствуют  быть хорошо подготовленным к работе по специальности и в то же время быть защитником отечества. Способствует ведению здорового образа жизни . И на конец обучению тактическим и техническим действиям в спорте</p>', '<p>Due to lesson of the physical culture is checked what measure ready student to do duty before fatherland, readiness to bear the physical loads in work branch public facilities. It is checked endurance, power, as well as achievements on sports. The Students in what branches worked due to lesson of the physical culture can participate in competition on different sports or be a court on different sports. </p>   <p>As well as students will have all notions on using digital technology in sphere of the sport and physical culture.  The Lessons on physical culture promote to be well prepared to work on professions and in ditto time to be a protector fatherland. Promotes conduct sound lifestyle. And on end to education tactical and technical action in sport.</p>', 'backend/bolum/1646630999.jpeg', '2022-03-07 13:29:59', '2022-03-07 13:29:59'),
(7, 'backend/kafwebol/1646631429.jpeg', 'Sanly elektronika we elektrotehnika kafedrasy', 'Кафедра «Цифровой электроники и электротехники»', 'Department of Digital Electronics and Electrical Engineering', '“Sanly elektronika we elektrotehnika” kafedrasy institutyň hünär beriji kafedralarynyň biridir. Bu...', 'Кафедра «Цифровой электроники и электротехники» является одной из...', 'The department of Digital Electronics and Electrical Engineering is one of the main...', '<p>“Sanly elektronika we elektrotehnika” kafedrasy institutyň hünär beriji kafedralarynyň biridir. Bu kafedrada Türkmenistanyň energetika hem-de senagat pudaklarynyň kärhanalaryndaky desgalaryň we enjamlaryň dolandyryjy ulgamlarynda peýdalanylýan elektron abzallary we gurluşlary tehniki taýdan dogry ulanmagy üpjün etmek üçin “Senagat elektronikasy” we “Mikroelektronika we ýarymgeçirijili abzallar” hünärleri boýunça hünärmenler taýýarlanylýar.</p>                          <p>Kafedranyň mugallymlary bu hünärler boýunça okaýan talyplara häzirki zaman talaplaryna laýyklykda bilim bermek üçin hünär we ýörite hünär derslerinden sapaklary geçýärler. Bu sapaklarda talyplara elektrotehnikanyň, senagat elektronikasynyň we mikroelektronikanyň abzallarynyň we enjamlarynyň gurluşlary hem-de işleýiş usullary öwredilýär.</p> <p>Taýýarlanylýan hünärmenler önümçilik-tehnologiki, guramaçylyk-dolandyryjy we ylmy-barlag işlerini hem-de elektron gurluşlary talaba laýyk ulanmak arkaly olaryň ygtybarlygyny ýokarlandyrmak we hyzmat ediş möhletini uzaltmak boýunça guramaçylyk çärelerini geçirmegi ýokary okuw mekdebinde alan hünärlerine laýyklykda amala aşyrmak başarnyklaryny alýarlar.</p> 			  			 			 			 <p>Kafedranyň mugallymlary institutyň beýleki hünärlerinde “Elektrotehnikanyň nazary esaslary”, “Elektrotehniki materiallar”, “Senagat elektronikasy”, “Mikroprosessorly dolandyryş ulgamlary” ýaly umumy hünär dersleri boýunça hem sapaklary geçýärler.</p> 			 <p>Hünärmenleri taýýarlamagyň häzirki zaman talaplaryny üpjün etmek üçin kafedra önümçilik kärhanalary bilen ýakyn baglanyşyk saklaýar we önümçilikde ornaşdyrylýan täze enjamlaryň gurluş we işleýiş aýratynlyklary baradaky maglumatlary kafedranyň mugallymlary okuw dersleriň maksatnamalaryna goşmak bilen geçýän sapaklarynda talyplara ýetirýärler. Şeýle-de kafedra önümçilik kärhanalarynyň hünärmenleri bilen maslahatlary we pikir alyşmalary geçirmek arkaly, olarda ýüze çykýan tehniki meseleleri öwrenmek hem-de şeýle meseleleriň tehniki çözgütlerini işläp düzmek üçin ylmy-barlag we derňew işlerini hem alyp barýar.</p> 			<p>Kafedranyň tejribeli mugallymlary özleriniň sapak berýän dersleri boýunça ýokary okuw mekdepleri üçin türkmen dilinde häzirki zaman okuw kitaplaryny hem-de gollanmalaryny taýýarlamaga hem işjeň gatnaşýarlar. </p>', '<p> Кафедра «Цифровой электроники и электротехники» является одной из профилирующих кафедр института. На этой кафедре готовят специалистов по специальностям: “Промышленная электроника” и “Микроэлектроника и полупроводниковые приборы”, которые грамотно будут использовать электронные приборы систем управления оборудований и установок на предприятиях сферы энергетики и промышленности Туркменистана.</p>                          <p>В соответствии с современными требованиями преподаватели кафедры дают фундаментальные знания студентам по соответствующим специальным дисциплинам. На этих занятиях студентов обучают принципам работы различных видов оборудований и устройств электротехники, промышленной электроники и методам их использования на производстве.</p>  <p>Готовящиеся специалисты, используя организационно-управленческую, производственно-технологическую и научно-исследовательскую работу, посредством надлежащего применения электронных устройств, проводя организационные мероприятия по повышению их надежности и срока службы, получают определенные навыки их применения в соответствии своей специальности.        Преподаватели кафедры ведут лекционные и практические занятия и для других специальностей по таким дисциплинам как: «Теоретические основы электротехники», «Электротехнические материалы», «Промышленная электроника», «Микропроцессорные системы управления микропроцессорами». </p> 			 		             <p>В целях подготовки современных высококвалифицированных специалистов, отвечающих современным требованиям, кафедра, поддерживая тесную связь с производственными предприятиями, пополняя учебную программу новейшей информацией, обеспечивает студентов инновационными знаниями о структуре и особенностях работы новейших оборудований, устанавливаемых на производстве.</p>          		<p> Кафедра также путем проведения различных консультаций и обмена мнениями со специалистами производственных предприятий, изучая технические проблемы, которые возникают на практике также проводят научно-методические и научно-исследовательские работы для разработки их решения.   </p>   <p> Опытные преподаватели кафедры принимают активное участие по составлению современных учебников и учебных пособий для высших учебных заведений по своим преподаваемым дисциплинам на туркменском языке. </p>', '<p> The department of Digital Electronics and Electrical Engineering is one of the main departments of the institute. This department trains specialists in the specialties: “Industrial Electronics” and “Microelectronics and Semiconductor Devices”, who will be able to competently use electronic devices of control systems for equipment and installations at enterprises in the energy sector and industry of Turkmenistan. </p>                          <p>In accordance with modern requirements, the teachers of the department impart fundamental knowledge to students in the relevant special disciplines. In these classes, students are taught the principles of operation of various types of equipment and devices of electrical engineering, industrial electronics and methods of their use in manufacture.</p>  <p>Preparing specialists, using organizational, managerial, industrial, technological and scientific research, through the proper use of electronic devices, conducting organizational measures to increase their reliability and service life, gain certain skills in their application in accordance with their specialty. Teachers of the department conduct lectures and practical classes for other specialties in such disciplines as “Theoretical Foundations of Electrical Engineering”, “Electrical Engineering Materials”, “Industrial Electronics”, “Microprocessor Control Systems”.</p> 			 		             <p>In order to prepare highly qualified specialists whose degrees meet modern requirements, the department, maintaining close contact with manufacturing enterprises, replenishing the curriculum with the latest information, provides students with innovative knowledge about the structure and features of the latest equipment installed in manufacture.</p>             		   <p>Moreover, the department faculty members conduct scientific, methodological and research work to develop their solutions, through various consultations and exchange of views with specialists of manufacturing enterprises, studying the technical problems that arise in practice.</p> 		    		   <p>Experienced educators of the department take an active part in compiling modern textbooks and teaching aids for higher educational institutions in the relevant professional disciplines in the Turkmen language.</p>', 'backend/bolum/1646631429.jpeg', '2022-03-07 13:37:09', '2022-03-07 13:37:09'),
(8, 'backend/kafwebol/1646632422.jpeg', 'Diller kafedrasy', 'Кафедра «Языков»', 'Department of Languages', 'Türkmenistanyň Döwlet energetika institutynyň Diller kafedrasynda daşary ýurt dillerinden iňlis, rus, hytaý, pars we nemes dilleri okadylýar...', 'Кафедра «Языков» Государственного энергетического института Туркменистана осуществляет обучение английскому, русскому...', 'The Department of Languages of the State Energy Institute of Turkmenistan provides instruction in English, Russian, Chinese...', '<p>Türkmenistanyň Döwlet energetika institutynyň Diller kafedrasynda daşary ýurt dillerinden iňlis, rus, hytaý, pars we nemes dilleri okadylýar. Kafedranyň işiniň pedagogiki binýady talyplaryň dil sowatlylygyny we hünär sowatlylygyny ösdürmeklige hem-de kämilleşdirmeklige esaslanýar. Bu bolsa talyplara hünäri boýunça daşary ýurt dilini özleşdirmäge we ony öz hünärleri bilen baglanyşykly alyp barýan ylmy we tejribe işlerinde ulanmaklyga badalga berýär. Hünär dilini öwretmeklik ussat hünärmenleri ýetişdirmegiň aýrylmaz bölegi bolup, hünär ugurly häsiýete eýedir. Şonuň üçin hem, tehniki ugurly ýokary okuw mekdebimizde daşary ýurt dillerini öwretmegiň baş maksady talyplary öz hünärleri bilen baglanyşykly alyp barýan işlerinde daşary ýurt dillerinden peýdalanyp bilmeklige taýýarlamakdan ybaratdyr.</p>                          <p>Kafedranyň professor-mugallymlarynyň düzümine hünär derejeleri ýokary, usulyýet babatynda, şeýle hem, terjimeçilik we mugallymçylyk işinde baý tejribä eýe ussat hünärmenler girýär. Olaryň içinde ýurdumyzyň naýbaşy ýokary okuw mekdeplerini tamamlan, galyberse-de daşary ýurtda bilim alyp gelen mugallymlar hem bar. Kafedranyň durmuşa geçirýän okuw meýilnamalary daşary ýurt dillerini öz hünärleri bilen bagly alýan bilimleriniň “gaznasyny” yzygiderli baýlaşdyrmagyň serişdesi hökmünde görüp, şol özleşdiren dillerinden dogry peýdalanyp biljek ýokary derejeli hünärmenleri taýýarlamaklygy üpjün eder. Tehniki ugurly ýokary okuw mekdeplerde daşary ýurt dilleriniň hünär ugurly öwredilmekligi şol dilleriň talyplara geçilýän esasy dersleri bilen ýakyn arabaglanyşykly bolmagyny talap edýär. Şeýle ýagdaýda, hünär ugurly bolan daşary ýurt dillerini öwrenmeklik talyplara diňe bir şol dilde gepleşip bilmeklige däl-de, eýsem, sanly tehnologiýalaryň rowaç alýan döwründe maglumat giňişliginde baş alyp çykmaga hem mümkinçilik döredýär.</p> <p>Hünäri boýunça daşary ýurt dillerini öwrenmek bilen talyplar daşary ýurt dilinde ýazylan ylmy we tehniki tekstlere seljerme bermegi we terjime etmegi başararlar, galyberse-de, hünär diliniň aýratynlyklaryny, leksiki we grammatiki serişdelerini, sözleýiş stilini we ş.m. özleşdirerler.</p> 			 <p>Diller kafedrasy Hormatly Prezidentimiziň taýsyz tagallasy bilen kabul edilen Döwlet Maksatnamalaryny, ylaýta-da, 2017-nji ýylyň dekabr aýynyň 22-ne kabul edilen “Daşary ýurt dillerini okatmagy kämilleşdirmegiň Konsepsiýasyny” durmuşa geçirmekde öz mynasyp goşandyny goşýar. Has takygy, kafedranyň mugallymlary ylmy-amaly, ylmy-usuly maslahatlar geçirýärler, hünär dilini öwretmegiň nazaryýeti bilen baglanyşykly, şeýle hem, daşary ýurt dillerini öwretmegiň täzeçil usullaryna degişli ylmy dokladlar bilen çykyş edýärler. </p> 			<p>Hormatly Prezidentimiz daşary ýurtlar bilen netijeli hyzmatdaşlygy ýola goýmaklygy ösüşlerimiziň wajyp şerti hökmünde kesgitleýär. Türkmenistan döwletimizde ähli pudaklar boýunça, şol sanda energetika pudagy boýunça ýola goýulýan halkara hyzmatdaşlygyň giň gerim almagy, elbetde, hünär derejesi ýokary, daşary ýurt dillerini suwara bilýän hünärmenleriň ýetişdirilmegini talap edýär. Şonuň üçin, ýurdumyzyň tehniki ugurly ýokary okuw mekdepleriniň biri bolan Türkmenistanyň Döwlet energetika institutynda geljekki hünärmenleri medeniýetara gatnaşyklara we döwletara hyzmatdaşlyga  ýetişdirmeklik aýratyn ähmiýete eýedir.</p>', '<p>Кафедра Языков Государственного энергетического института Туркменистана осуществляет обучение английскому, русскому, китайскому, персидскому и немецкому языкам. Основной педагогической деятельностью кафедры являются развитие и совершенствование языковой и профессиональной компетенций студентов, которые позволят им пользоваться языками по специальности в различных областях профессиональной и самообразовательной деятельности, научной и практической работе. Обучение языкам по специальности представляет собой неотъемлемый компонент подготовки специалистов и носит профессионально-ориентированный характер. Следовательно, основной целью обучения языкам в техническом вузе является подготовка студентов к использованию иностранного языка в профессиональной деятельности.</p>                          <p>К числу профессорско-преподавательского состава кафедры относятся высококвалифицированные специалисты, имеющие практический опыт как в профессиональной переводческой, так и в педагогической деятельности. Многие из них являются выпускниками ведущих вузов нашей страны и зарубежных стран. Образовательные программы, реализуемые кафедрой, обеспечивают высокий уровень подготовки специалистов, способных использовать иностранный язык как средство систематического пополнения своих профессиональных знаний. Профессионально направленное обучение иностранному языку в техническом вузе требует самого тесного взаимодействия дисциплины «иностранный язык» с профилирующими дисциплинами технического вуза. В этой связи, изучение иностранных языков даст студентам возможность не только общаться на иностранном языке, но и ориентироваться в информационном пространстве в век цифровых технологий. Изучая иностранные языки по специальности, студенты смогут анализировать и переводить научные и технические тексты на иностранном языке, освоят особенности стиля профессиональной речи, лексический и грамматический минимум языка специальности, а также специфические словесные обороты, характерные для письменной и устной профессиональной речи инженеров-энергетиков.</p>   <p>Кафедра Языков вносит весомый вклад в дело реализации президентских Программ и «Концепции совершенствования обучения иностранным языкам в Туркменистане», принятой и утвержденной Президентом Туркменистана Гурбангулы Бердымухамедовым 22 декабря 2017 года. Так, преподаватели кафедры проводят научные конференции, семинары, где обсуждают вопросы, связанные с теорией и практикой языка специальности, выступают с научными докладами, основной темой которых являются инновационные методы обучения иностранным языкам.</p> 			 			 <p>Президент Туркменистана Гурбангулы Бердымухамедов определяет реализацию эффективного сотрудничества с зарубежными странами как необходимое условие развития страны. Следовательно, расширение международных связей Туркменистана во всех отраслях, в том числе и в сфере энергетики, требует подготовки высококвалифицированных специалистов с таким уровнем владения иностранными языками, который позволяет осуществлять непосредственное общение с зарубежными партнерами в профессиональной деятельности. В этой связи, в Государственном энергетическом институте Туркменистана, который является одним из технических вузов нашей страны, большое значение имеет подготовка будущих специалистов к межкультурной коммуникации как гарантия успешного профессионального взаимодействия с иноязычным партнером.</p>', '<p>The Department of Languages of the State Energy Institute of Turkmenistan provides instruction in English, Russian, Chinese, Persian and German languages. The primary pedagogical activity of the department is the development and improvement of the linguistic and professional competencies of students, which will allow them to use languages in their specialties in various fields of professional and self-educational activity, scientific and practical work. Language training in the specialty is an integral component of the training of specialists and is professionally oriented. Therefore, the main purpose of language teaching at a technical higher educational institution is to prepare students for the use of a foreign language in their professional activities.</p>                          <p>The department includes highly qualified specialists with practical experience in both professional translation and teaching. Many of them are graduates of leading universities of our country and foreign countries. Educational programs implemented by the department provide a high level of training for specialists who will be able to use a foreign language as a means of systematic replenishment of their professional knowledge. Professionally directed teaching of a foreign language at a technical university requires the closest interaction of the discipline “foreign language” with the core disciplines of a technical higher educational institution. In this regard, the study of foreign languages will give students the opportunity not only to communicate in a foreign language, but also to navigate the information space in the digital age. Studying foreign languages by specialty, students will be able to analyze and translate scientific and technical texts in a foreign language, master the features of the style of professional speech, the lexical and grammatical basis of the specialty language, as well as the specific verbal turns characteristic to the written and oral professional speech of power engineers.</p>  <p>The Department of Languages makes a significant contribution to the implementation of the Presidential Programs and the Concept for Improving the Teaching of Foreign Languages in Turkmenistan, adopted and approved by the President of Turkmenistan Gurbanguly Berdimuhamedov on December 22, 2017. Thus, the teachers of the department hold scientific conferences, seminars, where they discuss issues related to the theory and practice of the professional language, make scientific reports, the main theme of which are innovative methods of teaching foreign languages.</p> 			  			 			 			 <p>The President of Turkmenistan Gurbanguly Berdimuhamedov defines the implementation of effective cooperation with foreign countries as a necessary condition for the development of the country. Consequently, the expansion of Turkmenistan’s international relations in all sectors, including the energy sector, requires the training of highly qualified specialists with such a level of knowledge of foreign languages that allows direct communication with foreign partners in professional activities. In this regard, in the State Energy Institute of Turkmenistan, which is one of the technical higher educational institutions of our country, the preparation of future specialists for intercultural communication is of great importance as a guarantee of successful professional interaction with a foreign partner.</p>', 'backend/bolum/1646632422.jpeg', '2022-03-07 13:53:43', '2022-03-07 13:53:43'),
(9, 'backend/kafwebol/1646632741.jpeg', 'Maglumat tehnologiýalary kafedrasy', 'Кафедра информационных технологий', 'Department of Information Technology', '“Maglumat tehnologiýalary” kafedrasy institutyň hünär beriji kafedralarynyň biridir. Bu kafedrada Türkmenistanyň energetika we...', 'Кафедра информационных технологий – это одна из профилирующих кафедр Государственного энергетического института Туркменистана...', 'The Department of Information Technology is one of the main departments of the State...', '<p>\"Maglumat tehnologiýalary\" kafedrasy institutyň hünär beriji kafedralarynyň biridir. Bu kafedrada Türkmenistanyň energetika we senagat pudaklarynyň kärhanalary üçin ,,Awtomatlaşdyrylan ulgamlaryň maglumat howpsuzlygynyň toplumlaýyn üpjünçiligi” hünäri boýunça inženerler taýýarlanylýar. Kafedranyň işi jemgyýetçilik ýaşaýşynyň ähli pudaklaryna maglumat tehnologiýalarynyň giňden ornaşdyrylyşy bilen aýrylmaz baglydyr. Şol sebäpli hem, kafedranyň alyp barýan işiniň baş maksady maglumat tehnologiýalary ugry boýunça hünär derejesi ýokary hünärmenleri taýýarlamakdan ybaratdyr. </p> 			 				                         <p>Kafedranyň professor-mugallymlarynyň düzümi talyplara häzirki döwrüň talaplaryna laýyk gelýän çuňňur bilim berýärler. Geljek hünärmenler maglumat tehnologiýalarynyň iň döwrebap görnüşlerinden peýdalanmaklygyň esasynda bilim alýarlar. Sapaklarda talyplar maglumat howpsuzlygynyň esaslaryny, programmirleme diliniň usullaryny, tor arabaglanyşygynda daşky hüjümlerden goranmagyň esaslaryny öwrenýärler, şeýle-de, maglumatlary goramaklygyň tehniki serişdeleri barada giňişleýin düşünje alýarlar.</p> 			 	             <p>Kafedra hünär derejesi ýokary hünärmenleri taýýarlamak maksady bilen önümçilik kärhanalary bilen ýakyn arabaglanyşyk saklaýar. Kafedranyň mugallymlary önümçilige ornaşdyrylýan täze tehnologiýalaryň gurluş we işleýiş aýratynlyklary barada yzygiderli maglumat berýär.</p>   <p>Ylmyň we tehnikanyň soňky gazananlary bilen aýakdaş gitmegi özlerine maksat edinen mugallymlar we talyplar özleriniň ylmy işleri we taslamalary bilen ýaş alymlaryň bäsleşiklerine yzygiderli gatnaşýarlar.</p> 		    		   <p>Kafedrada ýurdyň energetika pudagynyň önümçilik kärhanalrynyň hünärmenleri bilen tejribe alyşmak işleri hem amala aşyrylýar, önümçilikde ýüze çykýan tehniki meseleler hemmetaraplaýyn öwrenilýär we şol meseleleri çözmek maksady bilen ylmy-barlag işleri alnyp barylýar.</p>            		  <p>Şeýlelikde, kafedranyň uçurymlary diňe bir özleriniň giň gerimli hünär taýýarlygy bilen tapawutlanman, eýsem, özleriniň binýatlaýyn çuňňur bilimleri we öwrenen nazary ylymlaryny tejribede ulanyp bilmek başarnyklary bilen, galyberse-de, maglumatlary özbaşdak gözläp tapyp bilmek ukyplary bilen hem tapawutlanýarlar. Bu bolsa olara diňe bir energetika pudagynyň dürli ugurlaryndan däl-de, eýsem onuň çarçuwasynyň daşyna çykýan meselelerden hem baş alyp çykmaklaryny gazandyrýar.</p>', '<p>Кафедра информационных технологий – это одна из профилирующих кафедр Государственного энергетического института Туркменистана. Кафедра осуществляет подготовку инженеров по специальности «Комплексное обеспечение информационной безопасности автоматизированных систем» для предприятий энергетической отрасли страны. Направленность кафедры обусловлена широким внедрением информационных технологий во все сферы человеческой деятельности. Следовательно, основная задача кафедры заключается в подготовке компетентных специалистов в области информационных технологий.</p> 			 				             <p>Профессорско-преподавательский состав кафедры дает студентам глубокие знания, соответствующие современным требованиям. Будущих специалистов по информационным технологиям обучают с применением самых современных информационных технологий. На занятиях студенты изучают основы информационной безопасности, язык программирования, основные технические средства защиты информации, а также основы защиты систем управления компьютерных сетей от вредоносных кибератак и др.</p> 			 	 <p>Кафедра поддерживает тесные связи с производственными предприятиями страны, с целью подготовки высококвалифицированных специалистов. Преподаватели кафедры систематически дают сведения об инновационных технологиях, внедряемых в производство, знакомят с их структурными и функциональными особенностями.</p> 	  	  <p>Преподаватели и студенты, нацеленные идти в ногу с последними достижениями науки и техники, систематически участвуют в конкурсе молодых ученых со своими научными исследованиями и проектами.  </p> <p>На кафедре организовывается обмен опытом со специалистами производственных предприятий энергетической отрасли страны, всесторонне изучаются технические проблемы, возникающие в производстве, ведутся научно-исследовательские работы по решению этих проблем. </p>        <p>Таким образом, выпускников кафедры отличает не только широта профиля подготовки, но и глубокие знания по фундаментальным дисциплинам и умение самостоятельно добывать информацию в любой области знаний, умение применять теоретические знания на практике. Это позволяет легко адаптироваться не только в разных направлениях энергетики, но и за ее пределами. </p>', '<p>The Department of Information Technology is one of the main departments of the State Energy Institute of Turkmenistan. The department provides training for engineers in the specialty ”Complex supply of information security of automated systems” for enterprises in the country’s energy sector. The focus of the department is based on the widespread introduction of information technology in all spheres of human activity. Therefore, the main task of the department is to prepare competent specialists in the field of information technology. </p> 			                          <p>The faculty members of the department impart the students deep knowledge that meets modern requirements. Future information technology specialists are trained using the latest information technology. In the classroom, students learn the basics of information security, programming languages, the main technical means of protecting information, as well as the basics of protecting computer network control systems from malicious cyber attacks, etc.</p> 			 	             <p>The department maintains close ties with the manufacturing enterprises of the country, with the aim of training highly qualified specialists. Teachers of the department systematically provide information on innovative technologies introduced into production; introduce them to their structural and functional features.</p>             		   <p>Teachers and students, aiming to keep up with the latest achievements of science and technology, systematically participate in the competitions of young scientists with their scientific research and projects.</p>  <p>The department organizes an exchange of experience with specialists from manufacturing enterprises in the country’s energy sector, comprehensively studies the technical problems that arise in production, and carries out research work to solve these problems.</p> 		    		   <p>Thus, the graduates of the department are distinguished not only by the breadth of their training profile, but also by deep knowledge of fundamental disciplines and the ability to independently obtain information in any field of knowledge as well as the ability to apply theoretical knowledge in practice. This allows them to adapt not only to different areas of energy, but also beyond.</p>', 'backend/bolum/1646632741.jpeg', '2022-03-07 13:59:01', '2022-03-07 13:59:01'),
(10, 'backend/kafwebol/1646633091.jpeg', 'Tehniki ulgamlaryň awtomatikasy kafedrasy', 'Кафедра автоматики технических систем', 'Department of automation of technical systems', '“Tehniki ulgamlaryň awtomatikasy” kafedrasy institutyň hünär beriji kafedralarynyň biridir. Bu kafedrada Türkmenistanyň energetika we...', 'На кафедре “Автоматики технических систем”, которая являяется одной из специализирован...', 'The department of “Automation of technical systems” is one of the major specialized departments...', '<p> “Tehniki ulgamlaryň awtomatikasy” kafedrasy institutyň hünär beriji kafedralarynyň biridir. Bu kafedrada Türkmenistanyň energetika we senagat pudaklarynyň kärhanalary üçin “Awtomatika we tehniki ulgamlarda dolandyryş” we \"Elektroenergetika ulgamlaryň rele goragy we awtomatikasy\" hünärleri boýunça inženerler taýýarlanylýar.</p>                          <p>Kafedranyň mugallymlary bu hünärler boýunça okaýan talyplara häzirkizaman talaplaryna laýyklykda bilim bermek üçin ýörite hünär derslerinden  sapaklary geçýärler. Bu sapaklarda talyplara senagat elektronikasynyň, awtomatikanyň we awtomatlaşdyrylan ulgamlaryň esaslary öwredilýär. </p>  <p>Kafedra hünärmenleri taýýarlamagyň häzirkizaman talaplaryny üpjün etmek üçin önümçilik kärhanalary bilen ýakyn aragatnaşyk saklaýar. Kafedranyň mugallymlary önümçilikde ornaşdyrylýan täze enjamlaryň gurluş we işleýiş aýratynlyklary baradaky maglumatlary özleriniň okuw sapaklarynda talyplara yzygiderli ýetirýärler.  </p> 			 		             <p>Kafedrada energetika pudagynyň önümçilik kärhanalarynyň hünärmenleri bilen maslahatlary we pikir alyşmalary geçirmek arkaly, önümçilikde ýüze çykýan tehniki meseleler öwrenilýär. Şeýle meseleleriň tehniki çözgütlerini işläp düzmek üçin kafedrada ylmy-barlag we derňew işleri alnyp barylýar. Şeýle-de, elektrik  energiýany aralyga geçirmekde, paýlamakda we ulanmakda ýüze çykýan ýitgileri azaltmak meseleleri boýunça ylmy derňewler geçirilýär.</p>', '<p> На кафедре “Автоматики технических систем”, которая является одной из специализированных кафедр института, готовятся специалисты для предприятий промышленной и энергетической отраслей Туркменистана по специальностям “Автоматика и управление в технических системах” и “Релейная защита и автоматика электроэнергетических систем”.</p>                          <p>Для обучения студентов преподаватели кафедры ведут  занятия по специальным предметам в соответствии с современными требованиями. На этих занятиях студенты изучают устройства и принципы работы элементов и оборудований промышленной электроники, автоматики и основы автоматизированных систем. </p>  <p>Для обеспечения современных требований по подготовке специалистов кафедра поддерживает тесную связь с производственными предприятиями. Преподаватели кафедры на учебных занятиях обеспечивают студентов информациями об устройствах и особенностях принципов работы новых оборудований, внедряемых в производство.  </p> 			 		             <p>На кафедре регулярно проводится консультации и обмен мнениями со специалистами производственных предприятий энергетической отрасли и изучаются технические проблемы, возникающие на производстве. Для решения этих технических проблем, на кафедре проводятся научно-исследовательские работы. Также на кафедре ведутся научно-исследовательские работы по снижению потерь, возникающих при передаче, распределении и потреблении электрической энергии.</p>', '<p> The department of “Automation of technical systems” is one of the major specialized departments of the  institute. The engineers for the enterprises of electric power and industrial branches of Turkmenistan on the following specialties are trained at the department: ”Automation and management  at  the technical systems” and “Relay protection and automation of electro-energy systems”. </p>                          <p>In order to train the students efficiently, the instructors of department conduct classes related to special subjects according to modern requirements. During these classes the students study the operation structure of equipments of the industrial electronics, technical elements, automation and fundamentals of automated systems. </p> 	 <p>To meet the modern requirements on training of the future specialists, the department maintains a close connection with manufacturing enterprises. During the classes the teachers provide students with information about the structure and working features of new devices, implemented in the  production.   </p> 			 		             <p>The meetings, consultations and discussions are regularly held with experts of manufacturing enterprises of the electric power branch to investigate technical problems arising on manufacture; For the solution of these problems; the members of the department conduct the research works. The research on decreasing the losses occurring in the process of  transferring, distribution and utilization of the  electric power are also under deep investigation.  </p>', 'backend/bolum/1646633091.jpeg', '2022-03-07 14:04:52', '2022-03-07 14:04:52'),
(11, 'backend/kafwebol/1646633402.jpeg', 'Himiýa we himiýa tehnologiýasy kafedrasy', 'Кафедра химии и химической технологии', 'Department of chemistry and chemical technology', '“Ýylylyk elektrik satansiýalarynda suwuň we ýangyjyň tehnologiýasy” hünäri elektrik stansiýalarynda suwuň we ýangyjyň tygşytly...', 'По специальности “Технология приготовления воды и топлива на тепловых электрических...', 'The production engineers capable of protecting surrounding environment, preparing fuel, ...', '<p>Himiýa we himiýa tehnologiýasy kafedrasy “Ýylylyk elektrik satansiýalarynda suwuň we ýangyjyň  tehnologiýasy” hünäri elektrik stansiýalarynda suwuň we ýangyjyň tygşytly hem-de netijeli ulanylmagyny, stansiýalarda suwuň himiki düzgünleriniň amatly guralmagyny, suwy süýjetmegi we duzsuzlandyrmagy, ýangyjy taýýarlamagy, daşky gurşawy goramaklygy başarýan  inžener-tehnologlary ýetişdirýär.</p>                          <p>Bu kafedra diňe bir öz esasy önümçilik hünärine degişli dersleri alyp barmak bilen çäklenmän, beýleki hünärleriň talyplaryna “Umumy himiýa”, “Ekologiýa we daşky gurşawy goramak”, “Zähmeti goramak”, “Nanotehnologiýanyň esaslary”, “Tehnologiki prosesler we enjamlar”, ýaly umumy inženerçilik dersleriniň birnäçesi boýunça hem bilim berýär.</p><p>Kafedrada tejribeli mugallymlar Türkmenistanyň Ylymlar Akademiýasy tarapyndan tassyklanan tema boýunça ylmy işi alyp barýarlar we birnäçe talyplara ylmy taýdan   ýolbaşçylyk edýärler. Kafedrada “Maryazot” önümçilik birleşiginiň zyňyndy suwlarynyň düzümi, görnüşleri, olardan gymmatly maddalary bölüp almak mümkinçilikleri, Mary döwlet elektrik stansiýasynda wodorod kationirlemek prosesleriniň netijeliligini ýokarlandyrmak, utgaşdyrylan önümçilikleriň hasabyna suwy himiki duzsuzlandyrmagy we ýumşatmagy amala aşyrylmagyň mümkinçilikleri öwrenilýär.</p>', '<p>По специальности “Технология приготовления воды и топлива на тепловых электрических станциях” готовятся инженеры-технологи, способные охранять окружающую среду, готовить топливо, обессолевать и опреснять воду, доступно устанавливать химические режимы воды на станциях, экономично и эффективно использовать топливо и воду на электрических станциях.</p>                          <p>Данная кафедра не ограничивается только ведением дисциплин, касающихся основной производственной специальности, но также дает знания общего инженерного образования студентам других специальностей по нескольким дисциплинам, таким как “Общая химия”,  “Экология и охрана окружающей среды”, “Охрана труда”,“Основы нанотехнологии”, “Технологические процессы и оборудования”.</p> 	<p>На кафедре опытные преподаватели ведут научные работы по темам, утвержденным Академией Наук Туркменистана и руководят научными темами студентов. На кафедре ведутся работы по изучению состава, видов сточных вод производственного объединения “Mарыазот”, возможности отделения ценных веществ из их состава, повышению эффективности водородно-катионированных процессов в Марыйской государственной электрической станции, изучению возможностей осуществления химческого обессоливания и умягчения воды за счет комбинировнных производств.</p>', '<p>The production engineers capable of protecting surrounding environment, preparing fuel, desalinating and freshening of water, installing available modes of chemical water at the stations, utilizing fuel and water economically and effectively at the electric power stations, are trained on the specialty of “Water and fuel production technology at the thermal electric power stations”. </p>                          <p>The current department does not confine itself only with  conducting of the disciplines belonging to major production specialty, but also implements common engineering educational training for the students of the other specialties on such several disciplines as “General chemistry”,  “Ecology and environmental protection”, “Labor protection”, “Fundamentals of nanotechnology”, “Technological processes and equipment”.</p> 	 <p>Experienced teachers are carrying out scientific works on the themes approved by the Academy of Sciences of Turkmenistan and guiding several scientific works of the students at the department.  The composition kinds of the wastewaters of the “Maryazot” production association, possibilities of detaching valuable substances from their composition, increasing effectiveness of the hydrogencation polishing processes of the Mary State electric power station, implementing chemical desalination and softening of water at the expense of joint production facilities are being under the research at the department.</p>', 'backend/bolum/1646633402.jpeg', '2022-03-07 14:10:03', '2022-03-07 14:10:03');
INSERT INTO `kafwebols` (`id`, `kaf_photo`, `kaf_at_tm`, `kaf_at_ru`, `kaf_at_en`, `gysga_text_tm`, `gysga_text_ru`, `gysga_text_en`, `dusundiris_tm`, `dusundiris_ru`, `dusundiris_en`, `bol_photo`, `created_at`, `updated_at`) VALUES
(12, 'backend/kafwebol/1646633845.jpeg', 'Mehanika we metallaryň tehnologiýasy kafedrasy', 'Кафедра механики и технологии металлов', 'Department of mechanics and metal technology', 'Kafedra „Metallary işläp bejermegiň tehnologiýasy we maşynlary“ we „Elektrik we elektromehaniki enjam...', 'Кафедра готовит инженеров–механиков по специальностям «Машины и технология...', 'The department trains mechanical engineers on the specialty of “Metal processing technology and...', '<p>Mehanika we metallaryň tehnologiýasy kafedrasy “Metallary işläp bejermegiň tehnologiýasy we maşynlary”, “Elektrik we elektromehaniki enjamlaryň tehniki ulanylyşy, hyzmat edilişi we abatlaşdyrylyşy” we “Tehnologiki maşynlar we enjamlar” hünärleri boýunça inžener-mehanikleri taýýarlaýar. Taýýarlanylýan hünärmenler maşynlaryň detallaryny abatlamagyň we maşynlary düzmegiň tehnologiýasyny, maşynlaryň gurnalyşyny, hasaplanylyşyny we konstruirlenilişini, maşyngurluşyk pudagyndaky tehnologik prosesleri awtomatlaşdyrmagyň toplumlaýyn taslamalaryny işläp düzmegi, olary awtomatiki serişdeler arkaly dolandyrmagy ýokary okuw mekdebinde alan hünärine laýyklykda amala aşyrmak başarnyklaryny ele alýarlar. Olara köpçülik bilen işlemeklik, işgärleri agzybirlik, maksadaokgunlylyk, Watansöýüjilik ruhynda terbiýelemeklik, nazary bilimlerini we terbiýeçilik endiklerini yzygiderli we üznüksiz kämilleşdirmeklik, öz ugrundan toplan ylmy maglumatlaryny işinde ýerlikli ulanmaklyk we zähmeti ylmy esasda guramaklyk öwredilýär.</p>   <p>Häzirki döwür her bir hünärmeniň öz işine döredijilikli çemeleşmegini talap edýär. Şonuň üçin kafedranyň mugallymlary önümçilik kärhanalary bilen ýakyn arabaglanşygy saklaýarlar we önümçilige ornaşdyrylýan täze innowasion tehnologiýalar barada yzygiderli gyzyklanýarlar we oňa talyplary hem çekýärler. Kafedrada talyp ýaşlar üçin “Ýaş konstruktor” we “Ýaş mehanik” atly gurnaklar hereket edýär. Kafedrada kompýuter tehnologiýasy giňden ulanylýar. Taslamak, hasaplamak we konstruirlemek üçin dürli kompýuter maksatnamalaryndan peýdalanylýar.</p> 			 	             <p>Kafedranyň tejribeli mugallymlary ýerli çig mallary halk hojalygynda ulanmaklygyň mümkinçilikleriniň ylmy esaslaryny işläp düzmek we olary önümçilikde ulanmak ýaly temalar we ugurlar boýunça ylmy-barlag işlerini yzygiderli alyp barýarlar we bu ylmy işlere talyplary hem çekýärler.</p>', '<p>Кафедра готовит инженеров–механиков по специальностям «Машины и технология обработки металлов» , «Техническая эксплуатация, обслуживания и ремонт электрического и электромеханического оборудования» , и «Технологические машины и оборудования» . В соответствии с получаемой специальностью в высшем учебном заведении, обучаемые специалисты приобретают навыки восстановления деталей машин и технологии монтажа машин, установки, расчета и конструирования машин, разработки комплексных проектов автоматизации технологических процессов в машиностроительной отрасли и их управление автоматическими средствами. Их обучают взаимодействовать с обществом, развивать работников в духе сплоченности, целеустремленности, любви к Родине, систематически и непрерывно совершенствовать свои теоретические знания и воспитательные навыки, уместно применять накопленную научную информацию на рабочих местах и организовывать труд на научном основании. </p>   <p>Настоящее время требует от каждого специалиста творческого подхода к работе. Поэтому преподаватели кафедры поддерживают тесные контакты с производственными предприятиями и непрерывно интересуются новыми инновационными технологиями внедряемыми в производство и приобщают к этому студентов. Для студентов на кафедре действуют кружки «Молодой конструктор» и «Молодой механик». На кафедре широко используются компьютерные технологии. Для проектирования, расчета и конструирования используются различные компьютерные программы.</p> 			 	<p> Опытные преподаватели кафедры систематически ведут научно-исследовательские работы по таким темам и направлениям, как разработка научных основ возможностей использования местного сырья в народном хозяйстве и их применение в производстве, а также подключают студентов к этим научным работам. </p>', '<p>The department trains mechanical engineers on the specialties of “Metal processing technology and machines”, “Technical maintenance, servicing and repair of the electric and electromechanical equipment”, and “Technological machines and equipment\". According to the specialty gained at the higher educational institution, trained students acquire the skills of restoration of the machine components and machine assembling technologies, installation, calculation and construction of the machines, elaboration of the complex projects of the automation of the technological processes in the machine building field, operation of them with the help of automated tools. They are taught to cooperate with the society, to bring up the workers in the spirit of cohesion, purposefulness, and love for their Motherland, to improve their theoretical knowledge and educational work uninterruptedly and systematically, to apply relevantly the scientific information collected by them at the worksites and to organize the labor on the scientific basis.  </p>  <p>The present time demands from every educated specialist to approach to his work constructively. Therefore the teachers of the department keep close contact with the production associations and get regularly interested with information about the new innovative technologies established in the production and involve their students to it. There are two circles for the students functioning at the department, such as “Young constructor” and “Young mechanical engineer”. Computer technologies are widely used at the department. Various computer programs are used for designing, calculation and construction.</p> 			 	             <p>Experienced teachers of the department are conducting scientific-researches on the scientific themes and areas, such as the elaboration of the scientific basis for the possibilities of the utilization of the local raw materials in the national economy and the exploitation of them in the production, and also involving the students to these scientific works.</p>', 'backend/bolum/1646633845.jpeg', '2022-03-07 14:17:25', '2022-03-07 14:17:25'),
(13, 'backend/kafwebol/1646634057.jpeg', 'Energetika pudagynyň ykdysadyýeti kafedrasy', 'Кафедра экономики энергетической отрасли', 'Department of economy of the energy sector', '“Energetika pudagynyň ykdysadyýeti” kafedrasynda “Energetika pudagynyň ykdysadyýeti we dolandyry...', 'На кафедре “Экономики энергетической отрасли” готовятся высококвалифицированные...', 'The department of “Economy of energy the sector” trains the highly educated specialists in the field of...', '<p>“Energetika pudagynyň ykdysadyýeti” kafedrasynda “Energetika pudagynyň ykdysadyýeti we dolandyrylyşy” hünäri boýunça ýokary bilimli hünärmenler taýýarlanylýar. Kafedra Türkmenistanyň Energetika Ministrliginiň garamagyndaky ähli edara-kärhanalar bilen ýakyn aragatnaşyk saklaýar. “Energetika pudagynyň ykdysadyýeti we dolandyrylyşy” hünäriniň talyplary bu kärhanalarda önümçilik tejribeliklerini geçmek bilen çäklenmän, bu kärhanalaryň ykdysady netijeliligini artdyrmak, maliýe durnuklylygyny ýokarlandyrmak boýunça ýyllyk işlerini we diplom işlerini taýýarlaýarlar.</p>                          <p>Hünärmen Türkmenistanyň Energetika pudagynyň kärhanalaryna önümçilik-tehnologiki, guramaçylyk, dolandyryş we ylmy-barlag işlerini hem-de tehnologiki prosesleri optimal usullarda geçirmek arkaly, önümiň hilini ýokarlandyrmak we onuň özüne düşýän gymmatyny peseltmek boýunça guramaçylyk çärelerini ýokary okuw mekdebinde alan hünärine laýyklykda amala aşyrmak üçin taýýarlanylýar.</p> <p>Uçurym  „Türkmenenergo“ korporasiýasynyň düzümindäki elektrik stansiýalarynda, podstansiýalarda we beýleki senagat kärhanalarynda, „Türkmenenergogurluşyk“ konserniniň we „Türkmenenergoabatlaýyş“ ýöriteleşdirilen önümçilik birleşiginiň kärhanalarynda we olaryň ýerlerdäki bölümlerinde, „Döwletenergogözegçilik“ kärhanalarynda hem-de ylmy-barlag edaralarynda ýokary bilimli hünärmenlere niýetlenen wezipeleri eýeläp biler.</p> 			 			 <p>\"Energetika pudagynyň ykdysadyýeti\" kafedrasynyň tejribeli mugallymlary ýurdumyzyň ykdysadyýeti boýunça ylmy-barlag işlerini alyp barýarlar. “Energetika pudagynyň ykdysadyýeti we dolandyrylyşy” hünäriniň talyplary ykdysadyýet dersinden geçirilýän döwlet ders bäsleşiklerine, şeýle hem halkara internet olimpiadalaryna işjeň gatnaşýarlar.</p>', '<p>На кафедре “Экономики энергетической отрасли” готовятся высоко квалифицированные специалисты по специальности “Экономика и управление в энергетической отрасли”. Кафедра поддерживает тесную связь со всеми предприятиями Министерства Энергетики Туркменистана. Студенты по специальности “Экономика и управление  в энергетической отрасли”  не только проходят производственную практику на этих предприятиях, но и готовят дипломные и курсовые работы по повышению экономической эффективности, финансовой стабильности данных предприятий.</p>                          <p>Специалиста обучают осуществлять повышение качества и снижение её себестоимости по средством проведения производственно-технологических, организационно-управленческих и научно-исследовательских работ, а также технологических процессов в оптимальных режимах на предприятиях, энергетической отрасли Туркменистана в соответствии с полученной специальностью в высшем.</p>  <p>Выпускник может работать на электростанциях, подстанциях и на других промышленных предприятиях входящих в состав корпорации “Туркменэнерго”, на предприятиях концерна “Туркменэнергогурлушык” и специализированного производственного объединения “Туркменэнергоабатлайыш”, а также в их местных отделениях, на предприятиях “Довлетэнергогозегчилик” и в научно-исследовательских организациях, требующих специалистов с высшим образованием.</p> 			 			 <p>Опытные преподаватели кафедры “Экономики энергетической отрасли” ведут  научно-исследовательские работы по развитию экономики Туркменистана. Студенты по специальности  “Экономика и управление в энергетической отрасли” активно участвуют на олимпиадах по предмету экономика, проводимых на государственном уровне, а также на международных интернет-олимпиадах.</p>', '<p>The department of “Economy of the energy sector”  trains the highly educated specialists in the field of “Economy and management of the energy sector”. The department is in close relation and cooperation with enterprises and associations which are under the supervision of the Ministry of Energy of Turkmenistan. Besides the practical training at the enterprises, students do course work on improving financial stability and increasing economical effectiveness of these enterprises and prepare diploma theses.</p>                          <p>By conducting production-technological, organizational-managerial, scientific-research works and the technological processes on the operational modes at the enterprises of the energy sector of Turkmenistan, the specialist will be able to conduct organizational measure for increasing the product quality and decreasing its prime cost according to the specialty gained at the higher educational institution.</p>     <p>The graduates can hold a positions in the electric power stations, substations and other industrial enterprises which are in the composition of the “Turkmenenergo” corporation, at the enterprises of the “Turkmenenergogurlushyk”, the specialized production association “Turkmenenergoabatlayysh” and their branches at the localities, at the enterprises of “Dowletenergogozegchilik” and scientific research bureaus, which are intended for the highly-educated specialists.</p> 			 			 <p>Experienced teachers of the department of the  “Economy of the energy sector” are carrying out scientific-research works on economy of our country. The students of the specialty of “Economy and management of the energy sector” participate in the international internet olympiads and state subject olympiads on economics.</p>', 'backend/bolum/1646634057.jpeg', '2022-03-07 14:20:57', '2022-03-07 14:20:57'),
(14, 'backend/kafwebol/1646634241.jpeg', 'Elektromehanika kafedrasy', 'Кафедра электромеханики', 'Department of electromechanics', 'Elektromehanika kafedrasynda „Senagat desgalarynyň we tehnologiki toplumlaryň elektrohereketlendirilişi hem-de awtomatikasy“...', 'На кафедре “Электромеханики” готовятся студенты по специальности “Электропривод и автоматика промышленных установок и ...', 'The department trains highly qualified specialists on the speciality of “Electromotion and automation of the industrial structures and technological complexes”...', '<p>„Elektromehanika“ kafedrasy 2010-njy ýylyň 1-nji martynda döredildi.</p>                          <p>Elektromehanika kafedrasynda „Senagat desgalarynyň we tehnologiki toplumlaryň elektrohereketlendirilişi hem-de awtomatikasy“ hünäri boýunça ýokary bilimli hünärmenler taýýarlanylýar we olara „Inžener-elektromehanik“ käri berilýär.</p> 			 			 			 <p>Kafedranyň mugallymlary „Senagat desgalarynyň we tehnologik toplumlaryň elektrohereketlendirilişi hem-de awtomatikasy“ hünäriniň talyplaryna elektrohereketlendirilişde, elektroenergetikada, maşyngurluşygynda, transportda we önümçiligiň beýleki pudaklarynda, giňden ulanylýan dürli görnüşli elektrik maşynlaryň işleýiş we konstruktiw aýratynlyklary hem-de olaryň esasy häsiýetnamalary barada giňişleýin düşünje berýärler.</p> 			  			 			 <p>Bu hünäriň talyplary Türkmenistanyň Energetika ministrliginiň we Türkmenistanyň Senagat ministrliginiň garamagyndaky bolan önümçilik kärhanalarynda okuw-önümçilik tejribeligini geçýärler. Okuw-önümçilik tejribeligi talyplaryň nazary we amaly sapaklarynda alan bilimlerini berkitmäge uly ýardam berýär. Talyplar tejribelikde elektrik stansiýalarynda elektrik energiýasynyň öndürilişiniň, paýlanylyşynyň we aralyga geçirilişiniň tehnologiýasyny hem-de önümçilikde ulanylýan elektromehaniki enjamlaryň gurluş aýratynlyklaryny öwrenýärler.</p> 			  			             <p>Kafedranyň mugallymlary önümçiligiň hünärmenleri bilen tejribe alşyp, okuwlaryň hilini ýokarlandyrmaga degişli işleri geçirýärler.</p> 			 			 <p>Elektromehanika kafedrasynda Türkmenistanyň elektroenergetika ulgamynda elektrik energiýasynyň öndürilişindäki, geçirilişindäki we ulanylyşyndaky tehnologiki hadysalaryň we elektrohereketlendirilişleriň awtomatlaşdyrylyşyny kämilleşdirmeklige degişli temalar boýunça ylmy-barlag işler alnyp barylýar.</p>', '<p>На кафедре „Электромеханики“ готовятся студенты по специальности „Электропривод и автоматика промышленных установок и технологических комплексов“ и им присваивается квалификация „Инженер-электромеханик“.</p>                          <p>Преподаватели кафедры дают фундаментальные знания студентам по специальности “Электропривод и автоматика промышленных установок и технологических комплексов” о конструктивных особенностях и принципах работы различных видов электрических машин, также об их основных характеристиках широко используемых в электроприводе, электроэнергетике, машиностроении, транспорте и в других отраслях производства.</p> 			  			 			 <p>Студенты этой специальности проходят производственную практику на производственных предприятиях Министерства Энергетики и Министерства Промышленности Туркменистана. Производственная практика дает возможность закрепить знания студентов, полученные на теоретических и практических занятиях. На практике студенты изучают особенности технологии производства, распределения и передачи электрической энергии на электрических станциях и конструктивные особенности электромеханического оборудования в производстве. Преподаватели кафедры, обмениваясь опытом со специалистами производства, проводят работы по повышению качества проводимых занятий.</p> 			  			 			 <p>На кафедре „Электромеханики„ ведутся научно-исследовательские работы по различным темам, таким как распределение, передача и потребление электрической энергии, усовершенствование автоматизации электроприводов в технологических процессах производства электроэнергетической системы Туркменистана.</p>', '<p>In the specialty of the „Electromotion and automation of the industrial structures and technological complexes“ the teachers of the department provide students with clear information about pecularities of the operation of various electric machines, their construction and main characteristics widely utilized in the sphere of electrical energy, machinery construction, transport and other industrial sectors.</p> 			 			 			 <p>The students of the mentioned specialty have their academical practical trainings in the industrial enterprises which are under the guidance of the Ministry of Energy of Turkmenistan and Ministry of Industry of Turkmenistan. These academical practical trainings help students to use in practice their theoretical and practical knowledge gained at the institute. During the practical trainings they have an opportunity to gain information about the technology of production, distribution, and transmission of electric power and the structure pecularities of electromechanical equipments used in the industry. By exchanging ideas with specialists, the members of the department constantly improve the quality of academic requirements.</p> 			  		 			 			 <p>In the department of „Electromechanics“ the scientific research works are conducted in the sphere of electromotion, automation, generation, distribution and transmission processes of the electric power in the electrical energy system of Turkmenistan.  </p>', 'backend/bolum/1646634241.jpeg', '2022-03-07 14:24:01', '2022-03-07 14:24:01'),
(15, 'backend/kafwebol/1646634501.jpeg', 'Jemgyýeti öwreniş ylymlary kafedrasy', 'Кафедра общественных наук', 'Department of social sciences cognition', 'Berkarar döwletimiziň bagtyýarlyk döwründe Hormatly Prezidentimiz Gurbanguly Berdimuhamedowyň “Dünýäniň ösen...', 'В эпоху могущества и счастья кафедра Общественных наук Государственного энергетического института Туркменистана, ...', 'In the Epoch of Might and Happiness, one of the primary goals of the department of “Social sciences cognition” of the State Energy ...', '<p>Berkarar döwletimiziň bagtyýarlyk döwründe Hormatly Prezidentimiz Gurbanguly Berdimuhamedowyň “Dünýäniň ösen döwletleriniň ylym-bilimde ýeten sepgitleri bilen aýakdaş gitmegimiz, döwrüň talaplaryndan ugur almagymyz XXI asyryň möhüm talabydyr” diýen sözlerinden ugur alyp, Türkmenistanyň Döwlet energetika institutynyň “Jemgyýeti öwreniş ylymlary” kafedrasy öz öňünde bilim ulgamyny kämilleşdirmek, talyplaryň hünär taýýarlygyny dünýä ülňüleriniň derejesine ýetirmek, ýokary ahlakly, syýasy taýdan kämil, Watana wepaly, zähmetsöýer, dünýä ylmynyň iň soňky gazananlaryndan baş çykaryp bilýän, halk hojalygynyň dürli pudaklarynda işlemäge ukyply hünärmenleri taýýarlap ýetişdirmek ýaly esasy wezipeleri goýýar.</p>                          <p>Kafedranyň mugallymlary ähli fakultetlerde we hünärlerde “Filosofiýa”, “Sosiologiýa”, “Syýasaty öwreniş”, “Ykdysady nazaryýet”, “Türkmenistanyň taryhy”, “Türkmenistanyň kanunçylygynyň esaslary”, “Häzirki zaman türkmen jemgyýeti” okuw dersleri boýunça umumy we söhbet sapaklary okadýarlar. Şeýle hem, kafedranyň mugallymlary ylmy-barlag, ylmy-amaly we usuly işleri yzygiderli alyp barýarlar. Olar “Garaşsyz, hemişelik Bitarap Türkmenistanyň sosial-ykdysady, syýasy we medeni ösüşiniň aýratynlyklaryny seljermek” diýen ylmy temanyň üstünde ylmy-barlag işlerini alyp baryp, olaryň netijeleri barada ylmy žurnallaryň sahypalarynda, ylmy-amaly maslahatlarda çykyşlar edýärler.</p><p>Kafedranyň agzalary talyplary ylmy işlere çekmek işini alyp barýarlar. Olaryň arasynda okadylýan dersler boýunça olimpiadalar geçirilýär, talyplar yzygiderli ylmy gurnaklara çekilýär. Talyplar bilen ata-babalarymyzyň milli taryhy-medeni mirasyny giňişleýin öwrenmek üçin olar bilen “Gadymy Merw” taryhy ýadygärlikler toplumyna  we welaýatyň Taryhy we ülkäni öwreniş muzeýine syýahatlar guralyp durulýar.</p> 			  			 			 			 <p>Kafedrada mugallymlar bilen ylmy-usuly işler boýunça yzygiderli pikir alyşmalar guralýar. Onda kafedranyň agzalary öz kärdeşleriniň ylmy çykyşlary we habarlary bilen tanyşýarlar. Ylmy-usuly gollanmalary hem taýýarlaýarlar. Bu geçirilýän çäreler mugallymlara özleriniň mugallymçylyk ussatlyklaryny ýokarlandyrmaga we kämilleşdirmäge ýardam edýär. </p>', '<p>В эпоху могущества и счастья кафедра Общественных наук Государственного энергетического института Туркменистана, руководствуясь словами Уважаемого Президента Гурбангулы Бердимухамедова «XXI век диктует необходимость идти в ногу с мировым прогрессом, передовыми достижениями науки и образования, требует достойно соответствовать новым реальностям», ставит перед собой такие основные задачи, как усовершенствовать систему образования, повысить профессиональную подготовленность студентов на уровень мирового стандарта, подготовить высоконравственных, политически подготовленных, преданных Родине, трудолюбивых, разбирающихся в последних достижениях мировой науки, способных работать в различных отраслях народного хозяйства квалифицированных специалистов.</p>                          <p>Преподаватели кафедры на всех факультетах и специальностях ведут лекционные и семинарские занятия  по учебным дисциплинам как «Философия», «Социология», «Политология», «Экономическая теория», «История Туркменистана», «Основы законодательства Туркменистана», «Современное туркменское общество». А также преподаватели кафедры регулярно ведут научно-исследовательские, научно-практические и методические работы. Они, проводя научно-исследовательскую работу по теме «Анализ особенностей социально-экономического, политического и культурного развития Независимого и постоянно Нейтрального Туркменистана»,  выступают об их результатах на страницах научных журналов, на научно-практических конференциях.</p>  <p>Члены кафедры привлекают к научной работе. Среди них проводятся олимпиады по обучаемым дисциплинам, студенты систематически привлекаются к научным кружкам. В целях изучения национального историко-культурного наследия предков организуются экскурсии в исторический комплекс «Древний Мерв» и музей Истории и краеведения велаята. </p> 			  			 			 			 <p>Среди преподавателей кафедры регулярно проводятся научно-методические дискуссии, где они ознакомляются научными докладами и выступлениями своих коллег. Также разрабатывают научно-методические пособия. Все это способствует повышению и совершенствованию профессионализма преподавателей. </p>', '<p>In the Epoch of Might and Happiness, one of the primary goals of the department of “Social sciences cognition” of the State Energy institute of Turkmenistan is to improve the educational system, to develop the special training of the students up to the world standard level, to bring up the specialists of high moral qualities, politically well-informed, loyal to their Motherland, laborious, skillful of the latest world scientific accomplishments, capable of working in the different fields of the national economy, following the wise thoughts of our Esteemed President Gurbanguly Berdimuhamedov, which is “The 21st century dictates necessity to keep pace with world progress, advanced achievements of science and education, demands meeting new realities”.</p>                          <p>The teachers of the department give lectures and hold seminars classes on “Philosophy”, “Sociology”, “Political science”, “Economics”, “History of Turkmenistan”, “Fundamentals of the legislation of Turkmenistan”, “Modern Turkmen Society” in all the faculties and specialties. The teachers are also uninterruptedly conducting scientific-research, scientific-practical and methodical works. They work on the scientific topic called “Analysis of the social-economic, social-cultural development peculiarities of Independent, permanently Neutral Turkmenistan”, publish articles in the journals and make reports about their results at the scientific-practical conferences. </p>  <p>The members of the department are engaged in directing students to the scientific works. Subject competitions on taught courses are held among them, they also go in for scientific circles. Excursions to “Ancient Merv” and the velayat Museum of History and Region are systematically organized for the students with the purpose of widely learning the national-cultural and historical heritage of our ancestors.</p> 			  			 			 			 <p>Exchanging opinions on scientific-methodical works are continuously arranged with the teachers. The members of the department are informed about their colleague’s scientific presentations and reports. Scientific-methodical manuals are also prepared. Conducted activities of this kind help the teachers to increase and to improve their teaching professionalism.</p>', 'backend/bolum/1646634501.png', '2022-03-07 14:28:22', '2022-03-07 14:28:22'),
(16, 'backend/kafwebol/1646634735.jpeg', 'Umumy fizika, matematika we informatika kafedrasy', 'Кафедра общей физики, математики и информатики', 'Department of common physics, mathematics and information sciences', 'Kafedranyň mugallymlary institutda bar bolan hemme hünärlerde fizika, ýokary matematika, häzirkizaman...', 'Преподаватели кафедры ведут занятия по физике, математике, современным компьютер...', 'The teachers of the depart-ment give classes to the students of all the specialties trained at the institute...', '<p>Kafedranyň mugallymlary institutda bar bolan hemme hünärlerde fizika, ýokary matematika, häzirki zaman kompýuter tehnologiýalary we matematiki modelirleme dersleri boýunça sapaklary okadýarlar. Kafedranyň okuw we tejribe otaglarynda häzirki zaman kompýuterleri, tejribe enjamlary, interaktiw we multimediýa tehnologiýalary hem – de internet ulgamy ornaşdyrýarylandyr. Mugallymlar köpugurly tehniki taýýarlykly talyplaryň synag geçirmek ukybyny ösdürmek, öz bilimlerini elektroenergetika pudagynyň öňünde durýan möhüm meseleleri çözmäge ulanmak endiklerini kämilleşdirmeklige uly düşünje berýärler. Matematiki modelirleme we kompýuter tehnologiýalary elektroenergiýany öndürmek we ulanmak baradaky meseleleri goýmaga we derňemäge uly mümkinçilik berýär.</p>                          <p>Kafedranyň mugallymlary okuw işleriniň ylmy – usuly derejesini kämilleşdirmek maksady bilen okatmagyň häzirki zaman usullaryndan, kompýuter tehnologiýalaryndan, multimediýa ulgamyndan we internetden giňden peýdalanýarlar.</p> <p>Kafedrada fizika, matematika we informatika dersleri boýunça talyplary döwlet we halkara internet ders bäsleşiklerine taýýarlamak meselesine aýratyn üns berilýär. Kafedrada agzalan dersler boýunça taýýarlanylýan talyplar diňe bir döwlet ders bäsleşiklerine gatnaşmak bilen çäklenmän, eýsem, Ukraina döwletiniň her ýylky geçirilýän halkara William Putnam adyndaky ders bäsleşiklerine, Ysraýylda geçirilýän halkara ders bäsleşikleriniň internet tapgyryna we Ysraýyl döwletiniň Ariel Uniwesitetler merkezinde we Bolgariýa döwleti tarapyndan geçirilýän “SEEMOUS”, “IMC”, “NSOM” atly günorta gündogar ýurtlarynyň arasynda we başga-da birnäçe döwletlerde halkara ders bäsleşiklerine yzygiderli gatnaşyp, öňdäki baýrakly orunlary eýeleýärler.</p>', '<p>Преподаватели кафедры проводят занятия по физике, высшей математике, современным компьютерным технологиям и математическому моделированию. Профессорско-преподавательский состав кафедры дает студентам глубокие знания, соответствующие современным требованиям. Преподаватели кафедры на занятиях особое внимание уделяют совершенствованию навыков проводить эксперименты, формированию способностей использования своих знаний в электроэнергетике для решения важнейших задач. Также на занятиях студенты изучают научные основы рационального использования альтернативных источников энергии, в частности энергии солнца, ветра и воды. Математическое моделирование и компьютерные технологии дают возможность поставить и проанализировать задачи, связанные с производством и использованием электроэнергии.</p>                          <p>Лекционные и лабораторные аудитории кафедры оснащены современными компьютерными, интерактивными и мультимедийными технологиями, а также интернет- системой. В целях повышения научно- методической степени учебного процесса, преподаватели кафедры применяют современные методы обучения, компьютерные и мультимедийные технологии.</p>   <p>Кроме этого, на кафедре особое внимание уделяют подготовке студентов к государственным и международным олимпиадам по физике, математике и информатике.  В итоге, студенты не только систематически принимают участие на государственных и международных олимпиадах, но и занимают призовые места. Ярким примером может служить участие наших студентов на олимпиаде имени В. Путмана, ежегодно проводимой на Украине; на международной израильской интернет-олимпиаде; на международных олимпиадах “SEEMOUS”, “IMC” “NSOM”, проводимых при поддержке Болгарии, между юго-восточными и некоторыми другими странами. </p>', '<p>The teachers of the department teach classes to the students of all the specialties trained at the institute on physics, higher mathematics, modern computer technologies and mathematical modeling subjects. Academic and laboratory rooms of the department are equipped with the up-to-date computers, laboratory devices, interactive and multimedia technologies, and also the internet system. Special attention is paid to the tasks of developing multi-field technical students skills of conducting tests, forming their abilities to use their knowledge in the solution of the important problems of the electric power, teaching higher technologies  application for the rational utilization of the alternative energy sources, mainly solar, wind and water energy. Mathematical modeling and computer technologies provide great opportunities for the solution and analysis of  the problems of electric power generation and consumption.</p>                          <p>The teachers of the department use modern methods of teaching, computer technologies and conducting scientific - research works with the purpose of the improvement of the scientific-methodological level of the academic works.</p> <p>Much work in the depart-ment is done concerning the preparation of the students for the State subject competitions and international internet olympiads on physics, mathematics and information sciences. The students, trained at the department on the mentioned subjects, participate and take prize-winning places not only in the State olympiads held every year between the higher-educational institutions, but also in the international William Putnam olympiads organized on mathematics in Ukraine, internet stage of the international olympiad in Israel, in the center of Ariel Universities in Israel, “IMC”, “NSOM” and “SEEMOUS” olympiads in Bulgaria, that are held among the participants from the south-eastern countries.</p>', 'backend/bolum/1646634735.jpeg', '2022-03-07 14:32:15', '2022-03-07 14:32:15'),
(17, 'backend/kafwebol/1646634999.jpeg', 'Elektrik stansiýalary kafedrasy', 'Кафедра электрических станций', 'Department of electric power stations', '“Elektrik stansiýalary” kafedrasynda “Ýylylyk elektrik stansiýalary”, “Gazturbina desgalary we dwigatelleri”, “Adaty däl we gaýtadan dikeldilýän energiýa...', 'На кафедре “Электрических станций” готовятся высококвалифицированные кадры по специальностям «Тепловые электрические ...', 'Specialists are trained at the department of “Electric power stations”, on such specialities as “Gas turbine units and engines”, “Unconventional and renewable...', '<p>“Elektrik stansiýalary” kafedrasynda “Ýylylyk elektrik stansiýalary”, “Gazturbina desgalary we hereketlendirijileri”, “Adaty däl we gaýtadan dikeldilýän energiýa çeşmeleri” “Elektrik we ýylylyk energiýasyny öndürmegiň tehnologiýasy” hünärleri boýunça hünärmenler taýýarlanylýar. Kafedrada ýylylyk elektrik stansiýalarynda, gazturbinaly elektrik stansiýalarynda, alternatiw energiýa çeşmelerinde guramaçylykly dolandyrmaga, taslama düzmäge we elektrik stansiýalarynyň ylmy-barlag işlerini ýerine ýetirmäge ukyply ýokary bilimli hünärmenler taýýarlanylýar.</p>                          <p>Kafedra degişli hünärler boýunça bilim alýan talyplar ýylylyk elektrik stansiýalarynyň, gazturbina desgalarynyň, adaty däl we gaýtadan dikeldilýän energiýa çeşmeleriniň ýylylyk tehniki enjamlarynyň esasy görnüşleriniň işledilmegini gurnamaga we taslamaga, hasaplama işlerini ýerine ýetirmäge we täzelik girizmäge ukyply hünärmenler bolup ýetişýärler.</p>   <p>“Elektrik stansiýalary” kafedrasynda Energetika pudagyny ösdürmek üçin zerur bolan ugurlar boýunça birnäçe ylmy-barlag işler alnyp barylýar. Bu  ylmy-barlag işlerinde  elektrik  energiýasyny  öndürmegiň we tygşytlamagyň täze  tehnologiýalaryny ornaşdyrmagyň  ylmy esaslary öwrenilýär.  Türkmenistanda  hereket edýän döwlet elektrik stansiýalarynyň  ýylylyk  bölegini  hasaplamak we ýylylyk ýitgilerini derňemeklige degişli  ylmy-barlag işleri alnyp barylýar. Ylmy-barlag  işlerinde  döwrebap usullardan we innowasion tehnologiýalaryndan giňden  peýdalanylmagy energetika pudagyna degişli birnäçe meseleleri çözmeklige ýardam berýär.</p>', '<p> На кафедре “Электрические станции” студентов обучают по специальностям «Тепловые электрические станции», «Газотурбинные установки и двигатели», «Нетрадиционные и возобновляемые источники энергии», «Технология производства электрической и тепловой энергии». Специфика профессиональной деятельности специалистов с учетом профиля их подготовки заключается в работе с электрическими схемами станций и подстанций, в расчетах параметров этих схем (токов, напряжений, частоты и т.п.), в работе с электрооборудованием, обеспечивающим электроснабжение жилых комплексов и промышленных предприятий, в работе с объектами повышенной опасности для персонала (высокое напряжение, большие токи), в необходимости соблюдения требований охраны труда и техники безопасности, а также обеспечения безопасности персонала и  окружающей среды. Профессорско-преподавательский состав кафедры учит студентов:</p>                          <p>- осуществлять работы по проектированию, конструированию, созданию и внедрению технических оборудований, а также по выполнению вычислительных работ на тепловых электрических станциях; </p> 			 			<p>- проводить производственный и эксплуатационный контроль теплотехнических оборудований и обеспечивать их монтаж, наладку, эффективное использование;<p> 			 			<p>- разработать и организовать технологические процессы и операции монтажа оборудований; составлять технологические карты и осуществлять ремонтно-монтажные работы;<p> 			 			<p>- внедрять в производство передовые технологические процессы и современные методы организации труда;<p> 			 			<p>- составлять расчет экономической эффективности внедряемых проектов и технологических решений;<p> 			 			<p>- осуществлять эксперименты и научные исследования по специальности; повторно анализировать и обработать полученные результаты; использовать современные компьютерные инновационные технологии и автоматизированные системы;<p> 			 			<p>- быть в постоянном поиске инноваций, систематически изучать научно-технические новшества и внедрять на производственное предприятие передовые технические средства, созданные на их основе и т.д.<p><p> Под руководством опытных преподавателей кафедры студенты выполняют научно-исследовательские работы. На научно-исследовательских работах широко применяются современные способы и инновационные технологии, позволяющие решать важные проблемы энергетической отрасли Туркменистана.</p>', '<p>Specialists are trained at the department of “Electric power stations”, on such specialities as “Gas turbine units and engines”, “Unconventional and renewable energy sources”, “Technology of the electric and heat energy generation”. Highly-educated specialists capable of performing organizational operation, project settlements at the thermal electric power stations, gas turbine electric power stations, alternative energy sources and also conducting scientific-research works of the electric power stations, are trained at the department.</p>                          <p>The students studying specialities belonging to this department will become specialists capable of operating, setting, designing, performing calculation and introducing innovations of the main types of the thermal technical equipment of the thermal electric power stations, gas turbine units and engines, unconventional and renewable energy sources.</p>       <p>Scientific-research works on the directions necessary for the development of the energy sector are being conducted at the department of the “Electric power stations”. These scientific-research works are concerned with the scientific bases of the new technologies implementation for the generation and conservation of the electric power. Scientific-research works concerning the calculation of the thermal portion and analyses of the thermal losses of the state electric power stations of Turkmenistan are also under investigation. Utilization of the modern methods and innovative technologies in the researches will support in the solution of the problems of energy sector.</p>', 'backend/bolum/1646634999.jpeg', '2022-03-07 14:36:39', '2022-03-07 14:36:39'),
(18, 'backend/kafwebol/1646638367.jpeg', 'Elektroenergetiki ulgamlar kafedrasy', 'Кафедра электроэнергетических систем', 'Department of electro-energy systems', '“Elektroenergetiki ulgamlar” kafedrasy institutyň Energo-tehnologiýa fakultetiniň düzüminde hünär beriji kafedralaryň biri bolup durýar. Kafedrada...', 'Кафедра электроэнергетических систем является одной из профилирующих и входит в состав Энерго-технологического факультета. Для...', 'The department of “Electro-energy systems” is one of the specialized departments of the Energy-technology faculty. For training of the engineers...', '<p>“Elektroenergetiki ulgamlar” kafedrasy institutyň Energo-tehnologiýa fakultetiniň düzüminde hünär beriji kafedralaryň biri bolup durýar. Kafedrada ,,Elektroenergetiki ulgamlar we torlar”  we ,,Elektrik üpjünçiligi” hünärleri boýunça inženerleri taýýarlamak üçin tejribeli mugallymlar zähmet çekýärler. Kafedranyň halypa we tejribeli mugallymlary diňe bir talyplara hünär öwretmek bilen çäklenmän, eýsem ýaş mugallymlara halypalyk goldawlaryny hem berýärler. “Elektroenergetiki ulgamlar” kafedrasynda aşakdaky hünärler boýunça inženerler taýýarlanylýar:</p>                          <p>- “Elektroenergetiki ulgamlar we torlar” hünäri boýunça ýurdumyzyň ykdysadyýetiniň esasy sütüni bolan elektroenergetika pudagynda elektrik energiýasynyň öndürilmegini, aralyklara geçirilmegini, dürli görnüşli sarp edijilere paýlanylmagyny üpjün etjek döwrebap tehnologiýaly energokärhanalarda zähmet çekjek inžener-energetikler taýýarlanylýar;</p> 			 			 			 			<p>- “Elektrik üpjünçiligi” hünäri boýunça oba ýerleriniň, şäherleriň, ýaşaýyş jaýlarynyň, önümçilik kärhanalarynyň, binalarynyň we beýleki binalaryň içerki we daşarky yşyklandyrylyş ulgamyny, köçe yşyklandyryş ulgamyny, şeýle hem ýöriteleşdirilen binalaryň we desgalaryň yşyklandyryş ulgamyny taslamaga, dolandyrmaga, ygtybarly işlemegini üpjün etmäge ukyply döwrebap tehnologiýaly yşyklandyryş ulgamynda zähmet çekjek yşyklandyryş boýunça inžener-elektrikler taýýarlanylýar.</p> 	   <p>Hünärmenleri taýýarlamakda ylmyň täze gazananlaryndan, innowasion, multimediýa tehnologiýalaryndan we internet ulgamyndan giňden peýdalanylýar. Kafedranyň professor-mugallymlary hünärmenleri taýýarlamagy kämilleşdirmek we geljekdäki inženerleriň başarnyklaryny ýokarlandyrmak maksady bilen ylmy-barlag işlerini döwrüň talaplaryna laýyklykda alyp barýarlar.</p>', '<p> Кафедра электроэнергетических систем является одной из профилирующих и входит в состав Энерготехнологического факультета. На кафедре обучают инженеров по таким специальностям, как «Электроэнергетические системы и сети», «Электроснабжение». Объектами профессиональной деятельности специалистов являются электроэнергетические системы и сети, различные по назначению и номинальным напряжениям. С первого курса изучение общепрофессиональных дисциплин сопровождается знакомством с объектами будущей профессиональной деятельности: электрическими станциями, подстанциями, пунктами диспетчерского управления, крупными промышленными предприятиями. Студенты, обучающиеся по вышеуказанным специальностям, приобретают следующие компетенции:</p>                          <p>- способность к монтажу, регулировке, испытаниям и сдаче в эксплуатацию электроэнергетического оборудования;</p> 			 			<p>- способность к наладке и опытной проверке электроэнергетического оборудования;</p> 			 			<p>- способность к проверке технического состояния и остаточного ресурса электроэнергетического оборудования, организации профилактических осмотров и текущего ремонта; <p> 			 			<p>- готовность к составлению заявок на электроэнергетическое оборудование, подготовке технической документации на ремонт и т.п.<p>  <p> Профессорско-преподавательский состав кафедры ведет неустанную работу для подготовки высококвалифицированных специалистов и учат студентов рассчитывать режимы работы электроэнергетических установок различного назначения, определять состав оборудования и его параметры, составлять схемы электроэнергетических объектов; использовать технические средства для измерения основных параметров электроэнергетических систем и происходящих в них процессов; использовать нормативные документы по технике безопасности, эксплуатации, стандартизации и сертификации электроэнергетических объектов; контролировать режимы работы оборудования объектов электроэнергетики; осуществлять оперативные изменения электрических схем, режимов работы энергообъектов; составлять и оформлять оперативную документацию, предусмотренную правилами эксплуатации оборудования и организации работы; участвовать в работе над проектами электроэнергетических систем и отдельных их компонентов и т.д.</p> 		    		   <p> Формирование обязательных профессиональных компетенций студентов сочетается с развитием универсальных навыков построения личной образовательной траектории, успешного карьерного роста, командной работы и владения деловым иностранным языком.<p>', '<p>The department of “Electro-energy systems” is one of the specialized departments of the Energy-technology faculty. For training of the engineers on such specialities as «Electro-energy systems and networks»  and \"Electric power supply\" experienced teachers work at the department. Senior and experienced teachers of the chair do not only train the students in the area of their specialty, but also considered to be the mentors for the young teachers. On the department of “Electro-energy systems” the future engineers are trained on specialties shown below:</p>                          <p>- Electric power engineers are trained on the speciality of \"Electro-energy systems and networks” who will work at the electric power enterprises with modern technologies to provide the generation, distance-transfer and distribution of the electric power to different consumers at the energy sector, which is the main support of the country’s economy;</p> 					 			<p>- Electric power engineers on lighting, who will work at the lighting systems with modern technologies, are trained on the speciality of \"Electric power supply\", capable of designing, operating and providing reliable functioning of the lighting systems of the country sides, cities, houses, buildings of the manufacturing enterprises, interior and exterior lighting systems of the other buildings, streets, special buildings and facilities.</p> <p>In training of the specialists new scientific achievements, innovative, multimedia technology and the Internet system are used. Professors and teachers of the department are conducting scientific-research works according to modern requirements with the purpose of improving the training of specialists and increasing the ability of the future engineers.</p>', 'backend/bolum/1646638367.jpeg', '2022-03-07 15:32:47', '2022-03-07 15:32:47'),
(19, 'backend/kafwebol/1646638866.jpeg', '“Energiýa tygşytlaýyş tehnologiýalary” merkezi', 'Центр «Энергосберегающих технологий»', 'Centre of Energy saving technologies', 'Ýewropada Howpsuzlyk we Hyzmatdaşlyk Guramasynyň Türkmenistandaky Merkezi bilen Türkmenistanyň hökümetiniň 2020-nji ýylda...', 'Согласно плана проектов, одобренных на 2020 год между Центр ОБСЕ в Ашхабаде и...', 'According to the plan of projects approved for 2020 between the OSCE Center in Ashgabat and the...', '<p>Ýewropada Howpsuzlyk we Hyzmatdaşlyk Guramasynyň Türkmenistandaky Merkezi bilen Türkmenistanyň hökümetiniň 2020-nji ýylda geçirilmeli çäreleriň ylalaşylan Meýilnamasyna laýyklykda Türkmenistanyň Döwlet energetika institutynda “Energiýa tygşytlaýyş tehnologiýalary” atly merkezi döredildi. Bu merkezde şu taslamanyň çäklerinde maddy-enjamlaýyn binýadyny döretmek maksady bilen birinji tapgyrda IT enjamlar işe girizildi. Ikinji tapgyrda energiýany tygşytlamgyň innowasion tehnologiýalary degişli enjamlary almak göz öňünde tutulýar. Türkmenistanyň Prezidentiniň 2018-nji ýylyň 21-nji fewralynda gol çeken Karary bilen tassyklanan “Energiýany tygşytlamagyň 2018-2024-nji ýyllar üçin Döwlet maksatnamasyny” durmuşa geçirmek maksady bilen bu merkezde aşakdaky işleriň geçirilmegi meýilleşdirilýär:</p> 							<p>-	Energiýany tygşytlamagyň innowasion tehnologiýalary bilen tanyşdyrmak maksady bilen orta hünärmen mekdepleriň okuwçylary we ýokary okuw mekdebiniň talyplary üçin okuwlary we dürli pudaklarda işleýän hünärmenler üçin hünär derejesini ýokarlandyrmak boýunça okuwlary gurnamak hem-de degişli maglumatlar bilen üpjün etmek;</p> 				            <p>-	Dürli pudaklaryň kärhanalarynda energiýany tygşytlamak boýunça geçirilmeli çäreleriň meýilnamalaryny işläp taýýarlamak we energiýanyň sarp edilişi boýunça auditi geçirmegiň ýollaryny kesgitlemek; </p> 							<p>-	Energiýany tygşytlamagyň innowasion tehnologiýalary boýunça seljermeleri geçirmek we energiýany tygşytlamak boýunça tehnikada we ylymda gazanylan üstünlikleri ýaýratnak we ulanyşa girizmek; </p> 							<p>-	Gaýtadan dikeldilýän energiýa çeşmelerini ulanmak boýunça taslamalary işläp taýýarlamak we durmuşa ornaşdyrmak boýunça teklipleri taýýarlamak; </p> 							<p>-	Energiýany tygşytlamak we energiýa netijeliligini ýokarlandyrmak boýunça ylmy-amaly maslahatlary geçirmek. </p>', '<p>В 2020 году Центр ОБСЕ в Ашхабаде и МИД Туркменистана представили план проектов на 2021 год. Согласно разработанному плану проектов в Государственном энергетическом институте Туркменистана был открыт «Центр энергосберегающих технологий». В настоящее время центр оснащен оборудованиями информационных технологий. В последующих этапах планируется оснащать центр инновационными энергосберегающими технологиями. С целью реализации Государственной программы по энергосбережению на 2018-2024 годы в перспективе рассматривается выполнение следующих работ:</p> 							<p>- проведение учебных курсов для учащихся средних школ и студентов вуза, а также курсов повышения квалификации для специалистов предприятий различных отраслей с целью ознакомление с инновационными энергосберегающими технологиями;</p> 							<p>- разработка планов мероприятий по энергосбережению для различных отраслей народного хозяйства и определение путей проведения энергетического аудита; </p> 				            <p>- анализ технических и научных достижений в области энергосбережения; </p> 							<p>- разработка и реализация проектов по использованию возобновляемых источников энергии; </p> 							<p>- проведение научно-практических конференций по вопросам энергосбережения и энергоэффективности. </p>', '<p> According to the plan of projects approved for 2020 between the OSCE Center in Ashgabat and the Government of Turkmenistan, a center for \"Energy Saving Technologies\" was opened at the State Energy Institute of Turkmenistan. As part of this project, in the first stage, the center is equipped with IT technology equipment. In the second stage, it is planned to acquire innovative energy-saving technologies. In order to implement the State Energy Saving Program for 2018-2024 approved by the Decree of the President of Turkmenistan dated 21 February 2018 year, the center considers the following works:</p> 							<p>- In order to familiarize with innovative energy-saving technologies, it is planned to conduct training courses for pupils and students, as well as refresher courses for specialists from enterprises of various industries, as well as providing information on innovative energy-saving technologies;</p> 							<p>- Development of an action plan for energy saving for various sectors of the national economy and determination of ways to conduct an audit of energy consumption;</p> 					        <p>- Analysis, generalization and dissemination of technical and scientific achievements in the field of energy conservation; </p> 							<p>- Development and implementation of projects for the use of renewable energy sources; </p> 							<p>- Holding scientific and practical conferences on energy saving and energy efficiency. </p>', 'backend/bolum/1646638866.jpeg', '2022-03-07 15:41:06', '2022-03-07 15:41:06');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_15_213800_create_employees_table', 1),
(5, '2020_04_20_195937_create_suppliers_table', 1),
(7, '2020_04_21_195614_create_products_table', 1),
(8, '2020_04_22_202454_create_expenses_table', 1),
(9, '2020_04_23_191542_create_salaries_table', 1),
(10, '2020_04_25_194448_create_customers_table', 1),
(11, '2020_04_29_190848_create_pos_table', 1),
(12, '2020_04_30_182401_create_extra_table', 1),
(13, '2020_04_30_200102_create_orders_table', 1),
(14, '2020_04_30_200123_create_order_details_table', 1),
(15, '2022_01_27_070649_create_carousels_table', 2),
(18, '2022_01_28_055648_create_tazeliks_table', 3),
(19, '2020_04_20_212509_create_categories_table', 4),
(20, '2022_02_07_062353_create_baradas_table', 4),
(21, '2022_02_09_050801_create_kafwebols_table', 5),
(22, '2022_02_10_052600_create_ugurs_table', 6),
(24, '2022_02_10_075446_create_files_table', 7),
(25, '2022_02_15_043408_create_hyzmats_table', 8),
(26, '2022_02_15_072331_create_mugustuns_table', 9),
(28, '2022_02_16_035559_create_olimps_table', 10),
(29, '2022_02_16_082608_create_ustuns_table', 11),
(31, '2022_02_17_102307_create_yaryts_table', 12),
(32, '2022_02_17_105837_create_talyps_table', 13),
(33, '2022_03_03_033241_create_habars_table', 14),
(34, '2022_03_03_083446_create_baslesiks_table', 15),
(35, '2022_03_03_085134_create_baslesiks_table', 16),
(36, '2022_03_03_100109_create_yyls_table', 17),
(37, '2022_03_03_101913_create_baslesiks_table', 18),
(38, '2022_03_04_061911_create_edusundiris_table', 19),
(39, '2022_03_04_065423_create_eders_table', 20),
(40, '2022_03_04_080249_create_temas_table', 21),
(41, '2022_03_04_094118_create_temafiles_table', 22);

-- --------------------------------------------------------

--
-- Структура таблицы `mugustuns`
--

CREATE TABLE `mugustuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patent_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patent_ady_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patent_ady_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patent_ady_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mug_ady_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mug_ady_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mug_ady_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hunar_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hunar_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hunar_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_tm` longtext COLLATE utf8mb4_unicode_ci,
  `dusundiris_ru` longtext COLLATE utf8mb4_unicode_ci,
  `dusundiris_en` longtext COLLATE utf8mb4_unicode_ci,
  `patent_photo1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mugustuns`
--

INSERT INTO `mugustuns` (`id`, `patent_photo`, `patent_ady_tm`, `patent_ady_ru`, `patent_ady_en`, `mug_ady_tm`, `mug_ady_ru`, `mug_ady_en`, `hunar_tm`, `hunar_ru`, `hunar_en`, `dusundiris_tm`, `dusundiris_ru`, `dusundiris_en`, `patent_photo1`, `created_at`, `updated_at`) VALUES
(3, 'backend/patent/1646649155.jpeg', 'FOTOELEKTRIK GÜN STANSIÝASYNY TASLAMAGYŇ SANLY ULGAMY', 'ЦИФРОВАЯ СИСТЕМА ПРОЕКТИРОВАНИЯ СОЛНЕЧНЫХ СТАНЦИЙ', 'DIGITAL SYSTEM OF DESIGNING OF SOLAR STATIONS', 'Allanazarow Nurmuhammet', 'Нурмухаммет Алланазаров', 'Nurmuhammet Allanazarov', 'Hünärmen', 'Специалист', 'Specialist', '<p> Fotoelektrik gün stansiýalarynyň ygtybarly we netijeli işlemegini üpjün etmek üçin taslamany işläp düzmekde bildirilýän gurnama iş kadalaryny berjaý etmek zerurdyr. Fotoelektrik gün stansiýalaryň ygtybarly we netijeli işlemegi birnäçe alamatlardan baglydyr, ýagny stansiýanyň gurnaljak ýeriniň geografik koordinatalaryna, gorizontal tekizlige görä amatly burça gyşardylan gün panelleriniň üstüne ýylyň dowamynda düşýän Günüň radiasiýasynyň intensiwliginiň bahalaryna, gün panelleriniň degişli ýer üçin amatly gyşarma burçlaryna, daşky howanyň temperaturasyna baglydyr. Bu bellenilenleriň esasynda fotoelektrik gün stansiýanyň ýylyň dowamynda öndürip biljek elektrik energiýasyny kesgitlemek, onuň gurulmagy meýilleşdirilýän ýerlerini anyklamak, şeýle hem stansiýanyň energetiki parametrlerine howa şertleriniň täsirini öwrenmek wajyp meseleleriň biri hasap edilýär.</p> 							<p>Ýurdumyzda kabul edilen “Türkmenistanda 2019-2025-nji ýyllarda sanly ykdysadyýeti ösdürmegiň Konsepsiýasy”  esasynda  şeýle hem “Energiýany tygşytlamagyň 2018-2024-nji ýyllar üçin  Döwlet maksatnamasynyň” çäklerinde energiýanyň gaýtadan dikelýän görnüşi bolan güniň energiýasyny, hususanda foloelektrik gün batareýalaryny peýdalanyp fotoelektrik gün stansiýasyny taslamak maksady bilen “Fotoelektrik gün stansiýasyny taslamagyň sanly ulgamy” atly programma üpjünçiligi işlenip taýýarlandy.  </p> 							<p>Işlenip taýýarlanylan programma üpjünçiligi aşakdaky işleri we hyzmatlary amala aşyrmaga mümkinçilik berýär:</p> 							<p>Netijede işlenilip düzülen bu programmanyň üsti bilen hasaplama usuly teklip edilýär. Bu programmany fotoelektrik gün stansiýasynyň taslamasy işlenilip taýýarlanylanda giňden peýdalanmak boljakdygy geçirlen hasaplamalaryň üsti bilen düşündirilýär. Programmanyň kömegi bilen tekiz üste  düşýän erkin görnüşindäki gün radiasiýasynyň bahasyny hasaplamak bolýar. </p> 							<p>Fotoelektrik gün stansiýasyny taslamaklygyň tehniki taýdan çylşyrymly meseläniň gozgalýandygyny hasaba alyp, bu programmanyň üsti bilen stansiýanyň düzümine girýän elementleri saýlap almaklygy ýönekeý usulda ýerine ýetirmek mümkinçiligi ylmy esasda derňeldi. Teklip edilýän programma üpjünçiligi özünde maglumatlar bazasyny saklamak bilen, taslanyljak fotoelektrik stansiýasynda   ulanylmagy göz öňünde tutulýan enjamlaryň (fotoelektrik gün batareýalarynyň, kontrolleriň, akkumulýator batareýalarynyp, inwertorlaryň we beýlekileriň) tehniki görkezijilerini özünde jemleýär.</p> 							<p>Programma üpjünçiligi fotoelektrik gün stansiýasy gurulmagy meýilleşdirilýän ýerdäki degişli başlangyç  maglumatlar girizilip hasaplama işleri ýerine ýetirilýär. Ýerine ýetirilen hasaplama maglumatlar bazasynda saklanylýar. Bu programma üpjünçiligi taslama işlerindäki hasaplamalary takyk we gysga wagta ýerine ýetirmäge mümkinçilik berýär.</p> 							<p>Programma üpjünçiligi Delphi programmalaşdyryjy dilinde işlenip taýýarlanyldy.</p>', '<p>Чтобы обеспечить надежную и эффективную работу солнечных электростанций, необходимо при разработке проекта соблюдать правила монтажа. Надежная и эффективная работа солнечных станций зависит от ряда факторов, а именно от географических координат расположения станции, угла наклона солнечных панелей, наклоненных под удобным углом по горизонтальной плоскости, значений интенсивности излучения падающего в течение года солнца, температуры солнечных панелей, угла наклона солнечных панелей. Основываясь на этих выводах, определение электроэнергии, которую фотоэлектрическая установка может вырабатывать в течение года, определение того, где это планируется построить и изучение влияния погодных условий на энергетические параметры станции считается одним из важных вопросов.</p> 							<p>На основании принятой в нашей стране «Концепции развития цифровой экономики в Туркменистане на 2019-2025 годы», а также в рамках Государственной программы энергосбережения на 2018-2024 годы солнечная энергия, особенно фотоэлектрические солнечные панели, разработал программное обеспечение под названием «Цифровая  система проектирования солнечных станций». </p> 							 							<p>В результате с помощью этой разработанной программы предлагается вычислительный метод. Эта программа объясняется расчетами, которые будут широко использоваться при разработке проекта фотоэлектрической солнечной электростанции. С помощью программы можно рассчитать стоимость свободно текущей солнечной радиации.</p> 							<p>Учитывая тот факт, что проектирование фотоэлектрической солнечной станции представляет собой технически сложную задачу, возможность простого выбора элементов, включенных в станцию, с помощью этой программы была научно исследована. Предлагаемое программное обеспечение включает технические показатели оборудования (фотоэлектрические солнечные элементы, контроллеры, аккумуляторы, инверторы и т.д.), которые предназначены для использования на строящейся фотоэлектрической электростанции, включая базу данных.</p> 							<p>     Расчеты производятся путем ввода соответствующей исходной информации в том месте, где планируется построить ПО. Выполненное вычисление сохраняется в базе данных. Эта программа позволяет точно и в короткие сроки производить расчеты по работе над проектом.   </p> 							<p> Программное обеспечение, было разработанно на языке программирования Delphi.</p>', '<p> In order to ensure the reliable and efficient operation of photovoltaic power plants, it is necessary to follow the rules of installation in the design of the project.  Reliable and efficient operation of solar stations depends on a number of factors, namely the geographical coordinates of the location of the station, the angle of inclination of the solar panels, tilted at a convenient angle on the horizontal plane, the values of the intensity of the radiation of the solar panels falling during the year of the sun, the temperature of the sun. Based on these findings, determining the electricity that a photovoltaic plant can generate during the year, determining where it is planned to be built and studying the effect of weather conditions on the energy parameters of the plant is considered one of the important issues.</p> 							<p>On the basis of the \"Concept for the Development of Digital Economy in Turkmenistan for 2019-2025\" adopted in our country, as well as within the framework of the State Program for Energy Saving for 2018-2024, solar energy, especially photovoltaic solar panels, Developed a software called \"Digital Photovoltaic Solar System Design\".</p>							 							<p>As a result, the calculation method is proposed through this developed program. This program is explained by the calculations that will be widely used in the development of the photovoltaic solar power plant project. With the help of the program, it is possible to calculate the cost of free-flowing solar radiation.</p> 							 							<p> Given the fact that the design of a photovoltaic solar station is a technically complex issue, the possibility of simplifying the selection of elements that are part of the station through this program has been scientifically investigated. The proposed software includes technical specifications of the equipment (photovoltaic solar cells, controllers, accumulators, inverters, etc.) that are intended to be used at the photovoltaic power plant to be built, including a database. </p> 							<p>The calculations are carried out by entering the relevant initial information at the place where the software is planned to be built. The computation performed is stored in the database. This software allows you to perform calculations on project work accurately and in a short time.</p> 							<p> The software was developed in Delphi Programming Language.</p>', 'backend/patent1/1646649155.jpeg', '2022-03-07 18:32:35', '2022-03-07 18:32:35'),
(4, 'backend/patent/1646649503.jpeg', 'Hasapçy', 'Бухгалтер', 'Counter', 'Kerimberdi Akmyradow', 'Керимберди Акмырадов', 'Kerimberdi Akmyradov', 'Programmaçy inžener', 'Инженер-программист', 'Programmer engineer', '<p>  Awtomatlaşdyrlan dürli hasap maksatnamalar we gurluşlar eýýäm ýurdumyzdaky uly söwda merkezlerinde giňden ulanylyp başlandy. Şeýle maksatnamalaryň milli dilimizde we milli manadymyz boýunça utgaşykly hasaplamalary amala aşyryp biljek görnüşini işläp taýýarlamak bolsa döwrebap meseleleriň biri bolup durýar. Islendik görnüşli söwda merkezleriniň işini dolandyrmaga, dürli hasaplamalary amala aşyrmaga ýardam berjek “Hasapçy” maksatnamasynyň, şeýle hem, naharhanalarda we kafelerde söwda işiniň awtomatlaşdyrylmagy, müşderi hyzmatlarynyň ýeňilleşdirilmegi maksady bilen taýýarlanan “Aşpez hasap” maksatnamasynyň taýýarlanylmagy hem hut şol maksada gönükdirlendir.</p> 							<p>Bu maksatnamalaryň esasy mümkinçilikleri aşakdakylardyr:</p> 							<p>•	Harytlaryň ammarda galan mukdaryny hasaplamak;</p> 							<p>•	Ýazga haryt bermek we beýleki algy-bergi amallaryny dolandyrmak;</p> 							<p>•	Mukdary gutaran ýa-da azalan harytlary anyklamak;</p> 							<p>•	Barkodsyz harytlara barkod çap etmek;</p> 							<p>•	Müşderilere hasap çek çap etmek;</p> 							<p>•	Harytlara toplumlaýyn arzanladyş ýa-da gymmatladyş yglan etmek we toplumlaýyn baha üýtgetmeler;</p> 							<p>•	Lokal torda birnäçe kompýuterde programmany işletmek we kassir hukuklaryny administrator tarapyndan dolandyrmak;</p> 							<p>•	Internet ulgamy arkaly birnäçe nokatdaky dükanlary bir binýatda \"birikdirmek\";</p> 							<p>•	Ýörite SIM kartaly modemi kompýutere birikdirmek arkaly müşderilere, algydarlara, şeýle-de islendik belgä sms ugratmak;</p> 						 							<br> 							<p>\"Aşpez Hasap\" programmasy naharhanalar üçin niýetlenip, ol “Hasapçy” maksatnamasynda agzalan mümkinçilikleriň ählisini diýen ýaly özünde jemleýär. Olardan başga bolsa bu maksatnamanyň şu aşakdaky artykmaçlyklary bar:</p> 							<p>•	Naharyň   girizilen  düzümine görä, her satylan porsiýa  naharyň düzümine düşýän harydyň degişli mukdaryny awtomatiki ammaryň galyndy hasabyndan aýyrmak;</p> 							<p>•	Birnäçe çek printer gurnamak we degişli bölümlere degişli nahar sargyt edilende olary taýýarlamak buýrugyny degişli printere ibermek.</p> 							 							<br> 							<p>Meselem: Aşhanada, barda we daşardaky mangalda printer gurnalan. Müşderi 1 sany çorba, 1 sany lüle, we 2 sany suw sargyt edende, Aşhanadaky printere 1 çorba, mangaldaky printere 1 lüle, bardaky printerde bolsa 2 suw taýýarlamak baradaky buýruk teksti çap ediler.</p>', '<p> Awtomatlaşdyrlan dürli hasap maksatnamalar we gurluşlar eýýäm ýurdumyzdaky uly söwda merkezlerinde giňden ulanylyp başlandy. Şeýle maksatnamalaryň milli dilimizde we milli manadymyz boýunça utgaşykly hasaplamalary amala aşyryp biljek görnüşini işläp taýýarlamak bolsa döwrebap meseleleriň biri bolup durýar. Islendik görnüşli söwda merkezleriniň işini dolandyrmaga, dürli hasaplamalary amala aşyrmaga ýardam berjek “Hasapçy” maksatnamasynyň, şeýle hem, naharhanalarda we kafelerde söwda işiniň awtomatlaşdyrylmagy, müşderi hyzmatlarynyň ýeňilleşdirilmegi maksady bilen taýýarlanan “Aşpez hasap” maksatnamasynyň taýýarlanylmagy hem hut şol maksada gönükdirlendir.</p> 							<p>Bu maksatnamalaryň esasy mümkinçilikleri aşakdakylardyr:</p> 							<p>•	Harytlaryň ammarda galan mukdaryny hasaplamak;</p> 							<p>•	Ýazga haryt bermek we beýleki algy-bergi amallaryny dolandyrmak;</p> 							<p>•	Mukdary gutaran ýa-da azalan harytlary anyklamak;</p> 							<p>•	Barkodsyz harytlara barkod çap etmek;</p> 							<p>•	Müşderilere hasap çek çap etmek;</p> 							<p>•	Harytlara toplumlaýyn arzanladyş ýa-da gymmatladyş yglan etmek we toplumlaýyn baha üýtgetmeler;</p> 							<p>•	Lokal torda birnäçe kompýuterde programmany işletmek we kassir hukuklaryny administrator tarapyndan dolandyrmak;</p> 							<p>•	Internet ulgamy arkaly birnäçe nokatdaky dükanlary bir binýatda \"birikdirmek\";</p> 							<p>•	Ýörite SIM kartaly modemi kompýutere birikdirmek arkaly müşderilere, algydarlara, şeýle-de islendik belgä sms ugratmak;</p> 						 							<br> 							<p>\"Aşpez Hasap\" programmasy naharhanalar üçin niýetlenip, ol “Hasapçy” maksatnamasynda agzalan mümkinçilikleriň ählisini diýen ýaly özünde jemleýär. Olardan başga bolsa bu maksatnamanyň şu aşakdaky artykmaçlyklary bar:</p> 							<p>•	Naharyň   girizilen  düzümine görä, her satylan porsiýa  naharyň düzümine düşýän harydyň degişli mukdaryny awtomatiki ammaryň galyndy hasabyndan aýyrmak;</p> 							<p>•	Birnäçe çek printer gurnamak we degişli bölümlere degişli nahar sargyt edilende olary taýýarlamak buýrugyny degişli printere ibermek.</p> 														<br> 							<p>Meselem: Aşhanada, barda we daşardaky mangalda printer gurnalan. Müşderi 1 sany çorba, 1 sany lüle, we 2 sany suw sargyt edende, Aşhanadaky printere 1 çorba, mangaldaky printere 1 lüle, bardaky printerde bolsa 2 suw taýýarlamak baradaky buýruk teksti çap ediler.</p>', '<p> Awtomatlaşdyrlan dürli hasap maksatnamalar we gurluşlar eýýäm ýurdumyzdaky uly söwda merkezlerinde giňden ulanylyp başlandy. Şeýle maksatnamalaryň milli dilimizde we milli manadymyz boýunça utgaşykly hasaplamalary amala aşyryp biljek görnüşini işläp taýýarlamak bolsa döwrebap meseleleriň biri bolup durýar. Islendik görnüşli söwda merkezleriniň işini dolandyrmaga, dürli hasaplamalary amala aşyrmaga ýardam berjek “Hasapçy” maksatnamasynyň, şeýle hem, naharhanalarda we kafelerde söwda işiniň awtomatlaşdyrylmagy, müşderi hyzmatlarynyň ýeňilleşdirilmegi maksady bilen taýýarlanan “Aşpez hasap” maksatnamasynyň taýýarlanylmagy hem hut şol maksada gönükdirlendir.</p> 							<p>Bu maksatnamalaryň esasy mümkinçilikleri aşakdakylardyr:</p> 							<p>•	Harytlaryň ammarda galan mukdaryny hasaplamak;</p> 							<p>•	Ýazga haryt bermek we beýleki algy-bergi amallaryny dolandyrmak;</p> 							<p>•	Mukdary gutaran ýa-da azalan harytlary anyklamak;</p> 							<p>•	Barkodsyz harytlara barkod çap etmek;</p> 							<p>•	Müşderilere hasap çek çap etmek;</p> 							<p>•	Harytlara toplumlaýyn arzanladyş ýa-da gymmatladyş yglan etmek we toplumlaýyn baha üýtgetmeler;</p> 							<p>•	Lokal torda birnäçe kompýuterde programmany işletmek we kassir hukuklaryny administrator tarapyndan dolandyrmak;</p> 							<p>•	Internet ulgamy arkaly birnäçe nokatdaky dükanlary bir binýatda \"birikdirmek\";</p> 							<p>•	Ýörite SIM kartaly modemi kompýutere birikdirmek arkaly müşderilere, algydarlara, şeýle-de islendik belgä sms ugratmak;</p> 						 							<br> 							<p>\"Aşpez Hasap\" programmasy naharhanalar üçin niýetlenip, ol “Hasapçy” maksatnamasynda agzalan mümkinçilikleriň ählisini diýen ýaly özünde jemleýär. Olardan başga bolsa bu maksatnamanyň şu aşakdaky artykmaçlyklary bar:</p> 							<p>•	Naharyň   girizilen  düzümine görä, her satylan porsiýa  naharyň düzümine düşýän harydyň degişli mukdaryny awtomatiki ammaryň galyndy hasabyndan aýyrmak;</p> 							<p>•	Birnäçe çek printer gurnamak we degişli bölümlere degişli nahar sargyt edilende olary taýýarlamak buýrugyny degişli printere ibermek.</p> 													<br> 							<p>Meselem: Aşhanada, barda we daşardaky mangalda printer gurnalan. Müşderi 1 sany çorba, 1 sany lüle, we 2 sany suw sargyt edende, Aşhanadaky printere 1 çorba, mangaldaky printere 1 lüle, bardaky printerde bolsa 2 suw taýýarlamak baradaky buýruk teksti çap ediler.</p>', 'backend/patent1/1646649503.png', '2022-03-07 18:38:23', '2022-03-07 18:38:23'),
(5, 'backend/patent/1646649997.jpeg', 'Mugallymyň hususy otagy (MHO)', 'Личный кабинет преподавателя (ЛКП)', 'Teacher\'s personal account (TPA)', 'Batyr Hançaýew', 'Батыр Ханчаев', 'Batyr Hanchayev', 'Hünärmen', 'Специалист', 'Specialist', '<p> Sanly bilim giňişligi – okatmagyň subýektleriniň, maglumatyň mazmunynyň we okatmagyň hem-de üznüksiz hünär kämilleşdiriş ulgamynyň ähli gatnaşyjylarynyň bilim maksatlary üçin döredilýän we ulanylýan lokal, korporatiw we global kompýuter torlarynyň kommunikasion mümkinçilikleriniň jemidir. Sanly bilim giňişligi okuw prosesiniň ähli gatnaşyjylarynyň netijeli aragatnaşygyny üpjün etmek üçin döredilýär we ösdürilýär. Mugallymyň, tor administratorynyň we bilim obýektiniň aragatnaşygy bolmazdan sanly bilim giňişliginiň hereket etmegi mümkin däldir.</p> 							<p>Türkmenistanyň Mejlisiniň 2020-nji ýylyň 14-nji martynda geçiren altynjy çagyryşynyň dokuzynjy maslahatynda kabul edilen “Elektron resminama, elektron resminama dolanşygy we sanly hyzmatlar hakynda” Kanunyň esasynda  ýokary okuw mekdebiniň içki torunda, ýagny intranetde elektron resminama dolanşygyny üpjün etmek maksady bilen “Mugallymyň hususy otagy” atly programma üpjünçiligi işlenip taýýarlandy.  </p> 							 							<p>Işlenip taýýarlanylan “Mugallymyň hususy otagy” programma üpjünçiligi ýokary okuw mekdebiniň çäginde işleýän içki torda işlemäge niýetlenendir we administrator her bir mugallyma öz hususy otagyna girmek üçin ýörite açarlary berýär. </p> 							<p>Administrator ýa-da ýokary okuw mekdebiniň ýolbaşçylary islendik mugallymyň hususy otagyna girip, mugallym baradaky maglumatlar we mugallymyň alyp barýan işleri bilen doly tanyşyp bilýär, şeýle hem diagrammada mugallymyň ýerine ýerirýän işleri boýunça işjeňligini görkezýän maglumaty görüp bilýär. Teklip edilýän programma üpjünçiligi aşakdaky işleri we hyzmatlary amala aşyrmaga mümkinçilik berýär.</p> 							<p>Esasy sahypa girip, aşakdaky maglumatlary  alyp bolýar: Mugallym barada ähli maglumatlary; Mugallymyň ylmy žurnallarynda, halkara ylmy-amaly maslahatlarynda, merkezi we welaýat gazetlerinde çap eden makalalary; Mugallymyň ýokary okuw mekdebinde alyp barýan ylmy-barlag işleri barada maglumatlary; Mugallymyň taýýarlan sapaklarynyň wideoýazgylary, tanyşdyryşlary we olaryň sanawy baradaky maglumatlary; Mugallymyň ýokary okuw mekdebiniň, welaýatyň we döwletiň çäklerinde geçirilen ylmy maslahatlardaky çykyşlary baradaky maglumatlary; Mugallymyň okadýan dersleri baradaky maglumatlary; Ýokary okuw mekdebiniň çäginde elektron hatlar bilen tanyşmak, hatlara jogap bermek we ýerine ýetirmek üçin ulanmak baradaky maglumatlary; Mugallymlar üçin bildirişler, görkezmeler we beýleki  maglumatlary we bir wagtda tora berigen mugallymlaryň arasynda çat hyzmatlaryny gurnamak; Mugallymyň neşirýatda çap eden okuw kitaplary we okuw gollanmalary bilen tanyşmak we olarynyň sanawy baradaky maglumatlary alyp bolýar.</p> 							<p>Programma üpjünçiligu C Sharp (C#) programmalaşdyryjy dilinde işlenip taýýarlanyldy.</p>', '<p>Цифровое образовательное пространство – это сумма коммуникационных возможностей локальных, корпоративных и глобальных сетей, создаваемых и используемых с целью совершенствовании системы непрерывной повышении квалификации субъектов образования и информационное содержание обучения. Цифровое образовательное пространство создается и развивается с целью обеспечения всех участников учебного процесса результативной связью.</p> 							<p>С целью обеспечения электронного документооборота в сети интранет согласно закона Туркменистана «Об электронном документе, электронном документообороте и цифровых услугах» принятый на 6-м созыве Меджлиса Туркменистана 14 марта 2020 года разработано программное обеспечение «Личный кабинет преподавателя» для использования в локальных сетях высших учебных заведений.</p> 							 							<p>       Разработанное программное обеспечение «Личный кабинет преподавателя» предназначено для использовании в локальных сетях учебного заведения и администратор разрешает использовать свой личный кабинет преподавателя, использую свой логин и пароль. </p> 							<p> Администратор и руководство учебного заведения имеет возможность входить  в  личный кабинет любого преподавателя и ознакомиться информацией о преподавателе, о работе выполненной преподавателем. А также может увидеть диаграмму рабочей активности преподавателя по различным направлениям деятельности. Предлагаемое программное обеспечение позволяет выполнить следующие работы и услуги:   получать полную  информацию о преподавателе; информацию о изданных статьях в научных журналах, в международных научно-практических конференциях, центральных и велаятских газетах; информацию о проводимой научно-исследовательской работе преподавателем, информацию о подготовленных преподавателем видео лекциях, презентациях и о их количестве; информацию о выступлениях преподавателя в конференциях проводимых в институте, в велаяте и в Ашгабаде; информацию о проводимым преподавателем дисциплин; возможность ознакомление с электронными письмами, подготовка ответов на письма, а также письма для выполнения в учебном процессе; возможность отправления объявлений и указаний для преподавателя, а также организация чада в онлайн режиме; получение информации о изданных преподавателем учебников и учебных пособий  и ознакомление этими книгами.</p> 							<p> Программное обеспечение «Личный кабинет преподавателя» полностью разработано на языке C Sharp (C#).</p>', '<p>Digital educational space is the sum of the communication capabilities of local, corporate and global networks created and used with the aim of improving the system of continuous training of subjects of education and the information content of training. Digital educational space is created and developed in order to provide all participants in the educational process with effective communication.</p> 							<p>In order to ensure electronic document management on the intranet according to the law of Turkmenistan “On electronic document, electronic document management and digital services” adopted at the 6th convocation of the Mejlis of Turkmenistan on March 14, 2020, the software “Teacher’s Personal Account” was developed for use in local networks of higher educational institutions.</p>							 							<p>The developed software “Teacher’s Personal Account” is intended for use in the local networks of the institution and the administrator allows you to use your personal teacher’s account, using your login and password.</p> 							 							<p>The administrator and leadership of the educational institution has the opportunity to enter the personal account of any teacher and get information about the teacher, about the work performed by the teacher. And also can see a diagram of the teacher’s work activity in various areas of activity. The proposed software allows you to perform the following work and services: receive complete information about the teacher; information about published articles in scientific journals, in international scientific and practical conferences, central and regional newspapers; information on the ongoing research work by the teacher, information on the video lectures prepared by the teacher, presentations and their number; information about the teacher’s speeches at conferences held at the institute, in the region and in Ashgabat; information about the teacher\'s disciplines; the opportunity to familiarize yourself with e-mails, prepare answers to letters, as well as letters for execution in the educational process; the ability to send announcements and instructions for the teacher, as well as the organization of the child online; obtaining information on textbooks and teaching aids published by a teacher and acquaintance with these books.</p> 							<p>The software \"Personal account of the teacher\" is fully developed in C Sharp (C #).</p>', 'backend/patent1/1646649997.jpeg', '2022-03-07 18:46:37', '2022-03-07 18:46:37'),
(6, 'backend/patent/1646650244.jpeg', 'Sanly işgärler bölümi (SIB)', 'Цифровое отдел кадров (ЦОК)', 'Digital personal department (DPD)', 'Kerimberdi Akmyradow', 'Керимберди Акмырадов', 'Kerimberdi Akmyradov', 'Programmaçy inžener', 'Инженер-программист', 'Programmer engineer', '<p> Bu taýýarlanan maksatnama edara-kärhanalarda işgärler bölüminde ýerine ýetirilýän birnäçe işleri awtomatlaşdyrmaga ýardam berer. Bu programma üpjünçiliginiň aşakdaky ýaly mümkinçilikleri bardyr:</p> 							<p>•	Işgärler hakyndaky maglumatlar binýadyny döretmek;</p> 							<p>•	Maglumatlar binýadynyň içinden gözleg we idäp tapmak ýeňillikleri. Bir ýa-da birnäçe işgär hakyndaky maglumatlary tiz tapmak üçin bu hakdaky belli bolan bölek setirleri aralary boşluk (probel) bilen ýazmak ýeterlik;</p> 							<p>•	Işgärleriň maglumatnamasyny taýýarlamak we dolandyrmak;</p> 							<p>•	Zähmet depderçesiniň elektron görnüşini dolandyrmak;</p> 							<p>•	Iş sagatlary we baýramçylyklary, rugsatlary hem-de boş iş günleri hasaba almak netijesinde, tabel hasaplamalaryny taýýarlamak;</p> 							<p>•	Işgäri başga wezipä geçirmek ýa-da işden çykarmak;</p> 							<p>•	Işden çykan işgärleriň arhiwini döretmek we islendik wagt yzyna işe almak;</p> 							<p>•	Işgäriň hasabyna islendik elektron resminamany (maglumatnama, surat, wideo, alan üstünlikleri we temmileri hakyndaky resminamanyň skaner nusgasy we ş.m) berkidip, islendik wagt görmek;</p> 							<p>•	Maglumatlar binýadynyň ätiýaçlyk göçürmesini almak we beýleki käbir howpsuzlyk çäreleri;</p> 							<p>•	Lokal torda birnäçe ulanyjy boýunça programmada utgaşykly işlemek.</p> 						 							<br>  <br> 				 <h4 style=\"text-align:right;\"> Awtor: </h4> 				 <h5 style=\"text-align:right;\"> Kerimberdi Akmyradow </h5>', '<p> Bu taýýarlanan maksatnama edara-kärhanalarda işgärler bölüminde ýerine ýetirilýän birnäçe işleri awtomatlaşdyrmaga ýardam berer. Bu programma üpjünçiliginiň aşakdaky ýaly mümkinçilikleri bardyr:</p> 							<p>•	Işgärler hakyndaky maglumatlar binýadyny döretmek;</p> 							<p>•	Maglumatlar binýadynyň içinden gözleg we idäp tapmak ýeňillikleri. Bir ýa-da birnäçe işgär hakyndaky maglumatlary tiz tapmak üçin bu hakdaky belli bolan bölek setirleri aralary boşluk (probel) bilen ýazmak ýeterlik;</p> 							<p>•	Işgärleriň maglumatnamasyny taýýarlamak we dolandyrmak;</p> 							<p>•	Zähmet depderçesiniň elektron görnüşini dolandyrmak;</p> 							<p>•	Iş sagatlary we baýramçylyklary, rugsatlary hem-de boş iş günleri hasaba almak netijesinde, tabel hasaplamalaryny taýýarlamak;</p> 							<p>•	Işgäri başga wezipä geçirmek ýa-da işden çykarmak;</p> 							<p>•	Işden çykan işgärleriň arhiwini döretmek we islendik wagt yzyna işe almak;</p> 							<p>•	Işgäriň hasabyna islendik elektron resminamany (maglumatnama, surat, wideo, alan üstünlikleri we temmileri hakyndaky resminamanyň skaner nusgasy we ş.m) berkidip, islendik wagt görmek;</p> 							<p>•	Maglumatlar binýadynyň ätiýaçlyk göçürmesini almak we beýleki käbir howpsuzlyk çäreleri;</p> 							<p>•	Lokal torda birnäçe ulanyjy boýunça programmada utgaşykly işlemek.</p> 						 							<br>  <br> 				 <h4 style=\"text-align:right;\"> Awtor: </h4> 				 <h5 style=\"text-align:right;\"> Kerimberdi Akmyradow </h5>', '<p> Bu taýýarlanan maksatnama edara-kärhanalarda işgärler bölüminde ýerine ýetirilýän birnäçe işleri awtomatlaşdyrmaga ýardam berer. Bu programma üpjünçiliginiň aşakdaky ýaly mümkinçilikleri bardyr:</p> 							<p>•	Işgärler hakyndaky maglumatlar binýadyny döretmek;</p> 							<p>•	Maglumatlar binýadynyň içinden gözleg we idäp tapmak ýeňillikleri. Bir ýa-da birnäçe işgär hakyndaky maglumatlary tiz tapmak üçin bu hakdaky belli bolan bölek setirleri aralary boşluk (probel) bilen ýazmak ýeterlik;</p> 							<p>•	Işgärleriň maglumatnamasyny taýýarlamak we dolandyrmak;</p> 							<p>•	Zähmet depderçesiniň elektron görnüşini dolandyrmak;</p> 							<p>•	Iş sagatlary we baýramçylyklary, rugsatlary hem-de boş iş günleri hasaba almak netijesinde, tabel hasaplamalaryny taýýarlamak;</p> 							<p>•	Işgäri başga wezipä geçirmek ýa-da işden çykarmak;</p> 							<p>•	Işden çykan işgärleriň arhiwini döretmek we islendik wagt yzyna işe almak;</p> 							<p>•	Işgäriň hasabyna islendik elektron resminamany (maglumatnama, surat, wideo, alan üstünlikleri we temmileri hakyndaky resminamanyň skaner nusgasy we ş.m) berkidip, islendik wagt görmek;</p> 							<p>•	Maglumatlar binýadynyň ätiýaçlyk göçürmesini almak we beýleki käbir howpsuzlyk çäreleri;</p> 							<p>•	Lokal torda birnäçe ulanyjy boýunça programmada utgaşykly işlemek.</p> 						 							<br>  <br> 				 <h4 style=\"text-align:right;\"> Awtor: </h4> 				 <h5 style=\"text-align:right;\"> Kerimberdi Akmyradow </h5>', 'backend/patent1/1646650244.jpeg', '2022-03-07 18:50:44', '2022-03-07 18:50:44'),
(7, 'backend/patent/1646798486.jpeg', 'Sanly ýokary okuw mekdebi (SÝOM)', 'Цифровое высшее учебное заведение (ЦВУЗ)', 'Digital high school (DHS)', 'Batyr Hançaýew', 'Батыр Ханчаев', 'Batyr Hanchayev', 'Hünärmen', 'Специалист', 'Specialist', '<p>Häzirki zaman ýokary okuw mekdebiniň işi köpugurly häsiýete eýedir  we maglumat tehnologiýalarynyň esasynda ýokary okuw mekdebini dolandyrmagyň bitewi ulgamyny döretmek çylşyrymly toplumlaýyn mesele bolup, köp sanly guramaçylyk we tehnologiki meseleleri çözmegi talap edýär.</p> 							<p>Sanly ýokary okuw mekdebi häzirki zaman dolandyryş ulgamy bolup, ýokary okuw mekdebiniň işini aralykdan dolandyrmaga mümkinçilik berýär. Ýokary okuw mekdebinde maglumatlary sanly görnüşe geçirmeklik işlerini iki ugurda alyp barmak bolýar, ýagny administratiw- dolandyryş we bilim bermek ugurlarynda alnyp barylýan işleri almak bolar. Ýokary netejelilikli dolandyryş ulgamyny döretmekde gazanylýan üstünlikler gönüden-göni usulyýet üpjünçiligine, işleriň başlangyç tapgyrynda geçirilen seljerme işlerine we ýokary okuw mekdebiniň düzüm bölümleriniň özara baglanyşygyna hem-de olaryň işleriniň wajyp ugurlaryny aýratyn bölüp aýyrmaklyga, şeýle hem okuw işleriň we olaryň görkezijileriniň sebäp baglanyşygyny içgin öwrenilmegine we işlenilmegine baglydyr.</p> 							<p>Işlenip taýýarlanylan programma üpjünçiligi aşakdaky işleri we hyzmatlary amala aşyrmaga mümkinçilik berýär:</p> 							<p>•	Talyplar üçin hyzmatlar: okuwyň dowamynda talybyň okuw sapaklaryna ýetişigi baradaky maglumatlar, okuw meýilnamalary, okuw üçin tölegleri amala aşyrmak gerekdigi baradaky habarlar, okuw üçin tölegleri kredit kartlaryň üsti bilen amala aşyrmak bolýandygy baradaky maglumatlar;</p> 							<p>•	Mugallymlar üçin hyzmatlar: Mugallymlara talyplaryň sanawy bilen tanyşmak mümkinçiligi, öz okuw ýylynda garaşylýan talyplar barada maglumatlary almak, okuw ýylyndaky talyplaryň ýetişigi bilen tanyşmak, on-laýn režiminde talyplaryň ýetişigine baha bermek we mugallymlaryň hususy meýilnamalaryny matrisa görnüşinde işläp taýýarlamak;</p> 							<p>•	Önümçilik edaralary bilen hyzmatdaşlyk etmek, degişli hünärleriň uçurymlary bilen önümçilik kärhanalarynyň arasynda özara baglanyşygy gurnamak;</p> 							<p>•	Maliýe serişdelerini meýilleşdirmek we olaryň sarp edilişine gözegçilik etmek, aktiwleri dolandyrmak, zähmet haklarynyň tölegleriniň amala aşyrylyşyna gözegçilik etmek, harytlary satyn almak hem-de hyzmatlar üçin tölegleri amala aşyrmak;</p> 							<p>•	Maliýe işlerini dolandyrmak, maliýe işleri boýunça hasabatlary taýýarlamak, maliýe resminamalaryny taýýarlamak we dolandyrmak;</p> 							<p>•	Işgärler düzümini dolandyrmak, her bir işgäriň zähmet işleriniň hasaba alnyşy, zähmet haklarynyň hasaplanylyşy, aýlyk zähmet haklaryna goşmaça tölegler, ähli wagtlarda işlän işgärler barada hasabat işlerini alyp barmak;</p> 							<p>•	Dalaşgärler üçin maglumatlar we hünäre ugrukdyryş işleri;</p> 							<p>•	Mugallymlar, talyplar we maliýe işleri barada hasabatlary işläp taýýarlamak.</p> 							<p>Programma üpjünçiligi C Sharp (C#) programmalaşdyryjy dilinde işlenip  taýýarlanyldy.</p>', '<p> Деятельность современного высшего учебного заведения носит многопрофильный характер, и создание единой системы управления вузом на основе информационных технологий является сложной комплексной задачей, требующей решения многих организационных и технологических задач.</p> 							<p>«Цифровое высшее учебное заведение» является одной из самых современных систем управления, позволяющей дистанционно контролировать все процессы в вузе. В работе вуза можно выделить два основных направления информатизации: административно-управленческий и образовательный. Успех создания эффективной системы управления напрямую зависит от методологической составляющей, от качества проведения начального анализа работы и взаимодействия всех подразделений вуза, выделения приоритетных направлений деятельности, тщательной проработки причинно-следственных связей между процессами и показателями».  </p> 							 							<p>Разработанная программа позволяет реализовать следующие функции и сервисы:</p> 							<p> •	Сервисы для студента: информация об академической успеваемости за весь срок обучения, учебный план, уведомления о необходимости выплат, возможность оплаты с помощью кредитных карт;</p> 							<p> •	Сервисы для преподавателя: возможность просмотра преподавателями списка студентов и листа ожидания своего курса, академической успеваемости студентов курса, онлайн выставление оценки в электронную зачетку студента, составления индивидуального расписания преподавателя в матричной форме;</p> 							<p> •	Сотрудничество с компаниями-работодателями, организация взаимодействия компаний и студентов-выпускников соответствующих специальностей;</p> 							<p> •	Планирование и отслеживание бюджета: управление активами, контроль выплат, приобретение товаров и сервисов;</p> 							<p>•	Управление финансовой деятельностью, генерация отчетов по финансовой деятельности, управление сопровождающей финансовой документацией; </p> 							<p>•	Управление персоналом, учет трудовой деятельности каждого сотрудника, расчет заработанной платы, система штрафов и поощрений, ведение истории сотрудников; </p> 							<p> •	Сервисы для абитуриентов: он-лайн регистрация для поступления в ВУЗ, назначение времени сдачи вступительных экзаменов, рассылка электронных писем с информацией о поступлении;</p> 							<p> •	Формирование отчетов по преподавателям, студентам, финансовому положению вуза.</p> 							<p> Программа разработана на языке программирования C Sharp (C#).</p>', '<p> The activities of a modern higher educational institution are multidisciplinary in nature, and the creation of a unified university management system based on information technology is a complex integrated task requiring the solution of many organizational and technological problems.</p> 							<p>\"Digital high school\" is one of the most advanced control systems that allows you to remotely control all processes in the university. In the work of the university, two main areas of informatization can be distinguished: administrative and educational and educational. The success of creating an effective management system directly depends on the methodological component, on the quality of the initial analysis of the work and interaction of all departments of the university, the identification of priority areas of activity, the careful study of causal relationships between processes and indicators.</p>							 							<p>The developed program allows you to implement the following functions and services:</p> 							 							<p> •	Services for the student: information on academic performance for the entire period of study, curriculum, notifications of the need for payments, the possibility of payment by credit card;</p> 							<p>•	Services for the teacher: the ability to view the teachers list of students and the waiting list of their course, academic student performance, on-line grading in the student’s electronic gradebook, compiling an individual teacher schedule in matrix form;</p> 							<p> •	Cooperation with employing companies, organization of interaction between companies and graduate students of relevant specialties;</p> 							<p>•	Budget planning and tracking: asset management, payment control, purchase of goods and services; </p> 							<p>•	Management of financial activities, generation of reports on financial activities, management of accompanying financial documents; </p> 							<p>•	HR management, accounting of labor activity of each employee, calculation of wages, fines and incentives, keeping a history of employees; </p> 							<p>•	Services for applicants: online registration for admission to the university, the appointment of entrance exams, the distribution of emails with information about admission; </p> 							<p> •	Reporting on teachers, students, financial situation of the university.</p> 							<p>The program is developed in the programming language C Sharp (C #). </p>', 'backend/patent1/1646798486.jpeg', '2022-03-09 12:01:26', '2022-03-09 12:01:26'),
(8, 'backend/patent/1646798977.jpeg', 'Ýylyň mugallymy - 2020', 'Учитель года – 2020', 'Teacher of the Year – 2020', 'Baýram Jumaýew', 'Байрам Джумаев', 'Bavram Jumayev', 'TUA kafedrasynyň müdiri', 'Заведующий кафедрой \"АТС\"', 'Head of department \"ATS\"', 'a', 'a', 'a', 'backend/patent1/1646798977.jpeg', '2022-03-09 12:09:37', '2022-03-09 12:09:37'),
(9, 'backend/patent/1646799182.jpeg', 'Sanly çözgüt - 2020', 'Цифровое решение – 2020', 'Digital Solution – 2020', 'Hançaýew Batyr', 'Батыр Ханчаев', 'Hanchayev Batyr', 'Mugallym', 'Преподаватель', 'Teacher', 'a', 'a', 'a', 'backend/patent1/1646799182.jpeg', '2022-03-09 12:13:03', '2022-03-09 12:13:03'),
(10, 'backend/patent/1646799272.jpeg', 'Sanly çözgüt - 2020', 'Цифровое решение – 2020', 'Digital Solution – 2020', 'Allanazarow Nurmuhammet', 'Нурмухаммет Алланазаров', 'Allanazarov Nurmuhammet', 'Mugallym', 'Преподаватель', 'Teacher', 'a', 'a', 'a', 'backend/patent1/1646799272.jpeg', '2022-03-09 12:14:33', '2022-03-09 12:14:33'),
(11, 'backend/patent/1646799442.jpeg', 'Elektrik energiýasyny sarp edijileriň bir penjire ulgamy', 'Система единого окна потребителей электрической энергии', 'Single vindov system for electricity consumers', 'Batyr Hançaýew', 'Батыр Ханчаев', 'Batyr Hanchayev', 'Hünärmen', 'Специалист', 'Specialist', '<p> Teklip edilýän iş programma üpjünçiligine degişli bolup, Elektroenergetika pudagynyň energogözegçilik gulluklarynda ulanmaklyk üçin niýetlenendir.  Gurluşy  boýunça bu ulgam iki bölekden ybarat bolup, sarp edijiniň penjiresinden we admin-operatoryň penjirelerinden durýar.</p> 							<p>Türkmenistanyň Energetika ministrliginiň “Maryenergo” önümçilik kärhanasynyň binýadynda “Elektrik energiýasyny sarp edijileriň bir penjire ulgamyny” işe girizmek meýilleşdirilýär. Bu ulgamyň esasynda bir penjire prinsipi boýunça Mary welaýatynyň elektrik energiýasyny sarp edijilerine hyzmat edýän toplumlaýyn ulgam dörediler.  Bu ulgam aşakda görkezilen maksatlary amala aşyrmak üçin döredilýär:</p> 							<p>•	Energokärhanalary bilen elektrik energiýasyny sarp edijileriň arasyndaky özara gatnaşyklaryň netijeliligini ýokarlandyrmak;</p> 							<p>•	Elektrik energiýasyny sarp edijilere hödürlenýär hyzmatlaryň hilini gowulandyrmak;</p> 							<p>•	Dürli derejedäki elektrik energiýasyny sarp edijiler bilen alnyp barylýan işleriň monitoringini we seljermesini amala aşyrmak.</p> 							 							<p>Mundan başga-da “bir penjire ulgamy” elektrik energiýasyny sarp edijiler bilen işlemekde esasy maglumatlar çeşmesi bolup hyzmat edýär we  sarp edijilerden gelýän ikilenç talaplary anyklamaga hem-de sarp edijiler bilen energokärhanasynyň arasynda döreýän düşünmezlikleri seljermäge, aradan aýyrmaga mümkinçilik berýär.</p> 						    <p>“Elektrik energiýasyny sarp edijileriň bir penjire ulgamy” aşakdaky mümkinçilikleri döredýär: </p>            					<p>•	Energokärhalary bilen elektrik energiýasyny sarp edileriň arasyndaky özara gatnaşyklaryň netijeliligini ýokarlandyrmaga;</p> 							<p>•	Elektrik energiýasyny sarp edijelere hödürlenýär hyzmatlaryň hilini gowulandyrmaga;</p> 							<p>•	Dürli derejedäki elektrik energiýasyny sarp edijiler bilen alnyp barylýan işleriň monitoringini we seljermesini amala aşyrmaga;</p> 							<p>•	Maglumatlar binýadynyň sanly formatyny döretmek;</p> 							<p>•	Döwlet hyzmatlaryny bermegiň işiniň awtomatizasiýasyny üpjün etmek;</p> 							<p>•	Elektron hyzmatlarynyň döwlet portalynyň üsti bilen berilýän döwlet hyzmatlary üçin elektron maglumatlarynyň ýeke-täk merkezleşdirilen biýnadyny döretmek;</p> 							<p>Programma üpjünçiligi C sharp (C#) programmalaşdyryjy dilinde işlenip taýýarlanyldy.</p>', '<p>Предлагаемая работа относится к программному обеспечению и может быть использовано в предприятиях энергонадзора электроэнергетической отрасли.  Программное обеспечение состоит из  единого окна для потребителя электрической энергии и окна админа-оператора. </p> 							<p>       На базе предприятия «Марыэнерго» Министерства энергетики Туркменистана будет создана система единого окна потребителей электрической энергии. На базе данной системы будет создана комплексная система  обслуживания потребителей электрической энергии Марыйской области по принципу «единого окна». Такая система создается с целью повышения эффективности взаимодействия энергопредприятий и потребителей электрической энергии, повышения    качества обслуживания клиентов, проведения мониторинга и анализа работы с потребителями всех уровней.</p> 							 							 						    <p>      Данная система единого окна потребителей электрической энергии позволяет: </p>            					<p>•	повышения эффективности взаимодействия энергопредприятий и потребителей электрической энергии;</p> 							<p>•	повышения    качества обслуживания клиентов;</p> 							<p>•	проведения мониторинга и анализа работы с потребителями всех уровней;</p> 							<p>•	создание базе данных в цифровом формате;</p> 							<p>•	обеспечение автоматизации государственных услуг;</p> 							<p>•	создание единой автоматизированной системы электронных услуг.</p> 							<p>Программное обеспечение полностью разработано на языке C Sharp (C#).</p>', '<p>The proposed work relates to software and can be used in energy supervision enterprises of the electric power industry. The software consists of a single window for the consumer of electrical energy and an administrator-operator window.</p> 							<p>       On the basis of the enterprise \"Maryenergo\" of the Ministry of Energy of Turkmenistan, a single window system for consumers of electric energy will be created. On the basis of this system, an integrated service system for consumers of electrical energy in Mary region will be created on the principle of a “single window”. Such a system is created with the aim of increasing the efficiency of interaction between energy companies and consumers of electrical energy, improving the quality of customer service, monitoring and analyzing work with consumers at all levels.</p> 							 							 						    <p>      This single window system for electricity consumers allows: </p>            					<p>•	increasing the efficiency of interaction between energy companies and consumers of electrical energy;</p> 							<p>•	improving the quality of customer service;</p> 							<p>•	monitoring and analysis of work with consumers of all levels;</p> 							<p>•	creation of a database in digital format;</p> 							<p>•	provision of automation of public services;</p> 							<p>•	creation of a unified automated system of electronic services.</p> 							<p>The software is fully developed in C Sharp (C #) language.</p>', 'backend/patent1/1646799442.jpeg', '2022-03-09 12:17:22', '2022-03-09 12:17:22'),
(12, 'backend/patent/1646799540.jpeg', 'Kitaphana dolandyryş ulgamy', 'Система управления библиотекой', 'Library management system', 'Arslan Agaýew', 'Арслан Агаев', 'Arslan Agayev', 'Mugallym', 'Преподаватель', 'Teacher', 'a', 'a', 'a', 'backend/patent1/1646799540.jpeg', '2022-03-09 12:19:01', '2022-03-09 12:19:01'),
(13, 'backend/patent/1646799642.jpeg', 'Ýel elektrik stansiýasyny taslamagyň sanly ulgamy', 'Цифровая система проектирования ветроэлектрической станции (ЦСПВС)', 'Digital Wind Farm Design System (DWFDS)', 'Nurmuhammet Allanazarow', 'Нурмухаммет Алланазаров', 'Nurmuhammet Allanazarov', 'Hünärmen', 'Специалист', 'Specialist', 'a', 'a', 'a', 'backend/patent1/1646799642.jpeg', '2022-03-09 12:20:42', '2022-03-09 12:20:42'),
(14, 'backend/patent/1646799833.jpeg', 'Sanly innowasiýalar - 2021ý.', 'Цифровые инновации - 2021г.', 'Digital innovations - 2021', 'Geldiýew Begli', 'Гелдиев Бегли', 'Geldiyev Begli', 'Talyp', 'Студент', 'Student', 'a', 'a', 'a', 'backend/patent1/1646799833.jpeg', '2022-03-09 12:23:53', '2022-03-09 12:23:53'),
(15, 'backend/patent/1646799920.jpeg', 'Elektron zähmet depderçe', 'Электронная трудовая книжка', 'Electronic employment record', 'Hançaýew Batyr Akmuhammedowiç', 'Ханчаев Батыр Акмухаммедович', 'Hanchayev Batyr Akmuhammedovich', 'Hünärmen', 'Специалист', 'Specialist', 'a', 'a', 'a', 'backend/patent1/1646799920.jpeg', '2022-03-09 12:25:21', '2022-03-09 12:25:21');

-- --------------------------------------------------------

--
-- Структура таблицы `olimps`
--

CREATE TABLE `olimps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `olimp_at_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `olimp_at_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `olimp_at_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `olimps`
--

INSERT INTO `olimps` (`id`, `olimp_at_tm`, `olimp_at_ru`, `olimp_at_en`, `created_at`, `updated_at`) VALUES
(3, 'Türkmenistanyň Döwlet energetika institutynyň talyp ýaşlary 2020-nji ýylyň 6-njy noýabrynda Ekologiýa dersinden geçirilen Açyk halkara internet olimpiadasynyň (OIIO) jemleýji tapgyryna gatnaşdyrlar. Onuň netijeleri boýunça institutymyzyň talyplary aşakdaky baýrakly orunlara mynasyp boldular:', '6 ноября 2020 года студенты Государственного энергетического института Туркменистана приняли участие в финальном этапе Открытой международной интернет олимпиады (OIIO) по Экологии. В результате студенты нашего института заняли следующие призовые места:', 'On November 6, 2020, students of the State Energy Institute of Turkmenistan took part in the final round of the Open International Internet Olympiad (OIIO) in Ecology. As a result, the students of our institute won the following prizes:', '2022-03-09 12:31:02', '2022-03-09 12:31:02'),
(4, 'Türkmenistanyň Döwlet energetika institutynyň talyp ýaşlary 2020-nji ýylyň 25-26-njy dekabrynda Halkara ynsanperwer ylymlary we ösüş uniwersitetiniň gurnamagynda Ykdysadyýet we Filosofiýa dersleri boýunça geçirilen Açyk internet olimpiadasyna gatnaşdylar. Onuň netijeleri boýunça institutymyzyň talyplary aşakdaky baýrakly orunlara mynasyp boldular:', '25-26 декабря 2020 года студенты Государственного энергетического института Туркменистана приняли участие в Открытой интернет олимпиаде по Экономике и Философии, организованной Международным университетом гуманитарных наук и развития. В результате студенты нашего института заняли следующие призовые места:', 'On December 25-26, 2020, students of the State Energy Institute of Turkmenistan took part in the Open Internet Olympiad in Economics and Philosophy, organized by the International University for the Humanities and Development. As a result, the students of our institute von the folloving prizes:', '2022-03-09 12:44:12', '2022-03-09 12:44:12');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pro_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pos`
--

CREATE TABLE `pos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `talyps`
--

CREATE TABLE `talyps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yarys_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `talyps`
--

INSERT INTO `talyps` (`id`, `photo`, `at_tm`, `at_ru`, `at_en`, `kurs_tm`, `kurs_ru`, `kurs_en`, `ders_tm`, `ders_ru`, `ders_en`, `yarys_id`, `created_at`, `updated_at`) VALUES
(5, 'backend/talyp/1646802766.jpeg', 'Rüstemow Kakajan', 'Рустемов Какаджан', 'Rustemov Kakajan', 'III ýyl talyp', 'III ýyl talyp', 'III ýyl talyp', '\"Fizika\" dersi boýunça I orun', 'I место по Физике', 'Place I in Physics', '5', '2022-03-09 13:12:46', '2022-03-09 13:12:46'),
(6, 'backend/talyp/1646803205.jpeg', 'Aýdogdyýewa Aýlar', 'Айдогдыева Айлар', 'Aydogdyyeva Aylar', 'IV ýyl talyp', 'IV ýyl talyp', 'IV ýyl talyp', '\"Rus dili\" dersi boýunça I orun', 'I место по Русскому языку', 'Place I in Russian Language', '5', '2022-03-09 13:20:05', '2022-03-09 13:20:05'),
(7, 'backend/talyp/1646803247.jpeg', 'Agaýewa Maral', 'Агаева Марал', 'Agayeva Maral', 'IV ýyl talyp', 'IV ýyl talyp', 'IV ýyl talyp', '\"Türkmen dili\" dersi boýunça I orun', 'I место по Туркменскому языку', 'Place I in Turkmen Language', '5', '2022-03-09 13:20:47', '2022-03-09 13:20:47');

-- --------------------------------------------------------

--
-- Структура таблицы `tazeliks`
--

CREATE TABLE `tazeliks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gun` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yyl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusundiris_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tazelik_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tazelik_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tazelik_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tazeliks`
--

INSERT INTO `tazeliks` (`id`, `gun`, `ay`, `yyl`, `tema_tm`, `tema_ru`, `tema_en`, `dusundiris_tm`, `dusundiris_ru`, `dusundiris_en`, `tazelik_tm`, `tazelik_ru`, `tazelik_en`, `photo`, `created_at`, `updated_at`) VALUES
(1, '10', '10', '10', 'tyttt', 'tttt', 'ttt', 'tttt', 'ttt', 'tttttt', 'tttttt', 'ttt', 'tttt', 'backend/tazelik/1643427924.jpeg', '2022-01-28 22:45:24', '2022-01-28 22:45:24'),
(2, '23', '12', '21', 'aaaa', 'aaaa', 'aaaa', 'bbbb', 'bbbb', 'bbb', 'wwwww', 'wwww', 'wwwww', 'backend/tazelik/1644216029.jpeg', '2022-02-07 14:40:30', '2022-02-07 14:40:30'),
(3, '23', '21', '43', 'sdfsda fsd fa sd fsd afsdfasdf asdfasdf23423 32423', 'fasdf', 'fasdfasd', 'adsfasdfas', 'asdfasdfasdf', 'sdfasdfasdf', 'fasdfasdfasdfasd', 'asdfasdfasdfasd', 'fasdfasdfa', 'backend/tazelik/1646031532.jpeg', '2022-02-28 14:58:52', '2022-02-28 14:58:52');

-- --------------------------------------------------------

--
-- Структура таблицы `temafiles`
--

CREATE TABLE `temafiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temafile_at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temafile_at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temafile_at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temafile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `temafiles`
--

INSERT INTO `temafiles` (`id`, `temafile_at_tm`, `temafile_at_ru`, `temafile_at_en`, `tema_id`, `temafile`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '3', '3', 'backend/temafile/1646388225.jpg', '2022-03-04 18:03:45', '2022-03-04 18:03:45'),
(7, '• Iş okuw maksatnamasy', '• Учебная программа', '• Course curriculum', '8', 'backend/temafile/1646804775.pdf', '2022-03-09 13:46:15', '2022-03-09 13:46:15'),
(8, '• Sözlük', '• Глоссарий', '• Glossary', '8', 'backend/temafile/1646804870.pdf', '2022-03-09 13:47:50', '2022-03-09 13:47:50');

-- --------------------------------------------------------

--
-- Структура таблицы `temas`
--

CREATE TABLE `temas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tema_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `temas`
--

INSERT INTO `temas` (`id`, `tema_tm`, `tema_ru`, `tema_en`, `ders_id`, `created_at`, `updated_at`) VALUES
(8, 'Goşmaça çeşmeler', 'Дополнительные материалы', 'Supplementary materials', '2', '2022-03-09 13:30:11', '2022-03-09 13:30:11'),
(9, 'dfgdf', 'gdfg', 'dfgdfg', '2', '2022-03-09 13:48:19', '2022-03-09 13:48:19');

-- --------------------------------------------------------

--
-- Структура таблицы `ugurs`
--

CREATE TABLE `ugurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ugur_at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ugur_at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ugur_at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ugurs`
--

INSERT INTO `ugurs` (`id`, `ugur_at_tm`, `ugur_at_ru`, `ugur_at_en`, `created_at`, `updated_at`) VALUES
(3, 'VII. BAKALAWR TAÝÝARLYK UGRY BOÝUNÇA:', 'VII. НАПРАВЛЕНИЯ ПОДГОТОВКИ БАКАЛАВРОВ:', 'VII. IN BACHELOR\'S DEGREE:', '2022-03-07 15:50:58', '2022-03-07 15:50:58'),
(4, 'VI. TEHNIKI ULGAMLARDA DOLANDYRYŞ:', 'VI. УПРАВЛЕНИЕ В  ТЕХНИЧЕСКИХ СИСТЕМАХ:', 'VI. MANAGEMENT AT THE TECHNICAL SYSTEMS:', '2022-03-07 17:32:59', '2022-03-07 17:32:59'),
(5, 'V. MAGLUMAT HOWPSUZLYGY:', 'V. ИНФОРМАЦИОННАЯ БЕЗОПАСНОСТЬ:', 'V. INFORMATION SECURITY:', '2022-03-07 17:34:27', '2022-03-07 17:34:27'),
(6, 'IV. ELEKTRONIKA, RADIOTEHNIKA WE ARAGATNAŞYK ULGAMLARY:', 'IV. ЭЛЕКТРОНИКА, РАДИОТЕХНИКА И СИСТЕМЫ СВЯЗИ:', 'IV. ELECTRONICS, RADIO ENGINEERING AND COMMUNICATION SYSTEMS:', '2022-03-07 17:36:15', '2022-03-07 17:36:15'),
(7, 'III. YKDYSADYÝET WE DOLANDYRYŞ:', 'III. ЭКОНОМИКА И УПРАВЛЕНИЕ:', 'III. ECONOMY AND MANAGEMENT:', '2022-03-07 17:38:35', '2022-03-07 17:38:35'),
(8, 'II. MAŞYNGURLUŞYK:', 'II. МАШИНОСТРОЕНИЕ:', 'II. MECHANICAL ENGINEERING:', '2022-03-07 17:40:39', '2022-03-07 17:40:39'),
(9, 'I. ELEKTRO WE ÝYLYLYK ENERGETIKASY:', 'I. ЭЛЕКТРО И ТЕПЛОЭНЕРГЕТИКА:', 'I. ELECTRICAL AND HEAT POWER ENGINEERING:', '2022-03-07 18:00:27', '2022-03-07 18:00:27');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'TDEI', 'kgullyewprog@gmail.com', NULL, '$2y$10$I4ybPsJVjIN2l2AaOb/nae2RDXYsVnoo2i6k1RfpLY8koIKGr1aAK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `ustuns`
--

CREATE TABLE `ustuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `talyp_at_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `talyp_at_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `talyp_at_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orun_tm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orun_ru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orun_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olimp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ustuns`
--

INSERT INTO `ustuns` (`id`, `photo`, `talyp_at_tm`, `talyp_at_ru`, `talyp_at_en`, `ders_tm`, `ders_ru`, `ders_en`, `orun_tm`, `orun_ru`, `orun_en`, `olimp_id`, `created_at`, `updated_at`) VALUES
(3, 'backend/ustun/1646800352.png', 'Döwranow Şöhrat', 'Довранов Шохрат', 'Dovranov Shohrat', 'Ekologiýa', 'Экология', 'Ecology', 'Bürünç', 'Бронзовая медаль', 'Bronze', '3', '2022-03-09 12:32:32', '2022-03-09 12:32:32'),
(4, 'backend/ustun/1646800417.png', 'Jumanazarowa Madina', 'Джуманазарова Мадина', 'Jumanazarova Madina', 'Ekologiýa', 'Экология', 'Ecology', 'Bürünç', 'Бронзовая медаль', 'Bronze', '3', '2022-03-09 12:33:37', '2022-03-09 12:33:37'),
(5, 'backend/ustun/1646800470.png', 'Altyýew Gurban', 'Алтыев Гурбан', 'Altyyev Gurban', 'Ekologiýa', 'Экология', 'Ecology', 'Bürünç', 'Бронзовая медаль', 'Bronze', '3', '2022-03-09 12:34:30', '2022-03-09 12:34:30'),
(6, 'backend/ustun/1646801116.png', 'Hamraýew Alyşer', 'Хамраев Алышер', 'Hamrayev Alysher', 'Filosofiýa', 'Философия', 'Philosophy', '3-nji orun', 'III место', '3rd place', '4', '2022-03-09 12:45:16', '2022-03-09 12:45:16'),
(7, 'backend/ustun/1646801163.png', 'Mämmedowa Meňli', 'Маммедова Менли', 'Mammedova Menli', 'Filosofiýa', 'Философия', 'Philosophy', '3-nji orun', 'III место', '3rd place', '4', '2022-03-09 12:46:03', '2022-03-09 12:46:03'),
(8, 'backend/ustun/1646801205.png', 'Myradowa Gülälek', 'Мырадова Гулулек', 'Myradova Gulalek', 'Filosofiýa', 'Философия', 'Philosophy', '3-nji orun', 'III место', '3rd place', '4', '2022-03-09 12:46:45', '2022-03-09 12:46:45'),
(9, 'backend/ustun/1646801250.png', 'Baýramowa Mähri', 'Байрамова Махри', 'Bayramova Mahri', 'Filosofiýa', 'Философия', 'Philosophy', '3-nji orun', 'III место', '3rd place', '4', '2022-03-09 12:47:30', '2022-03-09 12:47:30'),
(10, 'backend/ustun/1646801296.png', 'Atabaýewa Aýnabat', 'Атабаева Айнабат', 'Atabayeva Aynabat', 'Filosofiýa', 'Философия', 'Philosophy', '3-nji orun', 'III место', '3rd place', '4', '2022-03-09 12:48:16', '2022-03-09 12:48:16'),
(11, 'backend/ustun/1646801360.png', 'Azadowa Aýna', 'Азадова Айна', 'Azadova Ayna', 'Filosofiýa', 'Философия', 'Philosophy', '3-nji orun', 'III место', '3rd place', '4', '2022-03-09 12:49:20', '2022-03-09 12:49:20'),
(12, 'backend/ustun/1646801406.png', 'Ilbaýewa Gyzylgül', 'Илбаева Гызылгул', 'Ilbayeva Gyzylgul', 'Ykdysadyýet', 'Экономика', 'Economy', '1-nji orun', 'I место', '1st place', '4', '2022-03-09 12:50:06', '2022-03-09 12:50:06'),
(13, 'backend/ustun/1646801457.png', 'Jumanazarowa Madina', 'Джуманазарова Мадина', 'Jumanazarova Madina', 'Ykdysadyýet', 'Экономика', 'Economy', '1-nji orun', 'I место', '1st place', '4', '2022-03-09 12:50:57', '2022-03-09 12:50:57'),
(14, 'backend/ustun/1646801511.png', 'Kulyýewa Bibihajar', 'Кулыева Бибихаджар', 'Kulyyeva Bibihajar', 'Ykdysadyýet', 'Экономика', 'Economy', '1-nji orun', 'I место', '1st place', '4', '2022-03-09 12:51:51', '2022-03-09 12:51:51'),
(15, 'backend/ustun/1646801555.png', 'Nuryýew Merdan', 'Нурыев Мердан', 'Nuryyev Merdan', 'Ykdysadyýet', 'Экономика', 'Economy', '1-nji orun', 'I место', '1st place', '4', '2022-03-09 12:52:35', '2022-03-09 12:52:35');

-- --------------------------------------------------------

--
-- Структура таблицы `yaryts`
--

CREATE TABLE `yaryts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `yarys_at_tm` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `yarys_at_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `yarys_at_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `yaryts`
--

INSERT INTO `yaryts` (`id`, `yarys_at_tm`, `yarys_at_ru`, `yarys_at_en`, `created_at`, `updated_at`) VALUES
(5, '2019-2020-nji okuw ýylynda Türkmenistanyň ýokary okuw mekdepleriniň talyp ýaşlarynyň arasynda geçirilen Döwlet ders bäsleşiginde ýeňiji bolan talyplar:', 'Студенты-победители Государственной предметной олимпиады, проведенной среди студентов высших учебных заведений Туркменистана в 2019-2020 учебном году:', 'Students who won the State Subject Olympiad held among the students of the higher educational institutions of Turkmenistan in 2019-2020 academic year:', '2022-03-09 12:54:55', '2022-03-09 12:54:55');

-- --------------------------------------------------------

--
-- Структура таблицы `yyls`
--

CREATE TABLE `yyls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `yyl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `yyls`
--

INSERT INTO `yyls` (`id`, `yyl`, `created_at`, `updated_at`) VALUES
(3, '2022', '2022-03-03 18:29:16', '2022-03-03 18:29:16'),
(4, '2023', '2022-03-10 11:47:18', '2022-03-10 11:47:18'),
(5, '2024', '2022-03-11 16:27:09', '2022-03-11 16:27:09');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `baradas`
--
ALTER TABLE `baradas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `baslesiks`
--
ALTER TABLE `baslesiks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `eders`
--
ALTER TABLE `eders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `edusundiris`
--
ALTER TABLE `edusundiris`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `habars`
--
ALTER TABLE `habars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hyzmats`
--
ALTER TABLE `hyzmats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kafwebols`
--
ALTER TABLE `kafwebols`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mugustuns`
--
ALTER TABLE `mugustuns`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `olimps`
--
ALTER TABLE `olimps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `talyps`
--
ALTER TABLE `talyps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tazeliks`
--
ALTER TABLE `tazeliks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `temafiles`
--
ALTER TABLE `temafiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ugurs`
--
ALTER TABLE `ugurs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `ustuns`
--
ALTER TABLE `ustuns`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yaryts`
--
ALTER TABLE `yaryts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yyls`
--
ALTER TABLE `yyls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `baradas`
--
ALTER TABLE `baradas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `baslesiks`
--
ALTER TABLE `baslesiks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eders`
--
ALTER TABLE `eders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `edusundiris`
--
ALTER TABLE `edusundiris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `extra`
--
ALTER TABLE `extra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `habars`
--
ALTER TABLE `habars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `hyzmats`
--
ALTER TABLE `hyzmats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `kafwebols`
--
ALTER TABLE `kafwebols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `mugustuns`
--
ALTER TABLE `mugustuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `olimps`
--
ALTER TABLE `olimps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pos`
--
ALTER TABLE `pos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `talyps`
--
ALTER TABLE `talyps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tazeliks`
--
ALTER TABLE `tazeliks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `temafiles`
--
ALTER TABLE `temafiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `temas`
--
ALTER TABLE `temas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `ugurs`
--
ALTER TABLE `ugurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `ustuns`
--
ALTER TABLE `ustuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `yaryts`
--
ALTER TABLE `yaryts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `yyls`
--
ALTER TABLE `yyls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
