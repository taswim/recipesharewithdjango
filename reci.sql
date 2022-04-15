-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 07:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reci`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `image`, `user_id`) VALUES
(1, 'profiles/default.jpg', 1),
(2, 'profiles/default.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add comment', 7, 'add_comment'),
(26, 'Can change comment', 7, 'change_comment'),
(27, 'Can delete comment', 7, 'delete_comment'),
(28, 'Can view comment', 7, 'view_comment'),
(29, 'Can add recipe', 8, 'add_recipe'),
(30, 'Can change recipe', 8, 'change_recipe'),
(31, 'Can delete recipe', 8, 'delete_recipe'),
(32, 'Can view recipe', 8, 'view_recipe'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$Doqmez45byBgHQ4Zwn0w8H$35bRIRDP7WwuUV8c0TxDb9/YSxyydQRDBHCdtSC68ws=', '2022-04-15 04:55:01.439019', 1, 'tasnim', 'Tasnim', 'Tabassum', 'tasnimtabassum346@gmail.com', 1, 1, '2022-04-14 00:23:49.399121'),
(2, 'pbkdf2_sha256$320000$YlyosvsUNXbnoYyRQnBYCA$JRXEESgQD5sSDvAmLnGtfoVE0/V03lYL0j+7dvLRCNE=', NULL, 0, 'demo', 'Demo', 'Account', 'demo@gmail.com', 0, 1, '2022-04-14 01:45:23.945461');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'recipes', 'comment'),
(8, 'recipes', 'recipe'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-14 00:03:18.009652'),
(2, 'auth', '0001_initial', '2022-04-14 00:03:18.535642'),
(3, 'accounts', '0001_initial', '2022-04-14 00:03:18.635097'),
(4, 'admin', '0001_initial', '2022-04-14 00:03:18.768782'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-04-14 00:03:18.796691'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-14 00:03:18.812055'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-04-14 00:03:18.895004'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-04-14 00:03:18.951791'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-04-14 00:03:18.983771'),
(10, 'auth', '0004_alter_user_username_opts', '2022-04-14 00:03:19.000761'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-04-14 00:03:19.052728'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-04-14 00:03:19.060723'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-04-14 00:03:19.073717'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-04-14 00:03:19.101698'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-04-14 00:03:19.131681'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-04-14 00:03:19.159733'),
(17, 'auth', '0011_update_proxy_permissions', '2022-04-14 00:03:19.172038'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-04-14 00:03:19.200020'),
(19, 'recipes', '0001_initial', '2022-04-14 00:03:19.880976'),
(20, 'recipes', '0002_auto_20190308_1057', '2022-04-14 00:03:20.219277'),
(21, 'recipes', '0003_recipe_likes', '2022-04-14 00:03:20.390197'),
(22, 'recipes', '0004_auto_20190310_1527', '2022-04-14 00:03:20.572777'),
(23, 'sessions', '0001_initial', '2022-04-14 00:03:20.640210');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gztdoxm3ygofgwid3x4zncnd2jslae44', '.eJxVjMEOwiAQRP-FsyEFC7v16N1vILuwlaqhSWlPxn-3JD3oZTKZ9zJvFWhbc9iqLGFK6qKMOv1uTPEppYH0oHKfdZzLukysm6IPWvVtTvK6Hu7fQaaa2y2CtRjtiB4tIJ7B7GXoHaP3ToDs2IF3IBH2cF46REZyySIPPRv1-QKZYDZZ:1nf01f:rJs2Qty_Lj8tyCik65CM3qhcR22Vm_BSd0GSEOB0VOc', '2022-04-28 14:00:47.977205'),
('nme67i9zh0sgvr4daprezie833llxuvo', '.eJxVjMEOwiAQRP-FsyEFC7v16N1vILuwlaqhSWlPxn-3JD3oZTKZ9zJvFWhbc9iqLGFK6qKMOv1uTPEppYH0oHKfdZzLukysm6IPWvVtTvK6Hu7fQaaa2y2CtRjtiB4tIJ7B7GXoHaP3ToDs2IF3IBH2cF46REZyySIPPRv1-QKZYDZZ:1nf0Xj:wI2P_Ly-HUo6owY627roBTZPsk_LEPCdJUGkJiOoVlM', '2022-04-28 14:33:55.107740'),
('xiiy9tlrp1ib7cyv6nqoet1jbs1hi4tm', '.eJxVjMEOwiAQRP-FsyEFC7v16N1vILuwlaqhSWlPxn-3JD3oZTKZ9zJvFWhbc9iqLGFK6qKMOv1uTPEppYH0oHKfdZzLukysm6IPWvVtTvK6Hu7fQaaa2y2CtRjtiB4tIJ7B7GXoHaP3ToDs2IF3IBH2cF46REZyySIPPRv1-QKZYDZZ:1neqEo:kVwiI3snZ667iqEQE7IOdG99DsnmF55xvDOXLk2KqlA', '2022-04-28 03:33:42.712854'),
('y0p6bspe07dzd9r26hj0r23a9mzbwb8k', '.eJxVjMEOwiAQRP-FsyEFC7v16N1vILuwlaqhSWlPxn-3JD3oZTKZ9zJvFWhbc9iqLGFK6qKMOv1uTPEppYH0oHKfdZzLukysm6IPWvVtTvK6Hu7fQaaa2y2CtRjtiB4tIJ7B7GXoHaP3ToDs2IF3IBH2cF46REZyySIPPRv1-QKZYDZZ:1neoxd:O6_1yxN4Xz8zLLHJEVbxm32hQSfmIAHiaMrvM3YkEKQ', '2022-04-28 02:11:53.188757');

-- --------------------------------------------------------

--
-- Table structure for table `recipes_comment`
--

CREATE TABLE `recipes_comment` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes_comment`
--

INSERT INTO `recipes_comment` (`id`, `text`, `created_at`, `post_id`, `user_id`) VALUES
(1, ' tasty  recipe', '2022-04-14 09:15:08.678551', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipes_recipe`
--

CREATE TABLE `recipes_recipe` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `image` varchar(100) NOT NULL,
  `location` varchar(120) NOT NULL,
  `price` int(11) NOT NULL,
  `vat` int(10) UNSIGNED NOT NULL CHECK (`vat` >= 0),
  `taste` int(10) UNSIGNED NOT NULL CHECK (`taste` >= 0),
  `persons` int(10) UNSIGNED NOT NULL CHECK (`persons` >= 0),
  `details` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `categories` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes_recipe`
--

INSERT INTO `recipes_recipe` (`id`, `title`, `image`, `location`, `price`, `vat`, `taste`, `persons`, `details`, `slug`, `views`, `created_at`, `updated_at`, `is_active`, `user_id`, `categories`) VALUES
(2, 'Farro Salad with Asparagus and Parmesan', 'recipes/image_qHBCnIX.webp', '', 0, 0, 8, 2, 'Cook:\r\n55 mins\r\nAdditional:\r\n12 hrs\r\nTotal:\r\n13 hrs 15 mins\r\nPrep:\r\n20 mins\r\nServings:\r\n12\r\nYield:\r\n12 servings\r\n\r\nIngredients\r\n\r\n2 cups farro\r\n¾ pound fresh asparagus, trimmed\r\n1 cup red and yellow cherry tomatoes, halved\r\n¾ cup chopped walnuts\r\n¾ cup dried cranberries\r\n½ cup chopped fresh parsley\r\n⅓ cup chopped fresh chives\r\n¼ cup balsamic vinaigrette, or to taste\r\n1 cup shaved Parmesan cheese, divided', 'farro-salad-with-asparagus-and-parmesan', 0, '2022-04-14 09:09:13.275491', '2022-04-14 09:09:13.275491', 1, 1, 'Breakfast, Diet Recipe, Italian'),
(3, 'Mexican Strawberry Water (Agua de Fresa)', 'recipes/R.jpg', '', 0, 0, 9, 4, 'Additional:\r\n4 hrs\r\nTotal:\r\n4 hrs 25 mins\r\nPrep:\r\n25 mins\r\nServings:\r\n10\r\nYield:\r\n10 servings\r\n\r\nIngredients :\r\n4 cups strawberries, sliced\r\n1 cup white sugar\r\n8 cups cold water\r\n1 lime, cut into 8 wedges\r\n8 fresh mint sprigs', 'mexican-strawberry-water-agua-de-fresa', 0, '2022-04-14 09:12:38.524224', '2022-04-14 09:12:38.524224', 1, 1, 'Mexican, Juice, Weight Loss');

-- --------------------------------------------------------

--
-- Table structure for table `recipes_recipe_likes`
--

CREATE TABLE `recipes_recipe_likes` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes_recipe_likes`
--

INSERT INTO `recipes_recipe_likes` (`id`, `recipe_id`, `user_id`) VALUES
(15, 2, 1),
(16, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `recipes_comment`
--
ALTER TABLE `recipes_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_comment_post_id_9e061b4f_fk_recipes_recipe_id` (`post_id`),
  ADD KEY `recipes_comment_user_id_a283f2b7_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `recipes_recipe`
--
ALTER TABLE `recipes_recipe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `recipes_recipe_user_id_c14b3239_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `recipes_recipe_likes`
--
ALTER TABLE `recipes_recipe_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipes_recipe_likes_recipe_id_user_id_ed86f550_uniq` (`recipe_id`,`user_id`),
  ADD KEY `recipes_recipe_likes_user_id_5c3c6b64_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `recipes_comment`
--
ALTER TABLE `recipes_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recipes_recipe`
--
ALTER TABLE `recipes_recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes_recipe_likes`
--
ALTER TABLE `recipes_recipe_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `recipes_comment`
--
ALTER TABLE `recipes_comment`
  ADD CONSTRAINT `recipes_comment_post_id_9e061b4f_fk_recipes_recipe_id` FOREIGN KEY (`post_id`) REFERENCES `recipes_recipe` (`id`),
  ADD CONSTRAINT `recipes_comment_user_id_a283f2b7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `recipes_recipe`
--
ALTER TABLE `recipes_recipe`
  ADD CONSTRAINT `recipes_recipe_user_id_c14b3239_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `recipes_recipe_likes`
--
ALTER TABLE `recipes_recipe_likes`
  ADD CONSTRAINT `recipes_recipe_likes_recipe_id_247aa700_fk_recipes_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipes_recipe` (`id`),
  ADD CONSTRAINT `recipes_recipe_likes_user_id_5c3c6b64_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
