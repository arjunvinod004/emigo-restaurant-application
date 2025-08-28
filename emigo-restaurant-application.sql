-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2025 at 09:02 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emigo-restaurant-application`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int NOT NULL,
  `category_name_ma` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_hi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc_ma` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc_en` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc_hi` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc_ar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_img` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_index` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_code`, `store_id`, `category_name_ma`, `category_name_en`, `category_name_hi`, `category_name_ar`, `category_desc_ma`, `category_desc_en`, `category_desc_hi`, `category_desc_ar`, `category_img`, `order_index`, `is_active`) VALUES
(2, '123', 0, 'സൂപ്പ്', 'Soup', 'शोरबा', 'حساء', 'സൂപ്പ് desc', 'Soup desc', 'शोरबा desc', 'حساء  desc', 'soup.png', 5, 1),
(4, 'Breakfast', 0, 'പ്രഭാതഭക്ഷണം', 'Breakfast', 'नाश्ता ', 'الفطور', 'പ്രഭാതഭക്ഷണം', 'Breakfast', 'नाश्ता ', 'الفطور', 'breakfast.png', 1, 1),
(6, '004', 0, ' ഉച്ചഭക്ഷണം', 'Lunch', 'दिन का खाना', 'غداء', 'ഉച്ചഭക്ഷണം desc', 'Lunch desc', ' दिन का खाना desc', 'غداء desc', 'lunch2.png', 8, 1),
(7, '008', 0, ' ഫ്രെഷ് ജ്യൂസ് ', 'Fresh Juice', 'ताज़ा जूस', 'عصير طازج', ' ഫ്രെഷ് ജ്യൂസ് ', 'Fresh Juice', 'ताज़ा जूस', 'عصير طازج', '6a859c6ce2a703e505386e55a5c4ea1d.png', 4, 1),
(8, 'mandhi', 0, ' മന്ദി', 'Mandhi', ' मंधी', 'المندي', ' മന്ദി എന്നത് യമൻ സ്വദേശിയായ പരമ്പരാഗത വിഭവമാണ്, സുഗന്ധമുള്ള ചോറും മൃദുവായ മാംസവും ഉപയോഗിച്ച് സാദ്ധ്യമാക്കുന്നത്. നിസ്സാരമായ തീയിൽ വേവിച്ചതിനാൽ മസാലകളുടെ രുചിയും സുഗന്ധവുമുള്ള മനോഹരമായ വിഭവമാണ് ഇത്', ' Mandi is a traditional Yemeni dish that combines fragrant rice with tender, slow-cooked meat. Infused with aromatic spices and cooked over low heat, this dish is known for its unique flavors and rich heritage', 'मंधी एक पारंपरिक यमनी व्यंजन है जिसमें खुशबूदार चावल और मसालेदार मांस का अनूठा मेल होता है। धीमी आंच पर पकाए गए मांस और चावल के साथ मसालों का स्वाद इसे विशेष बनाता है।', 'المندي هو طبق تقليدي يمني يجمع بين الأرز المتبل واللحم الطري المطهو ببطء. يتميز بنكهات التوابل العطرية وطريقة الطهي الفريدة على حرارة منخفضة.\r\n\r\n', '360_F_671041431_Wt34PRSFS1hxaVsnmsOXQigtoF55TpJC.png', 1, 1),
(9, 'madfoon', 0, 'മദ്‌ഫൂൺ', 'Madfoon', ' मदफून', 'المدفون', 'മദ്‌ഫൂൺ', 'Madfoon', ' मदफून', 'المدفون', 'meat-madfoon.png', 2, 1),
(10, 'mazabi', 0, ' മസ്ബി', 'Mazabi', 'मझबी ', 'للحم', 'മസ്ബി', 'Mazabi', 'मझबी ', 'للحم', '360_F_611704389_3h6UA692iFCCdWm6LxPtrRhqpEugnSF1.png', 3, 1),
(13, 'kebab', 0, ' കെബാബ്', 'Starters', 'कबाब', ' كباب ', ' കെബാബ്', 'Starters', 'कबाब', ' كباب ', 'lamb-shish-kebab-20-480x270.png', 6, 1),
(15, 'Chicken', 0, 'കോഴി', 'Chicken', 'मुर्गा', 'فرخة', 'കോഴി', 'Chicken', 'मुर्गा', 'فرخة', 'Simple-Chicken-Fry.png', 10, 1),
(16, 'vegetarian', 0, 'വെജിറ്റേറിയൻ', 'Vegetarian', 'शाकाहारी', 'دجاج بالفلفل الأسود', 'വെജിറ്റേറിയൻ', 'Vegetarian', 'शाकाहारी', 'دجاج بالفلفل الأسود', 'vegetables__TTW___CR1,0,2278,1282___SR1500,844___QL100_.png', 11, 1),
(17, 'rice', 0, 'അരി', 'Main course', 'चावल', 'المأكولات البحرية', 'അരി', 'Rice', 'चावल', 'المأكولات البحرية', 'Fish-Seafood-Analysis-Tentamus-2799x2099.png', 12, 1),
(18, 'beef and mutton', 0, ' ബീഫ് &  മട്ടൻ', 'Dessert', 'बीफ & मटन', 'المحمص & المحمص', ' ബീഫ് &  മട്ടൻ', 'Dessert', 'बीफ & मटन', 'المحمص & المحمص', 'l-intro-1697055279.png', 13, 1),
(19, 'Noodles', 0, 'അരിയും', 'Rice', ' चावल', 'والنودلز', 'അരിയും ', 'Rice and Noodles', 'चावल ', ' والنودلز', 'images_(8).png', 14, 1),
(20, 'Addons', 0, ' ആഡോണുകൾ', 'Addons', 'ऐड-ऑन', 'إضافات', 'ആഡോണുകൾ', 'Addons', 'ऐड-ऑन', 'إضافات', 'images_(9).png', 15, 1),
(21, 'Shakes and Smoothies', 0, 'ഷേക്കുകളും സ്മൂത്തികളും', 'Shakes and Smoothies', ' शेक और स्मूथीज़', 'المخفوقات والعصائر', 'ഷേക്കുകളും സ്മൂത്തികളും', 'Shakes and Smoothies', '\r\nशेक और स्मूथीज़', 'المخفوقات والعصائر', 'popcorn-smoothie-1800-1000_1610560619.png', 16, 1),
(22, 'biriyani', 0, 'ബിരിയാണി', 'Biriyani', 'बिरयानी', 'برياني', 'ബിരിയാണി', 'Biriyani', 'बिरयानी', 'برياني', 'chicken_mandhi.png', 17, 1),
(23, 'Combo', 0, 'കോമ്പോ', 'Combo', 'कॉम्बो', 'Combo Arabic', 'കോമ്പോ', 'Combo', 'कॉम्बो', 'Combo Arabic', '', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`) VALUES
(1, 1, 'Thiruvananthapuram'),
(2, 1, 'Kollam'),
(3, 2, 'Salem'),
(4, 2, 'Thirunelveli');

-- --------------------------------------------------------

--
-- Table structure for table `combo_items`
--

DROP TABLE IF EXISTS `combo_items`;
CREATE TABLE IF NOT EXISTS `combo_items` (
  `combo_item_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL COMMENT 'combo productid',
  `item_id` int NOT NULL COMMENT 'each combo itemid',
  `quantity` int NOT NULL,
  `store_id` int NOT NULL,
  PRIMARY KEY (`combo_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combo_items`
--

INSERT INTO `combo_items` (`combo_item_id`, `product_id`, `item_id`, `quantity`, `store_id`) VALUES
(2, 2, 11, 2, 41),
(7, 1, 12, 1, 41),
(6, 1, 3, 2, 41),
(8, 2, 10, 1, 41),
(10, 37, 40, 2, 55),
(11, 37, 39, 1, 55),
(14, 70, 73, 3, 41),
(15, 70, 72, 1, 41),
(17, 69, 72, 1, 41),
(18, 53, 50, 3, 41),
(19, 53, 113, 2, 41),
(20, 126, 39, 1, 41),
(21, 126, 127, 2, 41);

-- --------------------------------------------------------

--
-- Table structure for table `cookings`
--

DROP TABLE IF EXISTS `cookings`;
CREATE TABLE IF NOT EXISTS `cookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int DEFAULT NULL,
  `name_ma` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_hi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookings`
--

INSERT INTO `cookings` (`id`, `store_id`, `name_ma`, `name_en`, `name_hi`, `name_ar`, `is_active`) VALUES
(1, NULL, 'മസാലയില്ല', 'Non Spicy', 'बिना मसाले', 'غير حار', 1),
(2, NULL, 'കുറച്ച് മസാല', 'Less Spicy', 'कम मसालेदार', 'أقل حرارة', 1),
(4, NULL, 'നേരിയ മസാലകൾ', 'Mild spicy', 'हल्का मसालेदार', 'حار معتدل', 1),
(5, NULL, ' അധിക മസാല', 'Extra Masala', 'अतिरिक्त मसाला', 'ماسالا اضافية', 1),
(18, NULL, 'spicy masala', 'spicy masala', 'spicy masala', 'spicy masala', 1),
(17, NULL, 'extra spicy', 'extra spicy', 'extra spicy', 'extra spicy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL,
  `support_number` int NOT NULL,
  `support_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `name`, `code`, `currency`, `is_active`, `support_number`, `support_email`) VALUES
(28, 'Qatar', '471', 'ر.ق', 1, 0, ''),
(27, 'India', '91', '₹', 1, 0, ''),
(29, 'United Kingdom', '44', '£', 1, 0, ''),
(32, 'United Arab Emirates', 'UAE', 'د.إ', 1, 1234567890, 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `gender`, `age`, `username`, `password`, `address`, `is_active`) VALUES
(4, 'Catt berri', 'cattberri@gmail.com', '9845678908', '', 0, '', '', 'catt berri address', 1),
(5, 'Gcc ompp', 'gcc@gmail.com', '7012713312', '', 0, '', '', 'address', 1),
(6, 'vinu', 'vinu@gmail.com', '9847421081', '', 0, '', '', 'ddsd', 0),
(7, 'Petrojet', 'petrojet@gmail.com', '7012713312', '', 0, '', '', 'petrojet address', 1),
(8, 'Saipem', 'client@gmail.com', '9867465432', '', 0, '', '', 'dgfgdfgd', 1),
(9, 'Bpcl', 'gfdgfdg@gmail.com', '98674567453', '', 0, '', '', 'dfgdfgdfg', 1),
(10, 'NSH', 'nsh@gmail.com', '7012713312', '', 0, '', '', 'eweqweqwe', 1),
(11, 'GALAXY -1', 'galaxy1@gpda.com', '966573750807', '', 0, '', '', 'KHOBHAR, DAMMAM, SAUDI ARABIA', 1),
(19, 'Alan', 'alan@gmail.com', '7012713312', 'male', 25, 'alan', 'alan', 'alan address', 0),
(23, 'Rajesh', 'rajesh@gmail.com', '', '', 0, 'rajesh', '$2y$10$CnV1csrqxSHN9GJocEkuc.yAaGf9xLf4itqEbypbRZ.NXTWNwqYVG', '', 1),
(24, 'sivasankar', 'siva@gmail.com', '', '', 0, 'siva', '$2y$10$c8YdsqGVUx6VdtvvmR.z9.p3TbwhgxRuoGtdwH3kgslnAGNjJNqFS', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `holiday_date` date NOT NULL,
  `holiday_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `moduleid` int NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modulecode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'controller name started with small letter',
  `ordernumber` int NOT NULL COMMENT 'Display main menus with this order',
  `parent_id` int NOT NULL DEFAULT '0',
  `moduletype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `enable_add` int NOT NULL,
  `enable_edit` int NOT NULL,
  `enable_delete` int NOT NULL,
  `enable_view` int NOT NULL,
  `enable_approve` int NOT NULL,
  PRIMARY KEY (`moduleid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`moduleid`, `modulename`, `modulecode`, `ordernumber`, `parent_id`, `moduletype`, `icon`, `is_active`, `enable_add`, `enable_edit`, `enable_delete`, `enable_view`, `enable_approve`) VALUES
(1, 'Dashboard', 'admin/dashboard', 1, 0, 'Leftmenu', 'home', 1, 0, 0, 0, 1, 0),
(3, 'Role', 'admin/role', 2, 0, 'Leftmenu', 'check', 1, 1, 1, 1, 1, 0),
(4, 'Modules', 'module', 0, 0, 'Leftmenu', 'book', 0, 0, 0, 0, 0, 0),
(37, 'Client', 'admin/client', 4, 0, 'Leftmenu', 'user', 1, 1, 1, 1, 1, 0),
(40, 'Projects', 'project', 0, 0, 'Leftmenu', 'clipboard', 0, 1, 1, 1, 1, 0),
(41, 'ewww', 'eqweqweww', 0, 0, 'Leftmenu', 'qweqweww', 0, 0, 0, 0, 0, 0),
(42, 'Job types', 'jobs', 0, 58, 'Leftmenu', 'book', 1, 1, 1, 1, 1, 0),
(43, 'Projector', 'projector', 0, 58, 'Leftmenu', 'window-maximize', 1, 1, 1, 0, 1, 0),
(44, 'Staff', 'staff', 3, 0, 'Leftmenu', 'users', 1, 1, 1, 1, 1, 0),
(45, 'Plant', 'plant', 0, 46, 'Leftmenu', 'book', 1, 1, 1, 1, 1, 0),
(46, 'Vehicles', 'vehicle', 6, 0, 'Leftmenu', 'truck', 1, 0, 0, 0, 1, 0),
(47, 'Technicians', 'cordinator/technicians', 7, 0, 'Leftmenu', 'book', 1, 0, 0, 0, 1, 0),
(48, 'Punch', 'punch', 0, 0, 'Leftmenu', 'book', 1, 1, 0, 0, 0, 0),
(49, 'Vehicletype', 'vehicletype', 0, 46, '', '', 1, 1, 1, 1, 1, 0),
(50, 'Vehicle', 'vehicle', 0, 46, '', '', 1, 1, 1, 1, 1, 0),
(51, 'Drivers', 'cordinator/drivers', 8, 0, '', 'book', 1, 0, 0, 0, 1, 0),
(52, 'Task', 'cordinator/tasks', 5, 0, '', 'tasks', 1, 1, 1, 1, 1, 1),
(53, 'Consumables', '', 7, 0, '', 'book', 1, 0, 0, 0, 1, 0),
(54, 'Consumable', 'consumables', 0, 53, '', '', 1, 1, 1, 1, 1, 0),
(55, 'Stock', 'stock', 0, 53, '', 'book', 1, 1, 1, 1, 1, 0),
(56, 'Diameter', 'diameter', 0, 58, '', 'book', 1, 1, 1, 1, 1, 0),
(57, 'Wall thickness', 'wall_thickness', 0, 58, '', 'book', 1, 1, 1, 1, 1, 0),
(58, 'settings', '', 16, 0, '', 'cogs', 1, 0, 0, 0, 1, 0),
(59, 'Projector locations', 'projector/locations', 0, 58, '0', 'book', 1, 1, 1, 1, 1, 0),
(60, 'Requested Consumables', 'Consumables/requested', 0, 53, '', 'book', 1, 0, 0, 0, 1, 0),
(61, 'Reports', 'Reports', 17, 0, 'rr', 'book', 1, 0, 0, 0, 1, 0),
(62, 'Other Approvals', 'cordinator/approve', 18, 0, '', 'book', 1, 0, 0, 0, 1, 0),
(64, 'Timesheet Management', '', 0, 0, '', 'book', 1, 1, 1, 1, 1, 1),
(65, 'Upload Job Request', '', 0, 0, '', '', 1, 1, 0, 1, 1, 1),
(66, 'Upload Job Reports', '', 0, 0, '', '', 1, 1, 0, 1, 1, 1),
(67, 'Vehicle logs', 'Vehicle/logs', 0, 46, '', 'book', 1, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` int NOT NULL,
  `reciever` int NOT NULL,
  `created_date` date NOT NULL,
  `status` int NOT NULL COMMENT 'unread = 0 read=1',
  `task_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `message`, `sender`, `reciever`, `created_date`, `status`, `task_id`) VALUES
(3, 'work started', 'work message', 96, 81, '2023-05-06', 0, 9),
(4, 'Task Id- 3 started by 96', 'work message', 96, 0, '2023-05-22', 0, 3),
(5, 'Task Id- 3 started by Anoop', 'work message', 96, 81, '2023-05-22', 1, 3),
(6, 'Task Id- 3 ended by Anoop', 'work message', 96, 81, '2023-05-22', 1, 3),
(23, 'Task Id- 13 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 13),
(24, 'Task Id- 9 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 9),
(25, 'Task Id- 13 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 13),
(26, 'Task Id- 13 ended by Kripa', 'work message', 103, 50, '2023-05-29', 0, 13),
(27, 'Task Id- 13 ended by Kripa', 'work message', 103, 50, '2023-05-29', 0, 13),
(28, 'Task Id- 9 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 9),
(29, 'Task Id- 9 ended by Kripa', 'work message', 103, 50, '2023-05-29', 0, 9),
(30, 'Task Id- 13 ended by Kripa', 'work message', 103, 50, '2023-05-29', 0, 13),
(31, 'Task Id- 12 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 12),
(32, 'Task Id- 12 ended by Kripa', 'work message', 103, 50, '2023-05-29', 0, 12),
(33, 'Task Id- 14 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 14),
(34, 'Task Id- 11 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 11),
(35, 'Task Id- 11 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 11),
(36, 'Task Id- 11 started by Kripa', 'work message', 103, 50, '2023-05-29', 0, 11),
(37, 'Task Id- 11 ended by Kripa', 'work message', 103, 50, '2023-05-29', 0, 11),
(38, 'Task Id- 15 started by niza', 'work message', 105, 50, '2023-05-29', 0, 15),
(39, 'Task Id- 15 ended by niza', 'work message', 105, 50, '2023-05-29', 0, 15),
(40, 'Task Id- 15 started by niza', 'work message', 105, 50, '2023-05-29', 0, 15),
(41, 'Task Id- 15 ended by niza', 'work message', 105, 50, '2023-05-29', 0, 15),
(42, 'Task Id- 15 started by niza', 'work message', 105, 50, '2023-05-29', 0, 15),
(43, 'Task Id- 15 ended by niza', 'work message', 105, 50, '2023-05-29', 0, 15),
(44, 'Task Id- 17 started by vishnu', 'work message', 106, 50, '2023-06-19', 0, 17),
(45, 'Task Id- 18 started by Alvin', 'work message', 107, 50, '2023-06-19', 0, 18),
(46, 'Task Id- 22 started by Alvin', 'work message', 107, 50, '2023-06-26', 0, 22),
(47, 'Task Id- 22 ended by Alvin', 'work message', 107, 50, '2023-06-26', 0, 22),
(48, 'Task Id- 22 started by Alvin', 'work message', 107, 50, '2023-06-26', 0, 22),
(49, 'Task Id- 22 ended by Alvin', 'work message', 107, 50, '2023-06-26', 0, 22),
(50, 'Task Id- 27 started by vishnu k v', 'work message', 108, 50, '2023-06-28', 0, 27),
(51, 'Task Id- 28 started by vishnu', 'work message', 109, 50, '2023-07-03', 0, 28),
(52, 'Task Id- 28 started by niza', 'work message', 110, 50, '2023-07-03', 0, 28),
(53, 'Task Id- 53 started by vishnu', 'work message', 109, 50, '2023-07-11', 0, 53),
(54, 'Task Id- 53 ended by vishnu', 'work message', 109, 50, '2023-07-11', 0, 53),
(55, 'Task Id- 54 started by Manu', 'work message', 112, 50, '2023-07-11', 0, 54),
(56, 'Task Id- 56 started by Alvin', 'work message', 107, 50, '2023-07-12', 1, 56),
(57, 'Task Id- 56 ended by Alvin', 'work message', 107, 50, '2023-07-12', 0, 56),
(58, 'Task Id- 66 started by vishnu', 'work message', 109, 50, '2023-07-15', 0, 66),
(59, 'Task Id- 70 started by Alvin', 'work message', 107, 107, '2023-07-24', 0, 70),
(60, 'Task Id- 70 ended by Alvin', 'work message', 107, 107, '2023-07-24', 0, 70);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderno` int NOT NULL,
  `order_token` int NOT NULL DEFAULT '0' COMMENT 'Order token random generated number from db used for display like ####1234',
  `date` date NOT NULL,
  `store_id` int NOT NULL,
  `amount` double DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL DEFAULT '0',
  `is_paid` int NOT NULL COMMENT '1 = paid 0= unpaid',
  `is_approve` int NOT NULL DEFAULT '0',
  `approved_by` int NOT NULL DEFAULT '0' COMMENT 'Order approved user for getting reports',
  `table_id` int NOT NULL,
  `order_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` int NOT NULL DEFAULT '0' COMMENT '0 = pending \r\n1 = Approved\r\n2 = Cooking\r\n3 = Ready\r\n4 = delivered',
  `delivery_boy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `out_for_delivery_time` time DEFAULT NULL,
  `delivered_time` time DEFAULT NULL,
  `location` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modified_date` datetime DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `orderno`, `order_token`, `date`, `store_id`, `amount`, `tax`, `tax_amount`, `total_amount`, `is_paid`, `is_approve`, `approved_by`, `table_id`, `order_type`, `order_status`, `delivery_boy`, `customer_name`, `contact_number`, `time`, `out_for_delivery_time`, `delivered_time`, `location`, `payment_mode`, `modified_by`, `modified_date`, `created_by`, `created_date`) VALUES
(1, 1398230625, 1398, '2025-06-23', 41, 3380, 5, 169, 3549, 1, 0, 131, 4, 'D', 4, NULL, '', '', '0', NULL, '19:01:23', '', NULL, 1, '2025-06-23 19:01:23', 0, '0000-00-00 00:00:00'),
(2, 1399230625, 1399, '2025-06-23', 69, 150, 5, 7.5, 157.5, 1, 0, 190, 19, 'D', 4, NULL, '', '', '0', NULL, '19:15:45', '', NULL, 1, '2025-06-23 19:15:45', 0, '0000-00-00 00:00:00'),
(3, 1400240625, 1400, '2025-06-24', 41, 870, 5, 43.5, 913.5, 0, 0, 131, 0, 'DL', 1, NULL, 'Pramod Prassand', '0529229414', '0', NULL, NULL, 'Hhhhh', NULL, 0, NULL, 0, '0000-00-00 00:00:00'),
(4, 1401270625, 1401, '2025-06-27', 41, 390, 5, 19.5, 409.5, 0, 0, 0, 4, 'D', 0, NULL, '', '', '0', NULL, NULL, '', NULL, 0, '2025-06-27 11:25:39', 0, '0000-00-00 00:00:00'),
(11, 1408300625, 1408, '2025-06-30', 41, 3730, 5, 186.5, 3916.5, 1, 0, 131, 110, 'rom', 4, NULL, '', '', '0', NULL, '13:04:54', '', NULL, 1, '2025-06-30 13:04:54', 0, '0000-00-00 00:00:00'),
(12, 1409300625, 1409, '2025-06-30', 41, 2100, 5, 105, 2205, 1, 0, 131, 116, 'rom', 4, NULL, '', '', '0', NULL, '09:14:48', '', NULL, 1, '2025-08-25 09:14:48', 0, '0000-00-00 00:00:00'),
(13, 1410130825, 1410, '2025-08-13', 41, 327, 5, 16.35, 343.35, 1, 0, 131, 110, 'rom', 4, NULL, '', '', '0', NULL, '14:19:16', '', NULL, 1, '2025-08-23 14:19:16', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderno` int NOT NULL,
  `date` date NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `vat_id` int NOT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL DEFAULT '0',
  `item_remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_id` int DEFAULT '0',
  `variant_value` int DEFAULT '1',
  `category_id` int NOT NULL,
  `is_addon` int NOT NULL,
  `is_customisable` int NOT NULL,
  `table_id` int NOT NULL,
  `order_type` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approve` int NOT NULL DEFAULT '0',
  `is_paid` int NOT NULL,
  `is_reorder` int NOT NULL DEFAULT '0',
  `is_return` int NOT NULL DEFAULT '0' COMMENT 'is return 1',
  `is_replace` int NOT NULL DEFAULT '0' COMMENT 'is replace 1',
  `is_delete` int NOT NULL DEFAULT '0' COMMENT 'if 1=deleted order item from order listing',
  `delete_remark` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Delete remark update when delete popup textarea from order details',
  `return_qty` int NOT NULL,
  `replace_qty` int NOT NULL,
  `return_reason` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_amount` double NOT NULL COMMENT 'if order return update coloumn',
  `created_by` int NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `orderno`, `date`, `store_id`, `product_id`, `quantity`, `vat_id`, `rate`, `amount`, `tax`, `tax_amount`, `total_amount`, `item_remarks`, `variant_id`, `variant_value`, `category_id`, `is_addon`, `is_customisable`, `table_id`, `order_type`, `is_approve`, `is_paid`, `is_reorder`, `is_return`, `is_replace`, `is_delete`, `delete_remark`, `return_qty`, `replace_qty`, `return_reason`, `return_amount`, `created_by`, `created_date`) VALUES
(1, 1398230625, '2025-06-23', 41, 36, 1, 19, 1390, 1390, 5, 69.5, 1459.5, 'Mild spicy', 2, 2, 8, 0, 1, 4, 'D', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(2, 1398230625, '2025-06-23', 41, 36, 1, 19, 720, 720, 5, 36, 756, 'Mild spicy', 3, 1, 8, 0, 1, 4, 'D', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(3, 1398230625, '2025-06-23', 41, 48, 1, 19, 260, 260, 5, 13, 273, '', 0, 1, 20, 1, 0, 4, 'D', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(4, 1398230625, '2025-06-23', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, NULL, 1, 13, 0, 0, 4, 'D', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(5, 1398230625, '2025-06-23', 41, 65, 1, 19, 620, 620, 5, 31, 651, NULL, NULL, 1, 13, 0, 0, 4, 'D', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(6, 1399230625, '2025-06-23', 69, 124, 1, 17, 150, 150, 5, 7.5, 157.5, '', 2, 1, 8, 0, 1, 19, 'D', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(7, 1400240625, '2025-06-24', 41, 115, 1, 19, 260, 260, 5, 13, 273, NULL, NULL, 1, 20, 0, 0, 0, 'DL', 1, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(8, 1400240625, '2025-06-24', 41, 114, 1, 19, 350, 350, 5, 17.5, 367.5, NULL, NULL, 1, 20, 0, 0, 0, 'DL', 1, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(9, 1400240625, '2025-06-24', 41, 48, 1, 19, 260, 260, 5, 13, 273, NULL, NULL, 1, 20, 0, 0, 0, 'DL', 1, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(10, 1401270625, '2025-06-27', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, 0, 0, 13, 0, 0, 4, 'D', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(11, 1402280625, '2025-06-28', 41, 127, 1, 19, 12, 12, 5, 0.6, 12.6, NULL, NULL, 1, 4, 0, 0, 110, 'D', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(12, 1402280625, '2025-06-28', 41, 36, 1, 19, 1390, 1390, 5, 69.5, 1459.5, 'Less Spicy', 2, 2, 8, 0, 1, 110, 'D', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(13, 1402280625, '2025-06-28', 41, 36, 1, 19, 720, 720, 5, 36, 756, 'Less Spicy', 3, 1, 8, 0, 1, 110, 'D', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(14, 1402280625, '2025-06-28', 41, 48, 1, 19, 260, 260, 5, 13, 273, '', 0, 1, 20, 1, 0, 110, 'D', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(15, 1403280625, '2025-06-28', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, NULL, 1, 13, 0, 0, 110, 'D', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(16, 1404280625, '2025-06-28', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, NULL, 1, 13, 0, 0, 110, 'D', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(17, 1405280625, '2025-06-28', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, NULL, 1, 13, 0, 0, 110, 'rom', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(18, 1405280625, '2025-06-28', 41, 36, 1, 19, 1390, 1390, 5, 69.5, 1459.5, 'Less Spicy', 2, 2, 8, 0, 1, 110, 'rom', 0, 0, 1, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(19, 1405280625, '2025-06-28', 41, 36, 1, 19, 720, 720, 5, 36, 756, 'Less Spicy', 3, 1, 8, 0, 1, 110, 'rom', 0, 0, 1, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(20, 1405280625, '2025-06-28', 41, 48, 1, 19, 260, 260, 5, 13, 273, '', 0, 1, 20, 1, 0, 110, 'rom', 0, 0, 1, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(21, 1405280625, '2025-06-28', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, NULL, 1, 13, 0, 0, 110, 'rom', 0, 0, 1, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(22, 1405280625, '2025-06-28', 41, 127, 1, 19, 12, 12, 5, 0.6, 12.6, NULL, NULL, 1, 4, 0, 0, 110, 'rom', 0, 0, 1, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(23, 1406280625, '2025-06-28', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, NULL, 1, 13, 0, 0, 110, 'rom', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(24, 1406280625, '2025-06-28', 41, 127, 1, 19, 12, 12, 5, 0.6, 12.6, NULL, NULL, 1, 4, 0, 0, 110, 'rom', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(25, 1406280625, '2025-06-28', 41, 120, 1, 19, 315, 315, 5, 15.75, 330.75, NULL, NULL, 1, 13, 0, 0, 110, 'rom', 0, 0, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(26, 1407300625, '2025-06-30', 41, 36, 1, 19, 1390, 1390, 5, 69.5, 1459.5, 'Mild spicy', 2, 2, 8, 0, 1, 110, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(27, 1407300625, '2025-06-30', 41, 48, 1, 19, 260, 260, 5, 13, 273, '', 0, 1, 20, 1, 0, 110, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(28, 1408300625, '2025-06-30', 41, 86, 2, 19, 1480, 2960, 5, 148, 3108, 'Non Spicy', 2, 4, 9, 0, 1, 110, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(29, 1408300625, '2025-06-30', 41, 49, 1, 19, 380, 380, 5, 19, 399, '', 0, 1, 20, 1, 0, 110, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(30, 1408300625, '2025-06-30', 41, 44, 1, 19, 390, 390, 5, 19.5, 409.5, NULL, NULL, 1, 13, 0, 0, 110, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(31, 1409300625, '2025-06-30', 41, 36, 1, 19, 1390, 1390, 5, 69.5, 1459.5, 'Non Spicy', 2, 2, 8, 0, 1, 116, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(32, 1409300625, '2025-06-30', 41, 48, 1, 19, 260, 260, 5, 13, 273, '', 0, 1, 20, 1, 0, 116, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(33, 1409300625, '2025-06-30', 41, 47, 1, 19, 450, 450, 5, 22.5, 472.5, NULL, NULL, 1, 18, 0, 0, 116, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(34, 1410130825, '2025-08-13', 41, 127, 1, 19, 12, 12, 5, 0.6, 12.6, NULL, NULL, 1, 4, 0, 0, 110, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00'),
(35, 1410130825, '2025-08-13', 41, 120, 1, 19, 315, 315, 5, 15.75, 330.75, NULL, NULL, 1, 13, 0, 0, 110, 'rom', 1, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `package_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_quantity` int NOT NULL,
  `remarks` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `name`, `no_of_quantity`, `remarks`, `is_active`) VALUES
(1, '5 Tables', 5, '5 tables here', 1),
(2, '10 Tables', 10, '10 Tables here', 1),
(3, '2 Tables', 2, '2 tables', 1),
(4, '11 Tables', 11, '11 Tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE IF NOT EXISTS `privilege` (
  `privilegeid` int NOT NULL AUTO_INCREMENT,
  `roleid` int NOT NULL,
  `moduleid` int NOT NULL,
  `can_add` int NOT NULL,
  `can_edit` int NOT NULL,
  `can_delete` int NOT NULL,
  `can_view` int NOT NULL,
  `can_approve` int NOT NULL,
  PRIMARY KEY (`privilegeid`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`privilegeid`, `roleid`, `moduleid`, `can_add`, `can_edit`, `can_delete`, `can_view`, `can_approve`) VALUES
(1, 1, 44, 1, 1, 1, 1, 0),
(2, 1, 43, 1, 1, 0, 1, 0),
(3, 1, 42, 1, 1, 1, 1, 0),
(4, 1, 39, 1, 1, 1, 1, 0),
(5, 1, 37, 1, 1, 1, 1, 0),
(6, 1, 4, 1, 1, 1, 1, 0),
(7, 1, 3, 1, 1, 1, 1, 0),
(8, 1, 1, 0, 0, 0, 1, 0),
(9, 42, 44, 0, 0, 0, 0, 0),
(10, 42, 43, 0, 0, 0, 0, 0),
(11, 42, 42, 0, 0, 0, 0, 0),
(12, 42, 39, 0, 0, 0, 0, 0),
(13, 42, 37, 0, 0, 0, 0, 0),
(14, 42, 4, 0, 0, 0, 0, 0),
(15, 42, 3, 0, 0, 0, 0, 0),
(16, 42, 1, 0, 0, 0, 1, 0),
(17, 1, 45, 1, 1, 1, 1, 0),
(18, 39, 46, 0, 0, 0, 1, 0),
(19, 39, 45, 0, 0, 0, 0, 0),
(20, 39, 44, 1, 0, 0, 0, 0),
(21, 39, 43, 0, 0, 0, 0, 0),
(22, 39, 42, 0, 1, 0, 0, 0),
(23, 39, 39, 0, 0, 0, 0, 0),
(24, 39, 37, 0, 0, 1, 0, 0),
(25, 39, 4, 0, 0, 0, 1, 0),
(26, 39, 3, 1, 0, 0, 0, 0),
(27, 39, 1, 1, 0, 0, 1, 0),
(28, 1, 46, 0, 0, 0, 1, 0),
(29, 42, 46, 0, 0, 0, 0, 0),
(30, 42, 45, 0, 0, 0, 0, 0),
(31, 43, 48, 1, 0, 0, 0, 0),
(32, 43, 47, 0, 0, 0, 0, 0),
(33, 43, 46, 0, 0, 0, 1, 0),
(34, 43, 45, 0, 0, 0, 0, 0),
(35, 43, 44, 1, 1, 1, 0, 0),
(36, 43, 43, 0, 0, 0, 0, 0),
(37, 43, 42, 0, 0, 0, 1, 0),
(38, 43, 37, 1, 0, 0, 0, 0),
(39, 43, 4, 0, 0, 0, 0, 0),
(40, 43, 3, 0, 1, 0, 1, 0),
(41, 43, 1, 0, 0, 0, 1, 0),
(42, 1, 48, 1, 0, 0, 0, 0),
(43, 1, 47, 0, 0, 0, 0, 0),
(44, 35, 48, 1, 0, 0, 0, 0),
(45, 35, 47, 0, 0, 0, 0, 0),
(46, 35, 46, 0, 0, 0, 0, 0),
(47, 35, 45, 0, 0, 0, 0, 0),
(48, 35, 44, 0, 0, 0, 1, 0),
(49, 35, 43, 0, 0, 0, 0, 0),
(50, 35, 42, 0, 0, 0, 0, 0),
(51, 35, 37, 0, 0, 0, 0, 0),
(52, 35, 3, 0, 0, 0, 0, 0),
(53, 35, 1, 0, 0, 0, 1, 0),
(54, 5, 48, 1, 0, 0, 0, 0),
(55, 5, 47, 0, 0, 0, 1, 0),
(56, 5, 46, 0, 0, 0, 0, 0),
(57, 5, 45, 0, 0, 0, 0, 0),
(58, 5, 44, 0, 0, 0, 0, 0),
(59, 5, 43, 0, 0, 0, 0, 0),
(60, 5, 42, 0, 0, 0, 0, 0),
(61, 5, 37, 0, 0, 0, 0, 0),
(62, 5, 3, 0, 0, 0, 0, 0),
(63, 5, 1, 0, 0, 0, 1, 0),
(64, 1, 50, 1, 1, 1, 1, 0),
(65, 1, 49, 1, 1, 1, 1, 0),
(66, 1, 51, 0, 0, 0, 0, 0),
(67, 5, 51, 0, 0, 0, 1, 0),
(68, 5, 50, 0, 0, 0, 0, 0),
(69, 5, 49, 0, 0, 0, 0, 0),
(70, 30, 51, 0, 0, 0, 0, 0),
(71, 30, 50, 0, 0, 0, 0, 0),
(72, 30, 49, 0, 0, 0, 0, 0),
(73, 30, 48, 0, 0, 0, 0, 0),
(74, 30, 47, 0, 0, 0, 0, 0),
(75, 30, 46, 0, 0, 0, 0, 0),
(76, 30, 45, 0, 0, 0, 0, 0),
(77, 30, 44, 0, 0, 0, 0, 0),
(78, 30, 43, 0, 0, 0, 0, 0),
(79, 30, 42, 0, 0, 0, 0, 0),
(80, 30, 37, 1, 1, 1, 1, 0),
(81, 30, 3, 0, 0, 0, 0, 0),
(82, 30, 1, 0, 0, 0, 0, 0),
(83, 37, 51, 0, 0, 0, 0, 0),
(84, 37, 50, 1, 1, 1, 1, 0),
(85, 37, 49, 1, 1, 1, 1, 0),
(86, 37, 48, 0, 0, 0, 0, 0),
(87, 37, 47, 0, 0, 0, 0, 0),
(88, 37, 46, 1, 1, 1, 1, 0),
(89, 37, 45, 0, 0, 0, 0, 0),
(90, 37, 44, 0, 0, 0, 0, 0),
(91, 37, 43, 0, 0, 0, 0, 0),
(92, 37, 42, 0, 0, 0, 0, 0),
(93, 37, 37, 0, 0, 0, 0, 0),
(94, 37, 3, 0, 0, 0, 0, 0),
(95, 37, 1, 0, 0, 0, 0, 0),
(96, 5, 52, 1, 0, 0, 1, 0),
(97, 1, 52, 1, 1, 1, 1, 1),
(98, 38, 53, 0, 0, 0, 1, 0),
(99, 38, 52, 0, 0, 0, 0, 0),
(100, 38, 51, 0, 0, 0, 0, 0),
(101, 38, 50, 0, 0, 0, 0, 0),
(102, 38, 49, 0, 0, 0, 0, 0),
(103, 38, 48, 1, 0, 0, 0, 0),
(104, 38, 47, 0, 0, 0, 0, 0),
(105, 38, 46, 0, 0, 0, 0, 0),
(106, 38, 45, 0, 0, 0, 0, 0),
(107, 38, 44, 0, 0, 0, 0, 0),
(108, 38, 43, 0, 0, 0, 0, 0),
(109, 38, 42, 0, 0, 0, 0, 0),
(110, 38, 37, 0, 0, 0, 0, 0),
(111, 38, 3, 0, 0, 0, 0, 0),
(112, 38, 1, 0, 0, 0, 1, 0),
(113, 1, 57, 1, 1, 1, 1, 0),
(114, 1, 56, 1, 1, 1, 1, 0),
(115, 1, 55, 1, 1, 1, 1, 0),
(116, 1, 54, 1, 1, 1, 1, 0),
(117, 1, 53, 0, 0, 0, 1, 0),
(118, 42, 57, 1, 1, 1, 1, 0),
(119, 42, 56, 1, 1, 1, 1, 0),
(120, 42, 55, 0, 0, 0, 1, 0),
(121, 42, 54, 0, 0, 0, 1, 0),
(122, 42, 53, 0, 0, 0, 1, 0),
(123, 42, 52, 0, 0, 0, 0, 0),
(124, 42, 51, 0, 0, 0, 0, 0),
(125, 42, 50, 0, 0, 0, 0, 0),
(126, 42, 49, 0, 0, 0, 0, 0),
(127, 42, 48, 0, 0, 0, 0, 0),
(128, 42, 47, 0, 0, 0, 0, 0),
(129, 1, 58, 0, 0, 0, 1, 0),
(130, 42, 58, 0, 0, 0, 1, 0),
(131, 1, 59, 1, 1, 1, 1, 0),
(132, 38, 60, 0, 0, 0, 1, 0),
(133, 38, 59, 0, 0, 0, 0, 0),
(134, 38, 58, 0, 0, 0, 0, 0),
(135, 38, 57, 0, 0, 0, 0, 0),
(136, 38, 56, 0, 0, 0, 0, 0),
(137, 38, 55, 0, 0, 0, 0, 0),
(138, 38, 54, 0, 0, 0, 0, 0),
(139, 1, 61, 0, 0, 0, 1, 0),
(140, 1, 60, 0, 0, 0, 1, 0),
(141, 1, 62, 0, 0, 0, 1, 0),
(142, 34, 64, 0, 0, 0, 1, 0),
(143, 34, 63, 0, 0, 0, 1, 0),
(144, 34, 62, 0, 0, 0, 0, 0),
(145, 34, 61, 0, 0, 0, 1, 0),
(146, 34, 60, 0, 0, 0, 1, 0),
(147, 34, 59, 1, 1, 1, 1, 0),
(148, 34, 58, 0, 0, 0, 1, 0),
(149, 34, 57, 1, 1, 1, 1, 0),
(150, 34, 56, 1, 1, 1, 1, 0),
(151, 34, 55, 1, 1, 1, 1, 0),
(152, 34, 54, 1, 1, 1, 1, 0),
(153, 34, 53, 0, 0, 0, 1, 0),
(154, 34, 52, 1, 1, 1, 1, 0),
(155, 34, 51, 0, 0, 0, 1, 0),
(156, 34, 50, 1, 1, 1, 1, 0),
(157, 34, 49, 1, 1, 1, 1, 0),
(158, 34, 48, 1, 0, 0, 0, 0),
(159, 34, 47, 0, 0, 0, 1, 0),
(160, 34, 46, 0, 0, 0, 1, 0),
(161, 34, 45, 1, 1, 1, 1, 0),
(162, 34, 44, 1, 1, 1, 1, 0),
(163, 34, 43, 1, 1, 0, 1, 0),
(164, 34, 42, 1, 1, 1, 1, 0),
(165, 34, 37, 1, 1, 1, 1, 0),
(166, 34, 3, 1, 1, 1, 1, 0),
(167, 34, 1, 0, 0, 0, 1, 0),
(168, 1, 64, 0, 1, 0, 1, 1),
(169, 1, 63, 0, 0, 0, 1, 0),
(170, 1, 66, 1, 0, 1, 1, 1),
(171, 1, 65, 1, 0, 1, 1, 1),
(172, 1, 67, 0, 0, 0, 1, 0),
(173, 2, 67, 0, 0, 0, 0, 0),
(174, 2, 66, 1, 0, 1, 1, 1),
(175, 2, 65, 1, 0, 1, 1, 0),
(176, 2, 64, 0, 0, 0, 1, 0),
(177, 2, 62, 0, 0, 0, 0, 0),
(178, 2, 61, 0, 0, 0, 1, 0),
(179, 2, 60, 0, 0, 0, 0, 0),
(180, 2, 59, 0, 0, 0, 0, 0),
(181, 2, 58, 0, 0, 0, 0, 0),
(182, 2, 57, 0, 0, 0, 0, 0),
(183, 2, 56, 0, 0, 0, 0, 0),
(184, 2, 55, 0, 0, 0, 0, 0),
(185, 2, 54, 0, 0, 0, 0, 0),
(186, 2, 53, 0, 0, 0, 0, 0),
(187, 2, 52, 0, 0, 0, 1, 0),
(188, 2, 51, 0, 0, 0, 0, 0),
(189, 2, 50, 0, 0, 0, 0, 0),
(190, 2, 49, 0, 0, 0, 0, 0),
(191, 2, 48, 0, 0, 0, 0, 0),
(192, 2, 47, 0, 0, 0, 0, 0),
(193, 2, 46, 0, 0, 0, 0, 0),
(194, 2, 45, 0, 0, 0, 0, 0),
(195, 2, 44, 0, 0, 0, 0, 0),
(196, 2, 43, 0, 0, 0, 0, 0),
(197, 2, 42, 0, 0, 0, 0, 0),
(198, 2, 37, 0, 0, 0, 0, 0),
(199, 2, 3, 0, 0, 0, 0, 0),
(200, 2, 1, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `store_id` int NOT NULL COMMENT 'If added by the admin store id will be 0 otherwise logged store id',
  `price` int NOT NULL,
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_customizable` int NOT NULL COMMENT 'If 1=customizable 0=Non customisable',
  `is_addon` int NOT NULL COMMENT 'if value is 1 this product is addon otherwise not addon',
  `product_veg_nonveg` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_ma` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_hi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc_ma` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc_en` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc_hi` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc_ar` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `subcategory_id`, `store_id`, `price`, `image`, `image1`, `image2`, `image3`, `image4`, `is_customizable`, `is_addon`, `product_veg_nonveg`, `product_name_ma`, `product_name_en`, `product_name_hi`, `product_name_ar`, `product_desc_ma`, `product_desc_en`, `product_desc_hi`, `product_desc_ar`, `is_active`) VALUES
(1, 2, 0, 0, 0, 'kozhi_kurumulak_(2).jpg', '', '', '', '', 0, 0, 'non-veg', 'കോഴി കുറുംലക്ക്', 'Kozhi Kurumulak', 'कोझी कुरुमलाक', 'كوزي كوروملاك', 'ക്ലാസിക് ചിക്കൻ സൂപ്പിൽ വ്യക്തമായ ചിക്കൻ ചാറു അടങ്ങിയിരിക്കുന്നു, പലപ്പോഴും ചിക്കൻ അല്ലെങ്കിൽ പച്ചക്കറി കഷണങ്ങൾ; പാസ്ത, നൂഡിൽസ്, പറഞ്ഞല്ലോ, അല്ലെങ്കിൽ കാരറ്റ്, അരി, ബാർലി തുടങ്ങിയ ധാന്യങ്ങൾ എന്നിവയാണ് പൊതുവായ കൂട്ടിച്ചേർക്കലുകൾ', 'The classic chicken soup consists of a clear chicken broth, often with pieces of chicken or vegetables; common additions are pasta, noodles, dumplings, or carrots, and grains such as rice and barley', 'क्लासिक चिकन सूप में स्पष्ट चिकन शोरबा होता है, अक्सर चिकन या सब्जियों के टुकड़ों के साथ; सामान्य अतिरिक्त हैं पास्ता, नूडल्स, पकौड़ी, या गाजर, और चावल और जौ जैसे अनाज', ' من مرق الدجاج الصافي، وغالبًا ما يكون مع قطع من الدجاج أو الخضار؛ الإضافات الشائعة هي المعكرونة أو المعكرونة أو الزلابية أو الجزر والحبوب مثل الأرز والشعير', 1),
(2, 2, 0, 0, 0, 'soup.jpg', '', '', '', '', 0, 0, 'veg', 'സ്വീറ്റ് കോൺ വെജ് സൂപ്പ്', 'Sweet Corn Veg Soup', 'स्वीट कॉर्न वेज सूप', 'شوربة الخضار بالذرة الحلوة', 'കോൺ സൂപ്പിലെ പ്രധാന ചേരുവ സ്വീറ്റ് കോൺ ആണ്. കോൺ സൂപ്പ് തയ്യാറാക്കാൻ നിരവധി മാർഗങ്ങളുണ്ട്. ചില പാചകക്കുറിപ്പുകളിൽ പുതിയ ധാന്യം ഉൾപ്പെടുന്നു, മറ്റുള്ളവർ ടിൻ ചെയ്ത ധാന്യം ഉപയോഗിക്കുന്നു. ഈ പാചകത്തിൽ ഫ്രഷ് സ്വീറ്റ് കോൺ കേർണലുകൾ, വെള്ളം, കുരുമുളക്, കോൺഫ്‌ളോർ, സ്കാലിയൻസ്, സെലറി, ഓയിൽ, ഉപ്പ് എന്നിവ ഉൾപ്പെടുന്നു', 'The main ingredient in corn soup is sweet corn. There are many different ways to prepare corn soup. Some recipes include fresh corn while others use tinned corn. This recipe includes fresh sweet corn kernels, water, pepper, cornflour, scallions, celery, oil and salt', 'मक्के के सूप में मुख्य सामग्री स्वीट कॉर्न है। मक्के का सूप बनाने के कई अलग-अलग तरीके हैं। कुछ व्यंजनों में ताजा मक्का शामिल होता है जबकि अन्य में डिब्बाबंद मक्का का उपयोग किया जाता है। इस रेसिपी में ताज़ा स्वीट कॉर्न के दाने, पानी, काली मिर्च, कॉर्नफ्लोर, हरा प्याज, अजवाइन, तेल और नमक शामिल हैं', 'الذرة هو الذرة الحلوة. هناك العديد من الطرق المختلفة لتحضير حساء الذرة. تتضمن بعض الوصفات الذرة الطازجة بينما يستخدم البعض الآخر الذرة المعلبة. تشمل هذه الوصفة حبات الذرة الحلوة الطازجة والماء والفلفل ودقيق الذرة والبصل الأخضر والكرفس والزيت والملح', 1),
(3, 5, 0, 0, 0, 'crispyfriedveg.jpg', '', '', '', '', 0, 0, 'veg', ' ക്രിസ്പി വറുത്ത പച്ചക്കറി', 'Crispy Fried Veg', 'कुरकुरी तली हुई सब्जी', 'خضار مقلي مقرمش', 'കോൺഫ്ലോർ, ശുദ്ധീകരിച്ച മൈദ, ഇഞ്ചി-വെളുത്തുള്ളി പേസ്റ്റ്, എംഎസ്ജി, നാരങ്ങ നീര്, ഉപ്പ്, കുരുമുളക് പൊടി എന്നിവ ഒരു പാത്രത്തിൽ ആവശ്യത്തിന് വെള്ളം ചേർത്ത് കട്ടിയുള്ള ബാറ്റർ ഉണ്ടാക്കുക. പച്ചക്കറികൾ ചേർത്ത് ഇളക്കുക, അങ്ങനെ എല്ലാ പച്ചക്കറികളും നന്നായി പൊതിയുക', 'Mix cornflour, refined flour, ginger-garlic paste, MSG, lemon juice, salt and black pepper powder in a bowl with enough water to make a thick batter. Add the vegetables and mix so that all the vegetables are well coated', 'एक कटोरे में कॉर्नफ्लोर, मैदा, अदरक-लहसुन का पेस्ट, एमएसजी, नींबू का रस, नमक और काली मिर्च पाउडर को पर्याप्त पानी के साथ मिलाकर गाढ़ा घोल बना लें। सब्जियाँ डालें और मिलाएँ ताकि सभी सब्जियाँ अच्छी तरह से कवर हो जाएँ', ' المكرر ومعجون الزنجبيل والثوم والغلوتامات أحادية الصوديوم وعصير الليمون والملح ومسحوق الفلفل الأسود في وعاء مع كمية كافية من الماء لصنع عجينة سميكة. أضيفي الخضار واخلطي حتى تتغطى جميع الخضار جيدًا', 1),
(10, 5, 0, 0, 0, 'honeyglazedchicken.jpg', '', '', '', '', 0, 0, 'non-veg', 'തേൻ ഗ്ലേസ്ഡ് ചിക്കൻ', 'Honey Glazed Chicken', ' शहद चमकीला चिकन', 'دجاج بالعسل', 'കോഴിയിറച്ചിയുടെ രുചിയും ഘടനയും രൂപവും വർദ്ധിപ്പിക്കാൻ ഉദ്ദേശിച്ചുള്ള ഒരു പാചക സാങ്കേതികതയാണ് ഗ്ലേസിംഗ് ചിക്കൻ. നിങ്ങൾ ഒരു പ്രത്യേക അത്താഴം നടത്തുകയാണോ അതോ നിങ്ങളുടെ ആഴ്‌ച രാത്രിയിലെ ഭക്ഷണത്തിന് രുചി കൂട്ടാൻ നോക്കുകയാണോ', 'Glazing chicken is a culinary technique intended to enhance the flavor, texture and appearance of chicken. Whether you\'re hosting a special dinner or simply looking to add a burst of flavor to your weeknight meal', 'ग्लेज़िंग चिकन एक पाक तकनीक है जिसका उद्देश्य चिकन के स्वाद, बनावट और उपस्थिति को बढ़ाना है। चाहे आप एक विशेष रात्रिभोज की मेजबानी कर रहे हों या बस अपने सप्ताहांत के भोजन में स्वाद का तड़का लगाना चाह रहे हों', ' طهي يهدف إلى تعزيز نكهة الدجاج وملمسه ومظهره. سواء كنت تستضيف عشاءً خاصًا أو تتطلع ببساطة إلى إضافة لمسة من النكهة إلى وجبتك خلال عطلة نهاية الأسبوع', 1),
(9, 5, 0, 0, 0, 'chickenlollipop.jpg', '', '', '', '', 1, 0, 'non-veg', 'ചിക്കൻ ലോലിപോപ്പ്', 'Chicken Lollipop', 'चिकन लॉलीपॉप', 'مصاصة الدجاج', 'ചിക്കൻ ലോലിപോപ്പ് ഒരു ജനപ്രിയ ഇൻഡോ-ചൈനീസ് വിശപ്പാണ്, അവിടെ ഫ്രെഞ്ച് ചെയ്ത ചിക്കൻ ഡ്രൂമെറ്റ് മാരിനേറ്റ് ചെയ്ത ശേഷം ബാറ്റർ വറുത്തതോ മൊരിഞ്ഞതു വരെ ചുട്ടതോ ആണ്.', 'Chicken lollipop is a popular Indo-Chinese appetizer where a frenched chicken drumette is marinated and then batter fried or baked until crisp', 'चिकन लॉलीपॉप एक लोकप्रिय इंडो-चाइनीज ऐपेटाइज़र है जहां फ्रेंच चिकन ड्रमेट को मैरीनेट किया जाता है और फिर बैटर को कुरकुरा होने तक तला या बेक किया जाता है।', 'مصاصة الدجاج هي مقبلات هندية صينية شهيرة حيث يتم تتبيل طبلة الدجاج الفرنسية ثم قليها أو خبزها حتى تصبح ', 1),
(11, 4, 0, 0, 0, 'idliset.jpg', '', '', '', '', 0, 0, 'veg', ' ഇഡ്ഡലി', 'Idli', 'इडली', 'إدلي', 'പുളിപ്പിച്ച തൊണ്ട് നീക്കം ചെയ്ത കറുത്ത പയർ, അരി എന്നിവയിൽ നിന്നാണ് ഇഡ്‌ലി ഉണ്ടാക്കുന്നത്', 'Idli is made from a batter of fermented de-husked black lentils and rice', 'इडली किण्वित भूसी रहित काली दाल और चावल के घोल से बनाई जाती है', 'العدس الأسود المخمر والأرز', 1),
(12, 4, 0, 0, 0, 'appam_with_egg.jpg', '', '', '', '', 0, 0, 'non-veg', 'മുട്ട റോസ്റ്റിനൊപ്പം അപ്പം', 'Appam With Egg Roast', 'अप्पम विथ एग रोस्ट', 'أبام مع البيض المشوي', 'ഘട്ടം ഘട്ടമായുള്ള ചിത്രങ്ങളുള്ള മുട്ട റോസ്റ്റ് പാചകക്കുറിപ്പ്. ഉള്ളി, വെളിച്ചെണ്ണ, മസാലകൾ എന്നിവ ഉപയോഗിച്ച് ഉണ്ടാക്കുന്ന നാടൻ മുട്ട റോസ്റ്റ് പാചകക്കുറിപ്പ്, അപ്പം, പരോട്ട, ഇടിയപ്പം എന്നിവയ്‌ക്കൊപ്പം അതിശയകരമായ രുചി.', 'Egg Roast Recipe with Step by Step Pictures. Nadan Mutta Roast recipe made with onions, coconut oil and spices taste amazing with appam, parotta, idiyappam', 'अंडा रोस्ट रेसिपी चरण दर चरण चित्रों के साथ। प्याज, नारियल तेल और मसालों से बनी नादान मुट्टा रोस्ट रेसिपी का स्वाद अप्पम, परोटा, इडियप्पम के साथ लाजवाब होता है', 'الصور خطوة بخطوة. وصفة نادان موتا المشوي المصنوعة من البصل وزيت جوز الهند والبهارات ذات المذاق الرائع مع الأبام والباروتا والإيديابام', 1),
(13, 4, 0, 0, 0, 'masala_dosa.jpg', '', '', '', '', 0, 0, 'veg', 'മസാല ദോശ ', 'Masala Dosa', 'मसाला डोसा', 'مشكلة الخطيئة', 'റെസ്റ്റോറൻ്റുകളിലും ടിഫിൻ സെൻ്ററുകളിലും വിളമ്പുന്ന ഏറ്റവും പ്രശസ്തമായ ദക്ഷിണേന്ത്യൻ പ്രാതൽ വിഭവങ്ങളിൽ ഒന്നാണ് മസാല ദോശ. പുളിപ്പിച്ച അരിയും പയറുമാവും ഉപയോഗിച്ച് ഉണ്ടാക്കുന്ന ഒരു ക്രേപ്പാണ് ദോശ. മസാല ദോശ, ചടുലവും, സുഗന്ധവും, സ്വാദും ഉള്ളതും അതിൽ ഒരു ഉരുളക്കിഴങ്ങ് മസാല അല്ലെങ്കിൽ മസാലകൾ ചേർത്ത ഉരുളക്കിഴങ്ങുകൾ നിറച്ചതുമാണ്', 'Masala Dosa is one of the most popular South Indian breakfast dishes served in restaurants and tiffin centres. Dosa is a crepe made using fermented rice and lentil batter. Masala Dosa is one that is crisp, aromatic, flavourful and has a potato masala or spiced seasoned potatoes stuffed in it', 'मसाला डोसा रेस्तरां और टिफिन सेंटरों में परोसा जाने वाला सबसे लोकप्रिय दक्षिण भारतीय नाश्ता व्यंजनों में से एक है। डोसा एक क्रेप है जो किण्वित चावल और दाल के घोल का उपयोग करके बनाया जाता है। मसाला डोसा वह है जो कुरकुरा, सुगंधित, स्वादिष्ट होता है और इसमें आलू मसाला या मसालेदार आलू भरा होता है।', 'ماسالا دوسا هي واحدة من أطباق الإفطار الأكثر شعبية في جنوب الهند والتي يتم تقديمها في المطاعم ومراكز تناول الطعام. دوسة عبارة عن كريب مصنوع باستخدام الأرز المخمر وخليط العدس. ماسالا دوسا هي هشة وعطرية ولذيذة وتحتوي على ماسالا البطاطس أو البطاطس المتبلة المحشوة ', 1),
(14, 2, 0, 0, 0, 'aadukurumulak.jpg', '', '', '', '', 0, 0, 'non-veg', 'അടു കുറുമുളക്', 'Adu Kurumulak ', 'अदु कुरुमुलक', 'أدو كرمولك', 'ആടു കുറുമുളക് സൂപ്പ്, തണുത്ത കാലാവസ്ഥയ്‌ക്കോ നിങ്ങൾക്ക് ബൂസ്റ്റ് ആവശ്യമുള്ളപ്പോഴോ അനുയോജ്യമായ സ്വാദിൻ്റെയും സുഖദായകമായ ഊഷ്മളതയുടെയും ആഴത്തിന് പേരുകേട്ട ആശ്വാസദായകവും എരിവുള്ളതുമായ ദക്ഷിണേന്ത്യൻ സൂപ്പാണ്. കേരളത്തിൽ ഉത്ഭവിച്ച, സൂപ്പിൻ്റെ പേര് \"ആട് കുരുമുളക് സൂപ്പ്\" എന്ന് വിവർത്തനം ചെയ്യുന്നു, കാരണം ഇത് പരമ്പരാഗതമായി ഇളം ആട്ടിൻ മാംസം (ആട്ടിറച്ചി), \"കുറുമുളക്\" എന്നിവ ഉപയോഗിച്ച് ഉണ്ടാക്കുന്നു', 'Adu Kurumulak Soup is a comforting, spicy South Indian soup known for its depth of flavor and soothing warmth, ideal for cool weather or whenever you\'re in need of a boost. Originating in Kerala, the soup\'s name translates to \"goat pepper soup,\" as it’s traditionally made with tender goat meat (mutton) and \"kurumulak,\" meaning black pepper', 'अडू कुरुमुलक सूप एक आरामदायक, मसालेदार दक्षिण भारतीय सूप है जो अपने स्वाद की गहराई और सुखदायक गर्मी के लिए जाना जाता है, जो ठंडे मौसम के लिए आदर्श है या जब भी आपको बढ़ावा देने की आवश्यकता हो। केरल में उत्पन्न, सूप का नाम \"बकरी काली मिर्च सूप\" है, क्योंकि यह पारंपरिक रूप से बकरी के कोमल मांस (मटन) और \"कुरुमुलक\" के साथ बनाया जाता है, जिसका अर्थ है काली मिर्च', 'حساء مريح وحار من جنوب الهند معروف بعمق نكهته ودفئه المهدئ، وهو مثالي للطقس البارد أو عندما تحتاج إلى دفعة. نشأ هذا الحساء في ولاية كيرالا، ويترجم اسمه إلى \"حساء فلفل الماعز\"، لأنه يُصنع تقليديًا من لحم الماعز الطري (لحم الضأن) و\"كورومولاك\" وتعني الفلفل الأسود.', 1),
(15, 6, 5, 0, 0, 'imresizer-1733764785070.jpg', 'imresizer-17337647850701.jpg', 'imresizer-17337647850702.jpg', 'imresizer-17337647850703.jpg', 'imresizer-17337647850704.jpg', 0, 0, 'non-veg', 'മീൻ കറി ഭക്ഷണം', 'Fish Curry Meals', 'मछली करी भोजन', 'وجبات السمك بالكاري', 'മാംസം, ടോഫു അല്ലെങ്കിൽ പച്ചക്കറികൾ എന്നിവയ്‌ക്കൊപ്പം ഉപയോഗിക്കുന്ന ഒരു ഇന്ത്യൻ ഗ്രേവി അല്ലെങ്കിൽ സോസ് ആണ് മീൻ കറി. ഇത് വിളമ്പുന്നത് അരി, ഏറ്റവും പ്രശസ്തമായ ബസ്മതി അരി, കൂടാതെ പലതരം സുഗന്ധവ്യഞ്ജനങ്ങൾ അടങ്ങിയിരിക്കുന്നു', ' fish curry is an Indian gravy or sauce that is used in tandem with meat, tofu, or vegetables. It\'s served rice, most popularly Basmati rice, and contains many different kinds of spices', 'करी एक भारतीय ग्रेवी या सॉस है जिसका उपयोग मांस, टोफू या सब्जियों के साथ किया जाता है। इसमें चावल परोसा जाता है, सबसे लोकप्रिय बासमती चावल, और इसमें कई अलग-अलग प्रकार के मसाले होते हैं', 'هندية تستخدم جنبًا إلى جنب مع اللحوم أو التوفو أو الخضار. يقدم الأرز، وأشهرها الأرز البسمتي، ويحتوي على العديد من أنواع البهارات المختلفة', 0),
(16, 6, 4, 0, 0, 'imresizer-1733764565086.jpg', 'imresizer-17337645650861.jpg', 'imresizer-17337645650862.jpg', 'imresizer-17337645650863.jpg', 'imresizer-17337645650864.jpg', 0, 0, 'non-veg', 'ചിക്കൻ ദം ബിരിയാണി', ' Naruneyi Chicken Dum Biriyani', 'चिकन दम बिरयानी', 'برياني دوم دجاج', 'ദം ബിരിയാണി സാവധാനത്തിൽ പാകം ചെയ്ത, പാളികളുള്ള അരി വിഭവമാണ്, സാധാരണ ബിരിയാണി ഒരു കാച്ചി ബിരിയാണി അല്ലെങ്കിൽ പക്കി ബിരിയാണിയാണ്. സാധാരണ ബിരിയാണിയിൽ മാംസവും ചോറും യോജിപ്പിക്കുന്നതിന് മുമ്പ് വെവ്വേറെ പാകം ചെയ്യും. രുചിയുടെ കാര്യത്തിൽ, ദം ബിരിയാണി മന്ദഗതിയിലുള്ള പാചക പ്രക്രിയ കാരണം കൂടുതൽ സ്വാദുള്ളതും സുഗന്ധമുള്ളതുമായി കണക്കാക്കപ്പെടുന്നു.', 'Dum biryani is a slow cooked, layered rice dish and normal biryani is a kacchi biryani or pakki biryani. In normal biryani, the meat and rice are cooked separately before being combined. In terms of taste, dum biryani is often considered more flavorful and aromatic due to the slow cooking process', 'दम बिरयानी धीमी गति से पकाया जाने वाला, परतदार चावल का व्यंजन है और सामान्य बिरयानी कच्ची बिरयानी या पक्की बिरयानी है। सामान्य बिरयानी में, मांस और चावल को मिलाने से पहले अलग-अलग पकाया जाता है। स्वाद के मामले में, धीमी खाना पकाने की प्रक्रिया के कारण दम बिरयानी को अक्सर अधिक स्वादिष्ट और सुगंधित माना जाता है', 'متعدد الطبقات مطبوخ ببطء والبرياني العادي هو برياني كاتشي أو برياني باكي. في البرياني العادي، يتم طهي اللحم والأرز بشكل منفصل قبل دمجهما. من حيث المذاق، غالبًا ما يُعتبر برياني الدوم أكثر نكهة وعطرية بسبب عملية الطهي البطيئة', 0),
(17, 6, 0, 0, 0, 'chattychor.jpg', '', '', '', '', 0, 0, 'non-veg', 'ചട്ടി ചോർ', 'Chatty Chor', ' चट्टी चोर', 'تشتي تشور', 'പലതരം സൈഡ് വിഭവങ്ങൾ, കറികൾ, ചട്ണികൾ എന്നിവയ്‌ക്കൊപ്പം ഒരു മൺപാത്രത്തിൽ വിളമ്പുന്ന വേവിച്ച ചോറിൻ്റെ ഒരു പരമ്പരാഗത കേരള വിഭവമാണ് ചട്ടി ചോറു.', 'Chatti Choru is a traditional Kerala dish of boiled rice served in a clay pot, along with a variety of side dishes, curries, and chutneys', 'चट्टी चोरू उबले हुए चावल का एक पारंपरिक केरल व्यंजन है जिसे मिट्टी के बर्तन में विभिन्न प्रकार के साइड डिश, करी और चटनी के साथ परोसा जाता है।', ' من ولاية كيرالا يتكون من الأرز المسلوق ويقدم في وعاء من الفخار، إلى جانب مجموعة متنوعة من الأطباق الجانبية والكاري والصلصات', 1),
(18, 20, 0, 0, 0, 'avacadojuice.jpg', 'imresizer-1733749895103.jpg', 'imresizer-17337498951031.jpg', 'imresizer-17337498951032.jpg', 'imresizer-17337498951033.jpg', 0, 1, 'veg', 'അവക്കാഡോ', 'Avacado', 'एवोकाडो', ' أفوكادو', 'അവക്കാഡോ', 'Avacado', 'एवोकाडो', ' أفوكادو', 0),
(19, 20, 0, 0, 0, 'limejuices.jpg', 'imresizer-1733566499866.jpg', 'imresizer-17335664998661.jpg', 'imresizer-17335664998662.jpg', 'imresizer-17335664998663.jpg', 0, 1, 'veg', 'ചെറുനാരങ്ങ ജ്യൂസ്', 'Fresh Lime', 'नींबू का जूस', 'عصير الليمون', 'ചെറുനാരങ്ങ ജ്യൂസ്', 'Fresh Lime', 'नींबू का जूस', 'عصير الليمون', 0),
(22, 4, 0, 0, 0, 'idiyappam_veg_curry.jpg', '', '', '', '', 0, 0, 'veg', 'ഇടിയപ്പം കൂടെ പച്ചക്കറി കുരുമ', 'Idiyappam With Veg Kurma', 'इडियप्पम के साथ सब्ज़ी क़ोरमा', 'إدييابام مع كُرما الخضروات', 'ഇടിയപ്പം കൂടെ പച്ചക്കറി കുരുമ', 'idiyappam with veg kurma', 'इडियप्पम के साथ सब्ज़ी क़ोरमा', 'إدييابام مع كُرما الخضروات', 1),
(28, 4, 0, 0, 0, 'poratta.jpg', 'crispyfriedveg1.jpg', 'images_(4).jpg', 'poratta4.png', 'soup1.jpg', 0, 0, 'veg', 'പൊറോട്ടയും പച്ചക്കറി കറിയും', 'Poratta With Veg Curry', 'परोटा और सब्जी की करी', 'بروتا مع كاري الخضار', 'പൊറോട്ടയും പച്ചക്കറി കറിയും', 'poratta with veg curry', 'परोटा और सब्जी की करी', 'بروتا مع كاري الخضار', 1),
(29, 4, 0, 0, 0, 'ghee_roast_main.jpg', '', '', '', '', 0, 0, 'veg', 'നെയ്യ് റോസ്റ്റ്', 'Ghee Roast', 'घी रोस्ट', 'جي روست', 'സ്വാദിഷ്ടമായ നെയ്യിൽ വഴറ്റിയുള്ള തിളങ്ങുന്ന വിഭവം, മണവും രുചിയും നിറഞ്ഞത്', 'A deliciously golden roast cooked with rich, aromatic ghee for a melt-in-the-mouth experience', ' सुगंधित घी में पकाया गया सुनहरा और स्वादिष्ट व्यंजन।', 'جي روست', 1),
(38, 7, 0, 0, 0, 'imresizer-17321818040602.png', 'imresizer-17321812415301.jpg', 'imresizer-17321812415305.jpg', 'imresizer-17321812415303.jpg', 'imresizer-17321812415304.jpg', 0, 0, 'veg', 'test', 'Papaya Juice', 'test', 'test', 'test', ' Papaya juice prepared with this recipe is a heavenly experience for palate and provides healthy dose of nutrients and minerals like calcium, chlorine, iron, phosphorus, potassium, etc. Papaya juice prepared with this recipe is a heavenly experience for palate and provides healthy dose of nutrients and minerals like calcium, chlorine, iron, phosphorus, potassium, etc.', 'test', 'test', 1),
(39, 4, 4, 0, 0, 'imresizer-1733307262735.jpg', 'imresizer-17333072627351.jpg', 'imresizer-17333072627352.jpg', 'imresizer-17333072627353.jpg', 'imresizer-17333072627354.jpg', 0, 0, 'non-veg', 'ചിക്കൻ പുട്ട്', 'Chicken Puttu', ' चिकन पुट्टू', ' بوتو بالدجاج', 'കേരളത്തിന്റെ പരമ്പരാഗത പുട്ട് വിഭവത്തിൽ ചിക്കൻ മസാല ചേർത്തു നിർമിച്ചൊരു രുചികരമായ പുതിയ അനുഭവം. അരിപൊടിയും മോടിപിടിപ്പിച്ച ചിക്കനും ചേർത്ത് പുകവാസനയോടെ പാചകം ചെയ്തത്', 'A unique twist on the traditional Kerala puttu, made with layers of steamed rice flour and spicy chicken masala. This flavorful dish combines the softness of puttu with the rich, aromatic taste of chicken curry, making it a delightful fusion of textures and flavors', ' पारंपरिक केरल पुट्टू में चिकन मसाला मिलाकर बनाया गया एक स्वादिष्ट और अनोखा व्यंजन। चावल के आटे और मसालेदार चिकन के परतों के साथ भाप में पकाया गया।', 'طبق بوتو التقليدي من ولاية كيرالا، ممزوج بمزيج من الدجاج المتبل بشكل لذيذ. يُطهى على البخار مع طبقات من دقيق الأرز والدجاج المتبل للحصول على نكهة فريدة ومميزة', 0),
(40, 6, 4, 0, 0, 'imresizer-1733308518416.jpg', 'imresizer-17333085184161.jpg', 'imresizer-17333085184162.jpg', 'imresizer-17333085184163.jpg', 'imresizer-17333085184164.jpg', 0, 0, 'non-veg', 'ചിക്കൻ കബാബ് ', 'Chicken Kabab', ' चिकन कबाब', 'كباب الدجاج', ' സുഗന്ധമുള്ള മസാലകളിൽ മാരിനേറ്റ് ചെയ്ത, മൃദുവായ ചിക്കൻ കഷണങ്ങൾ വറുത്തോ ഗ്രിൽ ചെയ്തോ തയ്യാറാക്കുന്നത്. ഇത് ഒരു കേരളീയ മെല്ലിഞ്ഞ വിഭവമാണ്, മിന്റ് ചട്ണിയോ ഇഷ്ടമുള്ള ഡിപ്പുകളോ കൂടി വിളമ്പാം', 'Succulent and juicy chicken pieces marinated with aromatic spices and grilled or fried to perfection. This flavorful dish is a classic appetizer, served with mint chutney or your favorite dip.', 'सुगंधित मसालों में मरीनेट किए गए चिकन के रसीले और कोमल टुकड़े, जो ग्रिल या तले हुए होते हैं। यह स्वादिष्ट व्यंजन एक क्लासिक ऐपेटाइज़र है जिसे पुदीना चटनी या अपनी पसंद के डिप के साथ परोसा जाता है।', 'قطع دجاج طرية وعصرية متبلة بالتوابل العطرية ومشوية أو مقلية حتى الكمال. هذا الطبق اللذيذ يُعتبر مقبلات كلاسيكية، يُقدم مع صلصة النعناع أو الغموس المفضل لديك.\r\n\r\n', 0),
(41, 8, 4, 0, 0, 'chicken_mandhi.jpg', 'chicken_mandhi5.jpg', 'chicken_mandhi6.jpg', 'chicken_mandhi7.jpg', 'chicken_mandhi8.jpg', 1, 0, 'non-veg', ' ചിക്കൻ മന്ദി', 'Chicken Mandhi', ' चिकन मंधी', ' مندي الدجاج', ' മൃദുവായ ചിക്കനും സുഗന്ധമുള്ള ചോറും ചേർത്ത യമനി ഉത്ഭവമുള്ള ഒരു പരമ്പരാഗത വിഭവം. ചിക്കൻ മന്ദി അൽപതാപത്തിൽ ചേരുവകൾ ഉറ്റു വേവിച്ചതിനാൽ അതിന്റെ സമ്പന്നമായ രുചിയും സുഗന്ധവുമാണ് പ്രത്യേകത.\r\n\r\n', 'A traditional yemeni mandi, consisting of juicy tender chicken steamed to perfection, added in with aromated basmati rice and a special blend of magical spices that take your breath away. A delicious plate full of a meal that is best shared with your friends and family, but also makes for a kingly solo meal.', 'चिकन मंधी एक पारंपरिक यमनी व्यंजन है, जिसमें सुगंधित चावल और नरम, धीमी आंच पर पका हुआ चिकन शामिल है। यह अपने समृद्ध स्वाद और अनोखे मसालों के लिए प्रसिद्ध है।', 'مندي الدجاج هو طبق تقليدي يمني يتكون من الأرز المتبل والدجاج الطري المطهو ببطء. يتميز بنكهاته العطرية وطريقة طهيه الفريدة على نار هادئة.\r\n\r\n', 0),
(42, 8, 9, 0, 0, 'button_mandhi.jpg', 'button_mandhi1.jpg', 'button_mandhi2.jpg', 'button_mandhi3.jpg', 'button_mandhi4.jpg', 1, 0, 'non-veg', 'മട്ടൺ മന്ദി ', 'Mutton Mandhi', ' मटन मंधी', 'مندي اللحم', 'മാടിന്റെ മൃദുവായ മാംസവും സുഗന്ധമുള്ള ചോറും ചേർന്ന് തയ്യാറാക്കുന്ന യമനി ഉത്ഭവമുള്ള ഒരു പാരമ്പര്യ വിഭവം. അൽപതാപത്തിൽ വേവിച്ച് മസാലകളുടെ സമ്പുഷ്ടമായ രുചിയും സുഗന്ധവുമുള്ള ഈ വിഭവം അവിസ്മരണീയമായ രുചിയാണ് നൽകുന്നത്', 'Prepared by using tender lamb that is further roasted to enhance its taste. Served with moist and delicate rice that compliments the tender cut of lamb very well. A meal you can\'t miss out on. No mayannoise will be served', ' मटन मंधी एक पारंपरिक यमनी व्यंजन है जिसमें नर्म और धीमी आंच पर पका हुआ मटन और सुगंधित चावल का मेल होता है। यह पकवान अपने अनोखे मसालों और समृद्ध स्वाद के लिए खास है।\r\n\r\n', ' مندي اللحم هو طبق يمني تقليدي يتكون من لحم الضأن الطري المطبوخ ببطء والأرز المتبل. يتميز بنكهات غنية وطريقة تحضيره الفريدة على نار هادئة.\r\n\r\n', 0),
(43, 8, 5, 0, 0, 'fish_mandhi.jpg', 'fish_mandhi1.jpg', 'fish_mandhi2.jpg', 'fish_mandhi3.jpg', 'fish_mandhi4.jpg', 0, 0, 'non-veg', 'ഖനാത്', 'Khan\'ath', 'ख़न\'अथ', 'خناث', ' ഒരു പാരമ്പര്യ പേര്/വിഭാവമായ ഖനാത്, അതിന്റെ ദൃഢതയും ആത്മീയതയുമായ സംയോജനത്തിൽ നിന്നുള്ള ഒരു അനുഭവമാണ്. ഇത് കാലാതീതമായ ഒരു സമ്പദ് സമാഹാരം പ്രതിനിധാനം ചെയ്യുന്നു', 'A fresh king fish fried to perfection with spices and herbs. A handy helping of sticky and flavored rice served alongside to complete whopper delicious sea food detour', ' ख़न\'अथ एक पारंपरिक नाम/वस्तु है जो इसके गहरे अर्थ और ऐतिहासिक महत्व को दर्शाता है। यह समृद्ध सांस्कृतिक धरोहर का प्रतीक है।', 'خناث: خناث تعبر عن إرث تقليدي مليء بالدلالات العميقة والمعاني الروحية. إنه رمز للتاريخ والتراث الثقافي الغني.', 0),
(44, 9, 9, 0, 0, 'mutton_madafoon.jpg', 'mutton_madafoon1.jpg', 'mutton_madafoon2.jpg', 'mutton_madafoon3.jpg', 'mutton_madafoon4.jpg', 1, 0, 'non-veg', ' മട്ടൺ മദ്‌ഫൂൺ', 'Mutton Madfoon', ' मटन मदफून', 'المدفون باللحم', 'മസ്‌തമായ മസാലകളാൽ മൃദുവായ മട്ടൺ മാംസവും സുഗന്ധമുള്ള ചോറും ചേർന്ന്, മണ്ണിടിച്ചിട്ടതുപോലുള്ള പാചക രീതിയിൽ പാകം ചെയ്ത ഒരു പരമ്പരാഗത അറബി വിഭവമാണ്. തനതായ രുചിയും സുഗന്ധവുമാണ് ഈ വിഭവത്തിന്റെ പ്രത്യേകത', 'Tender mutton wrapped up in foil and steamed to perfection, served with the winning combination of potatoes and pepper. Complete with a serving of flavour-filled rice', 'मटन मदफून एक पारंपरिक अरबी व्यंजन है, जिसमें मसालेदार मटन और सुगंधित चावल को धीमी आंच पर खास पद्धति में पकाया जाता है। इसका अनोखा स्वाद और खुशबू इसे विशेष बनाते हैं।', 'المدفون باللحم هو طبق عربي تقليدي يتميز بتتبيل لحم الضأن الطري والأرز العطري، ويُطهى بطريقة مدفونة على نار هادئة، مما يمنحه نكهة غنية وشهية.', 0),
(45, 9, 4, 0, 0, 'imresizer-1733721911412.jpg', 'imresizer-17337219114121.jpg', 'imresizer-17337219114122.jpg', 'imresizer-17337219114123.jpg', 'imresizer-17337219114124.jpg', 1, 0, 'non-veg', ' ചിക്കൻ മദ്‌ഫൂൺ', 'Chicken madfoon', ' चिकन मदफून', 'المدفون بالدجاج', 'ചിക്കൻ മദ്‌ഫൂൺ ഒരു പരമ്പരാഗത അറബി വിഭവമാണ്, മൃദുവായ ചിക്കനും സുഗന്ധമുള്ള ചോറും ചേർത്ത് മണ്ണിടിച്ചിട്ടതുപോലുള്ള പാചക രീതിയിൽ പാകം ചെയ്യുന്നത്. സമ്പുഷ്ടമായ മസാലകളും തനതായ രുചിയും ഇതിന്റെ പ്രത്യേകതയാണ്', 'Foil wrapped chicken, steamed and slow cooked to tender perfection, topped off with pepper, while a winning combination of potatoes and flavored rice is added to the mixed. A truly delicious meeting of exquisite tastes to light up your taste buds.', 'चिकन मदफून एक पारंपरिक अरबी व्यंजन है जिसमें नरम चिकन और सुगंधित चावल को धीमी आंच पर खास तरीके से पकाया जाता है। इसमें मसालों का गहरा स्वाद होता है, जो इसे खास बनाता है।', ' المدفون بالدجاج هو طبق عربي تقليدي يتميز بتتبيل الدجاج الطري والأرز المتبل وطهيه ببطء باستخدام طريقة مدفونة، مما يمنحه نكهة غنية ولذيذ', 0),
(46, 10, 9, 0, 0, 'imresizer-1733547567340.jpg', 'imresizer-17335475673401.jpg', 'imresizer-17335475673402.jpg', 'imresizer-17335475673403.jpg', 'imresizer-17335475673404.jpg', 1, 0, 'non-veg', ' മട്ടൺ മസ്ബി', 'Mutton Mazbi', 'मटन मझबी', ' مذبى اللحم ', 'മട്ടൺ മസ്ബി ഒരു പരമ്പരാഗത അറബി വിഭവമാണ്, മൃദുവായ മട്ടൺ മാംസത്തെ സുഗന്ധമുള്ള മസാലകളിൽ മാരിനേറ്റ് ചെയ്ത്, തീയിൽ കുലുക്കി അല്ലെങ്കിൽ ഗ്രിൽ ചെയ്ത് പാകം ചെയ്യുന്നു. സമ്പുഷ്ടമായ രുചിയും പുകവാസനയും ഉള്ള ഒരു രുചികരമായ വിഭവം', 'Mutton Mazbi is a traditional Arabic dish where tender mutton is marinated with a blend of aromatic spices and cooked over an open flame or grilled to perfection. The result is a juicy, flavorful dish with a smoky aroma, often served with rice or flatbread', ' मटन मझबी एक पारंपरिक अरबी व्यंजन है जिसमें मटन को खुशबूदार मसालों में मरीनेट कर धीमी आंच पर जलाया या ग्रिल किया जाता है। यह व्यंजन अपनी smoky खुशबू और स्वाद के लिए प्रसिद्ध है, और इसे चावल या रोटी के साथ परोसा जाता है।', ' مذبى اللحم ', 0),
(47, 11, 4, 0, 0, 'imresizer-1733722150017.jpg', 'imresizer-17337221500171.jpg', 'imresizer-17337221500172.jpg', 'imresizer-17337221500173.jpg', 'imresizer-17337221500174.jpg', 0, 0, 'non-veg', ' മുഗൽഗൽ ചിക്കൻ', 'Mugalgal Chicken', 'मुघलगल चिकन', 'دجاج مغلغل', 'മുഗൽഗൽ ചിക്കൻ ഒരു സമ്പന്നവും രുചികരവുമായ Mughlai പാചകവിഭവമാണ്. മൃദുവായ ചിക്കൻ, തയാറാക്കാൻ ഉപയോഗിക്കുന്ന പാൽ, ദ്രാവകം, മസാലകൾ, മട്ടൺ, കശുക്കായ് തുടങ്ങിയ വേരിയേഷൻസുകൾ ചേർന്ന് പാകം ചെയ്യപ്പെടുന്നു. ഈ വിഭവം സാധാരണയായി നാൻ അല്ലെങ്കിൽ ചോറിനൊപ്പം സർവുചെയ്യപ്പെടുന്നു', 'A traditional spice coated chicken with an essence of Arabia. The soft inside and crisp coating defines it\'s perfection', ' मुघलगल चिकन एक समृद्ध और स्वादिष्ट मुग़लई व्यंजन है। इस व्यंजन में मुलायम चिकन को दही, मसालों और मेवे के साथ पकाया जाता है। यह व्यंजन प्याज़, किशमिश और धनिया से सजाया जाता है और नान या चावल के साथ परोसा जाता है।', 'دجاج مغلغل هو طبق غني ولذيذ مستوحى من المطبخ المغولي. يتم طهي الدجاج الطري في صلصة كريمية وعطرية تحتوي على الزبادي والتوابل المطحونة والمكسرات. غالبًا ما يتم تزيينه بالبصل المقلي والزبيب والكزبرة، ويُقدّم مع الخبز أو الأرز.\r\n\r\n', 0),
(48, 12, 0, 0, 0, 'imresizer-1733722339182.jpg', 'imresizer-17337223391821.jpg', 'imresizer-17337223391822.jpg', 'imresizer-17337223391823.jpg', 'imresizer-17337223391824.jpg', 0, 0, 'non-veg', ' പ്രൗൺസ് മഷ്വി', 'Prawns Mashwi', ' प्रॉन्स माश्वी', 'روبيان مشوي', ' പ്രൗൺസ് മഷ്വി ഒരു അറബി ഗ്രിൽ ചെയ്ത വിഭവമാണ്, പുഷ്പമാർന്ന മസാലകൾ, സസ്യങ്ങൾ, ഒലിവ് എണ്ണ എന്നിവ ചേർത്ത് പ്രൗൺസ് മാരിനേറ്റ് ചെയ്ത്, ഗ്രിൽ ചെയ്തു പാകം ചെയ്യുന്നത്. പുകവാസനയോടെ, മൃദുവായ, രുചികരമായ ഈ സമുദ്രവസ്തു ചോറോ റോട്ടിയോ അനുയോജ്യമാണ്', 'Prawns Mashwi is a delicious Arabic grilled dish where prawns are marinated in a blend of spices, herbs, and olive oil, then grilled to perfection. The result is a smoky, tender, and flavorful seafood dish that pairs wonderfully with rice or flatbread.', 'प्रॉन्स माश्वी एक स्वादिष्ट अरबी व्यंजन है, जिसमें झींगे को मसालों, जड़ी-बूटियों और जैतून के तेल में मरीनेट करके ग्रिल किया जाता है। यह व्यंजन एक धुएंदार, नर्म और स्वादिष्ट समुद्री भोजन है, जिसे चावल या रोटी के साथ परोसा जाता है।', 'الروبيان المشوي هو طبق عربي شهي حيث يتم تتبيل الروبيان بمجموعة من التوابل والأعشاب وزيت الزيتون، ثم يُشوى حتى يصبح طريًا ولذيذًا. يتميز هذا الطبق بنكهته المدخنة ويمكن تناوله مع الأرز أو الخبز.\r\n\r\n', 0),
(49, 12, 0, 0, 0, 'prawns_saloona.jpg', 'prawns_saloona1.jpg', 'prawns_saloona2.jpg', 'prawns_saloona3.jpg', 'prawns_saloona4.jpg', 0, 0, 'non-veg', ' പ്രൗൺസ് സലൂന', 'Prawns Saloona', ' प्रॉन्स सालूना', 'روبيان سالونا ', ': പ്രൗൺസ് സലൂന ഒരു സമൃദ്ധമായ, സുഗന്ധവനിതമായ കറി വിഭവമാണ്. മുളക്, മഞ്ഞൾ, സതവാര, ഇഞ്ചി എന്നിവ ചേർന്ന് പ്രൗൺസ് തൈര്, ചിരട്ടകഥിരി എന്നിവയിൽ പാകം ചെയ്ത് തയ്യാറാക്കുന്നു. ചോറോ റോട്ടിയുമായി സർവുചെയ്യാം.\r\n\r\n', 'A classic Arabian stew with prawns as the dominant ingredient. This versatile saloona combines generously seasoned broth with sauteed veggies and prawns.', 'प्रॉन्स सालूना एक स्वादिष्ट और खुशबूदार करी है, जिसमें झींगे को मसालेदार टमाटर की ग्रेवी में पकाया जाता है। यह व्यंजन अपनी विशेष स्वाद और मसालों के लिए जाना जाता है और चावल या रोटी के साथ परोसा जाता है।', 'روبيان سالونا هو طبق كاري لذيذ وعطري يتم طهي الروبيان في صلصة غنية ومعتمدة على الطماطم مع مزيج من الأعشاب والتوابل. يتميز هذا الطبق بطعمه الفريد وغالبًا ما يُقدّم مع الأرز أو الخبز.\r\n\r\n', 0),
(50, 13, 4, 0, 0, 'jojo_kabab_(2).jpg', 'jojo_kabab_(2)1.jpg', 'jojo_kabab_(2)2.jpg', 'jojo_kabab_(2)3.jpg', 'jojo_kabab_(2)4.jpg', 0, 0, 'non-veg', ' ജോജോ കെബാബ്', 'Jojo Kebab', ' जोजो कबाब', 'كباب جوجو', 'ജോജോ കെബാബ് തനതു രുചിയുള്ള കെബാബ് വകഭേദമാണ്, സാധാരണയായി കോഴി അല്ലെങ്കിൽ മട്ടൺ മാംസത്തിൽ മസാലകളും സസ്യങ്ങളും ചേർത്ത് പകറ്റുന്നു. ഈ മിശ്രിതം സ്ക്യൂവറിൽ എടുക്കുകയും, ഗ്രിൽ ചെയ്ത് ദൃഢവും മൃദുവായ ഒരു വിഭവമായി ഒരുക്കുന്നു. ഇത് സാധാരണയായി ചോറോ റോട്ടിയുമായി ഉപയോഗിക്കുന്നു', 'A yummilicious plate of chicken marinated in a blend of zesty spices and fresh ingredients which could take you on a journey of delight.', 'जोजो कबाब पारंपरिक कबाब का एक स्वादिष्ट रूप है, जिसमें कटी हुई मांस (आमतौर पर चिकन या मटन) को मसालों और जड़ी-बूटियों के साथ मिलाकर स्क्यूअर पर पकाया जाता है। यह कबाब ग्रिल करके सुनहरा और मुलायम बनाया जाता है, और इसे चावल, नान या सलाद के साथ परोसा जाता है।\r\n\r\n', ' كباب جوجو هو نوع لذيذ من الكباب التقليدي، يتم تحضيره من اللحم المفروم (عادة الدجاج أو لحم الضأن) مع مزيج من التوابل والأعشاب. يتم تشكيل الخليط على أسياخ ثم يُشوى حتى يصبح ذهبي اللون وطريًا. يُقدّم عادة مع الأرز أو الخبز أو السلطة الطازجة.', 0),
(63, 15, 0, 0, 0, 'imresizer-1733725715115.jpg', 'imresizer-17337257151151.jpg', 'imresizer-17337257151152.jpg', 'imresizer-17337257151153.jpg', 'imresizer-17337257151154.jpg', 1, 0, 'non-veg', ' ചിക്കൻ വരട്ടിയത്', 'Chicken Varattiyathu', 'चिकन वरटियथु', 'دجاج فاراتياتو', 'ചിക്കൻ വരട്ടിയത് കേരളത്തിന്റെ സവിശേഷമായ ഒരു വരട്ടിച്ച വിഭവമാണ്, ഇത് സമൃദ്ധമായ രുചിയും സുഗന്ധമുള്ള മസാലകളുമായി പ്രസിദ്ധമാണ്. ചിക്കന്റെ കഷണങ്ങൾ നല്ലതുപോലെ വേവിച്ചു, ഉള്ളി, തക്കാളി, ഇഞ്ചി, വെളുത്തുള്ളി എന്നിവയും കരിവേപ്പില, മുളകുപൊടി, മഞ്ഞൾപൊടി എന്നിവ ചേർത്തുമാണ് ഈ വിഭവം തയ്യാറാക്കുന്നത്. ഇതിന്റെ ദൃഢമായ ടെക്സ്ചർ പാറോട്ട, ചപ്പാത്തി, അല്ലെങ്കിൽ അരി എന്നിവയുമായി കഴിക്കാൻ അനുയോജ്യമാണ്', '| Serve 1 | Medium spicy | A mouthwatering dish prepared with chicken fried to golden brown and stir fried with assorted vegetables and spicy sauces with gravy', ' चिकन वरटियथु केरल का एक पारंपरिक सूखा चिकन व्यंजन है, जो अपनी समृद्ध मसालों और गहरी स्वादिष्टता के लिए जाना जाता है। चिकन के टुकड़ों को धीमी आंच पर प्याज, टमाटर, अदरक, लहसुन और मसालों जैसे काली मिर्च, दालचीनी, और लौंग के साथ पकाया जाता है, जिससे इसका स्वाद गहरा और अनोखा बनता है। इसका गाढ़ा, अर्ध-सूखा टेक्सचर इसे पराठा, चपाती या चावल के साथ खाने के लिए परफेक्ट बनाता है। यह डिश अपने प्रामाणिक दक्षिण भारतीय स्वाद के लिए बेहद लोकप्रिय है।', 'دجاج فاراتياتو هو طبق كيرالي تقليدي يتميز بنكهات غنية وتوابل عطرية. تُطهى قطع الدجاج الطرية على نار هادئة مع البصل المحمص والطماطم والزنجبيل والثوم ومزيج من التوابل مثل الفلفل الأسود والقرفة والقرنفل لإعداد طبق ذو نكهة عميقة. يتميز بقوامه السميك وشبه الجاف، مما يجعله مثاليًا لتقديمه مع الباراتا أو الشباتي أو الأرز. يُعتبر هذا الطبق مفضلاً بفضل طعمه الجريء ولمسته الهندية الجنوبية الأصيلة.\r\n\r\n', 0),
(51, 13, 4, 0, 0, 'imresizer-1733723110113.jpg', 'imresizer-17337231101131.jpg', 'imresizer-17337231101132.jpg', 'imresizer-17337231101133.jpg', 'imresizer-17337231101134.jpg', 0, 0, 'non-veg', 'ഷിഷ് താവൂക്ക്', 'Shish Tawook', 'शिश तावूक', 'شيش طاووق', 'ഷിഷ് താവൂക്ക് ഒരു പ്രമാണമായ മിഡിൽ ഈസ്റ്റർൻ വിഭവമാണ്, പച്ചമുളക്, വെളുത്തുള്ളി, നാരങ്ങാനീർ, യൂഗർട്ട് എന്നിവ ചേർന്ന് മസാലകളിൽ മാരിനേറ്റ് ചെയ്ത ചിക്കൻ ക്യൂബുകൾ ഉപയോഗിച്ച് തയ്യാറാക്കുന്നു. ഈ ചിക്കൻ സ്ക്യൂവറിൽ എടുക്കുകയും, ഗ്രിൽ ചെയ്ത് മൃദുവായ, രുചികരമായ ചിക്കൻ പീസുകൾ ആയി ഉണ്ടാക്കുന്നു. ഇത് സാധാരണയായി ചോറോ പിതാ ബ്രെഡ് അല്ലെങ്കിൽ ഒരു പുതുതായി തയ്യാറാക്കിയ സാലഡോടു കൂടി സമർപ്പിക്കുന്നു.', 'The very popular skewered chicken in the Middle East. The flavour is all about its marinade. The marination of earthy spices , yoghurt, lemon juice and garlic makes up the perfection.', ': शिश तावूक एक लोकप्रिय मध्य-पूर्वी व्यंजन है, जिसमें चिकन के टुकड़ों को मसालों, लहसुन, नींबू और दही में मरीनेट किया जाता है। फिर इस चिकन को स्क्यूअर पर लगाकर ग्रिल किया जाता है, जिससे यह नर्म और रसदार बन जाता है, और एक smoky स्वाद प्राप्त होता है। इसे चावल, पिटा ब्रेड या ताजे सलाद के साथ परोसा जाता है।', 'شيش طاووق هو طبق مشهور في المطبخ الشرق أوسطي يتم تحضير قطع الدجاج المقطعة والمتبلة بمزيج من التوابل والثوم والليمون والزبادي. يتم وضع الدجاج على أسياخ ويشوى حتى يصبح طريًا ولذيذًا، مع نكهة مدخنة. يُقدّم عادة مع الأرز أو خبز البيتا أو سلطة طازجة.\r\n\r\n', 0),
(52, 13, 0, 0, 0, 'kabab_platter.jpg', 'kabab_platter1.jpg', 'kabab_platter2.jpg', 'kabab_platter3.jpg', 'kabab_platter4.jpg', 0, 0, 'non-veg', ' കെബാബ് പ്ലാറ്റർ', 'Kebab Platter', 'कबाब प्लेटर', ' طبق كباب', 'കെബാബ് പ്ലാറ്റർ പലവിധ കെബാബുകൾ ഉൾപ്പെട്ട ഒരു രുചികരമായ വിഭവമാണ്. ഇതിൽ സാധാരണയായി കോഴി, മട്ടൺ അല്ലെങ്കിൽ ബീഫ് എടുക്കുകയും, ഗ്രിൽ ചെയ്യുകയും ചെയ്യുന്നു. ഈ പ്ലാറ്ററിൽ സാധാരണയായി പിതാ ബ്രെഡ്, ചോരം, പുതിയ സാലഡ് എന്നിവയും ചേർക്കപ്പെടുന്നു. വിവിധ രുചികൾ ചേർന്നുള്ള ഒരു പൂർണ്ണമായ ഭക്ഷണമായാണ് ഇത് അനുയോജ്യമായത്.', 'Pieces of kebab seasoned and grilled to refined perfection. The smokiness and juiciness incorporated gifts a filling food experience', ' कबाब प्लेटर विभिन्न प्रकार के कबाबों का एक स्वादिष्ट संग्रह होता है, जिसमें आमतौर पर चिकन, मटन, या गोमांस के मांस को मसालों में मेरिनेट करके ग्रिल किया जाता है। इस प्लेटर में नान, चावल, और ताजे सलाद के साथ परोसा जाता है। यह एक समृद्ध और स्वादिष्ट भोजन है, जो साझा करने या विभिन्न कबाबों का आनंद लेने के लिए आदर्श है।', 'طبق الكباب هو مجموعة لذيذة من أنواع مختلفة من الكباب، والتي تشمل عادة اللحوم المشوية مثل الدجاج، لحم الضأن أو اللحم البقري. يتم تقديم هذا الطبق عادة مع خبز البيتا، الأرز، أو الخضروات الطازجة. إنه وجبة غنية ولذيذة، مثالية للمشاركة أو للاستمتاع بتنوع النكهات.', 0),
(53, 14, 0, 0, 0, 'imresizer-1733723511962.jpg', 'imresizer-17337235119621.jpg', 'imresizer-17337235119622.jpg', 'imresizer-17337235119623.jpg', 'imresizer-17337235119624.jpg', 0, 0, 'veg', 'അറബി സാലഡ്', 'Arabic Salad', ' अरबी सलाद', 'سلطة عربية ', 'അറബി സാലഡ് വിവിധ പച്ചക്കറികൾ (തക്കാളി, വളർത്തുകന്നി, ഉള്ളി, പാക്കച്ചീനി) ചെറുതായി ചതച്ചാണ് തയ്യാറാക്കുന്നത്. ഇത് ഓലിവ് എണ്ണ, നാരങ്ങാനീർ, ഉപ്പു എന്നിവ ചേർത്ത് ഡ്രസ്സിംഗ് ആയി ചെയ്യുന്നു. ഈ സാലഡ് പകൃതി രുചിയിലും സമ്പുഷ്ടമായ ഭക്ഷണമായും അറിയപ്പെടുന്നു. ഇത് സാധാരണയായി ഗ്രിൽ ചെയ്ത മാംസം, ചോറ്, അല്ലെങ്കിൽ റോട്ടിയുമായി സൈഡ് ഡിഷ് ആയി ഉപയോഗിക്കുന്നു', ' Arabic Salad is a fresh, light dish made with finely chopped vegetables like tomatoes, cucumbers, onions, and parsley. It\'s typically dressed with olive oil, lemon juice, and a pinch of salt. This salad is known for its refreshing taste and is often served as a side dish with grilled meats, rice, or flatbreads.', ' अरबी सलाद एक ताजगी से भरपूर, हल्का व्यंजन है, जिसमें टमाटर, खीरा, प्याज और हरे धनिये जैसी सब्जियों को बारीक काट कर डाला जाता है। इसे आमतौर पर जैतून का तेल, नींबू का रस और थोड़ा सा नमक से सजाया जाता है। यह सलाद अपने ताजे स्वाद के लिए जाना जाता है और ग्रिल किए गए मांस, चावल, या रोटियों के साथ साइड डिश के रूप में परोसा जाता है।', 'ة العربية هي طبق طازج وخفيف يتكون من خضروات مفرومة بشكل دقيق مثل الطماطم، الخيار، البصل، والبقدونس. عادةً ما يتم تتبيله بزيت الزيتون، عصير الليمون، ورشة من الملح. تشتهر هذه السلطة بطعمها المنعش وتُقدّم غالبًا كطبق جانبي مع اللحوم المشوية أو الأرز أو الخبز', 0),
(54, 14, 0, 0, 0, 'imresizer-1733723725496.jpg', 'imresizer-17337237254961.jpg', 'imresizer-17337237254962.jpg', 'imresizer-17337237254963.jpg', 'imresizer-17337237254964.jpg', 0, 0, 'veg', ' ഫത്തൂഷ് സാലഡ്', 'Fattoush Salad', 'फत्तूश सलाद', ' فتوش', ' ഫത്തൂഷ് സാലഡ് മിഡിൽ ഈസ്റ്റർണിലെ പ്രചാരമുള്ള ഒരു സാലഡാണ്, തക്കാളി, വളർത്തുകന്നി, വെച്ചിലക്ക, സാലട്ട് എന്നിവ പോലുള്ള പച്ചക്കറികളെയും, കറുപ്പായ അല്ലെങ്കിൽ തംഗിയുള്ള പിതാ ബ്രെഡ് കഷണങ്ങളെയും ചേർത്ത് തയ്യാറാക്കുന്നു. ഓലിവ് എണ്ണ, നാരങ്ങാനീർ, പുതിനയും മസാലയും ചേർത്ത് ഇതിന്റെ താർക്കിഷ്, ചോറും പുതിയ രുചിയുമായി ഉപയോഗിക്കുന്നു. ഗ്രിൽ ചെയ്ത മാംസം അല്ലെങ്കിൽ ഫലാഫലുമായി ഇത് ഒരു സാധാരണ സൈഡ് ഡിഷ് ആയി ഉപയോഗിക്കുന്നു.\r\n\r\n', 'Essentially a bread salad with in-season vegetables and herbs, dressed in a zesty lime vinaigrette. The very fresh, out of the oven pita bread makes this simply awesome.', 'फत्तूश सलाद एक पारंपरिक मध्य-पूर्वी व्यंजन है, जिसमें ताजे सब्जियों जैसे टमाटर, खीरा, मूली, और सलाद पत्तियां डाली जाती हैं, साथ ही तली हुई या भुनी हुई पिटा ब्रेड के कुरकुरे टुकड़े भी होते हैं। इस सलाद को जैतून का तेल, नींबू का रस, अनार के सिरके, और मसालेदार जड़ी-बूटियों से सजाया जाता है, जिससे इसे एक तीव्र और ताजगी से भरपूर स्वाद मिलता है। यह व्यंजन सामान्यत: ग्रिल किए गए मांस या फलाफेल के साथ परोसा जाता है।', ' فتوش هو طبق سلطة تقليدي من المطبخ الشرق أوسطي يتكون من مجموعة من الخضروات الطازجة مثل الطماطم والخيار والفجل والخس، بالإضافة إلى قطع الخبز العربي المحمص أو المقلي المقرمشة. يتم تتبيله بزيت الزيتون وعصير الليمون ودبس الرمان ومزيج من الأعشاب والتوابل، مما يعطيه طعمًا لاذعًا ومنعشًا. عادةً ما يتم تقديمه كطبق جانبي مع اللحوم المشوية أو الفلافل.\r\n\r\n', 0),
(55, 20, 0, 0, 0, 'imresizer-1733552512083.jpg', 'imresizer-17335525120831.jpg', 'imresizer-17335525120832.jpg', 'imresizer-17335525120833.jpg', 'imresizer-17335525120834.jpg', 0, 1, 'veg', ' മിന്‍റ് ലൈം', 'Mint Lime', ' पुदीना नींबू ', 'نعناع ليمون ', 'മിന്‍റ് ലൈം ഒരു താസ്സും പുതുമുള്ള ദ്രാവകമാണ്, പുതിയ മിൻറ് ഇലകൾ, നാരങ്ങാനീർ, ഒരു ചെറിയ മധുരം എന്നിവ ചേർത്ത് തയ്യാറാക്കുന്നു. മിൻറ് ഇലകൾ തണുത്തും സുഗന്ധവുമുള്ള രുചി നൽകുന്നു, അതേ സമയം നാരങ്ങാനീർ ഇതിന് കഷ്ണമായയും വൃദ്ധനായി ചൂടോടെ രുചിയുണ്ട്. ഇത് എത്രയാണെങ്കിൽ തണുപ്പിക്കാൻ, ഐസുമായി ചേർത്ത് കുടിക്കാൻ ഒരു മികച്ച തിരഞ്ഞെടുപ്പാണ്.', 'A refreshing and healthy drink with freshly squeezed juice of mint and lemon. The delicate and tender texture of mint with its flavour adding purposes makes the dish.', 'पुदीना नींबू एक ताजगी से भरपूर और खट्टा-मीठा पेय है, जो ताजे पुदीने के पत्तों, नींबू के रस, और थोड़े से मीठे तत्वों से तैयार किया जाता है। पुदीना पत्तियां इसे ठंडा और खुशबूदार स्वाद देती हैं, जबकि नींबू का रस इसे तीव्र और खट्टा बनाता है। यह गर्मियों में ताजगी देने वाला पेय है और बर्फ के साथ ठंडा परोसा जाता है।', 'نعناع ليمون هو مشروب منعش وحامض يتكون من أوراق النعناع الطازجة وعصير الليمون ولمسة من التحلية. تضيف أوراق النعناع نكهة باردة وعطرية، بينما يمنح عصير الليمون طعماً حامضاً ولاذعاً. إنه المشروب المثالي للتغلب على حرارة الصيف، وعادةً ما يُقدّم بارداً مع مكعبات الثلج ليكون منعشاً ومرويّاً.\r\n\r\n', 0),
(56, 4, 0, 0, 0, 'imresizer-1733724002253.jpg', 'imresizer-17337240022531.jpg', 'imresizer-17337240022532.jpg', 'imresizer-17337240022533.jpg', 'imresizer-17337240022534.jpg', 0, 0, 'veg', 'അപ്പം', 'Appam', 'ऐपम', ' أبام', 'അപ്പം ഒരു പരമ്പരാഗത ദക്ഷിണേന്ത്യൻ വിഭവമാണ്, ഊരിപ്പെട്ട അരിമില്ലായിരുന്ന ബാറ്ററിൽ നിന്നുള്ളതാണ്. ഇത് മൃദുവായ കൊമ്പുകളും, ചുറ്റും തിയ്ക്കും കറുപ്പും ഉള്ള ഒരു ഇഡ്ലി പോലുള്ള പാൻക്കേക്ക് ആണ്. സാധാരണയായി വെജിറ്റബിൾ സ്റ്റൂ, ചിക്കൻ കറി, അല്ലെങ്കിൽ തേങ്ങാനീർ എന്നിവയുമായി ചേർത്ത് കഴിക്കുന്നു. കേരളത്തിലെ പ്രത്യേക രുചിയുള്ള ഒരു പ്രിയപ്പെട്ട ഭക്ഷണമാണ് അപ്പം.', ' Appam is a traditional South Indian dish made from fermented rice batter. It is a type of pancake with soft, fluffy edges and a thin, crispy center. Often served with curries such as vegetable stew, chicken curry, or coconut milk, Appam is a popular breakfast or dinner dish. Its unique texture and taste make it a beloved part of Kerala’s cuisine', 'ऐपम एक पारंपरिक दक्षिण भारतीय व्यंजन है, जो खमीर लगे चावल के घोल से बनाया जाता है। यह एक प्रकार का पैनकेक होता है, जिसके किनारे मुलायम और फूलदार होते हैं और बीच में क्रिस्पी होता है। ऐपम को आमतौर पर वेजिटेबल स्टू, चिकन करी या नारियल के दूध के साथ परोसा जाता है। यह केरल के लोकप्रिय नाश्ते या रात के खाने का हिस्सा है।', ' أبام هو طبق تقليدي من جنوب الهند مصنوع من عجينة الأرز المخمرة. إنه نوع من الفطائر ذات الحواف الطرية والهشة من الأطراف والوسط المقرمش. غالباً ما يُقدّم أبام مع الكاري مثل خضار ستو، دجاج كاري، أو حليب جوز الهند. يُعد أبام جزءاً محبوباً من المأكولات الهندية في ولاية كيرالا ويُتناول كوجبة إفطار أو عشاء.\r\n\r\n', 0),
(57, 4, 0, 0, 0, 'imresizer-1733724133869.jpg', 'imresizer-17337241338691.jpg', 'imresizer-17337241338692.jpg', 'imresizer-17337241338693.jpg', 'imresizer-17337241338694.jpg', 0, 0, 'veg', ' പത്തിരി', 'Pathiri', 'पठिरी', ' باثيري ', 'പത്തിരി കേരളത്തിലെ തീരപ്രദേശങ്ങളിൽ പ്രചാരമുള്ള ഒരു അരിചോറ് ആധാരിതമായ ചട്ടം ആക്കിയ കറി കറി ആഹാരം ആണ്. എങ്കിൽ ഈ പത്തിരി നല്ലതായി മല്ലിപ്പുറത്ത് നനച്ച് തയ്യാറാക്കുന്ന ചുരുണ്ട ചതുപ്പിന്റെ രൂപത്തിൽ വഴിയിൽ ഉണ്ടാക്കുന്നു. സാധാരണയായി പത്തിരി മട്ടൺ, കോഴി അല്ലെങ്കിൽ മത്സ്യക്കറിയുമായി ചേർത്തു സന്നദ്ധങ്ങളിൽ കഴിക്കാറാണ്', 'Pathiri is a traditional rice-based flatbread from the coastal regions of Kerala. Made from finely ground rice flour and water, the dough is rolled into thin circles and cooked on a hot griddle or pan until soft and slightly puffed. Pathiri is typically served with curries like chicken, mutton, or fish, and is a popular dish in Muslim households, especially during festive occasions and special meals.', ' पठिरी केरल के तटीय क्षेत्रों का एक पारंपरिक चावल से बना फ्लैटब्रेड है। यह बारीक पिसे हुए चावल के आटे और पानी से बनाया जाता है। आटे को पतले गोल आकार में बेलकर गर्म तवे पर पकाया जाता है, जिससे यह नरम और थोड़ा फूला हुआ बनता है। पठिरी को आमतौर पर मटन, चिकन या मछली के करी के साथ परोसा जाता है, और यह मुस्लिम घरों में विशेष रूप से त्योहारों और खास अवसरों पर लोकप्रिय होता है।', 'باثيري هو خبز مسطح تقليدي يعتمد على الأرز من مناطق السواحل في كيرالا. يُصنع من دقيق الأرز المطحون جيدًا والماء، ثم يُعجن العجين ويتم تشكيله إلى دوائر رقيقة ويُطهى على صينية ساخنة أو مقلاة حتى يصبح طريًا وقليلًا منتفخًا. يُقدّم باثيري عادة مع الكاري مثل الدجاج أو اللحم أو السمك، وهو طبق شائع في المنازل المسلمة، خاصةً في المناسبات والوجبات الخاصة.\r\n\r\n', 0),
(58, 4, 0, 0, 0, 'imresizer-1733724279233.jpg', 'imresizer-17337242792331.jpg', 'imresizer-17337242792332.jpg', 'imresizer-17337242792333.jpg', 'imresizer-17337242792334.jpg', 0, 0, 'veg', 'ഗോതമ്പ്  പറോട്ട', 'Wheat Poratta', ' गेहूं पोरट्टा', 'خبز القمح بوراتا', 'ഗോതമ്പ് പോരട്ട ഒരു പരമ്പരാഗത പരട്ടയുടെ ഒരു പ്രചോദനമാണ്, ഇത് മുഴുവൻ ഗോതമ്പ് മാവ് ഉപയോഗിച്ച് തയ്യാറാക്കുന്നു. സാധാരണ പരട്ടകളിൽ നിന്നെ വ്യത്യസ്തമായാണ്, പോരട്ട വളരെ തിതുക്കായി ചതച്ച് പറ്റിയിട്ട് ചൂടായ പാനിൽ വെച്ച് ഗോതമ്പിന്റെ പൊരിയുന്ന, മൃദുവായ തോത്തുണ്ണുന്ന സ്വാദിഷ്ടമായ ഭക്ഷണമാണ്. ഇത് സാധാരണയായി കറി, സ്റ്റൂ, അല്ലെങ്കിൽ ദായീ എന്നിവയുമായി ഉപയോഗിക്കുന്നു. ഗോതമ്പ് പോരട്ട കേരളത്തിലെ പ്രത്യേകമായ പ്രിയപ്പെട്ട ഭക്ഷണമാണ്.', ' Wheat Poratta is a variation of the traditional paratha, made with whole wheat flour. Unlike regular parathas, porattas are rolled out into thin layers and then stacked and folded before being cooked. This gives the poratta a flaky and soft texture. It is usually served with curries, stews, or even yogurt. Wheat Poratta is a popular choice for breakfast, lunch, or dinner, especially in Kerala and South Indian cuisine', ' गेहूं पोरट्टा पारंपरिक पराठे का एक प्रकार है, जो साबुत गेहूं के आटे से बनाया जाता है। सामान्य पराठों से अलग, पोरट्टा को पतली परतों में बेलकर, फिर उन परतों को मोड़कर और फिर तवे पर पकाया जाता है, जिससे यह कुरकुरा और नरम होता है। इसे आमतौर पर करी, स्टू या दही के साथ परोसा जाता है। गेहूं पोरट्टा खासकर केरल और दक्षिण भारतीय व्यंजनों में लोकप्रिय है।', 'خبز القمح بوراتا هو نوع من الخبز المسطح المصنوع من دقيق القمح الكامل. يختلف عن الخبز المسطح التقليدي حيث يتم فرده إلى طبقات رقيقة ثم يتم طي هذه الطبقات وطبخها على صاج ساخن، مما يجعل البوراتا هشة وطريّة. يُقدّم عادة مع الكاري أو اليخنة أو الزبادي. خبز القمح بوراتا هو خيار شائع للإفطار أو الغداء أو العشاء في المأكولات الهندية الجنوبية، خاصة في كيرالا.', 0),
(59, 4, 0, 0, 0, 'imresizer-1733766782118.jpg', 'imresizer-17337667821181.jpg', 'imresizer-17337667821182.jpg', 'imresizer-17337667821183.jpg', 'imresizer-17337667821184.jpg', 0, 0, 'non-veg', 'പൊറാട്ട', 'Poratta', 'परोटा', 'الباراتا', 'പൊറാട്ട ഒരു പരമ്പരാഗത മധുരമുളള, ചുരണ്ടൽ തൊട്ടുകളിയുള്ള Indian റൊട്ടിയാണ്, മൃദുവായ മാവിൽ നിന്നാണ് ഇത് തയ്യാറാക്കുന്നത്. പൊറാട്ടയുടെ മൃദുവായ അടിസ്ഥാനം, അല്പം മുറുകിയ പുറത്തുള്ള ലെയറുകളും മികച്ച അന്നഭംഗി നൽകുന്നു. മസാലാ കറികൾക്കും സമൃദ്ധമായ ഗ്രേവികൾക്കും ഏറ്റവും അനുയോജ്യമായ സൈഡ് വിഭവമാണ് പൊറാട്ട.', 'Poratta is a flaky, layered flatbread made from finely kneaded dough and cooked to golden perfection. Soft on the inside and slightly crisp on the outside, it is a popular accompaniment to a variety of curries, especially spicy and rich gravies. Known for its buttery flavor and melt-in-your-mouth texture, Poratta is a beloved dish in South Indian cuisine.\r\n\r\n', ' परोटा एक परतदार और कुरकुरी भारतीय रोटी है, जिसे मुलायम गूंथे हुए आटे से तैयार किया जाता है और सुनहरा भूरा होने तक पकाया जाता है। अंदर से नरम और बाहर से हल्की खस्ता, परोटा विभिन्न प्रकार की मसालेदार और गाढ़ी ग्रेवी के साथ परोसा जाता है। इसका मक्खन जैसा स्वाद और परतदार बनावट इसे दक्षिण भारतीय व्यंजनों में ', 'يخنة الدجاج هي طبق لذيذ ودافئ يتم تحضيره عنالباراتا هو خبز هندي مسطح ومُكوّن من طبقات رقيقة، يتم تحضيره بعجن العجين جيدًا وطهيه حتى يصبح ذهبيًا ومقرمشًا قليلاً من الخارج وناعمًا من الداخل. يُعتبر طبقًا مثاليًا لتقديمه مع أنواع الكاري المتنوعة، وخاصة الصلصات الغنية والحارة. يتميز الباراتا بنكهته الغنية وقوامه الذي يذوب في الفم، مما يجعله من الأطباق الشهيرة في المطبخ الجنوب هندي.\r\n\r\n', 0),
(60, 4, 4, 0, 0, 'imresizer-1733724487373.jpg', 'imresizer-17337244873731.jpg', 'imresizer-17337244873732.jpg', 'imresizer-17337244873733.jpg', 'imresizer-17337244873734.jpg', 1, 0, 'non-veg', ' ചിക്കൻ  മലബാർ', 'Chicken Malabari', 'चिकन मलाबारी ', 'دجاج ملاباري', 'ചിക്കൻ  മലബാർ കേരളത്തിലെ മലപ്പുറം പ്രദേശത്തെ ഒരു സമ്പന്നമായ വിഭവമാണ്. മൃദുവായ ചിക്കൻ കഷണങ്ങൾ ദാരിച്ചൈ, ലവംഗം, ഏലക്കായ പോലുള്ള സുഗന്ധമുള്ള മസാലകൾ ചേർത്ത് തയ്യാറാക്കിയ സമൃദ്ധമായ കറിയിൽ പാകംചെയ്യപ്പെടുന്നു. ഈ വിഭവം ഇഷ്ടപ്പെട്ട മിതമായ മുളകുളമാർന്ന രുചിയിലും തേങ്ങാനീർ അല്ലെങ്കിൽ പച്ചക്കറി ചേർന്നുള്ള മൃദുവായ ഗന്ധത്തോടെ പ്രസിദ്ധമാണ്. സാധാരണയായി പാറട്ട, അപ്പം അല്ലെങ്കിൽ അരി എന്നിവയോടു ചേർത്താണ്', ' Chicken Malabari is a traditional and aromatic dish from the Malabar region of Kerala. Tender pieces of chicken are cooked in a rich, flavorful gravy made with a blend of aromatic spices, including cinnamon, cloves, and cardamom. The dish is known for its mild spiciness and creamy texture, often enriched with coconut milk or yogurt. It is typically served with paratha, appam, or rice, making it a popular choice for lunch or dinner.', 'चिकन मलाबारी केरल के मलाबार क्षेत्र का एक पारंपरिक और खुशबूदार व्यंजन है। इसमें चिकन के नरम टुकड़ों को मसालों का मिश्रण जैसे दारचीनी, लौंग और इलायची के साथ पकाया जाता है। इस व्यंजन को हल्की मसालेदार और क्रीमी बनावट के लिए नारियल के दूध या दही के साथ तैयार किया जाता है। चिकन मलाबारी को आमतौर पर पराठे, ऐपम या चावल के साथ परोसा जाता है, जो इसे लंच या डिनर के लिए एक लोकप्रिय विकल्प बनाता है।', ' دجاج ملاباري هو طبق تقليدي وعطري من منطقة مالابار في كيرالا. يتم طهي قطع الدجاج الطرية في مرق غني ونكهته مميزة، مع مزيج من التوابل العطرية مثل القرفة والقرنفل والهيل. يشتهر هذا الطبق بنكهته اللذيذة والمتوازنة التي تتسم بالحارة المعتدلة والقوام الكريمي، وغالبًا ما يُضاف إليه حليب جوز الهند أو الزبادي. يُقدّم دجاج ملاباري عادةً مع الباراتا أو الأپام أو الأرز، مما يجعله خيارًا شائعًا للغداء أو العشاء.\r\n\r\n', 0),
(61, 4, 0, 0, 0, 'imresizer-1733767383140.jpg', 'imresizer-17337673831401.jpg', 'imresizer-17337673831402.jpg', 'imresizer-17337673831403.jpg', 'imresizer-17337673831404.jpg', 0, 0, 'veg', 'നാൻ ', 'Naan', ' नान', 'نان', 'നാൻ ഒരു മൃദുവായ, നുരഞ്ഞുപോലെയുള്ള ഇന്ത്യൻ പാചകവ്യഞ്ജനമാണ്, പാരമ്പര്യമായ മൺതുണ്ടൂരിൽ പാചകം ചെയ്യുന്നതാണ്. മാവ്, തൈര്, ഈസ്റ്റ് എന്നിവ ചേർത്ത് തയ്യാറാക്കുന്ന ഈ റൊട്ടി, നേരിയ നെയ്യോ മക്നിയോ കൊണ്ടു മുകളിലൂടെ തേച്ച് കൂടുതൽ രുചിയേകുന്നു. നാൻ കറികൾ, കബാബുകൾ, ഗ്രില്ല് ഡിഷുകൾ എന്നിവയ്ക്കൊപ്പം മികച്ച അനുയോജ്യമാണ്.', 'Naan is a soft and fluffy Indian flatbread traditionally cooked in a clay tandoor oven. Made from a simple dough of flour, yogurt, and yeast, it is brushed with butter or ghee for a rich flavor. Naan pairs perfectly with curries, kebabs, and grilled dishes, making it a staple in Indian cuisine.', ' नान एक नरम और फूली हुई भारतीय रोटी है, जिसे पारंपरिक रूप से मिट्टी के तंदूर में पकाया जाता है। इसे आटा, दही, और यीस्ट से तैयार किया जाता है और मक्खन या घी से ब्रश किया जाता है, जो इसे समृद्ध स्वाद प्रदान करता है। नान को करी, कबाब और ग्रिल्ड व्यंजनों के साथ परोसने के लिए आदर्श माना जाता है।', 'النان هو خبز مسطح هندي ناعم وهش يتم تقليديًا طهيه في فرن تندور طيني. يتم تحضيره من عجينة بسيطة من الطحين والزبادي والخميرة، ويُدهن بالزبدة أو السمن لإضافة نكهة غنية. يتناسب النان بشكل مثالي مع أطباق الكاري والكباب والمشاوي، مما يجعله عنصرًا أساسيًا في المطبخ الهندي.\r\n\r\n', 0),
(62, 20, 0, 0, 0, 'imresizer-1733724928007.jpg', 'imresizer-17337249280071.jpg', 'imresizer-17337249280072.jpg', 'imresizer-17337249280073.jpg', 'imresizer-17337249280074.jpg', 0, 1, 'veg', 'ഹുമസ്', 'Hummus', ' हुमस', ' حمص', 'ഹുമസ് ഒരു മധ്യപൂർവദേശീയ വിഭവമാണ്, ഇത് കടല, തഹിനി (എള്ള് പസ്റ്റ്), വെളുത്തുള്ളി, നാരങ്ങ നീര്, ഒലിവ് ഓയിൽ എന്നിവ ചേർത്ത് തയ്യാറാക്കുന്ന ക്രീമിയോടും രുചിയോടും കൂടിയ ഡിപാണ്. ഇതിന്റെ സമൃദ്ധമായ സ്വാദും സുഖപ്രദമായ ടെക്സ്ചറും ബ്രെഡ്, പിറ്റ, അല്ലെങ്കിൽ പച്ചക്കറികൾക്കൊപ്പം ചേർത്തു കഴിക്കാൻ അനുയോജ്യമാണ്. പ്രോട്ടീനുകളും പോഷകങ്ങളുമായി സമ്പന്നമായ ഹുമസ് ഒരു ആരോഗ്യകരമായ വിഭവവും ലോകമെമ്പാടും ജനപ്രിയവുമാണ്.', 'Hummus is a creamy and flavorful Middle Eastern dip made from blended chickpeas, tahini (sesame seed paste), garlic, lemon juice, and olive oil. Its rich texture and tangy taste make it a perfect accompaniment to bread, pita, or fresh vegetables. Hummus is not only delicious but also packed with protein and nutrients, making it a healthy and popular appetizer or snack worldwide.', 'हुमस एक स्वादिष्ट और क्रीमी मध्य-पूर्वी डिप है, जिसे चने, ताहिनी (तिल का पेस्ट), लहसुन, नींबू का रस और जैतून के तेल से बनाया जाता है। इसका समृद्ध स्वाद और मुलायम बनावट इसे ब्रेड, पिटा, या ताज़ी सब्जियों के साथ परोसने के लिए आदर्श बनाता है। प्रोटीन और पोषक तत्वों से भरपूर, हुमस एक स्वादिष्ट और स्वास्थ्यवर्धक स्नैक या ऐपेटाइज़र है जो दुनियाभर में लोकप्रिय है।', ' الحمص هو طبق غموس كريمي ولذيذ من الشرق الأوسط مصنوع من الحمص المهروس، الطحينة (معجون السمسم)، الثوم، عصير الليمون وزيت الزيتون. يتميز بقوامه الغني ونكهته الحامضة، ويُعتبر مكملاً مثالياً للخبز أو الخضروات الطازجة. الحمص ليس فقط لذيذًا ولكنه غني بالبروتين والعناصر الغذائية، مما يجعله مقبلات صحية وشائعة في جميع أنحاء العالم.', 0),
(64, 15, 4, 0, 0, 'imresizer-1733726072140.jpg', 'imresizer-17337260721401.jpg', 'imresizer-17337260721402.jpg', 'imresizer-17337260721403.jpg', 'imresizer-17337260721404.jpg', 0, 0, 'non-veg', ' ബട്ടർ ചിക്കൻ', 'Butter Chicken', 'बटर चिकन', ' دجاج بالزبدة ', 'ബട്ടർ ചിക്കൻ, മറ്റൊരു പേരിൽ മുര്ഗ് മഖനി, ലോകപ്രശസ്തമായ ഒരു വടക്കേ ഇന്ത്യൻ കറിയാണ്, സമൃദ്ധമായ ക്രീമിയുടേയും മൃദുവായ മസാല രുചിയുടേയും പേരിലാണ് ഇത് അറിയപ്പെടുന്നത്. ചിക്കൻ കഷണങ്ങൾ തൈരും മസാലകളും ഉപയോഗിച്ച് മറിയേറ്റുചെയ്ത് ഗ്രിൽ ചെയ്തോ ഫ്രൈ ചെയ്തോ, അതിനു ശേഷം വെണ്ണയും ക്രീമും ചേർന്ന തക്കാളി സോസിൽ പാകം ചെയ്യുന്നു.', 'Butter Chicken, also known as Murgh Makhani, is a world-famous North Indian curry known for its rich, creamy, and mildly spiced flavor. Tender pieces of chicken are marinated in yogurt and spices, grilled or pan-fried, and then simmered in a velvety tomato-based gravy enriched with butter and cream. This indulgent dish is perfectly paired with naan, roti, or steamed rice, making it a favorite for all occasions.', ': बटर चिकन, जिसे मुर्ग़ मखनी के नाम से भी जाना जाता है, एक विश्वप्रसिद्ध उत्तर भारतीय करी है जो अपनी क्रीमी और हल्के मसालेदार स्वाद के लिए जानी जाती है। चिकन के नरम टुकड़ों को दही और मसालों में मैरीनेट कर ग्रिल या फ्राई किया जाता है, फिर मक्खन और क्रीम से भरपूर टमाटर की ग्रेवी में पकाया जाता है। यह लजीज व्यंजन नान, रोटी या चावल के साथ परोसा जाता है और हर अवसर के लिए पसंदीदा है।', 'دجاج بالزبدة، المعروف أيضًا باسم مرغ مقني، هو طبق كاري هندي شمالي شهير عالميًا يتميز بنكهته الغنية والقشدية والمعتدلة التوابل. يتم تتبيل قطع الدجاج الطرية باللبن الزبادي والتوابل، ثم تُشوى أو تُقلى وتُطهى في صلصة الطماطم المخملية الغنية بالزبدة والكريمة. هذا الطبق الفاخر يتناسب تمامًا مع النان أو الخبز أو الأرز المطهو على البخار، مما يجعله خيارًا مفضلًا لجميع المناسبات.\r\n\r\n', 0);
INSERT INTO `product` (`product_id`, `category_id`, `subcategory_id`, `store_id`, `price`, `image`, `image1`, `image2`, `image3`, `image4`, `is_customizable`, `is_addon`, `product_veg_nonveg`, `product_name_ma`, `product_name_en`, `product_name_hi`, `product_name_ar`, `product_desc_ma`, `product_desc_en`, `product_desc_hi`, `product_desc_ar`, `is_active`) VALUES
(65, 15, 0, 0, 0, 'imresizer-1733726589481.jpg', 'imresizer-17337265894811.jpg', 'imresizer-17337265894812.jpg', 'imresizer-17337265894813.jpg', 'imresizer-17337265894814.jpg', 1, 0, 'non-veg', 'കടായി ചിക്കൻ', 'Kadai Chicken', 'कड़ाही चिकन', ' دجاج كاداي', 'കടായി ചിക്കൻ ഒരു വടക്കേ ഇന്ത്യൻ വിഭവമാണ്, ഇത് ഒരു പ്രത്യേക പാത്രത്തിൽ (കടായി) പാകം ചെയ്യുന്നതാണ്. സോസിൽ മുറിച്ചുള്ള ചിക്കൻ കഷണങ്ങൾ പഴുതാര, തക്കാളി, ഉള്ളി, ക്യാപ്‌സിക്കം എന്നിവയും പുതിയ മസാലകളും ചേർത്ത് ഒരു ദൃഢമായ, കുറുകിയ കറിയായി തയ്യാറാക്കുന്നു. അതിന്റെ തീവ്രമായ സുഗന്ധങ്ങളും രുചിയും ഈ വിഭവത്തെ നാൻ, ചപ്പാത്തി അല്ലെങ്കിൽ അരിയുമായി മികച്ചതാക്കുന്നു.', ' Kadai Chicken is a flavorful North Indian curry cooked in a traditional wok-like pan called a \"kadai.\" Succulent chicken pieces are stir-fried with a mix of freshly ground spices, onions, tomatoes, and bell peppers, creating a rich, semi-dry gravy. Known for its robust and aromatic flavors, this dish is best enjoyed with naan, roti, or steamed rice, making it a favorite in Indian households and restaurants alike.', 'कड़ाही चिकन एक स्वादिष्ट उत्तर भारतीय करी है, जिसे पारंपरिक कड़ाही में पकाया जाता है। चिकन के रसीले टुकड़ों को ताजे पिसे मसालों, प्याज, टमाटर और शिमला मिर्च के साथ भूना जाता है, जिससे यह एक गाढ़ी और अर्ध-सूखी ग्रेवी में बदल जाता है। अपने गहरे और सुगंधित स्वाद के लिए प्रसिद्ध यह व्यंजन नान, रोटी या चावल के साथ बेहतरीन लगता है।', ': دجاج كاداي هو طبق كاري هندي شمالي لذيذ يُطهى في مقلاة تقليدية تُسمى \"كاداي.\" يتم قلي قطع الدجاج الطرية مع مزيج من التوابل الطازجة المطحونة، البصل، الطماطم، والفلفل الرومي، مما ينتج صلصة غنية وشبه جافة. يتميز هذا الطبق بنكهاته العميقة والعطرية، وهو الأفضل تقديمه مع خبز النان أو الروتي أو الأرز المطهو على البخار.\r\n\r\n', 0),
(66, 15, 4, 0, 0, 'imresizer-1733727412921.jpg', 'imresizer-17337274129211.jpg', 'imresizer-17337274129212.jpg', 'imresizer-17337274129213.jpg', 'imresizer-17337274129214.jpg', 1, 0, 'non-veg', 'ചില്ലി ചിക്കൻ', 'Chilli Chicken', ' चिली चिकन ', ' دجاج شيلي ', 'ചില്ലി ചിക്കൻ ഒരു ജനപ്രിയ ഇന്തോ-ചൈനീസ് വിഭവമാണ്, ഇത് നനുത്ത ചിക്കൻ കഷണങ്ങളും തിളച്ച മസാല രുചിയും ഏകോപിപ്പിക്കുന്നതാണ്. മുറിച്ച ചിക്കൻ സ്വാദുപിടിപ്പിക്കുന്ന പോലെ ഫ്രൈ ചെയ്ത ശേഷം സോയ സോസ്, ചില്ലി, വെളുത്തുള്ളി, ക്യാപ്‌സിക്കം എന്നിവ ചേർത്ത് തിളപ്പിച്ച സോസിൽ മിക്സുചെയ്യുന്നു. ഇത് ഒരു സ്റ്റാർട്ടറായോ പ്രധാന വിഭവമായോ ഉപയോഗിക്കാം, ചോറിനോ നൂഡിലിനോ കൂടെ മികച്ചത്.', ' Chilli Chicken is a popular Indo-Chinese dish that combines tender chicken pieces with bold, spicy flavors. Marinated chicken is fried to perfection and tossed in a tangy, savory sauce made with soy sauce, chili, garlic, and bell peppers. This dish is perfect as an appetizer or a main course and pairs wonderfully with fried rice or noodles, making it a favorite for lovers of spicy and flavorful cuisine.', ': चिली चिकन एक लोकप्रिय इंडो-चाइनीज व्यंजन है, जिसमें नरम चिकन के टुकड़ों को तीखे और मसालेदार फ्लेवर के साथ जोड़ा जाता है। मैरीनेट किए गए चिकन को कुरकुरा तला जाता है और सोया सॉस, मिर्च, लहसुन और शिमला मिर्च से बने खट्टे और मसालेदार ग्रेवी में टॉस किया जाता है। यह डिश ऐपेटाइज़र या मुख्य व्यंजन के रूप में परफेक्ट है और फ्राइड राइस या नूडल्स के साथ शानदार लगती है।\r\n\r\n', ' دجاج شيلي هو طبق شهير يجمع بين النكهات الهندية والصينية. تُتبَّل قطع الدجاج الطرية ثم تُقلى حتى تصبح مقرمشة، وتُقلب في صلصة حارة ولذيذة مصنوعة من صلصة الصويا، الفلفل الحار، الثوم، والفلفل الرومي. يُمكن تقديمه كمقبلات أو كطبق رئيسي، وهو يتناسب بشكل رائع مع الأرز المقلي أو النودلز، مما يجعله مفضلًا لعشاق الأطعمة الغنية بالتوابل والنكهات.', 0),
(72, 16, 0, 0, 0, 'imresizer-1733736680874.jpg', 'imresizer-17337366808741.jpg', 'imresizer-17337366808742.jpg', 'imresizer-17337366808743.jpg', 'imresizer-17337366808744.jpg', 0, 0, 'veg', ' പനീർ ബട്ടർ മസാല', 'Paneer Butter Masala', 'पनीर बटर मसाला', 'بانير بتر ماسالا ', 'പനീർ ബട്ടർ മസാല ഒരു പ്രമുഖ ഉത്തരേന്ത്യൻ വിഭവമാണ്, അതിന്റെ സമൃദ്ധമായതും ക്രീമിയായതുമായ സവിശേഷത കൊണ്ട് പ്രശസ്തമാണ്. മൃദുവായ പനീർ കഷണങ്ങൾ, മക്കൻ, ക്രീം, സുഗന്ധമുള്ള മസാലകൾ എന്നിവ ചേർന്ന സമ്പന്നമായ തക്കാളി ചാറിൽ പാചകം ചെയ്യുന്നു. ഇത് ചെറുതായി മധുരമുള്ളതും മിതമായ മസാലകൾ കൊണ്ടും നാൻ, ചപ്പാത്തി, അല്ലെങ്കിൽ അരിയോടൊപ്പം കഴിക്കാൻ അനുയോജ്യമാണ്.', ' Paneer Butter Masala is a classic North Indian dish, loved for its rich and creamy texture. Soft cubes of paneer are simmered in a luxurious tomato-based gravy made with butter, cream, and aromatic spices. The sweet and mildly spiced curry pairs perfectly with naan, roti, or steamed rice, making it a favorite among vegetarians and lovers of Indian cuisine.\r\n\r\n', ' पनीर बटर मसाला एक लोकप्रिय उत्तर भारतीय व्यंजन है, जो अपने समृद्ध और क्रीमी बनावट के लिए प्रसिद्ध है। मुलायम पनीर के टुकड़ों को मक्खन, क्रीम और सुगंधित मसालों से बनी टमाटर-आधारित ग्रेवी में पकाया जाता है। यह हल्का मीठा और माइल्ड मसालेदार करी नान, रोटी, या उबले चावल के साथ पूरी तरह मेल खाता है, और यह शाकाहारियों और भारतीय व्यंजनों के प्रेमियों की पसंदीदा डिश है।', 'بانير بتر ماسالا هو طبق كلاسيكي من شمال الهند يشتهر بقوامه الغني والكريمي. يتم طهي مكعبات البانير الطرية في صلصة غنية مصنوعة من الطماطم والزبدة والقشطة والتوابل العطرية. تتميز هذه الكاري بمذاقها الحلو قليلاً وتوابلها المعتدلة، مما يجعلها مثالية للتقديم مع خبز النان أو الروتي أو الأرز المطهو على البخار، وهي محبوبة بين عشاق المأكولات النباتية والهندية.\r\n\r\n', 0),
(100, 4, 10, 0, 0, 'download.png', 'mjf8uFTgAKWrMb5Ncropped-image.jpg', '7KlDv9X30yAMZ2Oqcropped-image.jpg', 'BNcOoz0M7LIWD9xicropped-image.jpg', 'h7XxZ1G0lwb5mFDKcropped-image.jpg', 0, 0, 'veg', 'testing food', 'testing foods', 'testing food', 'testing food', 'testing food', 'testing food', 'testing food', 'testing food', 0),
(67, 15, 0, 0, 0, 'imresizer-1733730703912.jpg', 'imresizer-17337307039121.jpg', 'imresizer-17337307039122.jpg', 'imresizer-17337307039123.jpg', 'imresizer-17337307039124.jpg', 1, 0, 'non-veg', 'അലപ്പുഴ ചിക്കൻ കറി', 'Allepy Chicken Curry', 'अलेप्पी चिकन करी ', 'كاري دجاج ألبي', ' അലപ്പുഴ ചിക്കൻ കറി കേരളത്തിന്റെ സവിശേഷമായ ഒരു വിഭവമാണ്, ഇത് തീരപ്രദേശത്തിന്റെ സവിശേഷമായ രുചികൾ സമ്മാനിക്കുന്നു. ഈ കറി ചിക്കന്റെ മൃദുവായ കഷണങ്ങൾ, തേങ്ങാപാൽ, പച്ചമാങ്ങ, സുഗന്ധമസ്‌തക മസാലകൾ എന്നിവ ചേർന്ന് പാകം ചെയ്യുന്നതാണ്. പച്ചമാങ്ങയുടെ അൽപ്പം പുളിയാണ് ഈ കറിയിൽ മസാലകളുടെ തീവ്രമായ രുചിയുമായി തികച്ചും പൊരുത്തപ്പെടുന്നത്. ഈ വിഭവം അപ്പം, അരി, അല്ലെങ്കിൽ കേരള പാറോട്ടയ്ക്കൊപ്പം കഴിക്കുമ്പോൾ അതിന്റെ സ്വാദിന്റെ തീവ്രത സദാ പ്രിയപ്പെട്ടതാകും.', ' Alleppey Chicken Curry is a signature Kerala-style dish that captures the essence of coastal flavors. This tangy and creamy curry combines tender chicken with the richness of coconut milk, raw mango, and a medley of aromatic spices. The addition of raw mango brings a unique sourness that perfectly balances the spicy and savory notes of the dish. It pairs wonderfully with steamed rice, appam, or Kerala parotta, making it a favorite for those seeking authentic and vibrant South Indian cuisine', 'अलेप्पी चिकन करी एक प्रसिद्ध केरल शैली की डिश है जो तटीय स्वादों को पूरी तरह दर्शाती है। यह खट्टी और क्रीमी करी नरम चिकन के टुकड़ों को नारियल के दूध, कच्चे आम और सुगंधित मसालों के साथ पकाकर बनाई जाती है। कच्चे आम का खट्टापन इस डिश के मसालेदार और लजीज स्वाद को बेहतरीन ढंग से संतुलित करता है। इसे चावल, अप्पम, या केरल पराठे के साथ परोसने पर इसका स्वाद और भी बढ़ जाता है।', 'كاري دجاج ألبي هو طبق مميز على طريقة ولاية كيرالا يعكس نكهات الساحل الغنية. تجمع هذه الكاري الكريمية والحامضة بين قطع الدجاج الطرية وحليب جوز الهند والمانجو الأخضر الطازج ومجموعة متنوعة من التوابل العطرية. يضيف المانجو الأخضر حموضة فريدة توازن بشكل مثالي النكهات الحارة والمالحة. يقدم هذا الطبق بشكل رائع مع الأرز المطهو على البخار أو خبز أبّم أو براتا كيرالا، مما يجعله خيارًا شائعًا لعشاق المأكولات الهندية الجنوبية الأصيلة.', 0),
(68, 15, 4, 0, 0, 'imresizer-1733730911169.jpg', 'imresizer-17337309111691.jpg', 'imresizer-17337309111692.jpg', 'imresizer-17337309111693.jpg', 'imresizer-17337309111694.jpg', 1, 0, 'non-veg', 'പെപ്പർ ചിക്കൻ', 'Pepper Chicken', 'पेपर चिकन', ' دجاج بالفلفل الأسود', ' പെപ്പർ ചിക്കൻ ഒരു തിളക്കമുള്ള, രുചിയേറിയ വിഭവമാണ്, അതിന്റെ തീവ്രമായ കുരുമുളക് മസാല രുചിയും സുഗന്ധവുമാണ് പ്രത്യേകത. ചിക്കൻ കഷണങ്ങൾ പൊടിച്ച കുരുമുളകും ഉള്ളിയും കേരളത്തിന്റെ പരമ്പരാഗത മസാലകളും ചേർത്ത് വരണ്ടതോ പാകം ചെയ്ത ചെറിയ കറിയോ ആയി ഒരുക്കുന്നു. ഇത് അരി, ചപ്പാത്തി, അല്ലെങ്കിൽ പാറോട്ടയ്ക്കൊപ്പം മികച്ചതാണ്.', 'Pepper Chicken is a bold and flavorful dish, famous for its spicy kick and aromatic spices. Succulent pieces of chicken are stir-fried with freshly ground black pepper, onions, and a blend of Indian spices, creating a dry or semi-gravy preparation that bursts with flavor. This dish is a perfect balance of heat and aroma, making it an excellent choice with steamed rice, roti, or parotta.\r\n\r\n', ' पेपर चिकन एक मसालेदार और स्वादिष्ट व्यंजन है, जो अपनी तीखी और सुगंधित मसालों के लिए जाना जाता है। ताजे पिसे हुए काली मिर्च, प्याज और भारतीय मसालों के साथ चिकन के टुकड़ों को पकाया जाता है, जिससे यह एक ड्राई या हल्की ग्रेवी वाली डिश बनती है। इसका तीखापन और खुशबू इसे चावल, रोटी या पराठे के साथ परफेक्ट बनाते हैं।', 'دجاج بالفلفل الأسود هو طبق جريء ولذيذ يشتهر بنكهته الحارة والتوابل العطرية. يتم تقليب قطع الدجاج الطرية مع الفلفل الأسود الطازج المطحون والبصل ومزيج من التوابل الهندية، مما ينتج طبقاً جافاً أو بصلصة خفيفة مليئاً بالنكهات. يعد هذا الطبق خياراً مثالياً مع الأرز المطهو على البخار أو الخبز أو البراتا.\r\n\r\n', 0),
(69, 16, 3, 0, 0, 'imresizer-1733732549359.jpg', 'imresizer-17337325493591.jpg', 'imresizer-17337325493592.jpg', 'imresizer-17337325493593.jpg', 'imresizer-17337325493594.jpg', 0, 0, 'veg', 'തക്കാളി ഫ്രൈ', 'Tomato Fry', 'टमाटर फ्राई', 'طماطم مقلية', ' തക്കാളി ഫ്രൈ വളരെ എളുപ്പത്തിൽ തയ്യാറാക്കാവുന്ന, രുചികരമായ വിഭവമാണ്,熟 ripe തക്കാളിയും ഉള്ളിയും വെളുത്തുള്ളിയും വിവിധ സുഗന്ധ മസാലകളും ചേർത്താണ് ഇത് പാകം ചെയ്യുന്നത്.酸 രുചിയേറിയ ഈ വിഭവം അരി, ചപ്പാത്തി അല്ലെങ്കിൽ ദോശ എന്നിവയ്ക്ക് അനുയോജ്യമായ സൈഡ് ഡിഷായി ഉപയോഗിക്കാം. അതിന്റെ തിളങ്ങുന്ന നിറവും ഉന്മേഷമുള്ള രുചിയും ഈ വിഭവത്തെ ആഗ്രഹം നിറക്കുന്നതാക്കുന്നു', 'Tomato Fry is a simple yet flavorful dish made with ripe tomatoes sautéed with onions, garlic, and a blend of aromatic spices. This quick and easy recipe delivers a tangy and savory flavor that pairs perfectly as a side dish with rice, roti, or dosa. Its vibrant color and zesty taste make it a favorite in both everyday meals and special occasions.\r\n\r\n', 'टमाटर फ्राई एक आसान और स्वादिष्ट व्यंजन है जो पके हुए टमाटरों, प्याज, लहसुन, और सुगंधित मसालों के साथ तैयार किया जाता है। यह झटपट बनने वाला व्यंजन खट्टा और लजीज स्वाद प्रदान करता है, जो चावल, रोटी, या डोसा के साथ साइड डिश के रूप में परफेक्ट है। इसका चमकीला रंग और मसालेदार स्वाद इसे रोजमर्रा और खास मौकों पर पसंदीदा बनाता है।\r\n\r\n', 'الطماطم المقلية هي طبق بسيط ولذيذ يُعد باستخدام الطماطم الناضجة المقلية مع البصل والثوم ومزيج من التوابل العطرية. تُحضّر هذه الوصفة بسرعة وسهولة وتتميز بنكهتها الحامضة والمالحة التي تجعلها طبقاً جانبياً مثالياً مع الأرز أو الخبز أو الدوسة. لونها الزاهي ومذاقها اللاذع يجعلها خياراً مفضلاً في الوجبات اليومية والمناسبات الخاصة.\r\n\r\n', 0),
(70, 16, 0, 0, 0, 'imresizer-1733732886870.jpg', 'imresizer-17337328868701.jpg', 'imresizer-17337328868702.jpg', 'imresizer-17337328868703.jpg', 'imresizer-17337328868704.jpg', 0, 0, 'veg', 'വെജിറ്റബിൾ സ്റ്റ്യൂ', 'Vegetable Stew', ' वेजिटेबल स्टू ', 'يخنة الخضار', ' വെജിറ്റബിൾ സ്റ്റ്യൂ ഒരു കേരളത്തിൽ നിന്നുള്ള മൃദുവായയും സുഗന്ധവുമുള്ള വിഭവമാണ്, ഇത് പച്ചക്കറികളുടെ മിശ്രിതം തേങ്ങാ പാൽ ആസ്പദമാക്കി പാകം ചെയ്യുന്നു. കിഴങ്ങുകൾ, വാഴപ്പഴം, കപ്പ, കുരുമുളക്, ഗ്രാമ്പൂ, ഏലക്കായ, ഇഞ്ചി എന്നിവ ചേർന്ന് പാകം ചെയ്ത മസാലകളുമായി ഈ വിഭവം ഒരുപാട് രുചിയുള്ളതും ദൈവസഹായമായതുമാണ്. സാധാരണയായി അപ്പം, ഇഡിയപ്പം അല്ലെങ്കിൽ steamed rice എന്നിവയുമായി കഴിക്കാറുണ്ട്.', 'Vegetable Stew is a mild and aromatic dish from Kerala, made with a variety of fresh vegetables cooked in a rich coconut milk base. The vegetables are simmered with a blend of spices like cinnamon, cloves, and cardamom, along with curry leaves and ginger, creating a delicate and soothing flavor profile. This dish is often served with appam, idiyappam, or steamed rice, making it a perfect combination for a light, flavorful meal.\r\n\r\n', ' वेजिटेबल स्टू एक माइल्ड और खुशबूदार व्यंजन है जो केरल का पारंपरिक भोजन है, जिसमें ताजे पत्तेदार सब्जियों को नारियल के दूध में पकाया जाता है। सब्जियाँ दारचीनी, लौंग, इलायची, करी पत्ते और अदरक जैसी मसालों के साथ पकाई जाती हैं, जिससे यह स्वाद में हल्का और ताजगी से भरपूर बनता है। यह डिश अप्पम, इडियप्पम या उबले चावल के साथ बेहतरीन लगती है।', 'يخنة الخضار هي طبق خفيف وعطري من ولاية كيرالا، يتم تحضيره باستخدام مجموعة متنوعة من الخضروات الطازجة المطهوة في حليب جوز الهند. يتم طهي الخضروات مع مزيج من التوابل مثل القرفة، القرنفل، الهيل، أوراق الكاري، والزنجبيل، مما يخلق نكهة لطيفة ومهدئة. يُقدَّم هذا الطبق عادةً مع خبز الأبهام أو الإيديامبم أو الأرز المطهو على البخار، مما يجعله مزيجًا مثاليًا لوجبة خفيفة ولذيذة.\r\n\r\n', 0),
(71, 16, 0, 0, 0, 'imresizer-1733733995595.jpg', 'imresizer-17337339955951.jpg', 'imresizer-17337339955952.jpg', 'imresizer-17337339955953.jpg', 'imresizer-17337339955954.jpg', 0, 0, 'veg', ' മഷ്‌റൂം മലബാറി', 'Mushroom Malabari', ' मशरूम मलाबारी', 'فطر مالاباري', 'മഷ്രൂം മലബാറി കേരളത്തിലെ സമൃദ്ധമായ സസ്യാഹാര വിഭവമാണ്, ഇത് മൃദുവായ മഷ്രൂമുകൾ പാകം ചെയ്ത് മലപ്പുറം സ്റ്റൈലിൽ തയ്യാറാക്കിയ കറിയിലാണ്. ചതച്ച ഉള്ളി, ഇഞ്ചി, വെളുത്തുള്ളി, മസാലകൾ എന്നിവ ചേർന്ന് മഷ്രൂമുകൾ വറുത്ത ശേഷം, തേങ്ങാ പാൽ ചേർത്ത് സുഖകരമായ രുചി ലഭ്യമാക്കുന്നു. ഇത് അപ്പം, ഇഡിയപ്പം അല്ലെങ്കിൽ സ്റ്റീമഡ് റൈസുമായ് കഴിക്കാൻ ഏറ്റവും അനുയോജ്യമാണ്.', 'Mushroom Malabari is a flavorful vegetarian dish from Kerala, showcasing tender mushrooms cooked in a rich and aromatic Malabari-style curry. The mushrooms are sautéed with onions, ginger, garlic, and a blend of traditional spices, then simmered in a creamy coconut milk base, which imparts a rich and soothing flavor. This dish is typically served with appam, idiyappam, or steamed rice, offering a perfect blend of textures and tastes.\r\n\r\n', 'मशरूम मलाबारी केरल का एक स्वादिष्ट शाकाहारी व्यंजन है, जिसमें नरम मशरूम को एक समृद्ध और खुशबूदार मलाबारी शैली की करी में पकाया जाता है। मशरूम को प्याज, अदरक, लहसुन और मसालों के साथ भूनकर फिर नारियल के दूध में पकाया जाता है, जिससे यह करी मलाईदार और स्वादिष्ट बनती है। यह डिश आमतौर पर अप्पम, इडियप्पम या उबले चावल के साथ परोसी जाती है, जो इसे एक बेहतरीन संयोजन बनाता है।\r\n\r\n', 'فطر مالاباري هو طبق نباتي لذيذ من ولاية كيرالا، حيث يتم طهي الفطر الطري في كاري غني وعطري على الطريقة المالابارية. يتم تحمير الفطر مع البصل والثوم والزنجبيل ومزيج من التوابل، ثم يُطهى في قاعدة حليب جوز الهند الكريمي، مما يضفي نكهة غنية ومريحة. يُقدَّم هذا الطبق عادةً مع خبز الأبهام أو الإيديامبم أو الأرز المطهو على البخار، ليكون مزيجًا مثاليًا من النكهات والقوام.\r\n\r\n', 0),
(73, 16, 3, 0, 0, 'imresizer-1733737269261.jpg', 'imresizer-17337372692611.jpg', 'imresizer-17337372692612.jpg', 'imresizer-17337372692613.jpg', 'imresizer-17337372692614.jpg', 0, 0, 'veg', ' ഗോബി മഞ്ചൂരിയൻ', 'Gobi Manchurian', ' गोभी मंचूरियन', 'غوبي مانتشوريان', ': ഗോബി മഞ്ചൂരിയൻ ഒരു ജനപ്രിയ ഇൻഡോ-ചൈനീസ് വിഭവമാണ്, പൊരിച്ച കോലിഫ്ലവർ കുരുകൾ, അമളി ചട്ണി, സൂയ സോസ് എന്നിവയോടെ പാചകം ചെയ്യുന്നു. ഇത് കറിവർച്ച കോലിഫ്ലവറിന്റെ കുർക്കുരുത്തും സോസ് മിശ്രിതത്തിലെ തീവ്രമായ രുചിയും സംയോജിപ്പിക്കുന്ന ഒരു രുചികരമായ ഭക്ഷണമാണ്. സാധാരണയായി ഫ്രൈഡ് റൈസിനോ നൂഡിൽസിനോ ഒപ്പം കഴിക്കാറുള്ള ഈ വിഭവം രുചികരമായ ഒരു ആഹാരാനുഭവം നൽകുന്നു.', ' Gobi Manchurian is a popular Indo-Chinese dish made with crispy fried cauliflower florets tossed in a tangy and spicy sauce. The dish combines the crunchiness of golden-fried cauliflower with the rich flavors of soy sauce, garlic, and chili, making it a perfect appetizer or side dish. It is loved for its bold and zesty taste, often paired with fried rice or noodles.\r\n\r\n', ' गोभी मंचूरियन एक लोकप्रिय इंडो-चाइनीज व्यंजन है, जिसमें तले हुए गोभी के फूलों को खट्टे और मसालेदार सॉस में मिलाया जाता है। यह व्यंजन तली हुई गोभी की कुरकुराहट को सोया सॉस, लहसुन, और मिर्च की तीखी और स्वादिष्ट चटनी के साथ मिलाता है। इसे अक्सर फ्राइड राइस या नूडल्स के साथ परोसा जाता है और इसके ज़ायकेदार स्वाद के लिए पसंद किया जाता है।', ' غوبي مانتشوريان هو طبق شهير من المطبخ الهندي الصيني، يتم تحضيره باستخدام زهيرات القرنبيط المقلية المقرمشة والممزوجة بصلصة حامضة وحارة. يجمع الطبق بين قرمشة القرنبيط الذهبي المقلي ونكهات غنية من صلصة الصويا والثوم والفلفل الحار، مما يجعله مقبلات مثالية أو طبق جانبي. يُقدَّم عادةً مع الأرز المقلي أو النودلز.\r\n\r\n', 0),
(74, 16, 3, 0, 0, 'imresizer-1733737672088.jpg', 'imresizer-17337376720881.jpg', 'imresizer-17337376720882.jpg', 'imresizer-17337376720883.jpg', 'imresizer-17337376720884.jpg', 0, 0, 'veg', 'ചില്ലി ഗോബി', 'Chilli Gobi', ' चिली गोभी ', ' تشيلي غوبي', 'ചില്ലി ഗോബി ഒരു കുരുമുളക് ചൂടുള്ള, ഉഗ്രമായ ഇൻഡോ-ചൈനീസ് വിഭവമാണ്, കുരുമുളക് സോസിൽ മുക്കിയ പൊരിച്ച കോലിഫ്ലവർ കുരുകൾ ആണ് ഇതിന്റെ പ്രത്യേകത. സ്വർണ്ണ നിറത്തിൽ പൊരിച്ച കോലിഫ്ലവർ, വെളുത്തുള്ളി, ഉള്ളി, കാപ്‌സിക്കം, സോയ സോസ്, ചില്ലി പേസ്റ്റ് എന്നിവയിൽ വറുത്ത് പാകം ചെയ്യുന്നു. ഫ്രൈഡ് റൈസിനോ നൂഡിൽസിനോ ഒപ്പം കഴിക്കാവുന്ന മികച്ച പാചകം കൂടിയാണ് ഇത്.', ' Chilli Gobi is a spicy and tangy Indo-Chinese dish featuring crispy cauliflower florets coated in a flavorful chili sauce. The dish is prepared by frying cauliflower until golden and tossing it with garlic, onions, bell peppers, soy sauce, and chili paste for a burst of bold flavors. Perfect as an appetizer or side dish, it pairs well with fried rice or noodles.\r\n\r\n', ' चिली गोभी एक तीखा और चटपटा इंडो-चाइनीज व्यंजन है जिसमें कुरकुरे गोभी के टुकड़ों को मसालेदार चिली सॉस में लपेटा जाता है। इसे सुनहरे भूरे रंग तक तला जाता है और लहसुन, प्याज, शिमला मिर्च, सोया सॉस, और चिली पेस्ट के साथ मिलाया जाता है। यह फ्राइड राइस या नूडल्स के साथ परफेक्ट लगता है।\r\n\r\n', ' تشيلي غوبي هو طبق هندي صيني حار ولاذع يتميز بزهيرات القرنبيط المقرمشة المغطاة بصلصة الفلفل الحارة. يتم تحضير الطبق بقلي القرنبيط حتى يصبح ذهبي اللون ومزجه بالثوم والبصل والفلفل الحلو وصلصة الصويا ومعجون الفلفل لإبراز نكهات جريئة. إنه مثالي كمقبلات أو طبق جانبي ويُقدَّم عادةً مع الأرز المقلي أو النودلز.', 0),
(75, 17, 5, 0, 0, 'imresizer-1733738782409.jpg', 'imresizer-17337387824091.jpg', 'imresizer-17337387824092.jpg', 'imresizer-17337387824093.jpg', 'imresizer-17337387824094.jpg', 0, 0, 'non-veg', 'നെയ്മീൻ മാങ്ങ കറി', 'Neymeen (Kingfish) Mango Curry', ' नयमीन (किंगफिश)', 'كاري سمك الملك مع المانجو', 'നെയ്മീൻ മാങ്ങ കറി ഒരു രുചികരമായ കേരള സ്റ്റൈൽ മീൻ കറിയാണ്, പുതുമാങ്ങയും തേങ്ങാപ്പാൽ ആധാരമാക്കി പാകം ചെയ്ത സമൃദ്ധമായ ചാറും സുഗന്ധമുള്ള മസാലകളും ചേർന്ന് തയ്യാറാക്കുന്നു. മാങ്ങയുടെ പുളിമനയും തേങ്ങാപ്പാലിന്റെ സമൃദ്ധിയും മസാലകളുടെ ഉഗ്രമായ രുചിയും ഇഴചേർന്ന വ്യത്യസ്തമായ രുചി നൽകുന്ന വിഭവമാണിത്. ചോറോ അപ്പമോ കൂടെ കഴിക്കുമ്പോൾ ഏറ്റവും അനുയോജ്യമാണ്.', ' Neymeen Mango Curry is a delectable Kerala-style fish curry where succulent kingfish pieces are cooked with raw mangoes in a tangy and flavorful coconut-based gravy. The tartness of the mangoes perfectly balances the richness of the coconut milk and spices, creating a unique and memorable dish. Best enjoyed with steamed rice or appam, this curry showcases the vibrant flavors of coastal Kerala.', ' नयमीन आम करी एक स्वादिष्ट केरल शैली की मछली करी है, जिसमें किंगफिश के कोमल टुकड़े कच्चे आम और नारियल के दूध से बनी खट्टी और स्वादिष्ट ग्रेवी में पकाए जाते हैं। आम की खटास नारियल के दूध और मसालों की समृद्धि को पूरी तरह से संतुलित करती है, जिससे यह व्यंजन अनोखा और यादगार बन जाता है। इसे उबले चावल या अप्पम के साथ सबसे अच्छा परोसा जाता है।', 'كاري سمك الملك مع المانجو هو طبق لذيذ على الطريقة الكيرالية يتم فيه طهي قطع سمك الملك الطرية مع المانجو النيء في صلصة غنية تعتمد على حليب جوز الهند. يمتاز الطبق بمذاقه الحامض من المانجو الذي يتوازن تمامًا مع غنى حليب جوز الهند والتوابل، مما يجعله طبقًا فريدًا ولا يُنسى. يُقدَّم عادةً مع الأرز المطهو على البخار أو خبز الأبهام.\r\n\r\n', 0),
(76, 17, 5, 0, 0, 'imresizer-1733739263522.jpg', 'imresizer-17337392635221.jpg', 'imresizer-17337392635222.jpg', 'imresizer-17337392635223.jpg', 'imresizer-17337392635224.jpg', 0, 0, 'non-veg', '  നെയ്മീൻ കുട്ടനാട്‌', 'Neymeen (Kingfish) Kuttanadan', ' नयमीन (किंगफिश) कुट्टनादन करी ', 'كاري سمك الملك كوتانادان', ' നെയ്മീൻ   നെയ്മീൻ കുട്ടനാട്‌ നാടൻ കറി കേരളത്തിന്റെ കുത്തനാട് മേഖലയിൽ നിന്നുള്ള പരമ്പരാഗത രുചിയുള്ള മീൻ കറിയാണ്. പച്ചമസാലകളും തേങ്ങാപ്പുലിയും പുളിയും ഉപയോഗിച്ച് തയ്യാറാക്കിയ കിടിലൻ ചാറിൽ നെയ്മീന്റെ രുചിയുള്ള കഷണങ്ങൾ പാചകം ചെയ്യുന്നു. കറിവേപ്പിലയും ഉലുവയും ചേർന്ന സ്വാദിഷ്ടമായ ഈ വിഭവം കേരളത്തിന്റെ കായൽപ്രദേശങ്ങളുടെ സവിശേഷതകളിൽ ഒന്നാണ്. ചോരോ കപ്പയോ (മരച്ചീനി) കൂടെ കഴിക്കാൻ ഇത് ഏറ്റവും അനുയോജ്യമാണ്.', ' Neymeen Kuttanadan Curry is a traditional Kerala-style fish curry inspired by the flavors of the Kuttanad region. Juicy pieces of kingfish are simmered in a spicy and tangy gravy made with freshly ground spices, coconut paste, and tamarind. The dish is enriched with the aroma of curry leaves and fenugreek, making it a true delicacy of Kerala’s backwaters. It pairs perfectly with steamed rice or kappa (tapioca).', 'नयमीन कुट्टनादन करी केरल के कुट्टनाड क्षेत्र से प्रेरित एक पारंपरिक मछली करी है। किंगफिश के रसदार टुकड़ों को ताज़ा पिसे मसालों, नारियल के पेस्ट, और इमली से बनी तीखी और मसालेदार ग्रेवी में पकाया जाता है। करी पत्ते और मेथी के स्वाद से समृद्ध यह डिश केरल के बैकवाटर की एक अनूठी विशेषता है। इसे उबले चावल या कप्पा (टैपिओका) के साथ परोसा जाता है।', ' كاري سمك الملك كوتانادان هو طبق تقليدي مستوحى من نكهات منطقة كوتاناد في ولاية كيرالا. تُطهى قطع سمك الملك الطرية في صلصة حارة وحامضة محضرة من التوابل الطازجة، معجون جوز الهند، والتاماريند. يتم تعزيز الطعم بنكهة أوراق الكاري والحلبة، مما يجعله من ألذ الأطباق في مياه كيرالا الخلفية. يُقدَّم مع الأرز المطهو على البخار أو الكابا (الكسافا).\r\n\r\n', 0),
(77, 17, 5, 0, 0, 'imresizer-1733739382037.jpg', 'imresizer-17337393820371.jpg', 'imresizer-17337393820372.jpg', 'imresizer-17337393820373.jpg', 'imresizer-17337393820374.jpg', 0, 0, 'non-veg', 'ചെമ്മീൻ  വരട്ടിയത്ത്', 'Chemmeen Varattiyathu', 'चेम्मीन वरत्तियथु ', 'جمبري محمص', 'ചെമ്മീൻ  വരട്ടിയത്ത്\r\n   കേരളത്തിന്റെ സവിശേഷമായ ഒരു പരമ്പരാഗത തീറ്റയാണ്, പുതുമസാലകൾ, ഉള്ളി, തേങ്ങയുടെ കഷണങ്ങൾ എന്നിവയോടെ ചെമ്മീൻ കുരു വറുത്ത് തയ്യാറാക്കുന്നതാണ്. കറിവേപ്പിലയും വറുത്ത തേങ്ങയുടെ സുഗന്ധവും ചേർന്ന മസാലയിൽ മൂടി ചെമ്മീൻ കുരുവറത്ത് പാചകം ചെയ്യുന്നു. ചോറോ അപ്പമോ പറോട്ടയോ കൂടെ കഴിക്കാൻ ഇത് ഏറ്റവും അനുയോജ്യമാണ്.\r\n\r\n', 'Chemmeen Varattiyathu is a traditional Kerala-style prawn roast made by sautéing fresh prawns with a medley of aromatic spices, onions, and coconut slices. The prawns are cooked until coated in a rich, spicy, and slightly tangy masala, enhanced with the flavor of curry leaves and roasted coconut. Best enjoyed with steamed rice, appam, or parotta, this dish is a favorite among seafood lovers.', 'चेम्मीन वरत्तियथु एक पारंपरिक केरल शैली की झींगा भुजिया है, जिसे ताज़ा झींगों को सुगंधित मसालों, प्याज, और नारियल के टुकड़ों के साथ भूनकर तैयार किया जाता है। झींगों को मसालेदार, हल्के खट्टे मसाले में पकाया जाता है, जिसमें करी पत्तों और भूने नारियल का स्वाद होता है। इसे उबले चावल, अप्पम या परोटा के साथ परोसा जाता है। ', 'جمبري محمص على الطريقة الكيرالية التقليدية يُحضَّر عن طريق قلي الجمبري الطازج مع مزيج من التوابل العطرية والبصل وشرائح جوز الهند. يُطهى الجمبري حتى يُغطى بمسالا غنية وحارة مع لمسة من الطعم الحامض، وتعزز النكهة بأوراق الكاري وجوز الهند المحمص. يُقدَّم عادةً مع الأرز المطهو على البخار أو خبز الأبهام أو البراتا.', 0),
(78, 17, 5, 0, 0, 'imresizer-1733739770077.jpg', 'imresizer-17337397700771.jpg', 'imresizer-17337397700772.jpg', 'imresizer-17337397700773.jpg', 'imresizer-17337397700774.jpg', 0, 0, 'non-veg', 'ചെമ്മീൻ മാങ്ങ കറി', 'chemmeen mango curry', ' चेम्मीन आम करी ', 'كاري الجمبري مع المانجو', 'ചെമ്മീൻ മാങ്ങ കറി കേരളത്തിന്റെ ശൈലിയിൽ തയ്യാറാക്കുന്ന ഒരു രുചികരമായ മീൻ കറിയാണ്, പുളി മാങ്ങയും തേങ്ങാപ്പാൽ ആധാരമാക്കി പാകം ചെയ്ത കഷായത്തിലേയ്ക്ക് ചെമ്മീൻ ചേർത്ത് തയ്യാറാക്കുന്നതാണ്. ചെമ്മീന്റെ മധുരവും മാങ്ങയുടെ പുളിയും ചേർന്നുണ്ടാകുന്ന ഈ വിഭവം കേരളത്തിന്റെ തീരപ്രദേശീയ പാചകശൈലിയുടെ സ്വാദിഷ്ടമായ ഉദാഹരണമാണ്. ചോരോ അപ്പമോ കൂടെ കഴിക്കാം.\r\n\r\nHindi', 'Chemmeen Mango Curry is a luscious Kerala-style dish where prawns are cooked in a tangy and flavorful coconut-based gravy with raw mangoes. The combination of the prawns\' sweetness and the mangoes\' tartness, enhanced by aromatic spices and curry leaves, creates a dish that\'s both rich and refreshing. Best enjoyed with steamed rice or appam, this curry captures the essence of Kerala\'s coastal cuisine', 'चेम्मीन आम करी एक स्वादिष्ट केरल शैली की डिश है जिसमें झींगों को कच्चे आम और नारियल के दूध से बनी खट्टी और स्वादिष्ट ग्रेवी में पकाया जाता है। झींगों की मिठास और आम की खटास, सुगंधित मसालों और करी पत्तों के साथ मिलकर इस व्यंजन को समृद्ध और ताज़गीपूर्ण बनाती है। इसे उबले चावल या अप्पम के साथ सबसे अच्छा परोसा जाता है।', ' كاري الجمبري مع المانجو هو طبق لذيذ على الطريقة الكيرالية حيث يُطهى الجمبري في صلصة غنية تعتمد على حليب جوز الهند مع المانجو النيء. يجمع الطبق بين حلاوة الجمبري وحموضة المانجو، معززة بالتوابل العطرية وأوراق الكاري، مما يجعله طبقًا غنيًا ومنعشًا. يُقدَّم عادةً مع الأرز المطهو على البخار أو خبز الأبهام.\r\n\r\n', 0),
(79, 17, 5, 0, 0, 'imresizer-1733740380797.jpg', 'imresizer-17337403807971.jpg', 'imresizer-17337403807972.jpg', 'imresizer-17337403807973.jpg', 'imresizer-17337403807974.jpg', 0, 0, 'non-veg', 'കണവ വരട്ടിയത്ത്', ' Squid Varattiyathu ', ' स्क्विड वरत्तियथु', 'الحبار المحمص', 'കണവ \r\n   വരട്ടിയത്ത്         കേരളത്തിന്റെ സവിശേഷമായ ഒരു മസാല വിഭവമാണ്, കണവ റിംഗുകൾ പുതുമസാലകൾ, ഉള്ളി, തേങ്ങയുടെ കഷണങ്ങൾ, കറിവേപ്പില എന്നിവയുമായി വറുത്ത് പാകം ചെയ്യുന്നതാണ്. കണവയുടെ സ്വാഭാവിക രുചി മസാലയുടെ ഉഗ്രതയുമായി ഇഴചേർന്ന ഈ വിഭവം ചോരോ പരോട്ടയോ കൂടെ കഴിക്കാനുളള ഒരു മികച്ച വാൻഭോജനമാണിത്.', 'Squid Varattiyathu is a Kerala-style delicacy where tender squid rings are roasted with a blend of fiery spices, onions, coconut slices, and curry leaves. Cooked to perfection, this dish features a bold and aromatic masala that complements the natural flavors of the squid. Perfect as a side dish or appetizer, it pairs wonderfully with steamed rice or parotta.', ' स्क्विड वरत्तियथु एक पारंपरिक केरल शैली की डिश है, जिसमें कोमल स्क्विड रिंग्स को मसालेदार मसालों, प्याज, नारियल के टुकड़ों और करी पत्तों के साथ भूनकर तैयार किया जाता है। मसाले और स्क्विड के प्राकृतिक स्वाद के अद्भुत मेल से यह डिश तैयार होती है। इसे उबले चावल या परोटा के साथ सबसे अच्छा परोसा जाता है।\r\n\r\n', ' الحبار المحمص هو طبق شهي على الطريقة الكيرالية حيث تُطهى حلقات الحبار الطرية مع مزيج من التوابل الحارة، البصل، شرائح جوز الهند، وأوراق الكاري. يتميز الطبق بنكهات جريئة وعطرية تُبرز الطعم الطبيعي للحبار. يُقدَّم عادةً كطبق جانبي أو كمقبلات مع الأرز المطهو على البخار أو خبز البراتا.\r\n\r\n', 0),
(80, 18, 0, 0, 0, 'imresizer-1733740975591.jpg', 'imresizer-17337409755911.jpg', 'imresizer-17337409755912.jpg', 'imresizer-17337409755913.jpg', 'imresizer-17337409755914.jpg', 0, 0, 'non-veg', 'ബീഫ് ചില്ലി', 'Beef Chilli', ' बीफ चिली', 'لحم البقر تشيلي', ' ബീഫ് ചില്ലി ഒരു ഉഗ്രമായ, രുചികരമായ വിഭവമാണ്, മൃദുവായ ബീഫ് കഷണങ്ങൾ ക്യാപ്‌സിക്കം, ഉള്ളി, മസാല എന്നിവയോടെ പാകം ചെയ്ത് ഒരുക്കുന്നത്. ഈ ചില്ലി വിഭവം ഉഗ്രമായ കട്ടിയുള്ള മസാല സോസിൽ ആക്കിയിരിക്കുന്നു, ഇത് രുചിയുടെ അടയാളമാണ്. ചോരു അല്ലെങ്കിൽ പരോട്ടയുമായി ഇത് ഒരു മികച്ച കോമ്പിനേഷൻ ആണ്.', 'Beef Chilli is a spicy, flavorful dish where tender beef pieces are cooked with vibrant bell peppers, onions, and a variety of bold spices. This stir-fried dish is coated in a tangy, spicy sauce that packs a punch, making it a favorite for those who love bold flavors. It pairs perfectly with steamed rice or parotta.', ' बीफ चिली एक मसालेदार और स्वादिष्ट व्यंजन है, जिसमें नरम बीफ के टुकड़ों को शिमला मिर्च, प्याज और मसालों के साथ पकाया जाता है। यह पकवान तीव्र स्वाद और मसालेदार सॉस से कोट किया जाता है, जो इसे तीव्र स्वाद पसंद करने वालों के लिए आदर्श बनाता है। इसे चावल या पराठे के साथ सबसे अच्छा परोसा जाता है।\r\n\r\n', 'لحم البقر تشيلي هو طبق حار ولذيذ يتم تحضير فيه قطع لحم البقر الطرية مع الفلفل الملون والبصل والتوابل المختلفة. يُغطى الطبق بصلصة حارة ولذيذة تعزز من النكهات، مما يجعله طبقًا مثاليًا لمحبي النكهات القوية. يُقدم عادةً مع الأرز أو خبز البراتا.', 0),
(81, 18, 8, 0, 0, 'imresizer-1733741442393.jpg', 'imresizer-17337414423931.jpg', 'imresizer-17337414423932.jpg', 'imresizer-17337414423933.jpg', 'imresizer-17337414423934.jpg', 0, 0, 'non-veg', 'ബീഫ് റോസ്റ്റ്', 'Beef Roast', ' बीफ रोस्ट', 'لحم البقر المحمر', 'ബീഫ് റോസ്റ്റ് കേരളത്തിന്റെ പരമ്പരാഗത വിഭവമാണ്, മൃദുവായ ബീഫ് കഷണങ്ങളെ പുത്തൻ മസാലകൾ, വെളുത്തുള്ളി, ഇഞ്ചി, കറിവേപ്പില എന്നിവയുമായി നന്നായി വേവിച്ച് സ്വാദിഷ്ടമായ വൃത്തിയുള്ള ഒരു റോസ്റ്റ് ഉണ്ടാക്കുന്നതാണ്. ഈ വിഭവം സ്വാദുളള, രുചികരമായ മസാലയിൽ പാടിയിരിക്കുന്നു, ചോറോ അപ്പം അല്ലെങ്കിൽ പരോട്ടയുമായി കഴിക്കുന്നത് അനുയോജ്യമാണ്.', ' Beef Roast is a classic Kerala-style dish made by slow-cooking tender beef with a rich blend of spices, garlic, ginger, and curry leaves. The beef is roasted until it reaches a perfect caramelized, golden-brown crust, with deep flavors infused throughout. This dish is aromatic, flavorful, and spicy, best enjoyed with steamed rice, appam, or parotta.\r\n\r\n', 'बीफ रोस्ट एक पारंपरिक केरल व्यंजन है जिसमें नरम बीफ के टुकड़ों को मसालों, लहसुन, अदरक, और करी पत्तों के साथ पकाया जाता है। इसे धीमी आंच पर भूनकर सुनहरा और कुरकुरा किया जाता है, जिससे इसके भीतर स्वाद और मसाले भर जाते हैं। इसे चावल, पराठा, या अप्पम के साथ परोसा जाता है।', 'لحم البقر المحمر هو طبق تقليدي على الطريقة الكيرالية يتم فيه طهي قطع لحم البقر الطرية مع مزيج غني من التوابل، الثوم، الزنجبيل، وأوراق الكاري. يتم تحميص اللحم حتى يصبح ذو قشرة ذهبية بنكهة غنية وعميقة. يُقدّم عادةً مع الأرز أو خبز البراتا أو الأبهام.\r\n\r\n', 0),
(82, 18, 8, 0, 0, 'imresizer-1733741683863.jpg', 'imresizer-17337416838631.jpg', 'imresizer-17337416838632.jpg', 'imresizer-17337416838633.jpg', 'imresizer-17337416838634.jpg', 0, 0, 'non-veg', ' ബീഫ് തേങ്ങാ ഫ്രൈ', 'Beef Coconut Fry', ' बीफ नारियल फ्राई', ' لحم البقر المقلي بجوز الهند ', 'ബീഫ് തേങ്ങാ ഫ്രൈ കേരളത്തിന്റെ സവിശേഷമായ ഒരു വിഭവമാണ്, മൃദുവായ ബീഫ് കഷണങ്ങൾ നന്നായി തേങ്ങ, ഉള്ളി, പച്ചമുളക്, മസാലകൾ എന്നിവയുമായി വഴറ്റി പാകം ചെയ്യുന്നതാണ്. തേങ്ങയുടെ കഷണങ്ങൾ ചേർത്തുള്ള ഈ വിഭവം രുചികരവും മസാലയും നിറഞ്ഞതാണ്, ചോറോ അപ്പം അല്ലെങ്കിൽ പരോട്ടയുമായി മികച്ച രീതിയിൽ കഴിക്കാം.', 'Beef Coconut Fry is a flavorful Kerala-style dish where tender beef pieces are stir-fried with fresh coconut, onions, green chilies, and a blend of aromatic spices. The addition of grated coconut gives the dish a rich texture and enhances the natural flavors of the beef. This spicy, aromatic dish pairs perfectly with steamed rice, parotta, or appam.', 'बीफ नारियल फ्राई एक केरल शैली का स्वादिष्ट व्यंजन है जिसमें नरम बीफ के टुकड़ों को ताजे नारियल, प्याज, हरी मिर्च और मसालों के साथ तला जाता है। नारियल के घिसे हुए टुकड़े इस व्यंजन को एक समृद्ध बनावट और बेहतरीन स्वाद प्रदान करते हैं। यह मसालेदार और खुशबूदार डिश चावल, पराठा, या अप्पम के साथ बेहतरीन होती है।\r\n\r\n', ' لحم البقر المقلي بجوز الهند هو طبق كيرالي شهي يتم فيه قلي قطع اللحم الطرية مع جوز الهند الطازج، والبصل، والفلفل الأخضر، ومزيج من التوابل العطرية. يضيف جوز الهند المبشور للطبق قوامًا غنيًا ويعزز النكهات الطبيعية للحم. يُقدّم عادةً مع الأرز المطهو على البخار أو خبز البراتا أو الأبهام.\r\n\r\n', 0),
(83, 18, 8, 0, 0, 'imresizer-1733741863084.jpg', 'imresizer-17337418630841.jpg', 'imresizer-17337418630842.jpg', 'imresizer-17337418630843.jpg', 'imresizer-17337418630844.jpg', 0, 0, 'non-veg', ' ബീഫ് വരട്ടിയത്ത് ', 'Beef Varattiyathu', 'बीफ वरत्तियथु', 'لحم البقر المحمص', ' ബീഫ്  വരട്ടിയത്ത്  കേരളത്തിന്റെ പരമ്പരാഗതമായ ഒരു വിഭവമാണ്, മൃദുവായ ബീഫ് കഷണങ്ങളെ മസാലകളിൽ മുക്കി, നീട്ടി പാകം ചെയ്ത ശേഷം, ഉള്ളി, കറിവേപ്പില, തേങ്ങ കഷണങ്ങൾ എന്നിവയുമായി വറുത്തു നല്ലൊരു രുചിയുള്ള വിഭവമാണ്. ഇത് ചോര, അപ്പം അല്ലെങ്കിൽ പരോട്ടയുമായി കഴിക്കാൻ അനുയോജ്യമാണ്.', 'Beef Varattiyathu is a Kerala-style dish where tender beef pieces are marinated in a blend of spices and then slow-cooked to perfection. The beef is roasted with onions, curry leaves, and coconut slices, absorbing the bold, spicy flavors of the masala. It’s a rich, aromatic, and flavorful dish that pairs wonderfully with rice, parotta, or appam.', 'बीफ वरत्तियथु एक केरल शैली का स्वादिष्ट और मसालेदार व्यंजन है जिसमें बीफ के नरम टुकड़ों को मसालों में मैरीनेट किया जाता है और फिर धीमी आंच पर पकाया जाता है। इसे प्याज, करी पत्ते, और नारियल के टुकड़ों के साथ भूनकर तैयार किया जाता है, जिससे यह व्यंजन मसालेदार और खुशबूदार बन जाता है। इसे चावल, पराठा, या अप्पम के साथ सबसे अच्छा परोसा जाता है।', 'لحم البقر المحمص هو طبق كيرالي تقليدي يتم فيه تتبيل قطع اللحم الطرية بالتوابل ثم طهيها ببطء. يتم تحميص اللحم مع البصل وأوراق الكاري وشرائح جوز الهند ليأخذ نكهة قوية وعطرية. يُقدم هذا الطبق مع الأرز المطهو على البخار أو خبز البراتا أو الأبهام.\r\n\r\n', 0),
(84, 18, 0, 0, 0, 'imresizer-1733744484125.jpg', 'imresizer-17337444841251.jpg', 'imresizer-17337444841252.jpg', 'imresizer-17337444841253.jpg', 'imresizer-17337444841254.jpg', 0, 0, 'non-veg', ' മട്ടൻ  വരട്ടിയത്ത് ', 'Mutton Varattiyathu', 'मटन वरत्तियथु', ' لحم الضأن المحمص', 'മട്ടൻ വരട്ടിയത്ത് കേരളത്തിന്റെ പരമ്പരാഗത മസാല വിഭവമാണ്, മൃദുവായ മട്ടൻ കഷണങ്ങളെ മസാല, വെളുത്തുള്ളി, ഇഞ്ചി, കറിവേപ്പില എന്നിവയുമായി പാകം ചെയ്ത്, വെള്ളിയിട്ട് വറുത്ത് തയ്യാറാക്കുന്നു. ഇതിന്റെ ഉഗ്രമായ മസാല രുചി നന്നായി പാചകം ചെയ്ത മട്ടനിൽ ഇരുട്ടും വാസനയും കൂട്ടി ചേർക്കുന്നു. ചോര, അപ്പം അല്ലെങ്കിൽ പരോട്ടയുമായി ഇത് മികച്ച ഭക്ഷണത്തിനായാണ്.\r\n\r\n', 'Mutton Varattiyathu is a traditional Kerala dish made by slow-cooking tender mutton pieces with a rich blend of spices, garlic, ginger, and curry leaves. The mutton is roasted until golden brown, allowing the spices to infuse deeply into the meat. The result is a flavorful, aromatic, and spicy dish that pairs perfectly with steamed rice, parotta, or appam.', ': मटन वरत्तियथु एक पारंपरिक केरल व्यंजन है जिसमें मटन के नरम टुकड़ों को मसालों, लहसुन, अदरक, और करी पत्तों के साथ पकाया जाता है। इसे धीमी आंच पर भूनकर सुनहरा और कुरकुरा किया जाता है, जिससे इसमें मसालों का गहरा स्वाद समा जाता है। यह मसालेदार और खुशबूदार डिश चावल, पराठा या अप्पम के साथ बहुत अच्छा लगता है।', ' لحم الضأن المحمص هو طبق كيرالي تقليدي يتم فيه طهي قطع لحم الضأن الطرية مع التوابل، الثوم، الزنجبيل، وأوراق الكاري. يتم تحميص اللحم حتى يصبح ذهبيًا ومقرمشًا، مما يسمح للتوابل بالتغلغل في اللحم. الطبق مليء بالنكهات العطرية والحارة، ويُقدم مع الأرز أو خبز البراتا أو الأبهام.\r\n\r\n', 0),
(85, 18, 9, 0, 0, 'imresizer-1733744636461.jpg', 'imresizer-17337446364611.jpg', 'imresizer-17337446364612.jpg', 'imresizer-17337446364613.jpg', 'imresizer-17337446364614.jpg', 0, 0, 'non-veg', 'മട്ടൻ പെപ്പർ റോസ്റ്റ്', 'Mutton Pepper Roast', 'मटन पेपर रोस्ट', 'لحم الضأن بالفلفل الأسود ', 'മട്ടൻ പെപ്പർ റോസ്റ്റ് ഒരു ഉഗ്രമായ, രുചികരമായ വിഭവമാണ്, മൃദുവായ മട്ടൻ കഷണങ്ങൾ കട്ടിയുള്ള കുരുമുളക്, വിവിധ മസാലകൾ, കറിവേപ്പില എന്നിവയുമായി പാകം ചെയ്യുന്നു. മട്ടൻ വെറും നന്നായി വറുത്ത്, അതിന്റെ സ്വാദും വാസനയും നിറഞ്ഞ ഒരു രുചികരമായ വിഭവമാണ്. ഇത് ചോറോ അപ്പം അല്ലെങ്കിൽ പരോട്ടയുമായി മികച്ച കോമ്പിനേഷൻ ആണ്.\r\n\r\n', 'Mutton Pepper Roast is a spicy, flavorful dish where tender mutton pieces are slow-cooked with black pepper, a variety of aromatic spices, and fresh curry leaves. The mutton is roasted until it develops a deep, rich flavor and a crispy outer texture. This aromatic and spicy dish pairs perfectly with steamed rice, parotta, or appam.', ' मटन पेपर रोस्ट एक मसालेदार और स्वादिष्ट व्यंजन है जिसमें मटन के नरम टुकड़ों को काले मिर्च, मसालों और ताजे करी पत्तों के साथ पकाया जाता है। मटन को धीमी आंच पर भूनकर एक गहरे, समृद्ध स्वाद और कुरकुरी बनावट दी जाती है। यह मसालेदार और खुशबूदार डिश चावल, पराठा या अप्पम के साथ बेहतरीन होती है।\r\n\r\n', 'لحم الضأن بالفلفل الأسود هو طبق حار ولذيذ يتم فيه طهي قطع لحم الضأن الطرية مع الفلفل الأسود، مجموعة من التوابل العطرية، وأوراق الكاري الطازجة. يتم تحميص اللحم حتى يصبح ذا نكهة غنية وقشرة خارجية مقرمشة. يُقدم عادةً مع الأرز أو خبز البراتا أو الأبهام.', 0),
(92, 21, 0, 0, 0, 'imresizer-1733752069122.jpg', 'imresizer-17337520691221.jpg', 'imresizer-17337520691222.jpg', 'imresizer-17337520691223.jpg', 'imresizer-17337520691224.jpg', 0, 0, 'veg', 'ബട്ടർസ്കാച്ച് മിൽക്‌ഷേക്ക്', ' Butterscotch Milkshake', ' बटरस्कॉच मिल्कशेक', 'ميلك شيك بالباتر سكوتش', 'ബട്ടർസ്കാച്ച് മിൽക്‌ഷേക്ക് ഒരു ക്രീമിയമായ, രുചികരമായ പാനീയം ആണ്, എന്നാൽ സമൃദ്ധമായ ബട്ടർസ്കാച്ച് സിറപ്പ്, വെനിലാ ഐസ്‌ക്രീം, തണുത്ത പാൽ എന്നിവ ചേർത്ത് തയ്യാറാക്കുന്നു. സമമായ, രസകരമായ തകരാറിനൊപ്പം ബട്ടർസ്കാച്ചിന്റെ മധുരവും ബട്ടർ ഫ്ലേവറും ഈ പാനീയത്തെ വിശേഷിപ്പിക്കുന്നു. ക്രീം നൽകി, കറാമൽ അല്ലെങ്കിൽ ബട്ടർസ്കാച്ച് ചങ്കുകൾ ഉപയോഗിച്ച് ഗാർണിഷ് ചെയ്തുള്ളത് ഒരു മികച്ച അനുഭവമാണ്.', 'Butterscotch Milkshake is a creamy and indulgent drink made with rich butterscotch syrup, vanilla ice cream, and chilled milk. The smooth and velvety texture, combined with the sweet and buttery flavor of butterscotch, makes it a refreshing and delicious treat. Topped with whipped cream and a sprinkle of caramel or butterscotch chunks, it’s a perfect drink to enjoy any time of the day.', 'बटरस्कॉच मिल्कशेक एक क्रीमी और स्वादिष्ट पेय है जो समृद्ध बटरस्कॉच सिरप, वेनिला आइसक्रीम, और ठंडे दूध से तैयार किया जाता है। इसकी मुलायम और मलाईदार बनावट, साथ ही बटरस्कॉच का मीठा और मक्खन जैसा स्वाद, इसे एक ताजगी से भरपूर और स्वादिष्ट व्यंजन बनाता है। इसे व्हिप्ड क्रीम और कैरामेल या बटरस्कॉच के टुकड़ों से सजाकर परोसा जाता है, जो इसे हर समय आनंद लेने के लिए एक आदर्श पेय बनाता है।\r\n\r\n', ' ميلك شيك بالباتر سكوتش هو مشروب كريمي ولذيذ يتم تحضيره باستخدام شراب الباتر سكوتش الغني، آيس كريم الفانيليا، والحليب البارد. يتميز بملمسه الناعم والكريمي، مع نكهة الباتر سكوتش الحلوة والزبدية التي تجعله مشروباً منعشاً ولذيذاً. يتم تزيينه بالكريمة المخفوقة ورشة من الكراميل أو قطع الباتر سكوتش، مما يجعله مشروباً مثالياً للاستمتاع به في أي وقت من اليوم.\r\n\r\n', 0),
(86, 19, 0, 0, 0, 'imresizer-1733745961094.jpg', 'imresizer-17337459610941.jpg', 'imresizer-17337459610942.jpg', 'imresizer-17337459610943.jpg', 'imresizer-17337459610944.jpg', 0, 0, 'non-veg', 'നൂഡിൽസ് പ്രൗൺസ്', 'Noodles Prawns', 'नूडल्स प्रॉन्स', ' نودلز بالروبيان', ' നൂഡിൽസ് പ്രൗൺസ് ഒരു രുചികരമായ വിഭവമാണ്, മൃദുവായ പ്രൗൺസ് നൂഡിൽസുമായി ചേര്ത്ത് പച്ചക്കറികളും, മസാലകളും ചേർത്ത് പാകം ചെയ്യുന്നു. പ്രൗൺസ് നന്നായി പാകം ചെയ്യപ്പെടുകയും, നൂഡിൽസ് പച്ചക്കറികളുമായി വഴറ്റി, ഒരു സമ്പൂർണ്ണമായ രുചിയുള്ള ഭക്ഷണമായി മാറുന്നു. സമുദ്രഭോജനം, നൂഡിൽസ് എന്നിവയുടെ മികച്ച സംയോജനം, രുചിയും കൃത്യവുമാണ്.', ' Noodles Prawns is a delicious and savory dish that combines tender prawns with stir-fried noodles, seasoned with a blend of aromatic spices and sauces. The prawns are cooked to perfection, and the noodles are stir-fried with vegetables, creating a flavorful and satisfying meal. This dish is a perfect blend of seafood and noodles, offering a rich taste and texture that will delight your taste buds.', 'नूडल्स प्रॉन्स एक स्वादिष्ट और सॉस में पकाया गया व्यंजन है, जिसमें नरम प्रॉन्स को नूडल्स के साथ तला जाता है, और विभिन्न मसालों के मिश्रण से सजाया जाता है। प्रॉन्स पूरी तरह से पकाए जाते हैं, और नूडल्स को ताजे सब्जियों के साथ हल्का सा भूनकर परोसा जाता है, जिससे यह एक स्वादिष्ट और संतोषजनक भोजन बन जाता है। यह समुद्री भोजन और नूडल्स का बेहतरीन संयोजन है।', 'نودلز بالروبيان هو طبق لذيذ ولذيذ حيث يتم دمج الروبيان الطري مع النودلز المقلي، ويُتبل بمزيج من التوابل العطرية والصلصات. يتم طهي الروبيان بشكل مثالي، ويتم قلي النودلز مع الخضار، مما يخلق وجبة لذيذة ومرضية. هذا الطبق هو مزيج مثالي من المأكولات البحرية والنودلز، ويقدم طعماً وملمساً غنياً يرضي براعم التذوق.', 0),
(87, 19, 0, 0, 0, 'imresizer-1733747445498.jpg', 'imresizer-17337474454981.jpg', 'imresizer-17337474454982.jpg', 'imresizer-17337474454983.jpg', 'imresizer-17337474454984.jpg', 0, 0, 'veg', ' വെജ് നൂഡിൽസ്', 'Veg Noodles', ' वेज नूडल्स', 'نودلز بالخضار', 'വെജ് നൂഡിൽസ് ഒരു രുചികരവും ആരോഗ്യകരവുമായ വിഭവമാണ്, പച്ചക്കറികളായ കാരറ്റ്, ബെൽ പെപ്പർ, കാബേജ്, പച്ചമുളക് എന്നിവ ചേർത്ത് നൂഡിൽസ് വഴറ്റി പാകം ചെയ്യുന്നു. ഈ നൂഡിൽസ് ചീനിക്കൂട്ടം, ഇഞ്ചി, വെളുത്തുള്ളി, മസാലകളുടെ സദ്യമായ ലഹരിയാൽ സ്വാദിഷ്ടമായ ഒരു വിഭവമാണ്. നൂഡിൽസ് ഒരു കേക്കുകൾ അല്ലെങ്കിൽ പ്രധാന കോഴ്സായി കഴിക്കാൻ അനുയോജ്യമാണ്', ' Veg Noodles is a delightful and healthy dish made by stir-frying noodles with a variety of fresh vegetables like carrots, bell peppers, cabbage, and beans. The noodles are seasoned with a combination of soy sauce, ginger, garlic, and aromatic spices, creating a flavorful, colorful, and nutritious meal. Perfect as a snack or main course, Veg Noodles offer a delicious taste with every bite.\r\n\r\n', ' वेज नूडल्स एक स्वादिष्ट और स्वास्थ्यवर्धक व्यंजन है, जिसमें ताजे सब्जियों जैसे गाजर, बेल पेपर, गोभी और बीन्स के साथ नूडल्स को हल्का सा भूनकर तैयार किया जाता है। नूडल्स को सोया सॉस, अदरक, लहसुन और मसालों के मिश्रण से सजाया जाता है, जो इसे एक स्वादिष्ट और पौष्टिक भोजन बनाता है। वेज नूडल्स एक बेहतरीन स्नैक या मुख्य व्यंजन के रूप में परोसा जाता है।\r\n\r\n', ' نودلز بالخضار هو طبق لذيذ وصحي يتم تحضيره من خلال قلي النودلز مع مجموعة متنوعة من الخضروات الطازجة مثل الجزر، الفلفل الحلو، الكرنب، والفاصوليا. يتم تتبيل النودلز بمزيج من صوص الصويا، الزنجبيل، الثوم، والتوابل العطرية، مما يخلق وجبة لذيذة وملونة ومغذية. يعد نودلز بالخضار خيارًا مثاليًا كوجبة خفيفة أو طبق رئيسي', 0),
(88, 19, 0, 0, 0, 'imresizer-1733747858530.jpg', 'imresizer-17337478585301.jpg', 'imresizer-17337478585302.jpg', 'imresizer-17337478585303.jpg', 'imresizer-17337478585304.jpg', 0, 0, 'non-veg', 'ചിക്കൻ നൂഡിൽസ്', 'Chicken Noodles', 'चिकन नूडल्स', 'نودلز بالدجاج', ' ചിക്കൻ നൂഡിൽസ് ഒരു രുചികരവും പൂരിപ്പിക്കുന്നവുമായ വിഭവമാണ്, മൃദുവായ ചിക്കൻ കഷണങ്ങൾ നൂഡിൽസിനൊപ്പം, പച്ചക്കറികൾ (കാരണ, ബെൽ പെപ്പർ, കാബേജ്) ചേർത്ത് വഴറ്റി പാകം ചെയ്യുന്നു. ചീനിക്കൂട്ടം, ഇഞ്ചി, വെളുത്തുള്ളി, മസാലകൾ എന്നിവ ചേർത്തുള്ള ഈ വിഭവം രുചികരവും സുഗന്ധപ്രദവുമാണ്. ജ്യൂസിയമായ ചിക്കനും നന്നായി പാകം ചെയ്ത നൂഡിൽസും കൂട്ടിച്ച് ഒരു സമ്പൂർണ്ണമായ അനുഭവം നൽകുന്നു.', ' Chicken Noodles is a flavorful and filling dish made by stir-frying tender pieces of chicken with noodles and a mix of fresh vegetables like carrots, bell peppers, and cabbage. It’s seasoned with soy sauce, ginger, garlic, and a variety of spices, creating a savory and aromatic meal. The combination of juicy chicken and perfectly cooked noodles offers a satisfying and delicious experience.', 'चिकन नूडल्स एक स्वादिष्ट और संतोषजनक व्यंजन है जिसमें नरम चिकन के टुकड़े नूडल्स और ताजे सब्जियों जैसे गाजर, बेल पेपर और गोभी के साथ हल्का सा भूनकर तैयार किए जाते हैं। इसे सोया सॉस, अदरक, लहसुन, और मसालों के मिश्रण से सजाया जाता है, जो इसे एक लाजवाब और खुशबूदार डिश बनाता है। चिकन और नूडल्स का संयोजन स्वाद और पोषण का बेहतरीन मिश्रण है।', 'نودلز بالدجاج هو طبق لذيذ ومشبع يتم تحضيره عن طريق قلي قطع دجاج طرية مع النودلز ومجموعة من الخضروات الطازجة مثل الجزر، الفلفل الحلو، والملفوف. يتم تتبيله بصوص الصويا، الزنجبيل، الثوم، ومجموعة من التوابل العطرية، مما يخلق وجبة شهية وعطرية. يجمع هذا الطبق بين الدجاج العصير والنودلز المطهوة بشكل مثالي ليقدم تجربة لذيذة وممتعة.\r\n\r\n', 0),
(89, 19, 0, 0, 0, 'imresizer-1733748252337.jpg', 'imresizer-17337482523371.jpg', 'imresizer-17337482523372.jpg', 'imresizer-17337482523373.jpg', 'imresizer-17337482523374.jpg', 0, 0, 'non-veg', 'സ്കെജ്‌വാൻ റൈസ് മിക്സ്', 'Schezwan Rice Mixed', 'स्केज़वान राइस मिक्स', 'أرز سيتشوان مختلط ', 'സ്കെജ്‌വാൻ റൈസ് മിക്സ് ഒരു ഉഗ്രമായ, രുചികരമായ വിഭവമാണ്, സ്കെജ്‌വാൻ സോസ്, പച്ചക്കറികൾ, മസാലകൾ എന്നിവ ചേർത്ത് കുരുക്കി പാകം ചെയ്ത അരിയോടുകൂടി. സ്കെജ്‌വാൻ സോസിന്റെ ആഴമുള്ള, മസാല നിറഞ്ഞ രുചികൾ അരിയിലേക്ക് ഉരുകുകയും ഒരു തൊട്ടിന്റെ പുണ്യമായ വിഭവമായി മാറുന്നു. ഇത് സ്പ്രിംഗ് ഒണ്യൺസിന്റെ ഇളവുമായി ഗാർണിഷ് ചെയ്യുകയും ഏഷ്യൻ വിഭവങ്ങളോടൊപ്പം അല്ലെങ്കിൽ സ്വതന്ത്രമായി ഒരു റുചികരമായ ഭക്ഷണമായി കഴിക്കാൻ അനുയോജ്യമാണ്', 'Schezwan Rice Mixed is a vibrant and spicy dish made by stir-frying rice with a blend of Schezwan sauce, vegetables, and aromatic spices. The rice absorbs the tangy, spicy flavors of the Schezwan sauce, creating a deliciously bold and flavorful meal. It is typically garnished with spring onions and served as a perfect accompaniment to any Asian-inspired meal or enjoyed on its own for a satisfying treat.', ' स्केज़वान राइस मिक्स एक मसालेदार और स्वादिष्ट व्यंजन है जिसमें चावल को स्केज़वान सॉस, सब्जियों और मसालों के मिश्रण के साथ हल्का भूनकर तैयार किया जाता है। चावल स्केज़वान सॉस के तीव्र और मसालेदार स्वाद को सोखकर एक बेहतरीन, स्वादिष्ट डिश बन जाता है। इसे अक्सर स्प्रिंग ऑनियन्स से सजा कर एशियाई भोजन के साथ या अकेले एक संतोषजनक स्नैक के रूप में परोसा जाता है।', 'أرز سيتشوان المختلط هو طبق حار ولذيذ يتم تحضيره عن طريق قلي الأرز مع صوص سيتشوان، الخضروات، والتوابل العطرية. يمتص الأرز النكهات الحامضية والتوابل الحارة لصوص سيتشوان، مما يجعله وجبة شهية مليئة بالنكهات القوية. يتم تزيينه عادة بالبصل الأخضر ويُقدم مع الأطباق الآسيوية أو كوجبة خفيفة لذيذة.\r\n\r\n', 0),
(91, 19, 4, 0, 0, 'imresizer-1733749067777.jpg', 'imresizer-17337490677771.jpg', 'imresizer-17337490677772.jpg', 'imresizer-17337490677773.jpg', 'imresizer-17337490677774.jpg', 0, 0, 'non-veg', 'സ്കെജ്‌വാൻ നൂഡിൽസ് ചിക്കൻ', 'Schezwan Noodles Chicken', 'स्केज़वान नूडल्स चिकन', 'نودلز سيتشوان بالدجاج', 'സ്കെജ്‌വാൻ നൂഡിൽസ് ചിക്കൻ ഒരു ഉഗ്രമായ, രുചികരമായ വിഭവമാണ്, മൃദുവായ ചിക്കൻ കഷണങ്ങൾ നൂഡിൽസിനൊപ്പം, പച്ചക്കറികൾ ചേർത്ത്, സ്വാദിഷ്ടമായ സ്കെജ്‌വാൻ സോസുമായി വഴറ്റി പാകം ചെയ്യുന്നു. സോസിന്റെ മസാല നിറഞ്ഞ, തിളപ്പിക്കുന്ന, ഒപ്പം കട്ടിയുള്ള രുചികൾ നൂഡിൽസിന് ഒരു പ്രത്യേക അന്നഭംഗി നൽകുന്നു. സ്പ്രിംഗ് ഒണ്യൺസ് ഉപയോഗിച്ച് ഗാർണിഷ് ചെയ്യുന്നു, ഇത് ഒരു ഉഗ്രമായ നൂഡിൽസ് ആന്റ് ചിക്കൻ സംയോജനം ആണ്.', 'Schezwan Noodles Chicken is a spicy and flavorful dish made by stir-frying tender pieces of chicken with noodles, fresh vegetables, and a generous amount of Schezwan sauce. The combination of savory, spicy, and tangy flavors from the sauce adds a bold and aromatic kick to the noodles. The dish is garnished with spring onions, making it a perfect fusion of spicy noodles and tender chicken.', 'स्केज़वान नूडल्स चिकन एक मसालेदार और स्वादिष्ट व्यंजन है जिसमें नरम चिकन के टुकड़े नूडल्स, ताजे सब्जियों और स्केज़वान सॉस के साथ भूनकर तैयार किए जाते हैं। सॉस के तीव्र, मसालेदार, और खट्टे स्वादों से नूडल्स को एक बेहतरीन खुशबू और स्वाद मिलता है। इसे स्प्रिंग अनियन्स से सजा कर परोसा जाता है, जो चिकन और नूडल्स का मसालेदार संयोजन बनाता है।', 'نودلز سيتشوان بالدجاج هو طبق حار ولذيذ يتم تحضيره عن طريق قلي قطع الدجاج الطرية مع النودلز والخضروات الطازجة، ويُضاف إليها كمية سخية من صوص سيتشوان. مزيج النكهات المالحة، الحارة، والحامضة من الصوص يضيف طعمًا قويًا وعطريًا للنودلز. يتم تزيين الطبق بالبصل الأخضر ليكون مزيجًا مثاليًا من النودلز الحارة والدجاج الطري.\r\n\r\n', 0),
(93, 21, 0, 0, 0, 'imresizer-1733752322819.jpg', 'imresizer-17337523228191.jpg', 'imresizer-17337523228192.jpg', 'imresizer-17337523228193.jpg', 'imresizer-17337523228194.jpg', 0, 0, 'veg', 'ചോക്ലേറ്റ് മിൽക്‌ഷേക്ക്', 'Chocolate Milkshake', 'चॉकलेट मिल्कशेक ', 'ميلك شيك بالشوكولاتة', ' ചോക്ലേറ്റ് മിൽക്‌ഷേക്ക് ഒരു സമൃദ്ധമായ, ക്രീമിയുള്ള പാനീയം ആണ്, ദൃഢമായ ചോക്ലേറ്റ് സിറപ്പ്, തണുത്ത പാൽ, വെനിലാ ഐസ്‌ക്രീം എന്നിവ ചേർത്ത് തയ്യാറാക്കുന്നു. മധുരമായ ചോക്ലേറ്റ് രുചിയും ക്രീമിയുള്ള പാൽ നനച്ചുമറിയുന്ന കുസുപ്പും ചേർന്ന് ഇത് ഒരു വിശേഷമായ, രുചികരമായ അനുഭവം നൽകുന്നു. ക്രീം നൽകിയുള്ള topping ഉം ചോക്ലേറ്റ് സ്പ്രിങ്കിളുകൾ അല്ലെങ്കിൽ ചോക്ലേറ്റ് ചങ്കുകൾ ഉപയോഗിച്ച് ഗാർണിഷ് ചെയ്യുന്നത്, ഈ പാനീയം കൂടുതൽ ആസ്വാദ്യമായുമാക്കുന്നു.', ' Chocolate Milkshake is a rich and creamy beverage made with smooth chocolate syrup, chilled milk, and vanilla ice cream. The perfect blend of sweet chocolate and creamy milk creates a deliciously indulgent treat. Topped with whipped cream and chocolate sprinkles or chunks, it’s a decadent drink that satisfies your chocolate cravings and refreshes you at the same time.', ': चॉकलेट मिल्कशेक एक समृद्ध और क्रीमी पेय है, जिसे चिकनी चॉकलेट सिरप, ठंडे दूध और वेनिला आइसक्रीम से तैयार किया जाता है। मीठी चॉकलेटी और क्रीमी दूध की परफेक्ट मिलावट इसे एक स्वादिष्ट और लाजवाब अनुभव बनाती है। व्हिप्ड क्रीम और चॉकलेट स्प्रिंकल्स या चॉकलेट के टुकड़ों से सजाया गया यह पेय चॉकलेट के शौकिनों के लिए एक आदर्श और ताजगी भरा आनंद है।', 'ميلك شيك بالشوكولاتة هو مشروب كريمي وغني يتم تحضيره باستخدام شراب الشوكولاتة السلس، الحليب البارد، وآيس كريم الفانيليا. يمزج طعم الشوكولاتة الحلو مع الحليب الكريمي ليخلق تجربة لذيذة وغنية. يتم تزيينه بالكريمة المخفوقة ورشات من الشوكولاتة أو قطع الشوكولاتة، مما يجعله مشروبًا مثاليًا لمحبي الشوكولاتة.\r\n\r\n', 0),
(94, 21, 0, 0, 0, 'imresizer-1733763997082.jpg', 'imresizer-17337639970821.jpg', 'imresizer-17337639970822.jpg', 'imresizer-17337639970823.jpg', 'imresizer-17337639970824.jpg', 0, 0, 'veg', 'വാനിലമിൽക്‌ഷേക്ക് (', 'Vanilla Milkshake', 'वनीला मिल्कशेक', ' ميلك شيك بالفانيليا', 'വാനില മിൽക്‌ഷേക്ക് ഒരു പരമ്പരാഗതവും ക്രീമിയുമായ പാനീയം ആണ്, സമൃദ്ധമായ വെനില ഐസ്‌ക്രീം, തണുത്ത പാൽ, വെനില എസൻസിന്റെ ഗന്ധം എന്നിവ ചേർത്താണ് ഇത് തയ്യാറാക്കുന്നത്. സSmooth ആയും മധുരമുള്ള ചേരുവകൾ ചേർന്ന ഇത് ആരും ആസ്വദിക്കാവുന്ന ഒരു കുളിർപാനീയമാണ്. Whipped ക്രീം ഉപയോഗിച്ചും cherry അല്ലെങ്കിൽ sprinkles ഉപയോഗിച്ചും ഗാർണിഷ് ചെയ്യുന്നത്, ഇത് കൂടുതൽ ആകർഷകമാക്കുന്നു.', 'Vanilla Milkshake is a classic and creamy beverage made with rich vanilla ice cream, chilled milk, and a hint of vanilla essence. Its smooth and velvety texture, combined with the delicate sweetness of vanilla, makes it a timeless treat. Perfectly refreshing, it’s often topped with whipped cream and garnished with a cherry or sprinkles for an extra touch of indulgence.\r\n\r\n', 'वनीला मिल्कशेक एक पारंपरिक और क्रीमी पेय है, जिसे समृद्ध वनीला आइसक्रीम, ठंडे दूध और हल्की वनीला एसेंस के साथ तैयार किया जाता है। इसका मुलायम और मलाईदार बनावट वनीला की मीठी सुगंध के साथ मिलकर इसे एक क्लासिक पेय बनाता है। इसे अक्सर व्हिप्ड क्रीम, चेरी, या स्प्रिंकल्स से सजाया जाता है, जो इसे और भी विशेष बनाता है।', 'ميلك شيك بالفانيليا هو مشروب كلاسيكي وكريمي يتم تحضيره باستخدام آيس كريم الفانيليا الغني، الحليب البارد، وقليل من خلاصة الفانيليا. يتميز بملمسه الناعم ونكهته الحلوة التي تجعله مشروبًا منعشًا لا يُنسى. غالبًا ما يُزين بالكريمة المخفوقة والكرز أو الرشات لإضافة لمسة من الفخامة.\r\n\r\n', 0);
INSERT INTO `product` (`product_id`, `category_id`, `subcategory_id`, `store_id`, `price`, `image`, `image1`, `image2`, `image3`, `image4`, `is_customizable`, `is_addon`, `product_veg_nonveg`, `product_name_ma`, `product_name_en`, `product_name_hi`, `product_name_ar`, `product_desc_ma`, `product_desc_en`, `product_desc_hi`, `product_desc_ar`, `is_active`) VALUES
(95, 21, 0, 0, 0, 'imresizer-1734268723588.jpg', 'JIElmAdzasTcxbRXcropped-image.jpg', '1tLigf5Yv8Gjz7y6cropped-image.jpg', 'fCSP7v9XqWI5nMmicropped-image.jpg', 'rbvX7wSZ8n0TBOEkcropped-image.jpg', 0, 0, 'veg', 'പിസ്ത മിൽക്‌ഷേക്ക്', 'Pista Milkshake', 'पिस्ता मिल्कशेक', 'ميلك شيك بالفستق', 'പിസ്ത മിൽക്‌ഷേക്ക് ഒരു കുളിർപ്രദവും ക്രീമിയുമായ പാനീയം ആണ്, സമൃദ്ധമായ പിസ്ത ഐസ്‌ക്രീം, തണുത്ത പാൽ, പിസ്ത എസൻസിന്റെ കുറച്ചുപേർ ചേർത്ത് തയ്യാറാക്കുന്നതാണ്. കൃത്യമായ അളവിൽ ചേര്ത്തും പൊരുത്തമാക്കിയും ഇത് ആലവോളമെത്തുന്ന ഒരു രുചികരമായ പാനീയമാണ്. മുകളിലായി ചിരകിയ പിസ്തയും സിറപ്പും ചേർത്ത് അലങ്കരിച്ച ഈ മിൽക്‌ഷേക്ക്, പിസ്ത ആരാധകർക്ക് അനുയോജ്യമായൊരു പ്രത്യേക കുളിർപാനീയമാണ്.', 'Pista Milkshake is a refreshing and creamy beverage made with rich pistachio ice cream, chilled milk, and a touch of pistachio essence. Blended to perfection, this milkshake offers a nutty and subtly sweet flavor with a velvety texture. Garnished with chopped pistachios and a drizzle of syrup, it’s a delightful drink for pistachio lovers and a perfect treat for any time of the day.', 'पिस्ता मिल्कशेक एक ताज़ा और क्रीमी पेय है, जिसे समृद्ध पिस्ता आइसक्रीम, ठंडे दूध, और पिस्ता एसेंस की हल्की मात्रा से तैयार किया जाता है। इस मिल्कशेक में पिस्ते का हल्का मीठा और नटी स्वाद होता है, जो इसे खास बनाता है। कटे हुए पिस्ता और सिरप के साथ सजाया गया यह पेय पिस्ता प्रेमियों के लिए एक परफेक्ट ट्रीट है।\r\n\r\n', 'ميلك شيك بالفستق هو مشروب منعش وكريمي يتم تحضيره باستخدام آيس كريم الفستق الغني، الحليب البارد، وقليل من خلاصة الفستق. يتميز بنكهة الفستق الغنية والحلاوة الخفيفة مع قوام مخملي. يُزين بشرائح الفستق المفروم ورذاذ من الشراب، مما يجعله خيارًا رائعًا لعشاق الفستق ومتعة مثالية في أي وقت.\r\n\r\n', 0),
(101, 22, 4, 0, 0, 'imresizer-1733748682537.jpg', 'imresizer-1733721117783.jpg', NULL, NULL, NULL, 0, 0, 'non-veg', 'അമ്പൂർ ബിരിയാണി', ' Ambur Biryani', 'अंबूर बिरयानी', 'برياني أمبور', 'അമ്പൂർ ബിരിയാണി തമിഴ്‌നാട്ടിലെ അമ്പൂർ നഗരത്തിൽ നിന്നുള്ള ഒരു സുപ്രസിദ്ധമായ ദക്ഷിണേന്ത്യൻ വിഭവമാണ്. സുഗന്ധമുള്ള സീരഗ സംഭ അരിയും, മൃദുവായ മാംസവും, പ്രത്യേകമായ മസാലകളുടെയും ചേരുവകളുടെയും സങ്കലനം ചേർത്ത് ഇത് തയ്യാറാക്കുന്നു. പരമ്പരാഗതമായി മട്ട് ചൂളയിൽ വേവിച്ച ഈ ബിരിയാണിക്ക് മറ്റ് ബിരിയാണികളിൽ നിന്നും വ്യത്യസ്തമായ സവിശേഷ രുചിയുണ്ട്', ' Ambur Biryani is a flavorful and aromatic South Indian delicacy originating from the town of Ambur in Tamil Nadu. Made with fragrant Seeraga Samba rice, succulent pieces of meat, and a unique blend of spices, it has a distinctive taste that sets it apart from other biryanis. Traditionally cooked over a wood fire, this biryani is light yet rich in flavor, making it a beloved dish for food lovers.', 'अंबूर बिरयानी दक्षिण भारत का एक प्रसिद्ध व्यंजन है, जो तमिलनाडु के अंबूर शहर से उत्पन्न हुआ है। इसे सुगंधित सीरागा सांबा चावल, नरम मांस के टुकड़े, और खास मसालों के मिश्रण से बनाया जाता है। लकड़ी की आग पर पारंपरिक रूप से पकाई जाने वाली यह बिरयानी हल्की होने के बावजूद स्वाद में भरपूर होती है, और बिरयानी प्रेमियों के बीच बेहद लोकप्रिय है।', ' برياني أمبور هو طبق شهي وعطري من جنوب الهند يعود أصله إلى مدينة أمبور في تاميل نادو. يتم تحضيره باستخدام أرز سيراجا سامبا المعطر، قطع لحم طرية، ومزيج فريد من التوابل. يتم طهيه تقليديًا على نار الحطب، مما يمنحه طعمًا مميزًا يختلف عن باقي أنواع البرياني. يتميز هذا الطبق بخفته وغناه بالنكهات، مما يجعله محبوبًا لعشاق الطعام.\r\n\r\n', 0),
(102, 23, 4, 0, 0, 'imresizer-1734525717399.jpg', 'imresizer-1734525717399.jpg', 'imresizer-1734525717399.jpg', 'imresizer-1734411622831.jpg', 'imresizer-1733745961094.jpg', 0, 0, 'non-veg', 'ചപ്പാത്തിയും ചിക്കൻ കറിയും', 'Chapathi with Butter Chicken', ' चपाती और चिकन करी', 'شباتي مع كاري الدجاج', 'ചപ്പാത്തിയും ചിക്കൻ കറിയും രുചികരമായ ഒരു ഇന്ത്യൻ ക്ലാസിക് ഭക്ഷണ യോജിപ്പാണ്. മൃദുവായ ഗോതമ്പ് ചപ്പാത്തി, രുചിയേറിയ മസാലകൾ ചേർത്തും ചാറുള്ള ഗ്രേവിയിലുണ്ടാക്കിയ മൃദുവായ കോഴി കറിയും ചേർന്നതാണ് ഈ കിടിലൻ കൂട്ടുകെട്ട്. ദൈനംദിന ഭക്ഷണത്തിൽ കൂടുതൽ രുചികരമായും നിറവുള്ളതുമായ അനുഭവമാണ് ഇത് നൽകുന്നത്.\r\n\r\n', 'Chapati with Chicken Curry is a classic combination of soft, whole wheat flatbread served with a flavorful and spicy chicken curry. The chapati\'s light and soft texture perfectly complements the rich and aromatic curry made with tender chicken pieces, a blend of spices, and a luscious gravy. This wholesome pairing is a staple in Indian cuisine, enjoyed for its hearty and satisfying taste.', ' चपाती और चिकन करी भारतीय भोजन का एक क्लासिक संयोजन है। नरम और हल्की गेहूं की चपाती, मसालों के मिश्रण से बनी स्वादिष्ट और सुगंधित चिकन करी के साथ परोसी जाती है। कोमल चिकन के टुकड़े और समृद्ध ग्रेवी इस व्यंजन को भरपूर और संतोषजनक बनाते हैं, जो रोज़मर्रा के खाने के लिए एक आदर्श विकल्प है।\r\n\r\n', 'شباتي مع كاري الدجاج هو مزيج كلاسيكي من المطبخ الهندي. يتم تقديم خبز الشباتي الطري المصنوع من دقيق القمح الكامل مع كاري الدجاج اللذيذ والمليء بالتوابل العطرية. يتميز الطبق بقطع دجاج طرية وصلصة غنية تجعله وجبة مشبعة ولذيذة للغاية.\r\n\r\n', 0),
(103, 23, 8, 41, 0, 'imresizer-1734581173336.jpg', 'imresizer-1734581142655.jpg', 'imresizer-1734581003284.jpg', 'imresizer-1734580989845.jpg', 'imresizer-1734580744264.jpg', 0, 0, 'non-veg', 'പൊറോട്ടയും ബീഫും', 'Poratta  and Beef', 'परोटा और बीफ़', 'باراتا مع اللحم البقري', 'പൊറോട്ടയും ബീഫും ഒരു രുചികരമായ ദക്ഷിണേന്ത്യൻ വിഭവമാണ്. ചുരണ്ടിയ പരതകളുള്ള പൊറോട്ടയും, മസാലകളുടെ സമൃദ്ധിയിൽ സുന്ദരമായി വേവിച്ച ബീഫും ചേർന്ന ഈ വിഭവം, സമൃദ്ധവും രുചികരവുമായ ഒരു ഭക്ഷണ അനുഭവം നൽകുന്നു. മൃദുവായ പൊറോട്ടയും ചാറുള്ള ബീഫ് കറിയും മികച്ച അനുയോജ്യമാണ്.', 'Poratta with Beef is a delectable combination of flaky, layered flatbread served alongside tender, flavorful beef cooked in a spicy and aromatic gravy. The soft texture of the Poratta perfectly complements the rich, slow-cooked beef curry, making it a hearty and satisfying meal loved across South India.', 'परोटा और बीफ़ एक स्वादिष्ट दक्षिण भारतीय व्यंजन है। परतदार और मुलायम परोटा को मसालेदार और सुगंधित ग्रेवी में पके नरम बीफ़ के साथ परोसा जाता है। यह व्यंजन अपने समृद्ध स्वाद और संतोषजनक अनुभव के लिए पसंद किया जाता है।', ' باراتا مع اللحم البقري هو طبق شهي من جنوب الهند. يتم تقديم خبز الباراتا المكون من طبقات رقيقة مع لحم البقر الطري المطهو بصلصة غنية ومليئة بالتوابل العطرية. هذا المزيج يوفر وجبة مشبعة ولذيذة يحبها الكثيرون.', 0),
(104, 23, 4, 0, 0, 'imresizer-1734581173336.jpg', 'imresizer-1734581142655.jpg', 'imresizer-1734581003284.jpg', 'imresizer-1734580989845.jpg', 'imresizer-1734580965012.jpg', 0, 0, 'non-veg', 'പൊറോട്ടയും ബീഫും', 'Poratta  and Beef', 'परोटा और बीफ़', 'باراتا مع اللحم البقري', 'പൊറോട്ടയും ബീഫും', 'Poratta  and Beef', 'परोटा और बीफ़', 'باراتا مع اللحم البقري', 0),
(109, 16, 3, 0, 0, 'R8DB3QUvJO7Ykyo9cropped-image.jpg', NULL, NULL, NULL, NULL, 0, 0, 'veg', 'ചപ്പാത്തി', 'Chapathi', 'चपाती', 'تشاباتي', 'ചപ്പാത്തി', 'Chapathi', 'चपाती', 'تشاباتي', 0),
(120, 20, 0, 41, 380, 'taboola-salad.jpg', 'taboola-salad1.jpg', 'taboola-salad2.jpg', 'taboola-salad3.jpg', 'taboola-salad4.jpg', 0, 1, 'veg', 'ടബൂല സലാഡ്', 'Taboola salad', 'टैबूलेह  सलाद', 'تبولة  سلطة ', 'Taboola സലാഡ് സാധാരണയായി ഗ്രിൽഡ് മീറ്റുകൾ, ബ്രെഡ് (പിതാ ബ്രെഡ്), ഹമ്മസ് എന്നിവയ്ക്കൊപ്പം കഴിക്കാം. ഇത് ഒരു ഹെൽത്തി സലാഡ് ആയതിനാൽ ഡയറ്റ് ചെയ്യുന്നവർക്കും മികച്ചതാണ്.', 'Tabbouleh salad is usually served with grilled meats, pita bread, or hummus. It\'s a healthy and refreshing dish, perfect for diet-conscious individuals.', 'टैबूलेह सलाद को आमतौर पर ग्रिल्ड मीट, पिटा ब्रेड या हम्मस के साथ परोसा जाता है। यह एक हेल्दी और फ्रेश सलाद है, जो डाइट फॉलो करने वालों के लिए भी बेहतरीन है', 'عادةً ما تُقدَّم سلطة التبولة مع اللحم المشوي، خبز البيتا، أو الحمص. وهي خيار صحي ومنعش، خاصة لمن', 1),
(121, 20, 0, 41, 260, 'jerjeer-salad.jpg', 'jerjeer-salad1.jpg', 'jerjeer-salad2.jpg', 'taboola-salad4.jpg', 'jerjeer-salad2.jpg', 0, 1, 'veg', 'അരുഗുല സലാഡ്', 'Jarjeer salad', 'अरुगुला सलाद', 'سلطة جرجير', 'ഈ സലാഡിന് ചിക്കൻ ഗ്രിൽ അല്ലെങ്കിൽ പനീർ ഗ്രിൽ ചെയ്യുന്നതിൽ കൂടി തുണിയാകും.', 'This salad pairs well with grilled chicken or grilled paneer.', 'यह सलाद ग्रिल्ड चिकन या ग्रिल्ड पनीर के साथ अच्छा लगता है।', 'تتناسب هذه السلطة بشكل جيد مع الدجاج المشوي أو الجبن المشوي.', 1),
(122, 18, 0, 41, 450, 'kunafe.jpg', 'kunafe1.jpg', 'kunafe2.jpg', 'kunafe1.jpg', 'kunafe2.jpg', 0, 0, 'veg', 'കുനാഫ', 'Kunafe', ' कुनाफा', 'Arabic name', 'കുനാഫ  ഒരു പ്രശസ്തമായ മധ്യപൗരസ്ത്യ മിഠായിയാണ്', 'Kunafa (or Knafeh) is a popular Middle Eastern dessert made with a base of shredded phyllo dough or semolina, soaked in sweet syrup, and often topped with pistachios or other nuts.', 'एक लोकप्रिय मध्य पूर्वी मिठाई है, जिसे कटा हुआ फिलो आटा (कताीफ) या सूजी से बनाया जाता है', 'Arabic description', 1),
(123, 18, 0, 41, 380, 'masoob2.jpg', 'masoob1.jpg', 'masoob.jpg', 'masoob2.jpg', 'masoob1.jpg', 0, 0, 'veg', 'മാസൂബ്', 'Masoob', ' Masoob Hindi', 'Massob Arabic', '', 'Masoob', ' Masoob Hindi', 'Massob Arabic', 1),
(124, 18, 0, 41, 480, 'fattah.jpg', 'fattah1.jpg', 'fattah1.jpg', 'fattah.jpg', 'fattah.jpg', 0, 0, 'veg', 'Fatah tamr malayalam', 'Fatah tamr', 'Fatah tamr hindi', 'Fatah tamr arabic', 'Fatah tamr malayalam', 'Fatah tamr', 'Fatah tamr hindi', 'Fatah tamr arabic', 1),
(125, 5, 0, 41, 390, 'Koobideh2.jpg', 'Koobideh1.jpg', 'Koobideh.jpg', 'Koobideh1.jpg', 'Koobideh2.jpg', 0, 0, 'non-veg', 'കൂബിദെ മട്ടൺ', 'Koobideh mutton', 'Koobideh mutton hindi', 'Koobideh mutton arabic', 'കൂബിദെ മട്ടൺ', 'Koobideh mutton', 'Koobideh mutton hindi', 'Koobideh mutton arabic', 1),
(126, 5, 0, 41, 330, 'Seekh-Kebab.jpg', 'Seekh-Kebab1.jpg', 'Seekh-Kebab2.jpg', 'Seekh-Kebab3.jpg', 'Seekh-Kebab2.jpg', 0, 0, 'non-veg', 'seekh kabab malayalam', 'Seekh kabab beef', 'seekh kabab hindi', 'seekh kabab arabic', 'seekh kabab malayalam', 'Seekh kabab beef', 'seekh kabab hindi', 'seekh kabab arabic', 1),
(127, 5, 0, 0, 0, 'chicken-seekh.jpeg', 'chicken-seekh1.jpeg.jpg', 'chicken-seekh2.jpeg', 'chicken-seekh1.jpeg.jpg', 'chicken-seekh.jpeg', 0, 0, 'non-veg', 'Chicken seekh malayalam', 'Chicken seekh', 'Chicken seekh hindi', 'Chicken seekh arabic', 'Chicken seekh malayalam', 'Chicken seekh', 'Chicken seekh hindi', 'Chicken seekh arabic', 0),
(128, 5, 0, 41, 850, 'beef-chops1.jpg', 'beef-chops.jpg', 'beef-chops2.jpg', 'beef-chops.jpg', 'beef-chops1.jpg', 0, 0, 'non-veg', 'Beef Chops malayalam', 'Beef Chops', 'Beef Chops Hindi', 'Beef Chops Arabic', 'Beef Chops malayalam', 'Beef Chops', 'Beef Chops Hindi', 'Beef Chops Arabic', 1),
(129, 15, 0, 0, 0, 'mehrab-chicken.png', 'kunafe.jpg', 'chicken-madfoon.png', 'Seekh-Kebab1.jpg', 'Seekh-Kebab.jpg', 1, 0, 'non-veg', 'Mehrab chicken malayalam', 'Mehrab chicken', 'Mehrab chicken hindi', 'Mehrab chicken arabic', 'Mehrab chicken malayalam', 'A subtly flavored rice complemented by perfectly slow grilled, succulent chicken. An ideal meal for those who appreciate mild, yet delightful tastes.', 'Mehrab chicken hindi', 'Mehrab chicken arabic', 0),
(132, 19, 11, 41, 170, 'Malawah.jpg', 'Malawah.jpg', 'Malawah.jpg', 'Malawah.jpg', 'Malawah.jpg', 0, 0, 'veg', 'malawah roti', 'malaweh roti', 'malawah roti', 'malawah roti', 'malawah roti', 'malawah roti', 'malawah roti', 'malawah roti', 1),
(133, 19, 11, 41, 320, 'Alfatha.png', NULL, NULL, NULL, NULL, 0, 0, 'veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 1),
(134, 15, 4, 41, 730, 'oqda.jpg', NULL, NULL, NULL, NULL, 0, 0, 'non-veg', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 1),
(135, 19, 11, 41, 150, 'white-rice.jpg', NULL, NULL, NULL, NULL, 0, 0, 'veg', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 1),
(136, 19, 11, 41, 150, 'mandi-rice.jpg', NULL, NULL, NULL, NULL, 0, 0, 'veg', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 1),
(137, 8, 8, 41, 0, 'beef-mandi.jpg', NULL, NULL, NULL, NULL, 1, 0, 'non-veg', 'Beef mandi', 'Beef mandi', 'Beef mandi', 'Beef mandi', 'Beef mandi', 'A flavourful meal complete with the most tender pieces of beef and the appetizing combination of potato, pepper and flavourful rice. A treat you don\'t want to miss.', 'Beef mandi', 'Beef mandi', 1),
(138, 20, 3, 41, 190, 'french fries.png', NULL, 'french fries.png', 'french fries.png', 'french fries.png', 0, 0, 'veg', 'ഫ്രെഞ്ച് ഫ്രൈസ്', 'French Fries', 'फ़्रेंच फ्राइज़', 'بطاطس مقلية', 'ഫ്രെഞ്ച് ഫ്രൈസ് എന്നത് സാധാരണയായി ആലൂ പൊടിയായി മുറിച്ച് എരിവ് ചേർത്ത് പൊരിച്ചെടുത്തൊരു ചിറകായ ഭക്ഷണമോ സൈഡ് ഡിഷുമാണ്.', 'French fries are a popular snack or side dish made from potatoes that are cut into thin strips and deep-fried until golden brown and crispy', 'फ़्रेंच फ्राइज़ एक लोकप्रिय स्नैक या साइड डिश है, जिसे आलू को पतली स्ट्रिप्स में काटकर सुनहरा भूरा और कुरकुरा होने तक डीप-फ्राई किया जाता है।', 'البطاطس المقلية هي وجبة خفيفة أو طبق جانبي شهير مصنوع من البطاطس التي تُقطع إلى شرائح رفيعة وتُقلى بعمق حتى تصبح ذهبية ومقرمشة.', 1),
(139, 15, 4, 41, 0, 'chickeen haneed.png', NULL, NULL, NULL, NULL, 1, 0, 'non-veg', 'ചിക്കൻ ഹനീദ്', 'Chicken Haneed', ' चिकन हनीद', ' حنيذ الدجاج', 'ചിക്കൻ ഹനീത് എന്നത് യെമനിയുടെ പരമ്പരാഗത ഹനീത്തിന്റെ (സാധാരണയായി ആട്ടിറച്ചി) ഒരു വകഭേദമാണ്. ഇത് മസാലകളിൽ മുക്കിയ ചിക്കൻ അതിസാവധാനം ഒവനിൽ ചുട്ട് തയ്യാറാക്കുന്നതാണ്, സാധാരണയായി അരിയും മിശ്രിത കറിയുമൊത്ത് പരിമാണിക്കും.', 'Chicken Haneeth is a slow-roasted chicken dish, a variation of the traditional Yemeni Haneeth (usually lamb), featuring marinated chicken baked in an oven, often served with rice and a mixed vegetable stew', 'चिकन हनीथ एक धीमी आंच पर पकाया जाने वाला चिकन व्यंजन है, जो पारंपरिक यमनी हनीथ (आमतौर पर मेमना) का एक प्रकार है। इसमें मसालों में मैरीनेट किया हुआ चिकन ओवन में बेक किया जाता है और आमतौर पर चावल और मिश्रित सब्जी स्टू के साथ परोसा जाता है।', 'الحنيذ بالدجاج هو طبق دجاج مشوي ببطء، وهو نسخة من الحنيذ اليمني التقليدي (الذي يكون عادةً من لحم الضأن)، حيث يتم تتبيل الدجاج وطهيه في الفرن، وغالبًا ما يُقدم مع الأرز واليخنة المشكلة.', 1),
(140, 9, 8, 0, 0, 'beef madfoon.png', NULL, NULL, NULL, NULL, 1, 0, 'non-veg', ' ബീഫ് മദ്ഫൂൺ', 'Beef Madfoon', 'बीफ मद्फून', ' بيف مدفون', 'ബീഫ് മദ്ഫൂൺ എന്നത് അറബിയിൽ \"മറവുചെയ്തത്\" എന്നർത്ഥം വരുന്ന ഒരു മിഡിൽ ഈസ്റ്റേൺ വിഭവമാണ്. ഇത് സാധാരണയായി ഭൂഗർഭ അടുപ്പിലോ ഒവനിലോ അതിസാവധാനം വേവിച്ച ശേഷം സുഗന്ധമുള്ള കുങ്കുമപ്പൂവ്യാന സഹിതം അരിയോടെ സമർപ്പിക്കുന്നു.', 'Tender beef, enveloped in foil and steamed to melt-in-your-mouth perfection, served alongside a savory mix of potatoes and pepper. Complemented by a generous portion of fragrant,flavorful rice to round out the meal.', 'बीफ मद्फून, जिसका अर्थ अरबी में \"दफन किया हुआ\" होता है, एक मध्य पूर्वी व्यंजन है जिसमें मांस (अक्सर बीफ) को ज़मीन के नीचे बने गड्ढे या ओवन में धीमी आंच पर पकाया जाता है और फिर सुगंधित केसर चावल के साथ परोसा जाता है।', 'بيف مدفون، وتعني \"مدفون\" في العربية، هو طبق من الشرق الأوسط حيث يُطهى اللحم، وغالبًا اللحم البقري، ببطء في حفرة تحت الأرض أو في الفرن، ثم يُقدَّم على طبقة من الأرز المنكّه بالزعفران.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 0),
(145, 23, 0, 41, 100, 'poratta and  beef.jpg', 'poratta and  beef.jpg', 'poratta and  beef.jpg', 'poratta and  beef.jpg', 'poratta and  beef.jpg', 0, 0, 'non-veg', 'പൊറോട്ടയും ബീഫും', 'Poratta  and Beef', 'Poratta  and Beef', 'Poratta  and Beef', 'പൊറോട്ടയും ബീഫും', 'Poratta  and Beef', 'Poratta  and Beef', 'Poratta  and Beef', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_addons`
--

DROP TABLE IF EXISTS `products_addons`;
CREATE TABLE IF NOT EXISTS `products_addons` (
  `addon_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `store_product_id` int NOT NULL,
  `addon_item_id` int NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `tax_id` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL DEFAULT '0',
  `is_active` int NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` int NOT NULL,
  `date_modified` datetime NOT NULL,
  `modified_by` int NOT NULL,
  PRIMARY KEY (`addon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_addons`
--

INSERT INTO `products_addons` (`addon_id`, `store_id`, `store_product_id`, `addon_item_id`, `price`, `tax_id`, `tax_amount`, `total_amount`, `is_active`, `date_created`, `created_by`, `date_modified`, `modified_by`) VALUES
(1, 41, 72, 49, 0, 5, 0, 0, 1, '2025-04-30 16:53:29', 0, '2025-04-30 16:53:29', 0),
(2, 41, 72, 48, 0, 5, 0, 0, 1, '2025-04-30 17:13:58', 0, '2025-04-30 17:13:58', 0),
(3, 64, 100, 110, 70, 5, 3.5, 73.5, 1, '2025-04-30 17:27:07', 0, '2025-04-30 17:27:07', 0),
(4, 41, 36, 48, 0, 5, 0, 0, 1, '2025-05-13 09:20:42', 0, '2025-05-13 09:20:42', 0),
(5, 41, 36, 49, 0, 5, 0, 0, 1, '2025-05-13 09:20:47', 0, '2025-05-13 09:20:47', 0),
(6, 41, 71, 48, 260, 5, 13, 273, 1, '2025-05-13 11:06:31', 0, '2025-05-13 11:06:31', 0),
(7, 41, 71, 49, 0, 5, 0, 0, 1, '2025-05-13 11:06:40', 0, '2025-05-13 11:06:40', 0),
(8, 41, 86, 48, 260, 5, 13, 273, 1, '2025-05-13 11:08:20', 0, '2025-05-13 11:08:20', 0),
(9, 41, 86, 49, 0, 5, 0, 0, 1, '2025-05-13 11:08:28', 0, '2025-05-13 11:08:28', 0),
(10, 41, 68, 48, 260, 5, 13, 273, 1, '2025-05-13 11:09:42', 0, '2025-05-13 11:09:42', 0),
(11, 41, 68, 49, 0, 5, 0, 0, 1, '2025-05-13 11:09:48', 0, '2025-05-13 11:09:48', 0),
(12, 41, 69, 48, 260, 5, 13, 273, 1, '2025-05-13 11:11:14', 0, '2025-05-13 11:11:14', 0),
(13, 41, 69, 49, 0, 5, 0, 0, 1, '2025-05-13 11:11:19', 0, '2025-05-13 11:11:19', 0),
(14, 41, 67, 48, 260, 5, 13, 273, 1, '2025-05-13 11:12:31', 0, '2025-05-13 11:12:31', 0),
(15, 41, 67, 49, 0, 5, 0, 0, 1, '2025-05-13 11:12:53', 0, '2025-05-13 11:12:53', 0),
(16, 41, 87, 48, 260, 5, 13, 273, 1, '2025-05-13 11:16:51', 0, '2025-05-13 11:16:51', 0),
(17, 41, 87, 49, 0, 5, 0, 0, 1, '2025-05-13 11:16:55', 0, '2025-05-13 11:16:55', 0),
(18, 41, 42, 48, 260, 5, 13, 273, 1, '2025-05-13 11:30:52', 0, '2025-05-13 11:30:52', 0),
(19, 41, 42, 49, 0, 5, 0, 0, 1, '2025-05-13 11:31:00', 0, '2025-05-13 11:31:00', 0),
(20, 69, 124, 125, 20, 5, 1, 21, 1, '2025-06-23 19:12:30', 0, '2025-06-23 19:12:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
CREATE TABLE IF NOT EXISTS `product_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `language` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `language`, `title`, `description`) VALUES
(7, 3, 'ma', 'പൊറോട്ട', 'മൈദാ മാവും മുട്ട, ഡാൽഡാ (അല്ലെങ്കിൽ എണ്ണ), യീസ്റ്റ് (പുളിപ്പിക്കുന്നതിന്) എന്നിവയും ചേർത്തുണ്ടാക്കുന്ന ആഹാരമാണ് കേരള പൊറോട്ട (പറോട്ട). മാവ് അല്പം പതഞ്ഞതിനുശേഷം കുഴച്ചു പരത്തി വായുവിൽ വീശി എണ്ണ പുരട്ടിയ ഒരു മേശയിൽ അടിച്ച് രണ്ടാക്കി കീറി ...\r\n'),
(3, 2, 'ma', 'ബിരിയാണി', 'അരി കൊണ്ടുണ്ടാക്കുന്ന ഒരു ഭക്ഷണവിഭവമാണ് ബിരിയാണി. അരി, സുഗന്ധവ്യഞ്ജനങ്ങൾ, ഇറച്ചി, പച്ചക്കറികൾ, തൈര് എന്നിവയുടെ'),
(4, 2, 'en', 'Biriyani', 'The term biryani comes from the Farsi phrase birinj biriyan, “fried rice.” Rice is fried'),
(5, 2, 'hi', 'बिरयानी', 'भारतीय उपमहाद्वीप का एक लोकप्रिय व्यंजन है. यह चावल, मसाले, मांस या सब्ज़ियों से मिलकर बना होता है. बिरयानी के बारे में कुछ खास बातेंः'),
(6, 2, 'ar', 'boha', 'The Arabic name for biryani is boha. Biryani is a South Asian dish of meat, fish, eggs, or veg'),
(8, 3, 'en', 'Porotta', 'A layered flatbread from southern India, made with ghee or oil and usually maida or white flour'),
(9, 3, 'hi', 'पराठा', 'परांठा भारतीय रोटी का विशिष्ट रूप है। प्रतिदिन के उत्तरी भारतीय उपमहाद्वीपीय कलेवे में सबसे लोकप्रिय पदार्थ यदि कोई है तो वह परांठा ही ..'),
(10, 3, 'ar', 'باراثا', '-أنظروا إلى هذا ، فطائر بالبطاطا معجون الباذنجان ، حلوى'),
(11, 4, 'ma', NULL, NULL),
(12, 4, 'en', NULL, NULL),
(13, 4, 'hi', NULL, NULL),
(14, 4, 'ar', NULL, NULL),
(15, 5, 'ma', NULL, NULL),
(16, 5, 'en', NULL, NULL),
(17, 5, 'hi', NULL, NULL),
(18, 5, 'ar', NULL, NULL),
(19, 6, 'ma', NULL, NULL),
(20, 6, 'en', NULL, NULL),
(21, 6, 'hi', NULL, NULL),
(22, 6, 'ar', NULL, NULL),
(23, 7, 'ma', NULL, NULL),
(24, 7, 'en', NULL, NULL),
(25, 7, 'hi', NULL, NULL),
(26, 7, 'ar', NULL, NULL),
(27, 8, 'ma', NULL, NULL),
(28, 8, 'en', NULL, NULL),
(29, 8, 'hi', NULL, NULL),
(30, 8, 'ar', NULL, NULL),
(31, 9, 'ma', NULL, NULL),
(32, 9, 'en', NULL, NULL),
(33, 9, 'hi', NULL, NULL),
(34, 9, 'ar', NULL, NULL),
(35, 10, 'ma', NULL, NULL),
(36, 10, 'en', NULL, NULL),
(37, 10, 'hi', NULL, NULL),
(38, 10, 'ar', NULL, NULL),
(39, 11, 'ma', NULL, NULL),
(40, 11, 'en', NULL, NULL),
(41, 11, 'hi', NULL, NULL),
(42, 11, 'ar', NULL, NULL),
(43, 12, 'ma', NULL, NULL),
(44, 12, 'en', NULL, NULL),
(45, 12, 'hi', NULL, NULL),
(46, 12, 'ar', NULL, NULL),
(47, 13, 'ma', NULL, NULL),
(48, 13, 'en', NULL, NULL),
(49, 13, 'hi', NULL, NULL),
(50, 13, 'ar', NULL, NULL),
(51, 14, 'ma', NULL, NULL),
(52, 14, 'en', NULL, NULL),
(53, 14, 'hi', NULL, NULL),
(54, 14, 'ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qrcode_item_assign`
--

DROP TABLE IF EXISTS `qrcode_item_assign`;
CREATE TABLE IF NOT EXISTS `qrcode_item_assign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `store_product_id` int NOT NULL,
  `qr_code_id` int NOT NULL,
  `remarks` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` int NOT NULL,
  `date_modify` datetime NOT NULL,
  `modified_by` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleDesc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleid`, `rolename`, `roleDesc`, `is_active`) VALUES
(1, 'Managing Director', 'Managing Director', 1),
(3, 'Operations Manager', '', 1),
(4, 'Operation Supervisor', 'Operation Supervisor', 0),
(5, 'Co ordinator', 'Co ordinator', 1),
(6, 'Technician', '', 1),
(28, 'Super admin', 'Super admin have all permissions', 1),
(30, 'Operations Manager', 'Operations Manager', 0),
(31, 'Driver', 'Driver', 1),
(34, 'Admin', 'Admin', 1),
(35, 'Technical Manager', 'Technical Manager', 1),
(36, 'Finance', 'Finance', 0),
(37, 'Vehicle Co Ordinator', 'Vehicle Co Ordinator', 1),
(39, 'RSO', 'RSO', 1),
(40, 'Store Management', 'Store Management', 1),
(41, 'Office Assistant', 'Office Assistant', 0),
(42, 'IT Department', 'IT Department', 1),
(50, 'test', 'test desc', 0),
(51, 'tester', 'test descer', 0),
(52, 'test', 'fgdgd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`) VALUES
(1, 1, 'Kerala'),
(2, 1, 'Tamilnadu'),
(3, 2, 'Victoria'),
(4, 2, 'Tasmania'),
(5, 3, 'Bali'),
(6, 3, 'Banten');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `consumable_id` int NOT NULL,
  `qty` int NOT NULL,
  `stock_add_date` date NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `consumable_id`, `qty`, `stock_add_date`, `is_active`) VALUES
(2, 1, 8, '2023-05-03', 1),
(3, 2, 10, '2023-05-03', 1),
(4, 1, 10, '2023-05-03', 1),
(5, 2, 10, '2023-05-11', 1),
(9, 9, 4, '2023-05-19', 0),
(10, 8, 2, '2023-05-18', 1),
(11, 3, 4, '2023-05-10', 0),
(12, 6, 2, '2023-05-19', 1),
(13, 6, 6, '2023-05-15', 1),
(14, 15, 7, '2023-05-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `store_disp_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'display name',
  `store_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_opening_time` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_closing_time` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_start_date` datetime NOT NULL,
  `contract_end_date` datetime NOT NULL,
  `next_followup_date` date NOT NULL,
  `no_of_tables` int NOT NULL COMMENT 'Actually this is package id',
  `is_table_tab` int NOT NULL,
  `is_pickup_tab` int NOT NULL,
  `is_delivery_tab` int NOT NULL,
  `is_room_tab` int NOT NULL,
  `store_trade_license` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_country` int NOT NULL,
  `gst_or_tax` int NOT NULL COMMENT 'GST OR TAX',
  `registration_no` int NOT NULL,
  `store_language` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Default language',
  `store_selected_languages` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Selected languages for display website',
  `is_pickup` int NOT NULL,
  `pickup_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_dining` int NOT NULL,
  `dining_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delivery` int NOT NULL,
  `delivery_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_logo_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_enable` int NOT NULL DEFAULT '0' COMMENT '1=Enable 0=Disable',
  `delivery_whatsapp_enable` int NOT NULL,
  `delivery_whatsapp_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_whatsapp_enable` int NOT NULL,
  `pickup_whatsapp_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_kot_print_enabled` int NOT NULL DEFAULT '0' COMMENT '0=Disabled & 1=Enabled',
  `is_active` int NOT NULL,
  `is_approve` int NOT NULL,
  `is_order_close` int NOT NULL DEFAULT '1' COMMENT 'if 1=closed 0=opened',
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_disp_name`, `store_name`, `store_desc`, `store_email`, `store_phone`, `store_address`, `store_opening_time`, `store_closing_time`, `contract_start_date`, `contract_end_date`, `next_followup_date`, `no_of_tables`, `is_table_tab`, `is_pickup_tab`, `is_delivery_tab`, `is_room_tab`, `store_trade_license`, `store_location`, `store_country`, `gst_or_tax`, `registration_no`, `store_language`, `store_selected_languages`, `is_pickup`, `pickup_number`, `is_dining`, `dining_number`, `is_delivery`, `delivery_number`, `store_logo_image`, `whatsapp_enable`, `delivery_whatsapp_enable`, `delivery_whatsapp_no`, `pickup_whatsapp_enable`, `pickup_whatsapp_no`, `is_kot_print_enabled`, `is_active`, `is_approve`, `is_order_close`) VALUES
(41, 'Mehrab Mandhi Restuarant', 'Mehrab Mandhi Restuarant', 'Arabian, Mughlai, Mandi, Seafood, Salad, Fast Food, Beverages\r\n', 'mehrabmandhi@gmail.com', '+919746833388', 'MKS Square Palarivattom Kochi Kerala India - 682025', '12:00', '00:00', '2025-08-14 00:00:00', '0000-00-00 00:00:00', '2025-11-07', 2, 0, 0, 0, 1, 'Kochi', 'Kochi', 27, 19, 123456789, 'en', 'ma,en,hi,ar', 0, '0', 0, '0', 0, '0', 'mehrabnew.png', 0, 1, '0', 1, '0', 1, 1, 1, 1),
(64, 'Brindhavan Restaurant', 'vishnu', 'kochi,kakkanad', 'vishnu@gmail.com', '7510949135', 'kochi,kakkanad', '09:00', '23:00', '2025-06-02 00:00:00', '0000-00-00 00:00:00', '2026-03-29', 3, 0, 0, 0, 0, 'yes', 'kochi', 27, 19, 12345678, 'en', 'ma,en,hi', 1, '917012713312', 1, '917510949135', 1, '918086373858', 'brindhavan-logo-1.png', 0, 0, '', 0, '', 0, 1, 0, 1),
(70, 'Arjun Store', 'Arjun Store', 'kottayam', 'arjun@gmail.com', '7510949135', 'kottayam', '10:00', '23:00', '2025-08-13 00:00:00', '0000-00-00 00:00:00', '2026-05-28', 3, 0, 0, 0, 0, 'yes', 'kottayam', 27, 19, 1245766788, 'en', 'ma,en', 0, '0', 0, '0', 0, '0', 'Screenshot_2025-06-20_093017.png', 0, 0, '', 0, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_recipe`
--

DROP TABLE IF EXISTS `store_recipe`;
CREATE TABLE IF NOT EXISTS `store_recipe` (
  `store_recipe_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `store_product_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`store_recipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_recipe`
--

INSERT INTO `store_recipe` (`store_recipe_id`, `store_id`, `store_product_id`, `recipe_id`, `is_active`) VALUES
(1, 28, 8, 2, 1),
(2, 28, 8, 1, 1),
(3, 29, 22, 2, 1),
(4, 29, 22, 1, 1),
(5, 29, 24, 2, 1),
(6, 29, 24, 1, 1),
(7, 28, 20, 2, 1),
(8, 28, 20, 1, 1),
(36, 41, 24, 1, 1),
(35, 41, 24, 2, 1),
(34, 41, 24, 4, 1),
(12, 41, 46, 4, 1),
(13, 46, 142, 5, 1),
(14, 46, 142, 4, 1),
(15, 46, 142, 2, 1),
(16, 46, 142, 1, 1),
(17, 46, 143, 2, 1),
(18, 46, 143, 1, 1),
(19, 46, 144, 4, 1),
(20, 46, 144, 1, 1),
(21, 2, 159, 5, 1),
(22, 2, 159, 4, 1),
(23, 41, 32, 4, 1),
(24, 41, 32, 2, 1),
(25, 41, 41, 2, 1),
(26, 41, 41, 1, 1),
(27, 41, 6, 2, 1),
(28, 41, 6, 1, 1),
(29, 41, 3, 4, 1),
(30, 41, 3, 2, 1),
(31, 41, 3, 1, 1),
(32, 41, 23, 4, 1),
(33, 41, 23, 2, 1),
(37, 41, 58, 4, 1),
(38, 41, 58, 2, 1),
(39, 41, 58, 1, 1),
(40, 41, 59, 4, 1),
(41, 41, 59, 2, 1),
(42, 41, 59, 1, 1),
(43, 41, 57, 2, 1),
(44, 41, 57, 1, 1),
(45, 41, 54, 4, 1),
(46, 41, 54, 2, 1),
(47, 41, 54, 1, 1),
(48, 41, 55, 4, 1),
(49, 41, 55, 2, 1),
(50, 41, 55, 1, 1),
(51, 41, 68, 4, 1),
(52, 41, 68, 2, 1),
(53, 41, 68, 1, 1),
(54, 41, 75, 2, 1),
(55, 41, 72, 5, 1),
(56, 41, 72, 4, 1),
(57, 41, 72, 2, 1),
(58, 41, 72, 1, 1),
(59, 64, 100, 2, 1),
(60, 64, 100, 1, 1),
(61, 41, 36, 4, 1),
(62, 41, 36, 2, 1),
(63, 41, 36, 1, 1),
(64, 41, 71, 4, 1),
(65, 41, 71, 2, 1),
(66, 41, 71, 1, 1),
(67, 41, 86, 4, 1),
(68, 41, 86, 2, 1),
(69, 41, 86, 1, 1),
(70, 41, 69, 17, 1),
(71, 41, 69, 5, 1),
(72, 41, 69, 4, 1),
(73, 41, 67, 4, 1),
(74, 41, 67, 2, 1),
(75, 41, 67, 1, 1),
(76, 41, 87, 4, 1),
(77, 41, 87, 2, 1),
(78, 41, 87, 1, 1),
(79, 41, 42, 5, 1),
(80, 41, 42, 4, 1),
(81, 41, 42, 2, 1),
(82, 41, 71, 5, 1),
(83, 69, 124, 5, 1),
(84, 69, 124, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_stock`
--

DROP TABLE IF EXISTS `store_stock`;
CREATE TABLE IF NOT EXISTS `store_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `tr_date` date NOT NULL,
  `order_id` int NOT NULL,
  `ttype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `is_combo` int NOT NULL DEFAULT '0',
  `pu_qty` int NOT NULL,
  `sl_qty` int NOT NULL,
  `minqty` int NOT NULL DEFAULT '0',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_stock`
--

INSERT INTO `store_stock` (`id`, `store_id`, `tr_date`, `order_id`, `ttype`, `product_id`, `is_combo`, `pu_qty`, `sl_qty`, `minqty`, `remarks`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(9, 41, '2025-04-28', 1339280425, 'SL', 1, 0, 0, 1, 0, '', 131, '2025-04-28 14:57:42', 131, '2025-04-28 14:57:42'),
(8, 41, '2025-04-28', 0, 'SK', 4, 0, 10, 0, 0, '', 131, '2025-04-28 14:55:52', 131, '2025-04-28 14:55:52'),
(7, 41, '2025-04-28', 0, 'SK', 3, 0, 10, 0, 0, '', 131, '2025-04-28 14:55:48', 131, '2025-04-28 14:55:48'),
(6, 41, '2025-04-28', 0, 'SK', 1, 0, 10, 0, 0, '', 131, '2025-04-28 14:55:44', 131, '2025-04-28 14:55:44'),
(10, 41, '2025-04-28', 1339280425, 'SL', 3, 0, 0, 1, 0, '', 131, '2025-04-28 14:57:42', 131, '2025-04-28 14:57:42'),
(11, 64, '2025-04-28', 0, 'SK', 7, 0, 10, 0, 0, '', 176, '2025-04-28 15:21:27', 176, '2025-04-28 15:21:27'),
(12, 64, '2025-04-28', 0, 'SK', 5, 0, 10, 0, 0, '', 176, '2025-04-28 15:22:20', 176, '2025-04-28 15:22:20'),
(13, 64, '2025-04-28', 0, 'SK', 6, 0, 10, 0, 0, '', 176, '2025-04-28 15:24:08', 176, '2025-04-28 15:24:08'),
(14, 64, '2025-04-28', 1340280425, 'SL', 7, 0, 0, 1, 0, '', 176, '2025-04-28 15:30:23', 176, '2025-04-28 15:30:23'),
(15, 64, '2025-04-28', 1340280425, 'SL', 5, 0, 0, 1, 0, '', 176, '2025-04-28 15:30:23', 176, '2025-04-28 15:30:23'),
(16, 64, '2025-04-28', 0, 'SK', 1, 0, 10, 0, 0, '', 176, '2025-04-28 17:42:19', 176, '2025-04-28 17:42:19'),
(17, 64, '2025-04-29', 0, 'SK', 9, 0, 10, 0, 2, '', 176, '2025-04-29 15:10:13', 176, '2025-04-29 15:10:13'),
(18, 64, '2025-04-29', 0, 'SK', 10, 0, 10, 0, 0, '', 176, '2025-04-29 15:10:32', 176, '2025-04-29 15:10:32'),
(19, 64, '2025-04-29', 0, 'SK', 13, 0, 10, 0, 0, '', 176, '2025-04-29 15:56:09', 176, '2025-04-29 15:56:09'),
(20, 64, '2025-04-29', 0, 'SK', 12, 0, 10, 0, 2, '', 176, '2025-04-29 15:57:23', 176, '2025-04-29 15:57:23'),
(21, 64, '2025-04-29', 0, 'SK', 15, 0, 10, 0, 0, '', 176, '2025-04-29 16:01:29', 176, '2025-04-29 16:01:29'),
(22, 64, '2025-04-29', 1345290425, 'SL', 13, 1, 0, 1, 0, '', 1, '2025-04-29 17:01:38', 1, '2025-04-29 17:01:38'),
(23, 41, '2025-04-30', 0, 'SK', 74, 0, 20, 0, 0, '', 131, '2025-04-30 12:27:14', 131, '2025-04-30 12:27:14'),
(24, 41, '2025-04-30', 0, 'SK', 76, 0, 20, 0, 0, '', 131, '2025-04-30 12:27:48', 131, '2025-04-30 12:27:48'),
(25, 41, '2025-04-30', 0, 'SK', 82, 0, 20, 0, 0, '', 131, '2025-04-30 12:28:23', 131, '2025-04-30 12:28:23'),
(26, 64, '2025-04-30', 0, 'SK', 92, 0, 10, 0, 0, '', 176, '2025-04-30 12:34:34', 176, '2025-04-30 12:34:34'),
(27, 64, '2025-04-30', 0, 'SK', 91, 0, 10, 0, 0, '', 176, '2025-04-30 12:34:53', 176, '2025-04-30 12:34:53'),
(28, 64, '2025-04-30', 0, 'SK', 90, 0, 10, 0, 0, '', 176, '2025-04-30 12:35:15', 176, '2025-04-30 12:35:15'),
(29, 64, '2025-04-30', 0, 'SK', 104, 0, 10, 0, 0, '', 176, '2025-04-30 13:01:57', 176, '2025-04-30 13:01:57'),
(30, 64, '2025-04-30', 0, 'SK', 105, 0, 10, 0, 0, '', 176, '2025-04-30 14:05:05', 176, '2025-04-30 14:05:05'),
(31, 64, '2025-04-30', 1348300425, 'SL', 105, 0, 0, 1, 0, '', 176, '2025-04-30 14:40:55', 176, '2025-04-30 14:40:55'),
(32, 64, '2025-04-30', 1348300425, 'SL', 104, 0, 0, 1, 0, '', 176, '2025-04-30 14:40:55', 176, '2025-04-30 14:40:55'),
(33, 64, '2025-04-30', 0, 'SK', 100, 0, 10, 0, 2, '', 176, '2025-04-30 15:26:26', 176, '2025-04-30 15:26:26'),
(34, 64, '2025-04-30', 0, 'SK', 103, 0, 20, 0, 0, '', 176, '2025-04-30 14:53:55', 176, '2025-04-30 14:53:55'),
(35, 64, '2025-04-30', 0, 'SK', 110, 0, 10, 0, 0, '', 176, '2025-04-30 15:29:57', 176, '2025-04-30 15:29:57'),
(36, 64, '2025-04-30', 0, 'SK', 109, 0, 10, 0, 0, '', 176, '2025-04-30 15:30:32', 176, '2025-04-30 15:30:32'),
(37, 41, '2025-04-30', 0, 'SK', 72, 0, 10, 0, 0, '', 131, '2025-04-30 15:35:14', 131, '2025-04-30 15:35:14'),
(38, 64, '2025-04-30', 1350300425, 'SL', 105, 0, 0, 1, 0, '', 176, '2025-04-30 17:31:38', 176, '2025-04-30 17:31:38'),
(39, 64, '2025-04-30', 1350300425, 'SL', 104, 0, 0, 2, 0, '', 176, '2025-04-30 17:31:38', 176, '2025-04-30 17:31:38'),
(40, 64, '2025-04-30', 1350300425, 'SL', 100, 0, 0, 1, 0, '', 176, '2025-04-30 17:31:38', 176, '2025-04-30 17:31:38'),
(41, 64, '2025-04-30', 1350300425, 'SL', 110, 0, 0, 1, 0, '', 176, '2025-04-30 17:31:38', 176, '2025-04-30 17:31:38'),
(42, 41, '2025-05-02', 0, 'SK', 50, 0, 20, 0, 0, '', 131, '2025-05-02 11:47:46', 131, '2025-05-02 11:47:46'),
(43, 41, '2025-05-02', 0, 'SK', 113, 0, 10, 0, 0, '', 131, '2025-05-02 11:54:30', 131, '2025-05-02 11:54:30'),
(44, 41, '2025-05-13', 0, 'SK', 36, 0, 10, 0, 0, '', 131, '2025-05-13 09:21:08', 131, '2025-05-13 09:21:08'),
(45, 41, '2025-05-13', 0, 'SK', 71, 0, 20, 0, 0, '', 131, '2025-05-13 10:02:00', 131, '2025-05-13 10:02:00'),
(46, 41, '2025-05-13', 0, 'SK', 86, 0, 20, 0, 0, '', 131, '2025-05-13 10:03:52', 131, '2025-05-13 10:03:52'),
(47, 41, '2025-05-13', 0, 'SK', 68, 0, 20, 0, 0, '', 131, '2025-05-13 10:24:30', 131, '2025-05-13 10:24:30'),
(48, 41, '2025-05-13', 0, 'SK', 69, 0, 20, 0, 0, '', 131, '2025-05-13 10:27:26', 131, '2025-05-13 10:27:26'),
(49, 41, '2025-05-13', 0, 'SK', 67, 0, 20, 0, 0, '', 131, '2025-05-13 10:28:22', 131, '2025-05-13 10:28:22'),
(50, 41, '2025-05-13', 0, 'SK', 70, 0, 20, 0, 0, '', 131, '2025-05-13 10:28:35', 131, '2025-05-13 10:28:35'),
(51, 41, '2025-05-13', 0, 'SK', 120, 0, 20, 0, 0, '', 131, '2025-05-13 10:29:21', 131, '2025-05-13 10:29:21'),
(52, 41, '2025-05-13', 0, 'SK', 117, 0, 20, 0, 0, '', 131, '2025-05-13 10:30:00', 131, '2025-05-13 10:30:00'),
(53, 41, '2025-05-13', 0, 'SK', 87, 0, 20, 0, 2, '', 131, '2025-05-13 10:31:33', 131, '2025-05-13 10:31:33'),
(54, 41, '2025-05-13', 0, 'SK', 39, 0, 20, 0, 0, '', 131, '2025-05-13 10:31:42', 131, '2025-05-13 10:31:42'),
(55, 41, '2025-05-13', 0, 'SK', 42, 0, 20, 0, 2, '', 131, '2025-05-13 10:32:52', 131, '2025-05-13 10:32:52'),
(56, 41, '2025-05-13', 0, 'SK', 45, 0, 20, 0, 0, '', 131, '2025-05-13 10:33:41', 131, '2025-05-13 10:33:41'),
(57, 41, '2025-05-13', 0, 'SK', 46, 0, 20, 0, 0, '', 131, '2025-05-13 10:34:10', 131, '2025-05-13 10:34:10'),
(58, 41, '2025-05-13', 0, 'SK', 47, 0, 20, 0, 0, '', 131, '2025-05-13 10:34:27', 131, '2025-05-13 10:34:27'),
(59, 41, '2025-05-13', 0, 'SK', 85, 0, 20, 0, 2, '', 131, '2025-05-13 10:35:13', 131, '2025-05-13 10:35:13'),
(60, 41, '2025-05-13', 0, 'SK', 37, 0, 20, 0, 0, '', 131, '2025-05-13 10:36:39', 131, '2025-05-13 10:36:39'),
(61, 41, '2025-05-13', 0, 'SK', 38, 0, 20, 0, 0, '', 131, '2025-05-13 10:36:47', 131, '2025-05-13 10:36:47'),
(62, 41, '2025-05-13', 0, 'SK', 40, 0, 20, 0, 0, '', 131, '2025-05-13 10:36:53', 131, '2025-05-13 10:36:53'),
(63, 41, '2025-05-13', 0, 'SK', 35, 0, 20, 0, 0, '', 131, '2025-05-13 10:37:58', 131, '2025-05-13 10:37:58'),
(64, 41, '2025-05-13', 0, 'SK', 48, 0, 20, 0, 0, '', 131, '2025-05-13 10:38:05', 131, '2025-05-13 10:38:05'),
(65, 41, '2025-05-13', 0, 'SK', 49, 0, 20, 0, 0, '', 131, '2025-05-13 10:38:41', 131, '2025-05-13 10:38:41'),
(66, 41, '2025-05-13', 1353130525, 'SL', 72, 0, 0, 4, 0, '', 131, '2025-05-13 11:48:25', 131, '2025-05-13 11:48:25'),
(67, 41, '2025-05-13', 1353130525, 'SL', 72, 0, 0, 2, 0, '', 131, '2025-05-13 11:48:25', 131, '2025-05-13 11:48:25'),
(68, 41, '2025-05-13', 1353130525, 'SL', 49, 0, 0, 1, 0, '', 131, '2025-05-13 11:48:25', 131, '2025-05-13 11:48:25'),
(69, 41, '2025-05-13', 1353130525, 'SL', 69, 0, 0, 4, 0, '', 131, '2025-05-13 11:48:25', 131, '2025-05-13 11:48:25'),
(70, 41, '2025-05-13', 1353130525, 'SL', 69, 0, 0, 2, 0, '', 131, '2025-05-13 11:48:25', 131, '2025-05-13 11:48:25'),
(71, 41, '2025-05-13', 1353130525, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-05-13 11:48:25', 131, '2025-05-13 11:48:25'),
(72, 41, '2025-05-13', 1354130525, 'SL', 72, 0, 0, 2, 0, '', 156, '2025-05-13 12:03:22', 156, '2025-05-13 12:03:22'),
(73, 41, '2025-05-13', 1354130525, 'SL', 48, 0, 0, 1, 0, '', 156, '2025-05-13 12:03:22', 156, '2025-05-13 12:03:22'),
(74, 41, '2025-05-13', 1354130525, 'SL', 117, 0, 0, 1, 0, '', 156, '2025-05-13 12:03:22', 156, '2025-05-13 12:03:22'),
(75, 41, '2025-05-13', 1356130525, 'SL', 42, 0, 0, 4, 0, '', 131, '2025-05-13 12:21:32', 131, '2025-05-13 12:21:32'),
(76, 41, '2025-05-13', 1356130525, 'SL', 35, 0, 0, 1, 0, '', 131, '2025-05-13 12:21:32', 131, '2025-05-13 12:21:32'),
(77, 41, '2025-05-13', 1356130525, 'SL', 40, 0, 0, 1, 0, '', 131, '2025-05-13 12:21:32', 131, '2025-05-13 12:21:32'),
(78, 41, '2025-05-13', 1356130525, 'SL', 72, 0, 0, 2, 0, '', 131, '2025-05-13 12:21:32', 131, '2025-05-13 12:21:32'),
(79, 41, '2025-05-13', 1356130525, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-05-13 12:21:32', 131, '2025-05-13 12:21:32'),
(80, 41, '2025-05-13', 1356130525, 'SL', 38, 0, 0, 1, 0, '', 131, '2025-05-13 12:21:32', 131, '2025-05-13 12:21:32'),
(81, 41, '2025-05-13', 0, 'SK', 72, 0, 40, 0, 2, '', 131, '2025-05-13 18:48:21', 131, '2025-05-13 18:48:21'),
(82, 41, '2025-05-13', 1365130525, 'SL', 117, 0, 0, 1, 0, '', 131, '2025-05-13 14:12:43', 131, '2025-05-13 14:12:43'),
(83, 41, '2025-05-13', 1365130525, 'SL', 120, 0, 0, 1, 0, '', 131, '2025-05-13 14:12:43', 131, '2025-05-13 14:12:43'),
(84, 41, '2025-05-13', 1365130525, 'SL', 49, 0, 0, 1, 0, '', 131, '2025-05-13 14:12:43', 131, '2025-05-13 14:12:43'),
(85, 41, '2025-05-13', 1365130525, 'SL', 72, 0, 0, 4, 0, '', 131, '2025-05-13 14:12:43', 131, '2025-05-13 14:12:43'),
(86, 41, '2025-05-13', 1367130525, 'SL', 72, 0, 0, 4, 0, '', 131, '2025-05-13 14:22:43', 131, '2025-05-13 14:22:43'),
(87, 41, '2025-05-13', 1367130525, 'SL', 72, 0, 0, 1, 0, '', 131, '2025-05-13 14:22:43', 131, '2025-05-13 14:22:43'),
(88, 41, '2025-05-13', 1367130525, 'SL', 49, 0, 0, 1, 0, '', 131, '2025-05-13 14:22:43', 131, '2025-05-13 14:22:43'),
(89, 41, '2025-05-13', 1367130525, 'SL', 120, 0, 0, 1, 0, '', 131, '2025-05-13 14:22:43', 131, '2025-05-13 14:22:43'),
(90, 41, '2025-05-13', 1367130525, 'SL', 117, 0, 0, 1, 0, '', 131, '2025-05-13 14:22:43', 131, '2025-05-13 14:22:43'),
(91, 41, '2025-05-13', 1368130525, 'SL', 72, 0, 0, 4, 0, '', 131, '2025-05-13 14:45:57', 131, '2025-05-13 14:45:57'),
(92, 41, '2025-05-13', 1368130525, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-05-13 14:45:57', 131, '2025-05-13 14:45:57'),
(93, 41, '2025-05-13', 1369130525, 'SL', 72, 0, 0, 4, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(94, 41, '2025-05-13', 1369130525, 'SL', 72, 0, 0, 2, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(95, 41, '2025-05-13', 1369130525, 'SL', 72, 0, 0, 1, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(96, 41, '2025-05-13', 1369130525, 'SL', 49, 0, 0, 1, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(97, 41, '2025-05-13', 1369130525, 'SL', 39, 0, 0, 1, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(98, 41, '2025-05-13', 1369130525, 'SL', 42, 0, 0, 1, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(99, 41, '2025-05-13', 1369130525, 'SL', 46, 0, 0, 1, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(100, 41, '2025-05-13', 1369130525, 'SL', 85, 0, 0, 1, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(101, 41, '2025-05-13', 1369130525, 'SL', 37, 0, 0, 1, 0, '', 131, '2025-05-13 15:52:47', 131, '2025-05-13 15:52:47'),
(102, 41, '2025-05-13', 1373130525, 'SL', 72, 0, 0, 4, 0, '', 156, '2025-05-13 19:15:36', 156, '2025-05-13 19:15:36'),
(103, 41, '2025-05-13', 1373130525, 'SL', 72, 0, 0, 1, 0, '', 156, '2025-05-13 19:15:36', 156, '2025-05-13 19:15:36'),
(104, 41, '2025-05-13', 1373130525, 'SL', 48, 0, 0, 1, 0, '', 156, '2025-05-13 19:15:36', 156, '2025-05-13 19:15:36'),
(105, 41, '2025-05-13', 1373130525, 'SL', 67, 0, 0, 1, 0, '', 156, '2025-05-13 19:15:36', 156, '2025-05-13 19:15:36'),
(106, 41, '2025-05-13', 1373130525, 'SL', 46, 0, 0, 1, 0, '', 156, '2025-05-13 19:15:36', 156, '2025-05-13 19:15:36'),
(107, 41, '2025-05-13', 1373130525, 'SL', 47, 0, 0, 1, 0, '', 156, '2025-05-13 19:15:36', 156, '2025-05-13 19:15:36'),
(108, 41, '2025-05-13', 1374130525, 'SL', 72, 0, 0, 2, 0, '', 183, '2025-05-13 19:27:47', 183, '2025-05-13 19:27:47'),
(109, 41, '2025-05-13', 1374130525, 'SL', 72, 0, 0, 1, 0, '', 183, '2025-05-13 19:27:47', 183, '2025-05-13 19:27:47'),
(110, 41, '2025-05-13', 1374130525, 'SL', 48, 0, 0, 1, 0, '', 183, '2025-05-13 19:27:47', 183, '2025-05-13 19:27:47'),
(111, 41, '2025-05-13', 1374130525, 'SL', 47, 0, 0, 1, 0, '', 183, '2025-05-13 19:27:47', 183, '2025-05-13 19:27:47'),
(112, 41, '2025-05-13', 1374130525, 'SL', 85, 0, 0, 1, 0, '', 183, '2025-05-13 19:27:47', 183, '2025-05-13 19:27:47'),
(113, 41, '2025-05-13', 1375130525, 'SL', 36, 0, 0, 2, 0, '', 131, '2025-05-13 19:41:55', 131, '2025-05-13 19:41:55'),
(114, 41, '2025-05-13', 1375130525, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-05-13 19:41:55', 131, '2025-05-13 19:41:55'),
(115, 41, '2025-05-13', 1375130525, 'SL', 39, 0, 0, 1, 0, '', 131, '2025-05-13 19:41:55', 131, '2025-05-13 19:41:55'),
(116, 41, '2025-05-13', 1375130525, 'SL', 45, 0, 0, 1, 0, '', 131, '2025-05-13 19:41:55', 131, '2025-05-13 19:41:55'),
(117, 41, '2025-05-14', 1376140525, 'SL', 120, 0, 0, 3, 0, '', 183, '2025-05-14 17:17:08', 183, '2025-05-14 17:17:08'),
(118, 41, '2025-05-14', 1376140525, 'SL', 71, 0, 0, 1, 0, '', 183, '2025-05-14 17:17:08', 183, '2025-05-14 17:17:08'),
(119, 41, '2025-05-14', 1376140525, 'SL', 48, 0, 0, 1, 0, '', 183, '2025-05-14 17:17:08', 183, '2025-05-14 17:17:08'),
(120, 41, '2025-05-14', 1377140525, 'SL', 120, 0, 0, 1, 0, '', 183, '2025-05-14 17:26:58', 183, '2025-05-14 17:26:58'),
(121, 41, '2025-05-16', 0, 'SL', 70, 0, 0, 20, 0, '', 131, '2025-05-16 18:20:57', 131, '2025-05-16 18:20:57'),
(122, 41, '2025-05-22', 0, 'SK', 43, 0, 10, 0, 0, '', 131, '2025-05-22 17:59:14', 131, '2025-05-22 17:59:14'),
(123, 41, '2025-05-22', 0, 'SK', 44, 0, 10, 0, 0, '', 131, '2025-05-22 17:59:25', 131, '2025-05-22 17:59:25'),
(124, 41, '2025-05-22', 0, 'SK', 65, 0, 10, 0, 0, '', 131, '2025-05-22 18:06:34', 131, '2025-05-22 18:06:34'),
(125, 41, '2025-05-22', 0, 'SK', 115, 0, 10, 0, 0, '', 131, '2025-05-22 18:08:13', 131, '2025-05-22 18:08:13'),
(126, 41, '2025-05-22', 0, 'SK', 114, 0, 10, 0, 0, '', 131, '2025-05-22 18:08:43', 131, '2025-05-22 18:08:43'),
(127, 41, '2025-05-26', 0, 'SK', 36, 0, 26, 0, 0, '', 131, '2025-05-26 12:37:02', 131, '2025-05-26 12:37:02'),
(128, 41, '2025-05-30', 1386300525, 'SL', 36, 0, 0, 34, 0, '', 131, '2025-05-30 15:48:16', 131, '2025-05-30 15:48:16'),
(129, 41, '2025-05-30', 1386300525, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-05-30 15:48:16', 131, '2025-05-30 15:48:16'),
(130, 41, '2025-05-30', 1386300525, 'SL', 72, 0, 0, 12, 0, '', 131, '2025-05-30 15:48:16', 131, '2025-05-30 15:48:16'),
(131, 41, '2025-05-30', 0, 'SK', 72, 0, 20, 0, 0, '', 131, '2025-05-30 15:58:44', 131, '2025-05-30 15:58:44'),
(132, 41, '2025-05-30', 0, 'SK', 36, 0, 20, 0, 0, '', 131, '2025-05-30 15:58:50', 131, '2025-05-30 15:58:50'),
(133, 41, '2025-06-18', 1389180625, 'SL', 44, 0, 0, 1, 0, '', 131, '2025-06-18 10:42:37', 131, '2025-06-18 10:42:37'),
(134, 41, '2025-06-23', 1390180625, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:14', 131, '2025-06-23 17:48:14'),
(135, 41, '2025-06-23', 1390180625, 'SL', 67, 0, 0, 2, 0, '', 131, '2025-06-23 17:48:14', 131, '2025-06-23 17:48:14'),
(136, 41, '2025-06-23', 1390180625, 'SL', 71, 0, 0, 4, 0, '', 131, '2025-06-23 17:48:14', 131, '2025-06-23 17:48:14'),
(137, 41, '2025-06-23', 1393180625, 'SL', 39, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:41', 131, '2025-06-23 17:48:41'),
(138, 41, '2025-06-23', 1393180625, 'SL', 42, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:41', 131, '2025-06-23 17:48:41'),
(139, 41, '2025-06-23', 1393180625, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:41', 131, '2025-06-23 17:48:41'),
(140, 41, '2025-06-23', 1393180625, 'SL', 69, 0, 0, 2, 0, '', 131, '2025-06-23 17:48:41', 131, '2025-06-23 17:48:41'),
(141, 41, '2025-06-23', 1393180625, 'SL', 49, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:41', 131, '2025-06-23 17:48:41'),
(142, 41, '2025-06-23', 1392180625, 'SL', 67, 0, 0, 2, 0, '', 131, '2025-06-23 17:48:48', 131, '2025-06-23 17:48:48'),
(143, 41, '2025-06-23', 1394180625, 'SL', 47, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:53', 131, '2025-06-23 17:48:53'),
(144, 41, '2025-06-23', 1394180625, 'SL', 71, 0, 0, 4, 0, '', 131, '2025-06-23 17:48:53', 131, '2025-06-23 17:48:53'),
(145, 41, '2025-06-23', 1394180625, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:53', 131, '2025-06-23 17:48:53'),
(146, 41, '2025-06-23', 1394180625, 'SL', 49, 0, 0, 1, 0, '', 131, '2025-06-23 17:48:53', 131, '2025-06-23 17:48:53'),
(147, 41, '2025-06-23', 1394180625, 'SL', 37, 0, 0, 2, 0, '', 131, '2025-06-23 17:48:53', 131, '2025-06-23 17:48:53'),
(148, 41, '2025-06-23', 1391180625, 'SL', 44, 0, 0, 1, 0, '', 131, '2025-06-23 17:49:00', 131, '2025-06-23 17:49:00'),
(149, 41, '2025-06-23', 1389180625, 'SL', 44, 0, 0, 1, 0, '', 131, '2025-06-23 18:15:03', 131, '2025-06-23 18:15:03'),
(150, 41, '2025-06-23', 1397230625, 'SL', 71, 0, 0, 4, 0, '', 131, '2025-06-23 18:19:16', 131, '2025-06-23 18:19:16'),
(151, 41, '2025-06-23', 1397230625, 'SL', 65, 0, 0, 1, 0, '', 131, '2025-06-23 18:19:16', 131, '2025-06-23 18:19:16'),
(152, 41, '2025-06-23', 1397230625, 'SL', 47, 0, 0, 1, 0, '', 131, '2025-06-23 18:19:16', 131, '2025-06-23 18:19:16'),
(153, 41, '2025-06-23', 1397230625, 'SL', 37, 0, 0, 1, 0, '', 131, '2025-06-23 18:19:16', 131, '2025-06-23 18:19:16'),
(154, 41, '2025-06-23', 1396230625, 'SL', 67, 0, 0, 2, 0, '', 131, '2025-06-23 18:27:53', 131, '2025-06-23 18:27:53'),
(155, 41, '2025-06-23', 1398230625, 'SL', 36, 0, 0, 2, 0, '', 131, '2025-06-23 19:00:40', 131, '2025-06-23 19:00:40'),
(156, 41, '2025-06-23', 1398230625, 'SL', 36, 0, 0, 1, 0, '', 131, '2025-06-23 19:00:40', 131, '2025-06-23 19:00:40'),
(157, 41, '2025-06-23', 1398230625, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-06-23 19:00:40', 131, '2025-06-23 19:00:40'),
(158, 41, '2025-06-23', 1398230625, 'SL', 44, 0, 0, 1, 0, '', 131, '2025-06-23 19:00:40', 131, '2025-06-23 19:00:40'),
(159, 41, '2025-06-23', 1398230625, 'SL', 65, 0, 0, 1, 0, '', 131, '2025-06-23 19:00:40', 131, '2025-06-23 19:00:40'),
(160, 69, '2025-06-23', 0, 'SK', 124, 0, 20, 0, 2, '', 190, '2025-06-23 19:10:06', 190, '2025-06-23 19:10:06'),
(161, 69, '2025-06-23', 0, 'SK', 121, 0, 20, 0, 0, '', 190, '2025-06-23 19:08:29', 190, '2025-06-23 19:08:29'),
(162, 69, '2025-06-23', 0, 'SK', 122, 0, 20, 0, 0, '', 190, '2025-06-23 19:08:38', 190, '2025-06-23 19:08:38'),
(163, 69, '2025-06-23', 1399230625, 'SL', 124, 0, 0, 1, 0, '', 190, '2025-06-23 19:15:14', 190, '2025-06-23 19:15:14'),
(164, 41, '2025-06-24', 1400240625, 'SL', 115, 0, 0, 1, 0, '', 131, '2025-06-24 19:26:09', 131, '2025-06-24 19:26:09'),
(165, 41, '2025-06-24', 1400240625, 'SL', 114, 0, 0, 1, 0, '', 131, '2025-06-24 19:26:09', 131, '2025-06-24 19:26:09'),
(166, 41, '2025-06-24', 1400240625, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-06-24 19:26:09', 131, '2025-06-24 19:26:09'),
(167, 41, '2025-06-27', 0, 'SK', 127, 0, 10, 0, 0, '', 131, '2025-06-27 11:35:29', 131, '2025-06-27 11:35:29'),
(168, 41, '2025-06-30', 1407300625, 'SL', 36, 0, 0, 2, 0, '', 131, '2025-06-30 11:06:34', 131, '2025-06-30 11:06:34'),
(169, 41, '2025-06-30', 1407300625, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-06-30 11:06:34', 131, '2025-06-30 11:06:34'),
(170, 41, '2025-06-30', 1408300625, 'SL', 86, 0, 0, 8, 0, '', 131, '2025-06-30 13:02:08', 131, '2025-06-30 13:02:08'),
(171, 41, '2025-06-30', 1408300625, 'SL', 49, 0, 0, 1, 0, '', 131, '2025-06-30 13:02:08', 131, '2025-06-30 13:02:08'),
(172, 41, '2025-06-30', 1408300625, 'SL', 44, 0, 0, 1, 0, '', 131, '2025-06-30 13:02:08', 131, '2025-06-30 13:02:08'),
(173, 41, '2025-08-22', 1410130825, 'SL', 127, 0, 0, 1, 0, '', 131, '2025-08-22 16:19:16', 131, '2025-08-22 16:19:16'),
(174, 41, '2025-08-22', 1410130825, 'SL', 120, 0, 0, 1, 0, '', 131, '2025-08-22 16:19:16', 131, '2025-08-22 16:19:16'),
(175, 41, '2025-08-25', 1409300625, 'SL', 36, 0, 0, 2, 0, '', 131, '2025-08-25 09:09:38', 131, '2025-08-25 09:09:38'),
(176, 41, '2025-08-25', 1409300625, 'SL', 48, 0, 0, 1, 0, '', 131, '2025-08-25 09:09:38', 131, '2025-08-25 09:09:38'),
(177, 41, '2025-08-25', 1409300625, 'SL', 47, 0, 0, 1, 0, '', 131, '2025-08-25 09:09:38', 131, '2025-08-25 09:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `store_stock_history`
--

DROP TABLE IF EXISTS `store_stock_history`;
CREATE TABLE IF NOT EXISTS `store_stock_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `tr_date` date NOT NULL,
  `order_id` int NOT NULL,
  `ttype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `is_combo` int NOT NULL DEFAULT '0',
  `pu_qty` int NOT NULL,
  `sl_qty` int NOT NULL,
  `minqty` int NOT NULL DEFAULT '0',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_stock_history`
--

INSERT INTO `store_stock_history` (`id`, `store_id`, `tr_date`, `order_id`, `ttype`, `product_id`, `is_combo`, `pu_qty`, `sl_qty`, `minqty`, `remarks`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 41, '2025-03-15', 0, 'SK', 58, 0, 19, 0, 2, '', 131, '2025-03-15 10:41:17', 131, '2025-03-15 10:41:17'),
(2, 41, '2025-03-15', 0, 'SK', 74, 0, 4, 0, 2, '', 131, '2025-03-15 10:08:42', 131, '2025-03-15 10:08:42'),
(3, 41, '2025-03-15', 0, 'SK', 68, 0, 5, 0, 0, '', 131, '2025-03-15 15:28:09', 131, '2025-03-15 15:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `store_table`
--

DROP TABLE IF EXISTS `store_table`;
CREATE TABLE IF NOT EXISTS `store_table` (
  `table_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_table_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_reserved` int NOT NULL DEFAULT '0' COMMENT 'is reserved =1',
  `ttype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'table = tbl , room -rom',
  `is_active` int NOT NULL,
  `is_whatsapp` int NOT NULL,
  `whatsapp_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_table`
--

INSERT INTO `store_table` (`table_id`, `store_id`, `table_name`, `store_table_name`, `secret_code`, `qr_code`, `store_table_token`, `is_reserved`, `ttype`, `is_active`, `is_whatsapp`, `whatsapp_no`) VALUES
(1, 63, 'Table 1', NULL, NULL, '', '0', 0, 'tbl', 1, 0, ''),
(2, 63, 'Table 2', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(3, 63, 'Table 3', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(4, 41, 'Table 122', 'Table 12', '', 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Mehrab Mandhi Restuarant_4.png', '202508254', 0, 'tbl', 0, 0, '0'),
(5, 41, 'Table 2', '', '', 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Mehrab Mandhi Restuarant_52.png', '2025031052', 0, 'tbl', 1, 0, '0'),
(6, 41, 'Table 3', '', '', 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Mehrab Mandhi Restuarant_83.png', '2025031083', 0, 'tbl', 1, 0, '0'),
(7, 41, 'Table 4', NULL, NULL, 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Mehrab Mandhi Restuarant_84.png', '2025031084', 0, 'tbl', 1, 0, ''),
(8, 41, 'Table 5', NULL, NULL, 'https://qr-experts.com/emigo-restaurant-application/uploads/qr_codes/Mehrab Mandhi Restuarant_85.png', '2025031085', 0, 'tbl', 1, 0, ''),
(9, 64, 'Table 1', 'My Table 11', '', 'https://qr-experts.com/emigo-restaurant-application/uploads/qr_codes/vishnu_9.png', '202504309', 0, '', 1, 0, ''),
(10, 64, 'Table 2', 'My Table 12', '', 'https://qr-experts.com/emigo-restaurant-application/uploads/qr_codes/vishnu_10.png', '2025043010', 0, '', 1, 0, ''),
(11, 65, 'Table 1', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(12, 65, 'Table 2', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(13, 66, 'Table 1', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(14, 66, 'Table 2', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(15, 67, 'Table 1', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(16, 67, 'Table 2', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(17, 68, 'Table 1', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(18, 68, 'Table 2', NULL, NULL, '', '0', 0, '', 1, 0, ''),
(19, 69, 'Table 1', '', '', 'https://qr-experts.com/emigo-restaurant-application/uploads/qr_codes/Test quatar store_19.png', '2025062319', 0, '', 1, 1, '7012713312'),
(20, 69, 'Table 2', NULL, NULL, 'https://qr-experts.com/emigo-restaurant-application/uploads/qr_codes/Test quatar store_20.png', '2025062320', 0, '', 1, 1, '7012713312'),
(21, 70, 'Table 1', NULL, NULL, 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Arjun Store_21.png', '2025062821', 0, 'tbl', 1, 0, ''),
(22, 70, 'Table 2', NULL, NULL, '', '0', 0, 'tbl', 1, 0, ''),
(99, 70, 'Room 6', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(97, 70, 'Room 4', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(98, 70, 'Room 5', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(110, 41, 'Room 1', 'Room 42', '', 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Mehrab Mandhi Restuarant_110.png', '20250630110', 0, 'rom', 1, 0, '0'),
(100, 70, 'Room 7', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(95, 70, 'Room 2', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(94, 70, 'Room 1', 'My Room 1', '', 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Arjun Store_94.png', '2025062894', 0, 'rom', 1, 0, '0'),
(96, 70, 'Room 3', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(101, 70, 'Room 8', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(102, 70, 'Room 9', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(103, 70, 'Room 10', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(104, 70, 'Room 11', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(105, 70, 'Room 12', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(106, 70, 'Room 13', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(107, 70, 'Room 14', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(108, 70, 'Room 15', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(109, 70, 'Room 16', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(114, 41, 'Room 5', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(112, 41, 'Room 3', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(113, 41, 'Room 4', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(111, 41, 'Room 2', 'My Room 2', '', '', '0', 0, 'rom', 1, 0, '0'),
(115, 41, 'Room 6', '', '', '', '0', 0, 'rom', 1, 0, '0'),
(116, 41, 'Room 7', 'My Room 7', '', 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Mehrab Mandhi Restuarant_116.png', '20250630116', 0, 'rom', 1, 0, '0'),
(117, 70, 'Room 17', 'My room 17', '', 'http://localhost/emigo-restaurant-application/uploads/qr_codes/Arjun Store_117.png', '20250814117', 0, 'rom', 1, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `store_table_assign`
--

DROP TABLE IF EXISTS `store_table_assign`;
CREATE TABLE IF NOT EXISTS `store_table_assign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `user_id` int NOT NULL,
  `store_id` int NOT NULL,
  `is_pickup` int NOT NULL DEFAULT '0' COMMENT 'is 1 = enabled',
  `is_delivery` int NOT NULL DEFAULT '0' COMMENT 'is 1 = enabled',
  `date` date NOT NULL,
  `status` int NOT NULL,
  `created_at` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_table_assign`
--

INSERT INTO `store_table_assign` (`id`, `table_id`, `user_id`, `store_id`, `is_pickup`, `is_delivery`, `date`, `status`, `created_at`) VALUES
(110, 0, 131, 41, 0, 1, '2025-03-03', 1, '2025-03-03 10:59:36'),
(109, 85, 131, 41, 0, 0, '2025-03-03', 1, '2025-03-03 10:59:36'),
(108, 84, 131, 41, 0, 0, '2025-03-03', 1, '2025-03-03 10:59:36'),
(107, 83, 131, 41, 0, 0, '2025-03-03', 1, '2025-03-03 10:59:36'),
(106, 52, 131, 41, 0, 0, '2025-03-03', 1, '2025-03-03 10:59:36'),
(105, 51, 131, 41, 0, 0, '2025-03-03', 1, '2025-03-03 10:59:36'),
(217, 4, 156, 41, 0, 0, '2025-05-13', 1, '2025-05-13 18:54:37'),
(218, 5, 156, 41, 0, 0, '2025-05-13', 1, '2025-05-13 18:54:37'),
(222, 8, 157, 41, 0, 0, '2025-05-13', 1, '2025-05-13 18:54:53'),
(221, 7, 157, 41, 0, 0, '2025-05-13', 1, '2025-05-13 18:54:53'),
(219, 6, 156, 41, 0, 0, '2025-05-13', 1, '2025-05-13 18:54:37'),
(216, 0, 183, 41, 1, 1, '2025-05-13', 1, '2025-05-13 12:45:55'),
(220, 0, 156, 41, 0, 0, '2025-05-13', 1, '2025-05-13 18:54:37'),
(223, 0, 157, 41, 0, 0, '2025-05-13', 1, '2025-05-13 18:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `store_variants`
--

DROP TABLE IF EXISTS `store_variants`;
CREATE TABLE IF NOT EXISTS `store_variants` (
  `store_variant_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `store_product_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `variant_value` int NOT NULL DEFAULT '0' COMMENT 'Variant value',
  `rate` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL DEFAULT '0',
  `is_default` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`store_variant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_variants`
--

INSERT INTO `store_variants` (`store_variant_id`, `store_id`, `store_product_id`, `variant_id`, `variant_value`, `rate`, `tax`, `tax_amount`, `total_amount`, `is_default`, `is_active`) VALUES
(43, 41, 67, 2, 2, 1850, 5, 92.5, 1942.5, 0, 1),
(42, 41, 67, 3, 1, 950, 5, 47.5, 997.5, 1, 1),
(41, 41, 69, 2, 4, 1820, 5, 91, 1911, 0, 1),
(40, 41, 69, 3, 2, 930, 5, 46.5, 976.5, 0, 1),
(39, 41, 69, 4, 1, 485, 5, 24.25, 509.25, 1, 1),
(38, 41, 68, 2, 4, 1140, 5, 57, 1197, 0, 1),
(37, 41, 68, 3, 2, 590, 5, 29.5, 619.5, 0, 1),
(36, 41, 68, 4, 1, 340, 5, 17, 357, 1, 1),
(35, 41, 86, 2, 4, 1480, 5, 74, 1554, 0, 1),
(34, 41, 86, 3, 2, 770, 5, 38.5, 808.5, 0, 1),
(33, 41, 86, 4, 1, 410, 5, 20.5, 430.5, 1, 1),
(32, 41, 72, 2, 4, 990, 5, 49.5, 1039.5, 0, 1),
(31, 41, 72, 3, 2, 550, 5, 27.5, 577.5, 0, 1),
(51, 41, 72, 4, 1, 290, 5, 14.5, 304.5, 1, 1),
(29, 41, 71, 2, 4, 1650, 5, 82.5, 1732.5, 0, 1),
(28, 41, 71, 3, 2, 840, 5, 42, 882, 1, 1),
(27, 41, 36, 2, 2, 1390, 5, 69.5, 1459.5, 0, 1),
(26, 41, 36, 3, 1, 720, 5, 36, 756, 1, 1),
(19, 41, 87, 4, 1, 300, 5, 15, 315, 1, 1),
(20, 41, 87, 3, 2, 570, 5, 28.5, 598.5, 0, 1),
(21, 41, 87, 2, 4, 1070, 5, 53.5, 1123.5, 0, 1),
(53, 69, 124, 2, 1, 150, 5, 7.5, 157.5, 0, 1),
(44, 41, 42, 4, 1, 350, 5, 17.5, 367.5, 1, 1),
(45, 41, 42, 3, 2, 620, 5, 31, 651, 0, 1),
(46, 41, 42, 2, 4, 1200, 5, 60, 1260, 0, 1),
(52, 69, 124, 3, 0, 80, 5, 4, 84, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_wise_product_assign`
--

DROP TABLE IF EXISTS `store_wise_product_assign`;
CREATE TABLE IF NOT EXISTS `store_wise_product_assign` (
  `store_product_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `product_id` int NOT NULL,
  `subcategory_id` int DEFAULT NULL,
  `vat_id` int NOT NULL,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `is_addon` int NOT NULL,
  `is_customizable` int NOT NULL,
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int NOT NULL COMMENT 'if 1=added by admin 0=added by shop owner',
  `store_product_name_ma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_product_name_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_product_name_hi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_product_name_ar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_product_desc_ma` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `store_product_desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `store_product_desc_hi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `store_product_desc_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_created` datetime NOT NULL,
  `created_by` int NOT NULL,
  `date_modified` datetime NOT NULL,
  `modified_by` int NOT NULL,
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Available soon	',
  `is_active` int NOT NULL COMMENT '0 active 1 inactive',
  `availability` int NOT NULL DEFAULT '0' COMMENT 'This is for quickly change status of product(0 is active and 1 is Inactive\r\n)',
  PRIMARY KEY (`store_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_wise_product_assign`
--

INSERT INTO `store_wise_product_assign` (`store_product_id`, `store_id`, `product_id`, `subcategory_id`, `vat_id`, `type`, `rate`, `tax`, `tax_amount`, `total_amount`, `category_id`, `is_addon`, `is_customizable`, `image`, `is_admin`, `store_product_name_ma`, `store_product_name_en`, `store_product_name_hi`, `store_product_name_ar`, `store_product_desc_ma`, `store_product_desc_en`, `store_product_desc_hi`, `store_product_desc_ar`, `date_created`, `created_by`, `date_modified`, `modified_by`, `remarks`, `is_active`, `availability`) VALUES
(110, 64, 120, 0, 19, 'veg', 70, 5, 3.5, 73.5, 20, 1, 0, 'taboola-salad.jpg', 1, 'ടബൂല സലാഡ്', 'Taboola salad', 'टैबूलेह  सलाद', 'تبولة  سلطة ', 'Taboola സലാഡ് സാധാരണയായി ഗ്രിൽഡ് മീറ്റുകൾ, ബ്രെഡ് (പിതാ ബ്രെഡ്), ഹമ്മസ് എന്നിവയ്ക്കൊപ്പം കഴിക്കാം. ഇത് ഒരു ഹെൽത്തി സലാഡ് ആയതിനാൽ ഡയറ്റ് ചെയ്യുന്നവർക്കും മികച്ചതാണ്.', 'Tabbouleh salad is usually served with grilled meats, pita bread, or hummus. It\'s a healthy and refreshing dish, perfect for diet-conscious individuals.', 'टैबूलेह सलाद को आमतौर पर ग्रिल्ड मीट, पिटा ब्रेड या हम्मस के साथ परोसा जाता है। यह एक हेल्दी और फ्रेश सलाद है, जो डाइट फॉलो करने वालों के लिए भी बेहतरीन है', 'عادةً ما تُقدَّم سلطة التبولة مع اللحم المشوي، خبز البيتا، أو الحمص. وهي خيار صحي ومنعش، خاصة لمن', '2025-04-30 15:29:10', 0, '2025-04-30 15:29:10', 0, 'Available soon	', 0, 0),
(105, 64, 11, 0, 19, 'veg', 12, 5, 0.6, 12.6, 4, 0, 0, 'idliset.jpg', 1, ' ഇഡ്ഡലി', 'Idli', 'इडली', 'إدلي', 'പുളിപ്പിച്ച തൊണ്ട് നീക്കം ചെയ്ത കറുത്ത പയർ, അരി എന്നിവയിൽ നിന്നാണ് ഇഡ്‌ലി ഉണ്ടാക്കുന്നത്', 'Idli is made from a batter of fermented de-husked black lentils and rice', 'इडली किण्वित भूसी रहित काली दाल और चावल के घोल से बनाई जाती है', 'العدس الأسود المخمر والأرز', '2025-04-30 12:56:16', 0, '2025-04-30 12:56:16', 0, 'Available soon	', 0, 0),
(106, 64, 136, 0, 19, 'veg', 0, 5, 0, 0, 19, 0, 0, 'mandi-rice.jpg', 1, 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', '2025-04-30 12:56:25', 0, '2025-04-30 12:56:25', 0, 'Available soon	', 0, 0),
(107, 64, 135, 0, 19, 'veg', 70, 5, 3.5, 73.5, 19, 0, 0, 'white-rice.jpg', 1, 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', '2025-04-30 12:56:25', 0, '2025-04-30 12:56:25', 0, 'Available soon	', 0, 0),
(103, 64, 43, 0, 19, 'non-veg', 100, 5, 5, 105, 8, 0, 0, 'fish_mandhi.jpg', 1, 'ഖനാത്', 'Khan\'ath', 'ख़न\'अथ', 'خناث', ' ഒരു പാരമ്പര്യ പേര്/വിഭാവമായ ഖനാത്, അതിന്റെ ദൃഢതയും ആത്മീയതയുമായ സംയോജനത്തിൽ നിന്നുള്ള ഒരു അനുഭവമാണ്. ഇത് കാലാതീതമായ ഒരു സമ്പദ് സമാഹാരം പ്രതിനിധാനം ചെയ്യുന്നു', 'A fresh king fish fried to perfection with spices and herbs. A handy helping of sticky and flavored rice served alongside to complete whopper delicious sea food detour', ' ख़न\'अथ एक पारंपरिक नाम/वस्तु है जो इसके गहरे अर्थ और ऐतिहासिक महत्व को दर्शाता है। यह समृद्ध सांस्कृतिक धरोहर का प्रतीक है।', 'خناث: خناث تعبر عن إرث تقليدي مليء بالدلالات العميقة والمعاني الروحية. إنه رمز للتاريخ والتراث الثقافي الغني.', '2025-04-30 12:53:52', 0, '2025-04-30 12:53:52', 0, 'Available soon	', 0, 0),
(109, 64, 121, 0, 19, 'veg', 0, 5, 0, 0, 20, 1, 0, 'jerjeer-salad.jpg', 1, 'അരുഗുല സലാഡ്', 'Jarjeer salad', 'अरुगुला सलाद', 'سلطة جرجير', 'ഈ സലാഡിന് ചിക്കൻ ഗ്രിൽ അല്ലെങ്കിൽ പനീർ ഗ്രിൽ ചെയ്യുന്നതിൽ കൂടി തുണിയാകും.', 'This salad pairs well with grilled chicken or grilled paneer.', 'यह सलाद ग्रिल्ड चिकन या ग्रिल्ड पनीर के साथ अच्छा लगता है।', 'تتناسب هذه السلطة بشكل جيد مع الدجاج المشوي أو الجبن المشوي.', '2025-04-30 15:29:10', 0, '2025-04-30 15:29:10', 0, 'Available soon	', 0, 0),
(104, 64, 39, 0, 19, 'non-veg', 45, 5, 2.25, 47.25, 4, 0, 0, 'imresizer-1733307262735.jpg', 1, 'ചിക്കൻ പുട്ട്', 'Chicken Puttu', ' चिकन पुट्टू', ' بوتو بالدجاج', 'കേരളത്തിന്റെ പരമ്പരാഗത പുട്ട് വിഭവത്തിൽ ചിക്കൻ മസാല ചേർത്തു നിർമിച്ചൊരു രുചികരമായ പുതിയ അനുഭവം. അരിപൊടിയും മോടിപിടിപ്പിച്ച ചിക്കനും ചേർത്ത് പുകവാസനയോടെ പാചകം ചെയ്തത്', 'A unique twist on the traditional Kerala puttu, made with layers of steamed rice flour and spicy chicken masala. This flavorful dish combines the softness of puttu with the rich, aromatic taste of chicken curry, making it a delightful fusion of textures and flavors', ' पारंपरिक केरल पुट्टू में चिकन मसाला मिलाकर बनाया गया एक स्वादिष्ट और अनोखा व्यंजन। चावल के आटे और मसालेदार चिकन के परतों के साथ भाप में पकाया गया।', 'طبق بوتو التقليدي من ولاية كيرالا، ممزوج بمزيج من الدجاج المتبل بشكل لذيذ. يُطهى على البخار مع طبقات من دقيق الأرز والدجاج المتبل للحصول على نكهة فريدة ومميزة', '2025-04-30 12:53:52', 0, '2025-04-30 12:53:52', 0, 'Available soon	', 0, 0),
(87, 41, 139, 0, 19, 'non-veg', 0, 5, 0, 0, 15, 0, 1, 'chickeen haneed.png', 1, 'ചിക്കൻ ഹനീദ്', 'Chicken Haneed', ' चिकन हनीद', ' حنيذ الدجاج', 'ചിക്കൻ ഹനീത് എന്നത് യെമനിയുടെ പരമ്പരാഗത ഹനീത്തിന്റെ (സാധാരണയായി ആട്ടിറച്ചി) ഒരു വകഭേദമാണ്. ഇത് മസാലകളിൽ മുക്കിയ ചിക്കൻ അതിസാവധാനം ഒവനിൽ ചുട്ട് തയ്യാറാക്കുന്നതാണ്, സാധാരണയായി അരിയും മിശ്രിത കറിയുമൊത്ത് പരിമാണിക്കും.', 'Chicken Haneeth is a slow-roasted chicken dish, a variation of the traditional Yemeni Haneeth (usually lamb), featuring marinated chicken baked in an oven, often served with rice and a mixed vegetable stew', 'चिकन हनीथ एक धीमी आंच पर पकाया जाने वाला चिकन व्यंजन है, जो पारंपरिक यमनी हनीथ (आमतौर पर मेमना) का एक प्रकार है। इसमें मसालों में मैरीनेट किया हुआ चिकन ओवन में बेक किया जाता है और आमतौर पर चावल और मिश्रित सब्जी स्टू के साथ परोसा जाता है।', 'الحنيذ بالدجاج هو طبق دجاج مشوي ببطء، وهو نسخة من الحنيذ اليمني التقليدي (الذي يكون عادةً من لحم الضأن)، حيث يتم تتبيل الدجاج وطهيه في الفرن، وغالبًا ما يُقدم مع الأرز واليخنة المشكلة.', '2025-04-30 10:22:33', 0, '2025-04-30 10:22:33', 0, 'Available soon	', 0, 0),
(86, 41, 140, 0, 19, 'non-veg', 0, 5, 0, 0, 9, 0, 1, 'beef madfoon.png', 1, ' ബീഫ് മദ്ഫൂൺ', 'Beef Madfoon', 'बीफ मद्फून', ' بيف مدفون', 'ബീഫ് മദ്ഫൂൺ എന്നത് അറബിയിൽ \"മറവുചെയ്തത്\" എന്നർത്ഥം വരുന്ന ഒരു മിഡിൽ ഈസ്റ്റേൺ വിഭവമാണ്. ഇത് സാധാരണയായി ഭൂഗർഭ അടുപ്പിലോ ഒവനിലോ അതിസാവധാനം വേവിച്ച ശേഷം സുഗന്ധമുള്ള കുങ്കുമപ്പൂവ്യാന സഹിതം അരിയോടെ സമർപ്പിക്കുന്നു.', 'Tender beef, enveloped in foil and steamed to melt-in-your-mouth perfection, served alongside a savory mix of potatoes and pepper. Complemented by a generous portion of fragrant,flavorful rice to round out the meal.', 'बीफ मद्फून, जिसका अर्थ अरबी में \"दफन किया हुआ\" होता है, एक मध्य पूर्वी व्यंजन है जिसमें मांस (अक्सर बीफ) को ज़मीन के नीचे बने गड्ढे या ओवन में धीमी आंच पर पकाया जाता है और फिर सुगंधित केसर चावल के साथ परोसा जाता है।', 'بيف مدفون، وتعني \"مدفون\" في العربية، هو طبق من الشرق الأوسط حيث يُطهى اللحم، وغالبًا اللحم البقري، ببطء في حفرة تحت الأرض أو في الفرن، ثم يُقدَّم على طبقة من الأرز المنكّه بالزعفران.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2025-04-30 10:22:33', 0, '2025-04-30 10:22:33', 0, 'Available soon	', 0, 0),
(85, 41, 141, 0, 19, 'non-veg', 1990, 5, 99.5, 2089.5, 19, 0, 0, 'haneed ribs.png', 1, 'ഹനീദ് റിബ്സ്', 'Haneed Ribs', ' हनीद रिब्स', ' ضلوع الحنيذ', 'ഹനീദ് റിബ്സ് എന്നത് യെമനിയിലെ ഒരു പരമ്പരാഗത വിഭവമാണ്, അതിസാവധാനം ചുട്ട് മൃദുവായ, എളുപ്പത്തിൽ വേർപെടുന്ന ആട്ടിറച്ചിയുടെ റിബ്‌സ് ഉപയോഗിച്ച് തയ്യാറാക്കുന്നതാണ്. സുഗന്ധവ്യഞ്ജനങ്ങളാൽ മാരിനേറ്റ് ചെയ്ത് ടന്നൂർ ഒവനിൽ പാകം ചെയ്‌തതിനു ശേഷം സുഗന്ധമുള്ള അരിയോടുകൂടി സേവിക്കാറുണ്ട്.', 'A standout dish of slow roasted lamb ribs dry rubbed with spices, ensuring a succulent and tender taste. The best flavoured rice helping is added to complete the meal.. A truly exotic pairing that makes for a sizable tasty meal', ' हनीद रिब्स एक धीमी आंच पर पकाया जाने वाला यमनी व्यंजन है, जिसमें नरम, हड्डी से आसानी से अलग होने वाली मेमने की पसलियों को सुगंधित मसालों में मैरीनेट कर टन्नूर ओवन में पकाया जाता है और आमतौर पर सुगंधित चावल के साथ परोसा जाता है।', 'ضلوع الحنيذ هي طبق يمني مشوي ببطء، يتميز بضلوع لحم الضأن الطرية التي تتساقط من العظم، حيث تُتبَّل بمزيج من التوابل العطرية، وتُطهى بإتقان في فرن التنور، وتُقدَّم غالبًا مع الأرز المعطر.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2025-04-30 10:22:33', 0, '2025-04-30 10:22:33', 0, 'Available soon	', 0, 0),
(35, 41, 138, 0, 19, 'veg', 190, 5, 9.5, 199.5, 20, 0, 0, 'french fries.png', 1, 'ഫ്രെഞ്ച് ഫ്രൈസ്', 'French Fries', 'फ़्रेंच फ्राइज़', 'بطاطس مقلية', 'ഫ്രെഞ്ച് ഫ്രൈസ് എന്നത് സാധാരണയായി ആലൂ പൊടിയായി മുറിച്ച് എരിവ് ചേർത്ത് പൊരിച്ചെടുത്തൊരു ചിറകായ ഭക്ഷണമോ സൈഡ് ഡിഷുമാണ്.', 'French fries are a popular snack or side dish made from potatoes that are cut into thin strips and deep-fried until golden brown and crispy', 'फ़्रेंच फ्राइज़ एक लोकप्रिय स्नैक या साइड डिश है, जिसे आलू को पतली स्ट्रिप्स में काटकर सुनहरा भूरा और कुरकुरा होने तक डीप-फ्राई किया जाता है।', 'البطاطس المقلية هي وجبة خفيفة أو طبق جانبي شهير مصنوع من البطاطس التي تُقطع إلى شرائح رفيعة وتُقلى بعمق حتى تصبح ذهبية ومقرمشة.', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(36, 41, 137, 0, 19, 'non-veg', 0, 5, 0, 0, 8, 0, 1, 'beef_mandi.jpg', 1, 'Beef mandi', 'Beef mandi', 'Beef mandi', 'Beef mandi', 'Beef mandi', 'A flavourful meal complete with the most tender pieces of beef and the appetizing combination of potato, pepper and flavourful rice. A treat you don\'t want to miss.', 'Beef mandi', 'Beef mandi', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(37, 41, 136, 0, 19, 'veg', 150, 5, 7.5, 157.5, 19, 0, 0, 'mandi-rice.jpg', 1, 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(38, 41, 135, 0, 19, 'veg', 150, 5, 7.5, 157.5, 19, 0, 0, 'white-rice.jpg', 1, 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(39, 41, 134, 0, 19, 'non-veg', 730, 5, 36.5, 766.5, 15, 0, 0, 'oqda.jpg', 1, 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Oqda chicken', 'Our Yemeni-style chicken slices are a delectable blend of succulent chicken.fresh vegetables, aromatic herbs, tangy tomato sauce, and exotic Arabic spices.Each bite is a tantalizing explosion of flavors that will transport your taste buds to the bustling streets of Yemen.', 'Oqda chicken', 'Oqda chicken', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(40, 41, 133, 0, 19, 'veg', 320, 5, 16, 336, 19, 0, 0, 'Alfatha.png', 1, 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'This hearty vegetarian stew features a medley of vegetables and chickpeas simmered in a rich, flavorful broth. Infused with a blend of spices, herbs, and fenugreek, it offers a taste of Yemeni tradition without the meat. Served alongside roti or flatbread, this dish boasts strong flavors and a satisfying texture that will delight your taste buds.', 'Fatha veg', 'Fatha veg', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(42, 41, 129, 0, 19, 'non-veg', 0, 5, 0, 0, 15, 0, 1, 'mehrab-chicken.png', 1, 'Mehrab chicken malayalam', 'Mehrab chicken', 'Mehrab chicken hindi', 'Mehrab chicken arabic', 'Mehrab chicken malayalam', 'A subtly flavored rice complemented by perfectly slow grilled, succulent chicken. An ideal meal for those who appreciate mild, yet delightful tastes.', 'Mehrab chicken hindi', 'Mehrab chicken arabic', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(43, 41, 126, 0, 19, 'non-veg', 0, 5, 0, 0, 5, 0, 0, 'Seekh-Kebab.jpg', 1, 'seekh kabab malayalam', 'Seekh kabab beef', 'seekh kabab hindi', 'seekh kabab arabic', 'seekh kabab malayalam', 'Seekh kabab beef', 'seekh kabab hindi', 'seekh kabab arabic', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(44, 41, 125, 0, 19, 'non-veg', 390, 5, 19.5, 409.5, 13, 0, 0, 'Koobideh2.jpg', 1, 'കൂബിദെ മട്ടൺ', 'Koobideh mutton', 'Koobideh mutton hindi', 'Koobideh mutton arabic', 'കൂബിദെ മട്ടൺ', 'Koobideh mutton', 'Koobideh mutton hindi', 'Koobideh mutton arabic', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(45, 41, 124, 0, 19, 'veg', 480, 5, 24, 504, 18, 0, 0, 'fattah.jpg', 1, 'Fatah tamr malayalam', 'Fatah tamr', 'Fatah tamr hindi', 'Fatah tamr arabic', 'Fatah tamr malayalam', 'Fatah tamr', 'Fatah tamr hindi', 'Fatah tamr arabic', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(46, 41, 123, 0, 19, 'veg', 380, 5, 19, 399, 18, 0, 0, 'masoob2.jpg', 1, 'മാസൂബ്', 'Masoob', ' Masoob Hindi', 'Massob Arabic', '', 'Masoob', ' Masoob Hindi', 'Massob Arabic', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(47, 41, 122, 0, 19, 'veg', 450, 5, 22.5, 472.5, 18, 0, 0, 'kunafe.jpg', 1, 'കുനാഫ', 'Kunafe', ' कुनाफा', 'Arabic name', 'കുനാഫ  ഒരു പ്രശസ്തമായ മധ്യപൗരസ്ത്യ മിഠായിയാണ്', 'Kunafa (or Knafeh) is a popular Middle Eastern dessert made with a base of shredded phyllo dough or semolina, soaked in sweet syrup, and often topped with pistachios or other nuts.', 'एक लोकप्रिय मध्य पूर्वी मिठाई है, जिसे कटा हुआ फिलो आटा (कताीफ) या सूजी से बनाया जाता है', 'Arabic description', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(48, 41, 121, 0, 19, 'veg', 260, 5, 13, 273, 20, 1, 0, 'jerjeer-salad.jpg', 1, 'അരുഗുല സലാഡ്', 'Jarjeer salad', 'अरुगुला सलाद', 'سلطة جرجير', 'ഈ സലാഡിന് ചിക്കൻ ഗ്രിൽ അല്ലെങ്കിൽ പനീർ ഗ്രിൽ ചെയ്യുന്നതിൽ കൂടി തുണിയാകും.', 'This salad pairs well with grilled chicken or grilled paneer.', 'यह सलाद ग्रिल्ड चिकन या ग्रिल्ड पनीर के साथ अच्छा लगता है।', 'تتناسب هذه السلطة بشكل جيد مع الدجاج المشوي أو الجبن المشوي.', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(49, 41, 120, 0, 19, 'veg', 380, 5, 19, 399, 20, 1, 0, 'taboola-salad.jpg', 1, 'ടബൂല സലാഡ്', 'Taboola salad', 'टैबूलेह  सलाद', 'تبولة  سلطة ', 'Taboola സലാഡ് സാധാരണയായി ഗ്രിൽഡ് മീറ്റുകൾ, ബ്രെഡ് (പിതാ ബ്രെഡ്), ഹമ്മസ് എന്നിവയ്ക്കൊപ്പം കഴിക്കാം. ഇത് ഒരു ഹെൽത്തി സലാഡ് ആയതിനാൽ ഡയറ്റ് ചെയ്യുന്നവർക്കും മികച്ചതാണ്.', 'Tabbouleh salad is usually served with grilled meats, pita bread, or hummus. It\'s a healthy and refreshing dish, perfect for diet-conscious individuals.', 'टैबूलेह सलाद को आमतौर पर ग्रिल्ड मीट, पिटा ब्रेड या हम्मस के साथ परोसा जाता है। यह एक हेल्दी और फ्रेश सलाद है, जो डाइट फॉलो करने वालों के लिए भी बेहतरीन है', 'عادةً ما تُقدَّم سلطة التبولة مع اللحم المشوي، خبز البيتا، أو الحمص. وهي خيار صحي ومنعش، خاصة لمن', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(115, 41, 53, 0, 19, 'veg', 260, 5, 13, 273, 20, 0, 0, 'imresizer-1733723511962.jpg', 1, 'അറബി സാലഡ്', 'Arabic Salad', ' अरबी सलाद', 'سلطة عربية ', 'അറബി സാലഡ് വിവിധ പച്ചക്കറികൾ (തക്കാളി, വളർത്തുകന്നി, ഉള്ളി, പാക്കച്ചീനി) ചെറുതായി ചതച്ചാണ് തയ്യാറാക്കുന്നത്. ഇത് ഓലിവ് എണ്ണ, നാരങ്ങാനീർ, ഉപ്പു എന്നിവ ചേർത്ത് ഡ്രസ്സിംഗ് ആയി ചെയ്യുന്നു. ഈ സാലഡ് പകൃതി രുചിയിലും സമ്പുഷ്ടമായ ഭക്ഷണമായും അറിയപ്പെടുന്നു. ഇത് സാധാരണയായി ഗ്രിൽ ചെയ്ത മാംസം, ചോറ്, അല്ലെങ്കിൽ റോട്ടിയുമായി സൈഡ് ഡിഷ് ആയി ഉപയോഗിക്കുന്നു', ' Arabic Salad is a fresh, light dish made with finely chopped vegetables like tomatoes, cucumbers, onions, and parsley. It\'s typically dressed with olive oil, lemon juice, and a pinch of salt. This salad is known for its refreshing taste and is often served as a side dish with grilled meats, rice, or flatbreads.', ' अरबी सलाद एक ताजगी से भरपूर, हल्का व्यंजन है, जिसमें टमाटर, खीरा, प्याज और हरे धनिये जैसी सब्जियों को बारीक काट कर डाला जाता है। इसे आमतौर पर जैतून का तेल, नींबू का रस और थोड़ा सा नमक से सजाया जाता है। यह सलाद अपने ताजे स्वाद के लिए जाना जाता है और ग्रिल किए गए मांस, चावल, या रोटियों के साथ साइड डिश के रूप में परोसा जाता है।', 'ة العربية هي طبق طازج وخفيف يتكون من خضروات مفرومة بشكل دقيق مثل الطماطم، الخيار، البصل، والبقدونس. عادةً ما يتم تتبيله بزيت الزيتون، عصير الليمون، ورشة من الملح. تشتهر هذه السلطة بطعمها المنعش وتُقدّم غالبًا كطبق جانبي مع اللحوم المشوية أو الأرز أو الخبز', '2025-05-12 19:31:55', 0, '2025-05-12 19:31:55', 0, 'Available soon	', 0, 0),
(65, 41, 48, 0, 19, 'non-veg', 620, 5, 31, 651, 13, 0, 0, 'imresizer-1733722339182.jpg', 1, ' പ്രൗൺസ് മഷ്വി', 'Prawns Mashwi', ' प्रॉन्स माश्वी', 'روبيان مشوي', ' പ്രൗൺസ് മഷ്വി ഒരു അറബി ഗ്രിൽ ചെയ്ത വിഭവമാണ്, പുഷ്പമാർന്ന മസാലകൾ, സസ്യങ്ങൾ, ഒലിവ് എണ്ണ എന്നിവ ചേർത്ത് പ്രൗൺസ് മാരിനേറ്റ് ചെയ്ത്, ഗ്രിൽ ചെയ്തു പാകം ചെയ്യുന്നത്. പുകവാസനയോടെ, മൃദുവായ, രുചികരമായ ഈ സമുദ്രവസ്തു ചോറോ റോട്ടിയോ അനുയോജ്യമാണ്', 'Prawns Mashwi is a delicious Arabic grilled dish where prawns are marinated in a blend of spices, herbs, and olive oil, then grilled to perfection. The result is a smoky, tender, and flavorful seafood dish that pairs wonderfully with rice or flatbread.', 'प्रॉन्स माश्वी एक स्वादिष्ट अरबी व्यंजन है, जिसमें झींगे को मसालों, जड़ी-बूटियों और जैतून के तेल में मरीनेट करके ग्रिल किया जाता है। यह व्यंजन एक धुएंदार, नर्म और स्वादिष्ट समुद्री भोजन है, जिसे चावल या रोटी के साथ परोसा जाता है।', 'الروبيان المشوي هو طبق عربي شهي حيث يتم تتبيل الروبيان بمجموعة من التوابل والأعشاب وزيت الزيتون، ثم يُشوى حتى يصبح طريًا ولذيذًا. يتميز هذا الطبق بنكهته المدخنة ويمكن تناوله مع الأرز أو الخبز.\r\n\r\n', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(67, 41, 46, 0, 19, 'non-veg', 0, 5, 0, 0, 10, 0, 1, 'imresizer-1733547567340.jpg', 1, ' മട്ടൺ മസ്ബി', 'Mutton Mazbi', 'मटन मझबी', ' مذبى اللحم ', 'മട്ടൺ മസ്ബി ഒരു പരമ്പരാഗത അറബി വിഭവമാണ്, മൃദുവായ മട്ടൺ മാംസത്തെ സുഗന്ധമുള്ള മസാലകളിൽ മാരിനേറ്റ് ചെയ്ത്, തീയിൽ കുലുക്കി അല്ലെങ്കിൽ ഗ്രിൽ ചെയ്ത് പാകം ചെയ്യുന്നു. സമ്പുഷ്ടമായ രുചിയും പുകവാസനയും ഉള്ള ഒരു രുചികരമായ വിഭവം', 'Mutton Mazbi is a traditional Arabic dish where tender mutton is marinated with a blend of aromatic spices and cooked over an open flame or grilled to perfection. The result is a juicy, flavorful dish with a smoky aroma, often served with rice or flatbread', ' मटन मझबी एक पारंपरिक अरबी व्यंजन है जिसमें मटन को खुशबूदार मसालों में मरीनेट कर धीमी आंच पर जलाया या ग्रिल किया जाता है। यह व्यंजन अपनी smoky खुशबू और स्वाद के लिए प्रसिद्ध है, और इसे चावल या रोटी के साथ परोसा जाता है।', ' مذبى اللحم ', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(68, 41, 45, 0, 19, 'non-veg', 0, 5, 0, 0, 9, 0, 1, 'imresizer-1733721911412.jpg', 1, ' ചിക്കൻ മദ്‌ഫൂൺ', 'Chicken madfoon', ' चिकन मदफून', 'المدفون بالدجاج', 'ചിക്കൻ മദ്‌ഫൂൺ ഒരു പരമ്പരാഗത അറബി വിഭവമാണ്, മൃദുവായ ചിക്കനും സുഗന്ധമുള്ള ചോറും ചേർത്ത് മണ്ണിടിച്ചിട്ടതുപോലുള്ള പാചക രീതിയിൽ പാകം ചെയ്യുന്നത്. സമ്പുഷ്ടമായ മസാലകളും തനതായ രുചിയും ഇതിന്റെ പ്രത്യേകതയാണ്', 'Foil wrapped chicken, steamed and slow cooked to tender perfection, topped off with pepper, while a winning combination of potatoes and flavored rice is added to the mixed. A truly delicious meeting of exquisite tastes to light up your taste buds.', 'चिकन मदफून एक पारंपरिक अरबी व्यंजन है जिसमें नरम चिकन और सुगंधित चावल को धीमी आंच पर खास तरीके से पकाया जाता है। इसमें मसालों का गहरा स्वाद होता है, जो इसे खास बनाता है।', ' المدفون بالدجاج هو طبق عربي تقليدي يتميز بتتبيل الدجاج الطري والأرز المتبل وطهيه ببطء باستخدام طريقة مدفونة، مما يمنحه نكهة غنية ولذيذ', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(69, 41, 44, 0, 19, 'non-veg', 0, 5, 0, 0, 9, 0, 1, 'mutton_madafoon.jpg', 1, ' മട്ടൺ മദ്‌ഫൂൺ', 'Mutton Madfoon', ' मटन मदफून', 'المدفون باللحم', 'മസ്‌തമായ മസാലകളാൽ മൃദുവായ മട്ടൺ മാംസവും സുഗന്ധമുള്ള ചോറും ചേർന്ന്, മണ്ണിടിച്ചിട്ടതുപോലുള്ള പാചക രീതിയിൽ പാകം ചെയ്ത ഒരു പരമ്പരാഗത അറബി വിഭവമാണ്. തനതായ രുചിയും സുഗന്ധവുമാണ് ഈ വിഭവത്തിന്റെ പ്രത്യേകത', 'Tender mutton wrapped up in foil and steamed to perfection, served with the winning combination of potatoes and pepper. Complete with a serving of flavour-filled rice', 'मटन मदफून एक पारंपरिक अरबी व्यंजन है, जिसमें मसालेदार मटन और सुगंधित चावल को धीमी आंच पर खास पद्धति में पकाया जाता है। इसका अनोखा स्वाद और खुशबू इसे विशेष बनाते हैं।', 'المدفون باللحم هو طبق عربي تقليدي يتميز بتتبيل لحم الضأن الطري والأرز العطري، ويُطهى بطريقة مدفونة على نار هادئة، مما يمنحه نكهة غنية وشهية.', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(70, 41, 43, 0, 19, 'non-veg', 0, 5, 0, 0, 18, 0, 0, 'fish_mandhi.jpg', 1, 'ഖനാത്', 'Khan\'ath', 'ख़न\'अथ', 'خناث', ' ഒരു പാരമ്പര്യ പേര്/വിഭാവമായ ഖനാത്, അതിന്റെ ദൃഢതയും ആത്മീയതയുമായ സംയോജനത്തിൽ നിന്നുള്ള ഒരു അനുഭവമാണ്. ഇത് കാലാതീതമായ ഒരു സമ്പദ് സമാഹാരം പ്രതിനിധാനം ചെയ്യുന്നു', 'A fresh king fish fried to perfection with spices and herbs. A handy helping of sticky and flavored rice served alongside to complete whopper delicious sea food detour', ' ख़न\'अथ एक पारंपरिक नाम/वस्तु है जो इसके गहरे अर्थ और ऐतिहासिक महत्व को दर्शाता है। यह समृद्ध सांस्कृतिक धरोहर का प्रतीक है।', 'خناث: خناث تعبر عن إرث تقليدي مليء بالدلالات العميقة والمعاني الروحية. إنه رمز للتاريخ والتراث الثقافي الغني.', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(71, 41, 42, 0, 19, 'non-veg', 300, 5, 15, 315, 8, 0, 1, 'm-removebg-preview.png', 1, 'മട്ടൺ മന്ദി ', 'Mutton Mandhi', ' मटन मंधी', 'مندي اللحم', 'മാടിന്റെ മൃദുവായ മാംസവും സുഗന്ധമുള്ള ചോറും ചേർന്ന് തയ്യാറാക്കുന്ന യമനി ഉത്ഭവമുള്ള ഒരു പാരമ്പര്യ വിഭവം. അൽപതാപത്തിൽ വേവിച്ച് മസാലകളുടെ സമ്പുഷ്ടമായ രുചിയും സുഗന്ധവുമുള്ള ഈ വിഭവം അവിസ്മരണീയമായ രുചിയാണ് നൽകുന്നത്', 'Prepared by using tender lamb that is further roasted to enhance its taste Served with moist and delicate rice that compliments the tender cut of lamb very well. A meal you can\'t miss out on.', ' मटन मंधी एक पारंपरिक यमनी व्यंजन है जिसमें नर्म और धीमी आंच पर पका हुआ मटन और सुगंधित चावल का मेल होता है। यह पकवान अपने अनोखे मसालों और समृद्ध स्वाद के लिए खास है।\r\n\r\n', ' مندي اللحم هو طبق يمني تقليدي يتكون من لحم الضأن الطري المطبوخ ببطء والأرز المتبل. يتميز بنكهات غنية وطريقة تحضيره الفريدة على نار هادئة.\r\n\r\n', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(72, 41, 41, 0, 19, 'non-veg', 0, 5, 0, 0, 8, 0, 1, 'chicken_mandhi.jpg', 1, ' ചിക്കൻ മന്ദി', 'Chicken Mandhi', ' चिकन मंधी', ' مندي الدجاج', ' മൃദുവായ ചിക്കനും സുഗന്ധമുള്ള ചോറും ചേർത്ത യമനി ഉത്ഭവമുള്ള ഒരു പരമ്പരാഗത വിഭവം. ചിക്കൻ മന്ദി അൽപതാപത്തിൽ ചേരുവകൾ ഉറ്റു വേവിച്ചതിനാൽ അതിന്റെ സമ്പന്നമായ രുചിയും സുഗന്ധവുമാണ് പ്രത്യേകത.\r\n\r\n', 'A traditional yemeni mandi, consisting of juicy tender chicken steamed to perfection, added in with aromated basmati rice and a special blend of magical spices that take your breath away. A delicious plate full of a meal that is best shared with your friends and family, but also makes for a kingly solo meal.', 'चिकन मंधी एक पारंपरिक यमनी व्यंजन है, जिसमें सुगंधित चावल और नरम, धीमी आंच पर पका हुआ चिकन शामिल है। यह अपने समृद्ध स्वाद और अनोखे मसालों के लिए प्रसिद्ध है।', 'مندي الدجاج هو طبق تقليدي يمني يتكون من الأرز المتبل والدجاج الطري المطهو ببطء. يتميز بنكهاته العطرية وطريقة طهيه الفريدة على نار هادئة.\r\n\r\n', '2025-04-30 10:22:19', 0, '2025-04-30 10:22:19', 0, 'Available soon	', 0, 0),
(121, 69, 141, 0, 17, 'non-veg', 80, 5, 4, 84, 19, 0, 0, 'haneed ribs.png', 1, 'ഹനീദ് റിബ്സ്', 'Haneed Ribs', ' हनीद रिब्स', ' ضلوع الحنيذ', 'ഹനീദ് റിബ്സ് എന്നത് യെമനിയിലെ ഒരു പരമ്പരാഗത വിഭവമാണ്, അതിസാവധാനം ചുട്ട് മൃദുവായ, എളുപ്പത്തിൽ വേർപെടുന്ന ആട്ടിറച്ചിയുടെ റിബ്‌സ് ഉപയോഗിച്ച് തയ്യാറാക്കുന്നതാണ്. സുഗന്ധവ്യഞ്ജനങ്ങളാൽ മാരിനേറ്റ് ചെയ്ത് ടന്നൂർ ഒവനിൽ പാകം ചെയ്‌തതിനു ശേഷം സുഗന്ധമുള്ള അരിയോടുകൂടി സേവിക്കാറുണ്ട്.', 'Haneed ribs are a slow-roasted, Yemeni dish featuring tender, fall-off-the-bone lamb ribs marinated in a blend of aromatic spices, cooked to perfection in a tannour oven, and often served with fragrant rice', ' हनीद रिब्स एक धीमी आंच पर पकाया जाने वाला यमनी व्यंजन है, जिसमें नरम, हड्डी से आसानी से अलग होने वाली मेमने की पसलियों को सुगंधित मसालों में मैरीनेट कर टन्नूर ओवन में पकाया जाता है और आमतौर पर सुगंधित चावल के साथ परोसा जाता है।', ' ضلوع الحنيذ', '2025-06-23 19:02:40', 0, '2025-06-23 19:02:40', 0, 'Available soon	', 0, 0),
(122, 69, 136, 0, 17, 'veg', 70, 5, 3.5, 73.5, 19, 0, 0, 'mandi-rice.jpg', 1, 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', '2025-06-23 19:02:40', 0, '2025-06-23 19:02:40', 0, 'Available soon	', 0, 0),
(123, 69, 128, 0, 17, 'non-veg', 0, 5, 0, 0, 5, 0, 0, 'beef-chops1.jpg', 1, 'Beef Chops malayalam', 'Beef Chops', 'Beef Chops Hindi', 'Beef Chops Arabic', 'Beef Chops malayalam', 'Beef Chops', 'Beef Chops Hindi', 'Beef Chops Arabic', '2025-06-23 19:02:40', 0, '2025-06-23 19:02:40', 0, 'Available soon	', 0, 0),
(124, 69, 41, 0, 17, 'non-veg', 0, 5, 0, 0, 8, 0, 1, 'chicken_mandhi.jpg', 1, ' ചിക്കൻ മന്ദി', 'Chicken Mandhi', ' चिकन मंधी', ' مندي الدجاج', ' മൃദുവായ ചിക്കനും സുഗന്ധമുള്ള ചോറും ചേർത്ത യമനി ഉത്ഭവമുള്ള ഒരു പരമ്പരാഗത വിഭവം. ചിക്കൻ മന്ദി അൽപതാപത്തിൽ ചേരുവകൾ ഉറ്റു വേവിച്ചതിനാൽ അതിന്റെ സമ്പന്നമായ രുചിയും സുഗന്ധവുമാണ് പ്രത്യേകത.\r\n\r\n', 'A traditional yemeni mandi, consisting of juicy tender chicken steamed to perfection, added in with aromated basmati rice and a special blend of magical spices that take your breath away. A delicious plate full of a meal that is best shared with your friends and family, but also makes for a kingly solo meal.', 'चिकन मंधी एक पारंपरिक यमनी व्यंजन है, जिसमें सुगंधित चावल और नरम, धीमी आंच पर पका हुआ चिकन शामिल है। यह अपने समृद्ध स्वाद और अनोखे मसालों के लिए प्रसिद्ध है।', 'مندي الدجاج هو طبق تقليدي يمني يتكون من الأرز المتبل والدجاج الطري المطهو ببطء. يتميز بنكهاته العطرية وطريقة طهيه الفريدة على نار هادئة.\r\n\r\n', '2025-06-23 19:02:40', 0, '2025-06-23 19:02:40', 0, 'Available soon	', 0, 0),
(125, 69, 144, NULL, 17, 'veg', 20, 5, 1, 21, 20, 1, 0, 'beef_mandi.jpg', 0, 'Lorem Ipsum is a', 'Lorem Ipsum is a', 'Lorem Ipsum is a', 'Lorem Ipsum is a', 'Lorem Ipsum is a dummy text commonly used in the graphic, print, and publishin', 'Lorem Ipsum is a dummy text commonly used in the graphic, print, and publishin', 'Lorem Ipsum is a dummy text commonly used in the graphic, print, and publishin', 'Lorem Ipsum is a dummy text commonly used in the graphic, print, and publishin', '2025-06-23 19:12:17', 190, '2025-06-23 19:12:17', 190, 'Available soon	', 0, 0),
(118, 41, 128, 0, 19, 'non-veg', 0, 5, 0, 0, 5, 0, 0, 'beef-chops1.jpg', 1, 'Beef Chops malayalam', 'Beef Chops', 'Beef Chops Hindi', 'Beef Chops Arabic', 'Beef Chops malayalam', 'Beef Chops', 'Beef Chops Hindi', 'Beef Chops Arabic', '2025-05-13 09:17:00', 0, '2025-05-13 09:17:00', 0, 'Available soon	', 0, 0),
(119, 41, 127, 0, 19, 'non-veg', 0, 5, 0, 0, 5, 0, 0, 'chicken-seekh.jpeg', 1, 'Chicken seekh malayalam', 'Chicken seekh', 'Chicken seekh hindi', 'Chicken seekh arabic', 'Chicken seekh malayalam', 'Chicken seekh', 'Chicken seekh hindi', 'Chicken seekh arabic', '2025-05-13 09:17:00', 0, '2025-05-13 09:17:00', 0, 'Available soon	', 0, 0),
(120, 41, 50, 0, 19, 'non-veg', 315, 5, 15.75, 330.75, 13, 0, 0, 'jojo_kabab_(2).jpg', 1, ' ജോജോ കെബാബ്', 'Jojo Kebab', ' जोजो कबाब', 'كباب جوجو', 'ജോജോ കെബാബ് തനതു രുചിയുള്ള കെബാബ് വകഭേദമാണ്, സാധാരണയായി കോഴി അല്ലെങ്കിൽ മട്ടൺ മാംസത്തിൽ മസാലകളും സസ്യങ്ങളും ചേർത്ത് പകറ്റുന്നു. ഈ മിശ്രിതം സ്ക്യൂവറിൽ എടുക്കുകയും, ഗ്രിൽ ചെയ്ത് ദൃഢവും മൃദുവായ ഒരു വിഭവമായി ഒരുക്കുന്നു. ഇത് സാധാരണയായി ചോറോ റോട്ടിയുമായി ഉപയോഗിക്കുന്നു', 'A yummilicious plate of chicken marinated in a blend of zesty spices and fresh ingredients which could take you on a journey of delight.', 'जोजो कबाब पारंपरिक कबाब का एक स्वादिष्ट रूप है, जिसमें कटी हुई मांस (आमतौर पर चिकन या मटन) को मसालों और जड़ी-बूटियों के साथ मिलाकर स्क्यूअर पर पकाया जाता है। यह कबाब ग्रिल करके सुनहरा और मुलायम बनाया जाता है, और इसे चावल, नान या सलाद के साथ परोसा जाता है।\r\n\r\n', ' كباب جوجو هو نوع لذيذ من الكباب التقليدي، يتم تحضيره من اللحم المفروم (عادة الدجاج أو لحم الضأن) مع مزيج من التوابل والأعشاب. يتم تشكيل الخليط على أسياخ ثم يُشوى حتى يصبح ذهبي اللون وطريًا. يُقدّم عادة مع الأرز أو الخبز أو السلطة الطازجة.', '2025-05-13 09:17:00', 0, '2025-05-13 09:17:00', 0, 'Available soon	', 0, 0),
(99, 64, 42, 0, 19, 'non-veg', 0, 5, 0, 0, 8, 0, 1, 'button_mandhi.jpg', 1, 'മട്ടൺ മന്ദി ', 'Mutton Mandhi', ' मटन मंधी', 'مندي اللحم', 'മാടിന്റെ മൃദുവായ മാംസവും സുഗന്ധമുള്ള ചോറും ചേർന്ന് തയ്യാറാക്കുന്ന യമനി ഉത്ഭവമുള്ള ഒരു പാരമ്പര്യ വിഭവം. അൽപതാപത്തിൽ വേവിച്ച് മസാലകളുടെ സമ്പുഷ്ടമായ രുചിയും സുഗന്ധവുമുള്ള ഈ വിഭവം അവിസ്മരണീയമായ രുചിയാണ് നൽകുന്നത്', 'Prepared by using tender lamb that is further roasted to enhance its taste. Served with moist and delicate rice that compliments the tender cut of lamb very well. A meal you can\'t miss out on. No mayannoise will be served', ' मटन मंधी एक पारंपरिक यमनी व्यंजन है जिसमें नर्म और धीमी आंच पर पका हुआ मटन और सुगंधित चावल का मेल होता है। यह पकवान अपने अनोखे मसालों और समृद्ध स्वाद के लिए खास है।\r\n\r\n', ' مندي اللحم هو طبق يمني تقليدي يتكون من لحم الضأن الطري المطبوخ ببطء والأرز المتبل. يتميز بنكهات غنية وطريقة تحضيره الفريدة على نار هادئة.\r\n\r\n', '2025-04-30 12:36:57', 0, '2025-04-30 12:36:57', 0, 'Available soon	', 0, 0),
(100, 64, 41, 0, 19, 'non-veg', 0, 5, 0, 0, 8, 0, 1, 'chicken_mandhi.jpg', 1, ' ചിക്കൻ മന്ദി', 'Chicken Mandhi', ' चिकन मंधी', ' مندي الدجاج', ' മൃദുവായ ചിക്കനും സുഗന്ധമുള്ള ചോറും ചേർത്ത യമനി ഉത്ഭവമുള്ള ഒരു പരമ്പരാഗത വിഭവം. ചിക്കൻ മന്ദി അൽപതാപത്തിൽ ചേരുവകൾ ഉറ്റു വേവിച്ചതിനാൽ അതിന്റെ സമ്പന്നമായ രുചിയും സുഗന്ധവുമാണ് പ്രത്യേകത.\r\n\r\n', 'A traditional yemeni mandi, consisting of juicy tender chicken steamed to perfection, added in with aromated basmati rice and a special blend of magical spices that take your breath away. A delicious plate full of a meal that is best shared with your friends and family, but also makes for a kingly solo meal.', 'चिकन मंधी एक पारंपरिक यमनी व्यंजन है, जिसमें सुगंधित चावल और नरम, धीमी आंच पर पका हुआ चिकन शामिल है। यह अपने समृद्ध स्वाद और अनोखे मसालों के लिए प्रसिद्ध है।', 'مندي الدجاج هو طبق تقليدي يمني يتكون من الأرز المتبل والدجاج الطري المطهو ببطء. يتميز بنكهاته العطرية وطريقة طهيه الفريدة على نار هادئة.\r\n\r\n', '2025-04-30 12:36:57', 0, '2025-04-30 12:36:57', 0, 'Available soon	', 0, 0),
(114, 41, 54, 0, 19, 'veg', 350, 5, 17.5, 367.5, 20, 0, 0, 'imresizer-1733723725496.jpg', 1, ' ഫത്തൂഷ് സാലഡ്', 'Fattoush Salad', 'फत्तूश सलाद', ' فتوش', ' ഫത്തൂഷ് സാലഡ് മിഡിൽ ഈസ്റ്റർണിലെ പ്രചാരമുള്ള ഒരു സാലഡാണ്, തക്കാളി, വളർത്തുകന്നി, വെച്ചിലക്ക, സാലട്ട് എന്നിവ പോലുള്ള പച്ചക്കറികളെയും, കറുപ്പായ അല്ലെങ്കിൽ തംഗിയുള്ള പിതാ ബ്രെഡ് കഷണങ്ങളെയും ചേർത്ത് തയ്യാറാക്കുന്നു. ഓലിവ് എണ്ണ, നാരങ്ങാനീർ, പുതിനയും മസാലയും ചേർത്ത് ഇതിന്റെ താർക്കിഷ്, ചോറും പുതിയ രുചിയുമായി ഉപയോഗിക്കുന്നു. ഗ്രിൽ ചെയ്ത മാംസം അല്ലെങ്കിൽ ഫലാഫലുമായി ഇത് ഒരു സാധാരണ സൈഡ് ഡിഷ് ആയി ഉപയോഗിക്കുന്നു.\r\n\r\n', 'Essentially a bread salad with in-season vegetables and herbs, dressed in a zesty lime vinaigrette. The very fresh, out of the oven pita bread makes this simply awesome.', 'फत्तूश सलाद एक पारंपरिक मध्य-पूर्वी व्यंजन है, जिसमें ताजे सब्जियों जैसे टमाटर, खीरा, मूली, और सलाद पत्तियां डाली जाती हैं, साथ ही तली हुई या भुनी हुई पिटा ब्रेड के कुरकुरे टुकड़े भी होते हैं। इस सलाद को जैतून का तेल, नींबू का रस, अनार के सिरके, और मसालेदार जड़ी-बूटियों से सजाया जाता है, जिससे इसे एक तीव्र और ताजगी से भरपूर स्वाद मिलता है। यह व्यंजन सामान्यत: ग्रिल किए गए मांस या फलाफेल के साथ परोसा जाता है।', ' فتوش هو طبق سلطة تقليدي من المطبخ الشرق أوسطي يتكون من مجموعة من الخضروات الطازجة مثل الطماطم والخيار والفجل والخس، بالإضافة إلى قطع الخبز العربي المحمص أو المقلي المقرمشة. يتم تتبيله بزيت الزيتون وعصير الليمون ودبس الرمان ومزيج من الأعشاب والتوابل، مما يعطيه طعمًا لاذعًا ومنعشًا. عادةً ما يتم تقديمه كطبق جانبي مع اللحوم المشوية أو الفلافل.\r\n\r\n', '2025-05-12 19:31:55', 0, '2025-05-12 19:31:55', 0, 'Available soon	', 0, 0),
(117, 41, 51, 0, 19, 'non-veg', 315, 5, 15.75, 330.75, 13, 0, 0, 'imresizer-1733723110113.jpg', 1, 'ഷിഷ് താവൂക്ക്', 'Shish Tawook', 'शिश तावूक', 'شيش طاووق', 'ഷിഷ് താവൂക്ക് ഒരു പ്രമാണമായ മിഡിൽ ഈസ്റ്റർൻ വിഭവമാണ്, പച്ചമുളക്, വെളുത്തുള്ളി, നാരങ്ങാനീർ, യൂഗർട്ട് എന്നിവ ചേർന്ന് മസാലകളിൽ മാരിനേറ്റ് ചെയ്ത ചിക്കൻ ക്യൂബുകൾ ഉപയോഗിച്ച് തയ്യാറാക്കുന്നു. ഈ ചിക്കൻ സ്ക്യൂവറിൽ എടുക്കുകയും, ഗ്രിൽ ചെയ്ത് മൃദുവായ, രുചികരമായ ചിക്കൻ പീസുകൾ ആയി ഉണ്ടാക്കുന്നു. ഇത് സാധാരണയായി ചോറോ പിതാ ബ്രെഡ് അല്ലെങ്കിൽ ഒരു പുതുതായി തയ്യാറാക്കിയ സാലഡോടു കൂടി സമർപ്പിക്കുന്നു.', 'The very popular skewered chicken in the Middle East. The flavour is all about its marinade. The marination of earthy spices , yoghurt, lemon juice and garlic makes up the perfection.', ': शिश तावूक एक लोकप्रिय मध्य-पूर्वी व्यंजन है, जिसमें चिकन के टुकड़ों को मसालों, लहसुन, नींबू और दही में मरीनेट किया जाता है। फिर इस चिकन को स्क्यूअर पर लगाकर ग्रिल किया जाता है, जिससे यह नर्म और रसदार बन जाता है, और एक smoky स्वाद प्राप्त होता है। इसे चावल, पिटा ब्रेड या ताजे सलाद के साथ परोसा जाता है।', 'شيش طاووق هو طبق مشهور في المطبخ الشرق أوسطي يتم تحضير قطع الدجاج المقطعة والمتبلة بمزيج من التوابل والثوم والليمون والزبادي. يتم وضع الدجاج على أسياخ ويشوى حتى يصبح طريًا ولذيذًا، مع نكهة مدخنة. يُقدّم عادة مع الأرز أو خبز البيتا أو سلطة طازجة.\r\n\r\n', '2025-05-12 19:31:55', 0, '2025-05-12 19:31:55', 0, 'Available soon	', 0, 0),
(126, 41, 145, NULL, 19, 'non-veg', 100, 5, 5, 105, 23, 0, 0, 'poratta and  beef.jpg', 0, 'പൊറോട്ടയും ചിക്കൻ', 'Poratta  and  Chicken', 'Poratta  and  Chicken', 'Poratta  and  Chicken', 'പൊറോട്ടയും ചിക്കൻ', 'Poratta  and  Chicken', 'Poratta  and  Chicken', 'Poratta  and  Chicken', '2025-06-27 11:29:56', 131, '2025-06-27 11:29:56', 131, 'Available soon	', 0, 0),
(127, 41, 146, NULL, 19, 'veg', 12, 5, 0.6, 12.6, 4, 0, 0, 'POROTTA.png', 0, 'പൊറോട്ട', 'Poratta', 'Poratta', 'Poratta', 'പൊറോട്ട', 'Poratta', 'Poratta', 'Poratta', '2025-06-27 11:35:01', 131, '2025-06-27 11:35:01', 131, 'Available soon	', 0, 0),
(128, 70, 140, 0, 19, 'non-veg', 0, 5, 0, 0, 9, 0, 1, 'beef madfoon.png', 1, ' ബീഫ് മദ്ഫൂൺ', 'Beef Madfoon', 'बीफ मद्फून', ' بيف مدفون', 'ബീഫ് മദ്ഫൂൺ എന്നത് അറബിയിൽ \"മറവുചെയ്തത്\" എന്നർത്ഥം വരുന്ന ഒരു മിഡിൽ ഈസ്റ്റേൺ വിഭവമാണ്. ഇത് സാധാരണയായി ഭൂഗർഭ അടുപ്പിലോ ഒവനിലോ അതിസാവധാനം വേവിച്ച ശേഷം സുഗന്ധമുള്ള കുങ്കുമപ്പൂവ്യാന സഹിതം അരിയോടെ സമർപ്പിക്കുന്നു.', 'Tender beef, enveloped in foil and steamed to melt-in-your-mouth perfection, served alongside a savory mix of potatoes and pepper. Complemented by a generous portion of fragrant,flavorful rice to round out the meal.', 'बीफ मद्फून, जिसका अर्थ अरबी में \"दफन किया हुआ\" होता है, एक मध्य पूर्वी व्यंजन है जिसमें मांस (अक्सर बीफ) को ज़मीन के नीचे बने गड्ढे या ओवन में धीमी आंच पर पकाया जाता है और फिर सुगंधित केसर चावल के साथ परोसा जाता है।', 'بيف مدفون، وتعني \"مدفون\" في العربية، هو طبق من الشرق الأوسط حيث يُطهى اللحم، وغالبًا اللحم البقري، ببطء في حفرة تحت الأرض أو في الفرن، ثم يُقدَّم على طبقة من الأرز المنكّه بالزعفران.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(129, 70, 139, 0, 19, 'non-veg', 0, 5, 0, 0, 15, 0, 1, 'chickeen haneed.png', 1, 'ചിക്കൻ ഹനീദ്', 'Chicken Haneed', ' चिकन हनीद', ' حنيذ الدجاج', 'ചിക്കൻ ഹനീത് എന്നത് യെമനിയുടെ പരമ്പരാഗത ഹനീത്തിന്റെ (സാധാരണയായി ആട്ടിറച്ചി) ഒരു വകഭേദമാണ്. ഇത് മസാലകളിൽ മുക്കിയ ചിക്കൻ അതിസാവധാനം ഒവനിൽ ചുട്ട് തയ്യാറാക്കുന്നതാണ്, സാധാരണയായി അരിയും മിശ്രിത കറിയുമൊത്ത് പരിമാണിക്കും.', 'Chicken Haneeth is a slow-roasted chicken dish, a variation of the traditional Yemeni Haneeth (usually lamb), featuring marinated chicken baked in an oven, often served with rice and a mixed vegetable stew', 'चिकन हनीथ एक धीमी आंच पर पकाया जाने वाला चिकन व्यंजन है, जो पारंपरिक यमनी हनीथ (आमतौर पर मेमना) का एक प्रकार है। इसमें मसालों में मैरीनेट किया हुआ चिकन ओवन में बेक किया जाता है और आमतौर पर चावल और मिश्रित सब्जी स्टू के साथ परोसा जाता है।', 'الحنيذ بالدجاج هو طبق دجاج مشوي ببطء، وهو نسخة من الحنيذ اليمني التقليدي (الذي يكون عادةً من لحم الضأن)، حيث يتم تتبيل الدجاج وطهيه في الفرن، وغالبًا ما يُقدم مع الأرز واليخنة المشكلة.', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(130, 70, 138, 0, 19, 'veg', 0, 5, 0, 0, 20, 0, 0, 'french fries.png', 1, 'ഫ്രെഞ്ച് ഫ്രൈസ്', 'French Fries', 'फ़्रेंच फ्राइज़', 'بطاطس مقلية', 'ഫ്രെഞ്ച് ഫ്രൈസ് എന്നത് സാധാരണയായി ആലൂ പൊടിയായി മുറിച്ച് എരിവ് ചേർത്ത് പൊരിച്ചെടുത്തൊരു ചിറകായ ഭക്ഷണമോ സൈഡ് ഡിഷുമാണ്.', 'French fries are a popular snack or side dish made from potatoes that are cut into thin strips and deep-fried until golden brown and crispy', 'फ़्रेंच फ्राइज़ एक लोकप्रिय स्नैक या साइड डिश है, जिसे आलू को पतली स्ट्रिप्स में काटकर सुनहरा भूरा और कुरकुरा होने तक डीप-फ्राई किया जाता है।', 'البطاطس المقلية هي وجبة خفيفة أو طبق جانبي شهير مصنوع من البطاطس التي تُقطع إلى شرائح رفيعة وتُقلى بعمق حتى تصبح ذهبية ومقرمشة.', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(131, 70, 137, 0, 19, 'non-veg', 0, 5, 0, 0, 8, 0, 1, 'beef-mandi.jpg', 1, 'Beef mandi', 'Beef mandi', 'Beef mandi', 'Beef mandi', 'Beef mandi', 'A flavourful meal complete with the most tender pieces of beef and the appetizing combination of potato, pepper and flavourful rice. A treat you don\'t want to miss.', 'Beef mandi', 'Beef mandi', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(132, 70, 136, 0, 19, 'veg', 0, 5, 0, 0, 19, 0, 0, 'mandi-rice.jpg', 1, 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', 'Mandi rice', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(133, 70, 135, 0, 19, 'veg', 0, 5, 0, 0, 19, 0, 0, 'white-rice.jpg', 1, 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', 'White rice', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(134, 70, 133, 0, 19, 'veg', 0, 5, 0, 0, 19, 0, 0, 'Alfatha.png', 1, 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', 'Fatha veg', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(135, 70, 129, 0, 19, 'non-veg', 0, 5, 0, 0, 15, 0, 1, 'mehrab-chicken.png', 1, 'Mehrab chicken malayalam', 'Mehrab chicken', 'Mehrab chicken hindi', 'Mehrab chicken arabic', 'Mehrab chicken malayalam', 'A subtly flavored rice complemented by perfectly slow grilled, succulent chicken. An ideal meal for those who appreciate mild, yet delightful tastes.', 'Mehrab chicken hindi', 'Mehrab chicken arabic', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(136, 70, 127, 0, 19, 'non-veg', 0, 5, 0, 0, 5, 0, 0, 'chicken-seekh.jpeg', 1, 'Chicken seekh malayalam', 'Chicken seekh', 'Chicken seekh hindi', 'Chicken seekh arabic', 'Chicken seekh malayalam', 'Chicken seekh', 'Chicken seekh hindi', 'Chicken seekh arabic', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(137, 70, 126, 0, 19, 'non-veg', 0, 5, 0, 0, 5, 0, 0, 'Seekh-Kebab.jpg', 1, 'seekh kabab malayalam', 'Seekh kabab beef', 'seekh kabab hindi', 'seekh kabab arabic', 'seekh kabab malayalam', 'Seekh kabab beef', 'seekh kabab hindi', 'seekh kabab arabic', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(138, 70, 122, 0, 19, 'veg', 0, 5, 0, 0, 18, 0, 0, 'kunafe.jpg', 1, 'കുനാഫ', 'Kunafe', ' कुनाफा', 'Arabic name', 'കുനാഫ  ഒരു പ്രശസ്തമായ മധ്യപൗരസ്ത്യ മിഠായിയാണ്', 'Kunafa (or Knafeh) is a popular Middle Eastern dessert made with a base of shredded phyllo dough or semolina, soaked in sweet syrup, and often topped with pistachios or other nuts.', 'एक लोकप्रिय मध्य पूर्वी मिठाई है, जिसे कटा हुआ फिलो आटा (कताीफ) या सूजी से बनाया जाता है', 'Arabic description', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(139, 70, 121, 0, 19, 'veg', 0, 5, 0, 0, 20, 1, 0, 'jerjeer-salad.jpg', 1, 'അരുഗുല സലാഡ്', 'Jarjeer salad', 'अरुगुला सलाद', 'سلطة جرجير', 'ഈ സലാഡിന് ചിക്കൻ ഗ്രിൽ അല്ലെങ്കിൽ പനീർ ഗ്രിൽ ചെയ്യുന്നതിൽ കൂടി തുണിയാകും.', 'This salad pairs well with grilled chicken or grilled paneer.', 'यह सलाद ग्रिल्ड चिकन या ग्रिल्ड पनीर के साथ अच्छा लगता है।', 'تتناسب هذه السلطة بشكل جيد مع الدجاج المشوي أو الجبن المشوي.', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(140, 70, 120, 0, 19, 'veg', 0, 5, 0, 0, 20, 1, 0, 'taboola-salad.jpg', 1, 'ടബൂല സലാഡ്', 'Taboola salad', 'टैबूलेह  सलाद', 'تبولة  سلطة ', 'Taboola സലാഡ് സാധാരണയായി ഗ്രിൽഡ് മീറ്റുകൾ, ബ്രെഡ് (പിതാ ബ്രെഡ്), ഹമ്മസ് എന്നിവയ്ക്കൊപ്പം കഴിക്കാം. ഇത് ഒരു ഹെൽത്തി സലാഡ് ആയതിനാൽ ഡയറ്റ് ചെയ്യുന്നവർക്കും മികച്ചതാണ്.', 'Tabbouleh salad is usually served with grilled meats, pita bread, or hummus. It\'s a healthy and refreshing dish, perfect for diet-conscious individuals.', 'टैबूलेह सलाद को आमतौर पर ग्रिल्ड मीट, पिटा ब्रेड या हम्मस के साथ परोसा जाता है। यह एक हेल्दी और फ्रेश सलाद है, जो डाइट फॉलो करने वालों के लिए भी बेहतरीन है', 'عادةً ما تُقدَّم سلطة التبولة مع اللحم المشوي، خبز البيتا، أو الحمص. وهي خيار صحي ومنعش، خاصة لمن', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0),
(141, 70, 55, 0, 19, 'veg', 0, 5, 0, 0, 20, 1, 0, 'imresizer-1733552512083.jpg', 1, ' മിന്‍റ് ലൈം', 'Mint Lime', ' पुदीना नींबू ', 'نعناع ليمون ', 'മിന്‍റ് ലൈം ഒരു താസ്സും പുതുമുള്ള ദ്രാവകമാണ്, പുതിയ മിൻറ് ഇലകൾ, നാരങ്ങാനീർ, ഒരു ചെറിയ മധുരം എന്നിവ ചേർത്ത് തയ്യാറാക്കുന്നു. മിൻറ് ഇലകൾ തണുത്തും സുഗന്ധവുമുള്ള രുചി നൽകുന്നു, അതേ സമയം നാരങ്ങാനീർ ഇതിന് കഷ്ണമായയും വൃദ്ധനായി ചൂടോടെ രുചിയുണ്ട്. ഇത് എത്രയാണെങ്കിൽ തണുപ്പിക്കാൻ, ഐസുമായി ചേർത്ത് കുടിക്കാൻ ഒരു മികച്ച തിരഞ്ഞെടുപ്പാണ്.', 'A refreshing and healthy drink with freshly squeezed juice of mint and lemon. The delicate and tender texture of mint with its flavour adding purposes makes the dish.', 'पुदीना नींबू एक ताजगी से भरपूर और खट्टा-मीठा पेय है, जो ताजे पुदीने के पत्तों, नींबू के रस, और थोड़े से मीठे तत्वों से तैयार किया जाता है। पुदीना पत्तियां इसे ठंडा और खुशबूदार स्वाद देती हैं, जबकि नींबू का रस इसे तीव्र और खट्टा बनाता है। यह गर्मियों में ताजगी देने वाला पेय है और बर्फ के साथ ठंडा परोसा जाता है।', 'نعناع ليمون هو مشروب منعش وحامض يتكون من أوراق النعناع الطازجة وعصير الليمون ولمسة من التحلية. تضيف أوراق النعناع نكهة باردة وعطرية، بينما يمنح عصير الليمون طعماً حامضاً ولاذعاً. إنه المشروب المثالي للتغلب على حرارة الصيف، وعادةً ما يُقدّم بارداً مع مكعبات الثلج ليكون منعشاً ومرويّاً.\r\n\r\n', '2025-06-28 14:59:26', 0, '2025-06-28 14:59:26', 0, 'Available soon	', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `subcategory_id` int NOT NULL AUTO_INCREMENT,
  `subcategory_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_ma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_hi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_ar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_desc_ma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_desc_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_desc_hi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_desc_ar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_index` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcategory_id`, `subcategory_code`, `store_id`, `subcategory_name_ma`, `subcategory_name_en`, `subcategory_name_hi`, `subcategory_name_ar`, `subcategory_desc_ma`, `subcategory_desc_en`, `subcategory_desc_hi`, `subcategory_desc_ar`, `order_index`, `is_active`) VALUES
(5, '007', '0', 'Fish', 'Fish', 'Fish', 'Fish', 'Fish', '        Fish', 'Fish', 'Fish', 20, 1),
(4, '006', '0', 'Chicken', 'Chicken', 'Chicken', 'Chicken', 'Chicken', 'Chicken', 'Chicken', 'Chicken', 19, 1),
(3, '005', '0', 'Vegetarian', 'Vegetarian', 'Vegetarian', 'Vegetarian', 'Vegetarian', 'Vegetarian', 'Vegetarian', 'Vegetarian', 19, 1),
(10, 'madfoon', '0', 'മദ്‌ഫൂൺ', 'Madfoon', 'मदफून', 'المدفون', 'മദ്‌ഫൂൺ', '    Madfoon', 'मदफून', 'المدفون', 8, 1),
(9, 'mutton', '0', ' മട്ടൺ', 'Mutton', 'मटन', 'لحم الضأن', ' മട്ടൺ', '   Mutton ', 'मटन', 'لحم الضأن', 11, 1),
(8, '013', '0', ' ബീഫ്', 'Beeff', 'गाय का मांस', 'لحم', ' ബീഫ്', '    Beeff', 'गाय का मांस', 'لحم', 15, 1),
(11, 'we', '0', 'wq', 'wqw', 'w', 'wqw', 'wqw', '    wq', 'qwqw', 'wqw', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE IF NOT EXISTS `tax` (
  `tax_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `tax_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`tax_id`, `country_id`, `tax_type`, `tax_rate`, `is_active`) VALUES
(22, 29, 'vat', 5, 1),
(19, 27, 'gst', 5, 1),
(17, 28, 'vat', 5, 1),
(23, 32, 'vat', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `token_generation`
--

DROP TABLE IF EXISTS `token_generation`;
CREATE TABLE IF NOT EXISTS `token_generation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_generation`
--

INSERT INTO `token_generation` (`id`, `token_id`) VALUES
(1, 1411);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `userroleid` int NOT NULL COMMENT '1=Admin 2=Shop Owner 3=Employee 4=Delivery boy 5=Supplier 6=Kitchen',
  `store_id` int NOT NULL COMMENT 'If store_id 0 admin otherwise shop owner',
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserPhoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int NOT NULL COMMENT '1 active 0 inactive',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `userroleid`, `store_id`, `Name`, `userEmail`, `userName`, `userPassword`, `UserPhoneNumber`, `userAddress`, `profileimg`, `is_active`) VALUES
(50, 1, 0, 'Emigo', 'support.emigo@gmail.com', 'emigo', '21232f297a57a5a743894a0e4a801fc3', '4532222454', 'Kochi', '', 1),
(131, 2, 41, 'Mehrab Mandhi Restuarant', 'mehrabmandhi@gmail.com', 'mehrab', '21232f297a57a5a743894a0e4a801fc3', '+919746833388', 'Edapally,kochi', '', 1),
(153, 2, 56, 'vishnu k v', 'v@gmail.com', 'test1234', '16d7a4fca7442dda3ad93c9a726597e4', '7012713312', 'qddress', '', 1),
(154, 2, 57, 'eeeeeeeeeeeeeeee', 'eeeee@gmail.com', 'eee', 'd2f2297d6e829cd3493aa7de4416a18f', '7012713312', 'eeeeeeeeeeeeeeeee', '', 1),
(155, 3, 57, 'eeeeeeeeeeeeeeee', 'eeeee@gmail.com', 'eeee', '670da91be64127c92faac35c8300e814', '7012713312', 'eeeeeeeeeeeeeeeee', '', 1),
(156, 5, 41, 'Alan', 'alan@gmail.com', 'alan', '21232f297a57a5a743894a0e4a801fc3', '9847421081', 'addressssss', NULL, 1),
(157, 5, 41, 'Eldho', 'eldho@gmail.com', 'eldho', '21232f297a57a5a743894a0e4a801fc3', '7012713312', 'eldho address', NULL, 1),
(158, 6, 41, 'Sivasankar', 'siva@gmail.com', 'siva', '0e7517141fb53f21ee439b355b5a1d0a', '7894561230', 'address', NULL, 1),
(159, 4, 41, 'Arjun', 'arjun@gmail.com', 'arjun', '7e0d07c7716dc94a6cea10875e3ae4e3', '9876543210', 'qddress', NULL, 1),
(176, 2, 64, 'vishnu', 'vishnu@gmail.com', 'vishnu', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kochi,kakkanad', '', 1),
(177, 3, 64, 'vishnu', 'vishnu@gmail.com', 'arjun', 'b59c67bf196a4758191e42f76670ceba', '7510949135', 'kochi,kakkanad', '', 1),
(178, 6, 64, 'sreeraj', 'sreeraj@gmail.com', 'sreeraj', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'vazhithala', NULL, 1),
(179, 2, 64, 'abhijith', 'abhijth@gmail.com', 'abhijith', '21232f297a57a5a743894a0e4a801fc3', '7012713313', 'vazhithala', NULL, 1),
(180, 2, 65, 'aaareg', 'aaa@gmail.com', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', '1234567890', 'wsw', '', 1),
(181, 3, 65, 'aaareg', 'aaa@gmail.com', 'user2', '7e58d63b60197ceb55a1c487989a3720', '1234567890', 'wsw', '', 1),
(183, 5, 41, 'Aravind', 'aravind@gmail.com', 'aravind', '21232f297a57a5a743894a0e4a801fc3', '9876543210', 'address', NULL, 1),
(184, 2, 66, 'Vishnu Store', 'vishnukv@gmail.com', 'vishnukv', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kottayam', '', 1),
(185, 3, 66, 'Vishnu Store', 'vishnukv@gmail.com', 'vishnuuser', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kottayam', '', 1),
(186, 2, 67, 'TestStore', 'Test@gmail.com', 'owner', '72122ce96bfec66e2396d2e25225d70a', '1234567890', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', '', 1),
(187, 3, 67, 'TestStore', 'Test@gmail.com', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', '1234567890', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', '', 1),
(188, 2, 68, 'test store', 'test@gmail.com', 'test', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kottayam', '', 1),
(189, 3, 68, 'test store', 'test@gmail.com', 'testuser', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kottayam', '', 1),
(190, 2, 69, 'Test quatar store', 'testqtr@gmail.com', 'testqtr', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kochi,kakkanad', '', 1),
(191, 3, 69, 'Test quatar store', 'testqtr@gmail.com', 'qtruser', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kochi,kakkanad', '', 1),
(192, 6, 69, 'testkitchen', 'Arjunvt004@gmail.com', 'testkitchen', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'Theruvath(h), kizhathiri p. o, ramapuram, kottayam(dist)', NULL, 1),
(193, 2, 70, 'Arjun Store', 'arjun@gmail.com', 'arjunn', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kottayam', '', 1),
(194, 3, 70, 'Arjun Store', 'arjun@gmail.com', 'arjunuser', '21232f297a57a5a743894a0e4a801fc3', '7510949135', 'kottayam', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_logout`
--

DROP TABLE IF EXISTS `user_login_logout`;
CREATE TABLE IF NOT EXISTS `user_login_logout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `store_id` int NOT NULL,
  `date` date NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_login_logout`
--

INSERT INTO `user_login_logout` (`id`, `user_id`, `store_id`, `date`, `login_time`, `logout_time`, `created_at`) VALUES
(1, 131, 41, '2025-01-04', '2025-01-04 15:43:37', '2025-08-25 17:15:31', '2025-01-04 10:13:37'),
(2, 131, 41, '2025-01-04', '2025-01-04 15:53:04', '2025-08-25 17:15:31', '2025-01-04 10:23:04'),
(3, 131, 41, '2025-01-04', '2025-01-04 18:36:02', '2025-08-25 17:15:31', '2025-01-04 13:06:02'),
(4, 131, 41, '2025-01-07', '2025-01-07 10:09:27', '2025-08-25 17:15:31', '2025-01-07 04:39:27'),
(5, 50, 0, '2025-01-07', '2025-01-07 10:12:04', '2025-08-28 10:31:09', '2025-01-07 04:42:04'),
(6, 131, 41, '2025-01-07', '2025-01-07 10:12:53', '2025-08-25 17:15:31', '2025-01-07 04:42:53'),
(7, 50, 0, '2025-01-07', '2025-01-07 10:19:07', '2025-08-28 10:31:09', '2025-01-07 04:49:07'),
(8, 131, 41, '2025-01-07', '2025-01-07 10:22:49', '2025-08-25 17:15:31', '2025-01-07 04:52:49'),
(9, 131, 41, '2025-01-07', '2025-01-07 10:47:55', '2025-08-25 17:15:31', '2025-01-07 05:17:55'),
(10, 50, 0, '2025-01-07', '2025-01-07 10:48:08', '2025-08-28 10:31:09', '2025-01-07 05:18:08'),
(11, 131, 41, '2025-01-07', '2025-01-07 11:00:32', '2025-08-25 17:15:31', '2025-01-07 05:30:32'),
(12, 131, 41, '2025-01-07', '2025-01-07 11:24:19', '2025-08-25 17:15:31', '2025-01-07 05:54:19'),
(13, 131, 41, '2025-01-07', '2025-01-07 11:27:10', '2025-08-25 17:15:31', '2025-01-07 05:57:10'),
(14, 50, 0, '2025-01-07', '2025-01-07 11:28:30', '2025-08-28 10:31:09', '2025-01-07 05:58:30'),
(15, 131, 41, '2025-01-07', '2025-01-07 11:28:56', '2025-08-25 17:15:31', '2025-01-07 05:58:56'),
(16, 50, 0, '2025-01-07', '2025-01-07 12:47:10', '2025-08-28 10:31:09', '2025-01-07 07:17:10'),
(17, 131, 41, '2025-01-07', '2025-01-07 12:47:48', '2025-08-25 17:15:31', '2025-01-07 07:17:48'),
(18, 131, 41, '2025-01-07', '2025-01-07 13:54:19', '2025-08-25 17:15:31', '2025-01-07 08:24:19'),
(19, 131, 41, '2025-01-07', '2025-01-07 17:27:43', '2025-08-25 17:15:31', '2025-01-07 11:57:43'),
(20, 50, 0, '2025-01-08', '2025-01-08 09:10:57', '2025-08-28 10:31:09', '2025-01-08 03:40:57'),
(21, 131, 41, '2025-01-08', '2025-01-08 09:11:47', '2025-08-25 17:15:31', '2025-01-08 03:41:47'),
(22, 131, 41, '2025-01-08', '2025-01-08 09:43:06', '2025-08-25 17:15:31', '2025-01-08 04:13:06'),
(23, 131, 41, '2025-01-08', '2025-01-08 10:05:30', '2025-08-25 17:15:31', '2025-01-08 04:35:30'),
(24, 50, 0, '2025-01-08', '2025-01-08 13:49:33', '2025-08-28 10:31:09', '2025-01-08 08:19:33'),
(25, 131, 41, '2025-01-08', '2025-01-08 13:51:28', '2025-08-25 17:15:31', '2025-01-08 08:21:28'),
(26, 50, 0, '2025-01-08', '2025-01-08 14:26:22', '2025-08-28 10:31:09', '2025-01-08 08:56:22'),
(27, 131, 41, '2025-01-08', '2025-01-08 14:27:14', '2025-08-25 17:15:31', '2025-01-08 08:57:14'),
(28, 131, 41, '2025-01-09', '2025-01-09 09:18:14', '2025-08-25 17:15:31', '2025-01-09 03:48:14'),
(29, 50, 0, '2025-01-09', '2025-01-09 12:22:31', '2025-08-28 10:31:09', '2025-01-09 06:52:31'),
(30, 131, 41, '2025-01-09', '2025-01-09 12:26:14', '2025-08-25 17:15:31', '2025-01-09 06:56:14'),
(31, 50, 0, '2025-01-09', '2025-01-09 14:25:10', '2025-08-28 10:31:09', '2025-01-09 08:55:10'),
(32, 131, 41, '2025-01-09', '2025-01-09 14:26:37', '2025-08-25 17:15:31', '2025-01-09 08:56:37'),
(33, 131, 41, '2025-01-09', '2025-01-09 16:21:52', '2025-08-25 17:15:31', '2025-01-09 10:51:52'),
(34, 131, 41, '2025-01-10', '2025-01-10 09:12:43', '2025-08-25 17:15:31', '2025-01-10 03:42:43'),
(35, 50, 0, '2025-01-10', '2025-01-10 16:49:04', '2025-08-28 10:31:09', '2025-01-10 11:19:04'),
(36, 131, 41, '2025-01-10', '2025-01-10 16:57:13', '2025-08-25 17:15:31', '2025-01-10 11:27:13'),
(37, 131, 41, '2025-01-10', '2025-01-10 17:02:01', '2025-08-25 17:15:31', '2025-01-10 11:32:01'),
(38, 50, 0, '2025-01-13', '2025-01-13 09:11:06', '2025-08-28 10:31:09', '2025-01-13 03:41:06'),
(39, 131, 41, '2025-01-13', '2025-01-13 09:11:23', '2025-08-25 17:15:31', '2025-01-13 03:41:23'),
(40, 50, 0, '2025-01-13', '2025-01-13 09:39:57', '2025-08-28 10:31:09', '2025-01-13 04:09:57'),
(41, 131, 41, '2025-01-13', '2025-01-13 10:56:53', '2025-08-25 17:15:31', '2025-01-13 05:26:53'),
(42, 50, 0, '2025-01-13', '2025-01-13 10:58:15', '2025-08-28 10:31:09', '2025-01-13 05:28:15'),
(43, 50, 0, '2025-01-13', '2025-01-13 12:35:00', '2025-08-28 10:31:09', '2025-01-13 07:05:00'),
(44, 131, 41, '2025-01-13', '2025-01-13 12:35:09', '2025-08-25 17:15:31', '2025-01-13 07:05:09'),
(45, 50, 0, '2025-01-13', '2025-01-13 12:58:46', '2025-08-28 10:31:09', '2025-01-13 07:28:46'),
(46, 131, 41, '2025-01-13', '2025-01-13 12:58:55', '2025-08-25 17:15:31', '2025-01-13 07:28:55'),
(47, 131, 41, '2025-01-13', '2025-01-13 16:58:01', '2025-08-25 17:15:31', '2025-01-13 11:28:01'),
(48, 50, 0, '2025-01-14', '2025-01-14 09:16:28', '2025-08-28 10:31:09', '2025-01-14 03:46:28'),
(49, 131, 41, '2025-01-14', '2025-01-14 09:43:34', '2025-08-25 17:15:31', '2025-01-14 04:13:34'),
(50, 131, 41, '2025-01-14', '2025-01-14 15:07:30', '2025-08-25 17:15:31', '2025-01-14 09:37:30'),
(51, 131, 41, '2025-01-15', '2025-01-15 09:17:55', '2025-08-25 17:15:31', '2025-01-15 03:47:55'),
(52, 131, 41, '2025-01-15', '2025-01-15 12:35:52', '2025-08-25 17:15:31', '2025-01-15 07:05:52'),
(53, 131, 41, '2025-01-15', '2025-01-15 14:10:53', '2025-08-25 17:15:31', '2025-01-15 08:40:53'),
(54, 131, 41, '2025-01-15', '2025-01-15 14:55:39', '2025-08-25 17:15:31', '2025-01-15 09:25:39'),
(55, 131, 41, '2025-01-16', '2025-01-16 09:17:43', '2025-08-25 17:15:31', '2025-01-16 03:47:43'),
(56, 131, 41, '2025-01-16', '2025-01-16 10:11:35', '2025-08-25 17:15:31', '2025-01-16 04:41:35'),
(57, 131, 41, '2025-01-16', '2025-01-16 10:20:14', '2025-08-25 17:15:31', '2025-01-16 04:50:14'),
(58, 131, 41, '2025-01-16', '2025-01-16 10:23:23', '2025-08-25 17:15:31', '2025-01-16 04:53:23'),
(59, 50, 0, '2025-01-17', '2025-01-17 09:15:07', '2025-08-28 10:31:09', '2025-01-17 03:45:07'),
(60, 131, 41, '2025-01-17', '2025-01-17 09:15:17', '2025-08-25 17:15:31', '2025-01-17 03:45:17'),
(61, 50, 0, '2025-01-17', '2025-01-17 09:55:50', '2025-08-28 10:31:09', '2025-01-17 04:25:50'),
(62, 50, 0, '2025-01-17', '2025-01-17 09:57:07', '2025-08-28 10:31:09', '2025-01-17 04:27:07'),
(63, 131, 41, '2025-01-17', '2025-01-17 09:59:25', '2025-08-25 17:15:31', '2025-01-17 04:29:25'),
(64, 131, 41, '2025-01-18', '2025-01-18 09:14:39', '2025-08-25 17:15:31', '2025-01-18 03:44:39'),
(65, 131, 41, '2025-01-18', '2025-01-18 09:28:10', '2025-08-25 17:15:31', '2025-01-18 03:58:10'),
(66, 50, 0, '2025-01-18', '2025-01-18 09:45:04', '2025-08-28 10:31:09', '2025-01-18 04:15:04'),
(67, 50, 0, '2025-01-18', '2025-01-18 09:46:09', '2025-08-28 10:31:09', '2025-01-18 04:16:09'),
(68, 131, 41, '2025-01-18', '2025-01-18 09:46:16', '2025-08-25 17:15:31', '2025-01-18 04:16:16'),
(69, 131, 41, '2025-01-18', '2025-01-18 09:47:34', '2025-08-25 17:15:31', '2025-01-18 04:17:34'),
(70, 131, 41, '2025-01-18', '2025-01-18 10:59:13', '2025-08-25 17:15:31', '2025-01-18 05:29:13'),
(71, 131, 41, '2025-01-18', '2025-01-18 11:25:15', '2025-08-25 17:15:31', '2025-01-18 05:55:15'),
(72, 131, 41, '2025-01-18', '2025-01-18 14:08:39', '2025-08-25 17:15:31', '2025-01-18 08:38:39'),
(73, 131, 41, '2025-01-18', '2025-01-18 18:12:19', '2025-08-25 17:15:31', '2025-01-18 12:42:19'),
(74, 131, 41, '2025-01-20', '2025-01-20 09:20:04', '2025-08-25 17:15:31', '2025-01-20 03:50:04'),
(75, 131, 41, '2025-01-20', '2025-01-20 11:33:49', '2025-08-25 17:15:31', '2025-01-20 06:03:49'),
(76, 131, 41, '2025-01-20', '2025-01-20 12:00:09', '2025-08-25 17:15:31', '2025-01-20 06:30:09'),
(77, 131, 41, '2025-01-20', '2025-01-20 15:32:09', '2025-08-25 17:15:31', '2025-01-20 10:02:09'),
(78, 131, 41, '2025-01-20', '2025-01-20 15:51:18', '2025-08-25 17:15:31', '2025-01-20 10:21:18'),
(79, 131, 41, '2025-01-21', '2025-01-21 09:12:58', '2025-08-25 17:15:31', '2025-01-21 03:42:58'),
(80, 131, 41, '2025-01-21', '2025-01-21 09:15:18', '2025-08-25 17:15:31', '2025-01-21 03:45:18'),
(81, 131, 41, '2025-01-21', '2025-01-21 09:57:20', '2025-08-25 17:15:31', '2025-01-21 04:27:20'),
(82, 131, 41, '2025-01-21', '2025-01-21 17:04:40', '2025-08-25 17:15:31', '2025-01-21 11:34:40'),
(83, 131, 41, '2025-01-21', '2025-01-21 17:05:45', '2025-08-25 17:15:31', '2025-01-21 11:35:45'),
(84, 131, 41, '2025-01-22', '2025-01-22 09:06:47', '2025-08-25 17:15:31', '2025-01-22 03:36:47'),
(85, 50, 0, '2025-01-22', '2025-01-22 12:13:22', '2025-08-28 10:31:09', '2025-01-22 06:43:22'),
(86, 127, 37, '2025-01-22', '2025-01-22 12:35:46', '0000-00-00 00:00:00', '2025-01-22 07:05:46'),
(87, 127, 37, '2025-01-22', '2025-01-22 12:36:00', '0000-00-00 00:00:00', '2025-01-22 07:06:00'),
(88, 127, 37, '2025-01-22', '2025-01-22 12:36:40', '0000-00-00 00:00:00', '2025-01-22 07:06:40'),
(89, 131, 41, '2025-01-22', '2025-01-22 12:36:56', '2025-08-25 17:15:31', '2025-01-22 07:06:56'),
(90, 127, 37, '2025-01-22', '2025-01-22 12:37:11', '0000-00-00 00:00:00', '2025-01-22 07:07:11'),
(91, 127, 37, '2025-01-22', '2025-01-22 12:42:53', '0000-00-00 00:00:00', '2025-01-22 07:12:53'),
(92, 131, 41, '2025-01-22', '2025-01-22 12:47:18', '2025-08-25 17:15:31', '2025-01-22 07:17:18'),
(93, 127, 37, '2025-01-22', '2025-01-22 12:47:30', '0000-00-00 00:00:00', '2025-01-22 07:17:30'),
(94, 127, 37, '2025-01-22', '2025-01-22 12:50:11', '0000-00-00 00:00:00', '2025-01-22 07:20:11'),
(95, 127, 37, '2025-01-22', '2025-01-22 12:52:18', '0000-00-00 00:00:00', '2025-01-22 07:22:18'),
(96, 127, 37, '2025-01-22', '2025-01-22 12:52:55', '0000-00-00 00:00:00', '2025-01-22 07:22:55'),
(97, 127, 37, '2025-01-22', '2025-01-22 12:55:12', '0000-00-00 00:00:00', '2025-01-22 07:25:12'),
(98, 127, 37, '2025-01-22', '2025-01-22 12:55:16', '0000-00-00 00:00:00', '2025-01-22 07:25:16'),
(99, 127, 37, '2025-01-22', '2025-01-22 12:55:37', '0000-00-00 00:00:00', '2025-01-22 07:25:37'),
(100, 127, 37, '2025-01-22', '2025-01-22 12:55:58', '0000-00-00 00:00:00', '2025-01-22 07:25:58'),
(101, 131, 41, '2025-01-22', '2025-01-22 12:56:06', '2025-08-25 17:15:31', '2025-01-22 07:26:06'),
(102, 127, 37, '2025-01-22', '2025-01-22 12:56:14', '0000-00-00 00:00:00', '2025-01-22 07:26:14'),
(103, 127, 37, '2025-01-22', '2025-01-22 13:00:26', '0000-00-00 00:00:00', '2025-01-22 07:30:26'),
(104, 151, 55, '2025-01-22', '2025-01-22 13:03:57', '2025-01-22 16:08:33', '2025-01-22 07:33:57'),
(105, 151, 55, '2025-01-22', '2025-01-22 13:04:13', '2025-01-22 16:08:33', '2025-01-22 07:34:13'),
(106, 151, 55, '2025-01-22', '2025-01-22 13:52:23', '2025-01-22 16:08:33', '2025-01-22 08:22:23'),
(107, 131, 41, '2025-01-22', '2025-01-22 14:07:33', '2025-08-25 17:15:31', '2025-01-22 08:37:33'),
(108, 151, 55, '2025-01-22', '2025-01-22 14:07:50', '2025-01-22 16:08:33', '2025-01-22 08:37:50'),
(109, 151, 55, '2025-01-22', '2025-01-22 14:13:12', '2025-01-22 16:08:33', '2025-01-22 08:43:12'),
(110, 131, 41, '2025-01-22', '2025-01-22 15:29:10', '2025-08-25 17:15:31', '2025-01-22 09:59:10'),
(111, 151, 55, '2025-01-22', '2025-01-22 15:29:29', '2025-01-22 16:08:33', '2025-01-22 09:59:29'),
(112, 131, 41, '2025-01-22', '2025-01-22 16:08:36', '2025-08-25 17:15:31', '2025-01-22 10:38:36'),
(113, 131, 41, '2025-01-23', '2025-01-23 09:33:55', '2025-08-25 17:15:31', '2025-01-23 04:03:55'),
(114, 50, 0, '2025-01-23', '2025-01-23 09:41:52', '2025-08-28 10:31:09', '2025-01-23 04:11:52'),
(115, 131, 41, '2025-01-23', '2025-01-23 09:45:28', '2025-08-25 17:15:31', '2025-01-23 04:15:28'),
(116, 131, 41, '2025-01-23', '2025-01-23 12:58:30', '2025-08-25 17:15:31', '2025-01-23 07:28:30'),
(117, 131, 41, '2025-01-24', '2025-01-24 09:11:38', '2025-08-25 17:15:31', '2025-01-24 03:41:38'),
(118, 131, 41, '2025-01-24', '2025-01-24 10:44:12', '2025-08-25 17:15:31', '2025-01-24 05:14:12'),
(119, 131, 41, '2025-01-24', '2025-01-24 10:47:04', '2025-08-25 17:15:31', '2025-01-24 05:17:04'),
(120, 131, 41, '2025-01-25', '2025-01-25 14:35:07', '2025-08-25 17:15:31', '2025-01-25 09:05:07'),
(121, 50, 0, '2025-01-25', '2025-01-25 14:45:47', '2025-08-28 10:31:09', '2025-01-25 09:15:47'),
(122, 131, 41, '2025-01-25', '2025-01-25 14:51:32', '2025-08-25 17:15:31', '2025-01-25 09:21:32'),
(123, 50, 0, '2025-01-25', '2025-01-25 14:59:07', '2025-08-28 10:31:09', '2025-01-25 09:29:07'),
(124, 131, 41, '2025-01-25', '2025-01-25 15:19:12', '2025-08-25 17:15:31', '2025-01-25 09:49:12'),
(125, 131, 41, '2025-01-25', '2025-01-25 15:25:02', '2025-08-25 17:15:31', '2025-01-25 09:55:02'),
(126, 50, 0, '2025-01-25', '2025-01-25 15:37:11', '2025-08-28 10:31:09', '2025-01-25 10:07:11'),
(127, 131, 41, '2025-01-25', '2025-01-25 15:43:27', '2025-08-25 17:15:31', '2025-01-25 10:13:27'),
(128, 131, 41, '2025-01-25', '2025-01-25 15:55:40', '2025-08-25 17:15:31', '2025-01-25 10:25:40'),
(129, 50, 0, '2025-01-25', '2025-01-25 15:56:28', '2025-08-28 10:31:09', '2025-01-25 10:26:28'),
(130, 131, 41, '2025-01-25', '2025-01-25 16:02:06', '2025-08-25 17:15:31', '2025-01-25 10:32:06'),
(131, 50, 0, '2025-01-25', '2025-01-25 16:10:45', '2025-08-28 10:31:09', '2025-01-25 10:40:45'),
(132, 131, 41, '2025-01-25', '2025-01-25 16:14:49', '2025-08-25 17:15:31', '2025-01-25 10:44:49'),
(133, 131, 41, '2025-01-27', '2025-01-27 09:20:21', '2025-08-25 17:15:31', '2025-01-27 03:50:21'),
(134, 131, 41, '2025-01-27', '2025-01-27 09:24:08', '2025-08-25 17:15:31', '2025-01-27 03:54:08'),
(135, 131, 41, '2025-01-27', '2025-01-27 10:25:00', '2025-08-25 17:15:31', '2025-01-27 04:55:00'),
(136, 131, 41, '2025-01-27', '2025-01-27 11:09:02', '2025-08-25 17:15:31', '2025-01-27 05:39:02'),
(137, 131, 41, '2025-01-28', '2025-01-28 09:47:40', '2025-08-25 17:15:31', '2025-01-28 04:17:40'),
(138, 50, 0, '2025-01-29', '2025-01-29 09:57:57', '2025-08-28 10:31:09', '2025-01-29 04:27:57'),
(139, 131, 41, '2025-01-29', '2025-01-29 09:58:07', '2025-08-25 17:15:31', '2025-01-29 04:28:07'),
(140, 50, 0, '2025-01-29', '2025-01-29 10:37:36', '2025-08-28 10:31:09', '2025-01-29 05:07:36'),
(141, 131, 41, '2025-01-29', '2025-01-29 10:41:19', '2025-08-25 17:15:31', '2025-01-29 05:11:19'),
(142, 50, 0, '2025-01-29', '2025-01-29 10:41:48', '2025-08-28 10:31:09', '2025-01-29 05:11:48'),
(143, 131, 41, '2025-01-29', '2025-01-29 10:45:33', '2025-08-25 17:15:31', '2025-01-29 05:15:33'),
(144, 131, 41, '2025-01-29', '2025-01-29 11:12:53', '2025-08-25 17:15:31', '2025-01-29 05:42:53'),
(145, 131, 41, '2025-01-30', '2025-01-30 09:16:48', '2025-08-25 17:15:31', '2025-01-30 03:46:48'),
(146, 50, 0, '2025-01-30', '2025-01-30 15:55:10', '2025-08-28 10:31:09', '2025-01-30 10:25:10'),
(147, 131, 41, '2025-01-30', '2025-01-30 15:57:17', '2025-08-25 17:15:31', '2025-01-30 10:27:17'),
(148, 50, 0, '2025-01-31', '2025-01-31 09:17:27', '2025-08-28 10:31:09', '2025-01-31 03:47:27'),
(149, 131, 41, '2025-01-31', '2025-01-31 09:17:37', '2025-08-25 17:15:31', '2025-01-31 03:47:37'),
(150, 50, 0, '2025-01-31', '2025-01-31 18:36:31', '2025-08-28 10:31:09', '2025-01-31 13:06:31'),
(151, 131, 41, '2025-01-31', '2025-01-31 18:40:14', '2025-08-25 17:15:31', '2025-01-31 13:10:14'),
(152, 50, 0, '2025-01-31', '2025-01-31 18:57:10', '2025-08-28 10:31:09', '2025-01-31 13:27:10'),
(153, 131, 41, '2025-01-31', '2025-01-31 18:57:18', '2025-08-25 17:15:31', '2025-01-31 13:27:18'),
(154, 131, 41, '2025-02-01', '2025-02-01 09:18:00', '2025-08-25 17:15:31', '2025-02-01 03:48:00'),
(155, 50, 0, '2025-02-01', '2025-02-01 09:21:36', '2025-08-28 10:31:09', '2025-02-01 03:51:36'),
(156, 131, 41, '2025-02-01', '2025-02-01 09:43:02', '2025-08-25 17:15:31', '2025-02-01 04:13:02'),
(157, 131, 41, '2025-02-01', '2025-02-01 12:31:21', '2025-08-25 17:15:31', '2025-02-01 07:01:21'),
(158, 50, 0, '2025-02-01', '2025-02-01 14:07:34', '2025-08-28 10:31:09', '2025-02-01 08:37:34'),
(159, 131, 41, '2025-02-01', '2025-02-01 14:07:45', '2025-08-25 17:15:31', '2025-02-01 08:37:45'),
(160, 131, 41, '2025-02-01', '2025-02-01 14:24:25', '2025-08-25 17:15:31', '2025-02-01 08:54:25'),
(161, 131, 41, '2025-02-01', '2025-02-01 15:00:50', '2025-08-25 17:15:31', '2025-02-01 09:30:50'),
(162, 131, 41, '2025-02-01', '2025-02-01 15:11:41', '2025-08-25 17:15:31', '2025-02-01 09:41:41'),
(163, 131, 41, '2025-02-01', '2025-02-01 15:49:54', '2025-08-25 17:15:31', '2025-02-01 10:19:54'),
(164, 131, 41, '2025-02-01', '2025-02-01 17:23:57', '2025-08-25 17:15:31', '2025-02-01 11:53:57'),
(165, 50, 0, '2025-02-01', '2025-02-01 17:24:45', '2025-08-28 10:31:09', '2025-02-01 11:54:45'),
(166, 131, 41, '2025-02-01', '2025-02-01 17:27:07', '2025-08-25 17:15:31', '2025-02-01 11:57:07'),
(167, 131, 41, '2025-02-01', '2025-02-01 17:37:05', '2025-08-25 17:15:31', '2025-02-01 12:07:05'),
(168, 131, 41, '2025-02-03', '2025-02-03 09:09:23', '2025-08-25 17:15:31', '2025-02-03 03:39:23'),
(169, 131, 41, '2025-02-03', '2025-02-03 09:25:26', '2025-08-25 17:15:31', '2025-02-03 03:55:26'),
(170, 131, 41, '2025-02-03', '2025-02-03 10:55:24', '2025-08-25 17:15:31', '2025-02-03 05:25:24'),
(171, 131, 41, '2025-02-03', '2025-02-03 11:13:24', '2025-08-25 17:15:31', '2025-02-03 05:43:24'),
(172, 131, 41, '2025-02-03', '2025-02-03 12:14:29', '2025-08-25 17:15:31', '2025-02-03 06:44:29'),
(173, 131, 41, '2025-02-03', '2025-02-03 12:17:57', '2025-08-25 17:15:31', '2025-02-03 06:47:57'),
(174, 131, 41, '2025-02-03', '2025-02-03 12:18:14', '2025-08-25 17:15:31', '2025-02-03 06:48:14'),
(175, 131, 41, '2025-02-03', '2025-02-03 12:26:22', '2025-08-25 17:15:31', '2025-02-03 06:56:22'),
(176, 131, 41, '2025-02-03', '2025-02-03 12:27:36', '2025-08-25 17:15:31', '2025-02-03 06:57:36'),
(177, 131, 41, '2025-02-03', '2025-02-03 12:29:22', '2025-08-25 17:15:31', '2025-02-03 06:59:22'),
(178, 131, 41, '2025-02-03', '2025-02-03 12:39:57', '2025-08-25 17:15:31', '2025-02-03 07:09:57'),
(179, 131, 41, '2025-02-03', '2025-02-03 12:40:46', '2025-08-25 17:15:31', '2025-02-03 07:10:46'),
(180, 131, 41, '2025-02-03', '2025-02-03 12:47:28', '2025-08-25 17:15:31', '2025-02-03 07:17:28'),
(181, 131, 41, '2025-02-03', '2025-02-03 12:56:20', '2025-08-25 17:15:31', '2025-02-03 07:26:20'),
(182, 131, 41, '2025-02-03', '2025-02-03 12:59:30', '2025-08-25 17:15:31', '2025-02-03 07:29:30'),
(183, 50, 0, '2025-02-03', '2025-02-03 16:50:17', '2025-08-28 10:31:09', '2025-02-03 11:20:17'),
(184, 131, 41, '2025-02-04', '2025-02-04 09:22:02', '2025-08-25 17:15:31', '2025-02-04 03:52:02'),
(185, 152, 41, '2025-02-04', '2025-02-04 10:22:15', '2025-02-04 10:22:55', '2025-02-04 04:52:15'),
(186, 131, 41, '2025-02-04', '2025-02-04 10:22:59', '2025-08-25 17:15:31', '2025-02-04 04:52:59'),
(187, 152, 41, '2025-02-04', '2025-02-04 10:23:54', '0000-00-00 00:00:00', '2025-02-04 04:53:54'),
(188, 131, 41, '2025-02-04', '2025-02-04 10:24:55', '2025-08-25 17:15:31', '2025-02-04 04:54:55'),
(189, 50, 0, '2025-02-04', '2025-02-04 12:51:49', '2025-08-28 10:31:09', '2025-02-04 07:21:49'),
(190, 131, 41, '2025-02-04', '2025-02-04 12:58:20', '2025-08-25 17:15:31', '2025-02-04 07:28:20'),
(191, 131, 41, '2025-02-04', '2025-02-04 16:04:14', '2025-08-25 17:15:31', '2025-02-04 10:34:14'),
(192, 131, 41, '2025-02-05', '2025-02-05 09:13:11', '2025-08-25 17:15:31', '2025-02-05 03:43:11'),
(193, 131, 41, '2025-02-05', '2025-02-05 18:10:44', '2025-08-25 17:15:31', '2025-02-05 12:40:44'),
(194, 131, 41, '2025-02-05', '2025-02-05 20:07:55', '2025-08-25 17:15:31', '2025-02-05 14:37:55'),
(195, 131, 41, '2025-02-06', '2025-02-06 09:14:16', '2025-08-25 17:15:31', '2025-02-06 03:44:16'),
(196, 131, 41, '2025-02-06', '2025-02-06 09:27:30', '2025-08-25 17:15:31', '2025-02-06 03:57:30'),
(197, 50, 0, '2025-02-06', '2025-02-06 10:22:35', '2025-08-28 10:31:09', '2025-02-06 04:52:35'),
(198, 131, 41, '2025-02-06', '2025-02-06 11:42:20', '2025-08-25 17:15:31', '2025-02-06 06:12:20'),
(199, 50, 0, '2025-02-06', '2025-02-06 14:34:20', '2025-08-28 10:31:09', '2025-02-06 09:04:20'),
(200, 131, 41, '2025-02-06', '2025-02-06 14:57:51', '2025-08-25 17:15:31', '2025-02-06 09:27:51'),
(201, 131, 41, '2025-02-10', '2025-02-10 10:27:15', '2025-08-25 17:15:31', '2025-02-10 04:57:15'),
(202, 50, 0, '2025-02-10', '2025-02-10 10:32:41', '2025-08-28 10:31:09', '2025-02-10 05:02:41'),
(203, 131, 41, '2025-02-11', '2025-02-11 14:23:28', '2025-08-25 17:15:31', '2025-02-11 08:53:28'),
(204, 131, 41, '2025-02-12', '2025-02-12 10:23:22', '2025-08-25 17:15:31', '2025-02-12 04:53:22'),
(205, 50, 0, '2025-02-12', '2025-02-12 10:48:09', '2025-08-28 10:31:09', '2025-02-12 05:18:09'),
(206, 131, 41, '2025-02-12', '2025-02-12 11:08:13', '2025-08-25 17:15:31', '2025-02-12 05:38:13'),
(207, 50, 0, '2025-02-12', '2025-02-12 12:48:09', '2025-08-28 10:31:09', '2025-02-12 07:18:09'),
(208, 50, 0, '2025-02-12', '2025-02-12 16:44:12', '2025-08-28 10:31:09', '2025-02-12 11:14:12'),
(209, 50, 0, '2025-02-12', '2025-02-12 17:37:47', '2025-08-28 10:31:09', '2025-02-12 12:07:47'),
(210, 154, 57, '2025-02-12', '2025-02-12 17:47:32', '2025-02-12 17:50:38', '2025-02-12 12:17:32'),
(211, 155, 57, '2025-02-12', '2025-02-12 17:51:08', '0000-00-00 00:00:00', '2025-02-12 12:21:08'),
(212, 131, 41, '2025-02-14', '2025-02-14 16:32:42', '2025-08-25 17:15:31', '2025-02-14 11:02:42'),
(213, 131, 41, '2025-02-15', '2025-02-15 09:27:18', '2025-08-25 17:15:31', '2025-02-15 03:57:18'),
(214, 50, 0, '2025-02-21', '2025-02-21 12:23:05', '2025-08-28 10:31:09', '2025-02-21 06:53:05'),
(215, 131, 41, '2025-02-21', '2025-02-21 12:23:43', '2025-08-25 17:15:31', '2025-02-21 06:53:43'),
(216, 131, 41, '2025-02-21', '2025-02-21 12:29:56', '2025-08-25 17:15:31', '2025-02-21 06:59:56'),
(217, 131, 41, '2025-02-21', '2025-02-21 14:21:22', '2025-08-25 17:15:31', '2025-02-21 08:51:22'),
(218, 131, 41, '2025-02-21', '2025-02-21 14:53:29', '2025-08-25 17:15:31', '2025-02-21 09:23:29'),
(219, 50, 0, '2025-02-21', '2025-02-21 15:43:04', '2025-08-28 10:31:09', '2025-02-21 10:13:04'),
(220, 131, 41, '2025-02-21', '2025-02-21 16:09:01', '2025-08-25 17:15:31', '2025-02-21 10:39:01'),
(221, 131, 41, '2025-02-22', '2025-02-22 09:11:50', '2025-08-25 17:15:31', '2025-02-22 03:41:50'),
(222, 131, 41, '2025-02-25', '2025-02-25 09:58:34', '2025-08-25 17:15:31', '2025-02-25 04:28:34'),
(223, 131, 41, '2025-02-27', '2025-02-27 09:33:47', '2025-08-25 17:15:31', '2025-02-27 04:03:47'),
(224, 50, 0, '2025-02-27', '2025-02-27 12:11:29', '2025-08-28 10:31:09', '2025-02-27 06:41:29'),
(225, 131, 41, '2025-02-27', '2025-02-27 12:19:56', '2025-08-25 17:15:31', '2025-02-27 06:49:56'),
(226, 50, 0, '2025-02-27', '2025-02-27 15:01:26', '2025-08-28 10:31:09', '2025-02-27 09:31:26'),
(227, 131, 41, '2025-02-27', '2025-02-27 15:02:10', '2025-08-25 17:15:31', '2025-02-27 09:32:10'),
(228, 50, 0, '2025-02-27', '2025-02-27 15:02:45', '2025-08-28 10:31:09', '2025-02-27 09:32:45'),
(229, 131, 41, '2025-02-27', '2025-02-27 15:04:16', '2025-08-25 17:15:31', '2025-02-27 09:34:16'),
(230, 131, 41, '2025-02-28', '2025-02-28 09:21:39', '2025-08-25 17:15:31', '2025-02-28 03:51:39'),
(231, 131, 41, '2025-03-01', '2025-03-01 09:12:12', '2025-08-25 17:15:31', '2025-03-01 03:42:12'),
(232, 131, 41, '2025-03-03', '2025-03-03 09:06:05', '2025-08-25 17:15:31', '2025-03-03 03:36:05'),
(233, 131, 41, '2025-03-03', '2025-03-03 11:30:24', '2025-08-25 17:15:31', '2025-03-03 06:00:24'),
(234, 156, 41, '2025-03-03', '2025-03-03 11:44:53', '2025-08-16 10:01:07', '2025-03-03 06:14:53'),
(235, 156, 41, '2025-03-03', '2025-03-03 12:05:02', '2025-08-16 10:01:07', '2025-03-03 06:35:02'),
(236, 131, 41, '2025-03-03', '2025-03-03 12:27:58', '2025-08-25 17:15:31', '2025-03-03 06:57:58'),
(237, 156, 41, '2025-03-03', '2025-03-03 12:28:21', '2025-08-16 10:01:07', '2025-03-03 06:58:21'),
(238, 50, 0, '2025-03-03', '2025-03-03 12:28:48', '2025-08-28 10:31:09', '2025-03-03 06:58:48'),
(239, 131, 41, '2025-03-03', '2025-03-03 12:28:56', '2025-08-25 17:15:31', '2025-03-03 06:58:56'),
(240, 156, 41, '2025-03-03', '2025-03-03 12:29:21', '2025-08-16 10:01:07', '2025-03-03 06:59:21'),
(241, 131, 41, '2025-03-03', '2025-03-03 12:34:05', '2025-08-25 17:15:31', '2025-03-03 07:04:05'),
(242, 156, 41, '2025-03-03', '2025-03-03 12:34:24', '2025-08-16 10:01:07', '2025-03-03 07:04:24'),
(243, 131, 41, '2025-03-03', '2025-03-03 12:42:19', '2025-08-25 17:15:31', '2025-03-03 07:12:19'),
(244, 157, 41, '2025-03-03', '2025-03-03 12:44:04', '2025-05-13 18:55:32', '2025-03-03 07:14:04'),
(245, 131, 41, '2025-03-03', '2025-03-03 12:44:36', '2025-08-25 17:15:31', '2025-03-03 07:14:36'),
(246, 157, 41, '2025-03-03', '2025-03-03 12:45:00', '2025-05-13 18:55:32', '2025-03-03 07:15:00'),
(247, 131, 41, '2025-03-03', '2025-03-03 12:48:40', '2025-08-25 17:15:31', '2025-03-03 07:18:40'),
(248, 131, 41, '2025-03-03', '2025-03-03 14:27:05', '2025-08-25 17:15:31', '2025-03-03 08:57:05'),
(249, 131, 41, '2025-03-03', '2025-03-03 14:30:03', '2025-08-25 17:15:31', '2025-03-03 09:00:03'),
(250, 156, 41, '2025-03-03', '2025-03-03 17:03:22', '2025-08-16 10:01:07', '2025-03-03 11:33:22'),
(251, 131, 41, '2025-03-03', '2025-03-03 17:04:23', '2025-08-25 17:15:31', '2025-03-03 11:34:23'),
(252, 156, 41, '2025-03-03', '2025-03-03 17:04:41', '2025-08-16 10:01:07', '2025-03-03 11:34:41'),
(253, 131, 41, '2025-03-03', '2025-03-03 17:05:33', '2025-08-25 17:15:31', '2025-03-03 11:35:33'),
(254, 156, 41, '2025-03-03', '2025-03-03 17:23:24', '2025-08-16 10:01:07', '2025-03-03 11:53:24'),
(255, 131, 41, '2025-03-03', '2025-03-03 17:24:10', '2025-08-25 17:15:31', '2025-03-03 11:54:10'),
(256, 156, 41, '2025-03-03', '2025-03-03 17:24:21', '2025-08-16 10:01:07', '2025-03-03 11:54:21'),
(257, 131, 41, '2025-03-03', '2025-03-03 17:26:35', '2025-08-25 17:15:31', '2025-03-03 11:56:35'),
(258, 131, 41, '2025-03-03', '2025-03-03 17:32:33', '2025-08-25 17:15:31', '2025-03-03 12:02:33'),
(259, 156, 41, '2025-03-03', '2025-03-03 17:32:50', '2025-08-16 10:01:07', '2025-03-03 12:02:50'),
(260, 131, 41, '2025-03-03', '2025-03-03 17:40:51', '2025-08-25 17:15:31', '2025-03-03 12:10:51'),
(261, 156, 41, '2025-03-03', '2025-03-03 17:41:19', '2025-08-16 10:01:07', '2025-03-03 12:11:19'),
(262, 156, 41, '2025-03-03', '2025-03-03 17:41:51', '2025-08-16 10:01:07', '2025-03-03 12:11:51'),
(263, 131, 41, '2025-03-03', '2025-03-03 17:43:12', '2025-08-25 17:15:31', '2025-03-03 12:13:12'),
(264, 156, 41, '2025-03-03', '2025-03-03 17:43:21', '2025-08-16 10:01:07', '2025-03-03 12:13:21'),
(265, 131, 41, '2025-03-03', '2025-03-03 17:43:46', '2025-08-25 17:15:31', '2025-03-03 12:13:46'),
(266, 156, 41, '2025-03-03', '2025-03-03 17:47:05', '2025-08-16 10:01:07', '2025-03-03 12:17:05'),
(267, 156, 41, '2025-03-03', '2025-03-03 17:52:21', '2025-08-16 10:01:07', '2025-03-03 12:22:21'),
(268, 156, 41, '2025-03-03', '2025-03-03 17:54:12', '2025-08-16 10:01:07', '2025-03-03 12:24:12'),
(269, 131, 41, '2025-03-03', '2025-03-03 17:54:34', '2025-08-25 17:15:31', '2025-03-03 12:24:34'),
(270, 156, 41, '2025-03-03', '2025-03-03 17:54:59', '2025-08-16 10:01:07', '2025-03-03 12:24:59'),
(271, 157, 41, '2025-03-03', '2025-03-03 17:56:15', '2025-05-13 18:55:32', '2025-03-03 12:26:15'),
(272, 131, 41, '2025-03-03', '2025-03-03 18:14:56', '2025-08-25 17:15:31', '2025-03-03 12:44:56'),
(273, 131, 41, '2025-03-04', '2025-03-04 09:14:35', '2025-08-25 17:15:31', '2025-03-04 03:44:35'),
(274, 156, 41, '2025-03-04', '2025-03-04 09:27:49', '2025-08-16 10:01:07', '2025-03-04 03:57:49'),
(275, 157, 41, '2025-03-04', '2025-03-04 09:27:57', '2025-05-13 18:55:32', '2025-03-04 03:57:57'),
(276, 131, 41, '2025-03-04', '2025-03-04 09:31:19', '2025-08-25 17:15:31', '2025-03-04 04:01:19'),
(277, 158, 41, '2025-03-04', '2025-03-04 09:32:54', '2025-08-25 09:13:08', '2025-03-04 04:02:54'),
(278, 156, 41, '2025-03-04', '2025-03-04 09:43:36', '2025-08-16 10:01:07', '2025-03-04 04:13:36'),
(279, 158, 41, '2025-03-04', '2025-03-04 09:43:47', '2025-08-25 09:13:08', '2025-03-04 04:13:47'),
(280, 131, 41, '2025-03-04', '2025-03-04 09:49:24', '2025-08-25 17:15:31', '2025-03-04 04:19:24'),
(281, 156, 41, '2025-03-04', '2025-03-04 09:54:30', '2025-08-16 10:01:07', '2025-03-04 04:24:30'),
(282, 158, 41, '2025-03-04', '2025-03-04 10:04:16', '2025-08-25 09:13:08', '2025-03-04 04:34:16'),
(283, 131, 41, '2025-03-04', '2025-03-04 10:13:08', '2025-08-25 17:15:31', '2025-03-04 04:43:08'),
(284, 156, 41, '2025-03-04', '2025-03-04 10:14:55', '2025-08-16 10:01:07', '2025-03-04 04:44:55'),
(285, 158, 41, '2025-03-04', '2025-03-04 10:16:32', '2025-08-25 09:13:08', '2025-03-04 04:46:32'),
(286, 131, 41, '2025-03-04', '2025-03-04 10:43:14', '2025-08-25 17:15:31', '2025-03-04 05:13:14'),
(287, 158, 41, '2025-03-04', '2025-03-04 10:46:08', '2025-08-25 09:13:08', '2025-03-04 05:16:08'),
(288, 131, 41, '2025-03-04', '2025-03-04 11:06:14', '2025-08-25 17:15:31', '2025-03-04 05:36:14'),
(289, 158, 41, '2025-03-04', '2025-03-04 11:12:15', '2025-08-25 09:13:08', '2025-03-04 05:42:15'),
(290, 131, 41, '2025-03-04', '2025-03-04 11:54:21', '2025-08-25 17:15:31', '2025-03-04 06:24:21'),
(291, 156, 41, '2025-03-04', '2025-03-04 11:55:17', '2025-08-16 10:01:07', '2025-03-04 06:25:17'),
(292, 158, 41, '2025-03-04', '2025-03-04 11:56:13', '2025-08-25 09:13:08', '2025-03-04 06:26:13'),
(293, 131, 41, '2025-03-04', '2025-03-04 12:04:50', '2025-08-25 17:15:31', '2025-03-04 06:34:50'),
(294, 158, 41, '2025-03-04', '2025-03-04 12:15:00', '2025-08-25 09:13:08', '2025-03-04 06:45:00'),
(295, 131, 41, '2025-03-04', '2025-03-04 12:24:37', '2025-08-25 17:15:31', '2025-03-04 06:54:37'),
(296, 158, 41, '2025-03-04', '2025-03-04 12:33:10', '2025-08-25 09:13:08', '2025-03-04 07:03:10'),
(297, 156, 41, '2025-03-04', '2025-03-04 12:55:57', '2025-08-16 10:01:07', '2025-03-04 07:25:57'),
(298, 131, 41, '2025-03-04', '2025-03-04 14:36:28', '2025-08-25 17:15:31', '2025-03-04 09:06:28'),
(299, 157, 41, '2025-03-04', '2025-03-04 14:36:48', '2025-05-13 18:55:32', '2025-03-04 09:06:48'),
(300, 156, 41, '2025-03-04', '2025-03-04 14:37:14', '2025-08-16 10:01:07', '2025-03-04 09:07:14'),
(301, 131, 41, '2025-03-04', '2025-03-04 15:33:29', '2025-08-25 17:15:31', '2025-03-04 10:03:29'),
(302, 157, 41, '2025-03-04', '2025-03-04 15:33:55', '2025-05-13 18:55:32', '2025-03-04 10:03:55'),
(303, 131, 41, '2025-03-04', '2025-03-04 15:37:45', '2025-08-25 17:15:31', '2025-03-04 10:07:45'),
(304, 156, 41, '2025-03-04', '2025-03-04 15:38:55', '2025-08-16 10:01:07', '2025-03-04 10:08:55'),
(305, 131, 41, '2025-03-04', '2025-03-04 15:45:35', '2025-08-25 17:15:31', '2025-03-04 10:15:35'),
(306, 157, 41, '2025-03-04', '2025-03-04 15:45:49', '2025-05-13 18:55:32', '2025-03-04 10:15:49'),
(307, 158, 41, '2025-03-04', '2025-03-04 15:46:27', '2025-08-25 09:13:08', '2025-03-04 10:16:27'),
(308, 156, 41, '2025-03-04', '2025-03-04 16:01:43', '2025-08-16 10:01:07', '2025-03-04 10:31:43'),
(309, 157, 41, '2025-03-04', '2025-03-04 16:01:57', '2025-05-13 18:55:32', '2025-03-04 10:31:57'),
(310, 131, 41, '2025-03-04', '2025-03-04 16:02:22', '2025-08-25 17:15:31', '2025-03-04 10:32:22'),
(311, 158, 41, '2025-03-04', '2025-03-04 16:29:22', '2025-08-25 09:13:08', '2025-03-04 10:59:22'),
(312, 156, 41, '2025-03-04', '2025-03-04 16:31:31', '2025-08-16 10:01:07', '2025-03-04 11:01:31'),
(313, 158, 41, '2025-03-04', '2025-03-04 16:35:23', '2025-08-25 09:13:08', '2025-03-04 11:05:23'),
(314, 131, 41, '2025-03-04', '2025-03-04 16:54:53', '2025-08-25 17:15:31', '2025-03-04 11:24:53'),
(315, 156, 41, '2025-03-04', '2025-03-04 17:00:07', '2025-08-16 10:01:07', '2025-03-04 11:30:07'),
(316, 158, 41, '2025-03-04', '2025-03-04 17:00:30', '2025-08-25 09:13:08', '2025-03-04 11:30:30'),
(317, 131, 41, '2025-03-04', '2025-03-04 17:14:11', '2025-08-25 17:15:31', '2025-03-04 11:44:11'),
(318, 158, 41, '2025-03-04', '2025-03-04 17:15:09', '2025-08-25 09:13:08', '2025-03-04 11:45:09'),
(319, 156, 41, '2025-03-04', '2025-03-04 17:15:40', '2025-08-16 10:01:07', '2025-03-04 11:45:40'),
(320, 158, 41, '2025-03-04', '2025-03-04 17:16:23', '2025-08-25 09:13:08', '2025-03-04 11:46:23'),
(321, 131, 41, '2025-03-04', '2025-03-04 17:48:19', '2025-08-25 17:15:31', '2025-03-04 12:18:19'),
(322, 156, 41, '2025-03-04', '2025-03-04 18:01:38', '2025-08-16 10:01:07', '2025-03-04 12:31:38'),
(323, 158, 41, '2025-03-04', '2025-03-04 18:01:52', '2025-08-25 09:13:08', '2025-03-04 12:31:52'),
(324, 131, 41, '2025-03-04', '2025-03-04 18:05:38', '2025-08-25 17:15:31', '2025-03-04 12:35:38'),
(325, 158, 41, '2025-03-04', '2025-03-04 18:11:35', '2025-08-25 09:13:08', '2025-03-04 12:41:35'),
(326, 156, 41, '2025-03-04', '2025-03-04 18:15:43', '2025-08-16 10:01:07', '2025-03-04 12:45:43'),
(327, 131, 41, '2025-03-05', '2025-03-05 09:07:11', '2025-08-25 17:15:31', '2025-03-05 03:37:11'),
(328, 156, 41, '2025-03-05', '2025-03-05 09:08:05', '2025-08-16 10:01:07', '2025-03-05 03:38:05'),
(329, 157, 41, '2025-03-05', '2025-03-05 09:08:58', '2025-05-13 18:55:32', '2025-03-05 03:38:58'),
(330, 156, 41, '2025-03-05', '2025-03-05 09:12:44', '2025-08-16 10:01:07', '2025-03-05 03:42:44'),
(331, 158, 41, '2025-03-05', '2025-03-05 09:13:31', '2025-08-25 09:13:08', '2025-03-05 03:43:31'),
(332, 131, 41, '2025-03-05', '2025-03-05 09:16:28', '2025-08-25 17:15:31', '2025-03-05 03:46:28'),
(333, 156, 41, '2025-03-05', '2025-03-05 09:31:04', '2025-08-16 10:01:07', '2025-03-05 04:01:04'),
(334, 157, 41, '2025-03-05', '2025-03-05 09:31:22', '2025-05-13 18:55:32', '2025-03-05 04:01:22'),
(335, 158, 41, '2025-03-05', '2025-03-05 09:31:38', '2025-08-25 09:13:08', '2025-03-05 04:01:38'),
(336, 156, 41, '2025-03-05', '2025-03-05 09:44:06', '2025-08-16 10:01:07', '2025-03-05 04:14:06'),
(337, 131, 41, '2025-03-05', '2025-03-05 10:00:51', '2025-08-25 17:15:31', '2025-03-05 04:30:51'),
(338, 156, 41, '2025-03-05', '2025-03-05 10:51:53', '2025-08-16 10:01:07', '2025-03-05 05:21:53'),
(339, 158, 41, '2025-03-05', '2025-03-05 10:52:13', '2025-08-25 09:13:08', '2025-03-05 05:22:13'),
(340, 131, 41, '2025-03-05', '2025-03-05 11:05:41', '2025-08-25 17:15:31', '2025-03-05 05:35:41'),
(341, 156, 41, '2025-03-05', '2025-03-05 11:24:14', '2025-08-16 10:01:07', '2025-03-05 05:54:14'),
(342, 157, 41, '2025-03-05', '2025-03-05 11:24:24', '2025-05-13 18:55:32', '2025-03-05 05:54:24'),
(343, 158, 41, '2025-03-05', '2025-03-05 11:24:58', '2025-08-25 09:13:08', '2025-03-05 05:54:58'),
(344, 131, 41, '2025-03-05', '2025-03-05 11:30:12', '2025-08-25 17:15:31', '2025-03-05 06:00:12'),
(345, 158, 41, '2025-03-05', '2025-03-05 14:04:39', '2025-08-25 09:13:08', '2025-03-05 08:34:39'),
(346, 131, 41, '2025-03-05', '2025-03-05 14:23:17', '2025-08-25 17:15:31', '2025-03-05 08:53:17'),
(347, 158, 41, '2025-03-05', '2025-03-05 14:23:53', '2025-08-25 09:13:08', '2025-03-05 08:53:53'),
(348, 131, 41, '2025-03-05', '2025-03-05 14:24:25', '2025-08-25 17:15:31', '2025-03-05 08:54:25'),
(349, 156, 41, '2025-03-05', '2025-03-05 14:30:02', '2025-08-16 10:01:07', '2025-03-05 09:00:02'),
(350, 158, 41, '2025-03-05', '2025-03-05 14:30:10', '2025-08-25 09:13:08', '2025-03-05 09:00:10'),
(351, 131, 41, '2025-03-05', '2025-03-05 14:35:54', '2025-08-25 17:15:31', '2025-03-05 09:05:54'),
(352, 156, 41, '2025-03-05', '2025-03-05 14:36:39', '2025-08-16 10:01:07', '2025-03-05 09:06:39'),
(353, 157, 41, '2025-03-05', '2025-03-05 14:36:46', '2025-05-13 18:55:32', '2025-03-05 09:06:46'),
(354, 158, 41, '2025-03-05', '2025-03-05 14:36:54', '2025-08-25 09:13:08', '2025-03-05 09:06:54'),
(355, 131, 41, '2025-03-05', '2025-03-05 14:48:23', '2025-08-25 17:15:31', '2025-03-05 09:18:23'),
(356, 158, 41, '2025-03-05', '2025-03-05 14:50:16', '2025-08-25 09:13:08', '2025-03-05 09:20:16'),
(357, 131, 41, '2025-03-05', '2025-03-05 14:54:36', '2025-08-25 17:15:31', '2025-03-05 09:24:36'),
(358, 158, 41, '2025-03-05', '2025-03-05 14:55:09', '2025-08-25 09:13:08', '2025-03-05 09:25:09'),
(359, 131, 41, '2025-03-05', '2025-03-05 14:56:14', '2025-08-25 17:15:31', '2025-03-05 09:26:14'),
(360, 158, 41, '2025-03-05', '2025-03-05 14:57:54', '2025-08-25 09:13:08', '2025-03-05 09:27:54'),
(361, 131, 41, '2025-03-05', '2025-03-05 15:00:22', '2025-08-25 17:15:31', '2025-03-05 09:30:22'),
(362, 158, 41, '2025-03-05', '2025-03-05 15:01:12', '2025-08-25 09:13:08', '2025-03-05 09:31:12'),
(363, 131, 41, '2025-03-05', '2025-03-05 15:02:06', '2025-08-25 17:15:31', '2025-03-05 09:32:06'),
(364, 158, 41, '2025-03-05', '2025-03-05 15:03:54', '2025-08-25 09:13:08', '2025-03-05 09:33:54'),
(365, 131, 41, '2025-03-05', '2025-03-05 15:04:36', '2025-08-25 17:15:31', '2025-03-05 09:34:36'),
(366, 158, 41, '2025-03-05', '2025-03-05 15:04:59', '2025-08-25 09:13:08', '2025-03-05 09:34:59'),
(367, 131, 41, '2025-03-05', '2025-03-05 15:05:26', '2025-08-25 17:15:31', '2025-03-05 09:35:26'),
(368, 158, 41, '2025-03-05', '2025-03-05 15:16:53', '2025-08-25 09:13:08', '2025-03-05 09:46:53'),
(369, 131, 41, '2025-03-05', '2025-03-05 15:17:22', '2025-08-25 17:15:31', '2025-03-05 09:47:22'),
(370, 158, 41, '2025-03-05', '2025-03-05 15:29:33', '2025-08-25 09:13:08', '2025-03-05 09:59:33'),
(371, 131, 41, '2025-03-05', '2025-03-05 15:30:04', '2025-08-25 17:15:31', '2025-03-05 10:00:04'),
(372, 131, 41, '2025-03-05', '2025-03-05 15:39:38', '2025-08-25 17:15:31', '2025-03-05 10:09:38'),
(373, 158, 41, '2025-03-05', '2025-03-05 15:40:39', '2025-08-25 09:13:08', '2025-03-05 10:10:39'),
(374, 131, 41, '2025-03-05', '2025-03-05 15:43:26', '2025-08-25 17:15:31', '2025-03-05 10:13:26'),
(375, 158, 41, '2025-03-05', '2025-03-05 15:44:18', '2025-08-25 09:13:08', '2025-03-05 10:14:18'),
(376, 131, 41, '2025-03-05', '2025-03-05 15:44:53', '2025-08-25 17:15:31', '2025-03-05 10:14:53'),
(377, 157, 41, '2025-03-05', '2025-03-05 16:04:30', '2025-05-13 18:55:32', '2025-03-05 10:34:30'),
(378, 158, 41, '2025-03-05', '2025-03-05 16:05:08', '2025-08-25 09:13:08', '2025-03-05 10:35:08'),
(379, 157, 41, '2025-03-05', '2025-03-05 16:05:41', '2025-05-13 18:55:32', '2025-03-05 10:35:41'),
(380, 158, 41, '2025-03-05', '2025-03-05 16:09:35', '2025-08-25 09:13:08', '2025-03-05 10:39:35'),
(381, 131, 41, '2025-03-05', '2025-03-05 16:46:16', '2025-08-25 17:15:31', '2025-03-05 11:16:16'),
(382, 158, 41, '2025-03-05', '2025-03-05 16:49:45', '2025-08-25 09:13:08', '2025-03-05 11:19:45'),
(383, 131, 41, '2025-03-05', '2025-03-05 17:23:27', '2025-08-25 17:15:31', '2025-03-05 11:53:27'),
(384, 158, 41, '2025-03-05', '2025-03-05 17:35:04', '2025-08-25 09:13:08', '2025-03-05 12:05:04'),
(385, 131, 41, '2025-03-05', '2025-03-05 17:35:37', '2025-08-25 17:15:31', '2025-03-05 12:05:37'),
(386, 131, 41, '2025-03-07', '2025-03-07 09:25:58', '2025-08-25 17:15:31', '2025-03-07 03:55:58'),
(387, 157, 41, '2025-03-07', '2025-03-07 09:34:19', '2025-05-13 18:55:32', '2025-03-07 04:04:19'),
(388, 158, 41, '2025-03-07', '2025-03-07 09:35:27', '2025-08-25 09:13:08', '2025-03-07 04:05:27'),
(389, 157, 41, '2025-03-07', '2025-03-07 09:43:33', '2025-05-13 18:55:32', '2025-03-07 04:13:33'),
(390, 131, 41, '2025-03-07', '2025-03-07 09:52:50', '2025-08-25 17:15:31', '2025-03-07 04:22:50'),
(391, 157, 41, '2025-03-07', '2025-03-07 09:56:33', '2025-05-13 18:55:32', '2025-03-07 04:26:33'),
(392, 131, 41, '2025-03-07', '2025-03-07 09:56:42', '2025-08-25 17:15:31', '2025-03-07 04:26:42'),
(393, 157, 41, '2025-03-07', '2025-03-07 09:57:08', '2025-05-13 18:55:32', '2025-03-07 04:27:08'),
(394, 131, 41, '2025-03-07', '2025-03-07 10:00:29', '2025-08-25 17:15:31', '2025-03-07 04:30:29'),
(395, 157, 41, '2025-03-07', '2025-03-07 10:06:58', '2025-05-13 18:55:32', '2025-03-07 04:36:58'),
(396, 131, 41, '2025-03-07', '2025-03-07 10:11:16', '2025-08-25 17:15:31', '2025-03-07 04:41:16'),
(397, 157, 41, '2025-03-07', '2025-03-07 10:12:28', '2025-05-13 18:55:32', '2025-03-07 04:42:28'),
(398, 131, 41, '2025-03-07', '2025-03-07 10:12:40', '2025-08-25 17:15:31', '2025-03-07 04:42:40'),
(399, 157, 41, '2025-03-07', '2025-03-07 10:13:00', '2025-05-13 18:55:32', '2025-03-07 04:43:00'),
(400, 158, 41, '2025-03-07', '2025-03-07 10:21:11', '2025-08-25 09:13:08', '2025-03-07 04:51:11'),
(401, 157, 41, '2025-03-07', '2025-03-07 10:22:00', '2025-05-13 18:55:32', '2025-03-07 04:52:00'),
(402, 158, 41, '2025-03-07', '2025-03-07 10:23:57', '2025-08-25 09:13:08', '2025-03-07 04:53:57'),
(403, 157, 41, '2025-03-07', '2025-03-07 10:48:12', '2025-05-13 18:55:32', '2025-03-07 05:18:12'),
(404, 131, 41, '2025-03-07', '2025-03-07 11:30:16', '2025-08-25 17:15:31', '2025-03-07 06:00:16'),
(405, 50, 0, '2025-03-07', '2025-03-07 13:26:50', '2025-08-28 10:31:09', '2025-03-07 07:56:50'),
(406, 131, 41, '2025-03-07', '2025-03-07 13:33:54', '2025-08-25 17:15:31', '2025-03-07 08:03:54'),
(407, 158, 41, '2025-03-07', '2025-03-07 15:04:46', '2025-08-25 09:13:08', '2025-03-07 09:34:46'),
(408, 158, 41, '2025-03-07', '2025-03-07 18:03:20', '2025-08-25 09:13:08', '2025-03-07 12:33:20'),
(409, 131, 41, '2025-03-10', '2025-03-10 09:06:58', '2025-08-25 17:15:31', '2025-03-10 03:36:58'),
(410, 158, 41, '2025-03-10', '2025-03-10 09:23:42', '2025-08-25 09:13:08', '2025-03-10 03:53:42'),
(411, 131, 41, '2025-03-10', '2025-03-10 09:39:16', '2025-08-25 17:15:31', '2025-03-10 04:09:16'),
(412, 131, 41, '2025-03-10', '2025-03-10 09:40:51', '2025-08-25 17:15:31', '2025-03-10 04:10:51'),
(413, 158, 41, '2025-03-10', '2025-03-10 09:41:30', '2025-08-25 09:13:08', '2025-03-10 04:11:30'),
(414, 157, 41, '2025-03-10', '2025-03-10 09:50:50', '2025-05-13 18:55:32', '2025-03-10 04:20:50'),
(415, 158, 41, '2025-03-10', '2025-03-10 09:51:10', '2025-08-25 09:13:08', '2025-03-10 04:21:10'),
(416, 131, 41, '2025-03-10', '2025-03-10 10:19:53', '2025-08-25 17:15:31', '2025-03-10 04:49:53'),
(417, 158, 41, '2025-03-10', '2025-03-10 10:21:34', '2025-08-25 09:13:08', '2025-03-10 04:51:34'),
(418, 131, 41, '2025-03-10', '2025-03-10 10:23:16', '2025-08-25 17:15:31', '2025-03-10 04:53:16'),
(419, 157, 41, '2025-03-10', '2025-03-10 10:27:28', '2025-05-13 18:55:32', '2025-03-10 04:57:28'),
(420, 131, 41, '2025-03-10', '2025-03-10 10:35:14', '2025-08-25 17:15:31', '2025-03-10 05:05:14'),
(421, 157, 41, '2025-03-10', '2025-03-10 10:51:15', '2025-05-13 18:55:32', '2025-03-10 05:21:15'),
(422, 158, 41, '2025-03-10', '2025-03-10 10:51:30', '2025-08-25 09:13:08', '2025-03-10 05:21:30'),
(423, 131, 41, '2025-03-10', '2025-03-10 10:52:58', '2025-08-25 17:15:31', '2025-03-10 05:22:58'),
(424, 158, 41, '2025-03-10', '2025-03-10 10:53:24', '2025-08-25 09:13:08', '2025-03-10 05:23:24'),
(425, 157, 41, '2025-03-10', '2025-03-10 10:53:56', '2025-05-13 18:55:32', '2025-03-10 05:23:56'),
(426, 131, 41, '2025-03-10', '2025-03-10 10:54:17', '2025-08-25 17:15:31', '2025-03-10 05:24:17'),
(427, 157, 41, '2025-03-10', '2025-03-10 10:55:40', '2025-05-13 18:55:32', '2025-03-10 05:25:40'),
(428, 158, 41, '2025-03-10', '2025-03-10 11:13:05', '2025-08-25 09:13:08', '2025-03-10 05:43:05'),
(429, 131, 41, '2025-03-10', '2025-03-10 11:14:12', '2025-08-25 17:15:31', '2025-03-10 05:44:12'),
(430, 158, 41, '2025-03-10', '2025-03-10 11:20:13', '2025-08-25 09:13:08', '2025-03-10 05:50:13'),
(431, 131, 41, '2025-03-10', '2025-03-10 11:29:47', '2025-08-25 17:15:31', '2025-03-10 05:59:47'),
(432, 158, 41, '2025-03-10', '2025-03-10 11:47:37', '2025-08-25 09:13:08', '2025-03-10 06:17:37'),
(433, 131, 41, '2025-03-10', '2025-03-10 11:53:43', '2025-08-25 17:15:31', '2025-03-10 06:23:43'),
(434, 158, 41, '2025-03-10', '2025-03-10 11:59:03', '2025-08-25 09:13:08', '2025-03-10 06:29:03'),
(435, 157, 41, '2025-03-10', '2025-03-10 12:26:09', '2025-05-13 18:55:32', '2025-03-10 06:56:09'),
(436, 131, 41, '2025-03-10', '2025-03-10 14:05:11', '2025-08-25 17:15:31', '2025-03-10 08:35:11'),
(437, 158, 41, '2025-03-10', '2025-03-10 14:05:57', '2025-08-25 09:13:08', '2025-03-10 08:35:57'),
(438, 158, 41, '2025-03-10', '2025-03-10 14:05:57', '2025-08-25 09:13:08', '2025-03-10 08:35:57'),
(439, 131, 41, '2025-03-10', '2025-03-10 14:06:54', '2025-08-25 17:15:31', '2025-03-10 08:36:54'),
(440, 158, 41, '2025-03-10', '2025-03-10 14:07:22', '2025-08-25 09:13:08', '2025-03-10 08:37:22'),
(441, 131, 41, '2025-03-10', '2025-03-10 14:08:36', '2025-08-25 17:15:31', '2025-03-10 08:38:36'),
(442, 131, 41, '2025-03-10', '2025-03-10 14:35:01', '2025-08-25 17:15:31', '2025-03-10 09:05:01'),
(443, 158, 41, '2025-03-10', '2025-03-10 14:39:58', '2025-08-25 09:13:08', '2025-03-10 09:09:58'),
(444, 50, 0, '2025-03-10', '2025-03-10 15:43:02', '2025-08-28 10:31:09', '2025-03-10 10:13:02'),
(445, 131, 41, '2025-03-10', '2025-03-10 15:51:39', '2025-08-25 17:15:31', '2025-03-10 10:21:39'),
(446, 158, 41, '2025-03-10', '2025-03-10 16:04:02', '2025-08-25 09:13:08', '2025-03-10 10:34:02'),
(447, 157, 41, '2025-03-10', '2025-03-10 16:06:52', '2025-05-13 18:55:32', '2025-03-10 10:36:52'),
(448, 131, 41, '2025-03-10', '2025-03-10 16:07:44', '2025-08-25 17:15:31', '2025-03-10 10:37:44'),
(449, 157, 41, '2025-03-10', '2025-03-10 16:10:23', '2025-05-13 18:55:32', '2025-03-10 10:40:23'),
(450, 131, 41, '2025-03-10', '2025-03-10 16:11:49', '2025-08-25 17:15:31', '2025-03-10 10:41:49'),
(451, 157, 41, '2025-03-10', '2025-03-10 16:12:39', '2025-05-13 18:55:32', '2025-03-10 10:42:39'),
(452, 158, 41, '2025-03-10', '2025-03-10 16:14:19', '2025-08-25 09:13:08', '2025-03-10 10:44:19'),
(453, 131, 41, '2025-03-10', '2025-03-10 16:21:40', '2025-08-25 17:15:31', '2025-03-10 10:51:40'),
(454, 131, 41, '2025-03-10', '2025-03-10 16:22:06', '2025-08-25 17:15:31', '2025-03-10 10:52:06'),
(455, 131, 41, '2025-03-10', '2025-03-10 16:23:59', '2025-08-25 17:15:31', '2025-03-10 10:53:59'),
(456, 157, 41, '2025-03-10', '2025-03-10 16:59:04', '2025-05-13 18:55:32', '2025-03-10 11:29:04'),
(457, 131, 41, '2025-03-10', '2025-03-10 17:02:03', '2025-08-25 17:15:31', '2025-03-10 11:32:03'),
(458, 158, 41, '2025-03-10', '2025-03-10 17:05:05', '2025-08-25 09:13:08', '2025-03-10 11:35:05'),
(459, 131, 41, '2025-03-10', '2025-03-10 17:06:25', '2025-08-25 17:15:31', '2025-03-10 11:36:25'),
(460, 131, 41, '2025-03-10', '2025-03-10 17:15:56', '2025-08-25 17:15:31', '2025-03-10 11:45:56'),
(461, 131, 41, '2025-03-10', '2025-03-10 17:19:06', '2025-08-25 17:15:31', '2025-03-10 11:49:06'),
(462, 158, 41, '2025-03-10', '2025-03-10 17:19:49', '2025-08-25 09:13:08', '2025-03-10 11:49:49'),
(463, 157, 41, '2025-03-10', '2025-03-10 17:21:48', '2025-05-13 18:55:32', '2025-03-10 11:51:48'),
(464, 131, 41, '2025-03-10', '2025-03-10 17:23:15', '2025-08-25 17:15:31', '2025-03-10 11:53:15'),
(465, 131, 41, '2025-03-10', '2025-03-10 17:26:52', '2025-08-25 17:15:31', '2025-03-10 11:56:52'),
(466, 158, 41, '2025-03-10', '2025-03-10 17:27:28', '2025-08-25 09:13:08', '2025-03-10 11:57:28'),
(467, 131, 41, '2025-03-10', '2025-03-10 17:27:58', '2025-08-25 17:15:31', '2025-03-10 11:57:58'),
(468, 158, 41, '2025-03-10', '2025-03-10 17:28:53', '2025-08-25 09:13:08', '2025-03-10 11:58:53'),
(469, 131, 41, '2025-03-10', '2025-03-10 17:29:14', '2025-08-25 17:15:31', '2025-03-10 11:59:14'),
(470, 158, 41, '2025-03-10', '2025-03-10 17:33:33', '2025-08-25 09:13:08', '2025-03-10 12:03:33'),
(471, 131, 41, '2025-03-10', '2025-03-10 17:35:13', '2025-08-25 17:15:31', '2025-03-10 12:05:13'),
(472, 158, 41, '2025-03-10', '2025-03-10 17:35:46', '2025-08-25 09:13:08', '2025-03-10 12:05:46'),
(473, 158, 41, '2025-03-10', '2025-03-10 17:35:46', '2025-08-25 09:13:08', '2025-03-10 12:05:46'),
(474, 131, 41, '2025-03-10', '2025-03-10 17:39:25', '2025-08-25 17:15:31', '2025-03-10 12:09:25'),
(475, 131, 41, '2025-03-10', '2025-03-10 17:43:38', '2025-08-25 17:15:31', '2025-03-10 12:13:38'),
(476, 158, 41, '2025-03-10', '2025-03-10 17:47:57', '2025-08-25 09:13:08', '2025-03-10 12:17:57'),
(477, 131, 41, '2025-03-10', '2025-03-10 17:49:16', '2025-08-25 17:15:31', '2025-03-10 12:19:16'),
(478, 158, 41, '2025-03-10', '2025-03-10 17:49:56', '2025-08-25 09:13:08', '2025-03-10 12:19:56'),
(479, 131, 41, '2025-03-10', '2025-03-10 17:50:23', '2025-08-25 17:15:31', '2025-03-10 12:20:23'),
(480, 157, 41, '2025-03-10', '2025-03-10 17:52:21', '2025-05-13 18:55:32', '2025-03-10 12:22:21'),
(481, 131, 41, '2025-03-10', '2025-03-10 17:52:32', '2025-08-25 17:15:31', '2025-03-10 12:22:32'),
(482, 158, 41, '2025-03-10', '2025-03-10 17:53:43', '2025-08-25 09:13:08', '2025-03-10 12:23:43'),
(483, 157, 41, '2025-03-10', '2025-03-10 17:53:58', '2025-05-13 18:55:32', '2025-03-10 12:23:58'),
(484, 131, 41, '2025-03-10', '2025-03-10 17:54:08', '2025-08-25 17:15:31', '2025-03-10 12:24:08'),
(485, 131, 41, '2025-03-10', '2025-03-10 17:54:17', '2025-08-25 17:15:31', '2025-03-10 12:24:17'),
(486, 157, 41, '2025-03-10', '2025-03-10 17:55:28', '2025-05-13 18:55:32', '2025-03-10 12:25:28'),
(487, 131, 41, '2025-03-10', '2025-03-10 17:55:58', '2025-08-25 17:15:31', '2025-03-10 12:25:58'),
(488, 158, 41, '2025-03-10', '2025-03-10 17:55:58', '2025-08-25 09:13:08', '2025-03-10 12:25:58'),
(489, 131, 41, '2025-03-10', '2025-03-10 17:57:02', '2025-08-25 17:15:31', '2025-03-10 12:27:02'),
(490, 131, 41, '2025-03-10', '2025-03-10 17:57:39', '2025-08-25 17:15:31', '2025-03-10 12:27:39'),
(491, 131, 41, '2025-03-10', '2025-03-10 18:00:14', '2025-08-25 17:15:31', '2025-03-10 12:30:14'),
(492, 158, 41, '2025-03-10', '2025-03-10 18:01:13', '2025-08-25 09:13:08', '2025-03-10 12:31:13'),
(493, 158, 41, '2025-03-10', '2025-03-10 18:01:14', '2025-08-25 09:13:08', '2025-03-10 12:31:14'),
(494, 131, 41, '2025-03-10', '2025-03-10 18:03:11', '2025-08-25 17:15:31', '2025-03-10 12:33:11'),
(495, 157, 41, '2025-03-10', '2025-03-10 18:03:16', '2025-05-13 18:55:32', '2025-03-10 12:33:16'),
(496, 131, 41, '2025-03-10', '2025-03-10 18:03:56', '2025-08-25 17:15:31', '2025-03-10 12:33:56'),
(497, 157, 41, '2025-03-10', '2025-03-10 18:34:54', '2025-05-13 18:55:32', '2025-03-10 13:04:54'),
(498, 131, 41, '2025-03-10', '2025-03-10 18:35:41', '2025-08-25 17:15:31', '2025-03-10 13:05:41'),
(499, 157, 41, '2025-03-11', '2025-03-11 09:18:46', '2025-05-13 18:55:32', '2025-03-11 03:48:46'),
(500, 157, 41, '2025-03-11', '2025-03-11 09:43:43', '2025-05-13 18:55:32', '2025-03-11 04:13:43'),
(501, 131, 41, '2025-03-11', '2025-03-11 09:45:41', '2025-08-25 17:15:31', '2025-03-11 04:15:41'),
(502, 131, 41, '2025-03-11', '2025-03-11 09:55:38', '2025-08-25 17:15:31', '2025-03-11 04:25:38'),
(503, 158, 41, '2025-03-11', '2025-03-11 12:02:06', '2025-08-25 09:13:08', '2025-03-11 06:32:06'),
(504, 156, 41, '2025-03-11', '2025-03-11 12:06:20', '2025-08-16 10:01:07', '2025-03-11 06:36:20'),
(505, 157, 41, '2025-03-11', '2025-03-11 12:08:40', '2025-05-13 18:55:32', '2025-03-11 06:38:40'),
(506, 157, 41, '2025-03-11', '2025-03-11 12:14:13', '2025-05-13 18:55:32', '2025-03-11 06:44:13'),
(507, 158, 41, '2025-03-11', '2025-03-11 12:17:13', '2025-08-25 09:13:08', '2025-03-11 06:47:13'),
(508, 158, 41, '2025-03-11', '2025-03-11 12:18:40', '2025-08-25 09:13:08', '2025-03-11 06:48:40'),
(509, 131, 41, '2025-03-11', '2025-03-11 12:40:15', '2025-08-25 17:15:31', '2025-03-11 07:10:15'),
(510, 157, 41, '2025-03-11', '2025-03-11 12:42:01', '2025-05-13 18:55:32', '2025-03-11 07:12:01'),
(511, 158, 41, '2025-03-11', '2025-03-11 12:50:34', '2025-08-25 09:13:08', '2025-03-11 07:20:34'),
(512, 157, 41, '2025-03-11', '2025-03-11 13:02:07', '2025-05-13 18:55:32', '2025-03-11 07:32:07'),
(513, 157, 41, '2025-03-11', '2025-03-11 13:17:29', '2025-05-13 18:55:32', '2025-03-11 07:47:29'),
(514, 157, 41, '2025-03-11', '2025-03-11 14:58:26', '2025-05-13 18:55:32', '2025-03-11 09:28:26'),
(515, 131, 41, '2025-03-11', '2025-03-11 15:03:20', '2025-08-25 17:15:31', '2025-03-11 09:33:20'),
(516, 157, 41, '2025-03-11', '2025-03-11 15:05:08', '2025-05-13 18:55:32', '2025-03-11 09:35:08');
INSERT INTO `user_login_logout` (`id`, `user_id`, `store_id`, `date`, `login_time`, `logout_time`, `created_at`) VALUES
(517, 156, 41, '2025-03-11', '2025-03-11 15:05:34', '2025-08-16 10:01:07', '2025-03-11 09:35:34'),
(518, 157, 41, '2025-03-11', '2025-03-11 15:19:45', '2025-05-13 18:55:32', '2025-03-11 09:49:45'),
(519, 157, 41, '2025-03-11', '2025-03-11 15:22:26', '2025-05-13 18:55:32', '2025-03-11 09:52:26'),
(520, 158, 41, '2025-03-11', '2025-03-11 15:29:08', '2025-08-25 09:13:08', '2025-03-11 09:59:08'),
(521, 131, 41, '2025-03-12', '2025-03-12 09:17:32', '2025-08-25 17:15:31', '2025-03-12 03:47:32'),
(522, 131, 41, '2025-03-12', '2025-03-12 10:50:30', '2025-08-25 17:15:31', '2025-03-12 05:20:30'),
(523, 157, 41, '2025-03-12', '2025-03-12 11:03:03', '2025-05-13 18:55:32', '2025-03-12 05:33:03'),
(524, 158, 41, '2025-03-12', '2025-03-12 11:15:55', '2025-08-25 09:13:08', '2025-03-12 05:45:55'),
(525, 131, 41, '2025-03-12', '2025-03-12 11:16:51', '2025-08-25 17:15:31', '2025-03-12 05:46:51'),
(526, 158, 41, '2025-03-12', '2025-03-12 11:17:58', '2025-08-25 09:13:08', '2025-03-12 05:47:58'),
(527, 131, 41, '2025-03-12', '2025-03-12 15:40:46', '2025-08-25 17:15:31', '2025-03-12 10:10:46'),
(528, 157, 41, '2025-03-12', '2025-03-12 15:48:42', '2025-05-13 18:55:32', '2025-03-12 10:18:42'),
(529, 131, 41, '2025-03-12', '2025-03-12 15:49:21', '2025-08-25 17:15:31', '2025-03-12 10:19:21'),
(530, 156, 41, '2025-03-12', '2025-03-12 15:50:04', '2025-08-16 10:01:07', '2025-03-12 10:20:04'),
(531, 158, 41, '2025-03-12', '2025-03-12 15:52:05', '2025-08-25 09:13:08', '2025-03-12 10:22:05'),
(532, 131, 41, '2025-03-12', '2025-03-12 15:55:59', '2025-08-25 17:15:31', '2025-03-12 10:25:59'),
(533, 158, 41, '2025-03-12', '2025-03-12 15:57:54', '2025-08-25 09:13:08', '2025-03-12 10:27:54'),
(534, 156, 41, '2025-03-12', '2025-03-12 16:08:46', '2025-08-16 10:01:07', '2025-03-12 10:38:46'),
(535, 131, 41, '2025-03-12', '2025-03-12 16:11:25', '2025-08-25 17:15:31', '2025-03-12 10:41:25'),
(536, 156, 41, '2025-03-12', '2025-03-12 16:23:30', '2025-08-16 10:01:07', '2025-03-12 10:53:30'),
(537, 158, 41, '2025-03-12', '2025-03-12 16:23:55', '2025-08-25 09:13:08', '2025-03-12 10:53:55'),
(538, 131, 41, '2025-03-12', '2025-03-12 16:24:57', '2025-08-25 17:15:31', '2025-03-12 10:54:57'),
(539, 158, 41, '2025-03-12', '2025-03-12 16:26:45', '2025-08-25 09:13:08', '2025-03-12 10:56:45'),
(540, 158, 41, '2025-03-12', '2025-03-12 16:46:41', '2025-08-25 09:13:08', '2025-03-12 11:16:41'),
(541, 158, 41, '2025-03-12', '2025-03-12 16:53:03', '2025-08-25 09:13:08', '2025-03-12 11:23:03'),
(542, 156, 41, '2025-03-12', '2025-03-12 16:53:54', '2025-08-16 10:01:07', '2025-03-12 11:23:54'),
(543, 131, 41, '2025-03-12', '2025-03-12 16:54:23', '2025-08-25 17:15:31', '2025-03-12 11:24:23'),
(544, 131, 41, '2025-03-12', '2025-03-12 16:57:17', '2025-08-25 17:15:31', '2025-03-12 11:27:17'),
(545, 158, 41, '2025-03-12', '2025-03-12 17:00:23', '2025-08-25 09:13:08', '2025-03-12 11:30:23'),
(546, 131, 41, '2025-03-13', '2025-03-13 10:29:51', '2025-08-25 17:15:31', '2025-03-13 04:59:51'),
(547, 131, 41, '2025-03-13', '2025-03-13 14:02:54', '2025-08-25 17:15:31', '2025-03-13 08:32:54'),
(548, 158, 41, '2025-03-13', '2025-03-13 14:08:47', '2025-08-25 09:13:08', '2025-03-13 08:38:47'),
(549, 131, 41, '2025-03-13', '2025-03-13 14:10:02', '2025-08-25 17:15:31', '2025-03-13 08:40:02'),
(550, 157, 41, '2025-03-13', '2025-03-13 14:13:15', '2025-05-13 18:55:32', '2025-03-13 08:43:15'),
(551, 156, 41, '2025-03-13', '2025-03-13 14:13:44', '2025-08-16 10:01:07', '2025-03-13 08:43:44'),
(552, 131, 41, '2025-03-13', '2025-03-13 15:08:04', '2025-08-25 17:15:31', '2025-03-13 09:38:04'),
(553, 157, 41, '2025-03-13', '2025-03-13 16:52:58', '2025-05-13 18:55:32', '2025-03-13 11:22:58'),
(554, 158, 41, '2025-03-13', '2025-03-13 17:39:44', '2025-08-25 09:13:08', '2025-03-13 12:09:44'),
(555, 156, 41, '2025-03-13', '2025-03-13 17:40:31', '2025-08-16 10:01:07', '2025-03-13 12:10:31'),
(556, 131, 41, '2025-03-13', '2025-03-13 17:50:30', '2025-08-25 17:15:31', '2025-03-13 12:20:30'),
(557, 131, 41, '2025-03-13', '2025-03-13 17:53:36', '2025-08-25 17:15:31', '2025-03-13 12:23:36'),
(558, 131, 41, '2025-03-13', '2025-03-13 17:55:43', '2025-08-25 17:15:31', '2025-03-13 12:25:43'),
(559, 131, 41, '2025-03-13', '2025-03-13 18:06:06', '2025-08-25 17:15:31', '2025-03-13 12:36:06'),
(560, 156, 41, '2025-03-13', '2025-03-13 18:06:41', '2025-08-16 10:01:07', '2025-03-13 12:36:41'),
(561, 131, 41, '2025-03-13', '2025-03-13 18:52:05', '2025-08-25 17:15:31', '2025-03-13 13:22:05'),
(562, 157, 41, '2025-03-13', '2025-03-13 18:59:02', '2025-05-13 18:55:32', '2025-03-13 13:29:02'),
(563, 156, 41, '2025-03-13', '2025-03-13 18:59:33', '2025-08-16 10:01:07', '2025-03-13 13:29:33'),
(564, 157, 41, '2025-03-13', '2025-03-13 19:00:01', '2025-05-13 18:55:32', '2025-03-13 13:30:01'),
(565, 156, 41, '2025-03-13', '2025-03-13 19:07:34', '2025-08-16 10:01:07', '2025-03-13 13:37:34'),
(566, 131, 41, '2025-03-13', '2025-03-13 19:08:26', '2025-08-25 17:15:31', '2025-03-13 13:38:26'),
(567, 131, 41, '2025-03-14', '2025-03-14 09:17:13', '2025-08-25 17:15:31', '2025-03-14 03:47:13'),
(568, 156, 41, '2025-03-14', '2025-03-14 09:17:57', '2025-08-16 10:01:07', '2025-03-14 03:47:57'),
(569, 131, 41, '2025-03-14', '2025-03-14 09:23:05', '2025-08-25 17:15:31', '2025-03-14 03:53:05'),
(570, 156, 41, '2025-03-14', '2025-03-14 09:23:10', '2025-08-16 10:01:07', '2025-03-14 03:53:10'),
(571, 158, 41, '2025-03-14', '2025-03-14 09:25:17', '2025-08-25 09:13:08', '2025-03-14 03:55:17'),
(572, 157, 41, '2025-03-14', '2025-03-14 09:25:50', '2025-05-13 18:55:32', '2025-03-14 03:55:50'),
(573, 157, 41, '2025-03-14', '2025-03-14 09:28:17', '2025-05-13 18:55:32', '2025-03-14 03:58:17'),
(574, 156, 41, '2025-03-14', '2025-03-14 09:44:19', '2025-08-16 10:01:07', '2025-03-14 04:14:19'),
(575, 158, 41, '2025-03-14', '2025-03-14 09:53:27', '2025-08-25 09:13:08', '2025-03-14 04:23:27'),
(576, 156, 41, '2025-03-14', '2025-03-14 09:54:02', '2025-08-16 10:01:07', '2025-03-14 04:24:02'),
(577, 158, 41, '2025-03-14', '2025-03-14 09:54:54', '2025-08-25 09:13:08', '2025-03-14 04:24:54'),
(578, 158, 41, '2025-03-14', '2025-03-14 09:57:54', '2025-08-25 09:13:08', '2025-03-14 04:27:54'),
(579, 156, 41, '2025-03-14', '2025-03-14 10:00:35', '2025-08-16 10:01:07', '2025-03-14 04:30:35'),
(580, 157, 41, '2025-03-14', '2025-03-14 10:01:02', '2025-05-13 18:55:32', '2025-03-14 04:31:02'),
(581, 158, 41, '2025-03-14', '2025-03-14 10:04:59', '2025-08-25 09:13:08', '2025-03-14 04:34:59'),
(582, 158, 41, '2025-03-14', '2025-03-14 10:05:33', '2025-08-25 09:13:08', '2025-03-14 04:35:33'),
(583, 131, 41, '2025-03-14', '2025-03-14 10:12:52', '2025-08-25 17:15:31', '2025-03-14 04:42:52'),
(584, 131, 41, '2025-03-14', '2025-03-14 10:12:53', '2025-08-25 17:15:31', '2025-03-14 04:42:53'),
(585, 158, 41, '2025-03-14', '2025-03-14 10:14:09', '2025-08-25 09:13:08', '2025-03-14 04:44:09'),
(586, 131, 41, '2025-03-14', '2025-03-14 10:14:55', '2025-08-25 17:15:31', '2025-03-14 04:44:55'),
(587, 156, 41, '2025-03-14', '2025-03-14 10:39:12', '2025-08-16 10:01:07', '2025-03-14 05:09:12'),
(588, 131, 41, '2025-03-14', '2025-03-14 10:53:51', '2025-08-25 17:15:31', '2025-03-14 05:23:51'),
(589, 131, 41, '2025-03-14', '2025-03-14 11:03:37', '2025-08-25 17:15:31', '2025-03-14 05:33:37'),
(590, 131, 41, '2025-03-14', '2025-03-14 11:04:27', '2025-08-25 17:15:31', '2025-03-14 05:34:27'),
(591, 156, 41, '2025-03-14', '2025-03-14 11:20:24', '2025-08-16 10:01:07', '2025-03-14 05:50:24'),
(592, 131, 41, '2025-03-14', '2025-03-14 11:39:30', '2025-08-25 17:15:31', '2025-03-14 06:09:30'),
(593, 131, 41, '2025-03-14', '2025-03-14 12:54:58', '2025-08-25 17:15:31', '2025-03-14 07:24:58'),
(594, 131, 41, '2025-03-14', '2025-03-14 13:02:12', '2025-08-25 17:15:31', '2025-03-14 07:32:12'),
(595, 131, 41, '2025-03-14', '2025-03-14 14:38:39', '2025-08-25 17:15:31', '2025-03-14 09:08:39'),
(596, 50, 0, '2025-03-14', '2025-03-14 14:55:58', '2025-08-28 10:31:09', '2025-03-14 09:25:58'),
(597, 131, 41, '2025-03-14', '2025-03-14 14:58:06', '2025-08-25 17:15:31', '2025-03-14 09:28:06'),
(598, 156, 41, '2025-03-14', '2025-03-14 15:49:06', '2025-08-16 10:01:07', '2025-03-14 10:19:06'),
(599, 158, 41, '2025-03-14', '2025-03-14 15:51:13', '2025-08-25 09:13:08', '2025-03-14 10:21:13'),
(600, 158, 41, '2025-03-14', '2025-03-14 15:54:30', '2025-08-25 09:13:08', '2025-03-14 10:24:30'),
(601, 131, 41, '2025-03-14', '2025-03-14 15:54:49', '2025-08-25 17:15:31', '2025-03-14 10:24:49'),
(602, 131, 41, '2025-03-14', '2025-03-14 15:57:30', '2025-08-25 17:15:31', '2025-03-14 10:27:30'),
(603, 157, 41, '2025-03-14', '2025-03-14 15:58:39', '2025-05-13 18:55:32', '2025-03-14 10:28:39'),
(604, 156, 41, '2025-03-14', '2025-03-14 16:00:14', '2025-08-16 10:01:07', '2025-03-14 10:30:14'),
(605, 131, 41, '2025-03-15', '2025-03-15 09:12:43', '2025-08-25 17:15:31', '2025-03-15 03:42:43'),
(606, 131, 41, '2025-03-15', '2025-03-15 11:18:29', '2025-08-25 17:15:31', '2025-03-15 05:48:29'),
(607, 131, 41, '2025-03-15', '2025-03-15 15:25:20', '2025-08-25 17:15:31', '2025-03-15 09:55:20'),
(608, 50, 0, '2025-03-15', '2025-03-15 15:25:37', '2025-08-28 10:31:09', '2025-03-15 09:55:37'),
(609, 131, 41, '2025-03-15', '2025-03-15 15:27:01', '2025-08-25 17:15:31', '2025-03-15 09:57:01'),
(610, 131, 41, '2025-03-16', '2025-03-16 09:52:06', '2025-08-25 17:15:31', '2025-03-16 04:22:06'),
(611, 131, 41, '2025-03-17', '2025-03-17 06:17:51', '2025-08-25 17:15:31', '2025-03-17 00:47:51'),
(612, 131, 41, '2025-03-17', '2025-03-17 11:26:26', '2025-08-25 17:15:31', '2025-03-17 05:56:26'),
(613, 131, 41, '2025-03-17', '2025-03-17 15:32:32', '2025-08-25 17:15:31', '2025-03-17 10:02:32'),
(614, 156, 41, '2025-03-17', '2025-03-17 15:44:35', '2025-08-16 10:01:07', '2025-03-17 10:14:35'),
(615, 158, 41, '2025-03-17', '2025-03-17 15:45:26', '2025-08-25 09:13:08', '2025-03-17 10:15:26'),
(616, 156, 41, '2025-03-17', '2025-03-17 15:46:48', '2025-08-16 10:01:07', '2025-03-17 10:16:48'),
(617, 131, 41, '2025-03-17', '2025-03-17 15:49:52', '2025-08-25 17:15:31', '2025-03-17 10:19:52'),
(618, 157, 41, '2025-03-17', '2025-03-17 16:17:55', '2025-05-13 18:55:32', '2025-03-17 10:47:55'),
(619, 131, 41, '2025-03-17', '2025-03-17 17:34:31', '2025-08-25 17:15:31', '2025-03-17 12:04:31'),
(620, 156, 41, '2025-03-17', '2025-03-17 17:35:17', '2025-08-16 10:01:07', '2025-03-17 12:05:17'),
(621, 158, 41, '2025-03-17', '2025-03-17 17:35:58', '2025-08-25 09:13:08', '2025-03-17 12:05:58'),
(622, 156, 41, '2025-03-17', '2025-03-17 17:36:36', '2025-08-16 10:01:07', '2025-03-17 12:06:36'),
(623, 158, 41, '2025-03-17', '2025-03-17 17:37:32', '2025-08-25 09:13:08', '2025-03-17 12:07:32'),
(624, 131, 41, '2025-03-17', '2025-03-17 18:56:15', '2025-08-25 17:15:31', '2025-03-17 13:26:15'),
(625, 131, 41, '2025-03-17', '2025-03-17 19:05:42', '2025-08-25 17:15:31', '2025-03-17 13:35:42'),
(626, 131, 41, '2025-03-17', '2025-03-17 19:25:46', '2025-08-25 17:15:31', '2025-03-17 13:55:46'),
(627, 131, 41, '2025-03-18', '2025-03-18 07:45:17', '2025-08-25 17:15:31', '2025-03-18 02:15:17'),
(628, 131, 41, '2025-03-18', '2025-03-18 07:45:46', '2025-08-25 17:15:31', '2025-03-18 02:15:46'),
(629, 131, 41, '2025-03-18', '2025-03-18 09:38:35', '2025-08-25 17:15:31', '2025-03-18 04:08:35'),
(630, 131, 41, '2025-03-18', '2025-03-18 10:11:08', '2025-08-25 17:15:31', '2025-03-18 04:41:08'),
(631, 131, 41, '2025-03-18', '2025-03-18 10:15:33', '2025-08-25 17:15:31', '2025-03-18 04:45:33'),
(632, 131, 41, '2025-03-18', '2025-03-18 10:21:19', '2025-08-25 17:15:31', '2025-03-18 04:51:19'),
(633, 158, 41, '2025-03-18', '2025-03-18 10:24:51', '2025-08-25 09:13:08', '2025-03-18 04:54:51'),
(634, 131, 41, '2025-03-18', '2025-03-18 10:24:53', '2025-08-25 17:15:31', '2025-03-18 04:54:53'),
(635, 131, 41, '2025-03-18', '2025-03-18 10:25:43', '2025-08-25 17:15:31', '2025-03-18 04:55:43'),
(636, 131, 41, '2025-03-18', '2025-03-18 10:36:31', '2025-08-25 17:15:31', '2025-03-18 05:06:31'),
(637, 131, 41, '2025-03-18', '2025-03-18 11:40:54', '2025-08-25 17:15:31', '2025-03-18 06:10:54'),
(638, 131, 41, '2025-03-18', '2025-03-18 11:51:12', '2025-08-25 17:15:31', '2025-03-18 06:21:12'),
(639, 131, 41, '2025-03-18', '2025-03-18 12:46:53', '2025-08-25 17:15:31', '2025-03-18 07:16:53'),
(640, 131, 41, '2025-03-18', '2025-03-18 17:33:50', '2025-08-25 17:15:31', '2025-03-18 12:03:50'),
(641, 131, 41, '2025-03-19', '2025-03-19 09:06:38', '2025-08-25 17:15:31', '2025-03-19 03:36:38'),
(642, 131, 41, '2025-03-19', '2025-03-19 12:31:58', '2025-08-25 17:15:31', '2025-03-19 07:01:58'),
(643, 131, 41, '2025-03-19', '2025-03-19 14:46:56', '2025-08-25 17:15:31', '2025-03-19 09:16:56'),
(644, 131, 41, '2025-03-19', '2025-03-19 15:39:55', '2025-08-25 17:15:31', '2025-03-19 10:09:55'),
(645, 158, 41, '2025-03-19', '2025-03-19 15:49:20', '2025-08-25 09:13:08', '2025-03-19 10:19:20'),
(646, 131, 41, '2025-03-19', '2025-03-19 15:49:30', '2025-08-25 17:15:31', '2025-03-19 10:19:30'),
(647, 131, 41, '2025-03-20', '2025-03-20 09:01:38', '2025-08-25 17:15:31', '2025-03-20 03:31:38'),
(648, 131, 41, '2025-03-20', '2025-03-20 09:07:49', '2025-08-25 17:15:31', '2025-03-20 03:37:49'),
(649, 156, 41, '2025-03-20', '2025-03-20 09:27:24', '2025-08-16 10:01:07', '2025-03-20 03:57:24'),
(650, 158, 41, '2025-03-20', '2025-03-20 09:36:34', '2025-08-25 09:13:08', '2025-03-20 04:06:34'),
(651, 156, 41, '2025-03-20', '2025-03-20 09:37:54', '2025-08-16 10:01:07', '2025-03-20 04:07:54'),
(652, 131, 41, '2025-03-20', '2025-03-20 09:42:52', '2025-08-25 17:15:31', '2025-03-20 04:12:52'),
(653, 131, 41, '2025-03-20', '2025-03-20 10:19:45', '2025-08-25 17:15:31', '2025-03-20 04:49:45'),
(654, 156, 41, '2025-03-20', '2025-03-20 11:00:37', '2025-08-16 10:01:07', '2025-03-20 05:30:37'),
(655, 157, 41, '2025-03-20', '2025-03-20 11:01:15', '2025-05-13 18:55:32', '2025-03-20 05:31:15'),
(656, 131, 41, '2025-03-20', '2025-03-20 11:01:34', '2025-08-25 17:15:31', '2025-03-20 05:31:34'),
(657, 131, 41, '2025-03-20', '2025-03-20 11:04:00', '2025-08-25 17:15:31', '2025-03-20 05:34:00'),
(658, 157, 41, '2025-03-20', '2025-03-20 11:04:12', '2025-05-13 18:55:32', '2025-03-20 05:34:12'),
(659, 131, 41, '2025-03-20', '2025-03-20 11:05:34', '2025-08-25 17:15:31', '2025-03-20 05:35:34'),
(660, 158, 41, '2025-03-20', '2025-03-20 11:10:17', '2025-08-25 09:13:08', '2025-03-20 05:40:17'),
(661, 131, 41, '2025-03-20', '2025-03-20 11:12:36', '2025-08-25 17:15:31', '2025-03-20 05:42:36'),
(662, 158, 41, '2025-03-20', '2025-03-20 11:27:27', '2025-08-25 09:13:08', '2025-03-20 05:57:27'),
(663, 158, 41, '2025-03-20', '2025-03-20 11:33:49', '2025-08-25 09:13:08', '2025-03-20 06:03:49'),
(664, 156, 41, '2025-03-20', '2025-03-20 11:34:25', '2025-08-16 10:01:07', '2025-03-20 06:04:25'),
(665, 131, 41, '2025-03-20', '2025-03-20 11:39:51', '2025-08-25 17:15:31', '2025-03-20 06:09:51'),
(666, 131, 41, '2025-03-20', '2025-03-20 11:54:27', '2025-08-25 17:15:31', '2025-03-20 06:24:27'),
(667, 158, 41, '2025-03-20', '2025-03-20 12:29:21', '2025-08-25 09:13:08', '2025-03-20 06:59:21'),
(668, 131, 41, '2025-03-20', '2025-03-20 12:31:22', '2025-08-25 17:15:31', '2025-03-20 07:01:22'),
(669, 156, 41, '2025-03-20', '2025-03-20 12:32:10', '2025-08-16 10:01:07', '2025-03-20 07:02:10'),
(670, 157, 41, '2025-03-20', '2025-03-20 12:32:27', '2025-05-13 18:55:32', '2025-03-20 07:02:27'),
(671, 131, 41, '2025-03-20', '2025-03-20 12:32:36', '2025-08-25 17:15:31', '2025-03-20 07:02:36'),
(672, 157, 41, '2025-03-20', '2025-03-20 12:33:05', '2025-05-13 18:55:32', '2025-03-20 07:03:05'),
(673, 131, 41, '2025-03-20', '2025-03-20 12:33:41', '2025-08-25 17:15:31', '2025-03-20 07:03:41'),
(674, 156, 41, '2025-03-20', '2025-03-20 15:06:18', '2025-08-16 10:01:07', '2025-03-20 09:36:18'),
(675, 131, 41, '2025-03-20', '2025-03-20 15:06:49', '2025-08-25 17:15:31', '2025-03-20 09:36:49'),
(676, 156, 41, '2025-03-20', '2025-03-20 15:07:18', '2025-08-16 10:01:07', '2025-03-20 09:37:18'),
(677, 131, 41, '2025-03-20', '2025-03-20 15:07:40', '2025-08-25 17:15:31', '2025-03-20 09:37:40'),
(678, 156, 41, '2025-03-20', '2025-03-20 15:09:39', '2025-08-16 10:01:07', '2025-03-20 09:39:39'),
(679, 131, 41, '2025-03-20', '2025-03-20 15:18:09', '2025-08-25 17:15:31', '2025-03-20 09:48:09'),
(680, 131, 41, '2025-03-20', '2025-03-20 16:26:20', '2025-08-25 17:15:31', '2025-03-20 10:56:20'),
(681, 131, 41, '2025-03-21', '2025-03-21 05:54:09', '2025-08-25 17:15:31', '2025-03-21 00:24:09'),
(682, 131, 41, '2025-03-21', '2025-03-21 09:03:58', '2025-08-25 17:15:31', '2025-03-21 03:33:58'),
(683, 131, 41, '2025-03-21', '2025-03-21 09:05:14', '2025-08-25 17:15:31', '2025-03-21 03:35:14'),
(684, 131, 41, '2025-03-21', '2025-03-21 09:39:54', '2025-08-25 17:15:31', '2025-03-21 04:09:54'),
(685, 131, 41, '2025-03-21', '2025-03-21 09:57:23', '2025-08-25 17:15:31', '2025-03-21 04:27:23'),
(686, 131, 41, '2025-03-21', '2025-03-21 10:19:37', '2025-08-25 17:15:31', '2025-03-21 04:49:37'),
(687, 131, 41, '2025-03-21', '2025-03-21 10:57:48', '2025-08-25 17:15:31', '2025-03-21 05:27:48'),
(688, 131, 41, '2025-03-21', '2025-03-21 11:11:51', '2025-08-25 17:15:31', '2025-03-21 05:41:51'),
(689, 131, 41, '2025-03-21', '2025-03-21 11:14:18', '2025-08-25 17:15:31', '2025-03-21 05:44:18'),
(690, 131, 41, '2025-03-21', '2025-03-21 11:16:32', '2025-08-25 17:15:31', '2025-03-21 05:46:32'),
(691, 131, 41, '2025-03-21', '2025-03-21 13:01:48', '2025-08-25 17:15:31', '2025-03-21 07:31:48'),
(692, 131, 41, '2025-03-21', '2025-03-21 13:16:00', '2025-08-25 17:15:31', '2025-03-21 07:46:00'),
(693, 131, 41, '2025-03-21', '2025-03-21 17:12:16', '2025-08-25 17:15:31', '2025-03-21 11:42:16'),
(694, 131, 41, '2025-03-21', '2025-03-21 17:23:50', '2025-08-25 17:15:31', '2025-03-21 11:53:50'),
(695, 50, 0, '2025-03-21', '2025-03-21 17:33:11', '2025-08-28 10:31:09', '2025-03-21 12:03:11'),
(696, 131, 41, '2025-03-21', '2025-03-21 17:39:59', '2025-08-25 17:15:31', '2025-03-21 12:09:59'),
(697, 50, 0, '2025-03-21', '2025-03-21 17:40:08', '2025-08-28 10:31:09', '2025-03-21 12:10:08'),
(698, 131, 41, '2025-03-21', '2025-03-21 18:01:58', '2025-08-25 17:15:31', '2025-03-21 12:31:58'),
(699, 131, 41, '2025-03-22', '2025-03-22 09:24:20', '2025-08-25 17:15:31', '2025-03-22 03:54:20'),
(700, 131, 41, '2025-03-24', '2025-03-24 10:48:47', '2025-08-25 17:15:31', '2025-03-24 05:18:47'),
(701, 131, 41, '2025-03-24', '2025-03-24 11:09:47', '2025-08-25 17:15:31', '2025-03-24 05:39:47'),
(702, 50, 0, '2025-03-25', '2025-03-25 14:24:57', '2025-08-28 10:31:09', '2025-03-25 08:54:57'),
(703, 131, 41, '2025-03-25', '2025-03-25 14:25:07', '2025-08-25 17:15:31', '2025-03-25 08:55:07'),
(704, 131, 41, '2025-03-25', '2025-03-25 15:20:06', '2025-08-25 17:15:31', '2025-03-25 09:50:06'),
(705, 131, 41, '2025-03-27', '2025-03-27 17:11:23', '2025-08-25 17:15:31', '2025-03-27 11:41:23'),
(706, 131, 41, '2025-03-28', '2025-03-28 10:31:47', '2025-08-25 17:15:31', '2025-03-28 05:01:47'),
(707, 131, 41, '2025-03-28', '2025-03-28 11:00:15', '2025-08-25 17:15:31', '2025-03-28 05:30:15'),
(708, 50, 0, '2025-03-28', '2025-03-28 14:47:59', '2025-08-28 10:31:09', '2025-03-28 09:17:59'),
(709, 131, 41, '2025-03-28', '2025-03-28 14:54:24', '2025-08-25 17:15:31', '2025-03-28 09:24:24'),
(710, 131, 41, '2025-03-28', '2025-03-28 15:45:34', '2025-08-25 17:15:31', '2025-03-28 10:15:34'),
(711, 156, 41, '2025-03-28', '2025-03-28 15:46:16', '2025-08-16 10:01:07', '2025-03-28 10:16:16'),
(712, 131, 41, '2025-03-28', '2025-03-28 16:32:40', '2025-08-25 17:15:31', '2025-03-28 11:02:40'),
(713, 131, 41, '2025-03-31', '2025-03-31 14:35:49', '2025-08-25 17:15:31', '2025-03-31 09:05:49'),
(714, 131, 41, '2025-04-01', '2025-04-01 11:36:00', '2025-08-25 17:15:31', '2025-04-01 06:06:00'),
(715, 131, 41, '2025-04-01', '2025-04-01 14:25:12', '2025-08-25 17:15:31', '2025-04-01 08:55:12'),
(716, 131, 41, '2025-04-01', '2025-04-01 14:54:46', '2025-08-25 17:15:31', '2025-04-01 09:24:46'),
(717, 131, 41, '2025-04-01', '2025-04-01 15:33:29', '2025-08-25 17:15:31', '2025-04-01 10:03:29'),
(718, 131, 41, '2025-04-02', '2025-04-02 11:49:53', '2025-08-25 17:15:31', '2025-04-02 06:19:53'),
(719, 131, 41, '2025-04-02', '2025-04-02 18:04:08', '2025-08-25 17:15:31', '2025-04-02 12:34:08'),
(720, 50, 0, '2025-04-19', '2025-04-19 10:59:37', '2025-08-28 10:31:09', '2025-04-19 05:29:37'),
(721, 50, 0, '2025-04-19', '2025-04-19 11:14:42', '2025-08-28 10:31:09', '2025-04-19 05:44:42'),
(722, 131, 41, '2025-04-19', '2025-04-19 11:14:57', '2025-08-25 17:15:31', '2025-04-19 05:44:57'),
(723, 50, 0, '2025-04-19', '2025-04-19 11:22:42', '2025-08-28 10:31:09', '2025-04-19 05:52:42'),
(724, 50, 0, '2025-04-19', '2025-04-19 11:24:40', '2025-08-28 10:31:09', '2025-04-19 05:54:40'),
(725, 50, 0, '2025-04-19', '2025-04-19 11:34:12', '2025-08-28 10:31:09', '2025-04-19 06:04:12'),
(726, 50, 0, '2025-04-19', '2025-04-19 12:24:15', '2025-08-28 10:31:09', '2025-04-19 06:54:15'),
(727, 131, 41, '2025-04-19', '2025-04-19 12:29:38', '2025-08-25 17:15:31', '2025-04-19 06:59:38'),
(728, 50, 0, '2025-04-19', '2025-04-19 12:30:45', '2025-08-28 10:31:09', '2025-04-19 07:00:45'),
(729, 131, 41, '2025-04-19', '2025-04-19 12:54:31', '2025-08-25 17:15:31', '2025-04-19 07:24:31'),
(730, 50, 0, '2025-04-19', '2025-04-19 12:55:21', '2025-08-28 10:31:09', '2025-04-19 07:25:21'),
(731, 50, 0, '2025-04-19', '2025-04-19 14:11:03', '2025-08-28 10:31:09', '2025-04-19 08:41:03'),
(732, 50, 0, '2025-04-21', '2025-04-21 10:39:47', '2025-08-28 10:31:09', '2025-04-21 05:09:47'),
(733, 50, 0, '2025-04-22', '2025-04-22 09:14:34', '2025-08-28 10:31:09', '2025-04-22 03:44:34'),
(734, 131, 41, '2025-04-22', '2025-04-22 17:28:03', '2025-08-25 17:15:31', '2025-04-22 11:58:03'),
(735, 50, 0, '2025-04-22', '2025-04-22 17:29:47', '2025-08-28 10:31:09', '2025-04-22 11:59:47'),
(736, 131, 41, '2025-04-22', '2025-04-22 17:59:20', '2025-08-25 17:15:31', '2025-04-22 12:29:20'),
(737, 50, 0, '2025-04-22', '2025-04-22 18:06:46', '2025-08-28 10:31:09', '2025-04-22 12:36:46'),
(738, 131, 41, '2025-04-22', '2025-04-22 18:10:00', '2025-08-25 17:15:31', '2025-04-22 12:40:00'),
(739, 50, 0, '2025-04-22', '2025-04-22 18:11:25', '2025-08-28 10:31:09', '2025-04-22 12:41:25'),
(740, 50, 0, '2025-04-23', '2025-04-23 09:09:56', '2025-08-28 10:31:09', '2025-04-23 03:39:56'),
(741, 50, 0, '2025-04-24', '2025-04-24 09:07:02', '2025-08-28 10:31:09', '2025-04-24 03:37:02'),
(742, 50, 0, '2025-04-25', '2025-04-25 09:16:28', '2025-08-28 10:31:09', '2025-04-25 03:46:28'),
(743, 50, 0, '2025-04-26', '2025-04-26 09:07:34', '2025-08-28 10:31:09', '2025-04-26 03:37:34'),
(744, 50, 0, '2025-04-28', '2025-04-28 09:09:10', '2025-08-28 10:31:09', '2025-04-28 03:39:10'),
(745, 131, 41, '2025-04-28', '2025-04-28 11:03:47', '2025-08-25 17:15:31', '2025-04-28 05:33:47'),
(746, 50, 0, '2025-04-28', '2025-04-28 11:04:22', '2025-08-28 10:31:09', '2025-04-28 05:34:22'),
(747, 131, 41, '2025-04-28', '2025-04-28 11:04:43', '2025-08-25 17:15:31', '2025-04-28 05:34:43'),
(748, 50, 0, '2025-04-28', '2025-04-28 11:09:40', '2025-08-28 10:31:09', '2025-04-28 05:39:40'),
(749, 131, 41, '2025-04-28', '2025-04-28 11:10:11', '2025-08-25 17:15:31', '2025-04-28 05:40:11'),
(750, 50, 0, '2025-04-28', '2025-04-28 11:42:26', '2025-08-28 10:31:09', '2025-04-28 06:12:26'),
(751, 131, 41, '2025-04-28', '2025-04-28 12:17:07', '2025-08-25 17:15:31', '2025-04-28 06:47:07'),
(752, 50, 0, '2025-04-28', '2025-04-28 12:18:34', '2025-08-28 10:31:09', '2025-04-28 06:48:34'),
(753, 131, 41, '2025-04-28', '2025-04-28 12:18:54', '2025-08-25 17:15:31', '2025-04-28 06:48:54'),
(754, 50, 0, '2025-04-28', '2025-04-28 12:36:46', '2025-08-28 10:31:09', '2025-04-28 07:06:46'),
(755, 131, 41, '2025-04-28', '2025-04-28 12:53:46', '2025-08-25 17:15:31', '2025-04-28 07:23:46'),
(756, 50, 0, '2025-04-28', '2025-04-28 14:15:16', '2025-08-28 10:31:09', '2025-04-28 08:45:16'),
(757, 131, 41, '2025-04-28', '2025-04-28 14:28:56', '2025-08-25 17:15:31', '2025-04-28 08:58:56'),
(758, 131, 41, '2025-04-28', '2025-04-28 14:29:46', '2025-08-25 17:15:31', '2025-04-28 08:59:46'),
(759, 157, 41, '2025-04-28', '2025-04-28 14:32:24', '2025-05-13 18:55:32', '2025-04-28 09:02:24'),
(760, 131, 41, '2025-04-28', '2025-04-28 14:32:40', '2025-08-25 17:15:31', '2025-04-28 09:02:40'),
(761, 158, 41, '2025-04-28', '2025-04-28 14:33:00', '2025-08-25 09:13:08', '2025-04-28 09:03:00'),
(762, 131, 41, '2025-04-28', '2025-04-28 14:35:23', '2025-08-25 17:15:31', '2025-04-28 09:05:23'),
(763, 161, 58, '2025-04-28', '2025-04-28 14:47:37', '2025-04-28 14:47:49', '2025-04-28 09:17:37'),
(764, 161, 58, '2025-04-28', '2025-04-28 14:50:24', '0000-00-00 00:00:00', '2025-04-28 09:20:24'),
(765, 161, 58, '2025-04-28', '2025-04-28 14:51:09', '0000-00-00 00:00:00', '2025-04-28 09:21:09'),
(766, 131, 41, '2025-04-28', '2025-04-28 14:52:37', '2025-08-25 17:15:31', '2025-04-28 09:22:37'),
(767, 50, 0, '2025-04-28', '2025-04-28 14:52:58', '2025-08-28 10:31:09', '2025-04-28 09:22:58'),
(768, 131, 41, '2025-04-28', '2025-04-28 14:55:29', '2025-08-25 17:15:31', '2025-04-28 09:25:29'),
(769, 131, 41, '2025-04-28', '2025-04-28 14:57:12', '2025-08-25 17:15:31', '2025-04-28 09:27:12'),
(770, 50, 0, '2025-04-28', '2025-04-28 15:08:09', '2025-08-28 10:31:09', '2025-04-28 09:38:09'),
(771, 161, 58, '2025-04-28', '2025-04-28 15:12:08', '0000-00-00 00:00:00', '2025-04-28 09:42:08'),
(772, 131, 41, '2025-04-28', '2025-04-28 15:13:36', '2025-08-25 17:15:31', '2025-04-28 09:43:36'),
(773, 161, 58, '2025-04-28', '2025-04-28 15:15:13', '0000-00-00 00:00:00', '2025-04-28 09:45:13'),
(774, 161, 58, '2025-04-28', '2025-04-28 15:18:06', '0000-00-00 00:00:00', '2025-04-28 09:48:06'),
(775, 176, 64, '2025-04-28', '2025-04-28 15:20:02', '2025-05-02 11:13:01', '2025-04-28 09:50:02'),
(776, 50, 0, '2025-04-28', '2025-04-28 15:24:34', '2025-08-28 10:31:09', '2025-04-28 09:54:34'),
(777, 50, 0, '2025-04-28', '2025-04-28 15:27:56', '2025-08-28 10:31:09', '2025-04-28 09:57:56'),
(778, 131, 41, '2025-04-28', '2025-04-28 15:28:53', '2025-08-25 17:15:31', '2025-04-28 09:58:53'),
(779, 176, 64, '2025-04-28', '2025-04-28 15:29:02', '2025-05-02 11:13:01', '2025-04-28 09:59:02'),
(780, 176, 64, '2025-04-28', '2025-04-28 15:29:46', '2025-05-02 11:13:01', '2025-04-28 09:59:46'),
(781, 176, 64, '2025-04-28', '2025-04-28 15:31:03', '2025-05-02 11:13:01', '2025-04-28 10:01:03'),
(782, 178, 64, '2025-04-28', '2025-04-28 15:32:38', '2025-04-29 17:05:24', '2025-04-28 10:02:38'),
(783, 176, 64, '2025-04-28', '2025-04-28 15:33:08', '2025-05-02 11:13:01', '2025-04-28 10:03:08'),
(784, 176, 64, '2025-04-28', '2025-04-28 15:49:53', '2025-05-02 11:13:01', '2025-04-28 10:19:53'),
(785, 50, 0, '2025-04-28', '2025-04-28 15:56:37', '2025-08-28 10:31:09', '2025-04-28 10:26:37'),
(786, 131, 41, '2025-04-28', '2025-04-28 16:23:43', '2025-08-25 17:15:31', '2025-04-28 10:53:43'),
(787, 50, 0, '2025-04-28', '2025-04-28 16:29:31', '2025-08-28 10:31:09', '2025-04-28 10:59:31'),
(788, 176, 64, '2025-04-28', '2025-04-28 16:29:51', '2025-05-02 11:13:01', '2025-04-28 10:59:51'),
(789, 50, 0, '2025-04-28', '2025-04-28 17:01:11', '2025-08-28 10:31:09', '2025-04-28 11:31:11'),
(790, 131, 41, '2025-04-28', '2025-04-28 17:40:14', '2025-08-25 17:15:31', '2025-04-28 12:10:14'),
(791, 176, 64, '2025-04-28', '2025-04-28 17:41:22', '2025-05-02 11:13:01', '2025-04-28 12:11:22'),
(792, 176, 64, '2025-04-29', '2025-04-29 10:17:24', '2025-05-02 11:13:01', '2025-04-29 04:47:24'),
(793, 176, 64, '2025-04-29', '2025-04-29 11:33:09', '2025-05-02 11:13:01', '2025-04-29 06:03:09'),
(794, 50, 0, '2025-04-29', '2025-04-29 11:53:33', '2025-08-28 10:31:09', '2025-04-29 06:23:33'),
(795, 176, 64, '2025-04-29', '2025-04-29 12:00:13', '2025-05-02 11:13:01', '2025-04-29 06:30:13'),
(796, 50, 0, '2025-04-29', '2025-04-29 12:00:29', '2025-08-28 10:31:09', '2025-04-29 06:30:29'),
(797, 50, 0, '2025-04-29', '2025-04-29 12:05:17', '2025-08-28 10:31:09', '2025-04-29 06:35:17'),
(798, 176, 64, '2025-04-29', '2025-04-29 12:06:38', '2025-05-02 11:13:01', '2025-04-29 06:36:38'),
(799, 50, 0, '2025-04-29', '2025-04-29 12:13:42', '2025-08-28 10:31:09', '2025-04-29 06:43:42'),
(800, 176, 64, '2025-04-29', '2025-04-29 12:14:25', '2025-05-02 11:13:01', '2025-04-29 06:44:25'),
(801, 50, 0, '2025-04-29', '2025-04-29 12:20:06', '2025-08-28 10:31:09', '2025-04-29 06:50:06'),
(802, 50, 0, '2025-04-29', '2025-04-29 14:22:42', '2025-08-28 10:31:09', '2025-04-29 08:52:42'),
(803, 50, 0, '2025-04-29', '2025-04-29 15:08:09', '2025-08-28 10:31:09', '2025-04-29 09:38:09'),
(804, 176, 64, '2025-04-29', '2025-04-29 15:09:25', '2025-05-02 11:13:01', '2025-04-29 09:39:25'),
(805, 50, 0, '2025-04-29', '2025-04-29 15:13:19', '2025-08-28 10:31:09', '2025-04-29 09:43:19'),
(806, 176, 64, '2025-04-29', '2025-04-29 15:55:59', '2025-05-02 11:13:01', '2025-04-29 10:25:59'),
(807, 50, 0, '2025-04-29', '2025-04-29 15:58:33', '2025-08-28 10:31:09', '2025-04-29 10:28:33'),
(808, 131, 41, '2025-04-29', '2025-04-29 15:59:04', '2025-08-25 17:15:31', '2025-04-29 10:29:04'),
(809, 176, 64, '2025-04-29', '2025-04-29 15:59:50', '2025-05-02 11:13:01', '2025-04-29 10:29:50'),
(810, 50, 0, '2025-04-29', '2025-04-29 16:00:13', '2025-08-28 10:31:09', '2025-04-29 10:30:13'),
(811, 176, 64, '2025-04-29', '2025-04-29 16:00:34', '2025-05-02 11:13:01', '2025-04-29 10:30:34'),
(812, 176, 64, '2025-04-29', '2025-04-29 16:19:15', '2025-05-02 11:13:01', '2025-04-29 10:49:15'),
(813, 176, 64, '2025-04-29', '2025-04-29 16:20:03', '2025-05-02 11:13:01', '2025-04-29 10:50:03'),
(814, 176, 64, '2025-04-29', '2025-04-29 16:22:45', '2025-05-02 11:13:01', '2025-04-29 10:52:45'),
(815, 176, 64, '2025-04-29', '2025-04-29 16:28:23', '2025-05-02 11:13:01', '2025-04-29 10:58:23'),
(816, 176, 64, '2025-04-29', '2025-04-29 17:00:35', '2025-05-02 11:13:01', '2025-04-29 11:30:35'),
(817, 178, 64, '2025-04-29', '2025-04-29 17:03:01', '2025-04-29 17:05:24', '2025-04-29 11:33:01'),
(818, 178, 64, '2025-04-29', '2025-04-29 17:03:49', '2025-04-29 17:05:24', '2025-04-29 11:33:49'),
(819, 176, 64, '2025-04-29', '2025-04-29 17:05:32', '2025-05-02 11:13:01', '2025-04-29 11:35:32'),
(820, 176, 64, '2025-04-29', '2025-04-29 17:11:05', '2025-05-02 11:13:01', '2025-04-29 11:41:05'),
(821, 50, 0, '2025-04-29', '2025-04-29 17:24:57', '2025-08-28 10:31:09', '2025-04-29 11:54:57'),
(822, 176, 64, '2025-04-29', '2025-04-29 17:59:58', '2025-05-02 11:13:01', '2025-04-29 12:29:58'),
(823, 50, 0, '2025-04-29', '2025-04-29 18:00:22', '2025-08-28 10:31:09', '2025-04-29 12:30:22'),
(824, 50, 0, '2025-04-30', '2025-04-30 09:29:44', '2025-08-28 10:31:09', '2025-04-30 03:59:44'),
(825, 176, 64, '2025-04-30', '2025-04-30 09:39:45', '2025-05-02 11:13:01', '2025-04-30 04:09:45'),
(826, 50, 0, '2025-04-30', '2025-04-30 09:40:31', '2025-08-28 10:31:09', '2025-04-30 04:10:31'),
(827, 50, 0, '2025-04-30', '2025-04-30 10:20:12', '2025-08-28 10:31:09', '2025-04-30 04:50:12'),
(828, 50, 0, '2025-04-30', '2025-04-30 10:20:54', '2025-08-28 10:31:09', '2025-04-30 04:50:54'),
(829, 131, 41, '2025-04-30', '2025-04-30 12:26:40', '2025-08-25 17:15:31', '2025-04-30 06:56:40'),
(830, 131, 41, '2025-04-30', '2025-04-30 12:29:26', '2025-08-25 17:15:31', '2025-04-30 06:59:26'),
(831, 176, 64, '2025-04-30', '2025-04-30 12:30:23', '2025-05-02 11:13:01', '2025-04-30 07:00:23'),
(832, 50, 0, '2025-04-30', '2025-04-30 12:30:36', '2025-08-28 10:31:09', '2025-04-30 07:00:36'),
(833, 176, 64, '2025-04-30', '2025-04-30 12:31:22', '2025-05-02 11:13:01', '2025-04-30 07:01:22'),
(834, 50, 0, '2025-04-30', '2025-04-30 12:31:52', '2025-08-28 10:31:09', '2025-04-30 07:01:52'),
(835, 176, 64, '2025-04-30', '2025-04-30 12:33:52', '2025-05-02 11:13:01', '2025-04-30 07:03:52'),
(836, 50, 0, '2025-04-30', '2025-04-30 12:35:52', '2025-08-28 10:31:09', '2025-04-30 07:05:52'),
(837, 131, 41, '2025-04-30', '2025-04-30 13:00:29', '2025-08-25 17:15:31', '2025-04-30 07:30:29'),
(838, 50, 0, '2025-04-30', '2025-04-30 13:00:46', '2025-08-28 10:31:09', '2025-04-30 07:30:46'),
(839, 176, 64, '2025-04-30', '2025-04-30 13:01:40', '2025-05-02 11:13:01', '2025-04-30 07:31:40'),
(840, 50, 0, '2025-04-30', '2025-04-30 14:37:58', '2025-08-28 10:31:09', '2025-04-30 09:07:58'),
(841, 178, 64, '2025-04-30', '2025-04-30 14:40:38', '0000-00-00 00:00:00', '2025-04-30 09:10:38'),
(842, 50, 0, '2025-04-30', '2025-04-30 14:43:59', '2025-08-28 10:31:09', '2025-04-30 09:13:59'),
(843, 176, 64, '2025-04-30', '2025-04-30 14:49:40', '2025-05-02 11:13:01', '2025-04-30 09:19:40'),
(844, 50, 0, '2025-04-30', '2025-04-30 15:20:22', '2025-08-28 10:31:09', '2025-04-30 09:50:22'),
(845, 176, 64, '2025-04-30', '2025-04-30 15:28:42', '2025-05-02 11:13:01', '2025-04-30 09:58:42'),
(846, 50, 0, '2025-04-30', '2025-04-30 15:28:50', '2025-08-28 10:31:09', '2025-04-30 09:58:50'),
(847, 176, 64, '2025-04-30', '2025-04-30 15:29:38', '2025-05-02 11:13:01', '2025-04-30 09:59:38'),
(848, 131, 41, '2025-04-30', '2025-04-30 15:33:13', '2025-08-25 17:15:31', '2025-04-30 10:03:13'),
(849, 131, 41, '2025-04-30', '2025-04-30 16:03:25', '2025-08-25 17:15:31', '2025-04-30 10:33:25'),
(850, 50, 0, '2025-04-30', '2025-04-30 16:36:00', '2025-08-28 10:31:09', '2025-04-30 11:06:00'),
(851, 131, 41, '2025-04-30', '2025-04-30 17:17:00', '2025-08-25 17:15:31', '2025-04-30 11:47:00'),
(852, 50, 0, '2025-04-30', '2025-04-30 17:17:12', '2025-08-28 10:31:09', '2025-04-30 11:47:12'),
(853, 50, 0, '2025-04-30', '2025-04-30 17:17:49', '2025-08-28 10:31:09', '2025-04-30 11:47:49'),
(854, 131, 41, '2025-04-30', '2025-04-30 17:18:31', '2025-08-25 17:15:31', '2025-04-30 11:48:31'),
(855, 176, 64, '2025-04-30', '2025-04-30 17:26:32', '2025-05-02 11:13:01', '2025-04-30 11:56:32'),
(856, 131, 41, '2025-04-30', '2025-04-30 17:27:48', '2025-08-25 17:15:31', '2025-04-30 11:57:48'),
(857, 50, 0, '2025-04-30', '2025-04-30 17:33:06', '2025-08-28 10:31:09', '2025-04-30 12:03:06'),
(858, 131, 41, '2025-04-30', '2025-04-30 18:01:57', '2025-08-25 17:15:31', '2025-04-30 12:31:57'),
(859, 50, 0, '2025-05-02', '2025-05-02 09:26:40', '2025-08-28 10:31:09', '2025-05-02 03:56:40'),
(860, 131, 41, '2025-05-02', '2025-05-02 09:29:16', '2025-08-25 17:15:31', '2025-05-02 03:59:16'),
(861, 50, 0, '2025-05-02', '2025-05-02 09:30:29', '2025-08-28 10:31:09', '2025-05-02 04:00:29'),
(862, 131, 41, '2025-05-02', '2025-05-02 09:31:07', '2025-08-25 17:15:31', '2025-05-02 04:01:07'),
(863, 131, 41, '2025-05-02', '2025-05-02 10:02:02', '2025-08-25 17:15:31', '2025-05-02 04:32:02'),
(864, 176, 64, '2025-05-02', '2025-05-02 10:03:26', '2025-05-02 11:13:01', '2025-05-02 04:33:26'),
(865, 50, 0, '2025-05-02', '2025-05-02 11:13:08', '2025-08-28 10:31:09', '2025-05-02 05:43:08'),
(866, 131, 41, '2025-05-02', '2025-05-02 11:16:37', '2025-08-25 17:15:31', '2025-05-02 05:46:37'),
(867, 131, 41, '2025-05-02', '2025-05-02 11:45:58', '2025-08-25 17:15:31', '2025-05-02 06:15:58'),
(868, 50, 0, '2025-05-02', '2025-05-02 11:46:07', '2025-08-28 10:31:09', '2025-05-02 06:16:07'),
(869, 131, 41, '2025-05-02', '2025-05-02 11:47:23', '2025-08-25 17:15:31', '2025-05-02 06:17:23'),
(870, 50, 0, '2025-05-02', '2025-05-02 11:49:51', '2025-08-28 10:31:09', '2025-05-02 06:19:51'),
(871, 131, 41, '2025-05-02', '2025-05-02 11:51:22', '2025-08-25 17:15:31', '2025-05-02 06:21:22'),
(872, 50, 0, '2025-05-02', '2025-05-02 15:39:21', '2025-08-28 10:31:09', '2025-05-02 10:09:21'),
(873, 131, 41, '2025-05-02', '2025-05-02 15:40:06', '2025-08-25 17:15:31', '2025-05-02 10:10:06'),
(874, 50, 0, '2025-05-02', '2025-05-02 15:42:04', '2025-08-28 10:31:09', '2025-05-02 10:12:04'),
(875, 50, 0, '2025-05-12', '2025-05-12 19:30:04', '2025-08-28 10:31:09', '2025-05-12 14:00:04'),
(876, 50, 0, '2025-05-13', '2025-05-13 09:08:04', '2025-08-28 10:31:09', '2025-05-13 03:38:04'),
(877, 50, 0, '2025-05-13', '2025-05-13 09:08:51', '2025-08-28 10:31:09', '2025-05-13 03:38:51'),
(878, 131, 41, '2025-05-13', '2025-05-13 09:17:29', '2025-08-25 17:15:31', '2025-05-13 03:47:29'),
(879, 131, 41, '2025-05-13', '2025-05-13 09:25:50', '2025-08-25 17:15:31', '2025-05-13 03:55:50'),
(880, 50, 0, '2025-05-13', '2025-05-13 09:37:59', '2025-08-28 10:31:09', '2025-05-13 04:07:59'),
(881, 131, 41, '2025-05-13', '2025-05-13 09:53:41', '2025-08-25 17:15:31', '2025-05-13 04:23:41'),
(882, 131, 41, '2025-05-13', '2025-05-13 09:59:14', '2025-08-25 17:15:31', '2025-05-13 04:29:14'),
(883, 50, 0, '2025-05-13', '2025-05-13 10:39:29', '2025-08-28 10:31:09', '2025-05-13 05:09:29'),
(884, 50, 0, '2025-05-13', '2025-05-13 10:42:43', '2025-08-28 10:31:09', '2025-05-13 05:12:43'),
(885, 131, 41, '2025-05-13', '2025-05-13 10:43:41', '2025-08-25 17:15:31', '2025-05-13 05:13:41'),
(886, 131, 41, '2025-05-13', '2025-05-13 10:44:05', '2025-08-25 17:15:31', '2025-05-13 05:14:05'),
(887, 131, 41, '2025-05-13', '2025-05-13 11:47:48', '2025-08-25 17:15:31', '2025-05-13 06:17:48'),
(888, 158, 41, '2025-05-13', '2025-05-13 11:48:19', '2025-08-25 09:13:08', '2025-05-13 06:18:19'),
(889, 131, 41, '2025-05-13', '2025-05-13 11:51:46', '2025-08-25 17:15:31', '2025-05-13 06:21:46'),
(890, 156, 41, '2025-05-13', '2025-05-13 11:53:13', '2025-08-16 10:01:07', '2025-05-13 06:23:13'),
(891, 131, 41, '2025-05-13', '2025-05-13 11:53:41', '2025-08-25 17:15:31', '2025-05-13 06:23:41'),
(892, 50, 0, '2025-05-13', '2025-05-13 11:55:00', '2025-08-28 10:31:09', '2025-05-13 06:25:00'),
(893, 131, 41, '2025-05-13', '2025-05-13 12:00:16', '2025-08-25 17:15:31', '2025-05-13 06:30:16'),
(894, 156, 41, '2025-05-13', '2025-05-13 12:00:47', '2025-08-16 10:01:07', '2025-05-13 06:30:47'),
(895, 156, 41, '2025-05-13', '2025-05-13 12:01:11', '2025-08-16 10:01:07', '2025-05-13 06:31:11'),
(896, 158, 41, '2025-05-13', '2025-05-13 12:01:54', '2025-08-25 09:13:08', '2025-05-13 06:31:54'),
(897, 131, 41, '2025-05-13', '2025-05-13 12:04:37', '2025-08-25 17:15:31', '2025-05-13 06:34:37'),
(898, 131, 41, '2025-05-13', '2025-05-13 12:07:23', '2025-08-25 17:15:31', '2025-05-13 06:37:23'),
(899, 131, 41, '2025-05-13', '2025-05-13 12:11:40', '2025-08-25 17:15:31', '2025-05-13 06:41:40'),
(900, 131, 41, '2025-05-13', '2025-05-13 12:14:06', '2025-08-25 17:15:31', '2025-05-13 06:44:06'),
(901, 50, 0, '2025-05-13', '2025-05-13 12:18:27', '2025-08-28 10:31:09', '2025-05-13 06:48:27'),
(902, 131, 41, '2025-05-13', '2025-05-13 12:19:24', '2025-08-25 17:15:31', '2025-05-13 06:49:24'),
(903, 158, 41, '2025-05-13', '2025-05-13 12:21:17', '2025-08-25 09:13:08', '2025-05-13 06:51:17'),
(904, 183, 41, '2025-05-13', '2025-05-13 12:46:10', '2025-05-14 17:29:19', '2025-05-13 07:16:10'),
(905, 156, 41, '2025-05-13', '2025-05-13 12:58:04', '2025-08-16 10:01:07', '2025-05-13 07:28:04'),
(906, 157, 41, '2025-05-13', '2025-05-13 12:58:16', '2025-05-13 18:55:32', '2025-05-13 07:28:16'),
(907, 183, 41, '2025-05-13', '2025-05-13 12:58:24', '2025-05-14 17:29:19', '2025-05-13 07:28:24'),
(908, 131, 41, '2025-05-13', '2025-05-13 12:59:05', '2025-08-25 17:15:31', '2025-05-13 07:29:05'),
(909, 158, 41, '2025-05-13', '2025-05-13 14:11:52', '2025-08-25 09:13:08', '2025-05-13 08:41:52'),
(910, 131, 41, '2025-05-13', '2025-05-13 15:46:12', '2025-08-25 17:15:31', '2025-05-13 10:16:12'),
(911, 158, 41, '2025-05-13', '2025-05-13 15:51:27', '2025-08-25 09:13:08', '2025-05-13 10:21:27'),
(912, 131, 41, '2025-05-13', '2025-05-13 15:51:41', '2025-08-25 17:15:31', '2025-05-13 10:21:41'),
(913, 131, 41, '2025-05-13', '2025-05-13 15:52:59', '2025-08-25 17:15:31', '2025-05-13 10:22:59'),
(914, 158, 41, '2025-05-13', '2025-05-13 15:54:41', '2025-08-25 09:13:08', '2025-05-13 10:24:41'),
(915, 50, 0, '2025-05-13', '2025-05-13 18:15:11', '2025-08-28 10:31:09', '2025-05-13 12:45:11'),
(916, 131, 41, '2025-05-13', '2025-05-13 18:15:49', '2025-08-25 17:15:31', '2025-05-13 12:45:49'),
(917, 156, 41, '2025-05-13', '2025-05-13 18:55:10', '2025-08-16 10:01:07', '2025-05-13 13:25:10'),
(918, 157, 41, '2025-05-13', '2025-05-13 18:55:26', '2025-05-13 18:55:32', '2025-05-13 13:25:26'),
(919, 131, 41, '2025-05-13', '2025-05-13 18:55:40', '2025-08-25 17:15:31', '2025-05-13 13:25:40'),
(920, 183, 41, '2025-05-13', '2025-05-13 18:56:04', '2025-05-14 17:29:19', '2025-05-13 13:26:04'),
(921, 131, 41, '2025-05-13', '2025-05-13 18:56:26', '2025-08-25 17:15:31', '2025-05-13 13:26:26'),
(922, 158, 41, '2025-05-13', '2025-05-13 18:58:08', '2025-08-25 09:13:08', '2025-05-13 13:28:08'),
(923, 131, 41, '2025-05-13', '2025-05-13 19:08:23', '2025-08-25 17:15:31', '2025-05-13 13:38:23'),
(924, 156, 41, '2025-05-13', '2025-05-13 19:13:08', '2025-08-16 10:01:07', '2025-05-13 13:43:08'),
(925, 158, 41, '2025-05-13', '2025-05-13 19:15:20', '2025-08-25 09:13:08', '2025-05-13 13:45:20'),
(926, 131, 41, '2025-05-13', '2025-05-13 19:15:59', '2025-08-25 17:15:31', '2025-05-13 13:45:59'),
(927, 131, 41, '2025-05-13', '2025-05-13 19:16:48', '2025-08-25 17:15:31', '2025-05-13 13:46:48'),
(928, 156, 41, '2025-05-13', '2025-05-13 19:17:19', '2025-08-16 10:01:07', '2025-05-13 13:47:19'),
(929, 131, 41, '2025-05-13', '2025-05-13 19:20:15', '2025-08-25 17:15:31', '2025-05-13 13:50:15'),
(930, 50, 0, '2025-05-13', '2025-05-13 19:22:04', '2025-08-28 10:31:09', '2025-05-13 13:52:04'),
(931, 183, 41, '2025-05-13', '2025-05-13 19:26:19', '2025-05-14 17:29:19', '2025-05-13 13:56:19'),
(932, 158, 41, '2025-05-13', '2025-05-13 19:26:56', '2025-08-25 09:13:08', '2025-05-13 13:56:56'),
(933, 50, 0, '2025-05-13', '2025-05-13 19:29:57', '2025-08-28 10:31:09', '2025-05-13 13:59:57'),
(934, 50, 0, '2025-05-13', '2025-05-13 19:33:36', '2025-08-28 10:31:09', '2025-05-13 14:03:36'),
(935, 131, 41, '2025-05-13', '2025-05-13 19:39:23', '2025-08-25 17:15:31', '2025-05-13 14:09:23'),
(936, 158, 41, '2025-05-13', '2025-05-13 19:40:53', '2025-08-25 09:13:08', '2025-05-13 14:10:53'),
(937, 50, 0, '2025-05-14', '2025-05-14 15:03:56', '2025-08-28 10:31:09', '2025-05-14 09:33:56'),
(938, 131, 41, '2025-05-14', '2025-05-14 16:57:16', '2025-08-25 17:15:31', '2025-05-14 11:27:16'),
(939, 156, 41, '2025-05-14', '2025-05-14 16:57:29', '2025-08-16 10:01:07', '2025-05-14 11:27:29'),
(940, 158, 41, '2025-05-14', '2025-05-14 16:58:03', '2025-08-25 09:13:08', '2025-05-14 11:28:03'),
(941, 131, 41, '2025-05-14', '2025-05-14 17:01:55', '2025-08-25 17:15:31', '2025-05-14 11:31:55'),
(942, 50, 0, '2025-05-14', '2025-05-14 17:07:39', '2025-08-28 10:31:09', '2025-05-14 11:37:39'),
(943, 131, 41, '2025-05-14', '2025-05-14 17:15:48', '2025-08-25 17:15:31', '2025-05-14 11:45:48'),
(944, 183, 41, '2025-05-14', '2025-05-14 17:16:52', '2025-05-14 17:29:19', '2025-05-14 11:46:52'),
(945, 158, 41, '2025-05-14', '2025-05-14 17:17:47', '2025-08-25 09:13:08', '2025-05-14 11:47:47'),
(946, 183, 41, '2025-05-14', '2025-05-14 17:18:39', '2025-05-14 17:29:19', '2025-05-14 11:48:39'),
(947, 131, 41, '2025-05-14', '2025-05-14 17:20:19', '2025-08-25 17:15:31', '2025-05-14 11:50:19'),
(948, 183, 41, '2025-05-14', '2025-05-14 17:26:39', '2025-05-14 17:29:19', '2025-05-14 11:56:39'),
(949, 158, 41, '2025-05-14', '2025-05-14 17:27:53', '2025-08-25 09:13:08', '2025-05-14 11:57:53'),
(950, 183, 41, '2025-05-14', '2025-05-14 17:28:25', '2025-05-14 17:29:19', '2025-05-14 11:58:25'),
(951, 131, 41, '2025-05-14', '2025-05-14 17:29:27', '2025-08-25 17:15:31', '2025-05-14 11:59:27'),
(952, 50, 0, '2025-05-16', '2025-05-16 11:16:18', '2025-08-28 10:31:09', '2025-05-16 05:46:18'),
(953, 50, 0, '2025-05-16', '2025-05-16 17:30:54', '2025-08-28 10:31:09', '2025-05-16 12:00:54'),
(954, 131, 41, '2025-05-16', '2025-05-16 17:32:51', '2025-08-25 17:15:31', '2025-05-16 12:02:51'),
(955, 50, 0, '2025-05-16', '2025-05-16 17:33:55', '2025-08-28 10:31:09', '2025-05-16 12:03:55'),
(956, 131, 41, '2025-05-16', '2025-05-16 17:36:10', '2025-08-25 17:15:31', '2025-05-16 12:06:10'),
(957, 131, 41, '2025-05-22', '2025-05-22 17:31:45', '2025-08-25 17:15:31', '2025-05-22 12:01:45'),
(958, 50, 0, '2025-05-22', '2025-05-22 17:32:19', '2025-08-28 10:31:09', '2025-05-22 12:02:19'),
(959, 131, 41, '2025-05-22', '2025-05-22 17:34:37', '2025-08-25 17:15:31', '2025-05-22 12:04:37'),
(960, 50, 0, '2025-05-22', '2025-05-22 17:50:18', '2025-08-28 10:31:09', '2025-05-22 12:20:18'),
(961, 131, 41, '2025-05-22', '2025-05-22 17:51:21', '2025-08-25 17:15:31', '2025-05-22 12:21:21'),
(962, 131, 41, '2025-05-26', '2025-05-26 12:23:46', '2025-08-25 17:15:31', '2025-05-26 06:53:46'),
(963, 131, 41, '2025-05-26', '2025-05-26 12:28:15', '2025-08-25 17:15:31', '2025-05-26 06:58:15'),
(964, 131, 41, '2025-05-30', '2025-05-30 12:06:49', '2025-08-25 17:15:31', '2025-05-30 06:36:49'),
(965, 131, 41, '2025-05-30', '2025-05-30 12:17:32', '2025-08-25 17:15:31', '2025-05-30 06:47:32'),
(966, 158, 41, '2025-05-30', '2025-05-30 15:49:38', '2025-08-25 09:13:08', '2025-05-30 10:19:38'),
(967, 131, 41, '2025-05-30', '2025-05-30 15:50:22', '2025-08-25 17:15:31', '2025-05-30 10:20:22'),
(968, 131, 41, '2025-05-30', '2025-05-30 15:58:21', '2025-08-25 17:15:31', '2025-05-30 10:28:21'),
(969, 131, 41, '2025-06-02', '2025-06-02 17:04:11', '2025-08-25 17:15:31', '2025-06-02 11:34:11'),
(970, 50, 0, '2025-06-02', '2025-06-02 17:06:32', '2025-08-28 10:31:09', '2025-06-02 11:36:32'),
(971, 131, 41, '2025-06-02', '2025-06-02 17:07:13', '2025-08-25 17:15:31', '2025-06-02 11:37:13'),
(972, 131, 41, '2025-06-02', '2025-06-02 17:11:07', '2025-08-25 17:15:31', '2025-06-02 11:41:07'),
(973, 50, 0, '2025-06-02', '2025-06-02 17:12:18', '2025-08-28 10:31:09', '2025-06-02 11:42:18'),
(974, 50, 0, '2025-06-02', '2025-06-02 17:17:20', '2025-08-28 10:31:09', '2025-06-02 11:47:20'),
(975, 131, 41, '2025-06-02', '2025-06-02 17:29:57', '2025-08-25 17:15:31', '2025-06-02 11:59:57'),
(976, 50, 0, '2025-06-03', '2025-06-03 08:55:56', '2025-08-28 10:31:09', '2025-06-03 03:25:56'),
(977, 131, 41, '2025-06-11', '2025-06-11 22:38:32', '2025-08-25 17:15:31', '2025-06-11 17:08:32'),
(978, 158, 41, '2025-06-18', '2025-06-18 10:37:18', '2025-08-25 09:13:08', '2025-06-18 05:07:18'),
(979, 158, 41, '2025-06-18', '2025-06-18 10:40:18', '2025-08-25 09:13:08', '2025-06-18 05:10:18'),
(980, 131, 41, '2025-06-18', '2025-06-18 10:40:39', '2025-08-25 17:15:31', '2025-06-18 05:10:39'),
(981, 158, 41, '2025-06-18', '2025-06-18 10:41:29', '2025-08-25 09:13:08', '2025-06-18 05:11:29'),
(982, 131, 41, '2025-06-18', '2025-06-18 10:42:11', '2025-08-25 17:15:31', '2025-06-18 05:12:11'),
(983, 158, 41, '2025-06-18', '2025-06-18 10:43:07', '2025-08-25 09:13:08', '2025-06-18 05:13:07'),
(984, 131, 41, '2025-06-18', '2025-06-18 10:48:16', '2025-08-25 17:15:31', '2025-06-18 05:18:16'),
(985, 131, 41, '2025-06-18', '2025-06-18 14:17:23', '2025-08-25 17:15:31', '2025-06-18 08:47:23'),
(986, 131, 41, '2025-06-18', '2025-06-18 14:26:31', '2025-08-25 17:15:31', '2025-06-18 08:56:31'),
(987, 131, 41, '2025-06-18', '2025-06-18 14:30:05', '2025-08-25 17:15:31', '2025-06-18 09:00:05'),
(988, 131, 41, '2025-06-18', '2025-06-18 14:34:43', '2025-08-25 17:15:31', '2025-06-18 09:04:43'),
(989, 50, 0, '2025-06-18', '2025-06-18 14:39:09', '2025-08-28 10:31:09', '2025-06-18 09:09:09'),
(990, 131, 41, '2025-06-18', '2025-06-18 15:34:25', '2025-08-25 17:15:31', '2025-06-18 10:04:25'),
(991, 50, 0, '2025-06-21', '2025-06-21 11:09:25', '2025-08-28 10:31:09', '2025-06-21 05:39:25'),
(992, 131, 41, '2025-06-21', '2025-06-21 11:11:21', '2025-08-25 17:15:31', '2025-06-21 05:41:21'),
(993, 50, 0, '2025-06-21', '2025-06-21 19:01:09', '2025-08-28 10:31:09', '2025-06-21 13:31:09'),
(994, 50, 0, '2025-06-23', '2025-06-23 12:57:14', '2025-08-28 10:31:09', '2025-06-23 07:27:14'),
(995, 50, 0, '2025-06-23', '2025-06-23 15:07:16', '2025-08-28 10:31:09', '2025-06-23 09:37:16'),
(996, 50, 0, '2025-06-23', '2025-06-23 15:14:08', '2025-08-28 10:31:09', '2025-06-23 09:44:08'),
(997, 50, 0, '2025-06-23', '2025-06-23 16:11:47', '2025-08-28 10:31:09', '2025-06-23 10:41:47'),
(998, 50, 0, '2025-06-23', '2025-06-23 16:13:58', '2025-08-28 10:31:09', '2025-06-23 10:43:58'),
(999, 186, 67, '2025-06-23', '2025-06-23 16:33:43', '2025-06-23 16:38:15', '2025-06-23 11:03:43'),
(1000, 50, 0, '2025-06-23', '2025-06-23 16:35:10', '2025-08-28 10:31:09', '2025-06-23 11:05:10'),
(1001, 186, 67, '2025-06-23', '2025-06-23 16:36:25', '2025-06-23 16:38:15', '2025-06-23 11:06:25'),
(1002, 50, 0, '2025-06-23', '2025-06-23 16:38:24', '2025-08-28 10:31:09', '2025-06-23 11:08:24'),
(1003, 131, 41, '2025-06-23', '2025-06-23 17:43:35', '2025-08-25 17:15:31', '2025-06-23 12:13:35'),
(1004, 50, 0, '2025-06-23', '2025-06-23 17:58:15', '2025-08-28 10:31:09', '2025-06-23 12:28:15'),
(1005, 50, 0, '2025-06-23', '2025-06-23 18:07:39', '2025-08-28 10:31:09', '2025-06-23 12:37:39'),
(1006, 131, 41, '2025-06-23', '2025-06-23 18:10:31', '2025-08-25 17:15:31', '2025-06-23 12:40:31'),
(1007, 50, 0, '2025-06-23', '2025-06-23 18:23:49', '2025-08-28 10:31:09', '2025-06-23 12:53:49'),
(1008, 50, 0, '2025-06-23', '2025-06-23 18:39:56', '2025-08-28 10:31:09', '2025-06-23 13:09:56'),
(1009, 50, 0, '2025-06-23', '2025-06-23 18:41:19', '2025-08-28 10:31:09', '2025-06-23 13:11:19'),
(1010, 50, 0, '2025-06-23', '2025-06-23 18:43:45', '2025-08-28 10:31:09', '2025-06-23 13:13:45'),
(1011, 190, 69, '2025-06-23', '2025-06-23 18:49:49', '2025-06-23 19:16:07', '2025-06-23 13:19:49'),
(1012, 131, 41, '2025-06-23', '2025-06-23 18:52:42', '2025-08-25 17:15:31', '2025-06-23 13:22:42'),
(1013, 50, 0, '2025-06-23', '2025-06-23 18:54:46', '2025-08-28 10:31:09', '2025-06-23 13:24:46'),
(1014, 131, 41, '2025-06-23', '2025-06-23 18:56:04', '2025-08-25 17:15:31', '2025-06-23 13:26:04'),
(1015, 131, 41, '2025-06-23', '2025-06-23 18:59:15', '2025-08-25 17:15:31', '2025-06-23 13:29:15'),
(1016, 158, 41, '2025-06-23', '2025-06-23 19:00:33', '2025-08-25 09:13:08', '2025-06-23 13:30:33'),
(1017, 50, 0, '2025-06-23', '2025-06-23 19:01:47', '2025-08-28 10:31:09', '2025-06-23 13:31:47'),
(1018, 131, 41, '2025-06-23', '2025-06-23 19:03:30', '2025-08-25 17:15:31', '2025-06-23 13:33:30'),
(1019, 191, 69, '2025-06-23', '2025-06-23 19:07:11', '0000-00-00 00:00:00', '2025-06-23 13:37:11'),
(1020, 190, 69, '2025-06-23', '2025-06-23 19:07:52', '2025-06-23 19:16:07', '2025-06-23 13:37:52'),
(1021, 192, 69, '2025-06-23', '2025-06-23 19:15:07', '2025-06-23 19:16:26', '2025-06-23 13:45:07'),
(1022, 50, 0, '2025-06-23', '2025-06-23 19:16:09', '2025-08-28 10:31:09', '2025-06-23 13:46:09'),
(1023, 50, 0, '2025-06-23', '2025-06-23 19:21:16', '2025-08-28 10:31:09', '2025-06-23 13:51:16'),
(1024, 50, 0, '2025-06-23', '2025-06-23 19:27:12', '2025-08-28 10:31:09', '2025-06-23 13:57:12'),
(1025, 131, 41, '2025-06-23', '2025-06-23 19:27:23', '2025-08-25 17:15:31', '2025-06-23 13:57:23'),
(1026, 131, 41, '2025-06-24', '2025-06-24 13:15:08', '2025-08-25 17:15:31', '2025-06-24 07:45:08'),
(1027, 131, 41, '2025-06-24', '2025-06-24 13:23:38', '2025-08-25 17:15:31', '2025-06-24 07:53:38'),
(1028, 131, 41, '2025-06-24', '2025-06-24 14:45:42', '2025-08-25 17:15:31', '2025-06-24 09:15:42'),
(1029, 50, 0, '2025-06-24', '2025-06-24 15:03:18', '2025-08-28 10:31:09', '2025-06-24 09:33:18'),
(1030, 131, 41, '2025-06-24', '2025-06-24 15:03:43', '2025-08-25 17:15:31', '2025-06-24 09:33:43'),
(1031, 50, 0, '2025-06-24', '2025-06-24 15:05:13', '2025-08-28 10:31:09', '2025-06-24 09:35:13'),
(1032, 131, 41, '2025-06-24', '2025-06-24 15:05:38', '2025-08-25 17:15:31', '2025-06-24 09:35:38');
INSERT INTO `user_login_logout` (`id`, `user_id`, `store_id`, `date`, `login_time`, `logout_time`, `created_at`) VALUES
(1033, 131, 41, '2025-06-24', '2025-06-24 15:06:55', '2025-08-25 17:15:31', '2025-06-24 09:36:55'),
(1034, 50, 0, '2025-06-24', '2025-06-24 15:09:07', '2025-08-28 10:31:09', '2025-06-24 09:39:07'),
(1035, 131, 41, '2025-06-24', '2025-06-24 15:10:17', '2025-08-25 17:15:31', '2025-06-24 09:40:17'),
(1036, 131, 41, '2025-06-24', '2025-06-24 15:13:12', '2025-08-25 17:15:31', '2025-06-24 09:43:12'),
(1037, 131, 41, '2025-06-24', '2025-06-24 15:24:23', '2025-08-25 17:15:31', '2025-06-24 09:54:23'),
(1038, 131, 41, '2025-06-24', '2025-06-24 15:34:55', '2025-08-25 17:15:31', '2025-06-24 10:04:55'),
(1039, 131, 41, '2025-06-24', '2025-06-24 15:35:35', '2025-08-25 17:15:31', '2025-06-24 10:05:35'),
(1040, 131, 41, '2025-06-24', '2025-06-24 17:35:14', '2025-08-25 17:15:31', '2025-06-24 12:05:14'),
(1041, 131, 41, '2025-06-24', '2025-06-24 17:48:33', '2025-08-25 17:15:31', '2025-06-24 12:18:33'),
(1042, 50, 0, '2025-06-24', '2025-06-24 17:50:24', '2025-08-28 10:31:09', '2025-06-24 12:20:24'),
(1043, 131, 41, '2025-06-24', '2025-06-24 17:50:40', '2025-08-25 17:15:31', '2025-06-24 12:20:40'),
(1044, 131, 41, '2025-06-24', '2025-06-24 17:55:09', '2025-08-25 17:15:31', '2025-06-24 12:25:09'),
(1045, 131, 41, '2025-06-27', '2025-06-27 10:55:58', '2025-08-25 17:15:31', '2025-06-27 05:25:58'),
(1046, 50, 0, '2025-06-27', '2025-06-27 11:42:07', '2025-08-28 10:31:09', '2025-06-27 06:12:07'),
(1047, 131, 41, '2025-06-27', '2025-06-27 18:31:46', '2025-08-25 17:15:31', '2025-06-27 13:01:46'),
(1048, 50, 0, '2025-06-27', '2025-06-27 18:36:51', '2025-08-28 10:31:09', '2025-06-27 13:06:51'),
(1049, 50, 0, '2025-06-28', '2025-06-28 09:13:09', '2025-08-28 10:31:09', '2025-06-28 03:43:09'),
(1050, 131, 41, '2025-06-28', '2025-06-28 09:15:42', '2025-08-25 17:15:31', '2025-06-28 03:45:42'),
(1051, 50, 0, '2025-06-28', '2025-06-28 09:17:17', '2025-08-28 10:31:09', '2025-06-28 03:47:17'),
(1052, 131, 41, '2025-06-28', '2025-06-28 09:20:13', '2025-08-25 17:15:31', '2025-06-28 03:50:13'),
(1053, 50, 0, '2025-06-28', '2025-06-28 09:27:04', '2025-08-28 10:31:09', '2025-06-28 03:57:04'),
(1054, 131, 41, '2025-06-28', '2025-06-28 09:27:56', '2025-08-25 17:15:31', '2025-06-28 03:57:56'),
(1055, 50, 0, '2025-06-28', '2025-06-28 09:28:38', '2025-08-28 10:31:09', '2025-06-28 03:58:38'),
(1056, 131, 41, '2025-06-28', '2025-06-28 09:34:42', '2025-08-25 17:15:31', '2025-06-28 04:04:42'),
(1057, 50, 0, '2025-06-28', '2025-06-28 09:39:49', '2025-08-28 10:31:09', '2025-06-28 04:09:49'),
(1058, 131, 41, '2025-06-28', '2025-06-28 10:03:14', '2025-08-25 17:15:31', '2025-06-28 04:33:14'),
(1059, 131, 41, '2025-06-28', '2025-06-28 10:14:51', '2025-08-25 17:15:31', '2025-06-28 04:44:51'),
(1060, 50, 0, '2025-06-28', '2025-06-28 10:17:05', '2025-08-28 10:31:09', '2025-06-28 04:47:05'),
(1061, 131, 41, '2025-06-28', '2025-06-28 10:20:07', '2025-08-25 17:15:31', '2025-06-28 04:50:07'),
(1062, 50, 0, '2025-06-28', '2025-06-28 10:24:43', '2025-08-28 10:31:09', '2025-06-28 04:54:43'),
(1063, 131, 41, '2025-06-28', '2025-06-28 10:25:13', '2025-08-25 17:15:31', '2025-06-28 04:55:13'),
(1064, 50, 0, '2025-06-28', '2025-06-28 10:46:56', '2025-08-28 10:31:09', '2025-06-28 05:16:56'),
(1065, 50, 0, '2025-06-28', '2025-06-28 10:57:57', '2025-08-28 10:31:09', '2025-06-28 05:27:57'),
(1066, 50, 0, '2025-06-30', '2025-06-30 09:14:08', '2025-08-28 10:31:09', '2025-06-30 03:44:08'),
(1067, 131, 41, '2025-06-30', '2025-06-30 09:29:57', '2025-08-25 17:15:31', '2025-06-30 03:59:57'),
(1068, 158, 41, '2025-06-30', '2025-06-30 11:08:21', '2025-08-25 09:13:08', '2025-06-30 05:38:21'),
(1069, 131, 41, '2025-06-30', '2025-06-30 11:40:52', '2025-08-25 17:15:31', '2025-06-30 06:10:52'),
(1070, 158, 41, '2025-06-30', '2025-06-30 11:42:54', '2025-08-25 09:13:08', '2025-06-30 06:12:54'),
(1071, 131, 41, '2025-06-30', '2025-06-30 11:44:59', '2025-08-25 17:15:31', '2025-06-30 06:14:59'),
(1072, 158, 41, '2025-06-30', '2025-06-30 13:02:33', '2025-08-25 09:13:08', '2025-06-30 07:32:33'),
(1073, 131, 41, '2025-06-30', '2025-06-30 13:03:07', '2025-08-25 17:15:31', '2025-06-30 07:33:07'),
(1074, 50, 0, '2025-06-30', '2025-06-30 14:39:33', '2025-08-28 10:31:09', '2025-06-30 09:09:33'),
(1075, 131, 41, '2025-06-30', '2025-06-30 14:46:37', '2025-08-25 17:15:31', '2025-06-30 09:16:37'),
(1076, 50, 0, '2025-06-30', '2025-06-30 15:10:15', '2025-08-28 10:31:09', '2025-06-30 09:40:15'),
(1077, 131, 41, '2025-06-30', '2025-06-30 15:14:21', '2025-08-25 17:15:31', '2025-06-30 09:44:21'),
(1078, 131, 41, '2025-06-30', '2025-06-30 18:30:18', '2025-08-25 17:15:31', '2025-06-30 13:00:18'),
(1079, 50, 0, '2025-08-02', '2025-08-02 17:47:13', '2025-08-28 10:31:09', '2025-08-02 12:17:13'),
(1080, 50, 0, '2025-08-12', '2025-08-12 09:43:18', '2025-08-28 10:31:09', '2025-08-12 04:13:18'),
(1081, 131, 41, '2025-08-12', '2025-08-12 09:44:22', '2025-08-25 17:15:31', '2025-08-12 04:14:22'),
(1082, 131, 41, '2025-08-12', '2025-08-12 09:54:44', '2025-08-25 17:15:31', '2025-08-12 04:24:44'),
(1083, 131, 41, '2025-08-13', '2025-08-13 10:42:40', '2025-08-25 17:15:31', '2025-08-13 05:12:40'),
(1084, 50, 0, '2025-08-13', '2025-08-13 12:33:17', '2025-08-28 10:31:09', '2025-08-13 07:03:17'),
(1085, 131, 41, '2025-08-13', '2025-08-13 12:33:27', '2025-08-25 17:15:31', '2025-08-13 07:03:27'),
(1086, 50, 0, '2025-08-13', '2025-08-13 13:01:58', '2025-08-28 10:31:09', '2025-08-13 07:31:58'),
(1087, 131, 41, '2025-08-13', '2025-08-13 15:22:09', '2025-08-25 17:15:31', '2025-08-13 09:52:09'),
(1088, 50, 0, '2025-08-13', '2025-08-13 18:33:15', '2025-08-28 10:31:09', '2025-08-13 13:03:15'),
(1089, 158, 41, '2025-08-14', '2025-08-14 09:37:41', '2025-08-25 09:13:08', '2025-08-14 04:07:41'),
(1090, 50, 0, '2025-08-14', '2025-08-14 14:54:35', '2025-08-28 10:31:09', '2025-08-14 09:24:35'),
(1091, 131, 41, '2025-08-14', '2025-08-14 15:12:07', '2025-08-25 17:15:31', '2025-08-14 09:42:07'),
(1092, 131, 41, '2025-08-14', '2025-08-14 15:19:51', '2025-08-25 17:15:31', '2025-08-14 09:49:51'),
(1093, 50, 0, '2025-08-14', '2025-08-14 16:26:03', '2025-08-28 10:31:09', '2025-08-14 10:56:03'),
(1094, 131, 41, '2025-08-14', '2025-08-14 16:27:06', '2025-08-25 17:15:31', '2025-08-14 10:57:06'),
(1095, 131, 41, '2025-08-14', '2025-08-14 16:29:29', '2025-08-25 17:15:31', '2025-08-14 10:59:29'),
(1096, 131, 41, '2025-08-14', '2025-08-14 16:30:01', '2025-08-25 17:15:31', '2025-08-14 11:00:01'),
(1097, 50, 0, '2025-08-14', '2025-08-14 16:30:11', '2025-08-28 10:31:09', '2025-08-14 11:00:11'),
(1098, 131, 41, '2025-08-14', '2025-08-14 16:39:00', '2025-08-25 17:15:31', '2025-08-14 11:09:00'),
(1099, 50, 0, '2025-08-14', '2025-08-14 16:40:46', '2025-08-28 10:31:09', '2025-08-14 11:10:46'),
(1100, 131, 41, '2025-08-14', '2025-08-14 16:41:07', '2025-08-25 17:15:31', '2025-08-14 11:11:07'),
(1101, 50, 0, '2025-08-16', '2025-08-16 09:18:28', '2025-08-28 10:31:09', '2025-08-16 03:48:28'),
(1102, 131, 41, '2025-08-16', '2025-08-16 09:19:16', '2025-08-25 17:15:31', '2025-08-16 03:49:16'),
(1103, 156, 41, '2025-08-16', '2025-08-16 10:00:40', '2025-08-16 10:01:07', '2025-08-16 04:30:40'),
(1104, 50, 0, '2025-08-16', '2025-08-16 10:01:16', '2025-08-28 10:31:09', '2025-08-16 04:31:16'),
(1105, 131, 41, '2025-08-16', '2025-08-16 10:02:42', '2025-08-25 17:15:31', '2025-08-16 04:32:42'),
(1106, 50, 0, '2025-08-18', '2025-08-18 17:02:22', '2025-08-28 10:31:09', '2025-08-18 11:32:22'),
(1107, 131, 41, '2025-08-18', '2025-08-18 17:16:13', '2025-08-25 17:15:31', '2025-08-18 11:46:13'),
(1108, 50, 0, '2025-08-18', '2025-08-18 17:28:16', '2025-08-28 10:31:09', '2025-08-18 11:58:16'),
(1109, 131, 41, '2025-08-18', '2025-08-18 17:29:32', '2025-08-25 17:15:31', '2025-08-18 11:59:32'),
(1110, 50, 0, '2025-08-18', '2025-08-18 17:30:21', '2025-08-28 10:31:09', '2025-08-18 12:00:21'),
(1111, 131, 41, '2025-08-18', '2025-08-18 17:32:35', '2025-08-25 17:15:31', '2025-08-18 12:02:35'),
(1112, 50, 0, '2025-08-18', '2025-08-18 18:00:25', '2025-08-28 10:31:09', '2025-08-18 12:30:25'),
(1113, 131, 41, '2025-08-18', '2025-08-18 18:02:03', '2025-08-25 17:15:31', '2025-08-18 12:32:03'),
(1114, 50, 0, '2025-08-20', '2025-08-20 09:53:26', '2025-08-28 10:31:09', '2025-08-20 04:23:26'),
(1115, 131, 41, '2025-08-20', '2025-08-20 10:24:21', '2025-08-25 17:15:31', '2025-08-20 04:54:21'),
(1116, 50, 0, '2025-08-20', '2025-08-20 10:32:50', '2025-08-28 10:31:09', '2025-08-20 05:02:50'),
(1117, 131, 41, '2025-08-20', '2025-08-20 10:33:18', '2025-08-25 17:15:31', '2025-08-20 05:03:18'),
(1118, 50, 0, '2025-08-20', '2025-08-20 10:33:53', '2025-08-28 10:31:09', '2025-08-20 05:03:53'),
(1119, 131, 41, '2025-08-20', '2025-08-20 10:35:34', '2025-08-25 17:15:31', '2025-08-20 05:05:34'),
(1120, 50, 0, '2025-08-20', '2025-08-20 10:36:10', '2025-08-28 10:31:09', '2025-08-20 05:06:10'),
(1121, 131, 41, '2025-08-20', '2025-08-20 10:51:28', '2025-08-25 17:15:31', '2025-08-20 05:21:28'),
(1122, 50, 0, '2025-08-20', '2025-08-20 10:56:49', '2025-08-28 10:31:09', '2025-08-20 05:26:49'),
(1123, 131, 41, '2025-08-20', '2025-08-20 11:01:04', '2025-08-25 17:15:31', '2025-08-20 05:31:04'),
(1124, 50, 0, '2025-08-20', '2025-08-20 11:03:02', '2025-08-28 10:31:09', '2025-08-20 05:33:02'),
(1125, 131, 41, '2025-08-20', '2025-08-20 11:18:59', '2025-08-25 17:15:31', '2025-08-20 05:48:59'),
(1126, 50, 0, '2025-08-20', '2025-08-20 11:20:50', '2025-08-28 10:31:09', '2025-08-20 05:50:50'),
(1127, 131, 41, '2025-08-20', '2025-08-20 11:53:11', '2025-08-25 17:15:31', '2025-08-20 06:23:11'),
(1128, 50, 0, '2025-08-20', '2025-08-20 11:54:05', '2025-08-28 10:31:09', '2025-08-20 06:24:05'),
(1129, 131, 41, '2025-08-20', '2025-08-20 12:02:20', '2025-08-25 17:15:31', '2025-08-20 06:32:20'),
(1130, 50, 0, '2025-08-20', '2025-08-20 12:03:12', '2025-08-28 10:31:09', '2025-08-20 06:33:12'),
(1131, 131, 41, '2025-08-20', '2025-08-20 12:09:59', '2025-08-25 17:15:31', '2025-08-20 06:39:59'),
(1132, 50, 0, '2025-08-20', '2025-08-20 12:10:31', '2025-08-28 10:31:09', '2025-08-20 06:40:31'),
(1133, 131, 41, '2025-08-20', '2025-08-20 12:35:17', '2025-08-25 17:15:31', '2025-08-20 07:05:17'),
(1134, 50, 0, '2025-08-20', '2025-08-20 12:36:14', '2025-08-28 10:31:09', '2025-08-20 07:06:14'),
(1135, 50, 0, '2025-08-20', '2025-08-20 12:43:06', '2025-08-28 10:31:09', '2025-08-20 07:13:06'),
(1136, 131, 41, '2025-08-20', '2025-08-20 12:43:15', '2025-08-25 17:15:31', '2025-08-20 07:13:15'),
(1137, 50, 0, '2025-08-20', '2025-08-20 14:35:21', '2025-08-28 10:31:09', '2025-08-20 09:05:21'),
(1138, 131, 41, '2025-08-20', '2025-08-20 15:05:00', '2025-08-25 17:15:31', '2025-08-20 09:35:00'),
(1139, 50, 0, '2025-08-21', '2025-08-21 09:40:11', '2025-08-28 10:31:09', '2025-08-21 04:10:11'),
(1140, 131, 41, '2025-08-21', '2025-08-21 09:40:45', '2025-08-25 17:15:31', '2025-08-21 04:10:45'),
(1141, 50, 0, '2025-08-21', '2025-08-21 09:43:39', '2025-08-28 10:31:09', '2025-08-21 04:13:39'),
(1142, 131, 41, '2025-08-21', '2025-08-21 09:48:03', '2025-08-25 17:15:31', '2025-08-21 04:18:03'),
(1143, 131, 41, '2025-08-21', '2025-08-21 09:49:37', '2025-08-25 17:15:31', '2025-08-21 04:19:37'),
(1144, 50, 0, '2025-08-21', '2025-08-21 12:30:38', '2025-08-28 10:31:09', '2025-08-21 07:00:38'),
(1145, 131, 41, '2025-08-21', '2025-08-21 12:44:02', '2025-08-25 17:15:31', '2025-08-21 07:14:02'),
(1146, 131, 41, '2025-08-21', '2025-08-21 12:54:58', '2025-08-25 17:15:31', '2025-08-21 07:24:58'),
(1147, 50, 0, '2025-08-22', '2025-08-22 15:29:25', '2025-08-28 10:31:09', '2025-08-22 09:59:25'),
(1148, 131, 41, '2025-08-22', '2025-08-22 15:32:19', '2025-08-25 17:15:31', '2025-08-22 10:02:19'),
(1149, 50, 0, '2025-08-22', '2025-08-22 15:50:53', '2025-08-28 10:31:09', '2025-08-22 10:20:53'),
(1150, 131, 41, '2025-08-22', '2025-08-22 15:56:28', '2025-08-25 17:15:31', '2025-08-22 10:26:28'),
(1151, 158, 41, '2025-08-22', '2025-08-22 16:19:50', '2025-08-25 09:13:08', '2025-08-22 10:49:50'),
(1152, 131, 41, '2025-08-22', '2025-08-22 16:21:04', '2025-08-25 17:15:31', '2025-08-22 10:51:04'),
(1153, 50, 0, '2025-08-23', '2025-08-23 09:21:26', '2025-08-28 10:31:09', '2025-08-23 03:51:26'),
(1154, 131, 41, '2025-08-23', '2025-08-23 09:23:47', '2025-08-25 17:15:31', '2025-08-23 03:53:47'),
(1155, 50, 0, '2025-08-23', '2025-08-23 09:45:13', '2025-08-28 10:31:09', '2025-08-23 04:15:13'),
(1156, 131, 41, '2025-08-23', '2025-08-23 10:00:36', '2025-08-25 17:15:31', '2025-08-23 04:30:36'),
(1157, 131, 41, '2025-08-23', '2025-08-23 10:38:36', '2025-08-25 17:15:31', '2025-08-23 05:08:36'),
(1158, 50, 0, '2025-08-23', '2025-08-23 15:59:26', '2025-08-28 10:31:09', '2025-08-23 10:29:26'),
(1159, 131, 41, '2025-08-23', '2025-08-23 16:35:32', '2025-08-25 17:15:31', '2025-08-23 11:05:32'),
(1160, 50, 0, '2025-08-23', '2025-08-23 17:04:17', '2025-08-28 10:31:09', '2025-08-23 11:34:17'),
(1161, 131, 41, '2025-08-23', '2025-08-23 17:06:00', '2025-08-25 17:15:31', '2025-08-23 11:36:00'),
(1162, 131, 41, '2025-08-23', '2025-08-23 17:07:30', '2025-08-25 17:15:31', '2025-08-23 11:37:30'),
(1163, 50, 0, '2025-08-25', '2025-08-25 09:08:37', '2025-08-28 10:31:09', '2025-08-25 03:38:37'),
(1164, 131, 41, '2025-08-25', '2025-08-25 09:09:17', '2025-08-25 17:15:31', '2025-08-25 03:39:17'),
(1165, 158, 41, '2025-08-25', '2025-08-25 09:10:02', '2025-08-25 09:13:08', '2025-08-25 03:40:02'),
(1166, 131, 41, '2025-08-25', '2025-08-25 09:13:14', '2025-08-25 17:15:31', '2025-08-25 03:43:14'),
(1167, 50, 0, '2025-08-25', '2025-08-25 09:55:38', '2025-08-28 10:31:09', '2025-08-25 04:25:38'),
(1168, 50, 0, '2025-08-25', '2025-08-25 09:55:54', '2025-08-28 10:31:09', '2025-08-25 04:25:54'),
(1169, 50, 0, '2025-08-25', '2025-08-25 09:55:59', '2025-08-28 10:31:09', '2025-08-25 04:25:59'),
(1170, 50, 0, '2025-08-25', '2025-08-25 15:25:00', '2025-08-28 10:31:09', '2025-08-25 09:55:00'),
(1171, 131, 41, '2025-08-25', '2025-08-25 15:25:10', '2025-08-25 17:15:31', '2025-08-25 09:55:10'),
(1172, 50, 0, '2025-08-25', '2025-08-25 15:56:54', '2025-08-28 10:31:09', '2025-08-25 10:26:54'),
(1173, 131, 41, '2025-08-25', '2025-08-25 16:00:40', '2025-08-25 17:15:31', '2025-08-25 10:30:40'),
(1174, 50, 0, '2025-08-25', '2025-08-25 16:34:59', '2025-08-28 10:31:09', '2025-08-25 11:04:59'),
(1175, 131, 41, '2025-08-25', '2025-08-25 16:35:13', '2025-08-25 17:15:31', '2025-08-25 11:05:13'),
(1176, 50, 0, '2025-08-26', '2025-08-26 09:12:43', '2025-08-28 10:31:09', '2025-08-26 03:42:43'),
(1177, 50, 0, '2025-08-26', '2025-08-26 09:57:36', '2025-08-28 10:31:09', '2025-08-26 04:27:36'),
(1178, 50, 0, '2025-08-26', '2025-08-26 14:31:45', '2025-08-28 10:31:09', '2025-08-26 09:01:45'),
(1179, 50, 0, '2025-08-26', '2025-08-26 17:52:52', '2025-08-28 10:31:09', '2025-08-26 12:22:52'),
(1180, 50, 0, '2025-08-27', '2025-08-27 09:40:45', '2025-08-28 10:31:09', '2025-08-27 04:10:45'),
(1181, 50, 0, '2025-08-27', '2025-08-27 14:17:17', '2025-08-28 10:31:09', '2025-08-27 08:47:17'),
(1182, 50, 0, '2025-08-27', '2025-08-27 18:08:15', '2025-08-28 10:31:09', '2025-08-27 12:38:15'),
(1183, 50, 0, '2025-08-28', '2025-08-28 09:42:22', '2025-08-28 10:31:09', '2025-08-28 04:12:22'),
(1184, 50, 0, '2025-08-28', '2025-08-28 10:31:31', '0000-00-00 00:00:00', '2025-08-28 05:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

DROP TABLE IF EXISTS `variants`;
CREATE TABLE IF NOT EXISTS `variants` (
  `variant_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `variant_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`variant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`variant_id`, `store_id`, `variant_name`, `code`, `is_active`) VALUES
(2, 0, 'Full', 'F', 1),
(3, 0, 'Half', 'H', 1),
(4, 0, 'Quarter', 'Q', 1),
(20, 0, '3/4', '3/4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_no`
--

DROP TABLE IF EXISTS `whatsapp_no`;
CREATE TABLE IF NOT EXISTS `whatsapp_no` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `whatsapp_no` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `whatsapp_no`
--

INSERT INTO `whatsapp_no` (`id`, `store_id`, `whatsapp_no`) VALUES
(3, 41, '7012713312'),
(5, 69, '7012713312'),
(6, 69, '7510949135'),
(7, 41, '8606061611');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
