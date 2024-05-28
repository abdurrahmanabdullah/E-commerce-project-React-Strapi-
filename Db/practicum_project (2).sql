-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysqldb
-- Generation Time: May 21, 2024 at 01:43 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practicum_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_uses`
--

CREATE TABLE `about_uses` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `about_uses`
--

INSERT INTO `about_uses` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2024-02-25 15:25:58.474000', '2024-02-25 15:25:59.051000', '2024-02-25 15:25:59.046000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `about_uses_components`
--

CREATE TABLE `about_uses_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `about_uses_components`
--

INSERT INTO `about_uses_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'content.content', 'content', 1),
(2, 1, 2, 'content.content', 'content', 2),
(3, 1, 3, 'content.content', 'content', 3);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` json DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.092000', '2024-02-24 12:20:05.092000', NULL, NULL),
(2, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.131000', '2024-02-24 12:20:05.131000', NULL, NULL),
(3, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.213000', '2024-02-24 12:20:05.213000', NULL, NULL),
(4, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.328000', '2024-02-24 12:20:05.328000', NULL, NULL),
(5, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.340000', '2024-02-24 12:20:05.340000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.352000', '2024-02-24 12:20:05.352000', NULL, NULL),
(7, 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-02-24 12:20:05.368000', '2024-02-24 12:20:05.368000', NULL, NULL),
(8, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.391000', '2024-02-24 12:20:05.391000', NULL, NULL),
(9, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.439000', '2024-02-24 12:20:05.439000', NULL, NULL),
(10, 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-02-24 12:20:05.547000', '2024-02-24 12:20:05.547000', NULL, NULL),
(11, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.565000', '2024-02-24 12:20:05.565000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.578000', '2024-02-24 12:20:05.578000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-02-24 12:20:05.638000', '2024-02-24 12:20:05.638000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-02-24 12:20:05.688000', '2024-02-24 12:20:05.688000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-02-24 12:20:05.764000', '2024-02-24 12:20:05.764000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-02-24 12:20:05.855000', '2024-02-24 12:20:05.855000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.954000', '2024-02-24 12:20:05.954000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-02-24 12:20:05.981000', '2024-02-24 12:20:05.981000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-02-24 12:20:06.055000', '2024-02-24 12:20:06.055000', NULL, NULL),
(20, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:06.170000', '2024-02-24 12:20:06.170000', NULL, NULL),
(21, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:06.270000', '2024-02-24 12:20:06.270000', NULL, NULL),
(22, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:06.417000', '2024-02-24 12:20:06.417000', NULL, NULL),
(23, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:06.586000', '2024-02-24 12:20:06.586000', NULL, NULL),
(24, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:06.720000', '2024-02-24 12:20:06.720000', NULL, NULL),
(25, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.090000', '2024-02-24 12:20:07.090000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.238000', '2024-02-24 12:20:07.238000', NULL, NULL),
(27, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.425000', '2024-02-24 12:20:07.425000', NULL, NULL),
(28, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.494000', '2024-02-24 12:20:07.494000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.606000', '2024-02-24 12:20:07.606000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.710000', '2024-02-24 12:20:07.710000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.758000', '2024-02-24 12:20:07.758000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.810000', '2024-02-24 12:20:07.810000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.841000', '2024-02-24 12:20:07.841000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.888000', '2024-02-24 12:20:07.888000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:07.963000', '2024-02-24 12:20:07.963000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.014000', '2024-02-24 12:20:08.014000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.101000', '2024-02-24 12:20:08.101000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.151000', '2024-02-24 12:20:08.151000', NULL, NULL),
(39, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.174000', '2024-02-24 12:20:08.174000', NULL, NULL),
(40, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.217000', '2024-02-24 12:20:08.217000', NULL, NULL),
(41, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.292000', '2024-02-24 12:20:08.292000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.353000', '2024-02-24 12:20:08.353000', NULL, NULL),
(43, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.418000', '2024-02-24 12:20:08.418000', NULL, NULL),
(44, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.519000', '2024-02-24 12:20:08.519000', NULL, NULL),
(45, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.616000', '2024-02-24 12:20:08.616000', NULL, NULL),
(46, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.635000', '2024-02-24 12:20:08.635000', NULL, NULL),
(47, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.712000', '2024-02-24 12:20:08.712000', NULL, NULL),
(48, 'admin::users.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.865000', '2024-02-24 12:20:08.865000', NULL, NULL),
(49, 'admin::users.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.928000', '2024-02-24 12:20:08.928000', NULL, NULL),
(50, 'admin::users.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.969000', '2024-02-24 12:20:08.969000', NULL, NULL),
(51, 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.981000', '2024-02-24 12:20:08.981000', NULL, NULL),
(52, 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:08.993000', '2024-02-24 12:20:08.993000', NULL, NULL),
(53, 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.043000', '2024-02-24 12:20:09.043000', NULL, NULL),
(54, 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.104000', '2024-02-24 12:20:09.104000', NULL, NULL),
(55, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.160000', '2024-02-24 12:20:09.160000', NULL, NULL),
(56, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.258000', '2024-02-24 12:20:09.258000', NULL, NULL),
(57, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.272000', '2024-02-24 12:20:09.272000', NULL, NULL),
(58, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.283000', '2024-02-24 12:20:09.283000', NULL, NULL),
(59, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.309000', '2024-02-24 12:20:09.309000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.327000', '2024-02-24 12:20:09.327000', NULL, NULL),
(61, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.340000', '2024-02-24 12:20:09.340000', NULL, NULL),
(62, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.401000', '2024-02-24 12:20:09.401000', NULL, NULL),
(63, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.461000', '2024-02-24 12:20:09.461000', NULL, NULL),
(64, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.492000', '2024-02-24 12:20:09.492000', NULL, NULL),
(65, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.521000', '2024-02-24 12:20:09.521000', NULL, NULL),
(66, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.584000', '2024-02-24 12:20:09.584000', NULL, NULL),
(67, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.671000', '2024-02-24 12:20:09.671000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.725000', '2024-02-24 12:20:09.725000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-02-24 12:20:09.738000', '2024-02-24 12:20:09.738000', NULL, NULL),
(74, 'plugin::content-manager.explorer.delete', '{}', 'api::home.home', '{}', '[]', '2024-02-24 13:02:42.399000', '2024-02-24 13:02:42.399000', NULL, NULL),
(75, 'plugin::content-manager.explorer.publish', '{}', 'api::home.home', '{}', '[]', '2024-02-24 13:02:42.436000', '2024-02-24 13:02:42.436000', NULL, NULL),
(82, 'plugin::content-manager.explorer.delete', '{}', 'api::navbarmenu.navbarmenu', '{}', '[]', '2024-02-24 13:04:48.312000', '2024-02-24 13:04:48.312000', NULL, NULL),
(83, 'plugin::content-manager.explorer.publish', '{}', 'api::navbarmenu.navbarmenu', '{}', '[]', '2024-02-24 13:04:48.332000', '2024-02-24 13:04:48.332000', NULL, NULL),
(96, 'plugin::content-manager.explorer.delete', '{}', 'api::navbar-menu.navbar-menu', '{}', '[]', '2024-02-24 13:12:33.303000', '2024-02-24 13:12:33.303000', NULL, NULL),
(97, 'plugin::content-manager.explorer.publish', '{}', 'api::navbar-menu.navbar-menu', '{}', '[]', '2024-02-24 13:12:33.343000', '2024-02-24 13:12:33.343000', NULL, NULL),
(119, 'plugin::content-manager.explorer.delete', '{}', 'api::contact.contact', '{}', '[]', '2024-02-24 15:48:00.994000', '2024-02-24 15:48:00.994000', NULL, NULL),
(120, 'plugin::content-manager.explorer.publish', '{}', 'api::contact.contact', '{}', '[]', '2024-02-24 15:48:01.102000', '2024-02-24 15:48:01.102000', NULL, NULL),
(127, 'plugin::content-manager.explorer.delete', '{}', 'api::about-us.about-us', '{}', '[]', '2024-02-25 15:24:04.693000', '2024-02-25 15:24:04.693000', NULL, NULL),
(128, 'plugin::content-manager.explorer.publish', '{}', 'api::about-us.about-us', '{}', '[]', '2024-02-25 15:24:04.820000', '2024-02-25 15:24:04.820000', NULL, NULL),
(144, 'plugin::content-manager.explorer.create', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-02-26 22:29:02.446000', '2024-02-26 22:29:02.446000', NULL, NULL),
(145, 'plugin::content-manager.explorer.read', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-02-26 22:29:02.543000', '2024-02-26 22:29:02.543000', NULL, NULL),
(146, 'plugin::content-manager.explorer.update', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-02-26 22:29:02.609000', '2024-02-26 22:29:02.609000', NULL, NULL),
(150, 'plugin::content-manager.explorer.delete', '{}', 'api::contact-info.contact-info', '{}', '[]', '2024-02-26 22:31:11.422000', '2024-02-26 22:31:11.422000', NULL, NULL),
(151, 'plugin::content-manager.explorer.publish', '{}', 'api::contact-info.contact-info', '{}', '[]', '2024-02-26 22:31:11.502000', '2024-02-26 22:31:11.502000', NULL, NULL),
(152, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-02-27 17:42:25.217000', '2024-02-27 17:42:25.217000', NULL, NULL),
(158, 'plugin::content-manager.explorer.read', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-02-27 17:42:25.411000', '2024-02-27 17:42:25.411000', NULL, NULL),
(159, 'plugin::content-manager.explorer.create', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-02-27 17:42:26.252000', '2024-05-01 14:01:14.139000', NULL, NULL),
(160, 'plugin::content-manager.explorer.read', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[\"admin::has-same-role-as-creator\"]', '2024-02-27 17:42:26.553000', '2024-05-01 14:01:14.139000', NULL, NULL),
(161, 'plugin::content-manager.explorer.update', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[\"admin::has-same-role-as-creator\"]', '2024-02-27 17:42:26.589000', '2024-05-01 14:01:14.139000', NULL, NULL),
(162, 'plugin::content-manager.explorer.delete', '{}', 'api::home.home', '{}', '[\"admin::has-same-role-as-creator\"]', '2024-02-27 17:42:26.791000', '2024-02-27 17:42:26.791000', NULL, NULL),
(163, 'plugin::content-manager.explorer.create', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\"]}', '[]', '2024-02-27 17:42:26.845000', '2024-02-27 17:42:26.845000', NULL, NULL),
(167, 'plugin::content-manager.explorer.create', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\"]}', '[]', '2024-02-27 17:42:27.034000', '2024-03-06 21:42:34.248000', NULL, NULL),
(172, 'plugin::content-manager.explorer.delete', '{}', 'api::contact-info.contact-info', '{}', '[]', '2024-02-27 17:42:46.403000', '2024-02-27 17:42:46.403000', NULL, NULL),
(173, 'plugin::content-manager.explorer.publish', '{}', 'api::contact-info.contact-info', '{}', '[]', '2024-02-27 17:42:46.420000', '2024-02-27 17:42:46.420000', NULL, NULL),
(174, 'plugin::content-manager.explorer.create', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\"]}', '[]', '2024-02-27 17:43:15.720000', '2024-02-27 17:43:15.720000', NULL, NULL),
(176, 'plugin::content-manager.explorer.delete', '{}', 'api::contact.contact', '{}', '[]', '2024-02-27 17:43:39.419000', '2024-02-27 17:43:39.419000', NULL, NULL),
(177, 'plugin::import-export-entries.import', '{}', NULL, '{}', '[]', '2024-02-27 17:49:17.984000', '2024-02-27 17:49:17.984000', NULL, NULL),
(178, 'plugin::import-export-entries.export', '{}', NULL, '{}', '[]', '2024-02-27 17:49:18.002000', '2024-02-27 17:49:18.002000', NULL, NULL),
(179, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-02-27 17:55:11.299000', '2024-02-27 17:55:11.299000', NULL, NULL),
(180, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-02-27 17:55:11.386000', '2024-02-27 17:55:11.386000', NULL, NULL),
(181, 'plugin::content-manager.explorer.create', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\"]}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.405000', '2024-02-27 17:55:11.405000', NULL, NULL),
(182, 'plugin::content-manager.explorer.read', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\"]}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.449000', '2024-02-27 17:55:11.449000', NULL, NULL),
(183, 'plugin::content-manager.explorer.update', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\"]}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.496000', '2024-02-27 17:55:11.496000', NULL, NULL),
(184, 'plugin::content-manager.explorer.delete', '{}', 'api::about-us.about-us', '{}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.517000', '2024-02-27 17:55:11.517000', NULL, NULL),
(185, 'plugin::content-manager.explorer.read', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\"]}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.576000', '2024-02-27 17:55:11.576000', NULL, NULL),
(186, 'plugin::content-manager.explorer.update', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\"]}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.612000', '2024-02-27 17:55:11.612000', NULL, NULL),
(187, 'plugin::content-manager.explorer.delete', '{}', 'api::navbar-menu.navbar-menu', '{}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.667000', '2024-02-27 17:55:11.667000', NULL, NULL),
(188, 'plugin::content-manager.explorer.read', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\"]}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.700000', '2024-03-06 21:42:34.248000', NULL, NULL),
(189, 'plugin::content-manager.explorer.update', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\"]}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.760000', '2024-03-06 21:42:34.248000', NULL, NULL),
(190, 'plugin::content-manager.explorer.delete', '{}', 'api::navbarmenu.navbarmenu', '{}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-02-27 17:55:11.775000', '2024-02-27 17:55:11.775000', NULL, NULL),
(197, 'plugin::content-manager.explorer.delete', '{}', 'api::landing-page.landing-page', '{}', '[]', '2024-02-28 10:23:42.236000', '2024-02-28 10:23:42.236000', NULL, NULL),
(198, 'plugin::content-manager.explorer.publish', '{}', 'api::landing-page.landing-page', '{}', '[]', '2024-02-28 10:23:42.297000', '2024-02-28 10:23:42.297000', NULL, NULL),
(226, 'plugin::content-manager.explorer.create', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-02-28 11:49:19.923000', '2024-02-28 11:49:19.923000', NULL, NULL),
(227, 'plugin::content-manager.explorer.read', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-02-28 11:49:19.939000', '2024-02-28 11:49:19.939000', NULL, NULL),
(228, 'plugin::content-manager.explorer.update', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-02-28 11:49:19.953000', '2024-02-28 11:49:19.953000', NULL, NULL),
(232, 'plugin::content-manager.explorer.delete', '{}', 'api::service.service', '{}', '[]', '2024-02-28 13:19:29.458000', '2024-02-28 13:19:29.458000', NULL, NULL),
(233, 'plugin::content-manager.explorer.publish', '{}', 'api::service.service', '{}', '[]', '2024-02-28 13:19:29.471000', '2024-02-28 13:19:29.471000', NULL, NULL),
(248, 'plugin::seo.read', '{}', NULL, '{}', '[]', '2024-02-29 11:14:47.538000', '2024-02-29 11:14:47.538000', NULL, NULL),
(348, 'plugin::import-export-entries.export', '{}', NULL, '{}', '[\"admin::is-creator\", \"admin::has-same-role-as-creator\"]', '2024-03-02 14:11:04.990000', '2024-03-02 14:11:04.990000', NULL, NULL),
(349, 'plugin::content-manager.explorer.publish', '{}', 'api::about-us.about-us', '{}', '[]', '2024-03-02 14:11:05.004000', '2024-03-02 14:11:05.004000', NULL, NULL),
(350, 'plugin::content-manager.explorer.update', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-03-02 14:11:05.033000', '2024-03-02 14:11:05.033000', NULL, NULL),
(351, 'plugin::content-manager.explorer.publish', '{}', 'api::contact.contact', '{}', '[]', '2024-03-02 14:11:05.073000', '2024-03-02 14:11:05.073000', NULL, NULL),
(352, 'plugin::content-manager.explorer.publish', '{}', 'api::home.home', '{}', '[]', '2024-03-02 14:11:05.140000', '2024-03-02 14:11:05.140000', NULL, NULL),
(353, 'plugin::content-manager.explorer.create', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-02 14:11:05.219000', '2024-03-02 14:11:05.219000', NULL, NULL),
(354, 'plugin::content-manager.explorer.read', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-02 14:11:05.239000', '2024-03-02 14:11:05.239000', NULL, NULL),
(355, 'plugin::content-manager.explorer.update', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-02 14:11:05.274000', '2024-03-02 14:11:05.274000', NULL, NULL),
(356, 'plugin::content-manager.explorer.delete', '{}', 'api::landing-page.landing-page', '{}', '[]', '2024-03-02 14:11:05.374000', '2024-03-02 14:11:05.374000', NULL, NULL),
(357, 'plugin::content-manager.explorer.publish', '{}', 'api::landing-page.landing-page', '{}', '[]', '2024-03-02 14:11:05.418000', '2024-03-02 14:11:05.418000', NULL, NULL),
(358, 'plugin::content-manager.explorer.publish', '{}', 'api::navbar-menu.navbar-menu', '{}', '[]', '2024-03-02 14:11:05.483000', '2024-03-02 14:11:05.483000', NULL, NULL),
(359, 'plugin::content-manager.explorer.publish', '{}', 'api::navbarmenu.navbarmenu', '{}', '[]', '2024-03-02 14:11:05.527000', '2024-03-02 14:11:05.527000', NULL, NULL),
(360, 'plugin::content-manager.explorer.create', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:11:05.569000', '2024-03-02 14:11:05.569000', NULL, NULL),
(361, 'plugin::content-manager.explorer.read', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:11:05.649000', '2024-03-02 14:11:05.649000', NULL, NULL),
(362, 'plugin::content-manager.explorer.update', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:11:05.662000', '2024-03-02 14:11:05.662000', NULL, NULL),
(363, 'plugin::content-manager.explorer.delete', '{}', 'api::service.service', '{}', '[]', '2024-03-02 14:11:05.678000', '2024-03-02 14:11:05.678000', NULL, NULL),
(364, 'plugin::content-manager.explorer.publish', '{}', 'api::service.service', '{}', '[]', '2024-03-02 14:11:05.691000', '2024-03-02 14:11:05.691000', NULL, NULL),
(365, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-02 14:15:34.708000', '2024-03-02 14:15:34.708000', NULL, NULL),
(366, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-02 14:15:34.753000', '2024-03-02 14:15:34.753000', NULL, NULL),
(367, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-03-02 14:15:34.783000', '2024-03-02 14:15:34.783000', NULL, NULL),
(368, 'plugin::content-manager.explorer.read', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-03-02 14:15:54.745000', '2024-03-02 14:15:54.745000', NULL, NULL),
(369, 'plugin::content-manager.explorer.update', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-03-02 14:15:54.823000', '2024-03-02 14:15:54.823000', NULL, NULL),
(385, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-03-02 14:18:40.118000', '2024-03-02 14:18:40.118000', NULL, NULL),
(386, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-03-02 14:18:45.995000', '2024-03-02 14:18:45.995000', NULL, NULL),
(387, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-03-02 14:18:46.084000', '2024-03-02 14:18:46.084000', NULL, NULL),
(388, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-03-02 14:18:46.154000', '2024-03-02 14:18:46.154000', NULL, NULL),
(389, 'plugin::import-export-entries.import', '{}', NULL, '{}', '[]', '2024-03-02 14:18:52.827000', '2024-03-02 14:18:52.827000', NULL, NULL),
(390, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-02 14:20:35.747000', '2024-03-02 14:20:35.747000', NULL, NULL),
(391, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-02 14:20:35.775000', '2024-03-02 14:20:35.775000', NULL, NULL),
(392, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-02 14:20:35.786000', '2024-03-02 14:20:35.786000', NULL, NULL),
(393, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-03-02 14:20:35.830000', '2024-03-02 14:20:35.830000', NULL, NULL),
(394, 'plugin::content-manager.explorer.create', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\"]}', '[]', '2024-03-02 14:20:35.919000', '2024-03-02 14:20:35.919000', NULL, NULL),
(395, 'plugin::content-manager.explorer.read', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\"]}', '[]', '2024-03-02 14:20:35.956000', '2024-03-02 14:20:35.956000', NULL, NULL),
(396, 'plugin::content-manager.explorer.update', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\"]}', '[]', '2024-03-02 14:20:36.020000', '2024-03-02 14:20:36.020000', NULL, NULL),
(397, 'plugin::content-manager.explorer.delete', '{}', 'api::about-us.about-us', '{}', '[]', '2024-03-02 14:20:36.099000', '2024-03-02 14:20:36.099000', NULL, NULL),
(398, 'plugin::content-manager.explorer.publish', '{}', 'api::about-us.about-us', '{}', '[]', '2024-03-02 14:20:36.143000', '2024-03-02 14:20:36.143000', NULL, NULL),
(399, 'plugin::content-manager.explorer.create', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-03-02 14:20:36.157000', '2024-03-02 14:20:36.157000', NULL, NULL),
(400, 'plugin::content-manager.explorer.read', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-03-02 14:20:36.303000', '2024-03-02 14:20:36.303000', NULL, NULL),
(401, 'plugin::content-manager.explorer.update', '{}', 'api::contact.contact', '{\"fields\": [\"slug\", \"Name\", \"Email\", \"Subject\", \"Message\"]}', '[]', '2024-03-02 14:20:36.332000', '2024-03-02 14:20:36.332000', NULL, NULL),
(402, 'plugin::content-manager.explorer.delete', '{}', 'api::contact.contact', '{}', '[]', '2024-03-02 14:20:36.351000', '2024-03-02 14:20:36.351000', NULL, NULL),
(403, 'plugin::content-manager.explorer.publish', '{}', 'api::contact.contact', '{}', '[]', '2024-03-02 14:20:36.399000', '2024-03-02 14:20:36.399000', NULL, NULL),
(404, 'plugin::content-manager.explorer.create', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:20:36.433000', '2024-05-01 14:01:14.139000', NULL, NULL),
(405, 'plugin::content-manager.explorer.read', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:20:36.504000', '2024-05-01 14:01:14.139000', NULL, NULL),
(406, 'plugin::content-manager.explorer.update', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:20:36.582000', '2024-05-01 14:01:14.139000', NULL, NULL),
(407, 'plugin::content-manager.explorer.delete', '{}', 'api::home.home', '{}', '[]', '2024-03-02 14:20:36.628000', '2024-03-02 14:20:36.628000', NULL, NULL),
(408, 'plugin::content-manager.explorer.publish', '{}', 'api::home.home', '{}', '[]', '2024-03-02 14:20:36.645000', '2024-03-02 14:20:36.645000', NULL, NULL),
(409, 'plugin::content-manager.explorer.create', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-02 14:20:36.664000', '2024-03-02 14:20:36.664000', NULL, NULL),
(410, 'plugin::content-manager.explorer.read', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-02 14:20:36.692000', '2024-03-02 14:20:36.692000', NULL, NULL),
(411, 'plugin::content-manager.explorer.update', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-02 14:20:36.800000', '2024-03-02 14:20:36.800000', NULL, NULL),
(412, 'plugin::content-manager.explorer.delete', '{}', 'api::landing-page.landing-page', '{}', '[]', '2024-03-02 14:20:36.907000', '2024-03-02 14:20:36.907000', NULL, NULL),
(413, 'plugin::content-manager.explorer.publish', '{}', 'api::landing-page.landing-page', '{}', '[]', '2024-03-02 14:20:36.957000', '2024-03-02 14:20:36.957000', NULL, NULL),
(414, 'plugin::content-manager.explorer.create', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\"]}', '[]', '2024-03-02 14:20:36.975000', '2024-03-02 14:20:36.975000', NULL, NULL),
(415, 'plugin::content-manager.explorer.read', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\"]}', '[]', '2024-03-02 14:20:37.006000', '2024-03-02 14:20:37.006000', NULL, NULL),
(416, 'plugin::content-manager.explorer.update', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\"]}', '[]', '2024-03-02 14:20:37.052000', '2024-03-02 14:20:37.052000', NULL, NULL),
(417, 'plugin::content-manager.explorer.delete', '{}', 'api::navbar-menu.navbar-menu', '{}', '[]', '2024-03-02 14:20:37.069000', '2024-03-02 14:20:37.069000', NULL, NULL),
(418, 'plugin::content-manager.explorer.publish', '{}', 'api::navbar-menu.navbar-menu', '{}', '[]', '2024-03-02 14:20:37.104000', '2024-03-02 14:20:37.104000', NULL, NULL),
(419, 'plugin::content-manager.explorer.create', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\"]}', '[]', '2024-03-02 14:20:37.151000', '2024-03-06 21:42:34.248000', NULL, NULL),
(420, 'plugin::content-manager.explorer.read', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\"]}', '[]', '2024-03-02 14:20:37.182000', '2024-03-06 21:42:34.248000', NULL, NULL),
(421, 'plugin::content-manager.explorer.update', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\"]}', '[]', '2024-03-02 14:20:37.225000', '2024-03-06 21:42:34.248000', NULL, NULL),
(422, 'plugin::content-manager.explorer.delete', '{}', 'api::navbarmenu.navbarmenu', '{}', '[]', '2024-03-02 14:20:37.244000', '2024-03-02 14:20:37.244000', NULL, NULL),
(423, 'plugin::content-manager.explorer.publish', '{}', 'api::navbarmenu.navbarmenu', '{}', '[]', '2024-03-02 14:20:37.300000', '2024-03-02 14:20:37.300000', NULL, NULL),
(424, 'plugin::content-manager.explorer.create', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:20:37.317000', '2024-03-02 14:20:37.317000', NULL, NULL),
(425, 'plugin::content-manager.explorer.read', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:20:37.356000', '2024-03-02 14:20:37.356000', NULL, NULL),
(426, 'plugin::content-manager.explorer.update', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-02 14:20:37.445000', '2024-03-02 14:20:37.445000', NULL, NULL),
(427, 'plugin::content-manager.explorer.delete', '{}', 'api::service.service', '{}', '[]', '2024-03-02 14:20:37.484000', '2024-03-02 14:20:37.484000', NULL, NULL),
(428, 'plugin::content-manager.explorer.publish', '{}', 'api::service.service', '{}', '[]', '2024-03-02 14:20:37.558000', '2024-03-02 14:20:37.558000', NULL, NULL),
(429, 'plugin::content-manager.explorer.create', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-03-02 14:20:54.723000', '2024-03-02 14:20:54.723000', NULL, NULL),
(430, 'plugin::content-manager.explorer.read', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-03-02 14:20:54.802000', '2024-03-02 14:20:54.802000', NULL, NULL),
(431, 'plugin::content-manager.explorer.update', '{}', 'api::contact-info.contact-info', '{\"fields\": [\"contact.name\", \"contact.image\", \"contact.address\", \"contact.telephone\", \"contact.mobile\", \"contact.website\", \"contact.footer\"]}', '[]', '2024-03-02 14:20:54.846000', '2024-03-02 14:20:54.846000', NULL, NULL),
(432, 'plugin::content-manager.explorer.delete', '{}', 'api::contact-info.contact-info', '{}', '[]', '2024-03-02 14:20:54.886000', '2024-03-02 14:20:54.886000', NULL, NULL),
(433, 'plugin::content-manager.explorer.publish', '{}', 'api::contact-info.contact-info', '{}', '[]', '2024-03-02 14:20:54.904000', '2024-03-02 14:20:54.904000', NULL, NULL),
(574, 'plugin::content-manager.explorer.delete', '{}', 'api::ip-telephone-service.ip-telephone-service', '{}', '[]', '2024-03-04 21:09:57.448000', '2024-03-04 21:09:57.448000', NULL, NULL),
(575, 'plugin::content-manager.explorer.delete', '{}', 'api::lucent-chart.lucent-chart', '{}', '[]', '2024-03-04 21:09:57.517000', '2024-03-04 21:09:57.517000', NULL, NULL),
(576, 'plugin::content-manager.explorer.delete', '{}', 'api::page.page', '{}', '[]', '2024-03-04 21:09:57.563000', '2024-03-04 21:09:57.563000', NULL, NULL),
(577, 'plugin::content-manager.explorer.delete', '{}', 'api::productive-office.productive-office', '{}', '[]', '2024-03-04 21:09:57.647000', '2024-03-04 21:09:57.647000', NULL, NULL),
(578, 'plugin::content-manager.explorer.publish', '{}', 'api::ip-telephone-service.ip-telephone-service', '{}', '[]', '2024-03-04 21:09:57.698000', '2024-03-04 21:09:57.698000', NULL, NULL),
(579, 'plugin::content-manager.explorer.publish', '{}', 'api::lucent-chart.lucent-chart', '{}', '[]', '2024-03-04 21:09:57.724000', '2024-03-04 21:09:57.724000', NULL, NULL),
(580, 'plugin::content-manager.explorer.publish', '{}', 'api::page.page', '{}', '[]', '2024-03-04 21:09:57.793000', '2024-03-04 21:09:57.793000', NULL, NULL),
(581, 'plugin::content-manager.explorer.publish', '{}', 'api::productive-office.productive-office', '{}', '[]', '2024-03-04 21:09:57.821000', '2024-03-04 21:09:57.821000', NULL, NULL),
(664, 'plugin::content-manager.explorer.delete', '{}', 'api::dynamic-page.dynamic-page', '{}', '[]', '2024-03-08 09:16:08.624000', '2024-03-08 09:16:08.624000', NULL, NULL),
(665, 'plugin::content-manager.explorer.publish', '{}', 'api::dynamic-page.dynamic-page', '{}', '[]', '2024-03-08 09:16:08.679000', '2024-03-08 09:16:08.679000', NULL, NULL),
(708, 'plugin::content-manager.explorer.create', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\", \"slug\", \"page\", \"test\", \"dynamic_page\"]}', '[]', '2024-03-09 18:58:38.397000', '2024-03-09 18:58:38.397000', NULL, NULL),
(709, 'plugin::content-manager.explorer.read', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\", \"slug\", \"page\", \"test\", \"dynamic_page\"]}', '[]', '2024-03-09 18:58:38.453000', '2024-03-09 18:58:38.453000', NULL, NULL),
(710, 'plugin::content-manager.explorer.update', '{}', 'api::navbar-menu.navbar-menu', '{\"fields\": [\"name\", \"slug\", \"page\", \"test\", \"dynamic_page\"]}', '[]', '2024-03-09 18:58:38.482000', '2024-03-09 18:58:38.482000', NULL, NULL),
(711, 'plugin::content-manager.explorer.create', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\", \"dynamic_page\", \"image\"]}', '[]', '2024-03-09 18:59:05.403000', '2024-03-09 18:59:05.403000', NULL, NULL),
(712, 'plugin::content-manager.explorer.read', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\", \"dynamic_page\", \"image\"]}', '[]', '2024-03-09 18:59:05.452000', '2024-03-09 18:59:05.452000', NULL, NULL),
(713, 'plugin::content-manager.explorer.update', '{}', 'api::navbarmenu.navbarmenu', '{\"fields\": [\"slug\", \"name\", \"navbar_menus\", \"dynamic_page\", \"image\"]}', '[]', '2024-03-09 18:59:05.516000', '2024-03-09 18:59:05.516000', NULL, NULL),
(729, 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-03-15 10:55:11.527000', '2024-03-15 10:55:11.527000', NULL, NULL),
(730, 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-03-15 10:55:11.553000', '2024-03-15 10:55:11.553000', NULL, NULL),
(734, 'plugin::content-manager.explorer.delete', '{}', 'api::product.product', '{}', '[]', '2024-03-15 11:00:18.613000', '2024-03-15 11:00:18.613000', NULL, NULL),
(735, 'plugin::content-manager.explorer.publish', '{}', 'api::product.product', '{}', '[]', '2024-03-15 11:00:18.662000', '2024-03-15 11:00:18.662000', NULL, NULL),
(751, 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\": [\"title\", \"img\", \"products\"]}', '[]', '2024-03-19 20:01:09.614000', '2024-03-19 20:01:09.614000', NULL, NULL),
(753, 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\": [\"title\", \"img\", \"products\"]}', '[]', '2024-03-19 20:01:09.696000', '2024-03-19 20:01:09.696000', NULL, NULL),
(755, 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\": [\"title\", \"img\", \"products\"]}', '[]', '2024-03-19 20:01:09.759000', '2024-03-19 20:01:09.759000', NULL, NULL),
(766, 'plugin::content-manager.explorer.delete', '{}', 'api::register-user.register-user', '{}', '[]', '2024-03-22 11:14:58.215000', '2024-03-22 11:14:58.215000', NULL, NULL),
(767, 'plugin::content-manager.explorer.publish', '{}', 'api::register-user.register-user', '{}', '[]', '2024-03-22 11:14:58.278000', '2024-03-22 11:14:58.278000', NULL, NULL),
(768, 'plugin::content-manager.explorer.create', '{}', 'api::register-user.register-user', '{\"fields\": [\"slug\", \"FirstName\", \"LastName\", \"EmailAddress\", \"Password\"]}', '[]', '2024-03-22 11:16:14.976000', '2024-03-22 11:16:14.976000', NULL, NULL),
(769, 'plugin::content-manager.explorer.read', '{}', 'api::register-user.register-user', '{\"fields\": [\"slug\", \"FirstName\", \"LastName\", \"EmailAddress\", \"Password\"]}', '[]', '2024-03-22 11:16:15.042000', '2024-03-22 11:16:15.042000', NULL, NULL),
(770, 'plugin::content-manager.explorer.update', '{}', 'api::register-user.register-user', '{\"fields\": [\"slug\", \"FirstName\", \"LastName\", \"EmailAddress\", \"Password\"]}', '[]', '2024-03-22 11:16:15.134000', '2024-03-22 11:16:15.134000', NULL, NULL),
(779, 'plugin::content-manager.explorer.delete', '{}', 'api::destination-page.destination-page', '{}', '[]', '2024-03-23 12:41:39.018000', '2024-03-23 12:41:39.018000', NULL, NULL),
(780, 'plugin::content-manager.explorer.publish', '{}', 'api::destination-page.destination-page', '{}', '[]', '2024-03-23 12:41:39.041000', '2024-03-23 12:41:39.041000', NULL, NULL),
(1129, 'plugin::content-manager.explorer.create', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\"]}', '[]', '2024-03-23 13:40:39.701000', '2024-03-23 13:40:39.701000', NULL, NULL),
(1131, 'plugin::content-manager.explorer.create', '{}', 'api::dynamic-page.dynamic-page', '{\"fields\": [\"slug\", \"hero.heading\", \"hero.subheading\", \"features.heading\", \"features.list.item\", \"productDescription.heading\", \"productDescription.subheading\", \"productDescription.image\", \"title\"]}', '[]', '2024-03-23 13:40:40.002000', '2024-03-23 13:40:40.002000', NULL, NULL),
(1132, 'plugin::content-manager.explorer.create', '{}', 'api::ip-telephone-service.ip-telephone-service', '{\"fields\": [\"slug\", \"hero.heading\", \"hero.subheading\", \"feature.heading\", \"feature.list.item\", \"package.heading\", \"package.list.item\"]}', '[]', '2024-03-23 13:40:40.131000', '2024-03-23 13:40:40.131000', NULL, NULL),
(1133, 'plugin::content-manager.explorer.create', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-23 13:40:40.205000', '2024-03-23 13:40:40.205000', NULL, NULL),
(1134, 'plugin::content-manager.explorer.create', '{}', 'api::lucent-chart.lucent-chart', '{\"fields\": [\"slug\", \"image\", \"heading\", \"video\", \"element1.heading\", \"element1.subheading\", \"element2.heading\", \"element2.list.item\", \"conclusionPart\", \"logo\", \"introductionpart\", \"footer\"]}', '[]', '2024-03-23 13:40:40.263000', '2024-03-23 13:40:40.263000', NULL, NULL),
(1135, 'plugin::content-manager.explorer.create', '{}', 'api::page.page', '{\"fields\": [\"page\", \"hero.heading\", \"hero.subheading\", \"navbar\", \"title\", \"content\", \"slug\", \"image\"]}', '[]', '2024-03-23 13:40:40.370000', '2024-03-23 13:40:40.370000', NULL, NULL),
(1136, 'plugin::content-manager.explorer.create', '{}', 'api::productive-office.productive-office', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"element.heading\", \"element.list.item\", \"blog.heading\", \"blog.subheading\", \"blog.image\"]}', '[]', '2024-03-23 13:40:40.447000', '2024-03-23 13:40:40.447000', NULL, NULL),
(1137, 'plugin::content-manager.explorer.create', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-23 13:40:40.478000', '2024-03-23 13:40:40.478000', NULL, NULL),
(1138, 'plugin::content-manager.explorer.read', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\"]}', '[]', '2024-03-23 13:40:40.544000', '2024-03-23 13:40:40.544000', NULL, NULL),
(1140, 'plugin::content-manager.explorer.read', '{}', 'api::dynamic-page.dynamic-page', '{\"fields\": [\"slug\", \"hero.heading\", \"hero.subheading\", \"features.heading\", \"features.list.item\", \"productDescription.heading\", \"productDescription.subheading\", \"productDescription.image\", \"title\"]}', '[]', '2024-03-23 13:40:40.693000', '2024-03-23 13:40:40.693000', NULL, NULL),
(1141, 'plugin::content-manager.explorer.read', '{}', 'api::ip-telephone-service.ip-telephone-service', '{\"fields\": [\"slug\", \"hero.heading\", \"hero.subheading\", \"feature.heading\", \"feature.list.item\", \"package.heading\", \"package.list.item\"]}', '[]', '2024-03-23 13:40:40.721000', '2024-03-23 13:40:40.721000', NULL, NULL),
(1142, 'plugin::content-manager.explorer.read', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-23 13:40:40.769000', '2024-03-23 13:40:40.769000', NULL, NULL),
(1143, 'plugin::content-manager.explorer.read', '{}', 'api::lucent-chart.lucent-chart', '{\"fields\": [\"slug\", \"image\", \"heading\", \"video\", \"element1.heading\", \"element1.subheading\", \"element2.heading\", \"element2.list.item\", \"conclusionPart\", \"logo\", \"introductionpart\", \"footer\"]}', '[]', '2024-03-23 13:40:40.797000', '2024-03-23 13:40:40.797000', NULL, NULL),
(1144, 'plugin::content-manager.explorer.read', '{}', 'api::page.page', '{\"fields\": [\"page\", \"hero.heading\", \"hero.subheading\", \"navbar\", \"title\", \"content\", \"slug\", \"image\"]}', '[]', '2024-03-23 13:40:40.877000', '2024-03-23 13:40:40.877000', NULL, NULL),
(1145, 'plugin::content-manager.explorer.read', '{}', 'api::productive-office.productive-office', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"element.heading\", \"element.list.item\", \"blog.heading\", \"blog.subheading\", \"blog.image\"]}', '[]', '2024-03-23 13:40:40.906000', '2024-03-23 13:40:40.906000', NULL, NULL),
(1146, 'plugin::content-manager.explorer.read', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-23 13:40:41.000000', '2024-03-23 13:40:41.000000', NULL, NULL),
(1147, 'plugin::content-manager.explorer.update', '{}', 'api::about-us.about-us', '{\"fields\": [\"content.heading\", \"content.subheading\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\"]}', '[]', '2024-03-23 13:40:41.032000', '2024-03-23 13:40:41.032000', NULL, NULL),
(1149, 'plugin::content-manager.explorer.update', '{}', 'api::dynamic-page.dynamic-page', '{\"fields\": [\"slug\", \"hero.heading\", \"hero.subheading\", \"features.heading\", \"features.list.item\", \"productDescription.heading\", \"productDescription.subheading\", \"productDescription.image\", \"title\"]}', '[]', '2024-03-23 13:40:41.133000', '2024-03-23 13:40:41.133000', NULL, NULL),
(1150, 'plugin::content-manager.explorer.update', '{}', 'api::ip-telephone-service.ip-telephone-service', '{\"fields\": [\"slug\", \"hero.heading\", \"hero.subheading\", \"feature.heading\", \"feature.list.item\", \"package.heading\", \"package.list.item\"]}', '[]', '2024-03-23 13:40:41.184000', '2024-03-23 13:40:41.184000', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1151, 'plugin::content-manager.explorer.update', '{}', 'api::landing-page.landing-page', '{\"fields\": [\"heading\", \"hero.title\", \"hero.subtitle\", \"hero.button\", \"content.heading\", \"content.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"hero1.title\", \"hero1.subtitle\", \"hero1.button\", \"image\", \"footer\"]}', '[]', '2024-03-23 13:40:41.215000', '2024-03-23 13:40:41.215000', NULL, NULL),
(1152, 'plugin::content-manager.explorer.update', '{}', 'api::lucent-chart.lucent-chart', '{\"fields\": [\"slug\", \"image\", \"heading\", \"video\", \"element1.heading\", \"element1.subheading\", \"element2.heading\", \"element2.list.item\", \"conclusionPart\", \"logo\", \"introductionpart\", \"footer\"]}', '[]', '2024-03-23 13:40:41.252000', '2024-03-23 13:40:41.252000', NULL, NULL),
(1153, 'plugin::content-manager.explorer.update', '{}', 'api::page.page', '{\"fields\": [\"page\", \"hero.heading\", \"hero.subheading\", \"navbar\", \"title\", \"content\", \"slug\", \"image\"]}', '[]', '2024-03-23 13:40:41.469000', '2024-03-23 13:40:41.469000', NULL, NULL),
(1154, 'plugin::content-manager.explorer.update', '{}', 'api::productive-office.productive-office', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"element.heading\", \"element.list.item\", \"blog.heading\", \"blog.subheading\", \"blog.image\"]}', '[]', '2024-03-23 13:40:41.495000', '2024-03-23 13:40:41.495000', NULL, NULL),
(1155, 'plugin::content-manager.explorer.update', '{}', 'api::service.service', '{\"fields\": [\"hero.heading\", \"hero.subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-03-23 13:40:41.524000', '2024-03-23 13:40:41.524000', NULL, NULL),
(1168, 'plugin::content-manager.explorer.create', '{}', 'api::destination-page.destination-page', '{\"fields\": [\"slug\", \"Home.title\", \"Home.subtitle\", \"Home.banner\", \"Hero.title\", \"Hero.subtitle\", \"Hero.HeroCard.title\", \"Hero.HeroCard.subtitle\", \"Blog.heading\", \"Blog.subheading\", \"Blog.image\", \"services.title\", \"services.subtitle\", \"services.card2.logo\", \"services.card2.title\", \"services.card2.subtitle\", \"pool.title\", \"pool.subtitle\", \"pool.logoText.img\", \"pool.logoText.name\"]}', '[]', '2024-03-23 13:57:47.155000', '2024-03-23 13:57:47.155000', NULL, NULL),
(1169, 'plugin::content-manager.explorer.read', '{}', 'api::destination-page.destination-page', '{\"fields\": [\"slug\", \"Home.title\", \"Home.subtitle\", \"Home.banner\", \"Hero.title\", \"Hero.subtitle\", \"Hero.HeroCard.title\", \"Hero.HeroCard.subtitle\", \"Blog.heading\", \"Blog.subheading\", \"Blog.image\", \"services.title\", \"services.subtitle\", \"services.card2.logo\", \"services.card2.title\", \"services.card2.subtitle\", \"pool.title\", \"pool.subtitle\", \"pool.logoText.img\", \"pool.logoText.name\"]}', '[]', '2024-03-23 13:57:47.240000', '2024-03-23 13:57:47.240000', NULL, NULL),
(1170, 'plugin::content-manager.explorer.update', '{}', 'api::destination-page.destination-page', '{\"fields\": [\"slug\", \"Home.title\", \"Home.subtitle\", \"Home.banner\", \"Hero.title\", \"Hero.subtitle\", \"Hero.HeroCard.title\", \"Hero.HeroCard.subtitle\", \"Blog.heading\", \"Blog.subheading\", \"Blog.image\", \"services.title\", \"services.subtitle\", \"services.card2.logo\", \"services.card2.title\", \"services.card2.subtitle\", \"pool.title\", \"pool.subtitle\", \"pool.logoText.img\", \"pool.logoText.name\"]}', '[]', '2024-03-23 13:57:47.287000', '2024-03-23 13:57:47.287000', NULL, NULL),
(1185, 'plugin::content-manager.explorer.delete', '{}', 'api::order-report.order-report', '{}', '[]', '2024-04-17 11:02:58.322000', '2024-04-17 11:02:58.322000', NULL, NULL),
(1263, 'plugin::content-manager.explorer.create', '{}', 'api::order-report.order-report', '{\"fields\": [\"slug\", \"FirstName\", \"LastName\", \"Address\", \"Mobile\", \"Email\", \"City\", \"Zone\", \"Comment\", \"orderId\", \"OrderList\", \"OrderItem\", \"ConfirmOrder\"]}', '[]', '2024-04-29 20:53:15.156000', '2024-04-29 20:53:15.156000', NULL, NULL),
(1265, 'plugin::content-manager.explorer.read', '{}', 'api::order-report.order-report', '{\"fields\": [\"slug\", \"FirstName\", \"LastName\", \"Address\", \"Mobile\", \"Email\", \"City\", \"Zone\", \"Comment\", \"orderId\", \"OrderList\", \"OrderItem\", \"ConfirmOrder\"]}', '[]', '2024-04-29 20:53:15.871000', '2024-04-29 20:53:15.871000', NULL, NULL),
(1267, 'plugin::content-manager.explorer.update', '{}', 'api::order-report.order-report', '{\"fields\": [\"slug\", \"FirstName\", \"LastName\", \"Address\", \"Mobile\", \"Email\", \"City\", \"Zone\", \"Comment\", \"orderId\", \"OrderList\", \"OrderItem\", \"ConfirmOrder\"]}', '[]', '2024-04-29 20:53:16.333000', '2024-04-29 20:53:16.333000', NULL, NULL),
(1269, 'plugin::content-manager.explorer.publish', '{}', 'api::order-report.order-report', '{}', '[]', '2024-04-29 20:53:16.908000', '2024-04-29 20:53:16.908000', NULL, NULL),
(1270, 'plugin::content-manager.explorer.create', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-05-01 14:01:12.960000', '2024-05-01 14:01:12.960000', NULL, NULL),
(1271, 'plugin::content-manager.explorer.read', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-05-01 14:01:13.265000', '2024-05-01 14:01:13.265000', NULL, NULL),
(1272, 'plugin::content-manager.explorer.update', '{}', 'api::home.home', '{\"fields\": [\"slug\", \"slider\", \"heading\", \"subheading\", \"card.title\", \"card.subtitle\", \"card.button\", \"images\", \"footer\"]}', '[]', '2024-05-01 14:01:13.488000', '2024-05-01 14:01:13.488000', NULL, NULL),
(1291, 'plugin::content-manager.explorer.create', '{}', 'api::product.product', '{\"fields\": [\"title\", \"desc\", \"img\", \"price\", \"categories\", \"status\", \"product_code\", \"previous_price\", \"key_Features.Resolution\", \"key_Features.Display\", \"key_Features.port\", \"key_Features.Brand\", \"key_Features.Model\", \"Description.heading\", \"Description.subheading\", \"stock_product\"]}', '[]', '2024-05-20 22:54:47.533000', '2024-05-20 22:54:47.533000', NULL, NULL),
(1292, 'plugin::content-manager.explorer.read', '{}', 'api::product.product', '{\"fields\": [\"title\", \"desc\", \"img\", \"price\", \"categories\", \"status\", \"product_code\", \"previous_price\", \"key_Features.Resolution\", \"key_Features.Display\", \"key_Features.port\", \"key_Features.Brand\", \"key_Features.Model\", \"Description.heading\", \"Description.subheading\", \"stock_product\"]}', '[]', '2024-05-20 22:54:47.846000', '2024-05-20 22:54:47.846000', NULL, NULL),
(1293, 'plugin::content-manager.explorer.update', '{}', 'api::product.product', '{\"fields\": [\"title\", \"desc\", \"img\", \"price\", \"categories\", \"status\", \"product_code\", \"previous_price\", \"key_Features.Resolution\", \"key_Features.Display\", \"key_Features.port\", \"key_Features.Brand\", \"key_Features.Model\", \"Description.heading\", \"Description.subheading\", \"stock_product\"]}', '[]', '2024-05-20 22:54:48.115000', '2024-05-20 22:54:48.115000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(74, 74, 1, 62),
(75, 75, 1, 63),
(82, 82, 1, 70),
(83, 83, 1, 71),
(96, 96, 1, 78),
(97, 97, 1, 79),
(119, 119, 1, 89),
(120, 120, 1, 90),
(127, 127, 1, 97),
(128, 128, 1, 98),
(144, 144, 1, 105),
(145, 145, 1, 106),
(146, 146, 1, 107),
(150, 150, 1, 111),
(151, 151, 1, 112),
(152, 152, 3, 7),
(158, 158, 3, 13),
(159, 159, 3, 14),
(160, 160, 3, 15),
(161, 161, 3, 16),
(162, 162, 3, 17),
(163, 163, 3, 18),
(167, 167, 3, 22),
(172, 172, 3, 27),
(173, 173, 3, 28),
(174, 174, 3, 29),
(176, 176, 3, 31),
(177, 177, 1, 113),
(178, 178, 1, 114),
(179, 179, 3, 32),
(180, 180, 3, 33),
(181, 181, 3, 34),
(182, 182, 3, 35),
(183, 183, 3, 36),
(184, 184, 3, 37),
(185, 185, 3, 38),
(186, 186, 3, 39),
(187, 187, 3, 40),
(188, 188, 3, 41),
(189, 189, 3, 42),
(190, 190, 3, 43),
(197, 197, 1, 118),
(198, 198, 1, 119),
(226, 226, 1, 129),
(227, 227, 1, 130),
(228, 228, 1, 131),
(232, 232, 1, 135),
(233, 233, 1, 136),
(248, 248, 1, 140),
(348, 348, 3, 44),
(349, 349, 3, 45),
(350, 350, 3, 46),
(351, 351, 3, 47),
(352, 352, 3, 48),
(353, 353, 3, 49),
(354, 354, 3, 50),
(355, 355, 3, 51),
(356, 356, 3, 52),
(357, 357, 3, 53),
(358, 358, 3, 54),
(359, 359, 3, 55),
(360, 360, 3, 56),
(361, 361, 3, 57),
(362, 362, 3, 58),
(363, 363, 3, 59),
(364, 364, 3, 60),
(365, 365, 3, 61),
(366, 366, 3, 62),
(367, 367, 3, 63),
(368, 368, 3, 64),
(369, 369, 3, 65),
(385, 385, 3, 81),
(386, 386, 3, 82),
(387, 387, 3, 83),
(388, 388, 3, 84),
(389, 389, 3, 85),
(390, 390, 2, 7),
(391, 391, 2, 8),
(392, 392, 2, 9),
(393, 393, 2, 10),
(394, 394, 2, 11),
(395, 395, 2, 12),
(396, 396, 2, 13),
(397, 397, 2, 14),
(398, 398, 2, 15),
(399, 399, 2, 16),
(400, 400, 2, 17),
(401, 401, 2, 18),
(402, 402, 2, 19),
(403, 403, 2, 20),
(404, 404, 2, 21),
(405, 405, 2, 22),
(406, 406, 2, 23),
(407, 407, 2, 24),
(408, 408, 2, 25),
(409, 409, 2, 26),
(410, 410, 2, 27),
(411, 411, 2, 28),
(412, 412, 2, 29),
(413, 413, 2, 30),
(414, 414, 2, 31),
(415, 415, 2, 32),
(416, 416, 2, 33),
(417, 417, 2, 34),
(418, 418, 2, 35),
(419, 419, 2, 36),
(420, 420, 2, 37),
(421, 421, 2, 38),
(422, 422, 2, 39),
(423, 423, 2, 40),
(424, 424, 2, 41),
(425, 425, 2, 42),
(426, 426, 2, 43),
(427, 427, 2, 44),
(428, 428, 2, 45),
(429, 429, 2, 46),
(430, 430, 2, 47),
(431, 431, 2, 48),
(432, 432, 2, 49),
(433, 433, 2, 50),
(574, 574, 1, 159),
(575, 575, 1, 160),
(576, 576, 1, 161),
(577, 577, 1, 162),
(578, 578, 1, 163),
(579, 579, 1, 164),
(580, 580, 1, 165),
(581, 581, 1, 166),
(664, 664, 1, 193),
(665, 665, 1, 194),
(708, 708, 1, 217),
(709, 709, 1, 218),
(710, 710, 1, 219),
(711, 711, 1, 220),
(712, 712, 1, 221),
(713, 713, 1, 222),
(729, 729, 1, 232),
(730, 730, 1, 233),
(734, 734, 1, 237),
(735, 735, 1, 238),
(751, 751, 1, 239),
(753, 753, 1, 241),
(755, 755, 1, 243),
(766, 766, 1, 250),
(767, 767, 1, 251),
(768, 768, 1, 252),
(769, 769, 1, 253),
(770, 770, 1, 254),
(779, 779, 1, 258),
(780, 780, 1, 259),
(1129, 1129, 1, 260),
(1131, 1131, 1, 262),
(1132, 1132, 1, 263),
(1133, 1133, 1, 264),
(1134, 1134, 1, 265),
(1135, 1135, 1, 266),
(1136, 1136, 1, 267),
(1137, 1137, 1, 268),
(1138, 1138, 1, 269),
(1140, 1140, 1, 271),
(1141, 1141, 1, 272),
(1142, 1142, 1, 273),
(1143, 1143, 1, 274),
(1144, 1144, 1, 275),
(1145, 1145, 1, 276),
(1146, 1146, 1, 277),
(1147, 1147, 1, 278),
(1149, 1149, 1, 280),
(1150, 1150, 1, 281),
(1151, 1151, 1, 282),
(1152, 1152, 1, 283),
(1153, 1153, 1, 284),
(1154, 1154, 1, 285),
(1155, 1155, 1, 286),
(1168, 1168, 1, 287),
(1169, 1169, 1, 288),
(1170, 1170, 1, 289),
(1185, 1185, 1, 293),
(1263, 1263, 1, 294),
(1265, 1265, 1, 296),
(1267, 1267, 1, 298),
(1269, 1269, 1, 300),
(1270, 1270, 1, 301),
(1271, 1271, 1, 302),
(1272, 1272, 1, 303),
(1291, 1291, 1, 304),
(1292, 1292, 1, 305),
(1293, 1293, 1, 306);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-02-24 12:20:04.924000', '2024-02-24 12:20:04.924000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-02-24 12:20:04.942000', '2024-03-02 14:20:54.585000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-02-24 12:20:05.076000', '2024-03-02 14:36:13.363000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'admin', 'admin', NULL, 'admin123@gmail.com', '$2a$10$p2Zr0UVeJTgmTwpyqI5OWuhJPVzWU31oHH0H.yBPBg/Ql1morCRou', NULL, NULL, 1, 0, NULL, '2024-02-24 12:23:11.007000', '2024-02-24 12:23:11.007000', NULL, NULL),
(3, 'tmc', 'tmc', NULL, 'tmc@gmail.com', '$2a$10$M9GUwLbjPIWytBH8W7flY.mM66b1LQ7DsGPyr9oAb48THi.dE9goO', NULL, NULL, 1, 0, NULL, '2024-03-02 14:13:04.702000', '2024-03-02 14:13:30.121000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1),
(5, 3, 3, 1, 1),
(6, 3, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `title`) VALUES
(1, '2024-03-19 20:06:25.125000', '2024-04-30 16:51:19.309000', '2024-03-19 20:24:15.908000', 1, 1, 'Q bot'),
(2, '2024-03-19 20:14:11.722000', '2024-03-22 06:38:03.711000', '2024-03-19 20:14:18.263000', 1, 1, 'Visual acuity'),
(3, '2024-03-19 20:17:02.541000', '2024-04-30 12:11:35.463000', '2024-03-19 20:17:05.794000', 1, 1, 'Q ad'),
(4, '2024-03-22 06:40:29.386000', '2024-04-30 16:25:42.449000', '2024-03-22 06:41:20.411000', 1, 1, 'Kiosk'),
(5, '2024-04-18 23:43:46.711000', '2024-04-30 16:15:16.909000', '2024-04-18 23:44:45.197000', 1, 1, 'Digital  Locker'),
(6, '2024-04-18 23:51:05.249000', '2024-04-30 16:18:03.233000', '2024-04-18 23:51:06.649000', 1, 1, 'Server & Storage'),
(8, '2024-04-30 16:21:20.632000', '2024-04-30 16:22:55.906000', '2024-04-30 16:21:37.196000', 1, 1, 'Q pod'),
(9, '2024-04-30 16:58:14.178000', '2024-05-07 14:00:59.509000', '2024-04-30 16:58:16.764000', 1, 1, 'Q bot v3'),
(10, '2024-04-30 17:06:02.421000', '2024-05-07 14:25:56.121000', '2024-04-30 17:06:04.860000', 1, 1, 'q bot v4'),
(11, '2024-04-30 17:09:21.008000', '2024-05-12 22:46:18.561000', '2024-04-30 17:09:22.927000', 1, 1, 'Q bot v5'),
(12, '2024-05-12 22:48:14.926000', '2024-05-12 23:46:09.421000', '2024-05-12 22:48:16.329000', 1, 1, 'Q bot v6'),
(13, '2024-05-12 22:50:47.374000', '2024-05-12 23:46:58.777000', '2024-05-12 22:50:48.643000', 1, 1, 'Q bot v7'),
(14, '2024-05-12 22:51:12.732000', '2024-05-12 22:52:12.092000', '2024-05-12 22:51:14.538000', 1, 1, 'Q bot v7');

-- --------------------------------------------------------

--
-- Table structure for table `components_card_content_cards`
--

CREATE TABLE `components_card_content_cards` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext,
  `button` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_card_content_cards`
--

INSERT INTO `components_card_content_cards` (`id`, `title`, `subtitle`, `button`) VALUES
(1, 'Productive Office', 'From our affordable integrated content collaboration platform solutions (Productive Office), you get everything you need to run your business.', 'Read More '),
(2, 'Video Conferencing Solution', 'Our video conferencing software enables online communication for audio meetings, video meetings and seminars with built-in features such as chat, screen sharing, and recording.', 'Read More '),
(3, 'IP Telephony Services & Solutions', 'With our IP telephony service your office will be where you will be, no more worry about fixed lines. With our seamless and secure service, you would never have to think again about your location.', 'Read More '),
(4, 'Security Solutions', 'By implementing our security systems, you will be able to fortify your facilities against break-ins and will be able to set up a significant psychological deterrent to those who would otherwise feel that they can act against your businesses with impunity.', 'Read More '),
(5, ' Managed IT Support Service Desk', 'AT TMC, we focus primarily on providing Managed IT Services that enable you to focus on your business without having to worry about your IT.', 'More details '),
(6, 'E-Mail Migration and Management', 'Whether your company prefers a robust e-mail solution such as Microsoft 365 or a more nimble offering such as Google’s G-Suite or you want to use our own affordable but competitive solution Productive Office', 'More details '),
(7, 'Managed Cloud Services', 'At TMC, we provide Cloud Managed Services with our skilled resources that augment your inhouse functionalities and IT infrastructure to be managed in collaboration with a third-party managed service provider (MSP) via cloud platforms.', 'More details '),
(8, 'Business Analysis & Consultancy', 'At TMC, we help you find the accurate answers to questions related to your business strategy and marketing efforts through on a “three pillars” approach using the principles of Engagement, Service Delivery and Practice Management.', 'More details '),
(9, 'Managed IT Support Service Desk', 'AT TMC, we focus primarily on providing Managed IT Services that enable you to focus on your business without having to worry about your IT.', 'Read More '),
(10, 'E-Mail Migration and Management', 'Whether your company prefers a robust e-mail solution such as Microsoft 365 or a more nimble offering such as Google’s G-Suite or you want to use our own affordable but competitive solution Productive Office.', 'Read More  '),
(11, 'Managed Cloud Services', 'At TMC, we provide Cloud Managed Services with our skilled resources that augment your inhouse functionalities and IT infrastructure to be managed in collaboration with a third-party managed service provider (MSP) via cloud platforms.', 'Read More '),
(12, 'Business Analysis & Consultancy', 'At TMC, we help you find the accurate answers to questions related to your business strategy and marketing efforts through on a “three pillars” approach using the principles of Engagement, Service Delivery and Practice Management.', 'Read More ');

-- --------------------------------------------------------

--
-- Table structure for table `components_card_content_cart_contents`
--

CREATE TABLE `components_card_content_cart_contents` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_card_content_cart_contents`
--

INSERT INTO `components_card_content_cart_contents` (`id`, `title`, `subtitle`) VALUES
(1, NULL, NULL),
(2, 'IPTV Solutions', 'TV over Internet Protocol Head-End Solution that manages content throughout its entire lifecycle, from preparation in a variety of formats to encryption, distribution and publishing.'),
(3, 'CRM', 'It\'s not just a software; it is a business strategy that stresses good ongoing relationships with customers to help you grow your business with a unified face to the customer through automation.'),
(4, 'DAMS', 'Data Acquisition and Measurement Solution helps you to obtain and utilize aggregated quality data to gain actionable intelligence and insight for process optimization.'),
(5, 'BPM', 'With our Business Process Management Software you can reduce costs, limit errors, maintain compliance, maximize efficiency, and improve employee satisfaction by providing process definition, business process automation and other types of services.'),
(6, 'Tech Teams as a Service', 'We build full-stack remote engineering teams for your growing tech businesses by covering recruiting, HR and administration, tech roll out planning & deployment consultancy, while you\'ll keep full control over project management.'),
(7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_contact_contacts`
--

CREATE TABLE `components_contact_contacts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_contact_contacts`
--

INSERT INTO `components_contact_contacts` (`id`, `name`, `address`, `telephone`, `website`, `mobile`, `footer`) VALUES
(1, 'Transworld Mercantile Corporation', 'Cemex Shimul Trishna Trade Center (3rd Floor) KA- 86/1 Pragati Sharani Road, Kuril, Dhaka 1229.', '+880-9613848484', 'https://transworldbd.com', '+880-1860877300​', NULL),
(2, 'Hidayah Smart Solutions', 'Cemex Shimul Trishna Trade Center (3rd Floor) KA- 86/1 Pragati Sharani Road, Kuril, Dhaka 1229.', '+880-9613848484', 'https://hidayahsmart.solutions/', '8801894999786', 'Copyright © 2024 Hidayah Smart Solutions. All Rights Reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `components_content_blogs`
--

CREATE TABLE `components_content_blogs` (
  `id` int UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `subheading` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_content_blogs`
--

INSERT INTO `components_content_blogs` (`id`, `heading`, `subheading`) VALUES
(1, 'Affordable secure, private email for your business  ', 'Productive Office keeps you updated with real-time message notifications, and safely stores your important emails and data. And it’s cheaper than daily office tea.'),
(2, 'email @yourcompany.com', 'Give your business a professional look with email @ your domain name with Huge 25 GB Mailboxes.'),
(3, 'Spam & Virus Protection', 'Our premium filtering keeps your inbox virtually free of spam and viruses.'),
(4, 'Work without interruption', 'Access your email anytime, anywhere, on any device—no Internet connection needed. Read and draft messages without connectivity, and they’ll be ready to send when you’re back online.'),
(5, 'Secure & Private Email', 'We will never read, sell or scan your email content for advertising purposes.'),
(6, 'Compatible with your existing interface', 'Productive Office works great with desktop clients like Microsoft Outlook, Apple Mail and Mozilla Thunderbird.'),
(7, 'Easy migration from Outlook and legacy services', 'Migrate your email from Outlook or Exchange easily with custom tools that help preserve your important messages.'),
(8, 'Live the Experience', 'Count on our reliable servers to keep your lights on 24/7/365 with 10+ years of hosted email experience.'),
(9, 'Affordable secure, private email for your business  ', 'Productive Office keeps you updated with real-time message notifications, and safely stores your important emails and data. And it’s cheaper than daily office tea.'),
(10, 'email @yourcompany.com', 'Give your business a professional look with email @ your domain name with Huge 25 GB Mailboxes.'),
(11, 'WHO WE ARE', 'At Hidayah Smart Solutions we are passionate about building feature-rich user friendly software as well as provide solution and consultancy as a service through intuitiveness, reliability to empower companies to do more with technology. With more than a decade of development experience  our aim is to reduce investment risk with MVP development through flexible, cost-efficient cooperation models that will help you to excel your business even further.'),
(12, NULL, NULL),
(13, 'WHO WE ARE', 'At Hidayah Smart Solutions we are passionate about building feature-rich user friendly software as well as provide solution and consultancy as a service through intuitiveness, reliability to empower companies to do more with technology. With more than a decade of development experience  our aim is to reduce investment risk with MVP development through flexible, cost-efficient cooperation models that will help you to excel your business even further.');

-- --------------------------------------------------------

--
-- Table structure for table `components_content_contents`
--

CREATE TABLE `components_content_contents` (
  `id` int UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `subheading` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_content_contents`
--

INSERT INTO `components_content_contents` (`id`, `heading`, `subheading`) VALUES
(1, 'Our Core Values', 'Ethics is the foundation for all we do.'),
(2, 'Our Misson', 'Improving people’s lives through innovation — to drive a new era of development, growth, and productivity.'),
(3, 'Our Vision', 'To offer future proof technology at affordable price to all, while leading the way for socially conscious businesses.'),
(4, 'OUR SERVICE.', 'We Offer a Wide Variety of IT Services'),
(5, 'Our Services', 'Transworld Mercantile Corporation is one of the few IT system integration, professional service and solution development companies in Bangladesh that works with Small-scale solutions to Enterprise systems and companies.'),
(6, 'Productive Office', 'From our affordable integrated content collaboration platform solutions (Productive Office) you get everything you need to run your business. We have a variety of solutions from email to office productivity suites (including documents, spreadsheets and online storage) as well as employee tracking and project management software; all in one solution without the headache of maintaining servers, software, and added IT costs.'),
(7, 'What is Visual Acuity', 'Visual acuity refers to a person\'s ability to see small details. It is also referred to as clarity of vision or sharpness of vision.\n\nA visual acuity score is the result of a vision test performed by an optometrist or ophthalmologist. Opticians, technicians, and nurses can also perform a visual acuity measurement.\n\nIt is usually written as a fraction. This measurement describes your ability to see an object from 20 feet away compared to a person with normal vision.\n\nFor example, 10/10 vision means that you can see an object clearly from 10 feet away.\n\nOptometrists use your visual acuity to help determine your eyeglasses prescription.'),
(8, 'IP Telephony Services & Solutions', 'With our IP telephony service your office will be where you will be, no more worry about fixed lines. With our seamless and secure service, you would never have to think again about your location. With low cost, simple connectivity and high-quality connection you won’t even realize how high-tech the solution is!\n\nUse our virtual PABX services to cut down on costs in inter-office communication.\n\nExpecting a sudden spike in call volume, or just adding more lines to accommodate your growing work force, using an IP Phone number means you can increase your concurrent call channels at any time without any infrastructure change required.'),
(9, 'Our Core Values', 'Ethics is the foundation for all we do.'),
(10, 'Our Misson', 'Improving people’s lives through innovation — to drive a new era of development, growth, and productivity.'),
(11, 'Our Vision', 'To offer future proof technology at affordable price to all, while leading the way for socially conscious businesses.'),
(12, 'Our Core Values', 'Ethics is the foundation for all we do.'),
(13, 'Our Misson', 'Improving people’s lives through innovation — to drive a new era of development, growth, and productivity.'),
(14, 'What is Visual Acuity', 'Visual acuity refers to a person\'s ability to see small details. It is also referred to as clarity of vision or sharpness of vision.\n\nA visual acuity score is the result of a vision test performed by an optometrist or ophthalmologist. Opticians, technicians, and nurses can also perform a visual acuity measurement.\n\nIt is usually written as a fraction. This measurement describes your ability to see an object from 20 feet away compared to a person with normal vision.\n\nFor example, 10/10 vision means that you can see an object clearly from 10 feet away.\n\nOptometrists use your visual acuity to help determine your eyeglasses prescription.'),
(15, 'IP Telephony Services & Solutions', 'With our IP telephony service your office will be where you will be, no more worry about fixed lines. With our seamless and secure service, you would never have to think again about your location. With low cost, simple connectivity and high-quality connection you won’t even realize how high-tech the solution is!\n\nUse our virtual PABX services to cut down on costs in inter-office communication.\n\nExpecting a sudden spike in call volume, or just adding more lines to accommodate your growing work force, using an IP Phone number means you can increase your concurrent call channels at any time without any infrastructure change required.'),
(16, 'Productive Office', 'From our affordable integrated content collaboration platform solutions (Productive Office) you get everything you need to run your business. We have a variety of solutions from email to office productivity suites (including documents, spreadsheets and online storage) as well as employee tracking and project management software; all in one solution without the headache of maintaining servers, software, and added IT costs.'),
(17, 'hi there ', 'this is testing '),
(20, 'this is lasting ', 'hi u are rock'),
(21, 'Productive Office', 'From our affordable integrated content collaboration platform solutions (Productive Office) you get everything you need to run your business. We have a variety of solutions from email to office productivity suites (including documents, spreadsheets and online storage) as well as employee tracking and project management software; all in one solution without the headache of maintaining servers, software, and added IT costs.'),
(22, 'Productive Office', 'From our affordable integrated content collaboration platform solutions (Productive Office) you get everything you need to run your business. We have a variety of solutions from email to office productivity suites (including documents, spreadsheets and online storage) as well as employee tracking and project management software; all in one solution without the headache of maintaining servers, software, and added IT costs.'),
(23, 'Managed Cloud Services', 'At TMC, we provide Cloud Managed Services with our skilled resources that augment your inhouse functionalities and IT infrastructure to be managed in collaboration with a third-party managed service provider (MSP) via cloud platforms. We help architect, build and manage elaborate solutions that simplify your processes, workflows, and cut down costs significantly. Our Managed Cloud Services helps you focus on business strategy and shifts the focus from daily administrative tasks.'),
(25, 'Welcome to Hidayah Smart Solutions', 'Your Partner in Software Innovation and Market-leading Solutions'),
(26, 'WHY HSS', 'We Develop Great Solutions for you through evaluating strategies with effectiveness & efficiency'),
(27, 'MOLDABLE WORKING MODEL', 'By keeping in mind the reality that a project will change, expand and grow; we use adjustable working models, expecting potential scalability.'),
(28, 'OUR SOLUTIONS & SERVICES', 'Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.'),
(29, NULL, NULL),
(30, 'BARGAIN-BASEMENT', 'A premium service should have a premium price tag; this is a reality. But we always try to offer better, giving more safety margin for our partners.'),
(31, 'EXCEED EXPECTATIONS', 'We believe outstanding success is lot simpler than usually perceived – just provide the services which exceed expectations.');

-- --------------------------------------------------------

--
-- Table structure for table `components_content_elements`
--

CREATE TABLE `components_content_elements` (
  `id` int UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_content_elements`
--

INSERT INTO `components_content_elements` (`id`, `heading`) VALUES
(1, 'Visual acuity is dependent on a combination of optical and neural elements, including:'),
(2, 'Some Mentionable Features'),
(3, ' IP Telephony Packages'),
(4, NULL),
(5, 'Some Mentionable Features'),
(6, 'Office Productivity Suite'),
(7, 'Some Mentionable Features'),
(8, 'Some Mentionable Features'),
(9, 'Cloud Optimization');

-- --------------------------------------------------------

--
-- Table structure for table `components_content_elements_components`
--

CREATE TABLE `components_content_elements_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_content_elements_components`
--

INSERT INTO `components_content_elements_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'content.list', 'list', 1),
(2, 1, 2, 'content.list', 'list', 2),
(3, 1, 3, 'content.list', 'list', 3),
(7, 2, 4, 'content.list', 'list', 1),
(8, 2, 5, 'content.list', 'list', 2),
(9, 2, 6, 'content.list', 'list', 3),
(10, 2, 7, 'content.list', 'list', 4),
(11, 2, 8, 'content.list', 'list', 5),
(17, 3, 9, 'content.list', 'list', 1),
(18, 3, 10, 'content.list', 'list', 2),
(19, 3, 11, 'content.list', 'list', 3),
(20, 4, 12, 'content.list', 'list', 1),
(21, 4, 13, 'content.list', 'list', 2),
(22, 4, 14, 'content.list', 'list', 3),
(26, 5, 15, 'content.list', 'list', 1),
(27, 5, 16, 'content.list', 'list', 2),
(28, 5, 17, 'content.list', 'list', 3),
(32, 6, 18, 'content.list', 'list', 1),
(33, 6, 19, 'content.list', 'list', 2),
(69, 7, 20, 'content.list', 'list', 1),
(70, 7, 21, 'content.list', 'list', 2),
(71, 7, 22, 'content.list', 'list', 3),
(72, 8, 23, 'content.list', 'list', 1),
(73, 8, 24, 'content.list', 'list', 2),
(74, 8, 25, 'content.list', 'list', 3),
(99, 9, 26, 'content.list', 'list', 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_content_heroes`
--

CREATE TABLE `components_content_heroes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext,
  `button` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_content_heroes`
--

INSERT INTO `components_content_heroes` (`id`, `title`, `subtitle`, `button`) VALUES
(1, 'Design the Thinking', 'Transworld Mercantile Corporation is one of the few IT system integration, professional service and solution development companies in Bangladesh that works with Small-scale solutions to Enterprise systems and companies.', 'Find out more'),
(2, 'LET’S WORK TOGETHER.', 'Improving people’s lives through innovation\nTo drive a new era of development, growth, and productivity.', 'Start a Project'),
(3, 'hi', 'hi there ', 'this is me '),
(4, 'hi', 'sdsad sadsa', 'sds ');

-- --------------------------------------------------------

--
-- Table structure for table `components_content_imgs`
--

CREATE TABLE `components_content_imgs` (
  `id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_content_lists`
--

CREATE TABLE `components_content_lists` (
  `id` int UNSIGNED NOT NULL,
  `item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_content_lists`
--

INSERT INTO `components_content_lists` (`id`, `item`) VALUES
(1, 'The health and functionality of the retina'),
(2, 'How sharply the retina forms images'),
(3, 'How well your brain can interpret sensory inputs'),
(4, 'Voice mail, call conference, call forwarding, Greeting'),
(5, 'Call waiting, call block, call redial, call transfer'),
(6, 'Simultaneous multiple incoming and outgoing'),
(7, 'IP PBX Solutions'),
(8, '24/7 Support'),
(9, 'Regular User'),
(10, '	Advanced User'),
(11, '	Enterpreuner'),
(12, 'Number Registration: BDT 200'),
(13, 'Number Registration: Free'),
(14, 'Number Registration: Free'),
(15, 'Outlook, webmail & mobile access'),
(16, '9% Uptime Guarantee'),
(17, 'Huge mailbox storage starting from 25 GB'),
(18, 'Cloud File Storage'),
(19, 'Employee tracking'),
(20, 'Outlook, webmail & mobile access'),
(21, '9% Uptime Guarantee'),
(22, 'Huge mailbox storage starting from 25 GB'),
(23, 'Cloud File Storage'),
(24, 'Employee tracking'),
(25, 'Outlook, webmail & mobile access'),
(26, 'Optimize cloud resources usage');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_card2s`
--

CREATE TABLE `components_home_card2s` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_card2s`
--

INSERT INTO `components_home_card2s` (`id`, `title`, `subtitle`) VALUES
(1, 'IPTV Solutions', 'TV over Internet Protocol Head-End Solution that manages content throughout its entire lifecycle, from preparation in a variety of formats to encryption, distribution and publishing.'),
(2, 'CRM', 'It\'s not just a software; it is a business strategy that stresses good ongoing relationships with customers to help you grow your business with a unified face to the customer through automation.'),
(3, 'DAMS', 'Data Acquisition and Measurement Solution helps you to obtain and utilize aggregated quality data to gain actionable intelligence and insight for process optimization.'),
(4, 'BPM', 'With our Business Process Management Software you can reduce costs, limit errors, maintain compliance, maximize efficiency, and improve employee satisfaction by providing process definition, business process automation and other types of services.'),
(5, 'Tech Teams as a Service', 'We build full-stack remote engineering teams for your growing tech businesses by covering recruiting, HR and administration, tech roll out planning & deployment consultancy, while you\'ll keep full control over project management.');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_heroes`
--

CREATE TABLE `components_home_heroes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_heroes`
--

INSERT INTO `components_home_heroes` (`id`, `title`, `subtitle`) VALUES
(1, 'WHY HSS', 'We Develop Great Solutions for you through evaluating strategies with effectiveness & efficiency');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_heroes_components`
--

CREATE TABLE `components_home_heroes_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_heroes_components`
--

INSERT INTO `components_home_heroes_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'home.hero-card', 'HeroCard', 1),
(2, 1, 2, 'home.hero-card', 'HeroCard', 2),
(3, 1, 3, 'home.hero-card', 'HeroCard', 3);

-- --------------------------------------------------------

--
-- Table structure for table `components_home_hero_cards`
--

CREATE TABLE `components_home_hero_cards` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_hero_cards`
--

INSERT INTO `components_home_hero_cards` (`id`, `title`, `subtitle`) VALUES
(1, 'MOLDABLE WORKING MODEL', 'By keeping in mind the reality that a project will change, expand and grow; we use adjustable working models, expecting potential scalability.'),
(2, 'BARGAIN-BASEMENT', 'A premium service should have a premium price tag; this is a reality. But we always try to offer better, giving more safety margin for our partners.'),
(3, 'EXCEED EXPECTATIONS', 'We believe outstanding success is lot simpler than usually perceived – just provide the services which exceed expectations.');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_homes`
--

CREATE TABLE `components_home_homes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_homes`
--

INSERT INTO `components_home_homes` (`id`, `title`, `subtitle`) VALUES
(1, 'Welcome to Hidayah Smart Solutions', 'Your Partner in Software Innovation and Market-leading Solutions');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_logo_texts`
--

CREATE TABLE `components_home_logo_texts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_logo_texts`
--

INSERT INTO `components_home_logo_texts` (`id`, `name`) VALUES
(1, 'Firebase'),
(2, 'React'),
(3, 'Kotlin'),
(4, 'Python'),
(5, 'Docker'),
(6, 'PostgreSQL'),
(7, 'PHP'),
(8, 'Java'),
(9, 'Redis');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_pools`
--

CREATE TABLE `components_home_pools` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_pools`
--

INSERT INTO `components_home_pools` (`id`, `title`, `subtitle`) VALUES
(1, 'TECHNOLOGY POOL', 'Though we all adore a \'All Rounder\', in HSS we love the one who possesses a plethora of skills');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_pools_components`
--

CREATE TABLE `components_home_pools_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_pools_components`
--

INSERT INTO `components_home_pools_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'home.logo-text', 'logoText', 1),
(2, 1, 2, 'home.logo-text', 'logoText', 2),
(3, 1, 3, 'home.logo-text', 'logoText', 3),
(4, 1, 4, 'home.logo-text', 'logoText', 4),
(5, 1, 5, 'home.logo-text', 'logoText', 5),
(6, 1, 6, 'home.logo-text', 'logoText', 6),
(7, 1, 7, 'home.logo-text', 'logoText', 7),
(8, 1, 8, 'home.logo-text', 'logoText', 8),
(9, 1, 9, 'home.logo-text', 'logoText', 9);

-- --------------------------------------------------------

--
-- Table structure for table `components_home_services`
--

CREATE TABLE `components_home_services` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_services`
--

INSERT INTO `components_home_services` (`id`, `title`, `subtitle`) VALUES
(1, 'OUR SOLUTIONS & SERVICES', 'Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.');

-- --------------------------------------------------------

--
-- Table structure for table `components_home_services_components`
--

CREATE TABLE `components_home_services_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_home_services_components`
--

INSERT INTO `components_home_services_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'home.card2', 'card2', 1),
(2, 1, 2, 'home.card2', 'card2', 2),
(3, 1, 3, 'home.card2', 'card2', 3),
(4, 1, 4, 'home.card2', 'card2', 4),
(5, 1, 5, 'home.card2', 'card2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `components_product_descriptions`
--

CREATE TABLE `components_product_descriptions` (
  `id` int UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `subheading` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_product_descriptions`
--

INSERT INTO `components_product_descriptions` (`id`, `heading`, `subheading`) VALUES
(1, 'What Is a Queue Management System', 'A queue management system is a technological solution that streamlines the customers’ queuing experience and controls the flow of people in your service facility or business. It ensures that you serve the customers in the right order and efficiently; ultimately enhancing their experience. Typically a queuing system manages the waiting experience of your customers throughout all the touchpoints with your business.'),
(2, 'Deli ET570 Fingerprint & Digital Safe Box / Locker / Vault', 'The Deli ET570 Fingerprint & Digital Safe Box is an innovative security solution designed to protect your belongings with cutting-edge technology and durable construction. This ET570 safe offers two unlock modes - password +handle and key + handle - for flexible access choices to meet your tastes and needs. The user-friendly control panel, which includes film buttons and indication cues, offers easy operation and smooth navigation, making it simple to store your possessions safely. The Deli ET570 has vast dimensions of H30 x W38 x D29 inches and a significant thickness of 1.5/4 millimeters, providing enough storage capacity for a wide range of objects, including vital papers, cash, jewels, and electronics. This safe, made of reinforced solid steel, is designed to defy tampering and forced entry attempts, assuring unrivaled durability and dependability. Its sleek black finish not only improves its visual appeal, but also helps it to blend in with any home or business setting. Whether you choose the ease of fingerprint entry or the dependability of a digital password, the Deli ET570 ensures top-notch security for your stuff, giving you peace of mind and trust in your assets\' safety.'),
(3, 'Benefits of Qbot', '•	Simple, user-friendly, versatile, comprehensive and technologically advanced.  \n•	Works independently through browser and does not interfere with any user software that may be installed. \n•	Allows customers to use a single token across multiple services. \n•	Operators can forward tokens between different services. \n•	Provision to call tokens from other services so as to distribute the load.  \n•	Voice announcement of tokens in any language. \n•	Facility to show promotional message on Token-Ticket.\n'),
(5, 'What Is a Queue Management System', 'fdfgfg'),
(6, 'Lucent Chart Digital Acuity System', 'Visual acuity (VA) is a measure of the ability of the eye to distinguish shapes and the details of objects at a given distance. It is important to assess VA in a consistent way in order to detect any changes in vision. One eye is tested at a time.'),
(7, 'Digital Signage Solutions', 'Digital Signage (Qad) is a product of Transworld Mercantile Corporation that uses digital displays to showcase multimedia content in public spaces. It is commonly used for advertising and information display purposes and can be managed remotely through a centralized content management system. This solution is developed to help businesses enhance their brand image and improve customer engagement.'),
(8, 'Kiosk Display Solution', 'Digital Floor Standing Kiosk is an ideal for internal communication and public information. It is equally suitable for Hospitals, public places like lobby, reception area, train stations and airports, factories or institutions.\n\nIt is also a great advertising medium. Digitize and process information from a wide variety of sources for audio and / or visual playback, to reach your defined target group. These KIOSKs are controllable in both options online or separate flash device.'),
(9, 'Buy Deli ET570 Fingerprint & Digital Safe Box / Locker / Vault from HSS', 'In Bangladesh, you can get original Deli ET570 Fingerprint & Digital Safe Box / Locker / Vault From Star Tech. We have a large collection of the latest Digital Locker & Vault to purchase. Order Online Or Visit your Nearest Star Tech Shop to get yours at the lowest price. The Deli ET570 Fingerprint & Digital Safe Box / Locker / Vault comes with 1 year warranty.'),
(10, 'Dell PowerEdge T150 Intel Xeon E-2314 Tower Server', 'The Dell PowerEdge T150 is a robust and reliable tower server engineered to meet the demands of small to medium-sized businesses and remote office environments. Featuring cutting-edge technology and a compact tower form factor, this server is designed to deliver exceptional performance, data integrity, and scalability, making it an ideal choice for various computing tasks. The Dell PowerEdge T150 is powered by an Intel Xeon E-2314 processor clocked at 2.8GHz, and equipped with 8MB of cache memory. This quad-core, quad-thread CPU operates at a power-efficient 65W and boasts a rapid 3200 MT/s (mega-transfers per second) bus speed. The server is housed in a 3.5\" chassis that can accommodate up to 4 hard drives, supporting both SAS (Serial Attached SCSI) and SATA (Serial ATA) drive types. This flexible storage configuration allows for ample data storage and easy expansion. It is Equipped with 8GB of UDIMM (Unbuffered Dual In-Line Memory Module) RAM running at 3200 MT/s, The server offers reliable and error-correcting ECC (Error-Correcting Code) memory. ECC memory ensures data integrity by detecting and correcting single-bit memory errors, a critical feature for mission-critical applications. The server includes a PERC H355 Adapter FH RAID controller, offering RAID levels 0, 1, and 10. RAID (Redundant Array of Independent Disks) provides data redundancy and performance improvement, making it an essential feature for data protection and high availability.'),
(11, 'What Is a Qpod Management System', 'Digital Signage (Qpod) is a product of Transworld Mercantile Corporation that uses digital displays to showcase multimedia content in public spaces. It is commonly used for advertising and information display purposes and can be managed remotely through a centralized content management system. This solution is developed to help businesses enhance their brand image and improve customer engagement.'),
(12, 'Kiosk Display Solution', 'dammm'),
(13, 'Deli ET570 Fingerprint & Digital Safe Box / Locker / Vault', 'Databyte is one of the leading manufacturers and suppliers of queue management systems in India and possesses over 15 years\' experience of helping organizations improve their customer flow and manage queues.'),
(14, 'Kiosk Display Solution', 'Q-Bot uses robots to spray insulation under the floor with minimal disruption to your life. The insulation immediately reduces the heat lost through the floor and draughts, ensuring a happy and healthy home.'),
(15, 'Kiosk Display Solution', 'Q-Bot uses robots to spray insulation under the floor with minimal disruption to your life. The insulation immediately reduces the heat lost through the floor and draughts, ensuring a happy and healthy home.');

-- --------------------------------------------------------

--
-- Table structure for table `components_product_key_features`
--

CREATE TABLE `components_product_key_features` (
  `id` int UNSIGNED NOT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_product_key_features`
--

INSERT INTO `components_product_key_features` (`id`, `resolution`, `display`, `port`, `brand`, `model`) VALUES
(1, ' HD (1280x1024)', 'RGB LED Pixel Matrix counter Display', 'VGA, HDMI', 'Deli', 'qbot220'),
(2, ' HD (1280x1024)', '18.5” High-resolution wide monitor', 'VGA, HDMI', 'Cote', '1,123'),
(4, ' HD (1280x1024)', '18.5” High-resolution wide monitor', 'VGA, HDMI', 'powerpack', '1,123'),
(5, ' HD (1280x1024)', '18.5” High-resolution wide monitor', 'VGA, HDMI', 'Deli', 'VisualAquity50CH'),
(6, ' HD (1280x1024)', '18.5” High-resolution wide monitor', 'VGA, HDMI', 'powerpack', 'QADL50CH'),
(7, ' HD (1280x1024)', 'RGB LED Pixel Matrix counter Display', 'VGA, HDMI', 'powerpack', 'kiosk220'),
(8, '565px', 'HD', ' 6 ports', 'Deli', 'src234'),
(9, ' HD (1280x1024)', '18.5” High-resolution wide monitor', 'VGA, HDMI', 'powerpack', 'Q-pod'),
(10, ' HD (1280x1024)', 'RGB LED Pixel Matrix counter Display', ' 6 ports', 'powerpack', 'DEC232'),
(11, ' HD (1280x1024)', 'RGB LED Pixel Matrix counter Display', 'VGA, HDMI', 'powerpack', 'kiosk220'),
(12, ' HD (1280x1024)', 'RGB LED Pixel Matrix counter Display', 'VGA, HDMI', 'powerpack', 'Q bot 1232'),
(13, ' HD (1280x1024)', 'RGB LED Pixel Matrix counter Display', ' 6 ports', 'powerpack', 'kiosk220');

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_meta_socials`
--

CREATE TABLE `components_shared_meta_socials` (
  `id` int UNSIGNED NOT NULL,
  `social_network` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos`
--

CREATE TABLE `components_shared_seos` (
  `id` int UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `keywords` longtext,
  `meta_robots` varchar(255) DEFAULT NULL,
  `structured_data` json DEFAULT NULL,
  `meta_viewport` varchar(255) DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_shared_seos`
--

INSERT INTO `components_shared_seos` (`id`, `meta_title`, `meta_description`, `keywords`, `meta_robots`, `structured_data`, `meta_viewport`, `canonical_url`) VALUES
(1, 'Digital Signage Solutions', '. This solution is developed to help businesses enhance their brand image and improve customer engagement', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos_components`
--

CREATE TABLE `components_shared_seos_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` longtext,
  `message` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `name`, `email`, `subject`, `message`) VALUES
(19, NULL, '2024-03-23 19:10:19.231000', '2024-03-23 19:10:19.231000', '2024-03-23 19:10:19.212000', NULL, NULL, 'abdullah', 'abdullah@gmail.com', 'i want to buy kios', 'hi there are u '),
(20, NULL, '2024-03-29 11:16:41.733000', '2024-03-29 11:16:41.733000', '2024-03-29 11:16:41.729000', NULL, NULL, 'ghhhh', 'hh@gmail.com', 'fgfd', 'fdgf'),
(21, NULL, '2024-04-27 15:00:19.155000', '2024-04-27 15:00:19.155000', '2024-04-27 15:00:19.147000', NULL, NULL, 'as', 'admin123@gmail.com', 'sdfsdaf', 'rtertreter'),
(22, NULL, '2024-05-10 11:30:53.721000', '2024-05-10 11:30:53.721000', '2024-05-10 11:30:53.715000', NULL, NULL, 'sam', 'sam@gmail.com', 'dsf sdfdsf', 'dsfd ssdfsd fds'),
(23, NULL, '2024-05-10 11:39:36.583000', '2024-05-10 11:39:36.583000', '2024-05-10 11:39:36.581000', NULL, NULL, 'fdgfg', 'gg@gmail.com', 'sdfsdaf', 'gfgf'),
(24, NULL, '2024-05-10 11:42:47.671000', '2024-05-10 11:42:47.671000', '2024-05-10 11:42:47.669000', NULL, NULL, 'fgf', 'admin123@gmail.com', 'dfd', 'dfd'),
(25, NULL, '2024-05-10 11:44:31.564000', '2024-05-10 11:44:31.564000', '2024-05-10 11:44:31.563000', NULL, NULL, 'img2', 'admin123@gmail.com', 'dfdf', 'dfd'),
(26, NULL, '2024-05-10 11:45:23.189000', '2024-05-10 11:45:23.189000', '2024-05-10 11:45:23.187000', NULL, NULL, 'fdf', 'fdg@gmail.com', 'dfdg', 'dfgf'),
(27, NULL, '2024-05-10 11:46:04.289000', '2024-05-10 11:46:04.289000', '2024-05-10 11:46:04.287000', NULL, NULL, 'fgfg', 'admin123@gmail.com', 'fg', 'gfg'),
(28, NULL, '2024-05-10 11:47:20.375000', '2024-05-10 11:47:20.375000', '2024-05-10 11:47:20.369000', NULL, NULL, 'jhkk', 'jadu@gmail.com', 'sdfsdaf', 'hjh'),
(29, NULL, '2024-05-10 11:47:42.417000', '2024-05-10 11:47:42.417000', '2024-05-10 11:47:42.416000', NULL, NULL, 'erreytt', 'admin123@gmail.com', 'tytr', 'tytr'),
(30, NULL, '2024-05-10 11:48:58.108000', '2024-05-10 11:48:58.108000', '2024-05-10 11:48:58.107000', NULL, NULL, 'fgfg', 'fgf@gmail.com', 'fgf', 'fg'),
(31, NULL, '2024-05-10 11:49:20.793000', '2024-05-10 11:49:20.793000', '2024-05-10 11:49:20.787000', NULL, NULL, 'hyy', 'hyy@gmail.com', 'tgrhtr', 'gfhgf'),
(32, NULL, '2024-05-21 08:26:59.340000', '2024-05-21 08:26:59.340000', '2024-05-21 08:26:59.316000', NULL, NULL, 'jom', 'jom@gmail.com', 'write ur future', 'jgjhgjh bvjhvhjbjhb'),
(33, NULL, '2024-05-21 08:27:02.224000', '2024-05-21 08:27:02.224000', '2024-05-21 08:27:02.218000', NULL, NULL, 'jom', 'jom@gmail.com', 'write ur future', 'jgjhgjh bvjhvhjbjhb');

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2024-02-26 22:31:44.273000', '2024-03-09 18:52:03.294000', '2024-02-26 22:31:46.268000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos_components`
--

CREATE TABLE `contact_infos_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_infos_components`
--

INSERT INTO `contact_infos_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 2, 'contact.contact', 'contact', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destination_pages`
--

CREATE TABLE `destination_pages` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `destination_pages`
--

INSERT INTO `destination_pages` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `slug`) VALUES
(1, '2024-03-23 13:08:02.846000', '2024-03-25 15:21:34.373000', '2024-03-23 14:02:49.039000', 1, 1, 'destination-page');

-- --------------------------------------------------------

--
-- Table structure for table `destination_pages_components`
--

CREATE TABLE `destination_pages_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `destination_pages_components`
--

INSERT INTO `destination_pages_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'home.home', 'Home', NULL),
(2, 1, 1, 'home.hero', 'Hero', NULL),
(3, 1, 13, 'content.blog', 'Blog', NULL),
(4, 1, 1, 'home.services', 'services', NULL),
(9, 1, 1, 'home.pool', 'pool', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages`
--

CREATE TABLE `dynamic_pages` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dynamic_pages`
--

INSERT INTO `dynamic_pages` (`id`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `title`) VALUES
(1, 'businessanalysisandconsultancy', '2024-03-08 09:24:49.570000', '2024-03-08 11:24:33.556000', '2024-03-08 09:24:50.840000', 1, 1, 'Business Analysis & Consultancy'),
(2, 'ManageITSupportService', '2024-03-08 09:27:30.161000', '2024-03-10 17:37:44.305000', '2024-03-08 09:27:31.490000', 1, 1, 'Managed IT Support Service Desk'),
(3, 'managecloudservice', '2024-03-08 11:30:49.491000', '2024-03-10 17:39:50.613000', '2024-03-08 16:37:21.970000', 1, 1, 'Managed Cloud Services');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages_components`
--

CREATE TABLE `dynamic_pages_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dynamic_pages_components`
--

INSERT INTO `dynamic_pages_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 21, 'content.content', 'hero', 2),
(2, 1, 7, 'content.element', 'features', 1),
(3, 1, 9, 'content.blog', 'productDescription', 1),
(4, 2, 22, 'content.content', 'hero', 2),
(5, 2, 8, 'content.element', 'features', 1),
(6, 2, 10, 'content.blog', 'productDescription', 1),
(31, 3, 23, 'content.content', 'hero', 2),
(32, 3, 9, 'content.element', 'features', 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'ic_launcher.png', NULL, NULL, 1080, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_ic_launcher_ca9a3e1695.png\", \"hash\": \"large_ic_launcher_ca9a3e1695\", \"mime\": \"image/png\", \"name\": \"large_ic_launcher.png\", \"path\": null, \"size\": 169.26, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_ic_launcher_ca9a3e1695.png\", \"hash\": \"small_ic_launcher_ca9a3e1695\", \"mime\": \"image/png\", \"name\": \"small_ic_launcher.png\", \"path\": null, \"size\": 48.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_ic_launcher_ca9a3e1695.png\", \"hash\": \"medium_ic_launcher_ca9a3e1695\", \"mime\": \"image/png\", \"name\": \"medium_ic_launcher.png\", \"path\": null, \"size\": 103.04, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_ic_launcher_ca9a3e1695.png\", \"hash\": \"thumbnail_ic_launcher_ca9a3e1695\", \"mime\": \"image/png\", \"name\": \"thumbnail_ic_launcher.png\", \"path\": null, \"size\": 10.59, \"width\": 156, \"height\": 156}}', 'ic_launcher_ca9a3e1695', '.png', 'image/png', 24.72, '/uploads/ic_launcher_ca9a3e1695.png', NULL, 'local', NULL, '/', '2024-02-24 13:37:50.763000', '2024-02-24 13:37:50.763000', 1, 1),
(2, 'web.whatsapp (2).png', NULL, NULL, 626, 625, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_web_whatsapp_2_476893f5a1.png\", \"hash\": \"small_web_whatsapp_2_476893f5a1\", \"mime\": \"image/png\", \"name\": \"small_web.whatsapp (2).png\", \"path\": null, \"size\": 46.24, \"width\": 500, \"height\": 499}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_web_whatsapp_2_476893f5a1.png\", \"hash\": \"thumbnail_web_whatsapp_2_476893f5a1\", \"mime\": \"image/png\", \"name\": \"thumbnail_web.whatsapp (2).png\", \"path\": null, \"size\": 7.68, \"width\": 156, \"height\": 156}}', 'web_whatsapp_2_476893f5a1', '.png', 'image/png', 12.67, '/uploads/web_whatsapp_2_476893f5a1.png', NULL, 'local', NULL, '/', '2024-02-24 13:38:01.335000', '2024-02-24 13:38:01.335000', 1, 1),
(3, 'fiver_map.PNG', NULL, NULL, 817, 381, '{\"small\": {\"ext\": \".PNG\", \"url\": \"/uploads/small_fiver_map_49b34a279a.PNG\", \"hash\": \"small_fiver_map_49b34a279a\", \"mime\": \"image/png\", \"name\": \"small_fiver_map.PNG\", \"path\": null, \"size\": 250.88, \"width\": 500, \"height\": 233}, \"medium\": {\"ext\": \".PNG\", \"url\": \"/uploads/medium_fiver_map_49b34a279a.PNG\", \"hash\": \"medium_fiver_map_49b34a279a\", \"mime\": \"image/png\", \"name\": \"medium_fiver_map.PNG\", \"path\": null, \"size\": 553.69, \"width\": 750, \"height\": 350}, \"thumbnail\": {\"ext\": \".PNG\", \"url\": \"/uploads/thumbnail_fiver_map_49b34a279a.PNG\", \"hash\": \"thumbnail_fiver_map_49b34a279a\", \"mime\": \"image/png\", \"name\": \"thumbnail_fiver_map.PNG\", \"path\": null, \"size\": 62.92, \"width\": 245, \"height\": 114}}', 'fiver_map_49b34a279a', '.PNG', 'image/png', 214.56, '/uploads/fiver_map_49b34a279a.PNG', NULL, 'local', NULL, '/', '2024-02-24 13:43:37.531000', '2024-02-24 13:43:37.531000', 1, 1),
(5, 'Q_boot.PNG', NULL, NULL, 500, 523, '{\"small\": {\"ext\": \".PNG\", \"url\": \"/uploads/small_Q_boot_86fec1aede.PNG\", \"hash\": \"small_Q_boot_86fec1aede\", \"mime\": \"image/png\", \"name\": \"small_Q_boot.PNG\", \"path\": null, \"size\": 304.83, \"width\": 478, \"height\": 500}, \"thumbnail\": {\"ext\": \".PNG\", \"url\": \"/uploads/thumbnail_Q_boot_86fec1aede.PNG\", \"hash\": \"thumbnail_Q_boot_86fec1aede\", \"mime\": \"image/png\", \"name\": \"thumbnail_Q_boot.PNG\", \"path\": null, \"size\": 43.37, \"width\": 149, \"height\": 156}}', 'Q_boot_86fec1aede', '.PNG', 'image/png', 86.94, '/uploads/Q_boot_86fec1aede.PNG', NULL, 'local', NULL, '/', '2024-02-24 13:44:14.689000', '2024-02-24 13:44:14.689000', 1, 1),
(6, 'Lumipex.jpg', NULL, NULL, 130, 130, NULL, 'Lumipex_796f9498da', '.jpg', 'image/jpeg', 1.97, '/uploads/Lumipex_796f9498da.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:53.998000', '2024-02-24 14:45:53.998000', 1, 1),
(7, 'PETROCHEM-GROUP.jpg', NULL, NULL, 130, 130, NULL, 'PETROCHEM_GROUP_bec9a51bfa', '.jpg', 'image/jpeg', 3.15, '/uploads/PETROCHEM_GROUP_bec9a51bfa.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.000000', '2024-02-24 14:45:54.000000', 1, 1),
(8, 'Nielsen.jpg', NULL, NULL, 130, 130, NULL, 'Nielsen_6cf75b203e', '.jpg', 'image/jpeg', 2.18, '/uploads/Nielsen_6cf75b203e.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.000000', '2024-02-24 14:45:54.000000', 1, 1),
(9, 'Kazi-Farms-Limited.jpg', NULL, NULL, 130, 130, NULL, 'Kazi_Farms_Limited_22afbe31a5', '.jpg', 'image/jpeg', 3.27, '/uploads/Kazi_Farms_Limited_22afbe31a5.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:53.999000', '2024-02-24 14:45:53.999000', 1, 1),
(10, 'Bongo-BD.jpg', NULL, NULL, 130, 130, NULL, 'Bongo_BD_241091be29', '.jpg', 'image/jpeg', 2.23, '/uploads/Bongo_BD_241091be29.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.001000', '2024-02-24 14:45:54.001000', 1, 1),
(11, 'Robi-Axiata-Limited.png', NULL, NULL, 130, 130, NULL, 'Robi_Axiata_Limited_4b1a28483c', '.png', 'image/png', 2.39, '/uploads/Robi_Axiata_Limited_4b1a28483c.png', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.007000', '2024-02-24 14:45:54.007000', 1, 1),
(12, 'KN-Harbour-Consortiu.jpg', NULL, NULL, 130, 130, NULL, 'KN_Harbour_Consortiu_7a59db9616', '.jpg', 'image/jpeg', 2.38, '/uploads/KN_Harbour_Consortiu_7a59db9616.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.208000', '2024-02-24 14:45:54.208000', 1, 1),
(13, 'ISPAHANI.jpg', NULL, NULL, 130, 130, NULL, 'ISPAHANI_0009126416', '.jpg', 'image/jpeg', 2.87, '/uploads/ISPAHANI_0009126416.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.216000', '2024-02-24 14:45:54.216000', 1, 1),
(14, 'GRAPHICS-TEXTILES-LTD.jpg', NULL, NULL, 130, 130, NULL, 'GRAPHICS_TEXTILES_LTD_db744c5074', '.jpg', 'image/jpeg', 2.14, '/uploads/GRAPHICS_TEXTILES_LTD_db744c5074.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.219000', '2024-02-24 14:45:54.219000', 1, 1),
(15, 'INCEPTA-PHARMACEUTICALS.png', NULL, NULL, 130, 130, NULL, 'INCEPTA_PHARMACEUTICALS_11938f49d0', '.png', 'image/png', 2.45, '/uploads/INCEPTA_PHARMACEUTICALS_11938f49d0.png', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.228000', '2024-02-24 14:45:54.228000', 1, 1),
(16, 'HOSAF-GROUP.png', NULL, NULL, 130, 130, NULL, 'HOSAF_GROUP_bfc88f9462', '.png', 'image/png', 5.46, '/uploads/HOSAF_GROUP_bfc88f9462.png', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.236000', '2024-02-24 14:45:54.236000', 1, 1),
(17, 'Icon-Group.png', NULL, NULL, 130, 130, NULL, 'Icon_Group_e7181b6ec4', '.png', 'image/png', 7.43, '/uploads/Icon_Group_e7181b6ec4.png', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.293000', '2024-02-24 14:45:54.293000', 1, 1),
(18, 'Dynamic-Group.jpg', NULL, NULL, 130, 130, NULL, 'Dynamic_Group_5454154e70', '.jpg', 'image/jpeg', 2.10, '/uploads/Dynamic_Group_5454154e70.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.328000', '2024-02-24 14:45:54.328000', 1, 1),
(19, 'IDEAL-TEXTILE-LTD.jpg', NULL, NULL, 130, 130, NULL, 'IDEAL_TEXTILE_LTD_eb3c664f20', '.jpg', 'image/jpeg', 5.55, '/uploads/IDEAL_TEXTILE_LTD_eb3c664f20.jpg', NULL, 'local', NULL, '/', '2024-02-24 14:45:54.338000', '2024-02-24 14:45:54.338000', 1, 1),
(21, 'thumbnail_4_e1430c6355.png', NULL, NULL, 213, 156, NULL, 'thumbnail_4_e1430c6355_8aa724a52b', '.png', 'image/png', 7.97, '/uploads/thumbnail_4_e1430c6355_8aa724a52b.png', NULL, 'local', NULL, '/', '2024-02-24 15:39:14.204000', '2024-02-24 15:39:14.204000', 1, 1),
(22, 'thumbnail_4_e1430c6355.png', NULL, NULL, 213, 156, NULL, 'thumbnail_4_e1430c6355_d0d5b9161f', '.png', 'image/png', 7.97, '/uploads/thumbnail_4_e1430c6355_d0d5b9161f.png', NULL, 'local', NULL, '/', '2024-02-24 15:40:09.967000', '2024-02-24 15:40:09.967000', 1, 1),
(24, 'tmc.png', NULL, NULL, 640, 612, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_contact_us_7a56611bd6.png\", \"hash\": \"small_contact_us_7a56611bd6\", \"mime\": \"image/png\", \"name\": \"small_contact-us.png\", \"path\": null, \"size\": 431.99, \"width\": 500, \"height\": 478}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_contact_us_7a56611bd6.png\", \"hash\": \"thumbnail_contact_us_7a56611bd6\", \"mime\": \"image/png\", \"name\": \"thumbnail_contact-us.png\", \"path\": null, \"size\": 56.52, \"width\": 163, \"height\": 156}}', 'contact_us_7a56611bd6', '.png', 'image/png', 156.88, '/uploads/contact_us_7a56611bd6.png', NULL, 'local', NULL, '/', '2024-02-26 19:42:57.001000', '2024-02-26 22:31:29.694000', 1, 1),
(25, 'nurse-calling.png', NULL, NULL, 2126, 1472, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_nurse_calling_34093c3905.png\", \"hash\": \"large_nurse_calling_34093c3905\", \"mime\": \"image/png\", \"name\": \"large_nurse-calling.png\", \"path\": null, \"size\": 578.57, \"width\": 1000, \"height\": 692}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_nurse_calling_34093c3905.png\", \"hash\": \"small_nurse_calling_34093c3905\", \"mime\": \"image/png\", \"name\": \"small_nurse-calling.png\", \"path\": null, \"size\": 169.32, \"width\": 500, \"height\": 346}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_nurse_calling_34093c3905.png\", \"hash\": \"medium_nurse_calling_34093c3905\", \"mime\": \"image/png\", \"name\": \"medium_nurse-calling.png\", \"path\": null, \"size\": 348.74, \"width\": 750, \"height\": 519}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nurse_calling_34093c3905.png\", \"hash\": \"thumbnail_nurse_calling_34093c3905\", \"mime\": \"image/png\", \"name\": \"thumbnail_nurse-calling.png\", \"path\": null, \"size\": 43.79, \"width\": 225, \"height\": 156}}', 'nurse_calling_34093c3905', '.png', 'image/png', 398.14, '/uploads/nurse_calling_34093c3905.png', NULL, 'local', NULL, '/', '2024-02-27 00:35:06.662000', '2024-02-27 00:35:06.662000', 1, 1),
(26, 'doctor_serial.webp', NULL, NULL, 900, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_doctor_serial_cf53f2a279.webp\", \"hash\": \"small_doctor_serial_cf53f2a279\", \"mime\": \"image/webp\", \"name\": \"small_doctor_serial.webp\", \"path\": null, \"size\": 17.61, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_doctor_serial_cf53f2a279.webp\", \"hash\": \"medium_doctor_serial_cf53f2a279\", \"mime\": \"image/webp\", \"name\": \"medium_doctor_serial.webp\", \"path\": null, \"size\": 30.58, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_doctor_serial_cf53f2a279.webp\", \"hash\": \"thumbnail_doctor_serial_cf53f2a279\", \"mime\": \"image/webp\", \"name\": \"thumbnail_doctor_serial.webp\", \"path\": null, \"size\": 5.55, \"width\": 234, \"height\": 156}}', 'doctor_serial_cf53f2a279', '.webp', 'image/webp', 38.86, '/uploads/doctor_serial_cf53f2a279.webp', NULL, 'local', NULL, '/', '2024-02-27 00:35:31.521000', '2024-02-27 00:35:31.521000', 1, 1),
(27, '312934863_1866504793684142_1667697224922953530_n.jpg', NULL, NULL, 960, 960, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_312934863_1866504793684142_1667697224922953530_n_63f59a01ba.jpg\", \"hash\": \"small_312934863_1866504793684142_1667697224922953530_n_63f59a01ba\", \"mime\": \"image/jpeg\", \"name\": \"small_312934863_1866504793684142_1667697224922953530_n.jpg\", \"path\": null, \"size\": 80.85, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_312934863_1866504793684142_1667697224922953530_n_63f59a01ba.jpg\", \"hash\": \"medium_312934863_1866504793684142_1667697224922953530_n_63f59a01ba\", \"mime\": \"image/jpeg\", \"name\": \"medium_312934863_1866504793684142_1667697224922953530_n.jpg\", \"path\": null, \"size\": 150.47, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_312934863_1866504793684142_1667697224922953530_n_63f59a01ba.jpg\", \"hash\": \"thumbnail_312934863_1866504793684142_1667697224922953530_n_63f59a01ba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_312934863_1866504793684142_1667697224922953530_n.jpg\", \"path\": null, \"size\": 10.14, \"width\": 156, \"height\": 156}}', '312934863_1866504793684142_1667697224922953530_n_63f59a01ba', '.jpg', 'image/jpeg', 167.25, '/uploads/312934863_1866504793684142_1667697224922953530_n_63f59a01ba.jpg', NULL, 'local', NULL, '/', '2024-02-27 00:36:16.788000', '2024-02-27 00:36:16.788000', 1, 1),
(28, 'q_ad.jpg', NULL, NULL, 1024, 862, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_q_ad_ec2a9bbbb7.jpg\", \"hash\": \"large_q_ad_ec2a9bbbb7\", \"mime\": \"image/jpeg\", \"name\": \"large_q_ad.jpg\", \"path\": null, \"size\": 60.74, \"width\": 1000, \"height\": 842}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_q_ad_ec2a9bbbb7.jpg\", \"hash\": \"small_q_ad_ec2a9bbbb7\", \"mime\": \"image/jpeg\", \"name\": \"small_q_ad.jpg\", \"path\": null, \"size\": 22.23, \"width\": 500, \"height\": 421}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_q_ad_ec2a9bbbb7.jpg\", \"hash\": \"medium_q_ad_ec2a9bbbb7\", \"mime\": \"image/jpeg\", \"name\": \"medium_q_ad.jpg\", \"path\": null, \"size\": 40.01, \"width\": 750, \"height\": 631}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_q_ad_ec2a9bbbb7.jpg\", \"hash\": \"thumbnail_q_ad_ec2a9bbbb7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_q_ad.jpg\", \"path\": null, \"size\": 5.47, \"width\": 186, \"height\": 156}}', 'q_ad_ec2a9bbbb7', '.jpg', 'image/jpeg', 63.80, '/uploads/q_ad_ec2a9bbbb7.jpg', NULL, 'local', NULL, '/', '2024-02-27 15:41:14.985000', '2024-02-27 15:41:14.985000', 1, 1),
(29, 'nurse_call.png', NULL, NULL, 810, 315, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_nurse_call_75290a5b74.png\", \"hash\": \"small_nurse_call_75290a5b74\", \"mime\": \"image/png\", \"name\": \"small_nurse_call.png\", \"path\": null, \"size\": 100.27, \"width\": 500, \"height\": 194}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_nurse_call_75290a5b74.png\", \"hash\": \"medium_nurse_call_75290a5b74\", \"mime\": \"image/png\", \"name\": \"medium_nurse_call.png\", \"path\": null, \"size\": 190.69, \"width\": 750, \"height\": 292}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nurse_call_75290a5b74.png\", \"hash\": \"thumbnail_nurse_call_75290a5b74\", \"mime\": \"image/png\", \"name\": \"thumbnail_nurse_call.png\", \"path\": null, \"size\": 31.31, \"width\": 245, \"height\": 95}}', 'nurse_call_75290a5b74', '.png', 'image/png', 67.89, '/uploads/nurse_call_75290a5b74.png', NULL, 'local', NULL, '/', '2024-02-27 15:41:30.956000', '2024-02-27 15:41:30.956000', 1, 1),
(30, 'nurse_calling.webp', NULL, NULL, 1920, 700, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_nurse_calling_5c2cadb26d.webp\", \"hash\": \"large_nurse_calling_5c2cadb26d\", \"mime\": \"image/webp\", \"name\": \"large_nurse_calling.webp\", \"path\": null, \"size\": 29.74, \"width\": 1000, \"height\": 365}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_nurse_calling_5c2cadb26d.webp\", \"hash\": \"small_nurse_calling_5c2cadb26d\", \"mime\": \"image/webp\", \"name\": \"small_nurse_calling.webp\", \"path\": null, \"size\": 12.28, \"width\": 500, \"height\": 182}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_nurse_calling_5c2cadb26d.webp\", \"hash\": \"medium_nurse_calling_5c2cadb26d\", \"mime\": \"image/webp\", \"name\": \"medium_nurse_calling.webp\", \"path\": null, \"size\": 21.07, \"width\": 750, \"height\": 273}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_nurse_calling_5c2cadb26d.webp\", \"hash\": \"thumbnail_nurse_calling_5c2cadb26d\", \"mime\": \"image/webp\", \"name\": \"thumbnail_nurse_calling.webp\", \"path\": null, \"size\": 4.73, \"width\": 245, \"height\": 89}}', 'nurse_calling_5c2cadb26d', '.webp', 'image/webp', 75.26, '/uploads/nurse_calling_5c2cadb26d.webp', NULL, 'local', NULL, '/', '2024-02-27 15:41:43.826000', '2024-02-27 15:41:43.826000', 1, 1),
(31, 'lap-po.jpg', NULL, NULL, 260, 167, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_lap_po_9ffb643261.jpg\", \"hash\": \"thumbnail_lap_po_9ffb643261\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_lap-po.jpg\", \"path\": null, \"size\": 7.94, \"width\": 243, \"height\": 156}}', 'lap_po_9ffb643261', '.jpg', 'image/jpeg', 9.25, '/uploads/lap_po_9ffb643261.jpg', NULL, 'local', NULL, '/', '2024-03-02 10:56:29.154000', '2024-03-02 10:56:29.154000', 1, 1),
(32, 'po-spam.png', NULL, NULL, 102, 128, NULL, 'po_spam_167897f189', '.png', 'image/png', 2.66, '/uploads/po_spam_167897f189.png', NULL, 'local', NULL, '/', '2024-03-02 10:56:29.668000', '2024-03-02 10:56:29.668000', 1, 1),
(33, 'po-Secure .png', NULL, NULL, 134, 134, NULL, 'po_Secure_1052bef3a8', '.png', 'image/png', 4.23, '/uploads/po_Secure_1052bef3a8.png', NULL, 'local', NULL, '/', '2024-03-02 10:56:29.671000', '2024-03-02 10:56:29.671000', 1, 1),
(34, 'po-email.png', NULL, NULL, 154, 154, NULL, 'po_email_380780b9a2', '.png', 'image/png', 1.51, '/uploads/po_email_380780b9a2.png', NULL, 'local', NULL, '/', '2024-03-02 10:56:29.672000', '2024-03-02 10:56:29.672000', 1, 1),
(35, 'po-work.png', NULL, NULL, 128, 128, NULL, 'po_work_719c2c2a7c', '.png', 'image/png', 1.33, '/uploads/po_work_719c2c2a7c.png', NULL, 'local', NULL, '/', '2024-03-02 10:56:29.743000', '2024-03-02 10:56:29.743000', 1, 1),
(36, 'ro-Compatible.png', NULL, NULL, 192, 192, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_ro_Compatible_63da36cc99.png\", \"hash\": \"thumbnail_ro_Compatible_63da36cc99\", \"mime\": \"image/png\", \"name\": \"thumbnail_ro-Compatible.png\", \"path\": null, \"size\": 11.53, \"width\": 156, \"height\": 156}}', 'ro_Compatible_63da36cc99', '.png', 'image/png', 3.61, '/uploads/ro_Compatible_63da36cc99.png', NULL, 'local', NULL, '/', '2024-03-02 10:56:29.745000', '2024-03-02 10:56:29.745000', 1, 1),
(37, 'ro-migration .png', NULL, NULL, 128, 128, NULL, 'ro_migration_38206773e8', '.png', 'image/png', 1.36, '/uploads/ro_migration_38206773e8.png', NULL, 'local', NULL, '/', '2024-03-02 10:56:29.893000', '2024-03-02 10:56:29.893000', 1, 1),
(38, 'ro-Live .png', NULL, NULL, 137, 137, NULL, 'ro_Live_0af2882082', '.png', 'image/png', 2.22, '/uploads/ro_Live_0af2882082.png', NULL, 'local', NULL, '/', '2024-03-02 10:56:30.092000', '2024-03-02 10:56:30.092000', 1, 1),
(39, 'Logo-for-website.png', NULL, NULL, 903, 848, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Logo_for_website_1847c5ebac.png\", \"hash\": \"small_Logo_for_website_1847c5ebac\", \"mime\": \"image/png\", \"name\": \"small_Logo-for-website.png\", \"path\": null, \"size\": 56.42, \"width\": 500, \"height\": 470}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Logo_for_website_1847c5ebac.png\", \"hash\": \"medium_Logo_for_website_1847c5ebac\", \"mime\": \"image/png\", \"name\": \"medium_Logo-for-website.png\", \"path\": null, \"size\": 93.06, \"width\": 750, \"height\": 704}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_for_website_1847c5ebac.png\", \"hash\": \"thumbnail_Logo_for_website_1847c5ebac\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo-for-website.png\", \"path\": null, \"size\": 16, \"width\": 166, \"height\": 156}}', 'Logo_for_website_1847c5ebac', '.png', 'image/png', 17.98, '/uploads/Logo_for_website_1847c5ebac.png', NULL, 'local', NULL, '/', '2024-03-02 11:05:31.503000', '2024-03-02 11:05:31.503000', 1, 1),
(40, 'LucentChart Digital Acuity System - A product of Transworld Mercantile Corporation.mp4', NULL, NULL, NULL, NULL, NULL, 'Lucent_Chart_Digital_Acuity_System_A_product_of_Transworld_Mercantile_Corporation_83274e740e', '.mp4', 'video/mp4', 10247.12, '/uploads/Lucent_Chart_Digital_Acuity_System_A_product_of_Transworld_Mercantile_Corporation_83274e740e.mp4', NULL, 'local', NULL, '/', '2024-03-02 11:13:27.363000', '2024-03-02 11:13:27.363000', 1, 1),
(41, 'LucentChart Digital Acuity System - A product of Transworld Mercantile Corporation.mp4', NULL, NULL, NULL, NULL, NULL, 'Lucent_Chart_Digital_Acuity_System_A_product_of_Transworld_Mercantile_Corporation_c9604d2244', '.mp4', 'video/mp4', 10247.12, '/uploads/Lucent_Chart_Digital_Acuity_System_A_product_of_Transworld_Mercantile_Corporation_c9604d2244.mp4', NULL, 'local', NULL, '/', '2024-03-04 21:23:00.831000', '2024-03-04 21:23:00.831000', 1, 1),
(42, 'po-email.png', NULL, NULL, 154, 154, NULL, 'po_email_96f4d4e3a9', '.png', 'image/png', 1.51, '/uploads/po_email_96f4d4e3a9.png', NULL, 'local', NULL, '/', '2024-03-08 09:27:05.708000', '2024-03-08 09:27:05.708000', 1, 1),
(43, 'INCEPTA-PHARMACEUTICALS.png', NULL, NULL, 130, 130, NULL, 'INCEPTA_PHARMACEUTICALS_9d6cc50188', '.png', 'image/png', 2.45, '/uploads/INCEPTA_PHARMACEUTICALS_9d6cc50188.png', NULL, 'local', NULL, '/', '2024-03-08 16:34:20.034000', '2024-03-08 16:34:20.034000', 1, 1),
(44, 'hidayah.png', NULL, NULL, 388, 300, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_hidayah_e10fc7e6bc.png\", \"hash\": \"thumbnail_hidayah_e10fc7e6bc\", \"mime\": \"image/png\", \"name\": \"thumbnail_hidayah.png\", \"path\": null, \"size\": 21.57, \"width\": 202, \"height\": 156}}', 'hidayah_e10fc7e6bc', '.png', 'image/png', 6.79, '/uploads/hidayah_e10fc7e6bc.png', NULL, 'local', NULL, '/', '2024-03-09 19:03:32.474000', '2024-03-09 19:03:32.474000', 1, 1),
(45, 'red.jpg', NULL, NULL, 148, 148, NULL, 'red_cae69cc103', '.jpg', 'image/jpeg', 7.02, '/uploads/red_cae69cc103.jpg', NULL, 'local', NULL, '/', '2024-03-15 11:10:15.851000', '2024-03-15 11:10:15.851000', 1, 1),
(46, 'black.jpg', NULL, NULL, 148, 148, NULL, 'black_0dafab3e81', '.jpg', 'image/jpeg', 4.82, '/uploads/black_0dafab3e81.jpg', NULL, 'local', NULL, '/', '2024-03-15 11:10:15.852000', '2024-03-15 11:10:15.852000', 1, 1),
(47, 'blue.jpg', NULL, NULL, 148, 148, NULL, 'blue_359f391399', '.jpg', 'image/jpeg', 6.47, '/uploads/blue_359f391399.jpg', NULL, 'local', NULL, '/', '2024-03-15 11:10:16.000000', '2024-03-15 11:10:16.000000', 1, 1),
(48, 'gray.jpg', NULL, NULL, 196, 148, NULL, 'gray_f595fae5e9', '.jpg', 'image/jpeg', 3.63, '/uploads/gray_f595fae5e9.jpg', NULL, 'local', NULL, '/', '2024-03-15 11:10:16.002000', '2024-03-15 11:10:16.002000', 1, 1),
(49, '1blue.jpg', NULL, NULL, 155, 148, NULL, '1blue_6b3bce9b68', '.jpg', 'image/jpeg', 4.20, '/uploads/1blue_6b3bce9b68.jpg', NULL, 'local', NULL, '/', '2024-03-15 11:19:00.919000', '2024-03-15 11:19:00.919000', 1, 1),
(50, '1black.jpg', NULL, NULL, 168, 148, NULL, '1black_58258b746c', '.jpg', 'image/jpeg', 4.58, '/uploads/1black_58258b746c.jpg', NULL, 'local', NULL, '/', '2024-03-15 11:19:00.924000', '2024-03-15 11:19:00.924000', 1, 1),
(51, '1red.jpg', NULL, NULL, 189, 148, NULL, '1red_ea16397523', '.jpg', 'image/jpeg', 4.58, '/uploads/1red_ea16397523.jpg', NULL, 'local', NULL, '/', '2024-03-15 11:19:00.933000', '2024-03-15 11:19:00.933000', 1, 1),
(52, 'download (1).jpg', NULL, NULL, 189, 178, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_1_1ca876ca80.jpg\", \"hash\": \"thumbnail_download_1_1ca876ca80\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download (1).jpg\", \"path\": null, \"size\": 2.79, \"width\": 166, \"height\": 156}}', 'download_1_1ca876ca80', '.jpg', 'image/jpeg', 2.87, '/uploads/download_1_1ca876ca80.jpg', NULL, 'local', NULL, '/', '2024-03-15 16:41:06.660000', '2024-03-15 16:41:06.660000', 1, 1),
(53, 'download (2).jpg', NULL, NULL, 204, 192, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_2_1142c39ad2.jpg\", \"hash\": \"thumbnail_download_2_1142c39ad2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download (2).jpg\", \"path\": null, \"size\": 4.78, \"width\": 166, \"height\": 156}}', 'download_2_1142c39ad2', '.jpg', 'image/jpeg', 5.48, '/uploads/download_2_1142c39ad2.jpg', NULL, 'local', NULL, '/', '2024-03-15 16:41:07.040000', '2024-03-15 16:41:07.040000', 1, 1),
(54, 'download.jpg', NULL, NULL, 173, 163, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_2678f1f4aa.jpg\", \"hash\": \"thumbnail_download_2678f1f4aa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 4.54, \"width\": 166, \"height\": 156}}', 'download_2678f1f4aa', '.jpg', 'image/jpeg', 4.27, '/uploads/download_2678f1f4aa.jpg', NULL, 'local', NULL, '/', '2024-03-15 16:41:07.043000', '2024-03-15 16:41:07.043000', 1, 1),
(55, 'Information-Kiosk.jpg', NULL, NULL, 250, 250, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Information_Kiosk_882564fc8a.jpg\", \"hash\": \"thumbnail_Information_Kiosk_882564fc8a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Information-Kiosk.jpg\", \"path\": null, \"size\": 3.01, \"width\": 156, \"height\": 156}}', 'Information_Kiosk_882564fc8a', '.jpg', 'image/jpeg', 5.98, '/uploads/Information_Kiosk_882564fc8a.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:04:56.132000', '2024-03-17 15:04:56.132000', 1, 1),
(56, 'Android-Kiosk.jpg', NULL, NULL, 565, 390, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Android_Kiosk_ef5e7b8160.jpg\", \"hash\": \"small_Android_Kiosk_ef5e7b8160\", \"mime\": \"image/jpeg\", \"name\": \"small_Android-Kiosk.jpg\", \"path\": null, \"size\": 22.35, \"width\": 500, \"height\": 345}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Android_Kiosk_ef5e7b8160.jpg\", \"hash\": \"thumbnail_Android_Kiosk_ef5e7b8160\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Android-Kiosk.jpg\", \"path\": null, \"size\": 6.84, \"width\": 226, \"height\": 156}}', 'Android_Kiosk_ef5e7b8160', '.jpg', 'image/jpeg', 26.72, '/uploads/Android_Kiosk_ef5e7b8160.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:04:56.198000', '2024-03-17 15:04:56.198000', 1, 1),
(57, 'kiosk-display-solution-bangladesh-by-global-brand-pvt-ltd.jpg', NULL, NULL, 1024, 590, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04.jpg\", \"hash\": \"large_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04\", \"mime\": \"image/jpeg\", \"name\": \"large_kiosk-display-solution-bangladesh-by-global-brand-pvt-ltd.jpg\", \"path\": null, \"size\": 20.7, \"width\": 1000, \"height\": 576}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04.jpg\", \"hash\": \"small_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04\", \"mime\": \"image/jpeg\", \"name\": \"small_kiosk-display-solution-bangladesh-by-global-brand-pvt-ltd.jpg\", \"path\": null, \"size\": 7.66, \"width\": 500, \"height\": 288}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04.jpg\", \"hash\": \"medium_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04\", \"mime\": \"image/jpeg\", \"name\": \"medium_kiosk-display-solution-bangladesh-by-global-brand-pvt-ltd.jpg\", \"path\": null, \"size\": 13.52, \"width\": 750, \"height\": 432}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04.jpg\", \"hash\": \"thumbnail_kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kiosk-display-solution-bangladesh-by-global-brand-pvt-ltd.jpg\", \"path\": null, \"size\": 3.01, \"width\": 245, \"height\": 141}}', 'kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04', '.jpg', 'image/jpeg', 21.48, '/uploads/kiosk_display_solution_bangladesh_by_global_brand_pvt_ltd_09e12f3b04.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:04:56.199000', '2024-03-17 15:04:56.199000', 1, 1),
(58, 'Touch-Kiosk.jpg', NULL, NULL, 308, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Touch_Kiosk_fe3e0c1be2.jpg\", \"hash\": \"thumbnail_Touch_Kiosk_fe3e0c1be2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Touch-Kiosk.jpg\", \"path\": null, \"size\": 4.15, \"width\": 96, \"height\": 156}}', 'Touch_Kiosk_fe3e0c1be2', '.jpg', 'image/jpeg', 24.53, '/uploads/Touch_Kiosk_fe3e0c1be2.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:04:56.274000', '2024-03-17 15:04:56.274000', 1, 1),
(59, 'download.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_cf755f718c.jpg\", \"hash\": \"thumbnail_download_cf755f718c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 3.51, \"width\": 156, \"height\": 156}}', 'download_cf755f718c', '.jpg', 'image/jpeg', 4.60, '/uploads/download_cf755f718c.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:21:23.885000', '2024-03-17 15:21:23.885000', 1, 1),
(60, 'nurse-call-system-250x250.webp', NULL, NULL, 250, 193, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_nurse_call_system_250x250_1bf2714632.webp\", \"hash\": \"thumbnail_nurse_call_system_250x250_1bf2714632\", \"mime\": \"image/webp\", \"name\": \"thumbnail_nurse-call-system-250x250.webp\", \"path\": null, \"size\": 2.2, \"width\": 202, \"height\": 156}}', 'nurse_call_system_250x250_1bf2714632', '.webp', 'image/webp', 3.25, '/uploads/nurse_call_system_250x250_1bf2714632.webp', NULL, 'local', NULL, '/', '2024-03-17 15:21:23.961000', '2024-03-17 15:21:23.961000', 1, 1),
(61, 'download.jpg', NULL, NULL, 266, 189, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_41e5c4d925.jpg\", \"hash\": \"thumbnail_download_41e5c4d925\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 6.59, \"width\": 220, \"height\": 156}}', 'download_41e5c4d925', '.jpg', 'image/jpeg', 6.44, '/uploads/download_41e5c4d925.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:22:35.584000', '2024-03-17 15:22:35.584000', 1, 1),
(62, 'H07c31ca022da4d6aab8dfd25a4df26b0N.jpg', NULL, NULL, 700, 500, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_H07c31ca022da4d6aab8dfd25a4df26b0_N_bfb1854ded.jpg\", \"hash\": \"small_H07c31ca022da4d6aab8dfd25a4df26b0_N_bfb1854ded\", \"mime\": \"image/jpeg\", \"name\": \"small_H07c31ca022da4d6aab8dfd25a4df26b0N.jpg\", \"path\": null, \"size\": 37.12, \"width\": 500, \"height\": 357}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_H07c31ca022da4d6aab8dfd25a4df26b0_N_bfb1854ded.jpg\", \"hash\": \"thumbnail_H07c31ca022da4d6aab8dfd25a4df26b0_N_bfb1854ded\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_H07c31ca022da4d6aab8dfd25a4df26b0N.jpg\", \"path\": null, \"size\": 10.17, \"width\": 218, \"height\": 156}}', 'H07c31ca022da4d6aab8dfd25a4df26b0_N_bfb1854ded', '.jpg', 'image/jpeg', 61.80, '/uploads/H07c31ca022da4d6aab8dfd25a4df26b0_N_bfb1854ded.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:31:45.458000', '2024-03-17 15:31:45.458000', 1, 1),
(63, 'Hb39c0d4765cf4fba81ff4ea4a789eee7n.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e.jpg\", \"hash\": \"small_Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e\", \"mime\": \"image/jpeg\", \"name\": \"small_Hb39c0d4765cf4fba81ff4ea4a789eee7n.jpg\", \"path\": null, \"size\": 34.12, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e.jpg\", \"hash\": \"medium_Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e\", \"mime\": \"image/jpeg\", \"name\": \"medium_Hb39c0d4765cf4fba81ff4ea4a789eee7n.jpg\", \"path\": null, \"size\": 63.27, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e.jpg\", \"hash\": \"thumbnail_Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Hb39c0d4765cf4fba81ff4ea4a789eee7n.jpg\", \"path\": null, \"size\": 6.06, \"width\": 156, \"height\": 156}}', 'Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e', '.jpg', 'image/jpeg', 97.72, '/uploads/Hb39c0d4765cf4fba81ff4ea4a789eee7n_7e817b524e.jpg', NULL, 'local', NULL, '/', '2024-03-17 15:31:58.189000', '2024-03-17 15:31:58.189000', 1, 1),
(64, 'H6a35727e68344fffb6cf285f0f2568c2t.avif', NULL, NULL, NULL, NULL, NULL, 'H6a35727e68344fffb6cf285f0f2568c2t_8488730fda', '.avif', 'image/avif', 27.47, '/uploads/H6a35727e68344fffb6cf285f0f2568c2t_8488730fda.avif', NULL, 'local', NULL, '/', '2024-03-17 15:50:59.674000', '2024-03-17 15:50:59.674000', 1, 1),
(65, 'kiosk.jpg', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_17_inch_queue_management_system_with_7_tablet_calling_pad_terminal_724_c050989d80.jpg\", \"hash\": \"thumbnail_17_inch_queue_management_system_with_7_tablet_calling_pad_terminal_724_c050989d80\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_17-inch-queue-management-system-with-7-tablet-calling-pad-terminal-724.jpg\", \"path\": null, \"size\": 7.43, \"width\": 156, \"height\": 156}}', '17_inch_queue_management_system_with_7_tablet_calling_pad_terminal_724_c050989d80', '.jpg', 'image/jpeg', 41.73, '/uploads/17_inch_queue_management_system_with_7_tablet_calling_pad_terminal_724_c050989d80.jpg', NULL, 'local', NULL, '/', '2024-03-17 21:24:24.433000', '2024-04-30 16:25:34.584000', 1, 1),
(67, 'Nurse Calling System-flyers.png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Nurse_Calling_System_flyers_1415d22071.png\", \"hash\": \"large_Nurse_Calling_System_flyers_1415d22071\", \"mime\": \"image/png\", \"name\": \"large_Nurse Calling System-flyers.png\", \"path\": null, \"size\": 286.94, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Nurse_Calling_System_flyers_1415d22071.png\", \"hash\": \"small_Nurse_Calling_System_flyers_1415d22071\", \"mime\": \"image/png\", \"name\": \"small_Nurse Calling System-flyers.png\", \"path\": null, \"size\": 102.13, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Nurse_Calling_System_flyers_1415d22071.png\", \"hash\": \"medium_Nurse_Calling_System_flyers_1415d22071\", \"mime\": \"image/png\", \"name\": \"medium_Nurse Calling System-flyers.png\", \"path\": null, \"size\": 186.53, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Nurse_Calling_System_flyers_1415d22071.png\", \"hash\": \"thumbnail_Nurse_Calling_System_flyers_1415d22071\", \"mime\": \"image/png\", \"name\": \"thumbnail_Nurse Calling System-flyers.png\", \"path\": null, \"size\": 37.04, \"width\": 245, \"height\": 138}}', 'Nurse_Calling_System_flyers_1415d22071', '.png', 'image/png', 159.50, '/uploads/Nurse_Calling_System_flyers_1415d22071.png', NULL, 'local', NULL, '/', '2024-03-17 21:47:44.496000', '2024-03-17 21:47:44.496000', 1, 1),
(69, 'Logo-for-website.png', NULL, NULL, 903, 848, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Logo_for_website_6d56c89c0d.png\", \"hash\": \"small_Logo_for_website_6d56c89c0d\", \"mime\": \"image/png\", \"name\": \"small_Logo-for-website.png\", \"path\": null, \"size\": 56.42, \"width\": 500, \"height\": 470}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Logo_for_website_6d56c89c0d.png\", \"hash\": \"medium_Logo_for_website_6d56c89c0d\", \"mime\": \"image/png\", \"name\": \"medium_Logo-for-website.png\", \"path\": null, \"size\": 93.06, \"width\": 750, \"height\": 704}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_for_website_6d56c89c0d.png\", \"hash\": \"thumbnail_Logo_for_website_6d56c89c0d\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo-for-website.png\", \"path\": null, \"size\": 16, \"width\": 166, \"height\": 156}}', 'Logo_for_website_6d56c89c0d', '.png', 'image/png', 17.98, '/uploads/Logo_for_website_6d56c89c0d.png', NULL, 'local', NULL, '/', '2024-03-17 22:34:44.231000', '2024-03-17 22:34:44.231000', 1, 1),
(70, 'download.png', NULL, NULL, 92, 92, NULL, 'download_7729787661', '.png', 'image/png', 2.40, '/uploads/download_7729787661.png', NULL, 'local', NULL, '/', '2024-03-17 22:47:22.650000', '2024-03-17 22:47:22.650000', 1, 1),
(71, '20220822072643-63032fb3af641.webp', NULL, NULL, 800, 800, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_20220822072643_63032fb3af641_52f15c9800.webp\", \"hash\": \"small_20220822072643_63032fb3af641_52f15c9800\", \"mime\": \"image/webp\", \"name\": \"small_20220822072643-63032fb3af641.webp\", \"path\": null, \"size\": 9.11, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_20220822072643_63032fb3af641_52f15c9800.webp\", \"hash\": \"medium_20220822072643_63032fb3af641_52f15c9800\", \"mime\": \"image/webp\", \"name\": \"medium_20220822072643-63032fb3af641.webp\", \"path\": null, \"size\": 16.26, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_20220822072643_63032fb3af641_52f15c9800.webp\", \"hash\": \"thumbnail_20220822072643_63032fb3af641_52f15c9800\", \"mime\": \"image/webp\", \"name\": \"thumbnail_20220822072643-63032fb3af641.webp\", \"path\": null, \"size\": 1.74, \"width\": 156, \"height\": 156}}', '20220822072643_63032fb3af641_52f15c9800', '.webp', 'image/webp', 21.51, '/uploads/20220822072643_63032fb3af641_52f15c9800.webp', NULL, 'local', NULL, '/', '2024-03-17 22:49:04.066000', '2024-03-17 22:49:04.066000', 1, 1),
(72, 'download.jpg', NULL, NULL, 259, 194, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_fd016e3a34.jpg\", \"hash\": \"thumbnail_download_fd016e3a34\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 3.64, \"width\": 208, \"height\": 156}}', 'download_fd016e3a34', '.jpg', 'image/jpeg', 4.00, '/uploads/download_fd016e3a34.jpg', NULL, 'local', NULL, '/', '2024-03-17 22:50:38.493000', '2024-03-17 22:50:38.493000', 1, 1),
(73, 'download.jpg', NULL, NULL, 259, 194, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_e9cb929816.jpg\", \"hash\": \"thumbnail_download_e9cb929816\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 3.91, \"width\": 208, \"height\": 156}}', 'download_e9cb929816', '.jpg', 'image/jpeg', 4.57, '/uploads/download_e9cb929816.jpg', NULL, 'local', NULL, '/', '2024-03-19 20:13:22.557000', '2024-03-19 20:13:22.557000', 1, 1),
(74, 'banner.png', NULL, NULL, 1920, 780, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_banner_f70fbcf7c6.png\", \"hash\": \"large_banner_f70fbcf7c6\", \"mime\": \"image/png\", \"name\": \"large_banner.png\", \"path\": null, \"size\": 338.71, \"width\": 1000, \"height\": 406}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_banner_f70fbcf7c6.png\", \"hash\": \"small_banner_f70fbcf7c6\", \"mime\": \"image/png\", \"name\": \"small_banner.png\", \"path\": null, \"size\": 90.13, \"width\": 500, \"height\": 203}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_banner_f70fbcf7c6.png\", \"hash\": \"medium_banner_f70fbcf7c6\", \"mime\": \"image/png\", \"name\": \"medium_banner.png\", \"path\": null, \"size\": 189.18, \"width\": 750, \"height\": 305}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_banner_f70fbcf7c6.png\", \"hash\": \"thumbnail_banner_f70fbcf7c6\", \"mime\": \"image/png\", \"name\": \"thumbnail_banner.png\", \"path\": null, \"size\": 28.05, \"width\": 245, \"height\": 100}}', 'banner_f70fbcf7c6', '.png', 'image/png', 232.20, '/uploads/banner_f70fbcf7c6.png', NULL, 'local', NULL, '/', '2024-03-23 13:07:41.088000', '2024-03-23 13:07:41.088000', 1, 1),
(75, 'portfolio_1.png', NULL, NULL, 370, 300, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_portfolio_1_17fe70aefd.png\", \"hash\": \"thumbnail_portfolio_1_17fe70aefd\", \"mime\": \"image/png\", \"name\": \"thumbnail_portfolio_1.png\", \"path\": null, \"size\": 51.95, \"width\": 192, \"height\": 156}}', 'portfolio_1_17fe70aefd', '.png', 'image/png', 45.64, '/uploads/portfolio_1_17fe70aefd.png', NULL, 'local', NULL, '/', '2024-03-23 13:12:38.644000', '2024-03-23 13:12:38.644000', 1, 1),
(76, 'portfolio_1.png', NULL, NULL, 370, 300, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_portfolio_1_979129a3fb.png\", \"hash\": \"thumbnail_portfolio_1_979129a3fb\", \"mime\": \"image/png\", \"name\": \"thumbnail_portfolio_1.png\", \"path\": null, \"size\": 51.95, \"width\": 192, \"height\": 156}}', 'portfolio_1_979129a3fb', '.png', 'image/png', 45.64, '/uploads/portfolio_1_979129a3fb.png', NULL, 'local', NULL, '/', '2024-03-23 13:59:34.119000', '2024-03-23 13:59:34.119000', 1, 1),
(77, 'firebase-e1606232499213-oyw6cgvpyorucouybr5qx2w9gsy35f1qbl6bvsnyn4.png', NULL, NULL, 80, 80, NULL, 'firebase_e1606232499213_oyw6cgvpyorucouybr5qx2w9gsy35f1qbl6bvsnyn4_0b9040f88e', '.png', 'image/png', 1.01, '/uploads/firebase_e1606232499213_oyw6cgvpyorucouybr5qx2w9gsy35f1qbl6bvsnyn4_0b9040f88e.png', NULL, 'local', NULL, '/', '2024-03-23 14:01:11.403000', '2024-03-23 14:01:11.403000', 1, 1),
(78, 'react-e1606232505637-oyw6cmir3ozkacmretlic1h1146aflo4cd38rgflls.png', NULL, NULL, 80, 80, NULL, 'react_e1606232505637_oyw6cmir3ozkacmretlic1h1146aflo4cd38rgflls_feb8152ab0', '.png', 'image/png', 1.90, '/uploads/react_e1606232505637_oyw6cmir3ozkacmretlic1h1146aflo4cd38rgflls_feb8152ab0.png', NULL, 'local', NULL, '/', '2024-03-23 14:01:22.694000', '2024-03-23 14:01:22.694000', 1, 1),
(79, 'kotlin-e1606232511656-oyw6cs5s8p7a80ekhw19r01slfehpsaid505n478kg.png', NULL, NULL, 80, 80, NULL, 'kotlin_e1606232511656_oyw6cs5s8p7a80ekhw19r01slfehpsaid505n478kg_036106ebaf', '.png', 'image/png', 1.26, '/uploads/kotlin_e1606232511656_oyw6cs5s8p7a80ekhw19r01slfehpsaid505n478kg_036106ebaf.png', NULL, 'local', NULL, '/', '2024-03-23 14:01:32.748000', '2024-03-23 14:01:32.748000', 1, 1),
(80, 'python-e1606232488846-oyw6c6jhvidosz9z04ounni6xkd1sqwom5zzlr3ajk.png', NULL, NULL, 80, 80, NULL, 'python_e1606232488846_oyw6c6jhvidosz9z04ounni6xkd1sqwom5zzlr3ajk_0eb3b3ce98', '.png', 'image/png', 0.98, '/uploads/python_e1606232488846_oyw6c6jhvidosz9z04ounni6xkd1sqwom5zzlr3ajk_0eb3b3ce98.png', NULL, 'local', NULL, '/', '2024-03-23 14:01:44.399000', '2024-03-23 14:01:44.399000', 1, 1),
(81, 'docker-e1606232464686-oyw6bjzdbhit2c6qnuxszt74obg8o0f4j2cc340qow.png', NULL, NULL, 80, 80, NULL, 'docker_e1606232464686_oyw6bjzdbhit2c6qnuxszt74obg8o0f4j2cc340qow_f2ce31f81b', '.png', 'image/png', 1.13, '/uploads/docker_e1606232464686_oyw6bjzdbhit2c6qnuxszt74obg8o0f4j2cc340qow_f2ce31f81b.png', NULL, 'local', NULL, '/', '2024-03-23 14:01:54.471000', '2024-03-23 14:01:54.471000', 1, 1),
(82, 'postgresql-e1606232472752-oyw6bri2u5t3n7vtfy6tjratfef6dl8z83k7xbplb4.png', NULL, NULL, 80, 80, NULL, 'postgresql_e1606232472752_oyw6bri2u5t3n7vtfy6tjratfef6dl8z83k7xbplb4_cb8353e47a', '.png', 'image/png', 2.34, '/uploads/postgresql_e1606232472752_oyw6bri2u5t3n7vtfy6tjratfef6dl8z83k7xbplb4_cb8353e47a.png', NULL, 'local', NULL, '/', '2024-03-23 14:02:04.456000', '2024-03-23 14:02:04.456000', 1, 1),
(83, 'php-e1606232482359-oyw6c0wgqi5yvbi5x2938oxfd94uikaale32q3bnkw.png', NULL, NULL, 80, 80, NULL, 'php_e1606232482359_oyw6c0wgqi5yvbi5x2938oxfd94uikaale32q3bnkw_6aa79ad061', '.png', 'image/png', 0.97, '/uploads/php_e1606232482359_oyw6c0wgqi5yvbi5x2938oxfd94uikaale32q3bnkw_6aa79ad061.png', NULL, 'local', NULL, '/', '2024-03-23 14:02:15.609000', '2024-03-23 14:02:15.609000', 1, 1),
(84, 'java-1-e1606232519476-oyw6czohrdhksw3n9zaaay5hcidffd4d2681hbw36o.png', NULL, NULL, 80, 80, NULL, 'java_1_e1606232519476_oyw6czohrdhksw3n9zaaay5hcidffd4d2681hbw36o_4b1f4bbafe', '.png', 'image/png', 1.38, '/uploads/java_1_e1606232519476_oyw6czohrdhksw3n9zaaay5hcidffd4d2681hbw36o_4b1f4bbafe.png', NULL, 'local', NULL, '/', '2024-03-23 14:02:27.242000', '2024-03-23 14:02:27.242000', 1, 1),
(85, 'redis-e1606232388671-oyw69kjmw2t0jz2i9025qb83j18cf0jix8rfm2ynts.png', NULL, NULL, 80, 80, NULL, 'redis_e1606232388671_oyw69kjmw2t0jz2i9025qb83j18cf0jix8rfm2ynts_c3f2590890', '.png', 'image/png', 1.04, '/uploads/redis_e1606232388671_oyw69kjmw2t0jz2i9025qb83j18cf0jix8rfm2ynts_c3f2590890.png', NULL, 'local', NULL, '/', '2024-03-23 14:02:39.524000', '2024-03-23 14:02:39.524000', 1, 1),
(86, '5031659.svg', NULL, NULL, 512, 341, NULL, '5031659_c39181157f', '.svg', 'image/svg+xml', 34.88, '/uploads/5031659_c39181157f.svg', NULL, 'local', NULL, '/', '2024-03-25 14:59:19.004000', '2024-03-25 14:59:19.004000', 1, 1),
(87, 'portfolio_1.png', NULL, NULL, 370, 300, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_portfolio_1_d134186cf1.png\", \"hash\": \"thumbnail_portfolio_1_d134186cf1\", \"mime\": \"image/png\", \"name\": \"thumbnail_portfolio_1.png\", \"path\": null, \"size\": 51.95, \"width\": 192, \"height\": 156}}', 'portfolio_1_d134186cf1', '.png', 'image/png', 45.64, '/uploads/portfolio_1_d134186cf1.png', NULL, 'local', NULL, '/', '2024-03-25 15:20:37.889000', '2024-03-25 15:20:37.889000', 1, 1),
(88, '2.png', NULL, NULL, 93, 156, NULL, '2_17b259ff55', '.png', 'image/png', 5.94, '/uploads/2_17b259ff55.png', NULL, 'local', NULL, '/', '2024-04-18 23:31:28.935000', '2024-04-18 23:31:28.935000', 1, 1),
(89, '2.png', NULL, NULL, 93, 156, NULL, '2_4b7b25cf05', '.png', 'image/png', 5.94, '/uploads/2_4b7b25cf05.png', NULL, 'local', NULL, '/', '2024-04-18 23:33:46.184000', '2024-04-18 23:33:46.184000', 1, 1),
(90, 'Q-ad.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Q_ad_471540d31d.jpg\", \"hash\": \"thumbnail_Q_ad_471540d31d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Q-ad.jpg\", \"path\": null, \"size\": 3.46, \"width\": 156, \"height\": 156}}', 'Q_ad_471540d31d', '.jpg', 'image/jpeg', 4.62, '/uploads/Q_ad_471540d31d.jpg', NULL, 'local', NULL, '/', '2024-04-18 23:35:29.732000', '2024-04-18 23:35:29.732000', 1, 1),
(91, 'Loker.jpg', NULL, NULL, 228, 228, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Loker_7342ad5ada.jpg\", \"hash\": \"thumbnail_Loker_7342ad5ada\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Loker.jpg\", \"path\": null, \"size\": 4.11, \"width\": 156, \"height\": 156}}', 'Loker_7342ad5ada', '.jpg', 'image/jpeg', 7.28, '/uploads/Loker_7342ad5ada.jpg', NULL, 'local', NULL, '/', '2024-04-18 23:44:34.883000', '2024-04-18 23:44:34.883000', 1, 1),
(92, 'server.jpg', NULL, NULL, 228, 228, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_server_8c289fbcb2.jpg\", \"hash\": \"thumbnail_server_8c289fbcb2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_server.jpg\", \"path\": null, \"size\": 3.08, \"width\": 156, \"height\": 156}}', 'server_8c289fbcb2', '.jpg', 'image/jpeg', 5.70, '/uploads/server_8c289fbcb2.jpg', NULL, 'local', NULL, '/', '2024-04-18 23:50:55.172000', '2024-04-18 23:50:55.172000', 1, 1),
(93, 'q-ad-1.png', NULL, NULL, 222, 385, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_q_ad_1_8d64e238c5.png\", \"hash\": \"thumbnail_q_ad_1_8d64e238c5\", \"mime\": \"image/png\", \"name\": \"thumbnail_q-ad-1.png\", \"path\": null, \"size\": 10.79, \"width\": 90, \"height\": 156}}', 'q_ad_1_8d64e238c5', '.png', 'image/png', 9.46, '/uploads/q_ad_1_8d64e238c5.png', NULL, 'local', NULL, '/', '2024-04-20 11:56:40.872000', '2024-04-20 11:56:40.872000', 1, 1),
(94, 'server.jpg', NULL, NULL, 228, 228, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_diskstation_ds1823xs_plus_01_228x228_bb84ff6eda.webp\", \"hash\": \"thumbnail_diskstation_ds1823xs_plus_01_228x228_bb84ff6eda\", \"mime\": \"image/webp\", \"name\": \"thumbnail_diskstation-ds1823xs-plus-01-228x228.webp\", \"path\": null, \"size\": 0.94, \"width\": 156, \"height\": 156}}', 'diskstation_ds1823xs_plus_01_228x228_bb84ff6eda', '.webp', 'image/webp', 1.57, '/uploads/diskstation_ds1823xs_plus_01_228x228_bb84ff6eda.webp', NULL, 'local', NULL, '/', '2024-04-27 15:08:27.376000', '2024-04-30 16:12:16.872000', 1, 1),
(95, '0.jpg', NULL, NULL, 300, 300, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_0_91f9dd4a34.jpg\", \"hash\": \"thumbnail_0_91f9dd4a34\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_0.jpg\", \"path\": null, \"size\": 3.9, \"width\": 156, \"height\": 156}}', '0_91f9dd4a34', '.jpg', 'image/jpeg', 10.96, '/uploads/0_91f9dd4a34.jpg', NULL, 'local', NULL, '/', '2024-04-27 15:17:56.968000', '2024-04-27 15:17:56.968000', 1, 1),
(96, 'q3.jpg', NULL, NULL, 299, 169, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_q3_020d26ddbd.jpg\", \"hash\": \"thumbnail_q3_020d26ddbd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_q3.jpg\", \"path\": null, \"size\": 2.93, \"width\": 245, \"height\": 138}}', 'q3_020d26ddbd', '.jpg', 'image/jpeg', 3.23, '/uploads/q3_020d26ddbd.jpg', NULL, 'local', NULL, '/', '2024-04-29 23:16:10.843000', '2024-04-29 23:16:10.843000', 1, 1),
(97, 'Q bot v1.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_q1_77724a47e3.jpg\", \"hash\": \"thumbnail_q1_77724a47e3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_q1.jpg\", \"path\": null, \"size\": 2.52, \"width\": 156, \"height\": 156}}', 'q1_77724a47e3', '.jpg', 'image/jpeg', 3.21, '/uploads/q1_77724a47e3.jpg', NULL, 'local', NULL, '/', '2024-04-29 23:16:10.853000', '2024-04-30 11:56:45.304000', 1, 1),
(98, 'q2.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_q2_384575b53e.jpg\", \"hash\": \"thumbnail_q2_384575b53e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_q2.jpg\", \"path\": null, \"size\": 2.2, \"width\": 156, \"height\": 156}}', 'q2_384575b53e', '.jpg', 'image/jpeg', 2.98, '/uploads/q2_384575b53e.jpg', NULL, 'local', NULL, '/', '2024-04-29 23:16:10.847000', '2024-04-29 23:16:10.847000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(99, 'Q1.jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Q1_6fc5327f50.jpeg\", \"hash\": \"thumbnail_Q1_6fc5327f50\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Q1.jpeg\", \"path\": null, \"size\": 2.94, \"width\": 156, \"height\": 156}}', 'Q1_6fc5327f50', '.jpeg', 'image/jpeg', 4.40, '/uploads/Q1_6fc5327f50.jpeg', NULL, 'local', NULL, '/', '2024-04-30 16:37:10.797000', '2024-04-30 16:37:10.797000', 1, 1),
(100, 'Q1.jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Q1_994d7ec45e.jpeg\", \"hash\": \"thumbnail_Q1_994d7ec45e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Q1.jpeg\", \"path\": null, \"size\": 2.94, \"width\": 156, \"height\": 156}}', 'Q1_994d7ec45e', '.jpeg', 'image/jpeg', 4.40, '/uploads/Q1_994d7ec45e.jpeg', NULL, 'local', NULL, '/', '2024-04-30 16:58:03.346000', '2024-04-30 16:58:03.346000', 1, 1),
(101, 'Q4.jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Q4_d57c503b41.jpeg\", \"hash\": \"thumbnail_Q4_d57c503b41\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Q4.jpeg\", \"path\": null, \"size\": 3.21, \"width\": 156, \"height\": 156}}', 'Q4_d57c503b41', '.jpeg', 'image/jpeg', 4.85, '/uploads/Q4_d57c503b41.jpeg', NULL, 'local', NULL, '/', '2024-04-30 17:05:53.680000', '2024-04-30 17:05:53.680000', 1, 1),
(102, 'q5.jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_q5_829ec5334c.jpeg\", \"hash\": \"thumbnail_q5_829ec5334c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_q5.jpeg\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'q5_829ec5334c', '.jpeg', 'image/jpeg', 7.46, '/uploads/q5_829ec5334c.jpeg', NULL, 'local', NULL, '/', '2024-04-30 17:09:10.607000', '2024-04-30 17:09:10.607000', 1, 1),
(103, 'q bot v3.jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_q_bot_v3_684d3afc73.jpeg\", \"hash\": \"thumbnail_q_bot_v3_684d3afc73\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_q bot v3.jpeg\", \"path\": null, \"size\": 2.69, \"width\": 156, \"height\": 156}}', 'q_bot_v3_684d3afc73', '.jpeg', 'image/jpeg', 3.52, '/uploads/q_bot_v3_684d3afc73.jpeg', NULL, 'local', NULL, '/', '2024-05-04 17:10:49.360000', '2024-05-04 17:10:49.360000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(63, 24, 1, 'contact.contact', 'image', 1),
(204, 38, 8, 'content.blog', 'image', 1),
(217, 19, 1, 'api::lucent-chart.lucent-chart', 'images', 1),
(218, 18, 1, 'api::lucent-chart.lucent-chart', 'images', 2),
(219, 17, 1, 'api::lucent-chart.lucent-chart', 'images', 3),
(220, 16, 1, 'api::lucent-chart.lucent-chart', 'images', 4),
(221, 13, 1, 'api::lucent-chart.lucent-chart', 'images', 5),
(222, 14, 1, 'api::lucent-chart.lucent-chart', 'images', 6),
(223, 15, 1, 'api::lucent-chart.lucent-chart', 'images', 7),
(224, 12, 1, 'api::lucent-chart.lucent-chart', 'images', 8),
(225, 11, 1, 'api::lucent-chart.lucent-chart', 'images', 9),
(226, 10, 1, 'api::lucent-chart.lucent-chart', 'images', 10),
(310, 39, 1, 'api::lucent-chart.lucent-chart', 'image', 1),
(311, 40, 1, 'api::lucent-chart.lucent-chart', 'video', 1),
(312, 19, 1, 'api::lucent-chart.lucent-chart', 'logo', 1),
(313, 18, 1, 'api::lucent-chart.lucent-chart', 'logo', 2),
(314, 17, 1, 'api::lucent-chart.lucent-chart', 'logo', 3),
(315, 16, 1, 'api::lucent-chart.lucent-chart', 'logo', 4),
(316, 12, 1, 'api::lucent-chart.lucent-chart', 'logo', 5),
(317, 13, 1, 'api::lucent-chart.lucent-chart', 'logo', 6),
(318, 14, 1, 'api::lucent-chart.lucent-chart', 'logo', 7),
(319, 15, 1, 'api::lucent-chart.lucent-chart', 'logo', 8),
(320, 11, 1, 'api::lucent-chart.lucent-chart', 'logo', 9),
(321, 10, 1, 'api::lucent-chart.lucent-chart', 'logo', 10),
(371, 31, 1, 'content.blog', 'image', 1),
(372, 34, 2, 'content.blog', 'image', 1),
(373, 32, 3, 'content.blog', 'image', 1),
(374, 35, 4, 'content.blog', 'image', 1),
(375, 33, 5, 'content.blog', 'image', 1),
(376, 36, 6, 'content.blog', 'image', 1),
(377, 37, 7, 'content.blog', 'image', 1),
(378, 38, 8, 'content.blog', 'image', 1),
(379, 19, 1, 'api::productive-office.productive-office', 'images', 1),
(380, 18, 1, 'api::productive-office.productive-office', 'images', 2),
(381, 17, 1, 'api::productive-office.productive-office', 'images', 3),
(382, 16, 1, 'api::productive-office.productive-office', 'images', 4),
(383, 15, 1, 'api::productive-office.productive-office', 'images', 5),
(384, 14, 1, 'api::productive-office.productive-office', 'images', 6),
(385, 13, 1, 'api::productive-office.productive-office', 'images', 7),
(386, 39, 1, 'api::check.check', 'image', 1),
(387, 39, 1, 'api::page.page', 'image', 1),
(388, 35, 3, 'api::page.page', 'image', 1),
(440, 11, 2, 'api::dynamic-page.dynamic-page', 'partnership', 1),
(441, 10, 2, 'api::dynamic-page.dynamic-page', 'partnership', 2),
(442, 8, 2, 'api::dynamic-page.dynamic-page', 'partnership', 3),
(443, 7, 2, 'api::dynamic-page.dynamic-page', 'partnership', 4),
(444, 9, 2, 'api::dynamic-page.dynamic-page', 'partnership', 5),
(445, 6, 2, 'api::dynamic-page.dynamic-page', 'partnership', 6),
(446, 31, 9, 'content.blog', 'image', 1),
(447, 19, 1, 'api::dynamic-page.dynamic-page', 'partnership', 1),
(448, 18, 1, 'api::dynamic-page.dynamic-page', 'partnership', 2),
(449, 14, 1, 'api::dynamic-page.dynamic-page', 'partnership', 3),
(450, 15, 1, 'api::dynamic-page.dynamic-page', 'partnership', 4),
(451, 16, 1, 'api::dynamic-page.dynamic-page', 'partnership', 5),
(452, 17, 1, 'api::dynamic-page.dynamic-page', 'partnership', 6),
(525, 24, 2, 'contact.contact', 'image', 1),
(526, 44, 1, 'api::navbarmenu.navbarmenu', 'image', 1),
(560, 19, 1, 'api::service.service', 'images', 1),
(561, 18, 1, 'api::service.service', 'images', 2),
(562, 16, 1, 'api::service.service', 'images', 3),
(563, 17, 1, 'api::service.service', 'images', 4),
(564, 15, 1, 'api::service.service', 'images', 5),
(565, 14, 1, 'api::service.service', 'images', 6),
(566, 13, 1, 'api::service.service', 'images', 7),
(567, 12, 1, 'api::service.service', 'images', 8),
(568, 11, 1, 'api::service.service', 'images', 9),
(569, 10, 1, 'api::service.service', 'images', 10),
(570, 9, 1, 'api::service.service', 'images', 11),
(571, 7, 1, 'api::service.service', 'images', 12),
(572, 8, 1, 'api::service.service', 'images', 13),
(573, 6, 1, 'api::service.service', 'images', 14),
(587, 18, 1, 'api::landing-page.landing-page', 'image', 1),
(588, 17, 1, 'api::landing-page.landing-page', 'image', 2),
(589, 19, 1, 'api::landing-page.landing-page', 'image', 3),
(590, 16, 1, 'api::landing-page.landing-page', 'image', 4),
(591, 15, 1, 'api::landing-page.landing-page', 'image', 5),
(592, 13, 1, 'api::landing-page.landing-page', 'image', 6),
(593, 8, 1, 'api::landing-page.landing-page', 'image', 7),
(594, 12, 1, 'api::landing-page.landing-page', 'image', 8),
(595, 11, 1, 'api::landing-page.landing-page', 'image', 9),
(596, 10, 1, 'api::landing-page.landing-page', 'image', 10),
(597, 9, 1, 'api::landing-page.landing-page', 'image', 11),
(598, 7, 1, 'api::landing-page.landing-page', 'image', 12),
(599, 6, 1, 'api::landing-page.landing-page', 'image', 13),
(600, 42, 10, 'content.blog', 'image', 1),
(601, 28, 1, 'api::home.home', 'slider', 1),
(602, 29, 1, 'api::home.home', 'slider', 2),
(603, 30, 1, 'api::home.home', 'slider', 3),
(604, 26, 1, 'api::home.home', 'slider', 4),
(605, 3, 1, 'api::home.home', 'slider', 5),
(606, 43, 1, 'api::home.home', 'images', 1),
(607, 19, 1, 'api::home.home', 'images', 2),
(608, 18, 1, 'api::home.home', 'images', 3),
(609, 17, 1, 'api::home.home', 'images', 4),
(610, 16, 1, 'api::home.home', 'images', 5),
(611, 12, 1, 'api::home.home', 'images', 6),
(612, 13, 1, 'api::home.home', 'images', 7),
(613, 14, 1, 'api::home.home', 'images', 8),
(614, 15, 1, 'api::home.home', 'images', 9),
(615, 11, 1, 'api::home.home', 'images', 10),
(616, 10, 1, 'api::home.home', 'images', 11),
(617, 7, 1, 'api::home.home', 'images', 12),
(618, 8, 1, 'api::home.home', 'images', 13),
(619, 9, 1, 'api::home.home', 'images', 14),
(620, 6, 1, 'api::home.home', 'images', 15),
(628, 46, 1, 'api::product.product', 'images', 1),
(629, 49, 2, 'api::product.product', 'images', 1),
(632, 52, 3, 'api::product.product', 'images', 1),
(633, 53, 4, 'api::product.product', 'images', 1),
(634, 54, 5, 'api::product.product', 'images', 1),
(670, 55, 6, 'api::product.product', 'images', 1),
(671, 56, 6, 'api::product.product', 'images', 2),
(672, 57, 6, 'api::product.product', 'images', 3),
(673, 58, 6, 'api::product.product', 'images', 4),
(678, 71, 7, 'api::product.product', 'images', 1),
(679, 72, 9, 'api::product.product', 'images', 1),
(680, 65, 8, 'api::product.product', 'images', 1),
(713, 73, 2, 'api::category.category', 'img', 1),
(731, 75, 11, 'content.blog', 'image', 1),
(732, 74, 1, 'api::destination-page.destination-page', 'banner', 1),
(757, 74, 1, 'home.home', 'banner', 1),
(758, 87, 13, 'content.blog', 'image', 1),
(759, 77, 1, 'home.logo-text', 'img', 1),
(760, 78, 2, 'home.logo-text', 'img', 1),
(761, 79, 3, 'home.logo-text', 'img', 1),
(762, 80, 4, 'home.logo-text', 'img', 1),
(763, 81, 5, 'home.logo-text', 'img', 1),
(764, 82, 6, 'home.logo-text', 'img', 1),
(765, 83, 7, 'home.logo-text', 'img', 1),
(766, 84, 8, 'home.logo-text', 'img', 1),
(767, 85, 9, 'home.logo-text', 'img', 1),
(878, 97, 7, 'api::category.category', 'img', 1),
(879, 90, 3, 'api::category.category', 'img', 1),
(892, 91, 5, 'api::category.category', 'img', 1),
(893, 94, 6, 'api::category.category', 'img', 1),
(895, 95, 8, 'api::category.category', 'img', 1),
(897, 65, 4, 'api::category.category', 'img', 1),
(903, 5, 1, 'api::category.category', 'img', 1),
(924, 100, 9, 'api::category.category', 'img', 1),
(939, 101, 10, 'api::category.category', 'img', 1),
(955, 103, 11, 'api::category.category', 'img', 1),
(962, 95, 14, 'api::category.category', 'img', 1),
(963, 97, 12, 'api::category.category', 'img', 1),
(964, 98, 13, 'api::category.category', 'img', 1),
(975, 98, 13, 'api::product.product', 'img', 1),
(977, 73, 2, 'api::product.product', 'img', 1),
(978, 90, 3, 'api::product.product', 'img', 1),
(979, 65, 4, 'api::product.product', 'img', 1),
(980, 91, 5, 'api::product.product', 'img', 1),
(981, 94, 6, 'api::product.product', 'img', 1),
(982, 95, 7, 'api::product.product', 'img', 1),
(983, 100, 9, 'api::product.product', 'img', 1),
(984, 103, 11, 'api::product.product', 'img', 1),
(985, 101, 10, 'api::product.product', 'img', 1),
(988, 97, 12, 'api::product.product', 'img', 1),
(990, 5, 1, 'api::product.product', 'img', 1);

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `subheading` longtext,
  `footer` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `heading`, `subheading`, `footer`) VALUES
(1, 'product', '2024-02-24 13:44:57.260000', '2024-03-11 16:03:20.279000', '2024-02-24 13:44:58.200000', 1, 1, 'Our Products', 'Transworld Mercantile Corporation is one of the few IT system integration, professional service, and solution development companies in Bangladesh that works with small-scale solutions to enterprise systems and companies.', 'Copyright © 2024 Hidayah Smart Solutions. All Rights Reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `homes_components`
--

CREATE TABLE `homes_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homes_components`
--

INSERT INTO `homes_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'card-content.card', 'card', 1),
(2, 1, 2, 'card-content.card', 'card', 2),
(3, 1, 3, 'card-content.card', 'card', 3),
(4, 1, 4, 'card-content.card', 'card', 4),
(22, 1, 1, 'shared.seo', 'seo', 2);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2024-02-24 12:20:04.775000', '2024-02-24 12:20:04.775000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_telephone_services`
--

CREATE TABLE `ip_telephone_services` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ip_telephone_services`
--

INSERT INTO `ip_telephone_services` (`id`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'ip-telephone-service', '2024-03-04 21:32:05.926000', '2024-03-05 11:32:59.977000', '2024-03-04 21:32:07.792000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ip_telephone_services_components`
--

CREATE TABLE `ip_telephone_services_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ip_telephone_services_components`
--

INSERT INTO `ip_telephone_services_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 15, 'content.content', 'hero', 2),
(3, 1, 2, 'content.element', 'feature', 1),
(6, 1, 3, 'content.element', 'package', 1),
(7, 1, 4, 'content.element', 'package', 2);

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` int UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `heading`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `footer`) VALUES
(1, 'Hidayah Smart Solutions', '2024-02-28 10:36:52.078000', '2024-03-09 21:39:10.538000', '2024-02-28 10:40:37.614000', 1, 1, 'Copyright © 2024 Hidayah Smart Solutions. All Rights Reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages_components`
--

CREATE TABLE `landing_pages_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `landing_pages_components`
--

INSERT INTO `landing_pages_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'content.hero', 'hero', 6),
(2, 1, 4, 'content.content', 'content', 7),
(5, 1, 5, 'card-content.card', 'card', 1),
(6, 1, 6, 'card-content.card', 'card', 2),
(9, 1, 7, 'card-content.card', 'card', 3),
(14, 1, 8, 'card-content.card', 'card', 4),
(24, 1, 2, 'content.hero', 'hero1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lucent_charts`
--

CREATE TABLE `lucent_charts` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `heading` longtext,
  `conclusion_part` varchar(255) DEFAULT NULL,
  `introductionpart` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lucent_charts`
--

INSERT INTO `lucent_charts` (`id`, `slug`, `heading`, `conclusion_part`, `introductionpart`, `footer`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'lucent-chart', 'Lucent Chart Digital Acuity System will help you assess visual acuity more accurately in wider range of settings for both adults and children.', 'Most of the time, lower visual acuity can be corrected by eyeglasses, contact lenses, or refractive surgeries. ', 'Lucent Chart Digital Acuity System', 'Copyright © 2024 Transworld Mercantile Corporation. All Rights Reserved.', '2024-03-04 21:24:29.829000', '2024-03-05 11:33:28.945000', '2024-03-04 21:24:32.609000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lucent_charts_components`
--

CREATE TABLE `lucent_charts_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lucent_charts_components`
--

INSERT INTO `lucent_charts_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 14, 'content.content', 'element1', 2),
(2, 1, 1, 'content.element', 'element2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navbarmenus`
--

CREATE TABLE `navbarmenus` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `navbarmenus`
--

INSERT INTO `navbarmenus` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `slug`, `name`) VALUES
(1, '2024-02-24 13:09:27.500000', '2024-03-09 19:03:37.640000', '2024-02-24 13:09:28.392000', 1, 1, 'home', 'Home'),
(2, '2024-02-24 13:09:49.561000', '2024-02-24 13:09:50.231000', '2024-02-24 13:09:50.226000', 1, 1, 'about', 'About'),
(3, '2024-02-24 13:10:02.593000', '2024-04-26 20:04:39.213000', '2024-02-24 13:10:03.221000', 1, 1, 'product', 'Products'),
(4, '2024-02-24 13:10:18.119000', '2024-05-06 16:37:30.397000', '2024-02-24 13:10:19.448000', 1, 1, 'service', 'Services'),
(5, '2024-02-24 13:10:39.131000', '2024-03-06 23:46:34.346000', '2024-02-24 13:10:39.819000', 1, 1, 'contact', 'Contact');

-- --------------------------------------------------------

--
-- Table structure for table `navbarmenus_dynamic_page_links`
--

CREATE TABLE `navbarmenus_dynamic_page_links` (
  `id` int UNSIGNED NOT NULL,
  `navbarmenu_id` int UNSIGNED DEFAULT NULL,
  `dynamic_page_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `navbarmenus_navbar_menus_links`
--

CREATE TABLE `navbarmenus_navbar_menus_links` (
  `id` int UNSIGNED NOT NULL,
  `navbarmenu_id` int UNSIGNED DEFAULT NULL,
  `navbar_menu_id` int UNSIGNED DEFAULT NULL,
  `navbar_menu_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `navbarmenus_navbar_menus_links`
--

INSERT INTO `navbarmenus_navbar_menus_links` (`id`, `navbarmenu_id`, `navbar_menu_id`, `navbar_menu_order`) VALUES
(9, 3, 9, 1),
(10, 3, 10, 2),
(24, 3, 16, 3),
(25, 3, 17, 4),
(26, 4, 3, 1),
(29, 4, 1, 2),
(30, 4, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `navbar_menus`
--

CREATE TABLE `navbar_menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `test` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `navbar_menus`
--

INSERT INTO `navbar_menus` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `slug`, `test`) VALUES
(1, 'Productive Office', '2024-02-24 13:15:10.599000', '2024-04-26 11:26:59.065000', '2024-02-24 13:15:11.685000', 1, 1, 'ProductiveOffice', NULL),
(2, 'Video Conference Solution', '2024-02-24 13:15:27.887000', '2024-03-06 22:51:29.561000', '2024-02-24 13:15:28.438000', 1, 1, 'videoconferenceandsolution', NULL),
(3, 'Ip Telephone Service & Solution', '2024-02-24 13:16:06.394000', '2024-04-26 11:26:38.396000', '2024-02-24 13:16:07.219000', 1, 1, 'IpTelephoneService&Solution', NULL),
(4, 'Security Solution', '2024-02-24 13:17:01.538000', '2024-03-06 22:51:58.018000', '2024-02-24 13:17:02.230000', 1, 1, 'securitysolution', NULL),
(5, 'Manage IT Support Service', '2024-02-24 13:17:46.241000', '2024-03-08 11:01:05.661000', '2024-02-24 13:17:46.866000', 1, 1, NULL, NULL),
(6, 'Business Analysis & Consultancy', '2024-02-24 13:17:53.867000', '2024-03-08 09:34:11.105000', '2024-02-24 13:17:54.512000', 1, 1, 'businessanalysisandconsultancy', NULL),
(7, 'E-Mail Migration and Management', '2024-02-24 13:18:14.443000', '2024-05-06 16:38:24.438000', '2024-02-24 13:18:15.071000', 1, 1, 'E-MailMigrationandManagement', NULL),
(9, 'Lucent Chart', '2024-03-02 10:24:18.845000', '2024-04-26 08:55:38.274000', '2024-03-02 10:24:19.603000', 1, 1, 'lucentchart', NULL),
(10, 'nurse calling', '2024-03-02 13:26:46.086000', '2024-03-06 23:03:40.442000', '2024-03-02 13:26:46.781000', 1, 1, 'nursecalling', NULL),
(14, 'Manage  Cloud Service', '2024-03-08 11:28:28.757000', '2024-03-08 11:29:21.598000', '2024-03-08 11:28:30.391000', 1, 1, 'managecloudservice', NULL),
(16, 'Qbot', '2024-04-26 13:49:05.427000', '2024-04-26 13:49:07.426000', '2024-04-26 13:49:07.407000', 1, 1, 'qbot', NULL),
(17, 'Q ad', '2024-04-26 19:51:43.486000', '2024-04-26 19:51:45.882000', '2024-04-26 19:51:45.865000', 1, 1, 'qad', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `navbar_menus_dynamic_page_links`
--

CREATE TABLE `navbar_menus_dynamic_page_links` (
  `id` int UNSIGNED NOT NULL,
  `navbar_menu_id` int UNSIGNED DEFAULT NULL,
  `dynamic_page_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `navbar_menus_dynamic_page_links`
--

INSERT INTO `navbar_menus_dynamic_page_links` (`id`, `navbar_menu_id`, `dynamic_page_id`) VALUES
(2, 5, 2),
(1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `navbar_menus_page_links`
--

CREATE TABLE `navbar_menus_page_links` (
  `id` int UNSIGNED NOT NULL,
  `navbar_menu_id` int UNSIGNED DEFAULT NULL,
  `page_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `navbar_menus_page_links`
--

INSERT INTO `navbar_menus_page_links` (`id`, `navbar_menu_id`, `page_id`) VALUES
(8, 9, 3),
(9, 16, 3),
(10, 17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_reports`
--

CREATE TABLE `order_reports` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `order_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `order_list` json DEFAULT NULL,
  `order_item` longtext,
  `confirm_order` tinyint(1) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_reports`
--

INSERT INTO `order_reports` (`id`, `slug`, `first_name`, `last_name`, `address`, `mobile`, `email`, `city`, `zone`, `comment`, `order_id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `order_list`, `order_item`, `confirm_order`, `published_at`) VALUES
(113, NULL, 'hello', 'fdf', 'dfd', '01784546554', 'rere@gmail.com', 'fdfd', 'Dhaka City', 'ff', '07340', '2024-05-13 15:55:07.086000', '2024-05-13 15:55:07.086000', NULL, NULL, '[{\"price\": \"150000\", \"quantity\": \"2\", \"productName\": \"Q bot\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 300050}]', '\nOrder Summary:\nProduct Name: Q bot\n  Product Price: 150000৳\n  Product Quantity: 2\nDelivery Fee: 50৳\nTotal Payment: 300050৳', 0, '2024-05-13 15:55:07.084000'),
(114, NULL, 'eee', 'eqwwew', 'wew', '01234567898', 't@gmail.com', 'fgg', 'Mymensingh', 'ff', '15218', '2024-05-13 16:04:49.295000', '2024-05-13 16:04:49.295000', NULL, NULL, '[{\"price\": \"150000\", \"quantity\": \"3\", \"productName\": \"Q bot\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 450050}]', '\nOrder Summary:\nProduct Name: Q bot\n  Product Price: 150000৳\n  Product Quantity: 3\nDelivery Fee: 50৳\nTotal Payment: 450050৳', 0, '2024-05-13 16:04:49.293000'),
(115, NULL, 'abdullah', 'rahman', 'uttora', '01984545', 'abdullahj@gmail.com', 'dhaka', '', 'ff', '11930', '2024-05-13 16:06:14.924000', '2024-05-13 16:06:14.924000', NULL, NULL, '[{\"price\": \"150000\", \"quantity\": \"3\", \"productName\": \"Q bot\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 450050}]', '\nOrder Summary:\nProduct Name: Q bot\n  Product Price: 150000৳\n  Product Quantity: 3\nDelivery Fee: 50৳\nTotal Payment: 450050৳', 0, '2024-05-13 16:06:14.921000'),
(116, NULL, 'hh', 'hh', 'uttora', '01798333333', 'ss@gmail.com', 'dhaka', 'Dhaka City', 'gg', '82110', '2024-05-13 16:09:53.066000', '2024-05-13 16:09:53.066000', NULL, NULL, '[{\"price\": \"150000\", \"quantity\": \"2\", \"productName\": \"Q bot\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 300050}]', '\nOrder Summary:\nProduct Name: Q bot\n  Product Price: 150000৳\n  Product Quantity: 2\nDelivery Fee: 50৳\nTotal Payment: 300050৳', 0, '2024-05-13 16:09:53.063000'),
(118, NULL, 'jadu', 'ee', 'utoora', '01794649551', 'city.abdullah165608@gmail.com', 'DHAKAr', 'Dhaka City', 'gfg', '72674', '2024-05-13 17:13:12.442000', '2024-05-13 17:13:12.442000', NULL, NULL, '[{\"price\": \"100000,120000\", \"quantity\": \"2,1\", \"productName\": \"Visual acuity,Q ad\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 200050}]', '\nOrder Summary:\nProduct Name: Visual acuity,Q ad\n  Product Price: 100000,120000৳\n  Product Quantity: 2,1\nDelivery Fee: 50৳\nTotal Payment: 200050৳', 0, '2024-05-13 17:13:12.439000'),
(120, NULL, 'hy', 'yh', 't', '01789333423', 's@gmail.com', 'ccw', 'Dhaka City', 'sds', '83241', '2024-05-13 18:01:34.973000', '2024-05-13 18:01:34.973000', NULL, NULL, '[{\"price\": \"120000,120000\", \"quantity\": \"2,2\", \"productName\": \"Q ad,Q bot v6\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 240050}]', '\n      Order Summary:\n      \n      Product Name: Q ad,Q bot v6\n      \n      \nProduct Price: 120000,120000৳\n      \n      \nProduct Quantity: 2,2\n      \n      Delivery Fee: 50৳\n      Total Payment: 240050৳', 0, '2024-05-13 18:01:34.969000'),
(121, NULL, 'hu', 'hu', 'gh', '0178933342', 'f@gmail.com', 'yrtrr', 'Mymensingh', '', '25944', '2024-05-13 18:02:30.020000', '2024-05-13 18:02:30.020000', NULL, NULL, '[{\"price\": \"120000\", \"quantity\": \"4\", \"productName\": \"Q bot v6\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 480050}]', '\n      Order Summary:\n      \n      Product Name: Q bot v6\n      \n      \nProduct Price: 120000৳\n      \n      \nProduct Quantity: 4\n      \n      Delivery Fee: 50৳\n      Total Payment: 480050৳', 0, '2024-05-13 18:02:30.016000'),
(122, NULL, 'de', 'de', 'de', '01794649551', 'city.abdullah165608@gmail.com', 's', 'Dhaka City', '', '03401', '2024-05-13 18:03:38.346000', '2024-05-13 18:03:38.346000', NULL, NULL, '[{\"price\": \"100000,120000,150000\", \"quantity\": \"1,1,1\", \"productName\": \"Visual acuity,Q ad,Q bot\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 100050}]', '\n      Order Summary:\n      \n      Product Name: Visual acuity,Q ad,Q bot\n      \n      \nProduct Price: 100000,120000,150000৳\n      \n      \nProduct Quantity: 1,1,1\n      \n      Delivery Fee: 50৳\n      Total Payment: 100050৳', 0, '2024-05-13 18:03:38.340000'),
(123, NULL, 'h', 'h', 'h', '43543543', 's1@gmail.com', 'ccw', 'Mymensingh', 'fgf', '20789', '2024-05-13 18:07:25.387000', '2024-05-13 18:07:25.387000', NULL, NULL, '[{\"price\": \"150000,20000,120000\", \"quantity\": \"2,2,1\", \"productName\": \"Q bot,Digital  Locker,Q ad\"}, {\"TotalPrice\": 300050}]', '\nOrder Summary:\n\nProduct Name: Q bot,Digital  Locker,Q ad\n\n\nProduct Price: 150000,20000,120000৳\n\n\nProduct Quantity: 2,2,1\n\nDelivery Fee: 50৳\nTotal Payment: 300050৳', 0, '2024-05-13 18:07:25.384000'),
(124, NULL, 'ju', 'ju', 'utoora', '0178933342', 's@gmail.com', 'yrtrr', 'Mymensingh', 'gfg', '69470', '2024-05-13 18:09:56.004000', '2024-05-13 18:09:56.004000', NULL, NULL, '[{\"price\": \"120000,140000\", \"quantity\": \"1,1\", \"productName\": \"Q ad,Q bot v7\"}, {\"TotalPrice\": 120050}]', '\nOrder Summary:\n\nProduct Name: Q ad,Q bot v7\n\n\nProduct Price: 120000,140000৳\n\n\nProduct Quantity: 1,1\n\nDelivery Fee: 50৳\nTotal Payment: 120050৳', 0, '2024-05-13 18:09:55.993000'),
(127, NULL, 'jin', 'nadim', 's', '01789333422', 'city.abdullah165608@gmail.com', 's', 'Dhaka City', 'sds', '83174', '2024-05-13 18:14:12.640000', '2024-05-13 18:14:12.640000', NULL, NULL, '[{\"price\": \"150000,120000\", \"quantity\": \"2,2\", \"productName\": \"Q bot,Q ad\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 300050}]', '\nOrder Summary:\nProduct Name: Q bot,Q ad\n  Product Price: 150000,120000৳\n  Product Quantity: 2,2\nDelivery Fee: 50৳\nTotal Payment: 300050৳', 0, '2024-05-13 18:14:12.639000'),
(131, NULL, 'ab', 'rahman', 'uttora', '01798333333', 'ss@gmail.com', 'dhaka', '', '', '07489', '2024-05-14 10:18:04.492000', '2024-05-14 16:24:21.264000', NULL, 1, '[{\"price\": \"100000\", \"quantity\": \"6\", \"productName\": \"Visual acuity\"}, {\"price\": \"150000\", \"quantity\": \"2\", \"productName\": \"Q bot\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 900050}]', '\nOrder Summary:\n\n    Product Name: Visual acuity\n    Product Price: 100000৳\n    Product Quantity: 6\n  \n\n    Product Name: Q bot\n    Product Price: 150000৳\n    Product Quantity: 2\n  \nDelivery Fee: 50৳\nTotal Payment: 900050৳', 1, '2024-05-14 10:18:04.491000'),
(143, NULL, 'abdullah', 'rahman', 'uttora', '01789675667', 'jadu@gmail.com', '', '', '', '46133', '2024-05-21 10:39:49.537000', '2024-05-21 10:39:49.537000', NULL, NULL, '[{\"price\": \"150000\", \"quantity\": \"2\", \"productName\": \"Q bot\"}, {\"price\": \"122334\", \"quantity\": \"68\", \"productName\": \"Q bot v4\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 8618762}]', '\nOrder Summary:\n\n    Product Name: Q bot\n    Product Price: 150000৳\n    Product Quantity: 2\n  \n\n    Product Name: Q bot v4\n    Product Price: 122334৳\n    Product Quantity: 68\n  \nDelivery Fee: 50৳\nTotal Payment: 8618762৳', 0, '2024-05-21 10:39:49.531000'),
(157, NULL, 'abdur', 'rahman', 'fghfg', '01794649550', 'test123@gmail.com', 'DHAKAe', 'Dhaka City', '', '79166', '2024-05-21 19:33:21.405000', '2024-05-21 19:33:21.405000', NULL, NULL, '[{\"price\": \"150000\", \"quantity\": \"4\", \"productName\": \"Q bot v5\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 600050}]', '\nOrder Summary:\nProduct Name: Q bot v5\n  Product Price: 150000৳\n  Product Quantity: 4\nDelivery Fee: 50৳\nTotal Payment: 600050৳', 0, '2024-05-21 19:33:21.402000'),
(158, NULL, 'ftgfdg', 'fgfdg', 'fgfdg', '01714241342', 'test123@gmail.com', '', '', '', '35206', '2024-05-21 19:34:15.119000', '2024-05-21 19:34:15.119000', NULL, NULL, '[{\"price\": \"150000\", \"quantity\": \"4\", \"productName\": \"Q bot v5\"}, {\"price\": 50, \"deliveryType\": \"Home Delivery\"}, {\"TotalPrice\": 600050}]', '\nOrder Summary:\nProduct Name: Q bot v5\n  Product Price: 150000৳\n  Product Quantity: 4\nDelivery Fee: 50৳\nTotal Payment: 600050৳', 0, '2024-05-21 19:34:15.116000');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `page` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `title`, `content`, `page`, `slug`) VALUES
(1, '2024-03-06 21:13:21.760000', '2024-03-08 08:59:19.890000', '2024-03-06 21:13:23.008000', 1, 1, 'this is testing ', 'this is testing', 'page', 'testing'),
(3, '2024-03-07 14:40:52.924000', '2024-03-08 09:00:54.063000', '2024-03-07 14:40:55.340000', 1, 1, 'lasting ', 'lasting ', NULL, 'lasting'),
(4, '2024-03-07 22:49:33.941000', '2024-03-07 22:49:34.970000', '2024-03-07 22:49:34.952000', 1, 1, 'Basting', 'this is basting', NULL, 'basting');

-- --------------------------------------------------------

--
-- Table structure for table `pages_components`
--

CREATE TABLE `pages_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages_components`
--

INSERT INTO `pages_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 17, 'content.content', 'hero', 1),
(12, 3, 20, 'content.content', 'hero', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_navbar_links`
--

CREATE TABLE `pages_navbar_links` (
  `id` int UNSIGNED NOT NULL,
  `page_id` int UNSIGNED DEFAULT NULL,
  `navbarmenu_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productive_offices`
--

CREATE TABLE `productive_offices` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productive_offices`
--

INSERT INTO `productive_offices` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2024-03-05 11:34:18.485000', '2024-03-05 11:43:35.376000', '2024-03-05 11:34:20.255000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productive_offices_components`
--

CREATE TABLE `productive_offices_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productive_offices_components`
--

INSERT INTO `productive_offices_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 16, 'content.content', 'hero', 10),
(3, 1, 5, 'content.element', 'element', 1),
(5, 1, 6, 'content.element', 'element', 2),
(10, 1, 1, 'content.blog', 'blog', 1),
(11, 1, 2, 'content.blog', 'blog', 2),
(15, 1, 3, 'content.blog', 'blog', 3),
(21, 1, 4, 'content.blog', 'blog', 4),
(22, 1, 5, 'content.blog', 'blog', 5),
(37, 1, 6, 'content.blog', 'blog', 6),
(46, 1, 7, 'content.blog', 'blog', 7),
(56, 1, 8, 'content.blog', 'blog', 8);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `product_code` int DEFAULT NULL,
  `previous_price` int DEFAULT NULL,
  `stock_product` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `title`, `desc`, `price`, `status`, `product_code`, `previous_price`, `stock_product`) VALUES
(1, '2024-03-19 20:08:36.016000', '2024-05-21 12:32:59.156000', '2024-03-19 20:08:39.296000', 1, 1, 'Q bot', 'A queue management system is a technological solution that streamlines the customers’ queuing experience and controls the flow of people in your service facility or business', 150000.00, 'In stock', 26711, 170000, 100),
(2, '2024-03-19 20:11:16.081000', '2024-05-20 23:46:21.901000', '2024-03-19 20:11:17.450000', 1, 1, 'Visual acuity', 'Display advertising is a type of advertising that helps you visually showcase your brand or product on various online platforms', 100000.00, 'In stock', 215, 120000, 60),
(3, '2024-03-19 20:13:37.703000', '2024-05-21 12:29:49.725000', '2024-03-19 20:14:26.675000', 1, 1, 'Q ad', 'Digital Signage (Qad) is a product of Transworld Mercantile Corporation that uses digital displays to showcase multimedia content in public spaces. ', 120000.00, 'In stock', 4444, 120000, 48),
(4, '2024-03-22 06:44:00.448000', '2024-05-20 23:47:23.938000', '2024-03-22 06:44:01.647000', 1, 1, 'Kiosk', 'Kiosk devices are normally used as self-check-in and self-service kiosks, digital signage kiosks, or self-operated mobile point of sale (mPOS) systems.', 150000.00, 'In stock', 2671, 120000, 45),
(5, '2024-04-18 23:47:17.548000', '2024-05-21 11:22:30.934000', '2024-04-18 23:47:28.337000', 1, 1, 'Digital  Locker', 'Deli 4116 Fingerprint & Digital Safe Box / Locker / Vault', 20000.00, 'In stock', 55555, 120000, 57),
(6, '2024-04-18 23:52:30.360000', '2024-05-20 23:48:40.380000', '2024-04-18 23:52:31.401000', 1, 1, 'Server & Storage', 'HPE ProLiant MicroServer Gen10 Plus v2 Ultra Micro Tower Server', 200000.00, 'In stock', 4323, 120000, 60),
(7, '2024-04-20 11:56:51.034000', '2024-05-20 23:49:01.036000', '2024-04-20 11:56:52.661000', 1, 1, 'Q pod', 'With Q-pod management solutions, deployers can monitor their kiosks, update kiosk content and configurations, view health and usage statistics, and more.', 115656.00, 'In stock', 21333, 120000, 60),
(9, '2024-04-29 23:49:02.266000', '2024-05-21 10:45:20.122000', '2024-04-29 23:49:04.476000', 1, 1, 'Q bot  v3', 'KIOSK brings automation to life, transforming operational efficiency and elevating daily customer experiences. We streamline complete and connected solutions', 120000.00, 'In stock', 215116, 120000, 54),
(10, '2024-04-30 16:37:55.834000', '2024-05-21 10:45:12.112000', '2024-04-30 16:37:59.475000', 1, 1, 'Q bot v4', 'KIOSK brings automation to life, transforming operational efficiency and elevating daily customer experiences. We streamline complete and connected solutions', 122334.00, 'Out of stock', 1212, 120000, 0),
(11, '2024-05-04 17:12:27.288000', '2024-05-21 19:31:33.933000', '2024-05-04 17:12:30.354000', 1, 1, 'Q bot v5', 'KIOSK brings automation to life, transforming operational efficiency and elevating daily customer experiences. We streamline complete and connected solution', 150000.00, 'Out of stock', 215116, 120000, 56),
(12, '2024-05-12 23:48:49.186000', '2024-05-21 08:35:45.675000', '2024-05-12 23:51:11.591000', 1, 1, 'Q bot v6', 'KIOSK brings automation to life, transforming operational efficiency and elevating daily customer experiences. We streamline complete and connected solutions', 120000.00, 'In stock', 26711, 170000, 0),
(13, '2024-05-12 23:53:02.998000', '2024-05-20 23:45:25.792000', '2024-05-12 23:53:05.731000', 1, 1, 'Q bot v7', 'KIOSK brings automation to life, transforming operational efficiency and elevating daily customer experiences. We streamline complete and connected solutions', 140000.00, 'In stock', 33891, 120000, 45);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_links`
--

CREATE TABLE `products_categories_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `category_order` double UNSIGNED DEFAULT NULL,
  `product_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products_categories_links`
--

INSERT INTO `products_categories_links` (`id`, `product_id`, `category_id`, `category_order`, `product_order`) VALUES
(2, 2, 2, 1, 1),
(3, 3, 3, 1, 1),
(5, 5, 5, 1, 1),
(34, 6, 6, 1, 1),
(35, 4, 4, 1, 1),
(36, 7, 8, 1, 1),
(37, 1, 1, 1, 1),
(54, 1, 9, 2, 1),
(57, 1, 11, 3, 1),
(59, 9, 11, 1, 2),
(61, 9, 10, 2, 1),
(63, 1, 10, 4, 2),
(65, 10, 11, 2, 3),
(66, 10, 9, 1, 2),
(67, 11, 10, 2, 3),
(68, 11, 9, 1, 3),
(69, 1, 12, 5, 1),
(70, 1, 13, 6, 0),
(73, 12, 10, 2, 4),
(74, 12, 9, 1, 4),
(75, 13, 12, 2, 2),
(76, 13, 10, 1, 5),
(77, 13, 9, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products_components`
--

CREATE TABLE `products_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products_components`
--

INSERT INTO `products_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'product.key-features', 'key_Features', 2),
(2, 1, 1, 'product.description', 'Description', 1),
(3, 5, 2, 'product.key-features', 'key_Features', 2),
(4, 5, 2, 'product.description', 'Description', 1),
(6, 1, 3, 'product.description', 'Description', 2),
(21, 9, 4, 'product.key-features', 'key_Features', 1),
(22, 9, 5, 'product.description', 'Description', 1),
(38, 2, 5, 'product.key-features', 'key_Features', 1),
(39, 2, 6, 'product.description', 'Description', 1),
(40, 3, 6, 'product.key-features', 'key_Features', 1),
(41, 3, 7, 'product.description', 'Description', 1),
(42, 4, 7, 'product.key-features', 'key_Features', 1),
(43, 4, 8, 'product.description', 'Description', 1),
(47, 5, 9, 'product.description', 'Description', 2),
(49, 6, 8, 'product.key-features', 'key_Features', 1),
(50, 6, 10, 'product.description', 'Description', 1),
(51, 7, 9, 'product.key-features', 'key_Features', 1),
(52, 7, 11, 'product.description', 'Description', 1),
(83, 10, 10, 'product.key-features', 'key_Features', 1),
(84, 10, 12, 'product.description', 'Description', 1),
(100, 11, 11, 'product.key-features', 'key_Features', 1),
(101, 11, 13, 'product.description', 'Description', 1),
(161, 12, 12, 'product.key-features', 'key_Features', 1),
(162, 12, 14, 'product.description', 'Description', 1),
(163, 13, 13, 'product.key-features', 'key_Features', 1),
(164, 13, 15, 'product.description', 'Description', 1);

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `first_name`, `last_name`, `email_address`, `password`) VALUES
(1, 'register-user', '2024-03-22 11:18:04.763000', '2024-03-22 11:18:08.336000', '2024-03-22 11:18:08.321000', 1, 1, 'abdullah', 'rahman', 'test@gmail.com', '$2a$10$Yp1FFWg1uzQuxJYvJ4mWXOrnvT/eTw6xlxuZVwUqzep6PvZJveJqy'),
(2, NULL, '2024-03-22 11:56:42.143000', '2024-03-22 11:56:42.143000', '2024-03-22 11:56:42.141000', NULL, NULL, 'san', NULL, NULL, NULL),
(3, NULL, '2024-03-22 11:58:46.456000', '2024-03-22 11:58:46.456000', '2024-03-22 11:58:46.453000', NULL, NULL, 'sn', 'on', 'san@gmail.com', NULL),
(4, NULL, '2024-03-22 12:00:51.669000', '2024-03-22 12:09:37.050000', '2024-03-22 12:00:51.661000', NULL, 1, 'fgfdg', 'gretret', 'hh@gmail.com', '$2a$10$nAxs7JyJPx1mlcslx/tf4.c9ze9bu8LBhDmwpfpsgiwiMYHqDz1nm'),
(5, NULL, '2024-03-22 12:06:28.845000', '2024-03-22 12:06:28.845000', '2024-03-22 12:06:28.840000', NULL, NULL, 'testing', 'hello', 'h@gmail.com', NULL),
(6, NULL, '2024-03-22 12:11:02.203000', '2024-03-22 12:11:02.203000', '2024-03-22 12:11:02.019000', NULL, NULL, 'hel', 'mel', '7@gmail.com', '$2a$10$WQPYU43XC1bnT2ssX6LpDOnG2uTJVWVv8hA5BR6bCY/NHqgobQPdC'),
(7, NULL, '2024-03-22 12:17:05.000000', '2024-03-22 12:17:05.000000', '2024-03-22 12:17:04.895000', NULL, NULL, 'samta', 'namta', 'ffgf@gmail.com', '$2a$10$CgIV980RuCy7H6cjxWrodO5mPlGf.eaFnyPrpQNmjucScRR9BEAKK'),
(8, NULL, '2024-03-22 12:19:16.763000', '2024-03-22 12:19:16.763000', '2024-03-22 12:19:16.691000', NULL, NULL, 'htuyt', 'hjhgj', 'ff@gmail.com', '$2a$10$xvs9ce.JENQ8C2irrdIBi.VI2uodQW8pHGshvwxzxKFLW0pDIE9Oa'),
(9, NULL, '2024-03-29 08:14:27.720000', '2024-03-29 08:14:27.720000', '2024-03-29 08:14:27.625000', NULL, NULL, 'r', 'r', 'r@gmail.com', '$2a$10$ONVrBWOI9/IdOqdm07ugw.anZgWJajo07GjZyWHHKNwiDh8PON.hm');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `footer`) VALUES
(1, '2024-02-28 13:22:31.188000', '2024-03-09 19:45:30.955000', '2024-02-28 13:22:58.831000', 1, 1, 'Copyright © 2024 Hidayah Smart Solutions. All Rights Reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `services_components`
--

CREATE TABLE `services_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services_components`
--

INSERT INTO `services_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 5, 'content.content', 'hero', 1),
(2, 1, 9, 'card-content.card', 'card', 1),
(3, 1, 10, 'card-content.card', 'card', 2),
(4, 1, 11, 'card-content.card', 'card', 3),
(6, 1, 12, 'card-content.card', 'card', 4);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `api_token_permission_id` int UNSIGNED DEFAULT NULL,
  `api_token_id` int UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release-action\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release-action\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::about-us.about-us\":{\"kind\":\"collectionType\",\"collectionName\":\"about_uses\",\"info\":{\"singularName\":\"about-us\",\"pluralName\":\"about-uses\",\"displayName\":\"About \",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"content\":{\"displayName\":\"content\",\"type\":\"component\",\"repeatable\":true,\"component\":\"content.content\"},\"hero1\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.hero\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"about_uses\",\"info\":{\"singularName\":\"about-us\",\"pluralName\":\"about-uses\",\"displayName\":\"About \",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"content\":{\"displayName\":\"content\",\"type\":\"component\",\"repeatable\":true,\"component\":\"content.content\"},\"hero1\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.hero\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"about-us\",\"connection\":\"default\",\"uid\":\"api::about-us.about-us\",\"apiName\":\"about-us\",\"globalId\":\"AboutUs\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"img\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"img\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::contact.contact\":{\"kind\":\"collectionType\",\"collectionName\":\"contacts\",\"info\":{\"singularName\":\"contact\",\"pluralName\":\"contacts\",\"displayName\":\"contact\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"Name\":{\"type\":\"string\",\"required\":true},\"Email\":{\"type\":\"email\",\"required\":true},\"Subject\":{\"type\":\"text\"},\"Message\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"contacts\",\"info\":{\"singularName\":\"contact\",\"pluralName\":\"contacts\",\"displayName\":\"contact\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"Name\":{\"type\":\"string\",\"required\":true},\"Email\":{\"type\":\"email\",\"required\":true},\"Subject\":{\"type\":\"text\"},\"Message\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"contact\",\"connection\":\"default\",\"uid\":\"api::contact.contact\",\"apiName\":\"contact\",\"globalId\":\"Contact\",\"actions\":{},\"lifecycles\":{}},\"api::contact-info.contact-info\":{\"kind\":\"singleType\",\"collectionName\":\"contact_infos\",\"info\":{\"singularName\":\"contact-info\",\"pluralName\":\"contact-infos\",\"displayName\":\"Contact_info\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"contact\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"contact.contact\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"contact_infos\",\"info\":{\"singularName\":\"contact-info\",\"pluralName\":\"contact-infos\",\"displayName\":\"Contact_info\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"contact\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"contact.contact\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"contact-info\",\"connection\":\"default\",\"uid\":\"api::contact-info.contact-info\",\"apiName\":\"contact-info\",\"globalId\":\"ContactInfo\",\"actions\":{},\"lifecycles\":{}},\"api::destination-page.destination-page\":{\"kind\":\"collectionType\",\"collectionName\":\"destination_pages\",\"info\":{\"singularName\":\"destination-page\",\"pluralName\":\"destination-pages\",\"displayName\":\"Destination page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"Home\":{\"displayName\":\"Home\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.home\"},\"Hero\":{\"displayName\":\"Hero\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.hero\"},\"Blog\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.blog\"},\"services\":{\"displayName\":\"services\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.services\"},\"pool\":{\"displayName\":\"pool\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.pool\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"destination_pages\",\"info\":{\"singularName\":\"destination-page\",\"pluralName\":\"destination-pages\",\"displayName\":\"Destination page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"Home\":{\"displayName\":\"Home\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.home\"},\"Hero\":{\"displayName\":\"Hero\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.hero\"},\"Blog\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.blog\"},\"services\":{\"displayName\":\"services\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.services\"},\"pool\":{\"displayName\":\"pool\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.pool\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"destination-page\",\"connection\":\"default\",\"uid\":\"api::destination-page.destination-page\",\"apiName\":\"destination-page\",\"globalId\":\"DestinationPage\",\"actions\":{},\"lifecycles\":{}},\"api::dynamic-page.dynamic-page\":{\"kind\":\"collectionType\",\"collectionName\":\"dynamic_pages\",\"info\":{\"singularName\":\"dynamic-page\",\"pluralName\":\"dynamic-pages\",\"displayName\":\"dynamicPage\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"hero\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.content\"},\"features\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"},\"productDescription\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.blog\"},\"title\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"dynamic_pages\",\"info\":{\"singularName\":\"dynamic-page\",\"pluralName\":\"dynamic-pages\",\"displayName\":\"dynamicPage\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"hero\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.content\"},\"features\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"},\"productDescription\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.blog\"},\"title\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"dynamic-page\",\"connection\":\"default\",\"uid\":\"api::dynamic-page.dynamic-page\",\"apiName\":\"dynamic-page\",\"globalId\":\"DynamicPage\",\"actions\":{},\"lifecycles\":{}},\"api::home.home\":{\"kind\":\"collectionType\",\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"home\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"slider\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"heading\":{\"type\":\"string\"},\"subheading\":{\"type\":\"text\"},\"card\":{\"displayName\":\"card\",\"type\":\"component\",\"repeatable\":true,\"component\":\"card-content.card\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"footer\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"home\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"slider\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"heading\":{\"type\":\"string\"},\"subheading\":{\"type\":\"text\"},\"card\":{\"displayName\":\"card\",\"type\":\"component\",\"repeatable\":true,\"component\":\"card-content.card\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"footer\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"home\",\"connection\":\"default\",\"uid\":\"api::home.home\",\"apiName\":\"home\",\"globalId\":\"Home\",\"actions\":{},\"lifecycles\":{}},\"api::ip-telephone-service.ip-telephone-service\":{\"kind\":\"singleType\",\"collectionName\":\"ip_telephone_services\",\"info\":{\"singularName\":\"ip-telephone-service\",\"pluralName\":\"ip-telephone-services\",\"displayName\":\"Ip Telephone Service\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"feature\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.element\"},\"package\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"ip_telephone_services\",\"info\":{\"singularName\":\"ip-telephone-service\",\"pluralName\":\"ip-telephone-services\",\"displayName\":\"Ip Telephone Service\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"feature\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.element\"},\"package\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"ip-telephone-service\",\"connection\":\"default\",\"uid\":\"api::ip-telephone-service.ip-telephone-service\",\"apiName\":\"ip-telephone-service\",\"globalId\":\"IpTelephoneService\",\"actions\":{},\"lifecycles\":{}},\"api::landing-page.landing-page\":{\"kind\":\"collectionType\",\"collectionName\":\"landing_pages\",\"info\":{\"singularName\":\"landing-page\",\"pluralName\":\"landing-pages\",\"displayName\":\"Landing Page\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"heading\":{\"type\":\"string\"},\"hero\":{\"displayName\":\"Hero\",\"type\":\"component\",\"repeatable\":false,\"component\":\"content.hero\"},\"content\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"card\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"card-content.card\"},\"hero1\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.hero\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true},\"footer\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"landing_pages\",\"info\":{\"singularName\":\"landing-page\",\"pluralName\":\"landing-pages\",\"displayName\":\"Landing Page\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"heading\":{\"type\":\"string\"},\"hero\":{\"displayName\":\"Hero\",\"type\":\"component\",\"repeatable\":false,\"component\":\"content.hero\"},\"content\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"card\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"card-content.card\"},\"hero1\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.hero\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true},\"footer\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"landing-page\",\"connection\":\"default\",\"uid\":\"api::landing-page.landing-page\",\"apiName\":\"landing-page\",\"globalId\":\"LandingPage\",\"actions\":{},\"lifecycles\":{}},\"api::lucent-chart.lucent-chart\":{\"kind\":\"singleType\",\"collectionName\":\"lucent_charts\",\"info\":{\"singularName\":\"lucent-chart\",\"pluralName\":\"lucent-charts\",\"displayName\":\"lucentChart\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"heading\":{\"type\":\"text\"},\"video\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"files\",\"videos\",\"images\",\"audios\"]},\"element1\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"element2\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"},\"conclusionPart\":{\"type\":\"string\"},\"logo\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"introductionpart\":{\"type\":\"string\"},\"footer\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"lucent_charts\",\"info\":{\"singularName\":\"lucent-chart\",\"pluralName\":\"lucent-charts\",\"displayName\":\"lucentChart\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"heading\":{\"type\":\"text\"},\"video\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"files\",\"videos\",\"images\",\"audios\"]},\"element1\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"element2\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"},\"conclusionPart\":{\"type\":\"string\"},\"logo\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"introductionpart\":{\"type\":\"string\"},\"footer\":{\"type\":\"string\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"lucent-chart\",\"connection\":\"default\",\"uid\":\"api::lucent-chart.lucent-chart\",\"apiName\":\"lucent-chart\",\"globalId\":\"LucentChart\",\"actions\":{},\"lifecycles\":{}},\"api::navbar-menu.navbar-menu\":{\"kind\":\"collectionType\",\"collectionName\":\"navbar_menus\",\"info\":{\"singularName\":\"navbar-menu\",\"pluralName\":\"navbar-menus\",\"displayName\":\"navbar_menu\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"string\"},\"page\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::page.page\"},\"test\":{\"type\":\"text\"},\"dynamic_page\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::dynamic-page.dynamic-page\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"navbar_menus\",\"info\":{\"singularName\":\"navbar-menu\",\"pluralName\":\"navbar-menus\",\"displayName\":\"navbar_menu\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"string\"},\"page\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::page.page\"},\"test\":{\"type\":\"text\"},\"dynamic_page\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::dynamic-page.dynamic-page\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"navbar-menu\",\"connection\":\"default\",\"uid\":\"api::navbar-menu.navbar-menu\",\"apiName\":\"navbar-menu\",\"globalId\":\"NavbarMenu\",\"actions\":{},\"lifecycles\":{}},\"api::navbarmenu.navbarmenu\":{\"kind\":\"collectionType\",\"collectionName\":\"navbarmenus\",\"info\":{\"singularName\":\"navbarmenu\",\"pluralName\":\"navbarmenus\",\"displayName\":\"navbar\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"name\":{\"type\":\"string\"},\"navbar_menus\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::navbar-menu.navbar-menu\"},\"dynamic_page\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::dynamic-page.dynamic-page\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"navbarmenus\",\"info\":{\"singularName\":\"navbarmenu\",\"pluralName\":\"navbarmenus\",\"displayName\":\"navbar\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"name\":{\"type\":\"string\"},\"navbar_menus\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::navbar-menu.navbar-menu\"},\"dynamic_page\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::dynamic-page.dynamic-page\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"navbarmenu\",\"connection\":\"default\",\"uid\":\"api::navbarmenu.navbarmenu\",\"apiName\":\"navbarmenu\",\"globalId\":\"Navbarmenu\",\"actions\":{},\"lifecycles\":{}},\"api::order-report.order-report\":{\"kind\":\"collectionType\",\"collectionName\":\"order_reports\",\"info\":{\"singularName\":\"order-report\",\"pluralName\":\"order-reports\",\"displayName\":\"OrderReport\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"FirstName\":{\"type\":\"string\"},\"LastName\":{\"type\":\"string\"},\"Address\":{\"type\":\"string\"},\"Mobile\":{\"type\":\"string\"},\"Email\":{\"type\":\"email\"},\"City\":{\"type\":\"string\"},\"Zone\":{\"type\":\"string\"},\"Comment\":{\"type\":\"text\"},\"orderId\":{\"type\":\"uid\",\"options\":{\"uuid-format\":\"^[0-9]{5}$\"},\"customField\":\"plugin::strapi-advanced-uuid.uuid\"},\"OrderList\":{\"type\":\"json\"},\"OrderItem\":{\"type\":\"text\"},\"ConfirmOrder\":{\"type\":\"boolean\",\"default\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"order_reports\",\"info\":{\"singularName\":\"order-report\",\"pluralName\":\"order-reports\",\"displayName\":\"OrderReport\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"FirstName\":{\"type\":\"string\"},\"LastName\":{\"type\":\"string\"},\"Address\":{\"type\":\"string\"},\"Mobile\":{\"type\":\"string\"},\"Email\":{\"type\":\"email\"},\"City\":{\"type\":\"string\"},\"Zone\":{\"type\":\"string\"},\"Comment\":{\"type\":\"text\"},\"orderId\":{\"type\":\"customField\",\"options\":{\"uuid-format\":\"^[0-9]{5}$\"},\"customField\":\"plugin::strapi-advanced-uuid.uuid\"},\"OrderList\":{\"type\":\"json\"},\"OrderItem\":{\"type\":\"text\"},\"ConfirmOrder\":{\"type\":\"boolean\",\"default\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order-report\",\"connection\":\"default\",\"uid\":\"api::order-report.order-report\",\"apiName\":\"order-report\",\"globalId\":\"OrderReport\",\"actions\":{},\"lifecycles\":{}},\"api::page.page\":{\"kind\":\"collectionType\",\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"page\":{\"type\":\"uid\"},\"hero\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.content\"},\"navbar\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::navbarmenu.navbarmenu\"},\"title\":{\"type\":\"string\"},\"content\":{\"type\":\"text\"},\"slug\":{\"type\":\"uid\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"page\":{\"type\":\"uid\"},\"hero\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"content.content\"},\"navbar\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::navbarmenu.navbarmenu\"},\"title\":{\"type\":\"string\"},\"content\":{\"type\":\"text\"},\"slug\":{\"type\":\"uid\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"page\",\"connection\":\"default\",\"uid\":\"api::page.page\",\"apiName\":\"page\",\"globalId\":\"Page\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"desc\":{\"type\":\"string\"},\"img\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"price\":{\"type\":\"decimal\"},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"Out of stock\",\"In stock\"]},\"product_code\":{\"type\":\"integer\"},\"previous_price\":{\"type\":\"integer\"},\"key_Features\":{\"displayName\":\"key_features\",\"type\":\"component\",\"repeatable\":false,\"component\":\"product.key-features\"},\"Description\":{\"displayName\":\"Description\",\"type\":\"component\",\"repeatable\":true,\"component\":\"product.description\"},\"stock_product\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"desc\":{\"type\":\"string\"},\"img\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"price\":{\"type\":\"decimal\"},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"Out of stock\",\"In stock\"]},\"product_code\":{\"type\":\"integer\"},\"previous_price\":{\"type\":\"integer\"},\"key_Features\":{\"displayName\":\"key_features\",\"type\":\"component\",\"repeatable\":false,\"component\":\"product.key-features\"},\"Description\":{\"displayName\":\"Description\",\"type\":\"component\",\"repeatable\":true,\"component\":\"product.description\"},\"stock_product\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"api::productive-office.productive-office\":{\"kind\":\"singleType\",\"collectionName\":\"productive_offices\",\"info\":{\"singularName\":\"productive-office\",\"pluralName\":\"productive-offices\",\"displayName\":\"productive Office\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"element\":{\"displayName\":\"element\",\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"},\"blog\":{\"displayName\":\"blog\",\"type\":\"component\",\"repeatable\":true,\"component\":\"content.blog\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"productive_offices\",\"info\":{\"singularName\":\"productive-office\",\"pluralName\":\"productive-offices\",\"displayName\":\"productive Office\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"element\":{\"displayName\":\"element\",\"type\":\"component\",\"repeatable\":true,\"component\":\"content.element\"},\"blog\":{\"displayName\":\"blog\",\"type\":\"component\",\"repeatable\":true,\"component\":\"content.blog\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"productive-office\",\"connection\":\"default\",\"uid\":\"api::productive-office.productive-office\",\"apiName\":\"productive-office\",\"globalId\":\"ProductiveOffice\",\"actions\":{},\"lifecycles\":{}},\"api::register-user.register-user\":{\"kind\":\"collectionType\",\"collectionName\":\"register_users\",\"info\":{\"singularName\":\"register-user\",\"pluralName\":\"register-users\",\"displayName\":\"RegisterUser\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"FirstName\":{\"type\":\"string\"},\"LastName\":{\"type\":\"string\"},\"EmailAddress\":{\"type\":\"email\"},\"Password\":{\"type\":\"password\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"register_users\",\"info\":{\"singularName\":\"register-user\",\"pluralName\":\"register-users\",\"displayName\":\"RegisterUser\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"slug\":{\"type\":\"uid\"},\"FirstName\":{\"type\":\"string\"},\"LastName\":{\"type\":\"string\"},\"EmailAddress\":{\"type\":\"email\"},\"Password\":{\"type\":\"password\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"register-user\",\"connection\":\"default\",\"uid\":\"api::register-user.register-user\",\"apiName\":\"register-user\",\"globalId\":\"RegisterUser\",\"actions\":{},\"lifecycles\":{}},\"api::service.service\":{\"kind\":\"collectionType\",\"collectionName\":\"services\",\"info\":{\"singularName\":\"service\",\"pluralName\":\"services\",\"displayName\":\"service\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"card\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"card-content.card\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"footer\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"services\",\"info\":{\"singularName\":\"service\",\"pluralName\":\"services\",\"displayName\":\"service\",\"description\":\"\"},\"options\":{\"privateAttributes\":[\"id\",\"createdAt\",\"updatedAt\",\"publishedAt\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"content.content\"},\"card\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"card-content.card\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"]},\"footer\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"service\",\"connection\":\"default\",\"uid\":\"api::service.service\",\"apiName\":\"service\",\"globalId\":\"Service\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"locale\":{\"edit\":{\"label\":\"locale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"locale\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"locale\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"locale\",\"size\":6},{\"name\":\"release\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(17, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(18, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(19, 'plugin_upload_metrics', '{\"weeklySchedule\":\"8 2 13 * * 4\",\"lastWeeklyUpdate\":1715842928130}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(21, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(22, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(23, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(24, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_components::shared.meta-social', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"socialNetwork\":{\"edit\":{\"label\":\"socialNetwork\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socialNetwork\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"socialNetwork\",\"title\",\"description\"],\"edit\":[[{\"name\":\"socialNetwork\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"image\",\"size\":6}]]},\"uid\":\"shared.meta-social\",\"isComponent\":true}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(26, 'plugin_content_manager_configuration_components::shared.seo', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"metaImage\":{\"edit\":{\"label\":\"metaImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaImage\",\"searchable\":false,\"sortable\":false}},\"metaSocial\":{\"edit\":{\"label\":\"metaSocial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaSocial\",\"searchable\":false,\"sortable\":false}},\"keywords\":{\"edit\":{\"label\":\"keywords\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keywords\",\"searchable\":true,\"sortable\":true}},\"metaRobots\":{\"edit\":{\"label\":\"metaRobots\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaRobots\",\"searchable\":true,\"sortable\":true}},\"structuredData\":{\"edit\":{\"label\":\"structuredData\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"structuredData\",\"searchable\":false,\"sortable\":false}},\"metaViewport\":{\"edit\":{\"label\":\"metaViewport\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaViewport\",\"searchable\":true,\"sortable\":true}},\"canonicalURL\":{\"edit\":{\"label\":\"canonicalURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"canonicalURL\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"metaImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"metaImage\",\"size\":6}],[{\"name\":\"metaSocial\",\"size\":12}],[{\"name\":\"keywords\",\"size\":6},{\"name\":\"metaRobots\",\"size\":6}],[{\"name\":\"structuredData\",\"size\":12}],[{\"name\":\"metaViewport\",\"size\":6},{\"name\":\"canonicalURL\",\"size\":6}]]},\"uid\":\"shared.seo\",\"isComponent\":true}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::home.home', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"slider\":{\"edit\":{\"label\":\"slider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slider\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"subheading\":{\"edit\":{\"label\":\"subheading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subheading\",\"searchable\":true,\"sortable\":true}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"slug\",\"size\":6}],[{\"name\":\"slider\",\"size\":6},{\"name\":\"heading\",\"size\":6}],[{\"name\":\"subheading\",\"size\":6}],[{\"name\":\"card\",\"size\":12}],[{\"name\":\"images\",\"size\":6},{\"name\":\"footer\",\"size\":6}]]},\"uid\":\"api::home.home\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::navbarmenu.navbarmenu', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"navbar_menus\":{\"edit\":{\"label\":\"navbar_menus\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"navbar_menus\",\"searchable\":false,\"sortable\":false}},\"dynamic_page\":{\"edit\":{\"label\":\"dynamic_page\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"dynamic_page\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"name\"],\"edit\":[[{\"name\":\"slug\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"navbar_menus\",\"size\":6},{\"name\":\"dynamic_page\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]},\"uid\":\"api::navbarmenu.navbarmenu\"}', 'object', NULL, NULL),
(29, 'plugin_seo_settings', '{\"api::home.home\":{\"collectionName\":\"home\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}},\"api::navbarmenu.navbarmenu\":{\"collectionName\":\"navbarmenu\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::navbar-menu.navbar-menu', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"page\":{\"edit\":{\"label\":\"page\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"page\",\"searchable\":true,\"sortable\":true}},\"test\":{\"edit\":{\"label\":\"test\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"test\",\"searchable\":true,\"sortable\":true}},\"dynamic_page\":{\"edit\":{\"label\":\"dynamic_page\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"dynamic_page\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"page\",\"size\":6},{\"name\":\"test\",\"size\":6}],[{\"name\":\"dynamic_page\",\"size\":6}]]},\"uid\":\"api::navbar-menu.navbar-menu\"}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_components::card-content.card', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"button\":{\"edit\":{\"label\":\"button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"button\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"button\",\"size\":6}]]},\"uid\":\"card-content.card\",\"isComponent\":true}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::contact.contact', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"Subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"Message\":{\"edit\":{\"label\":\"Message\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Message\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"slug\",\"size\":6},{\"name\":\"Name\",\"size\":6}],[{\"name\":\"Email\",\"size\":6},{\"name\":\"Subject\",\"size\":6}],[{\"name\":\"Message\",\"size\":6}]]},\"uid\":\"api::contact.contact\"}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::about-us.about-us', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"hero1\":{\"edit\":{\"label\":\"hero1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero1\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"content\",\"size\":12}],[{\"name\":\"hero1\",\"size\":12}]]},\"uid\":\"api::about-us.about-us\"}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_components::content.content', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"subheading\":{\"edit\":{\"label\":\"subheading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subheading\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"subheading\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"subheading\",\"size\":6}]]},\"uid\":\"content.content\",\"isComponent\":true}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_components::contact.contact', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"telephone\":{\"edit\":{\"label\":\"telephone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"telephone\",\"searchable\":true,\"sortable\":true}},\"mobile\":{\"edit\":{\"label\":\"mobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mobile\",\"searchable\":true,\"sortable\":true}},\"website\":{\"edit\":{\"label\":\"website\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"website\",\"searchable\":true,\"sortable\":true}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"address\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"address\",\"size\":6},{\"name\":\"telephone\",\"size\":6}],[{\"name\":\"website\",\"size\":6},{\"name\":\"mobile\",\"size\":6}],[{\"name\":\"footer\",\"size\":6}]]},\"uid\":\"contact.contact\",\"isComponent\":true}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::api::contact-info.contact-info', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"contact\":{\"edit\":{\"label\":\"contact\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contact\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"contact\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"contact\",\"size\":12}]]},\"uid\":\"api::contact-info.contact-info\"}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::landing-page.landing-page', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"hero\":{\"edit\":{\"label\":\"hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}},\"hero1\":{\"edit\":{\"label\":\"hero1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero1\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"heading\",\"size\":6}],[{\"name\":\"hero\",\"size\":12}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"card\",\"size\":12}],[{\"name\":\"hero1\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"footer\",\"size\":6}]]},\"uid\":\"api::landing-page.landing-page\"}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_components::content.hero', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"button\":{\"edit\":{\"label\":\"button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"button\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"button\",\"size\":6}]]},\"uid\":\"content.hero\",\"isComponent\":true}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::api::service.service', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"hero\":{\"edit\":{\"label\":\"hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero\",\"searchable\":false,\"sortable\":false}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"hero\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"hero\",\"size\":12}],[{\"name\":\"card\",\"size\":12}],[{\"name\":\"images\",\"size\":6},{\"name\":\"footer\",\"size\":6}]]},\"uid\":\"api::service.service\"}', 'object', NULL, NULL),
(52, 'plugin_content_manager_configuration_components::content.list', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"item\",\"defaultSortBy\":\"item\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"item\":{\"edit\":{\"label\":\"item\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"item\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"item\"],\"edit\":[[{\"name\":\"item\",\"size\":6}]]},\"uid\":\"content.list\",\"isComponent\":true}', 'object', NULL, NULL),
(53, 'plugin_content_manager_configuration_components::content.element', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"list\"],\"edit\":[[{\"name\":\"heading\",\"size\":6}],[{\"name\":\"list\",\"size\":12}]]},\"uid\":\"content.element\",\"isComponent\":true}', 'object', NULL, NULL),
(54, 'plugin_content_manager_configuration_components::content.blog', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"subheading\":{\"edit\":{\"label\":\"subheading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subheading\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"subheading\",\"image\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"subheading\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]},\"uid\":\"content.blog\",\"isComponent\":true}', 'object', NULL, NULL),
(55, 'plugin_content_manager_configuration_content_types::api::productive-office.productive-office', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"hero\":{\"edit\":{\"label\":\"hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero\",\"searchable\":false,\"sortable\":false}},\"element\":{\"edit\":{\"label\":\"element\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"element\",\"searchable\":false,\"sortable\":false}},\"blog\":{\"edit\":{\"label\":\"blog\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blog\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"hero\",\"element\",\"blog\"],\"edit\":[[{\"name\":\"hero\",\"size\":12}],[{\"name\":\"element\",\"size\":12}],[{\"name\":\"blog\",\"size\":12}]]},\"uid\":\"api::productive-office.productive-office\"}', 'object', NULL, NULL),
(56, 'plugin_content_manager_configuration_content_types::api::page.page', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"page\":{\"edit\":{\"label\":\"page\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"page\",\"searchable\":true,\"sortable\":true}},\"hero\":{\"edit\":{\"label\":\"hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero\",\"searchable\":false,\"sortable\":false}},\"navbar\":{\"edit\":{\"label\":\"navbar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"navbar\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"hero\",\"navbar\",\"page\"],\"edit\":[[{\"name\":\"hero\",\"size\":12}],[{\"name\":\"navbar\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"content\",\"size\":6},{\"name\":\"page\",\"size\":6}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"image\",\"size\":6}]]},\"uid\":\"api::page.page\"}', 'object', NULL, NULL),
(57, 'plugin_content_manager_configuration_content_types::api::ip-telephone-service.ip-telephone-service', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"hero\":{\"edit\":{\"label\":\"hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero\",\"searchable\":false,\"sortable\":false}},\"feature\":{\"edit\":{\"label\":\"feature\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"feature\",\"searchable\":false,\"sortable\":false}},\"package\":{\"edit\":{\"label\":\"package\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"package\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"hero\",\"feature\"],\"edit\":[[{\"name\":\"slug\",\"size\":6}],[{\"name\":\"hero\",\"size\":12}],[{\"name\":\"feature\",\"size\":12}],[{\"name\":\"package\",\"size\":12}]]},\"uid\":\"api::ip-telephone-service.ip-telephone-service\"}', 'object', NULL, NULL),
(58, 'plugin_content_manager_configuration_content_types::api::lucent-chart.lucent-chart', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"conclusionPart\",\"defaultSortBy\":\"conclusionPart\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"video\":{\"edit\":{\"label\":\"video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"video\",\"searchable\":false,\"sortable\":false}},\"element1\":{\"edit\":{\"label\":\"element1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"element1\",\"searchable\":false,\"sortable\":false}},\"element2\":{\"edit\":{\"label\":\"element2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"element2\",\"searchable\":false,\"sortable\":false}},\"conclusionPart\":{\"edit\":{\"label\":\"conclusionPart\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conclusionPart\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"introductionpart\":{\"edit\":{\"label\":\"introductionpart\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"introductionpart\",\"searchable\":true,\"sortable\":true}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"image\",\"heading\"],\"edit\":[[{\"name\":\"slug\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"heading\",\"size\":6},{\"name\":\"video\",\"size\":6}],[{\"name\":\"element1\",\"size\":12}],[{\"name\":\"element2\",\"size\":12}],[{\"name\":\"conclusionPart\",\"size\":6},{\"name\":\"logo\",\"size\":6}],[{\"name\":\"introductionpart\",\"size\":6},{\"name\":\"footer\",\"size\":6}]]},\"uid\":\"api::lucent-chart.lucent-chart\"}', 'object', NULL, NULL),
(61, 'plugin_content_manager_configuration_content_types::api::dynamic-page.dynamic-page', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"hero\":{\"edit\":{\"label\":\"hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero\",\"searchable\":false,\"sortable\":false}},\"features\":{\"edit\":{\"label\":\"features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"features\",\"searchable\":false,\"sortable\":false}},\"productDescription\":{\"edit\":{\"label\":\"productDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productDescription\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"slug\",\"size\":6}],[{\"name\":\"hero\",\"size\":12}],[{\"name\":\"features\",\"size\":12}],[{\"name\":\"productDescription\",\"size\":12}],[{\"name\":\"title\",\"size\":6}]]},\"uid\":\"api::dynamic-page.dynamic-page\"}', 'object', NULL, NULL),
(62, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"title\",\"img\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"img\",\"size\":6}],[{\"name\":\"products\",\"size\":6}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(63, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"desc\":{\"edit\":{\"label\":\"desc\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"desc\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"product_code\":{\"edit\":{\"label\":\"product_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"product_code\",\"searchable\":true,\"sortable\":true}},\"previous_price\":{\"edit\":{\"label\":\"previous_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previous_price\",\"searchable\":true,\"sortable\":true}},\"key_Features\":{\"edit\":{\"label\":\"key_Features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"key_Features\",\"searchable\":false,\"sortable\":false}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"stock_product\":{\"edit\":{\"label\":\"stock_product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stock_product\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"desc\",\"img\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"desc\",\"size\":6},{\"name\":\"img\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"categories\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"product_code\",\"size\":4}],[{\"name\":\"key_Features\",\"size\":12}],[{\"name\":\"Description\",\"size\":12}],[{\"name\":\"previous_price\",\"size\":4},{\"name\":\"stock_product\",\"size\":4}]]},\"uid\":\"api::product.product\"}', 'object', NULL, NULL),
(64, 'plugin_content_manager_configuration_content_types::api::register-user.register-user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"FirstName\":{\"edit\":{\"label\":\"FirstName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FirstName\",\"searchable\":true,\"sortable\":true}},\"LastName\":{\"edit\":{\"label\":\"LastName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"LastName\",\"searchable\":true,\"sortable\":true}},\"EmailAddress\":{\"edit\":{\"label\":\"EmailAddress\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"EmailAddress\",\"searchable\":true,\"sortable\":true}},\"Password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"slug\",\"size\":6},{\"name\":\"FirstName\",\"size\":6}],[{\"name\":\"LastName\",\"size\":6},{\"name\":\"EmailAddress\",\"size\":6}],[{\"name\":\"Password\",\"size\":6}]]},\"uid\":\"api::register-user.register-user\"}', 'object', NULL, NULL),
(66, 'plugin_content_manager_configuration_content_types::api::destination-page.destination-page', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"Home\":{\"edit\":{\"label\":\"Home\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Home\",\"searchable\":false,\"sortable\":false}},\"Hero\":{\"edit\":{\"label\":\"Hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hero\",\"searchable\":false,\"sortable\":false}},\"Blog\":{\"edit\":{\"label\":\"Blog\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blog\",\"searchable\":false,\"sortable\":false}},\"services\":{\"edit\":{\"label\":\"services\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"services\",\"searchable\":false,\"sortable\":false}},\"pool\":{\"edit\":{\"label\":\"pool\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pool\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"slug\"],\"edit\":[[{\"name\":\"slug\",\"size\":6}],[{\"name\":\"Home\",\"size\":12}],[{\"name\":\"Hero\",\"size\":12}],[{\"name\":\"Blog\",\"size\":12}],[{\"name\":\"services\",\"size\":12}],[{\"name\":\"pool\",\"size\":12}]]},\"uid\":\"api::destination-page.destination-page\"}', 'object', NULL, NULL),
(67, 'plugin_content_manager_configuration_components::card-content.cart-content', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"title\",\"subtitle\"],\"edit\":[[{\"name\":\"logo\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6}]]},\"uid\":\"card-content.cart-content\",\"isComponent\":true}', 'object', NULL, NULL),
(68, 'plugin_content_manager_configuration_components::content.img', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"image\"],\"edit\":[[{\"name\":\"image\",\"size\":6}]]},\"uid\":\"content.img\",\"isComponent\":true}', 'object', NULL, NULL),
(69, 'plugin_content_manager_configuration_components::home.hero-card', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}]]},\"uid\":\"home.hero-card\",\"isComponent\":true}', 'object', NULL, NULL),
(70, 'plugin_content_manager_configuration_components::home.home', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"banner\":{\"edit\":{\"label\":\"banner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"banner\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"banner\",\"size\":6}]]},\"uid\":\"home.home\",\"isComponent\":true}', 'object', NULL, NULL),
(71, 'plugin_content_manager_configuration_components::home.hero', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"HeroCard\":{\"edit\":{\"label\":\"HeroCard\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HeroCard\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"HeroCard\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"HeroCard\",\"size\":12}]]},\"uid\":\"home.hero\",\"isComponent\":true}', 'object', NULL, NULL),
(72, 'plugin_content_manager_configuration_components::home.services', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"card2\":{\"edit\":{\"label\":\"card2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card2\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"card2\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"card2\",\"size\":12}]]},\"uid\":\"home.services\",\"isComponent\":true}', 'object', NULL, NULL),
(73, 'plugin_content_manager_configuration_components::home.card2', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"title\",\"subtitle\"],\"edit\":[[{\"name\":\"logo\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6}]]},\"uid\":\"home.card2\",\"isComponent\":true}', 'object', NULL, NULL),
(74, 'plugin_content_manager_configuration_components::home.pool', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"logoText\":{\"edit\":{\"label\":\"logoText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logoText\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"logoText\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"logoText\",\"size\":12}]]},\"uid\":\"home.pool\",\"isComponent\":true}', 'object', NULL, NULL),
(75, 'plugin_content_manager_configuration_components::home.logo-text', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"img\",\"name\"],\"edit\":[[{\"name\":\"img\",\"size\":6},{\"name\":\"name\",\"size\":6}]]},\"uid\":\"home.logo-text\",\"isComponent\":true}', 'object', NULL, NULL),
(77, 'plugin_content_manager_configuration_content_types::api::order-report.order-report', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"FirstName\",\"defaultSortBy\":\"FirstName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"FirstName\":{\"edit\":{\"label\":\"FirstName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FirstName\",\"searchable\":true,\"sortable\":true}},\"LastName\":{\"edit\":{\"label\":\"LastName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"LastName\",\"searchable\":true,\"sortable\":true}},\"Address\":{\"edit\":{\"label\":\"Address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address\",\"searchable\":true,\"sortable\":true}},\"Mobile\":{\"edit\":{\"label\":\"Mobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mobile\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"City\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"Zone\":{\"edit\":{\"label\":\"Zone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Zone\",\"searchable\":true,\"sortable\":true}},\"Comment\":{\"edit\":{\"label\":\"Comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Comment\",\"searchable\":true,\"sortable\":true}},\"orderId\":{\"edit\":{\"label\":\"orderId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"orderId\",\"searchable\":true,\"sortable\":true}},\"OrderList\":{\"edit\":{\"label\":\"OrderList\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"OrderList\",\"searchable\":false,\"sortable\":false}},\"OrderItem\":{\"edit\":{\"label\":\"OrderItem\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"OrderItem\",\"searchable\":false,\"sortable\":false}},\"ConfirmOrder\":{\"edit\":{\"label\":\"ConfirmOrder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ConfirmOrder\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"FirstName\",\"LastName\"],\"edit\":[[{\"name\":\"slug\",\"size\":6},{\"name\":\"FirstName\",\"size\":6}],[{\"name\":\"LastName\",\"size\":6},{\"name\":\"Address\",\"size\":6}],[{\"name\":\"Mobile\",\"size\":6},{\"name\":\"Email\",\"size\":6}],[{\"name\":\"City\",\"size\":6},{\"name\":\"Zone\",\"size\":6}],[{\"name\":\"Comment\",\"size\":6},{\"name\":\"orderId\",\"size\":6}],[{\"name\":\"OrderList\",\"size\":12}],[{\"name\":\"OrderItem\",\"size\":12}],[{\"name\":\"ConfirmOrder\",\"size\":4}]]},\"uid\":\"api::order-report.order-report\"}', 'object', NULL, NULL),
(80, 'plugin_content_manager_configuration_components::product.description', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"subheading\":{\"edit\":{\"label\":\"subheading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subheading\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"subheading\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"subheading\",\"size\":6}]]},\"uid\":\"product.description\",\"isComponent\":true}', 'object', NULL, NULL),
(81, 'plugin_content_manager_configuration_components::product.key-features', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Resolution\",\"defaultSortBy\":\"Resolution\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"Resolution\":{\"edit\":{\"label\":\"Resolution\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Resolution\",\"searchable\":true,\"sortable\":true}},\"Display\":{\"edit\":{\"label\":\"Display\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Display\",\"searchable\":true,\"sortable\":true}},\"port\":{\"edit\":{\"label\":\"port\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"port\",\"searchable\":true,\"sortable\":true}},\"Brand\":{\"edit\":{\"label\":\"Brand\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Brand\",\"searchable\":true,\"sortable\":true}},\"Model\":{\"edit\":{\"label\":\"Model\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Model\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Resolution\",\"Display\",\"port\"],\"edit\":[[{\"name\":\"Resolution\",\"size\":6},{\"name\":\"Display\",\"size\":6}],[{\"name\":\"port\",\"size\":6},{\"name\":\"Brand\",\"size\":6}],[{\"name\":\"Model\",\"size\":6}]]},\"uid\":\"product.key-features\",\"isComponent\":true}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(170, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"action_parameters\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_releases\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"released_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"scheduled_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"timezone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"content_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"about_uses\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"about_uses_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"about_uses_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"about_uses_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"about_uses_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"contacts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subject\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"message\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"contacts_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"contacts_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"contacts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"contacts_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"contacts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"contact_infos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"contact_infos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"contact_infos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"contact_infos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"contact_infos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"destination_pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"destination_pages_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"destination_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"destination_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"destination_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"destination_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"dynamic_pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"dynamic_pages_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"dynamic_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"dynamic_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"dynamic_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"dynamic_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subheading\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"footer\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"ip_telephone_services\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"ip_telephone_services_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"ip_telephone_services_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"ip_telephone_services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"ip_telephone_services_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"ip_telephone_services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"landing_pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"footer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"landing_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"landing_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"landing_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"landing_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"lucent_charts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"heading\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conclusion_part\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"introductionpart\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"footer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"lucent_charts_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"lucent_charts_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"lucent_charts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"lucent_charts_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"lucent_charts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navbar_menus\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"test\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navbar_menus_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"navbar_menus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"navbar_menus_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navbar_menus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navbarmenus\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navbarmenus_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"navbarmenus_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"navbarmenus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"navbarmenus_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navbarmenus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_reports\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"first_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"last_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mobile\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"city\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"zone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"comment\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_id\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_list\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"order_item\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirm_order\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_reports_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"order_reports_order_id_unique\", \"type\": \"unique\", \"columns\": [\"order_id\"]}, {\"name\": \"order_reports_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"order_reports_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"order_reports_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_reports_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"page\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_page_unique\", \"type\": \"unique\", \"columns\": [\"page\"]}, {\"name\": \"pages_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"desc\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_code\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"previous_price\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"stock_product\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productive_offices\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productive_offices_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"productive_offices_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"productive_offices_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"productive_offices_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"register_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"first_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"last_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email_address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"register_users_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"register_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"register_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"register_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"register_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"services\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"footer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"services_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"services_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_card_content_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"button\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_card_content_cart_contents\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_contact_contacts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"telephone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mobile\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"website\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"footer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_content_blogs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subheading\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_content_contents\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subheading\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_content_elements\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_content_heroes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"button\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_content_imgs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_content_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"item\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_card2s\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_hero_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_heroes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_logo_texts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_pools\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_services\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_product_descriptions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subheading\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_product_key_features\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"resolution\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"display\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"port\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"brand\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"model\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_meta_socials\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"social_network\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_seos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"meta_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"keywords\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_robots\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"structured_data\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_viewport\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"canonical_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"transfer_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"transfer_token_permission_id\", \"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_order_inv_fk\", \"columns\": [\"transfer_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_related_morphs_order_index\", \"columns\": [\"order\"]}, {\"name\": \"files_related_morphs_id_column_index\", \"columns\": [\"related_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions_release_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"release_action_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_action_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_unique\", \"type\": \"unique\", \"columns\": [\"release_action_id\", \"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_order_inv_fk\", \"columns\": [\"release_action_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_release_actions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_releases\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"about_uses_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"about_uses_field_index\", \"columns\": [\"field\"]}, {\"name\": \"about_uses_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"about_uses_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"about_uses_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"about_uses_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"about_uses\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"contact_infos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"contact_infos_field_index\", \"columns\": [\"field\"]}, {\"name\": \"contact_infos_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"contact_infos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"contact_infos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"contact_infos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"contact_infos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"destination_pages_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"destination_pages_field_index\", \"columns\": [\"field\"]}, {\"name\": \"destination_pages_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"destination_pages_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"destination_pages_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"destination_pages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"destination_pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"dynamic_pages_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"dynamic_pages_field_index\", \"columns\": [\"field\"]}, {\"name\": \"dynamic_pages_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"dynamic_pages_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"dynamic_pages_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"dynamic_pages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"dynamic_pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_field_index\", \"columns\": [\"field\"]}, {\"name\": \"homes_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"homes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"ip_telephone_services_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"ip_telephone_services_field_index\", \"columns\": [\"field\"]}, {\"name\": \"ip_telephone_services_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"ip_telephone_services_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"ip_telephone_services_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"ip_telephone_services_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"ip_telephone_services\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"landing_pages_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"landing_pages_field_index\", \"columns\": [\"field\"]}, {\"name\": \"landing_pages_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"landing_pages_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"landing_pages_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"landing_pages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"landing_pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"lucent_charts_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"lucent_charts_field_index\", \"columns\": [\"field\"]}, {\"name\": \"lucent_charts_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"lucent_charts_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"lucent_charts_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"lucent_charts_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"lucent_charts\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navbar_menus_page_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"navbar_menu_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navbar_menus_page_links_fk\", \"columns\": [\"navbar_menu_id\"]}, {\"name\": \"navbar_menus_page_links_inv_fk\", \"columns\": [\"page_id\"]}, {\"name\": \"navbar_menus_page_links_unique\", \"type\": \"unique\", \"columns\": [\"navbar_menu_id\", \"page_id\"]}], \"foreignKeys\": [{\"name\": \"navbar_menus_page_links_fk\", \"columns\": [\"navbar_menu_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navbar_menus\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navbar_menus_page_links_inv_fk\", \"columns\": [\"page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navbar_menus_dynamic_page_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"navbar_menu_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"dynamic_page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navbar_menus_dynamic_page_links_fk\", \"columns\": [\"navbar_menu_id\"]}, {\"name\": \"navbar_menus_dynamic_page_links_inv_fk\", \"columns\": [\"dynamic_page_id\"]}, {\"name\": \"navbar_menus_dynamic_page_links_unique\", \"type\": \"unique\", \"columns\": [\"navbar_menu_id\", \"dynamic_page_id\"]}], \"foreignKeys\": [{\"name\": \"navbar_menus_dynamic_page_links_fk\", \"columns\": [\"navbar_menu_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navbar_menus\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navbar_menus_dynamic_page_links_inv_fk\", \"columns\": [\"dynamic_page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"dynamic_pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navbarmenus_navbar_menus_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"navbarmenu_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"navbar_menu_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"navbar_menu_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navbarmenus_navbar_menus_links_fk\", \"columns\": [\"navbarmenu_id\"]}, {\"name\": \"navbarmenus_navbar_menus_links_inv_fk\", \"columns\": [\"navbar_menu_id\"]}, {\"name\": \"navbarmenus_navbar_menus_links_unique\", \"type\": \"unique\", \"columns\": [\"navbarmenu_id\", \"navbar_menu_id\"]}, {\"name\": \"navbarmenus_navbar_menus_links_order_fk\", \"columns\": [\"navbar_menu_order\"]}], \"foreignKeys\": [{\"name\": \"navbarmenus_navbar_menus_links_fk\", \"columns\": [\"navbarmenu_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navbarmenus\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navbarmenus_navbar_menus_links_inv_fk\", \"columns\": [\"navbar_menu_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navbar_menus\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navbarmenus_dynamic_page_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"navbarmenu_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"dynamic_page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navbarmenus_dynamic_page_links_fk\", \"columns\": [\"navbarmenu_id\"]}, {\"name\": \"navbarmenus_dynamic_page_links_inv_fk\", \"columns\": [\"dynamic_page_id\"]}, {\"name\": \"navbarmenus_dynamic_page_links_unique\", \"type\": \"unique\", \"columns\": [\"navbarmenu_id\", \"dynamic_page_id\"]}], \"foreignKeys\": [{\"name\": \"navbarmenus_dynamic_page_links_fk\", \"columns\": [\"navbarmenu_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navbarmenus\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navbarmenus_dynamic_page_links_inv_fk\", \"columns\": [\"dynamic_page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"dynamic_pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_field_index\", \"columns\": [\"field\"]}, {\"name\": \"pages_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"pages_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"pages_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"pages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages_navbar_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"navbarmenu_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_navbar_links_fk\", \"columns\": [\"page_id\"]}, {\"name\": \"pages_navbar_links_inv_fk\", \"columns\": [\"navbarmenu_id\"]}, {\"name\": \"pages_navbar_links_unique\", \"type\": \"unique\", \"columns\": [\"page_id\", \"navbarmenu_id\"]}], \"foreignKeys\": [{\"name\": \"pages_navbar_links_fk\", \"columns\": [\"page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pages\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pages_navbar_links_inv_fk\", \"columns\": [\"navbarmenu_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navbarmenus\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_field_index\", \"columns\": [\"field\"]}, {\"name\": \"products_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"products_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"products_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"products_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_categories_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_categories_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_categories_links_inv_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"products_categories_links_unique\", \"type\": \"unique\", \"columns\": [\"product_id\", \"category_id\"]}, {\"name\": \"products_categories_links_order_fk\", \"columns\": [\"category_order\"]}, {\"name\": \"products_categories_links_order_inv_fk\", \"columns\": [\"product_order\"]}], \"foreignKeys\": [{\"name\": \"products_categories_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_categories_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productive_offices_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productive_offices_field_index\", \"columns\": [\"field\"]}, {\"name\": \"productive_offices_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"productive_offices_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"productive_offices_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"productive_offices_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"productive_offices\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"services_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"services_field_index\", \"columns\": [\"field\"]}, {\"name\": \"services_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"services_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"services_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"services_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"services\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_content_elements_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_content_elements_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_content_elements_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_content_elements_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_content_elements_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_content_elements_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_content_elements\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_heroes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_heroes_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_home_heroes_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_home_heroes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_heroes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_heroes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_heroes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_pools_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_pools_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_home_pools_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_home_pools_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_pools_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_pools_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_pools\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_services_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_services_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_home_services_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_home_services_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_services_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_services_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_services\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_seos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_seos_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_shared_seos_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_shared_seos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_seos\", \"referencedColumns\": [\"id\"]}]}]}', '2024-05-20 22:54:44', '93d4c00ca30d0b1e1162d4d4f7592027');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `target_id` int UNSIGNED DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_links`
--

CREATE TABLE `strapi_release_actions_release_links` (
  `id` int UNSIGNED NOT NULL,
  `release_action_id` int UNSIGNED DEFAULT NULL,
  `release_id` int UNSIGNED DEFAULT NULL,
  `release_action_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `transfer_token_permission_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'home_logo', 1, '/1', '2024-03-23 13:35:29.079000', '2024-03-23 13:35:29.079000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2024-02-24 12:20:04.550000', '2024-02-24 12:20:04.550000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2024-02-24 12:20:04.550000', '2024-02-24 12:20:04.550000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2024-02-24 12:20:04.631000', '2024-02-24 12:20:04.631000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2024-02-24 12:20:04.631000', '2024-02-24 12:20:04.631000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2024-02-24 12:20:04.632000', '2024-02-24 12:20:04.632000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2024-02-24 12:20:04.632000', '2024-02-24 12:20:04.632000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2024-02-24 12:20:04.632000', '2024-02-24 12:20:04.632000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2024-02-24 12:20:04.632000', '2024-02-24 12:20:04.632000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-02-24 12:20:04.632000', '2024-02-24 12:20:04.632000', NULL, NULL),
(10, 'api::home.home.find', '2024-02-24 13:19:36.636000', '2024-02-24 13:19:36.636000', NULL, NULL),
(11, 'api::home.home.findOne', '2024-02-24 13:19:36.636000', '2024-02-24 13:19:36.636000', NULL, NULL),
(12, 'api::navbar-menu.navbar-menu.findOne', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(13, 'api::home.home.update', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(14, 'api::navbar-menu.navbar-menu.update', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(15, 'api::home.home.delete', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(16, 'api::navbar-menu.navbar-menu.create', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(17, 'api::navbar-menu.navbar-menu.find', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(18, 'api::home.home.create', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(19, 'api::navbar-menu.navbar-menu.delete', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(20, 'api::navbarmenu.navbarmenu.find', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(21, 'api::navbarmenu.navbarmenu.findOne', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(22, 'api::navbarmenu.navbarmenu.create', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(23, 'api::navbarmenu.navbarmenu.update', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(24, 'api::navbarmenu.navbarmenu.delete', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(25, 'plugin::content-type-builder.components.getComponents', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(26, 'plugin::content-type-builder.components.getComponent', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(27, 'plugin::content-type-builder.content-types.getContentTypes', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(28, 'plugin::content-type-builder.content-types.getContentType', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(29, 'plugin::email.email.send', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(30, 'plugin::upload.content-api.find', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(31, 'plugin::upload.content-api.findOne', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(32, 'plugin::upload.content-api.destroy', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(33, 'plugin::upload.content-api.upload', '2024-02-24 13:19:36.637000', '2024-02-24 13:19:36.637000', NULL, NULL),
(34, 'api::contact.contact.find', '2024-02-24 15:50:19.415000', '2024-02-24 15:50:19.415000', NULL, NULL),
(35, 'api::contact.contact.findOne', '2024-02-24 15:50:19.415000', '2024-02-24 15:50:19.415000', NULL, NULL),
(36, 'api::contact.contact.create', '2024-02-24 15:50:19.415000', '2024-02-24 15:50:19.415000', NULL, NULL),
(37, 'api::contact.contact.update', '2024-02-24 15:50:19.415000', '2024-02-24 15:50:19.415000', NULL, NULL),
(38, 'api::contact.contact.delete', '2024-02-24 15:50:19.415000', '2024-02-24 15:50:19.415000', NULL, NULL),
(39, 'api::about-us.about-us.find', '2024-02-25 15:26:07.752000', '2024-02-25 15:26:07.752000', NULL, NULL),
(40, 'api::about-us.about-us.findOne', '2024-02-25 15:26:07.752000', '2024-02-25 15:26:07.752000', NULL, NULL),
(41, 'api::about-us.about-us.update', '2024-02-25 15:26:07.752000', '2024-02-25 15:26:07.752000', NULL, NULL),
(42, 'api::about-us.about-us.delete', '2024-02-25 15:26:07.752000', '2024-02-25 15:26:07.752000', NULL, NULL),
(43, 'api::about-us.about-us.create', '2024-02-25 15:26:07.752000', '2024-02-25 15:26:07.752000', NULL, NULL),
(44, 'api::contact-info.contact-info.find', '2024-02-26 22:31:56.308000', '2024-02-26 22:31:56.308000', NULL, NULL),
(45, 'api::contact-info.contact-info.update', '2024-02-26 22:31:56.308000', '2024-02-26 22:31:56.308000', NULL, NULL),
(46, 'api::contact-info.contact-info.delete', '2024-02-26 22:31:56.308000', '2024-02-26 22:31:56.308000', NULL, NULL),
(47, 'api::landing-page.landing-page.find', '2024-02-28 10:43:58.839000', '2024-02-28 10:43:58.839000', NULL, NULL),
(48, 'api::landing-page.landing-page.findOne', '2024-02-28 10:43:58.839000', '2024-02-28 10:43:58.839000', NULL, NULL),
(49, 'api::landing-page.landing-page.create', '2024-02-28 10:43:58.839000', '2024-02-28 10:43:58.839000', NULL, NULL),
(50, 'api::landing-page.landing-page.update', '2024-02-28 10:43:58.839000', '2024-02-28 10:43:58.839000', NULL, NULL),
(51, 'api::landing-page.landing-page.delete', '2024-02-28 10:43:58.839000', '2024-02-28 10:43:58.839000', NULL, NULL),
(52, 'api::service.service.find', '2024-02-28 13:23:54.589000', '2024-02-28 13:23:54.589000', NULL, NULL),
(53, 'api::service.service.findOne', '2024-02-28 13:23:54.589000', '2024-02-28 13:23:54.589000', NULL, NULL),
(54, 'api::service.service.create', '2024-02-28 13:23:54.589000', '2024-02-28 13:23:54.589000', NULL, NULL),
(55, 'api::service.service.update', '2024-02-28 13:23:54.589000', '2024-02-28 13:23:54.589000', NULL, NULL),
(56, 'api::service.service.delete', '2024-02-28 13:23:54.589000', '2024-02-28 13:23:54.589000', NULL, NULL),
(81, 'api::lucent-chart.lucent-chart.find', '2024-03-04 21:27:01.246000', '2024-03-04 21:27:01.246000', NULL, NULL),
(82, 'api::lucent-chart.lucent-chart.update', '2024-03-04 21:27:01.246000', '2024-03-04 21:27:01.246000', NULL, NULL),
(83, 'api::lucent-chart.lucent-chart.delete', '2024-03-04 21:27:01.246000', '2024-03-04 21:27:01.246000', NULL, NULL),
(84, 'api::page.page.find', '2024-03-04 21:27:07.478000', '2024-03-04 21:27:07.478000', NULL, NULL),
(85, 'api::page.page.findOne', '2024-03-04 21:27:07.478000', '2024-03-04 21:27:07.478000', NULL, NULL),
(86, 'api::page.page.create', '2024-03-04 21:27:07.478000', '2024-03-04 21:27:07.478000', NULL, NULL),
(87, 'api::page.page.update', '2024-03-04 21:27:07.478000', '2024-03-04 21:27:07.478000', NULL, NULL),
(88, 'api::page.page.delete', '2024-03-04 21:27:07.478000', '2024-03-04 21:27:07.478000', NULL, NULL),
(89, 'api::productive-office.productive-office.find', '2024-03-04 21:27:10.816000', '2024-03-04 21:27:10.816000', NULL, NULL),
(90, 'api::productive-office.productive-office.update', '2024-03-04 21:27:10.816000', '2024-03-04 21:27:10.816000', NULL, NULL),
(91, 'api::productive-office.productive-office.delete', '2024-03-04 21:27:10.816000', '2024-03-04 21:27:10.816000', NULL, NULL),
(92, 'api::ip-telephone-service.ip-telephone-service.find', '2024-03-04 21:27:21.310000', '2024-03-04 21:27:21.310000', NULL, NULL),
(93, 'api::ip-telephone-service.ip-telephone-service.delete', '2024-03-04 21:27:21.310000', '2024-03-04 21:27:21.310000', NULL, NULL),
(94, 'api::ip-telephone-service.ip-telephone-service.update', '2024-03-04 21:27:21.310000', '2024-03-04 21:27:21.310000', NULL, NULL),
(100, 'plugin::import-export-entries.export.exportData', '2024-03-08 00:33:36.179000', '2024-03-08 00:33:36.179000', NULL, NULL),
(101, 'plugin::import-export-entries.import.importData', '2024-03-08 00:33:36.179000', '2024-03-08 00:33:36.179000', NULL, NULL),
(102, 'plugin::i18n.locales.listLocales', '2024-03-08 00:33:41.209000', '2024-03-08 00:33:41.209000', NULL, NULL),
(110, 'api::page.page.findBySlug', '2024-03-08 09:00:02.545000', '2024-03-08 09:00:02.545000', NULL, NULL),
(111, 'api::dynamic-page.dynamic-page.find', '2024-03-08 09:29:04.804000', '2024-03-08 09:29:04.804000', NULL, NULL),
(112, 'api::dynamic-page.dynamic-page.findOne', '2024-03-08 09:29:04.804000', '2024-03-08 09:29:04.804000', NULL, NULL),
(113, 'api::dynamic-page.dynamic-page.create', '2024-03-08 09:29:04.804000', '2024-03-08 09:29:04.804000', NULL, NULL),
(114, 'api::dynamic-page.dynamic-page.update', '2024-03-08 09:29:04.804000', '2024-03-08 09:29:04.804000', NULL, NULL),
(115, 'api::dynamic-page.dynamic-page.delete', '2024-03-08 09:29:04.804000', '2024-03-08 09:29:04.804000', NULL, NULL),
(116, 'api::dynamic-page.dynamic-page.findBySlug', '2024-03-08 09:47:06.741000', '2024-03-08 09:47:06.741000', NULL, NULL),
(117, 'api::category.category.find', '2024-03-15 10:56:00.977000', '2024-03-15 10:56:00.977000', NULL, NULL),
(118, 'api::category.category.findOne', '2024-03-15 10:56:00.977000', '2024-03-15 10:56:00.977000', NULL, NULL),
(119, 'api::category.category.create', '2024-03-15 10:56:00.977000', '2024-03-15 10:56:00.977000', NULL, NULL),
(120, 'api::category.category.update', '2024-03-15 10:56:00.977000', '2024-03-15 10:56:00.977000', NULL, NULL),
(121, 'api::category.category.delete', '2024-03-15 10:56:00.977000', '2024-03-15 10:56:00.977000', NULL, NULL),
(122, 'api::product.product.find', '2024-03-15 11:01:32.998000', '2024-03-15 11:01:32.998000', NULL, NULL),
(123, 'api::product.product.create', '2024-03-15 11:01:32.998000', '2024-03-15 11:01:32.998000', NULL, NULL),
(124, 'api::product.product.findOne', '2024-03-15 11:01:32.998000', '2024-03-15 11:01:32.998000', NULL, NULL),
(126, 'api::product.product.delete', '2024-03-15 11:01:32.998000', '2024-03-15 11:01:32.998000', NULL, NULL),
(127, 'api::register-user.register-user.find', '2024-03-22 11:17:21.193000', '2024-03-22 11:17:21.193000', NULL, NULL),
(128, 'api::register-user.register-user.findOne', '2024-03-22 11:17:21.193000', '2024-03-22 11:17:21.193000', NULL, NULL),
(129, 'api::register-user.register-user.create', '2024-03-22 11:17:21.193000', '2024-03-22 11:17:21.193000', NULL, NULL),
(130, 'api::register-user.register-user.update', '2024-03-22 11:17:21.193000', '2024-03-22 11:17:21.193000', NULL, NULL),
(131, 'api::register-user.register-user.delete', '2024-03-22 11:17:21.193000', '2024-03-22 11:17:21.193000', NULL, NULL),
(132, 'api::register-user.register-user.find', '2024-03-22 11:29:08.666000', '2024-03-22 11:29:08.666000', NULL, NULL),
(133, 'api::register-user.register-user.findOne', '2024-03-22 11:29:08.666000', '2024-03-22 11:29:08.666000', NULL, NULL),
(134, 'api::register-user.register-user.create', '2024-03-22 11:29:08.666000', '2024-03-22 11:29:08.666000', NULL, NULL),
(135, 'api::register-user.register-user.update', '2024-03-22 11:29:08.666000', '2024-03-22 11:29:08.666000', NULL, NULL),
(136, 'api::register-user.register-user.delete', '2024-03-22 11:29:08.666000', '2024-03-22 11:29:08.666000', NULL, NULL),
(137, 'api::destination-page.destination-page.find', '2024-03-23 14:36:46.781000', '2024-03-23 14:36:46.781000', NULL, NULL),
(138, 'api::destination-page.destination-page.findOne', '2024-03-23 14:36:46.781000', '2024-03-23 14:36:46.781000', NULL, NULL),
(139, 'api::destination-page.destination-page.create', '2024-03-23 14:36:46.781000', '2024-03-23 14:36:46.781000', NULL, NULL),
(140, 'api::destination-page.destination-page.update', '2024-03-23 14:36:46.781000', '2024-03-23 14:36:46.781000', NULL, NULL),
(141, 'api::destination-page.destination-page.delete', '2024-03-23 14:36:46.781000', '2024-03-23 14:36:46.781000', NULL, NULL),
(152, 'api::order-report.order-report.find', '2024-04-17 11:15:25.304000', '2024-04-17 11:15:25.304000', NULL, NULL),
(153, 'api::order-report.order-report.findOne', '2024-04-17 11:15:25.304000', '2024-04-17 11:15:25.304000', NULL, NULL),
(154, 'api::order-report.order-report.create', '2024-04-17 11:15:25.304000', '2024-04-17 11:15:25.304000', NULL, NULL),
(155, 'api::order-report.order-report.update', '2024-04-17 11:15:25.304000', '2024-04-17 11:15:25.304000', NULL, NULL),
(156, 'api::order-report.order-report.delete', '2024-04-17 11:15:25.304000', '2024-04-17 11:15:25.304000', NULL, NULL),
(157, 'plugin::users-permissions.user.me', '2024-05-01 09:54:22.029000', '2024-05-01 09:54:22.029000', NULL, NULL),
(158, 'plugin::users-permissions.user.find', '2024-05-01 09:56:29.301000', '2024-05-01 09:56:29.301000', NULL, NULL),
(159, 'plugin::users-permissions.user.findOne', '2024-05-01 09:56:29.301000', '2024-05-01 09:56:29.301000', NULL, NULL),
(160, 'plugin::users-permissions.user.findOne', '2024-05-01 10:03:47.444000', '2024-05-01 10:03:47.444000', NULL, NULL),
(161, 'plugin::users-permissions.user.find', '2024-05-01 10:03:47.444000', '2024-05-01 10:03:47.444000', NULL, NULL),
(162, 'api::product.product.update', '2024-05-12 14:21:58.652000', '2024-05-12 14:21:58.652000', NULL, NULL),
(163, 'plugin::users-permissions.user.create', '2024-05-12 17:00:02.702000', '2024-05-12 17:00:02.702000', NULL, NULL),
(164, 'plugin::users-permissions.user.update', '2024-05-12 17:00:02.702000', '2024-05-12 17:00:02.702000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 5, 2, 1),
(5, 4, 2, 1),
(6, 6, 2, 1),
(7, 8, 2, 1),
(8, 9, 2, 1),
(9, 7, 2, 1),
(10, 15, 2, 2),
(11, 16, 2, 2),
(12, 14, 2, 2),
(13, 10, 2, 2),
(14, 11, 2, 2),
(15, 12, 2, 2),
(16, 18, 2, 2),
(17, 17, 2, 2),
(18, 13, 2, 2),
(19, 19, 2, 2),
(20, 20, 2, 3),
(21, 24, 2, 3),
(22, 21, 2, 3),
(23, 22, 2, 3),
(24, 25, 2, 3),
(25, 23, 2, 3),
(26, 26, 2, 3),
(27, 29, 2, 3),
(28, 31, 2, 3),
(29, 27, 2, 3),
(30, 28, 2, 4),
(31, 33, 2, 4),
(32, 32, 2, 4),
(33, 30, 2, 4),
(34, 34, 2, 5),
(35, 35, 2, 6),
(36, 36, 2, 6),
(37, 37, 2, 6),
(38, 38, 2, 6),
(39, 39, 2, 7),
(40, 40, 2, 8),
(41, 42, 2, 8),
(42, 43, 2, 8),
(43, 41, 2, 8),
(44, 44, 2, 9),
(45, 45, 2, 10),
(46, 46, 2, 10),
(47, 47, 2, 11),
(48, 49, 2, 11),
(49, 48, 2, 11),
(50, 50, 2, 11),
(51, 51, 2, 11),
(52, 52, 2, 12),
(53, 53, 2, 12),
(54, 54, 2, 12),
(55, 55, 2, 12),
(56, 56, 2, 12),
(81, 81, 2, 13),
(82, 82, 2, 13),
(83, 83, 2, 14),
(84, 84, 2, 15),
(85, 86, 2, 16),
(86, 85, 2, 16),
(87, 87, 2, 16),
(88, 88, 2, 16),
(89, 89, 2, 17),
(90, 90, 2, 18),
(91, 91, 2, 18),
(92, 92, 2, 19),
(93, 93, 2, 19),
(94, 94, 2, 19),
(100, 100, 2, 20),
(101, 101, 2, 20),
(102, 102, 2, 21),
(110, 110, 2, 26),
(111, 111, 2, 27),
(112, 112, 2, 27),
(113, 113, 2, 27),
(114, 114, 2, 27),
(115, 115, 2, 27),
(116, 116, 2, 28),
(117, 117, 2, 29),
(118, 118, 2, 29),
(119, 119, 2, 29),
(120, 120, 2, 29),
(121, 121, 2, 30),
(122, 122, 2, 31),
(123, 123, 2, 31),
(124, 124, 2, 31),
(125, 126, 2, 31),
(127, 127, 1, 2),
(128, 128, 1, 2),
(129, 129, 1, 2),
(130, 130, 1, 2),
(131, 131, 1, 2),
(132, 132, 2, 32),
(133, 135, 2, 32),
(134, 136, 2, 32),
(135, 133, 2, 32),
(136, 134, 2, 32),
(137, 139, 2, 33),
(138, 138, 2, 33),
(139, 137, 2, 33),
(140, 140, 2, 34),
(141, 141, 2, 34),
(152, 152, 2, 35),
(153, 155, 2, 35),
(154, 154, 2, 35),
(155, 153, 2, 35),
(156, 156, 2, 35),
(157, 157, 2, 36),
(158, 158, 2, 37),
(159, 159, 2, 37),
(160, 160, 1, 3),
(161, 161, 1, 3),
(162, 162, 2, 38),
(163, 163, 2, 39),
(164, 164, 2, 39);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-02-24 12:20:04.479000', '2024-05-01 10:03:47.252000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2024-02-24 12:20:04.506000', '2024-05-12 17:00:02.461000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'admin', 'admin@gmail.com', 'local', '$2a$10$1LIj1yAmkjHu4eQBZztw.u8kcrlr90o1roso5z85KIUAN82bW1246', NULL, NULL, 1, 1, '2024-02-24 12:23:34.222000', '2024-02-24 12:23:34.222000', 1, 1),
(2, 'abdullah', 'test@gmail.com', 'local', '$2a$10$TE1YmgNh4mdsXYTvb1Z7ruH.yiFBM124gSXww7zdulBfETwRjqGzm', NULL, NULL, 0, 0, '2024-03-22 11:19:21.177000', '2024-04-23 22:35:43.231000', 1, 1),
(6, 'abdullahfdgfd', 'tr@gmail.com', 'local', '$2a$10$QhUDoFdVQeUVhLgMYeWie.176Zfc5H87WA53DjQihWx8.twJvLFP.', NULL, NULL, 1, 0, '2024-03-23 19:11:50.351000', '2024-03-23 19:11:50.351000', NULL, NULL),
(28, 'asd', 'asd@gmail.com', 'local', '$2a$10$Rlmnrzfy.GW/EyoV4Wnyze0g1u8owMK77xQVOv4oFphN0y0HlTfEW', NULL, NULL, 1, 0, '2024-05-03 16:38:10.064000', '2024-05-03 16:38:10.064000', NULL, NULL),
(34, 'jadu', 'jadu@gmail.com', 'local', '$2a$10$yJ5GANIQO9JyJDtL7LXy6uvJcEwZaJro/HZrPIknpYj0191HuslPm', NULL, NULL, 1, 0, '2024-05-03 17:32:41.008000', '2024-05-03 17:32:41.008000', NULL, NULL),
(35, 'azz', 'azz@gmail.com', 'local', '$2a$10$/dMLQUPAKtNYMW4B1BTYrOgiJUrn388vNn/.4/5ae6qhfGkGacrz6', NULL, NULL, 1, 0, '2024-05-03 17:47:57.121000', '2024-05-03 17:47:57.121000', NULL, NULL),
(40, 'ase', 'ase@gmail.com', 'local', '$2a$10$pCWXLfibwIXT1kKTmEUQz.R4L6g8Emz.qolfPtu1lNe.bJ123p96.', NULL, NULL, 1, 0, '2024-05-05 15:46:55.622000', '2024-05-05 15:46:55.622000', NULL, NULL),
(42, 'check', 'check@gmail.com', 'local', '$2a$10$YNTzOnN.Ap0bmJD6W5bYdenNGO9IP24LCFk68NGZ3Rco/rz4fj38a', NULL, NULL, 1, 0, '2024-05-05 16:07:57.645000', '2024-05-05 16:07:57.645000', NULL, NULL),
(63, 'abdullahh', 'abdullah1@gmail.com', 'local', '$2a$10$UxqEL.grVf49gHqhYYFLd.94lqb9yOsdZM74J4XJwvmw9JBjMqYQS', NULL, NULL, 1, 0, '2024-05-21 11:08:48.268000', '2024-05-21 11:08:48.268000', NULL, NULL),
(64, 'abdullah4', 'hhh4@gmai.com', 'local', '$2a$10$k/jsfnyu0gQr35momhg1PexN89h7meB7G//urL84agLCsPNfBLYZa', NULL, NULL, 1, 0, '2024-05-21 11:12:55.311000', '2024-05-21 11:12:55.311000', NULL, NULL),
(68, 'abdur', 'abdur@gmail.com', 'local', '$2a$10$ir/Yo7iRPDu0LDBiz5O18e99mLzYBeCcmI6VV33k89vbNZxXkidme', NULL, NULL, 1, 0, '2024-05-21 19:32:44.270000', '2024-05-21 19:32:44.270000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 2, 1),
(6, 6, 1, 2),
(10, 2, 2, 2),
(29, 28, 1, 23),
(35, 34, 1, 29),
(36, 35, 1, 30),
(41, 40, 1, 35),
(43, 42, 1, 37),
(64, 63, 1, 58),
(65, 64, 1, 59),
(69, 68, 1, 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_uses`
--
ALTER TABLE `about_uses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_uses_created_by_id_fk` (`created_by_id`),
  ADD KEY `about_uses_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `about_uses_components`
--
ALTER TABLE `about_uses_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `about_uses_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `about_uses_field_index` (`field`),
  ADD KEY `about_uses_component_type_index` (`component_type`),
  ADD KEY `about_uses_entity_fk` (`entity_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `components_card_content_cards`
--
ALTER TABLE `components_card_content_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_card_content_cart_contents`
--
ALTER TABLE `components_card_content_cart_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_contact_contacts`
--
ALTER TABLE `components_contact_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_content_blogs`
--
ALTER TABLE `components_content_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_content_contents`
--
ALTER TABLE `components_content_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_content_elements`
--
ALTER TABLE `components_content_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_content_elements_components`
--
ALTER TABLE `components_content_elements_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_content_elements_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_content_elements_field_index` (`field`),
  ADD KEY `components_content_elements_component_type_index` (`component_type`),
  ADD KEY `components_content_elements_entity_fk` (`entity_id`);

--
-- Indexes for table `components_content_heroes`
--
ALTER TABLE `components_content_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_content_imgs`
--
ALTER TABLE `components_content_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_content_lists`
--
ALTER TABLE `components_content_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_card2s`
--
ALTER TABLE `components_home_card2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_heroes`
--
ALTER TABLE `components_home_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_heroes_components`
--
ALTER TABLE `components_home_heroes_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_home_heroes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_home_heroes_field_index` (`field`),
  ADD KEY `components_home_heroes_component_type_index` (`component_type`),
  ADD KEY `components_home_heroes_entity_fk` (`entity_id`);

--
-- Indexes for table `components_home_hero_cards`
--
ALTER TABLE `components_home_hero_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_homes`
--
ALTER TABLE `components_home_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_logo_texts`
--
ALTER TABLE `components_home_logo_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_pools`
--
ALTER TABLE `components_home_pools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_pools_components`
--
ALTER TABLE `components_home_pools_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_home_pools_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_home_pools_field_index` (`field`),
  ADD KEY `components_home_pools_component_type_index` (`component_type`),
  ADD KEY `components_home_pools_entity_fk` (`entity_id`);

--
-- Indexes for table `components_home_services`
--
ALTER TABLE `components_home_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_home_services_components`
--
ALTER TABLE `components_home_services_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_home_services_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_home_services_field_index` (`field`),
  ADD KEY `components_home_services_component_type_index` (`component_type`),
  ADD KEY `components_home_services_entity_fk` (`entity_id`);

--
-- Indexes for table `components_product_descriptions`
--
ALTER TABLE `components_product_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_product_key_features`
--
ALTER TABLE `components_product_key_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_meta_socials`
--
ALTER TABLE `components_shared_meta_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_shared_seos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_shared_seos_field_index` (`field`),
  ADD KEY `components_shared_seos_component_type_index` (`component_type`),
  ADD KEY `components_shared_seos_entity_fk` (`entity_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_slug_unique` (`slug`),
  ADD KEY `contacts_created_by_id_fk` (`created_by_id`),
  ADD KEY `contacts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_infos_created_by_id_fk` (`created_by_id`),
  ADD KEY `contact_infos_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `contact_infos_components`
--
ALTER TABLE `contact_infos_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_infos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `contact_infos_field_index` (`field`),
  ADD KEY `contact_infos_component_type_index` (`component_type`),
  ADD KEY `contact_infos_entity_fk` (`entity_id`);

--
-- Indexes for table `destination_pages`
--
ALTER TABLE `destination_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `destination_pages_slug_unique` (`slug`),
  ADD KEY `destination_pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `destination_pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `destination_pages_components`
--
ALTER TABLE `destination_pages_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `destination_pages_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `destination_pages_field_index` (`field`),
  ADD KEY `destination_pages_component_type_index` (`component_type`),
  ADD KEY `destination_pages_entity_fk` (`entity_id`);

--
-- Indexes for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dynamic_pages_slug_unique` (`slug`),
  ADD KEY `dynamic_pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `dynamic_pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `dynamic_pages_components`
--
ALTER TABLE `dynamic_pages_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dynamic_pages_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `dynamic_pages_field_index` (`field`),
  ADD KEY `dynamic_pages_component_type_index` (`component_type`),
  ADD KEY `dynamic_pages_entity_fk` (`entity_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `homes_slug_unique` (`slug`),
  ADD KEY `homes_created_by_id_fk` (`created_by_id`),
  ADD KEY `homes_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `homes_components`
--
ALTER TABLE `homes_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `homes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `homes_field_index` (`field`),
  ADD KEY `homes_component_type_index` (`component_type`),
  ADD KEY `homes_entity_fk` (`entity_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `ip_telephone_services`
--
ALTER TABLE `ip_telephone_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_telephone_services_slug_unique` (`slug`),
  ADD KEY `ip_telephone_services_created_by_id_fk` (`created_by_id`),
  ADD KEY `ip_telephone_services_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `ip_telephone_services_components`
--
ALTER TABLE `ip_telephone_services_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_telephone_services_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `ip_telephone_services_field_index` (`field`),
  ADD KEY `ip_telephone_services_component_type_index` (`component_type`),
  ADD KEY `ip_telephone_services_entity_fk` (`entity_id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landing_pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `landing_pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `landing_pages_components`
--
ALTER TABLE `landing_pages_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `landing_pages_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `landing_pages_field_index` (`field`),
  ADD KEY `landing_pages_component_type_index` (`component_type`),
  ADD KEY `landing_pages_entity_fk` (`entity_id`);

--
-- Indexes for table `lucent_charts`
--
ALTER TABLE `lucent_charts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lucent_charts_slug_unique` (`slug`),
  ADD KEY `lucent_charts_created_by_id_fk` (`created_by_id`),
  ADD KEY `lucent_charts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `lucent_charts_components`
--
ALTER TABLE `lucent_charts_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lucent_charts_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `lucent_charts_field_index` (`field`),
  ADD KEY `lucent_charts_component_type_index` (`component_type`),
  ADD KEY `lucent_charts_entity_fk` (`entity_id`);

--
-- Indexes for table `navbarmenus`
--
ALTER TABLE `navbarmenus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navbarmenus_slug_unique` (`slug`),
  ADD KEY `navbarmenus_created_by_id_fk` (`created_by_id`),
  ADD KEY `navbarmenus_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `navbarmenus_dynamic_page_links`
--
ALTER TABLE `navbarmenus_dynamic_page_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navbarmenus_dynamic_page_links_unique` (`navbarmenu_id`,`dynamic_page_id`),
  ADD KEY `navbarmenus_dynamic_page_links_fk` (`navbarmenu_id`),
  ADD KEY `navbarmenus_dynamic_page_links_inv_fk` (`dynamic_page_id`);

--
-- Indexes for table `navbarmenus_navbar_menus_links`
--
ALTER TABLE `navbarmenus_navbar_menus_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navbarmenus_navbar_menus_links_unique` (`navbarmenu_id`,`navbar_menu_id`),
  ADD KEY `navbarmenus_navbar_menus_links_fk` (`navbarmenu_id`),
  ADD KEY `navbarmenus_navbar_menus_links_inv_fk` (`navbar_menu_id`),
  ADD KEY `navbarmenus_navbar_menus_links_order_fk` (`navbar_menu_order`);

--
-- Indexes for table `navbar_menus`
--
ALTER TABLE `navbar_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navbar_menus_created_by_id_fk` (`created_by_id`),
  ADD KEY `navbar_menus_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `navbar_menus_dynamic_page_links`
--
ALTER TABLE `navbar_menus_dynamic_page_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navbar_menus_dynamic_page_links_unique` (`navbar_menu_id`,`dynamic_page_id`),
  ADD KEY `navbar_menus_dynamic_page_links_fk` (`navbar_menu_id`),
  ADD KEY `navbar_menus_dynamic_page_links_inv_fk` (`dynamic_page_id`);

--
-- Indexes for table `navbar_menus_page_links`
--
ALTER TABLE `navbar_menus_page_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navbar_menus_page_links_unique` (`navbar_menu_id`,`page_id`),
  ADD KEY `navbar_menus_page_links_fk` (`navbar_menu_id`),
  ADD KEY `navbar_menus_page_links_inv_fk` (`page_id`);

--
-- Indexes for table `order_reports`
--
ALTER TABLE `order_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_reports_slug_unique` (`slug`),
  ADD UNIQUE KEY `order_reports_order_id_unique` (`order_id`),
  ADD KEY `order_reports_created_by_id_fk` (`created_by_id`),
  ADD KEY `order_reports_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_unique` (`page`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pages_components`
--
ALTER TABLE `pages_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `pages_field_index` (`field`),
  ADD KEY `pages_component_type_index` (`component_type`),
  ADD KEY `pages_entity_fk` (`entity_id`);

--
-- Indexes for table `pages_navbar_links`
--
ALTER TABLE `pages_navbar_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_navbar_links_unique` (`page_id`,`navbarmenu_id`),
  ADD KEY `pages_navbar_links_fk` (`page_id`),
  ADD KEY `pages_navbar_links_inv_fk` (`navbarmenu_id`);

--
-- Indexes for table `productive_offices`
--
ALTER TABLE `productive_offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productive_offices_created_by_id_fk` (`created_by_id`),
  ADD KEY `productive_offices_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `productive_offices_components`
--
ALTER TABLE `productive_offices_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productive_offices_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `productive_offices_field_index` (`field`),
  ADD KEY `productive_offices_component_type_index` (`component_type`),
  ADD KEY `productive_offices_entity_fk` (`entity_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_categories_links_unique` (`product_id`,`category_id`),
  ADD KEY `products_categories_links_fk` (`product_id`),
  ADD KEY `products_categories_links_inv_fk` (`category_id`),
  ADD KEY `products_categories_links_order_fk` (`category_order`),
  ADD KEY `products_categories_links_order_inv_fk` (`product_order`);

--
-- Indexes for table `products_components`
--
ALTER TABLE `products_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `products_field_index` (`field`),
  ADD KEY `products_component_type_index` (`component_type`),
  ADD KEY `products_entity_fk` (`entity_id`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_users_slug_unique` (`slug`),
  ADD KEY `register_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `register_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_created_by_id_fk` (`created_by_id`),
  ADD KEY `services_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `services_components`
--
ALTER TABLE `services_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `services_field_index` (`field`),
  ADD KEY `services_component_type_index` (`component_type`),
  ADD KEY `services_entity_fk` (`entity_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_links_unique` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_links_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_links_inv_fk` (`release_id`),
  ADD KEY `strapi_release_actions_release_links_order_inv_fk` (`release_action_order`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_uses`
--
ALTER TABLE `about_uses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_uses_components`
--
ALTER TABLE `about_uses_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1294;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1294;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `components_card_content_cards`
--
ALTER TABLE `components_card_content_cards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `components_card_content_cart_contents`
--
ALTER TABLE `components_card_content_cart_contents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `components_contact_contacts`
--
ALTER TABLE `components_contact_contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_content_blogs`
--
ALTER TABLE `components_content_blogs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `components_content_contents`
--
ALTER TABLE `components_content_contents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `components_content_elements`
--
ALTER TABLE `components_content_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `components_content_elements_components`
--
ALTER TABLE `components_content_elements_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `components_content_heroes`
--
ALTER TABLE `components_content_heroes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_content_imgs`
--
ALTER TABLE `components_content_imgs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_content_lists`
--
ALTER TABLE `components_content_lists`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `components_home_card2s`
--
ALTER TABLE `components_home_card2s`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components_home_heroes`
--
ALTER TABLE `components_home_heroes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_home_heroes_components`
--
ALTER TABLE `components_home_heroes_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `components_home_hero_cards`
--
ALTER TABLE `components_home_hero_cards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_home_homes`
--
ALTER TABLE `components_home_homes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_home_logo_texts`
--
ALTER TABLE `components_home_logo_texts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `components_home_pools`
--
ALTER TABLE `components_home_pools`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_home_pools_components`
--
ALTER TABLE `components_home_pools_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `components_home_services`
--
ALTER TABLE `components_home_services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_home_services_components`
--
ALTER TABLE `components_home_services_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `components_product_descriptions`
--
ALTER TABLE `components_product_descriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `components_product_key_features`
--
ALTER TABLE `components_product_key_features`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `components_shared_meta_socials`
--
ALTER TABLE `components_shared_meta_socials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_infos_components`
--
ALTER TABLE `contact_infos_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `destination_pages`
--
ALTER TABLE `destination_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination_pages_components`
--
ALTER TABLE `destination_pages_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dynamic_pages_components`
--
ALTER TABLE `dynamic_pages_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homes_components`
--
ALTER TABLE `homes_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_telephone_services`
--
ALTER TABLE `ip_telephone_services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_telephone_services_components`
--
ALTER TABLE `ip_telephone_services_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `landing_pages_components`
--
ALTER TABLE `landing_pages_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `lucent_charts`
--
ALTER TABLE `lucent_charts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lucent_charts_components`
--
ALTER TABLE `lucent_charts_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `navbarmenus`
--
ALTER TABLE `navbarmenus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `navbarmenus_dynamic_page_links`
--
ALTER TABLE `navbarmenus_dynamic_page_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `navbarmenus_navbar_menus_links`
--
ALTER TABLE `navbarmenus_navbar_menus_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `navbar_menus`
--
ALTER TABLE `navbar_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `navbar_menus_dynamic_page_links`
--
ALTER TABLE `navbar_menus_dynamic_page_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `navbar_menus_page_links`
--
ALTER TABLE `navbar_menus_page_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_reports`
--
ALTER TABLE `order_reports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages_components`
--
ALTER TABLE `pages_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pages_navbar_links`
--
ALTER TABLE `pages_navbar_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productive_offices`
--
ALTER TABLE `productive_offices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productive_offices_components`
--
ALTER TABLE `productive_offices_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `products_components`
--
ALTER TABLE `products_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services_components`
--
ALTER TABLE `services_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_uses`
--
ALTER TABLE `about_uses`
  ADD CONSTRAINT `about_uses_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `about_uses_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `about_uses_components`
--
ALTER TABLE `about_uses_components`
  ADD CONSTRAINT `about_uses_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `about_uses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `components_content_elements_components`
--
ALTER TABLE `components_content_elements_components`
  ADD CONSTRAINT `components_content_elements_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_content_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_home_heroes_components`
--
ALTER TABLE `components_home_heroes_components`
  ADD CONSTRAINT `components_home_heroes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_heroes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_home_pools_components`
--
ALTER TABLE `components_home_pools_components`
  ADD CONSTRAINT `components_home_pools_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_pools` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_home_services_components`
--
ALTER TABLE `components_home_services_components`
  ADD CONSTRAINT `components_home_services_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  ADD CONSTRAINT `components_shared_seos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_seos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contacts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD CONSTRAINT `contact_infos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contact_infos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contact_infos_components`
--
ALTER TABLE `contact_infos_components`
  ADD CONSTRAINT `contact_infos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `contact_infos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_pages`
--
ALTER TABLE `destination_pages`
  ADD CONSTRAINT `destination_pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `destination_pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `destination_pages_components`
--
ALTER TABLE `destination_pages_components`
  ADD CONSTRAINT `destination_pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `destination_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD CONSTRAINT `dynamic_pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `dynamic_pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `dynamic_pages_components`
--
ALTER TABLE `dynamic_pages_components`
  ADD CONSTRAINT `dynamic_pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `dynamic_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homes`
--
ALTER TABLE `homes`
  ADD CONSTRAINT `homes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `homes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `homes_components`
--
ALTER TABLE `homes_components`
  ADD CONSTRAINT `homes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ip_telephone_services`
--
ALTER TABLE `ip_telephone_services`
  ADD CONSTRAINT `ip_telephone_services_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ip_telephone_services_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ip_telephone_services_components`
--
ALTER TABLE `ip_telephone_services_components`
  ADD CONSTRAINT `ip_telephone_services_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `ip_telephone_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD CONSTRAINT `landing_pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `landing_pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `landing_pages_components`
--
ALTER TABLE `landing_pages_components`
  ADD CONSTRAINT `landing_pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `landing_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lucent_charts`
--
ALTER TABLE `lucent_charts`
  ADD CONSTRAINT `lucent_charts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `lucent_charts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lucent_charts_components`
--
ALTER TABLE `lucent_charts_components`
  ADD CONSTRAINT `lucent_charts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `lucent_charts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navbarmenus`
--
ALTER TABLE `navbarmenus`
  ADD CONSTRAINT `navbarmenus_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `navbarmenus_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `navbarmenus_dynamic_page_links`
--
ALTER TABLE `navbarmenus_dynamic_page_links`
  ADD CONSTRAINT `navbarmenus_dynamic_page_links_fk` FOREIGN KEY (`navbarmenu_id`) REFERENCES `navbarmenus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navbarmenus_dynamic_page_links_inv_fk` FOREIGN KEY (`dynamic_page_id`) REFERENCES `dynamic_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navbarmenus_navbar_menus_links`
--
ALTER TABLE `navbarmenus_navbar_menus_links`
  ADD CONSTRAINT `navbarmenus_navbar_menus_links_fk` FOREIGN KEY (`navbarmenu_id`) REFERENCES `navbarmenus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navbarmenus_navbar_menus_links_inv_fk` FOREIGN KEY (`navbar_menu_id`) REFERENCES `navbar_menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navbar_menus`
--
ALTER TABLE `navbar_menus`
  ADD CONSTRAINT `navbar_menus_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `navbar_menus_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `navbar_menus_dynamic_page_links`
--
ALTER TABLE `navbar_menus_dynamic_page_links`
  ADD CONSTRAINT `navbar_menus_dynamic_page_links_fk` FOREIGN KEY (`navbar_menu_id`) REFERENCES `navbar_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navbar_menus_dynamic_page_links_inv_fk` FOREIGN KEY (`dynamic_page_id`) REFERENCES `dynamic_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navbar_menus_page_links`
--
ALTER TABLE `navbar_menus_page_links`
  ADD CONSTRAINT `navbar_menus_page_links_fk` FOREIGN KEY (`navbar_menu_id`) REFERENCES `navbar_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navbar_menus_page_links_inv_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_reports`
--
ALTER TABLE `order_reports`
  ADD CONSTRAINT `order_reports_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_reports_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages_components`
--
ALTER TABLE `pages_components`
  ADD CONSTRAINT `pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages_navbar_links`
--
ALTER TABLE `pages_navbar_links`
  ADD CONSTRAINT `pages_navbar_links_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_navbar_links_inv_fk` FOREIGN KEY (`navbarmenu_id`) REFERENCES `navbarmenus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productive_offices`
--
ALTER TABLE `productive_offices`
  ADD CONSTRAINT `productive_offices_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `productive_offices_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `productive_offices_components`
--
ALTER TABLE `productive_offices_components`
  ADD CONSTRAINT `productive_offices_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `productive_offices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  ADD CONSTRAINT `products_categories_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_components`
--
ALTER TABLE `products_components`
  ADD CONSTRAINT `products_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `register_users`
--
ALTER TABLE `register_users`
  ADD CONSTRAINT `register_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `register_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `services_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `services_components`
--
ALTER TABLE `services_components`
  ADD CONSTRAINT `services_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD CONSTRAINT `strapi_release_actions_release_links_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_links_inv_fk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
