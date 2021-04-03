-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2021 at 11:39 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boxbilling`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_admin_history`
--

CREATE TABLE `activity_admin_history` (
  `id` bigint(20) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_admin_history`
--

INSERT INTO `activity_admin_history` (`id`, `admin_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2021-04-01 03:14:22', '2021-04-01 03:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `activity_client_email`
--

CREATE TABLE `activity_client_email` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `recipients` text,
  `subject` varchar(255) DEFAULT NULL,
  `content_html` text,
  `content_text` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `activity_client_history`
--

CREATE TABLE `activity_client_history` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_client_history`
--

INSERT INTO `activity_client_history` (`id`, `client_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 2, '::1', '2021-04-01 03:14:56', '2021-04-01 03:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `activity_system`
--

CREATE TABLE `activity_system` (
  `id` bigint(20) NOT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `message` text,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_system`
--

INSERT INTO `activity_system` (`id`, `priority`, `admin_id`, `client_id`, `message`, `ip`, `created_at`, `updated_at`) VALUES
(1, 6, 1, NULL, 'Staff member 1 logged in', '::1', '2021-04-01 03:14:22', '2021-04-01 03:14:22'),
(2, 6, NULL, NULL, 'Admin logged out', '::1', '2021-04-01 03:14:40', '2021-04-01 03:14:40'),
(3, 6, NULL, 2, 'Client #2 logged in', '::1', '2021-04-01 03:14:56', '2021-04-01 03:14:56'),
(4, 6, NULL, NULL, 'Logged out', '::1', '2021-04-01 03:15:10', '2021-04-01 03:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `role` varchar(30) DEFAULT 'staff' COMMENT 'admin, staff',
  `admin_group_id` bigint(20) DEFAULT '1',
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `protected` tinyint(1) DEFAULT '0',
  `status` varchar(30) DEFAULT 'active' COMMENT 'active, inactive',
  `api_token` varchar(128) DEFAULT NULL,
  `permissions` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `role`, `admin_group_id`, `email`, `pass`, `salt`, `name`, `signature`, `protected`, `status`, `api_token`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@boxbilling.com', '$2y$10$0tncB8elt8W5JOSf.nP.o.o4DmWMQReowJq7lCWYHeGvC4km7V.fu', NULL, 'Demo Administrator', 'Sincerely Yours, Demo Administrator', 1, 'active', '644846a924e9f4ca76f04f39b3f9c8ac', NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'cron', 1, 'FOF2T4t2@d4mTXP4s.com', '$2y$10$gp1mj9ikImkOgg/hoMFvtODEAhMoBhzHji/aF.Ujkqv0h2rzb719e', NULL, 'System Cron Job', '', 1, 'active', NULL, NULL, '2014-09-16 06:33:40', '2014-09-16 06:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrators', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `api_request`
--

CREATE TABLE `api_request` (
  `id` bigint(20) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `request` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_request`
--

INSERT INTO `api_request` (`id`, `ip`, `request`, `created_at`) VALUES
(1, '::1', '/api/guest/staff/login', '2021-04-01 11:14:21'),
(2, '::1', '/api/admin/profile/logout', '2021-04-01 11:14:40'),
(3, '::1', '/api/guest/client/login', '2021-04-01 11:14:56'),
(4, '::1', '/index.php?_url=/api/client/client/logout', '2021-04-01 11:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `session_id` varchar(32) DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `promo_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `config` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `aid` varchar(255) DEFAULT NULL COMMENT 'Alternative id for foreign systems',
  `client_group_id` bigint(20) DEFAULT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'client' COMMENT 'client',
  `auth_type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'active' COMMENT 'active, suspended, canceled',
  `email_approved` tinyint(1) DEFAULT NULL,
  `tax_exempt` tinyint(1) DEFAULT '0',
  `type` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone_cc` varchar(10) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_vat` varchar(100) DEFAULT NULL,
  `company_number` varchar(255) DEFAULT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `document_type` varchar(100) DEFAULT NULL,
  `document_nr` varchar(20) DEFAULT NULL,
  `notes` text,
  `currency` varchar(10) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `api_token` varchar(128) DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `custom_1` text,
  `custom_2` text,
  `custom_3` text,
  `custom_4` text,
  `custom_5` text,
  `custom_6` text,
  `custom_7` text,
  `custom_8` text,
  `custom_9` text,
  `custom_10` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `aid`, `client_group_id`, `role`, `auth_type`, `email`, `pass`, `salt`, `status`, `email_approved`, `tax_exempt`, `type`, `first_name`, `last_name`, `gender`, `birthday`, `phone_cc`, `phone`, `company`, `company_vat`, `company_number`, `address_1`, `address_2`, `city`, `state`, `postcode`, `country`, `document_type`, `document_nr`, `notes`, `currency`, `lang`, `ip`, `api_token`, `referred_by`, `custom_1`, `custom_2`, `custom_3`, `custom_4`, `custom_5`, `custom_6`, `custom_7`, `custom_8`, `custom_9`, `custom_10`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'client', NULL, 'client@boxbilling.com', '$2y$10$/waO8c5q41HngeC2TTvnnuYyz3drDIe6jEMXyh8X6RO/YPoiC.bL.', NULL, 'active', NULL, 0, NULL, 'Demo', 'Client', NULL, '1985-02-25', '214', '15551212', 'BoxBilling', NULL, NULL, 'Holywood', 'Stairway to heaven', 'Holywood', 'LA', '95012', 'US', NULL, NULL, 'BoxBilling demo client', 'USD', NULL, NULL, 'client_api_token', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, NULL, 1, 'client', NULL, 'john.smith@boxbilling.com', '$2y$10$0tncB8elt8W5JOSf.nP.o.o4DmWMQReowJq7lCWYHeGvC4km7V.fu', NULL, 'active', NULL, 0, NULL, 'John', 'Smith', NULL, NULL, '261', '4106851180', 'John\'s Company Inc.', NULL, NULL, '1734 Maryland Avenue', NULL, 'Baltimore', 'MD', '21201', 'US', NULL, NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_balance`
--

CREATE TABLE `client_balance` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `rel_id` varchar(20) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT '0.00',
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_balance`
--

INSERT INTO `client_balance` (`id`, `client_id`, `type`, `rel_id`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '1000.00', 'Christmas Gift', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_group`
--

CREATE TABLE `client_group` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_group`
--

INSERT INTO `client_group` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Default', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_order`
--

CREATE TABLE `client_order` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `promo_id` bigint(20) DEFAULT NULL,
  `promo_recurring` tinyint(1) DEFAULT NULL,
  `promo_used` bigint(20) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `group_master` tinyint(1) DEFAULT '0',
  `invoice_option` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `unpaid_invoice_id` bigint(20) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT '1',
  `unit` varchar(100) DEFAULT NULL,
  `price` double(18,2) DEFAULT NULL,
  `discount` double(18,2) DEFAULT NULL COMMENT 'first invoice discount',
  `status` varchar(50) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL COMMENT 'suspend/cancel reason',
  `notes` text,
  `config` text,
  `referred_by` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `suspended_at` datetime DEFAULT NULL,
  `unsuspended_at` datetime DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_order_meta`
--

CREATE TABLE `client_order_meta` (
  `id` bigint(20) NOT NULL,
  `client_order_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_order_status`
--

CREATE TABLE `client_order_status` (
  `id` bigint(20) NOT NULL,
  `client_order_id` bigint(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `notes` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_password_reset`
--

CREATE TABLE `client_password_reset` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `conversion_rate` decimal(13,6) DEFAULT '1.000000',
  `format` varchar(30) DEFAULT NULL,
  `price_format` varchar(50) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `title`, `code`, `is_default`, `conversion_rate`, `format`, `price_format`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', 1, '1.000000', '${{price}}', '1', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'Euro', 'EUR', 0, '0.600000', '€{{price}}', '1', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 'Pound Sterling', 'GBP', 0, '0.600000', '{{price}} ₤', '1', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` bigint(20) NOT NULL,
  `action_code` varchar(255) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL COMMENT 'general, domain, invoice, hosting, support, download, custom, license',
  `enabled` tinyint(1) DEFAULT '1',
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `description` text,
  `vars` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE `extension` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `manifest` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extension`
--

INSERT INTO `extension` (`id`, `type`, `name`, `status`, `version`, `manifest`) VALUES
(1, 'mod', 'forum', 'installed', '1.0.0', '{\"id\":\"forum\",\"type\":\"mod\",\"name\":\"Forum\",\"description\":\"Forum for BoxBilling\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),
(2, 'mod', 'kb', 'installed', '1.0.0', '{\"id\":\"kb\",\"type\":\"mod\",\"name\":\"Knowledge base\",\"description\":\"Knowledge base module for BoxBilling\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),
(3, 'mod', 'news', 'installed', '1.0.0', '{\"id\":\"news\",\"type\":\"mod\",\"name\":\"News\",\"description\":\"News module for BoxBilling\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),
(4, 'mod', 'branding', 'installed', '1.0.0', '{\"id\":\"branding\",\"type\":\"mod\",\"name\":\"Branding\",\"description\":\"BoxBilling branding module. Can be deactivated by PRO license owners only.\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),
(5, 'mod', 'servicemembership', 'installed', '1.0.0', '{\"id\":\"servicemembership\",\"type\":\"mod\",\"name\":\"Membership product\",\"description\":\"Sell membership products.\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),
(6, 'mod', 'redirect', 'installed', '1.0.0', '{\"id\":\"redirect\",\"type\":\"mod\",\"name\":\"Redirect\",\"description\":\"Manage redirects\",\"homepage_url\":\"https:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/www.boxbilling.com\",\"license\":\"GPL version 2 or later - http:\\/\\/www.gnu.org\\/licenses\\/old-licenses\\/gpl-2.0.html\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `extension_meta`
--

CREATE TABLE `extension_meta` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `rel_type` varchar(255) DEFAULT NULL,
  `rel_id` varchar(255) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extension_meta`
--

INSERT INTO `extension_meta` (`id`, `client_id`, `extension`, `rel_type`, `rel_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, NULL, 'mod_hook', 'mod', 'activity', 'listener', 'onAfterClientLogin', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(2, NULL, 'mod_hook', 'mod', 'activity', 'listener', 'onAfterAdminLogin', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(3, NULL, 'mod_hook', 'mod', 'client', 'listener', 'onAfterClientSignUp', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(4, NULL, 'mod_hook', 'mod', 'extension', 'listener', 'onBeforeAdminCronRun', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(5, NULL, 'mod_hook', 'mod', 'forum', 'listener', 'onAfterClientCreateForumTopic', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(6, NULL, 'mod_hook', 'mod', 'forum', 'listener', 'onAfterAdminRepliedInForum', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(7, NULL, 'mod_hook', 'mod', 'forum', 'listener', 'onAfterClientRepliedInForum', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(8, NULL, 'mod_hook', 'mod', 'hook', 'listener', 'onAfterAdminActivateExtension', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(9, NULL, 'mod_hook', 'mod', 'hook', 'listener', 'onAfterAdminDeactivateExtension', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(10, NULL, 'mod_hook', 'mod', 'invoice', 'listener', 'onAfterAdminInvoicePaymentReceived', '2014-09-16 06:33:40', '2014-09-16 06:33:40'),
(11, NULL, 'mod_hook', 'mod', 'invoice', 'listener', 'onAfterAdminInvoiceApprove', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(12, NULL, 'mod_hook', 'mod', 'invoice', 'listener', 'onAfterAdminInvoiceReminderSent', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(13, NULL, 'mod_hook', 'mod', 'invoice', 'listener', 'onAfterAdminCronRun', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(14, NULL, 'mod_hook', 'mod', 'invoice', 'listener', 'onEventAfterInvoiceIsDue', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(15, NULL, 'mod_hook', 'mod', 'order', 'listener', 'onAfterAdminOrderActivate', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(16, NULL, 'mod_hook', 'mod', 'order', 'listener', 'onAfterAdminOrderRenew', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(17, NULL, 'mod_hook', 'mod', 'order', 'listener', 'onAfterAdminOrderSuspend', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(18, NULL, 'mod_hook', 'mod', 'order', 'listener', 'onAfterAdminOrderUnsuspend', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(19, NULL, 'mod_hook', 'mod', 'order', 'listener', 'onAfterAdminOrderCancel', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(20, NULL, 'mod_hook', 'mod', 'order', 'listener', 'onAfterAdminOrderUncancel', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(21, NULL, 'mod_hook', 'mod', 'servicedomain', 'listener', 'onBeforeAdminCronRun', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(22, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterClientOrderCreate', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(23, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterClientOpenTicket', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(24, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterClientReplyTicket', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(25, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterClientCloseTicket', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(26, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterGuestPublicTicketOpen', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(27, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterClientSignUp', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(28, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterGuestPublicTicketReply', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(29, NULL, 'mod_hook', 'mod', 'staff', 'listener', 'onAfterGuestPublicTicketClose', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(30, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterClientOpenTicket', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(31, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterAdminOpenTicket', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(32, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterAdminCloseTicket', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(33, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterAdminReplyTicket', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(34, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterGuestPublicTicketOpen', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(35, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterAdminPublicTicketOpen', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(36, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterAdminPublicTicketReply', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(37, NULL, 'mod_hook', 'mod', 'support', 'listener', 'onAfterAdminPublicTicketClose', '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(38, NULL, 'mod_order', NULL, NULL, 'config', NULL, '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(39, NULL, 'mod_email', NULL, NULL, 'config', NULL, '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(40, NULL, 'mod_invoice', NULL, NULL, 'config', NULL, '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(41, NULL, 'mod_theme', 'preset', 'current', 'boxbilling', 'default', '2021-04-01 09:28:59', '2021-04-01 09:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `style` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `style`, `created_at`, `updated_at`) VALUES
(1, 'Hosting', '{\"type\":\"horizontal\", \"show_title\":0}', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE `form_field` (
  `id` bigint(20) NOT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `hide_label` tinyint(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT NULL,
  `is_unique` tinyint(1) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `options` text,
  `show_initial` varchar(255) DEFAULT NULL,
  `show_middle` varchar(255) DEFAULT NULL,
  `show_prefix` varchar(255) DEFAULT NULL,
  `show_suffix` varchar(255) DEFAULT NULL,
  `text_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_field`
--

INSERT INTO `form_field` (`id`, `form_id`, `name`, `label`, `hide_label`, `description`, `type`, `default_value`, `required`, `hidden`, `readonly`, `is_unique`, `prefix`, `suffix`, `options`, `show_initial`, `show_middle`, `show_prefix`, `show_suffix`, `text_size`, `created_at`, `updated_at`) VALUES
(1, 1, 'tekstas1', 'Tekstas1', 0, 'This is description', 'text', 'Thi is default value', 1, 0, 0, NULL, '@', '.00$', NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 1, 'tekstas2', 'Tekstas2', 0, 'This is description', 'checkbox', '{\"first checkbox\":\"0\", \"third checkbox\":\"3\"}', 1, 0, 0, NULL, '@', '.00$', '{\"first checkbox\":\"0\", \"second checkbox\": \"1\", \"third checkbox\":\"3\", \"fourth checkbox\":\"4\"}', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 1, 'tekstas3', 'Tekstas3', 0, 'This is description', 'radio', '1', 1, 0, 0, NULL, '@', '.00$', '{\"first radio\":\"0\", \"second radio\": \"1\", \"third radio\":\"0\"}', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 1, 'tekstas5', 'Tekstas5', 0, 'This is description', 'select', '3', 1, 0, 0, NULL, '@', '.00$', '{\"first select\":1, \"second select\":\"2\",\"third\": \"3\"}', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(5, 1, 'tekstas4', 'Tekstas4', 0, 'This is description', 'textarea', 'Thi is default value', 1, 0, 0, NULL, '@', '.00$', '{\"height\":\"100\", \"width\": \"300\"}', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(6, 1, 'tekstas6', 'Tekstas6', 0, 'This is description', 'textarea', 'Thi is default value', 1, 0, 0, NULL, '@', '.00$', '{\"height\":\"50\", \"width\": \"500\"}', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `title` text,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `category`, `title`, `description`, `slug`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'General', 'Discussions Rules', 'Rules about discussions', 'forum-rules', 'active', 1, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'General', 'General Discussions', 'Discuss about everything', 'discuss-about-everything', 'active', 2, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `id` bigint(20) NOT NULL,
  `forum_id` bigint(20) DEFAULT NULL,
  `title` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forum_topic`
--

INSERT INTO `forum_topic` (`id`, `forum_id`, `title`, `slug`, `status`, `sticky`, `views`, `created_at`, `updated_at`) VALUES
(1, 1, 'What about Installation', 'what-about-installation', 'active', 0, 2, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 1, 'Read before posting', 'read-before-posting', 'active', 0, 3, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 2, 'How to install BoxBilling', 'how-to-install-boxbilling', 'active', 0, 20, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_message`
--

CREATE TABLE `forum_topic_message` (
  `id` bigint(20) NOT NULL,
  `forum_topic_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `message` text,
  `ip` varchar(45) DEFAULT NULL,
  `points` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forum_topic_message`
--

INSERT INTO `forum_topic_message` (`id`, `forum_topic_id`, `client_id`, `admin_id`, `message`, `ip`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Its is cool', NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 1, 1, NULL, 'Some other message', NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 2, 1, NULL, 'Some other message', NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 3, 2, NULL, 'I have some question on how to install BoxBilling?', NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `nr` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL COMMENT 'To access via public link',
  `currency` varchar(25) DEFAULT NULL,
  `currency_rate` decimal(13,6) DEFAULT NULL,
  `credit` double(18,2) DEFAULT NULL,
  `base_income` double(18,2) DEFAULT NULL COMMENT 'Income in default currency',
  `base_refund` double(18,2) DEFAULT NULL COMMENT 'Refund in default currency',
  `refund` double(18,2) DEFAULT NULL,
  `notes` text,
  `text_1` text,
  `text_2` text,
  `status` varchar(50) DEFAULT 'unpaid' COMMENT 'paid, unpaid',
  `seller_company` varchar(255) DEFAULT NULL,
  `seller_company_vat` varchar(255) DEFAULT NULL,
  `seller_company_number` varchar(255) DEFAULT NULL,
  `seller_address` varchar(255) DEFAULT NULL,
  `seller_phone` varchar(255) DEFAULT NULL,
  `seller_email` varchar(255) DEFAULT NULL,
  `buyer_first_name` varchar(255) DEFAULT NULL,
  `buyer_last_name` varchar(255) DEFAULT NULL,
  `buyer_company` varchar(255) DEFAULT NULL,
  `buyer_company_vat` varchar(255) DEFAULT NULL,
  `buyer_company_number` varchar(255) DEFAULT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_city` varchar(255) DEFAULT NULL,
  `buyer_state` varchar(255) DEFAULT NULL,
  `buyer_country` varchar(255) DEFAULT NULL,
  `buyer_zip` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `buyer_phone_cc` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `taxname` varchar(255) DEFAULT NULL,
  `taxrate` varchar(35) DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `reminded_at` datetime DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `rel_id` text,
  `task` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `period` varchar(10) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `price` double(18,2) DEFAULT NULL,
  `charged` tinyint(1) DEFAULT '0',
  `taxed` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kb_article`
--

CREATE TABLE `kb_article` (
  `id` bigint(20) NOT NULL,
  `kb_article_category_id` bigint(20) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'active' COMMENT 'active, draft',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kb_article`
--

INSERT INTO `kb_article` (`id`, `kb_article_category_id`, `views`, `title`, `content`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Do you offer free trial', 'Yes we do\n', 'do-you-offer-free-trial', 'active', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 1, 0, 'Do you offer recurent payments', 'Yes we do\n', 'do-you-offer-recurent-payments', 'active', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 2, 0, 'How to contact support', 'Registered clients can contact our support team:\n------------------------------------------------------------\n\n* Login to clients area\n* Find menu item submit new ticket\n* Fill the form and press \"Submit\"\n\nGuests can contact our support team:\n------------------------------------------------------------\n\n* Use our contact form.\n* Fill the form and press \"Submit\"\n', 'how-to-contact-support', 'active', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 2, 0, 'How to place new order', 'To place new order, follow these steps:\n------------------------------------------------------------\n\n* Go to order form on our site order form.\n* Choose products category from select box\n* After you have chosen products category, products in that category will appear on the right side of the screen\n* Choose product/service you would like to order\n* Product configuration screen will appear. It may ask you to select billing period and addons you wish to include in order\n* After You have configured Your product, click \"Confirm\". This will add produc/service to cart.\n* You can go back to order form and select more products/services if you wish to\n* Click on \"Checkout\" button to proceed with checkout process\n    * If you are already logged in, You will be automaticaly redirected to prepared invoice\n    * If you are registerd client, You can provide your login details and press \"Login\"\n    * If you have never purchased any service, fill up client sign up form, and then click \"Sign up\"\n* Now you can choose payment method to pay for invoice. List of all avalable payment gateways will be listed below invoice details.\n* Choose payment method\n* You will be redirected to payment gateway page\n* After successfull payment, You will be redirected back to invoice page.\n* Now You can view and manage services page in services section\n', 'how-to-place-new-order', 'active', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(5, 2, 26, 'BoxBilling live demo', 'Please note that there may be other users logged into the demo at the\nsame time as you, who may be editing and changing settings at the same\ntime as your testing.\n\nSome features have been intensionally disabled in this demo.\n\nBoxBilling Live demo of admin area can be accesed at:\n\n> [http://demo.boxbilling.com/bb-admin](http://demo.boxbilling.com/bb-admin/staff/login?email=admin@boxbilling.com&password=demo)\n>\n> Username: admin@boxbilling.com\n>\n> Password: demo\n\nBoxBilling Live demo of client area can be accesed at:\n> [http://demo.boxbilling.com/login](http://demo.boxbilling.com/login?email=client@boxbilling.com&password=demo)\n>\n>   Username: client@boxbilling.com\n>\n>   Password: demo\n', 'live-demo', 'active', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kb_article_category`
--

CREATE TABLE `kb_article_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kb_article_category`
--

INSERT INTO `kb_article_category` (`id`, `title`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Frequently asked questions', 'Section for common issues', 'faq', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'How to\'s', 'Section dedicated for tutorials', 'how-to', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mod_email_queue`
--

CREATE TABLE `mod_email_queue` (
  `id` int(11) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `to_name` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `tries` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mod_massmailer`
--

CREATE TABLE `mod_massmailer` (
  `id` bigint(20) NOT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `filter` text,
  `status` varchar(255) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pay_gateway`
--

CREATE TABLE `pay_gateway` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `accepted_currencies` text,
  `enabled` tinyint(1) DEFAULT '1',
  `allow_single` tinyint(1) DEFAULT '1',
  `allow_recurrent` tinyint(1) DEFAULT '1',
  `test_mode` tinyint(1) DEFAULT '0',
  `config` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay_gateway`
--

INSERT INTO `pay_gateway` (`id`, `name`, `gateway`, `accepted_currencies`, `enabled`, `allow_single`, `allow_recurrent`, `test_mode`, `config`) VALUES
(1, 'Custom payment gateway', 'Custom', NULL, 1, 1, 1, 0, '{\"single\":\"Transfer {{invoice.total}} {{invoice.currency}}\", \"recurrent\":\"Recurrent payment information\"}'),
(2, 'BankLink', 'Custom', NULL, 1, 1, 1, 0, '{\"single\":\"Transfer {{invoice.total}} {{invoice.currency}}\", \"recurrent\":\"Recurrent payment information\"}'),
(3, 'Authorize.net', 'AuthorizeNet', NULL, 0, 1, 1, 0, NULL),
(4, 'PayPal', 'PayPalEmail', NULL, 1, 1, 1, 0, '{\"email\":\"sales@boxbilling.com\"}'),
(5, 'WebToPay', 'WebToPay', NULL, 0, 1, 1, 1, NULL),
(6, 'AlertPay', 'AlertPay', NULL, 0, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'draft' COMMENT 'active, draft',
  `image` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `admin_id`, `title`, `content`, `slug`, `status`, `image`, `section`, `publish_at`, `published_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'BoxBilling is the most affordable Billing Application Ever!', 'Just in case you weren\'t already aware, BoxBilling is the most affordable client management application ever!\n\nTo learn more about it You can always visit [www.boxbilling.com](http://www.boxbilling.com/)\n', 'boxbilling-is-affordable-billing-system', 'active', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 1, 'Check out great features of BoxBilling', '* Supports automated billing, invoicing, product provisioning\n* Automatically create accounts as soon as the payment is received, suspend when account becomes overdue, terminate when a specified amount of time passes.\n* Boxbilling is perfectly created to sell shared and reseller hosting accounts, software licenses and downloadable products.\n* Integrated helpdesk, knowledgebase, news and announcements system.\n', 'great-features-of-boxbilling', 'active', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 1, 'BoxBilling is customizable', '* You can create your own simple or advanced hooks on BoxBilling events. For example, send notification via sms when new client signs up.\n* Create custom theme for your client interface\n* Create plugin for any cms page\n', 'boxbilling-is-customizable', 'active', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 1, 'About us', 'Now is the time for all good men to come to\nthe aid of their country. This is just a\nregular paragraph.\n\nThe quick brown fox jumped over the lazy\ndog\'s back.\n\n\n> This is a blockquote.\n>\n> This is the second paragraph in the blockquote.\n', 'about-us', 'active', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(5, 1, 'Unfinished news item', 'the text is yet to be written\n', 'to-do', 'draft', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_payment_id` bigint(20) DEFAULT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `unit` varchar(50) DEFAULT 'product',
  `active` tinyint(1) DEFAULT '1',
  `status` varchar(50) DEFAULT 'enabled' COMMENT 'enabled, disabled',
  `hidden` tinyint(1) DEFAULT '0',
  `is_addon` tinyint(1) DEFAULT '0',
  `setup` varchar(50) DEFAULT 'after_payment',
  `addons` text,
  `icon_url` varchar(255) DEFAULT NULL,
  `allow_quantity_select` tinyint(1) DEFAULT '0',
  `stock_control` tinyint(1) DEFAULT '0',
  `quantity_in_stock` int(11) DEFAULT '0',
  `plugin` varchar(255) DEFAULT NULL,
  `plugin_config` text,
  `upgrades` text,
  `priority` bigint(20) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `product_payment_id`, `form_id`, `title`, `slug`, `description`, `unit`, `active`, `status`, `hidden`, `is_addon`, `setup`, `addons`, `icon_url`, `allow_quantity_select`, `stock_control`, `quantity_in_stock`, `plugin`, `plugin_config`, `upgrades`, `priority`, `config`, `created_at`, `updated_at`, `type`) VALUES
(1, 4, 1, 1, 'SSL Certificate', 'ssl-certificate', 'SSL cetificate information', 'product', 1, 'enabled', 0, 0, 'after_payment', '[4,5,6]', NULL, 0, 0, 0, NULL, NULL, NULL, 100, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'custom'),
(2, 4, 2, NULL, 'Custom product with plugin', 'custom-product', 'Default product description', 'product', 1, 'enabled', 0, 0, 'after_payment', '[4,5,6]', NULL, 0, 0, 0, 'Plugin_Demo', NULL, NULL, 90, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'custom'),
(3, 4, 3, NULL, 'Samsung tv set', 'samsung-tv-set', 'Default product description', 'product', 1, 'enabled', 0, 0, 'after_payment', NULL, NULL, 1, 1, 10, NULL, NULL, NULL, 80, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'custom'),
(4, 4, 4, NULL, 'Free Addon', NULL, 'Sold only as an addon', 'product', 1, 'enabled', 0, 1, 'after_payment', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 110, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'custom'),
(5, 4, 5, NULL, 'One time payment Addon', NULL, 'Sold only as an addon', 'product', 1, 'enabled', 0, 1, 'after_payment', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 110, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'custom'),
(6, 4, 6, NULL, 'Recurrent payment addon', NULL, 'Addon support description', 'product', 1, 'enabled', 0, 1, 'after_payment', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 120, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'custom'),
(7, 3, 7, NULL, 'BoxBilling license', 'boxbilling-license', 'BoxBilling license', 'product', 1, 'enabled', 0, 0, 'after_payment', '[4,5,6]', NULL, 0, 0, 0, NULL, NULL, NULL, 70, '{\"prefix\":\"BOX-PRO-\", \"length\":25, \"plugin\":\"Default\"}', '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'license'),
(8, 3, 8, NULL, 'Free BoxBilling license', 'free-license', 'Free BoxBilling license', 'product', 1, 'enabled', 0, 0, 'after_order', '[4,5,6]', NULL, 0, 0, 0, NULL, NULL, NULL, 70, '{\"prefix\":\"BOX-FREE-\", \"length\":25, \"plugin\":\"Default\"}', '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'license'),
(9, 1, 9, NULL, 'My Demo software', 'boxbilling-software', 'My Demo software description', 'product', 1, 'enabled', 0, 0, 'after_payment', '[4,5,6]', NULL, 0, 0, 0, NULL, NULL, NULL, 60, '{\"filename\":\"test.txt\"}', '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'downloadable'),
(10, 2, 10, NULL, 'Shared Hosting', 'shared-hosting', 'Shared hosting description', 'product', 1, 'enabled', 0, 0, 'after_payment', '[4,5,6]', NULL, 0, 0, 0, NULL, NULL, NULL, 2, '{\"server_id\":\"1\", \"hosting_plan_id\":\"1\", \"reseller\":0,\"free_domain_periods\":[\"3M\"],\"free_domain\":\"1\",\"free_tlds\":[\".com\"]}', '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'hosting'),
(11, 2, 11, NULL, 'Gold Hosting', 'reseller-hosting', 'Reseller hosting description', 'product', 1, 'enabled', 0, 0, 'after_payment', '[4,5,6]', NULL, 0, 0, 0, NULL, NULL, NULL, 3, '{\"server_id\":\"1\", \"hosting_plan_id\":\"1\", \"reseller\":1}', '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'hosting'),
(12, 5, NULL, NULL, 'All domains', 'domain-checker', 'Choose domains', 'product', 1, 'enabled', 0, 0, 'after_payment', '[4,5,6]', NULL, 0, 0, 0, NULL, NULL, NULL, 1, '{\"all_tlds\":1}', '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'domain'),
(13, 4, 12, NULL, 'Forum membership', 'forum-membership', 'Register for our forum membership', 'product', 1, 'enabled', 0, 0, 'after_payment', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 10, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00', 'membership');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `icon_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `title`, `description`, `icon_url`, `created_at`, `updated_at`) VALUES
(1, 'Downloadable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris magna nisi, aliquet at condimentum ut, congue et orci.\nIn non arcu eget enim ultricies blandit. Nullam eget eros quis nunc tristique malesuada eu sit amet libero.\n', NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'Hosting', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris magna nisi, aliquet at condimentum ut, congue et orci.\nIn non arcu eget enim ultricies blandit. Nullam eget eros quis nunc tristique malesuada eu sit amet libero.\n', NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 'Licenses', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris magna nisi, aliquet at condimentum ut, congue et orci.\nIn non arcu eget enim ultricies blandit. Nullam eget eros quis nunc tristique malesuada eu sit amet libero.\n', NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 'Custom', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris magna nisi, aliquet at condimentum ut, congue et orci.\nIn non arcu eget enim ultricies blandit. Nullam eget eros quis nunc tristique malesuada eu sit amet libero.\n', NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(5, 'Domains', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris magna nisi, aliquet at condimentum ut, congue et orci.\nIn non arcu eget enim ultricies blandit. Nullam eget eros quis nunc tristique malesuada eu sit amet libero.\n', NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_payment`
--

CREATE TABLE `product_payment` (
  `id` bigint(20) NOT NULL,
  `type` varchar(30) DEFAULT NULL COMMENT 'free, once, recurrent',
  `once_price` decimal(18,2) DEFAULT '0.00',
  `once_setup_price` decimal(18,2) DEFAULT '0.00',
  `w_price` decimal(18,2) DEFAULT '0.00',
  `m_price` decimal(18,2) DEFAULT '0.00',
  `q_price` decimal(18,2) DEFAULT '0.00',
  `b_price` decimal(18,2) DEFAULT '0.00',
  `a_price` decimal(18,2) DEFAULT '0.00',
  `bia_price` decimal(18,2) DEFAULT '0.00',
  `tria_price` decimal(18,2) DEFAULT '0.00',
  `w_setup_price` decimal(18,2) DEFAULT '0.00',
  `m_setup_price` decimal(18,2) DEFAULT '0.00',
  `q_setup_price` decimal(18,2) DEFAULT '0.00',
  `b_setup_price` decimal(18,2) DEFAULT '0.00',
  `a_setup_price` decimal(18,2) DEFAULT '0.00',
  `bia_setup_price` decimal(18,2) DEFAULT '0.00',
  `tria_setup_price` decimal(18,2) DEFAULT '0.00',
  `w_enabled` tinyint(1) DEFAULT '1',
  `m_enabled` tinyint(1) DEFAULT '1',
  `q_enabled` tinyint(1) DEFAULT '1',
  `b_enabled` tinyint(1) DEFAULT '1',
  `a_enabled` tinyint(1) DEFAULT '1',
  `bia_enabled` tinyint(1) DEFAULT '1',
  `tria_enabled` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_payment`
--

INSERT INTO `product_payment` (`id`, `type`, `once_price`, `once_setup_price`, `w_price`, `m_price`, `q_price`, `b_price`, `a_price`, `bia_price`, `tria_price`, `w_setup_price`, `m_setup_price`, `q_setup_price`, `b_setup_price`, `a_setup_price`, `bia_setup_price`, `tria_setup_price`, `w_enabled`, `m_enabled`, `q_enabled`, `b_enabled`, `a_enabled`, `bia_enabled`, `tria_enabled`) VALUES
(1, 'once', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 1, 1),
(2, 'once', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 1, 1),
(3, 'once', '1000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 1, 1),
(4, 'free', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 1, 1),
(5, 'once', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 1, 1),
(6, 'recurrent', '0.00', '0.00', '0.00', '30.00', '20.00', '10.00', '5.00', '50.00', '50.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 1, 1, 1, 1, 1, 1),
(7, 'recurrent', '0.00', '0.00', '0.00', '30.00', '20.00', '10.00', '5.00', '50.00', '50.00', '0.00', '10.00', '10.00', '0.00', '0.00', '0.00', '0.00', 0, 1, 1, 1, 1, 1, 1),
(8, 'free', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 1, 1),
(9, 'once', '150.00', '50.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 1, 1, 1, 1, 1, 1),
(10, 'recurrent', '0.00', '0.00', '0.00', '10.00', '30.00', '60.00', '120.00', '50.00', '50.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 1, 1, 1, 1, 1, 1),
(11, 'recurrent', '0.00', '0.00', '0.00', '10.00', '30.00', '60.00', '120.00', '50.00', '50.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 1, 1, 1, 1, 1, 1),
(12, 'recurrent', '0.00', '0.00', '0.00', '10.00', '30.00', '60.00', '120.00', '200.00', '400.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` bigint(20) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'percentage' COMMENT 'absolute, percentage, trial',
  `value` decimal(18,2) DEFAULT NULL,
  `maxuses` int(11) DEFAULT '0',
  `used` int(11) DEFAULT '0',
  `freesetup` tinyint(1) DEFAULT '0',
  `once_per_client` tinyint(1) DEFAULT '0',
  `recurring` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `products` text,
  `periods` text,
  `client_groups` text,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `code`, `description`, `type`, `value`, `maxuses`, `used`, `freesetup`, `once_per_client`, `recurring`, `active`, `products`, `periods`, `client_groups`, `start_at`, `end_at`, `created_at`, `updated_at`) VALUES
(1, 'PERCENT', NULL, 'percentage', '50.00', 100, 0, 0, 0, 0, 1, '[7]', NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'CHRISTMAS', NULL, 'percentage', '100.00', 100, 0, 1, 0, 0, 1, '[7]', NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 'FREESETUP', NULL, 'absolute', '0.00', 100, 0, 1, 0, 0, 1, '[]', NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 'NEW_YEAR', NULL, 'absolute', '0.00', 100, 0, 1, 0, 0, 1, '[]', NULL, NULL, '2020-01-01 12:00:00', '2015-01-01 12:00:00', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(5, 'ONCE_PER_CLIENT', NULL, 'percentage', '100.00', 100, 0, 1, 1, 0, 1, '[]', NULL, NULL, '2020-01-01 12:00:00', '2015-01-01 12:00:00', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `timeout` bigint(20) DEFAULT NULL,
  `iteration` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `queue_message`
--

CREATE TABLE `queue_message` (
  `id` bigint(20) NOT NULL,
  `queue_id` bigint(20) DEFAULT NULL,
  `handle` char(32) DEFAULT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `body` longblob,
  `hash` char(32) DEFAULT NULL,
  `timeout` double(18,2) DEFAULT NULL,
  `log` text,
  `execute_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_custom`
--

CREATE TABLE `service_custom` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT NULL,
  `plugin_config` text,
  `f1` text,
  `f2` text,
  `f3` text,
  `f4` text,
  `f5` text,
  `f6` text,
  `f7` text,
  `f8` text,
  `f9` text,
  `f10` text,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_domain`
--

CREATE TABLE `service_domain` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `tld_registrar_id` bigint(20) DEFAULT NULL,
  `sld` varchar(255) DEFAULT NULL,
  `tld` varchar(100) DEFAULT NULL,
  `ns1` varchar(255) DEFAULT NULL,
  `ns2` varchar(255) DEFAULT NULL,
  `ns3` varchar(255) DEFAULT NULL,
  `ns4` varchar(255) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `privacy` int(11) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '1',
  `transfer_code` varchar(255) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_company` varchar(255) DEFAULT NULL,
  `contact_first_name` varchar(255) DEFAULT NULL,
  `contact_last_name` varchar(255) DEFAULT NULL,
  `contact_address1` varchar(255) DEFAULT NULL,
  `contact_address2` varchar(255) DEFAULT NULL,
  `contact_city` varchar(255) DEFAULT NULL,
  `contact_state` varchar(255) DEFAULT NULL,
  `contact_postcode` varchar(255) DEFAULT NULL,
  `contact_country` varchar(255) DEFAULT NULL,
  `contact_phone_cc` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `details` text,
  `synced_at` datetime DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_downloadable`
--

CREATE TABLE `service_downloadable` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_hosting`
--

CREATE TABLE `service_hosting` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `service_hosting_server_id` bigint(20) DEFAULT NULL,
  `service_hosting_hp_id` bigint(20) DEFAULT NULL,
  `sld` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `reseller` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_hosting_hp`
--

CREATE TABLE `service_hosting_hp` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quota` varchar(50) DEFAULT NULL,
  `bandwidth` varchar(50) DEFAULT NULL,
  `max_ftp` varchar(50) DEFAULT NULL,
  `max_sql` varchar(50) DEFAULT NULL,
  `max_pop` varchar(50) DEFAULT NULL,
  `max_sub` varchar(50) DEFAULT NULL,
  `max_park` varchar(50) DEFAULT NULL,
  `max_addon` varchar(50) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_hosting_hp`
--

INSERT INTO `service_hosting_hp` (`id`, `name`, `quota`, `bandwidth`, `max_ftp`, `max_sql`, `max_pop`, `max_sub`, `max_park`, `max_addon`, `config`, `created_at`, `updated_at`) VALUES
(1, 'Silver', '1024', '1024', NULL, NULL, NULL, NULL, NULL, '1', '{\"custom\":\"value\"}', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'Golden', '2048', '2048', NULL, NULL, NULL, NULL, NULL, '2', '{\"custom\":\"value\"}', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 'Platinum', '4096', '4096', NULL, NULL, NULL, NULL, NULL, '5', '{\"custom\":\"value\"}', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_hosting_server`
--

CREATE TABLE `service_hosting_server` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `hostname` varchar(100) DEFAULT NULL,
  `assigned_ips` text,
  `status_url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `max_accounts` bigint(20) DEFAULT NULL,
  `ns1` varchar(100) DEFAULT NULL,
  `ns2` varchar(100) DEFAULT NULL,
  `ns3` varchar(100) DEFAULT NULL,
  `ns4` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `username` text,
  `password` text,
  `accesshash` text,
  `port` varchar(20) DEFAULT NULL,
  `config` text,
  `secure` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_hosting_server`
--

INSERT INTO `service_hosting_server` (`id`, `name`, `ip`, `hostname`, `assigned_ips`, `status_url`, `active`, `max_accounts`, `ns1`, `ns2`, `ns3`, `ns4`, `manager`, `username`, `password`, `accesshash`, `port`, `config`, `secure`, `created_at`, `updated_at`) VALUES
(1, 'Buffalo', '184.22.222.135', 'server1.main-hosting.com', NULL, NULL, 1, 1000, 'ns1.ilife.lt', 'ns2.ilife.lt', NULL, NULL, 'custom', NULL, NULL, NULL, NULL, NULL, 1, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'Server2', '184.22.222.139', 'server2.main-hosting.com', NULL, NULL, 1, 1000, 'ns1.ilife.lt', 'ns2.ilife.lt', NULL, NULL, 'custom', NULL, NULL, NULL, NULL, NULL, 1, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_license`
--

CREATE TABLE `service_license` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `license_key` varchar(255) DEFAULT NULL,
  `validate_ip` tinyint(1) DEFAULT '1',
  `validate_host` tinyint(1) DEFAULT '1',
  `validate_path` tinyint(1) DEFAULT '0',
  `validate_version` tinyint(1) DEFAULT '0',
  `ips` text,
  `hosts` text,
  `paths` text,
  `versions` text,
  `config` text,
  `plugin` varchar(255) DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `pinged_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_membership`
--

CREATE TABLE `service_membership` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_solusvm`
--

CREATE TABLE `service_solusvm` (
  `id` bigint(20) NOT NULL,
  `cluster_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `vserverid` varchar(255) DEFAULT NULL,
  `virtid` varchar(255) DEFAULT NULL,
  `nodeid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `nodegroup` varchar(255) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `rootpassword` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `ips` varchar(255) DEFAULT NULL,
  `hvmt` varchar(255) DEFAULT NULL,
  `custommemory` varchar(255) DEFAULT NULL,
  `customdiskspace` varchar(255) DEFAULT NULL,
  `custombandwidth` varchar(255) DEFAULT NULL,
  `customcpu` varchar(255) DEFAULT NULL,
  `customextraip` varchar(255) DEFAULT NULL,
  `issuelicense` varchar(255) DEFAULT NULL,
  `mainipaddress` varchar(255) DEFAULT NULL,
  `extraipaddress` varchar(255) DEFAULT NULL,
  `consoleuser` varchar(255) DEFAULT NULL,
  `consolepassword` varchar(255) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `modified_at` int(11) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `modified_at`, `content`) VALUES
('835821685a8390cc4671d79c1a551012', 1617246910, '');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) NOT NULL,
  `param` varchar(255) DEFAULT NULL,
  `value` text,
  `public` tinyint(1) DEFAULT '0',
  `category` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `param`, `value`, `public`, `category`, `hash`, `created_at`, `updated_at`) VALUES
(1, 'last_patch', '9', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'company_name', 'Demo BoxBilling.com', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 'company_email', 'my@mycompany.com', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 'company_signature', 'BoxBilling.com - Client Management, Invoice and Support Software', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(5, 'company_logo', '/bb-themes/boxbilling/assets/images/logo.png', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(6, 'company_address_1', 'Demo address line 1', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(7, 'company_address_2', 'Demo address line 2', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(8, 'company_address_3', 'Demo address line 3', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(9, 'company_tel', '+123 456 12345', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(10, 'company_tos', 'Sit ridiculus nascetur porta purus tortor, augue natoque, pulvinar integer nisi mattis dignissim mus, elementum nascetur, augue etiam. Mus mus tortor? A mauris habitasse dictumst, scelerisque, dis nec pulvinar magnis velit, integer, nisi, aliquet, elit phasellus? Parturient odio purus tristique porttitor augue diam pulvinar magna ac lacus in. Augue tincidunt sociis ultrices parturient aliquet dapibus sit. Pulvinar mauris platea in amet penatibus augue ut non ridiculus, nunc lundium. Duis dapibus a mid proin pellentesque lundium vut mauris egestas dolor nec? Diam eu duis sociis. Dapibus porta! Proin, turpis nascetur et. Aenean tristique eu in elit dolor, montes sit nec, magna amet montes, hac diam ac, pellentesque duis sociis, est placerat? Montes ac, nunc aliquet ridiculus nisi? Dignissim. Et aliquet sed.\n\nAuctor mid, mauris placerat? Scelerisque amet a a facilisis porttitor aenean dolor, placerat dapibus, odio parturient scelerisque? In dis arcu nec mid ac in adipiscing ultricies, pulvinar purus dis. Nisi dis massa magnis, porta amet, scelerisque turpis etiam scelerisque porttitor ac dictumst, cras, enim? Placerat enim pulvinar turpis a cum! Aliquam? Urna ut facilisis diam diam lorem mattis ut, ac pid, sed pellentesque. Egestas nunc, lacus, tempor amet? Lacus, nunc dictumst, ac porttitor magna, nisi, montes scelerisque? Cum, rhoncus. Pid adipiscing porta dictumst porta amet dignissim purus, aliquet dolor non sagittis porta urna? Tortor egestas, ultricies elementum, placerat velit magnis lacus? Augue nunc? Ac et cras ut? Ac odio tortor lectus. Mattis adipiscing urna, scelerisque nec aenean adipiscing mid.\n', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(11, 'company_privacy_policy', 'Ac dapibus. Rhoncus integer sit aliquam a! Natoque? Lacus porttitor rhoncus, aliquam porttitor in risus turpis adipiscing! Integer, mus mattis sed enim ac velit proin est et ut, amet eros! Hac augue et vel ac sit duis facilisis purus tincidunt, porttitor eu a penatibus rhoncus platea et mauris rhoncus magnis rhoncus, montes? Et porttitor, urna, dolor, dapibus elementum porttitor aliquam.\n\nCras risus? Turpis, mus tincidunt vel dolor lectus pulvinar aliquam nascetur parturient nunc proin aenean tortor, augue aenean ac penatibus vut arcu. Augue, aenean dapibus in nec. In tempor turpis dictumst cursus, nec eros, elit non, ut integer magna. Augue placerat magnis facilisis platea ridiculus tincidunt et ut porttitor! Cursus odio, aliquet purus tristique vel tempor urna, vut enim.\n\nPorta habitasse scelerisque elementum adipiscing elit pulvinar? Cursus! Turpis! Massa ac elementum a, facilisis eu, sed ac porta massa sociis nascetur rhoncus sed, scelerisque habitasse aliquam? Velit adipiscing turpis, risus ut duis non integer rhoncus, placerat eu adipiscing, hac? Integer cursus porttitor rhoncus turpis lundium nisi, velit? Arcu tincidunt turpis, nunc integer turpis! Ridiculus enim natoque in, eros odio.\n\nScelerisque tempor dolor magnis natoque cras nascetur lorem, augue habitasse ac ut mid rhoncus? Montes tristique arcu, nisi integer? Augue? Adipiscing tempor parturient elementum nunc? Amet mid aliquam penatibus. Aliquam proin, parturient vel parturient dictumst? A porttitor rhoncus, a sit egestas massa tincidunt! Nunc purus. Hac ac! Enim placerat augue cursus augue sociis cum cras, pulvinar placerat nec platea.\n\nPenatibus et duis, urna. Massa cum porttitor elit porta, natoque etiam et turpis placerat lacus etiam scelerisque nunc, egestas, urna non tincidunt cursus odio urna tempor dictumst dignissim habitasse. Mus non et, nisi purus, pulvinar natoque in vel nascetur. Porttitor phasellus sed aenean eu quis? Nec vel, dignissim magna placerat turpis, ridiculus cum est auctor, sagittis, sit scelerisque duis.\n', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(12, 'company_note', 'Amet auctor, sed massa lacus phasellus turpis urna mauris dictumst, dapibus turpis? Sociis amet, mid aliquam, sagittis, risus, eros porta mid placerat eros in? Elementum porta ac pulvinar porttitor adipiscing, tristique porta pid dolor elementum? Eros, pulvinar amet auctor, urna enim amet magnis ultrices etiam? Dictumst ultrices velit eu tortor aliquet, rhoncus! Magnis porttitor. Vel parturient, ac, nascetur magnis tincidunt.\n\nQuis, pid. Lacus lorem scelerisque tortor phasellus, duis adipiscing nec mid mus purus placerat nunc porttitor placerat, risus odio pulvinar penatibus tincidunt, proin. Est tincidunt aliquam vel, ut scelerisque. Enim lorem magna tempor, auctor elit? Magnis lorem ut cursus, nunc nascetur! Est et odio nunc odio adipiscing amet nunc, ridiculus magnis egestas proin, montes nunc tristique tortor, ridiculus magna.\n', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(13, 'invoice_starting_number', '1', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(14, 'invoice_series', 'BOX', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(15, 'invoice_due_days', '1', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(16, 'invoice_auto_approval', '1', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(17, 'invoice_issue_days_before_expire', '14', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(18, 'invoice_refund_logic', 'credit_note', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(19, 'invoice_cn_series', 'CN-', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(20, 'invoice_series_paid', 'PAID-', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(21, 'issue_invoice_days_before_expire', '7', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(22, 'tax_enabled', '1', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(23, 'theme', 'boxbilling', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(24, 'admin_theme', 'admin_default', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(25, 'enable_wysiwyg', '0', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(26, 'nameserver_1', 'ns1.1freehosting.com', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(27, 'nameserver_2', 'ns2.1freehosting.com', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(28, 'nameserver_3', 'ns3.1freehosting.com', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(29, 'nameserver_4', 'ns4.1freehosting.com', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(30, 'funds_min_amount', '10', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(31, 'funds_max_amount', '200', 0, NULL, NULL, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(32, 'invoice_overdue_invoked', '2014-09-16T06:33:41-04:00', 0, NULL, NULL, '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(33, 'servicedomain_last_sync', '2014-09-16T06:33:41-04:00', 0, NULL, NULL, '2014-09-16 06:33:41', '2014-09-16 06:33:41'),
(34, 'last_cron_exec', '2014-09-16T06:33:41-04:00', 0, NULL, NULL, '2014-09-16 06:33:41', '2014-09-16 06:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `pay_gateway_id` bigint(20) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` bigint(20) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `amount` double(18,2) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `support_helpdesk`
--

CREATE TABLE `support_helpdesk` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `close_after` smallint(6) DEFAULT '24',
  `can_reopen` tinyint(1) DEFAULT '0',
  `signature` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support_helpdesk`
--

INSERT INTO `support_helpdesk` (`id`, `name`, `email`, `close_after`, `can_reopen`, `signature`, `created_at`, `updated_at`) VALUES
(1, 'General', 'info@boxbilling.com', 24, 0, 'It is always a pleasure to help.\nHave a Nice Day !', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `support_pr`
--

CREATE TABLE `support_pr` (
  `id` bigint(20) NOT NULL,
  `support_pr_category_id` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support_pr`
--

INSERT INTO `support_pr` (`id`, `support_pr_category_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello #1', 'Hello,\n\n\n\nThank you for using our services.', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 1, 'Hello #2', 'Greetings,\n\n\n\nThank you.', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 2, 'It was fixed', '\nIt was fixed for your account. If you have any more questions or requests, please let us to know.', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(4, 2, 'It was done as requested', '\nIt\'s done as you have requested. Please let us to know if you have any further requests or questions.', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(5, 2, 'Your website works fine', '\nI have just checked your website and it works fine. Please check it from your end and let us to know if you still experience any problems.', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(6, 3, 'Do you get any errors?', '\nDo you get any errors and maybe you can copy/paste full error messages?', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(7, 3, 'Domain is not pointing to our server', '\nYour domain is not pointing to our server. Please set our nameservers for your domain and give 24 hours until changes will apply worldwide.', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(8, 3, 'What is your domain and username?', '\nWhat is your domain name and username?', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `support_pr_category`
--

CREATE TABLE `support_pr_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support_pr_category`
--

INSERT INTO `support_pr_category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Greetings', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 'General', '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(3, 'Accounting', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `support_p_ticket`
--

CREATE TABLE `support_p_ticket` (
  `id` bigint(20) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'open',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `support_p_ticket_message`
--

CREATE TABLE `support_p_ticket_message` (
  `id` bigint(20) NOT NULL,
  `support_p_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL COMMENT 'Filled when message author is admin',
  `content` text,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket`
--

CREATE TABLE `support_ticket` (
  `id` bigint(20) NOT NULL,
  `support_helpdesk_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT '100',
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'open' COMMENT 'open, closed, on_hold',
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` bigint(20) DEFAULT NULL,
  `rel_task` varchar(100) DEFAULT NULL,
  `rel_new_value` text,
  `rel_status` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support_ticket`
--

INSERT INTO `support_ticket` (`id`, `support_helpdesk_id`, `client_id`, `priority`, `subject`, `status`, `rel_type`, `rel_id`, `rel_task`, `rel_new_value`, `rel_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 'Regarding your new domain', 'closed', NULL, NULL, NULL, NULL, NULL, '2020-01-01 12:00:00', '2014-09-16 06:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_message`
--

CREATE TABLE `support_ticket_message` (
  `id` bigint(20) NOT NULL,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `content` text,
  `attachment` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support_ticket_message`
--

INSERT INTO `support_ticket_message` (`id`, `support_ticket_id`, `client_id`, `admin_id`, `content`, `attachment`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'Hello,\n\nIt\'s done as you have requested. Please let us to know if you have any further requests or questions.\n\nSincerely Yours, Demo Administrator', NULL, '127.0.0.1', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_note`
--

CREATE TABLE `support_ticket_note` (
  `id` bigint(20) NOT NULL,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` bigint(20) NOT NULL,
  `level` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `taxrate` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `level`, `name`, `country`, `state`, `taxrate`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Global Tax', NULL, NULL, '5', '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tld`
--

CREATE TABLE `tld` (
  `id` bigint(20) NOT NULL,
  `tld_registrar_id` bigint(20) DEFAULT NULL,
  `tld` varchar(15) DEFAULT NULL,
  `price_registration` decimal(18,2) DEFAULT '0.00',
  `price_renew` decimal(18,2) DEFAULT '0.00',
  `price_transfer` decimal(18,2) DEFAULT '0.00',
  `allow_register` tinyint(1) DEFAULT NULL,
  `allow_transfer` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `min_years` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tld`
--

INSERT INTO `tld` (`id`, `tld_registrar_id`, `tld`, `price_registration`, `price_renew`, `price_transfer`, `allow_register`, `allow_transfer`, `active`, `min_years`, `created_at`, `updated_at`) VALUES
(1, 1, '.com', '11.99', '10.99', '9.99', 1, 1, 1, 1, '2020-01-01 12:00:00', '2020-01-01 12:00:00'),
(2, 1, '.net', '7.99', '7.99', '5.99', 1, 1, 1, 1, '2020-01-01 12:00:00', '2020-01-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tld_registrar`
--

CREATE TABLE `tld_registrar` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `registrar` varchar(255) DEFAULT NULL,
  `test_mode` tinyint(4) DEFAULT '0',
  `config` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tld_registrar`
--

INSERT INTO `tld_registrar` (`id`, `name`, `registrar`, `test_mode`, `config`) VALUES
(1, 'Custom', 'Custom', 0, NULL),
(2, 'Email', 'Email', 0, NULL),
(3, 'Reseller Club', 'Resellerclub', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `txn_status` varchar(255) DEFAULT NULL,
  `s_id` varchar(255) DEFAULT NULL,
  `s_period` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'received',
  `ip` varchar(45) DEFAULT NULL,
  `error` text,
  `error_code` int(11) DEFAULT NULL,
  `validate_ipn` tinyint(1) DEFAULT '1',
  `ipn` text,
  `output` text,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_admin_history`
--
ALTER TABLE `activity_admin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id_idx` (`admin_id`);

--
-- Indexes for table `activity_client_email`
--
ALTER TABLE `activity_client_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `activity_client_history`
--
ALTER TABLE `activity_client_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `activity_system`
--
ALTER TABLE `activity_system`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id_idx` (`admin_id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `admin_group_id_idx` (`admin_group_id`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_request`
--
ALTER TABLE `api_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id_idx` (`session_id`),
  ADD KEY `currency_id_idx` (`currency_id`),
  ADD KEY `promo_id_idx` (`promo_id`);

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id_idx` (`cart_id`),
  ADD KEY `product_id_idx` (`product_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `alternative_id_idx` (`aid`),
  ADD KEY `client_group_id_idx` (`client_group_id`);

--
-- Indexes for table `client_balance`
--
ALTER TABLE `client_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `client_group`
--
ALTER TABLE `client_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_order`
--
ALTER TABLE `client_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`),
  ADD KEY `product_id_idx` (`product_id`),
  ADD KEY `form_id_idx` (`form_id`),
  ADD KEY `promo_id_idx` (`promo_id`);

--
-- Indexes for table `client_order_meta`
--
ALTER TABLE `client_order_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_order_id_idx` (`client_order_id`);

--
-- Indexes for table `client_order_status`
--
ALTER TABLE `client_order_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_order_id_idx` (`client_order_id`);

--
-- Indexes for table `client_password_reset`
--
ALTER TABLE `client_password_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `action_code` (`action_code`);

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extension_meta`
--
ALTER TABLE `extension_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id_idx` (`form_id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `forum_id_idx` (`forum_id`);

--
-- Indexes for table `forum_topic_message`
--
ALTER TABLE `forum_topic_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_id_idx` (`forum_topic_id`),
  ADD KEY `client_id_idx` (`client_id`),
  ADD KEY `admin_id_idx` (`admin_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id_idx` (`invoice_id`);

--
-- Indexes for table `kb_article`
--
ALTER TABLE `kb_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `kb_article_category_id_idx` (`kb_article_category_id`);

--
-- Indexes for table `kb_article_category`
--
ALTER TABLE `kb_article_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mod_email_queue`
--
ALTER TABLE `mod_email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mod_massmailer`
--
ALTER TABLE `mod_massmailer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_gateway`
--
ALTER TABLE `pay_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `admin_id_idx` (`admin_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `product_type_idx` (`type`),
  ADD KEY `product_category_id_idx` (`product_category_id`),
  ADD KEY `product_payment_id_idx` (`product_payment_id`),
  ADD KEY `form_id_idx` (`form_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_payment`
--
ALTER TABLE `product_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `start_index_idx` (`start_at`),
  ADD KEY `end_index_idx` (`end_at`),
  ADD KEY `active_index_idx` (`active`),
  ADD KEY `code_index_idx` (`code`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_message`
--
ALTER TABLE `queue_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_id_idx` (`queue_id`);

--
-- Indexes for table `service_custom`
--
ALTER TABLE `service_custom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `service_domain`
--
ALTER TABLE `service_domain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`),
  ADD KEY `tld_registrar_id_idx` (`tld_registrar_id`);

--
-- Indexes for table `service_downloadable`
--
ALTER TABLE `service_downloadable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `service_hosting`
--
ALTER TABLE `service_hosting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`),
  ADD KEY `service_hosting_server_id_idx` (`service_hosting_server_id`),
  ADD KEY `service_hosting_hp_id_idx` (`service_hosting_hp_id`);

--
-- Indexes for table `service_hosting_hp`
--
ALTER TABLE `service_hosting_hp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_hosting_server`
--
ALTER TABLE `service_hosting_server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_license`
--
ALTER TABLE `service_license`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `license_key` (`license_key`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `service_membership`
--
ALTER TABLE `service_membership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `service_solusvm`
--
ALTER TABLE `service_solusvm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD UNIQUE KEY `unique_id` (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `param` (`param`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_idx` (`client_id`),
  ADD KEY `pay_gateway_id_idx` (`pay_gateway_id`);

--
-- Indexes for table `support_helpdesk`
--
ALTER TABLE `support_helpdesk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_pr`
--
ALTER TABLE `support_pr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_pr_category_id_idx` (`support_pr_category_id`);

--
-- Indexes for table `support_pr_category`
--
ALTER TABLE `support_pr_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_p_ticket`
--
ALTER TABLE `support_p_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_p_ticket_message`
--
ALTER TABLE `support_p_ticket_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_p_ticket_id_idx` (`support_p_ticket_id`),
  ADD KEY `admin_id_idx` (`admin_id`);
ALTER TABLE `support_p_ticket_message` ADD FULLTEXT KEY `content_idx` (`content`);

--
-- Indexes for table `support_ticket`
--
ALTER TABLE `support_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_helpdesk_id_idx` (`support_helpdesk_id`),
  ADD KEY `client_id_idx` (`client_id`);

--
-- Indexes for table `support_ticket_message`
--
ALTER TABLE `support_ticket_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_ticket_id_idx` (`support_ticket_id`),
  ADD KEY `client_id_idx` (`client_id`),
  ADD KEY `admin_id_idx` (`admin_id`);
ALTER TABLE `support_ticket_message` ADD FULLTEXT KEY `content_idx` (`content`);

--
-- Indexes for table `support_ticket_note`
--
ALTER TABLE `support_ticket_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_ticket_id_idx` (`support_ticket_id`),
  ADD KEY `admin_id_idx` (`admin_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tld`
--
ALTER TABLE `tld`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tld` (`tld`),
  ADD KEY `tld_registrar_id_idx` (`tld_registrar_id`);

--
-- Indexes for table `tld_registrar`
--
ALTER TABLE `tld_registrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id_idx` (`invoice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_admin_history`
--
ALTER TABLE `activity_admin_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_client_email`
--
ALTER TABLE `activity_client_email`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_client_history`
--
ALTER TABLE `activity_client_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_system`
--
ALTER TABLE `activity_system`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_request`
--
ALTER TABLE `api_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_balance`
--
ALTER TABLE `client_balance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_group`
--
ALTER TABLE `client_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_order`
--
ALTER TABLE `client_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_order_meta`
--
ALTER TABLE `client_order_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_order_status`
--
ALTER TABLE `client_order_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_password_reset`
--
ALTER TABLE `client_password_reset`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extension`
--
ALTER TABLE `extension`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `extension_meta`
--
ALTER TABLE `extension_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_topic_message`
--
ALTER TABLE `forum_topic_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kb_article`
--
ALTER TABLE `kb_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kb_article_category`
--
ALTER TABLE `kb_article_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mod_email_queue`
--
ALTER TABLE `mod_email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mod_massmailer`
--
ALTER TABLE `mod_massmailer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_gateway`
--
ALTER TABLE `pay_gateway`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_payment`
--
ALTER TABLE `product_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queue_message`
--
ALTER TABLE `queue_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_custom`
--
ALTER TABLE `service_custom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_domain`
--
ALTER TABLE `service_domain`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_downloadable`
--
ALTER TABLE `service_downloadable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_hosting`
--
ALTER TABLE `service_hosting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_hosting_hp`
--
ALTER TABLE `service_hosting_hp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_hosting_server`
--
ALTER TABLE `service_hosting_server`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_license`
--
ALTER TABLE `service_license`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_membership`
--
ALTER TABLE `service_membership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_solusvm`
--
ALTER TABLE `service_solusvm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_helpdesk`
--
ALTER TABLE `support_helpdesk`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_pr`
--
ALTER TABLE `support_pr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `support_pr_category`
--
ALTER TABLE `support_pr_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_p_ticket`
--
ALTER TABLE `support_p_ticket`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_p_ticket_message`
--
ALTER TABLE `support_p_ticket_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket`
--
ALTER TABLE `support_ticket`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_ticket_message`
--
ALTER TABLE `support_ticket_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_ticket_note`
--
ALTER TABLE `support_ticket_note`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tld`
--
ALTER TABLE `tld`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tld_registrar`
--
ALTER TABLE `tld_registrar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
