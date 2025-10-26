-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2025 at 10:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anorrldb`
--
CREATE DATABASE IF NOT EXISTS `anorrldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `anorrldb`;

-- --------------------------------------------------------

--
-- Table structure for table `accesskeys`
--

DROP TABLE IF EXISTS `accesskeys`;
CREATE TABLE `accesskeys` (
  `access_key` varchar(50) NOT NULL,
  `access_discorduid` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `userid` int(11) NOT NULL,
  `action` text NOT NULL,
  `action_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `asset_creator` int(11) NOT NULL,
  `asset_type` int(11) NOT NULL,
  `asset_name` varchar(128) NOT NULL,
  `asset_description` text NOT NULL,
  `asset_public` int(11) NOT NULL DEFAULT 0,
  `asset_status` int(11) NOT NULL DEFAULT 1,
  `asset_favourites_count` int(11) NOT NULL DEFAULT 0,
  `asset_comments_enabled` int(11) NOT NULL DEFAULT 1,
  `asset_onsale` int(11) NOT NULL DEFAULT 0,
  `asset_cost_lights` int(11) NOT NULL DEFAULT 0,
  `asset_cost_cones` int(11) NOT NULL DEFAULT 0,
  `asset_sales_count` int(11) NOT NULL DEFAULT 0,
  `asset_relatedid` int(11) DEFAULT NULL,
  `asset_currentversion` int(11) NOT NULL DEFAULT 1,
  `asset_nevershow` int(11) NOT NULL DEFAULT 0,
  `asset_lastedited` timestamp NOT NULL DEFAULT current_timestamp(),
  `asset_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_id`, `asset_creator`, `asset_type`, `asset_name`, `asset_description`, `asset_public`, `asset_status`, `asset_favourites_count`, `asset_comments_enabled`, `asset_onsale`, `asset_cost_lights`, `asset_cost_cones`, `asset_sales_count`, `asset_relatedid`, `asset_currentversion`, `asset_nevershow`, `asset_lastedited`, `asset_created`) VALUES
(1, 1, 5, 'StarterScript', '', 0, 1, 1, 1, 0, 0, 0, 0, NULL, 4, 1, '2025-10-07 20:11:01', '2025-09-16 21:33:11'),
(2, 1, 5, 'LibraryRegistration', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-16 21:33:34', '2025-09-16 21:33:34'),
(3, 1, 5, 'RbxGui', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 2, 1, '2025-09-21 13:57:49', '2025-09-16 21:34:14'),
(4, 1, 5, 'RbxGear', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-16 21:34:52', '2025-09-16 21:34:52'),
(5, 1, 5, 'RbxStatus', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:30:51', '2025-09-17 06:30:51'),
(6, 1, 5, 'RbxUtility', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:31:10', '2025-09-17 06:31:10'),
(7, 1, 5, 'RbxStamper', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:31:26', '2025-09-17 06:31:26'),
(8, 1, 4, 'inverseCornerWedgeMesh', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:32:12', '2025-09-17 06:32:12'),
(9, 1, 5, 'ToolTip', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:34:31', '2025-09-17 06:34:31'),
(10, 1, 5, 'Settings', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:34:46', '2025-09-17 06:34:46'),
(11, 1, 1, 'Spinner 1', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:34:58', '2025-09-17 06:34:58'),
(12, 1, 1, 'Spinner 2', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:35:05', '2025-09-17 06:35:05'),
(13, 1, 1, 'classicLookScreenUrl', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:38:29', '2025-09-17 06:38:29'),
(14, 1, 1, 'Move Page', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:41:05', '2025-09-17 06:41:05'),
(15, 1, 1, 'Zoom Page', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:42:40', '2025-09-17 06:42:40'),
(16, 1, 1, 'Gear Page', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:42:51', '2025-09-17 06:42:51'),
(17, 1, 1, 'mouseLockLookScreenUrl', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:43:05', '2025-09-17 06:43:05'),
(18, 1, 5, 'MainBotChatScript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:43:20', '2025-09-17 06:43:20'),
(19, 1, 5, 'PopupScript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:24:55', '2025-09-17 06:43:30'),
(20, 1, 1, 'Backing from popupscript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:43:37', '2025-09-17 06:43:37'),
(21, 1, 5, 'NotificationScript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:43:55', '2025-09-17 06:43:55'),
(22, 1, 5, 'ChatScript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:44:07', '2025-09-17 06:44:07'),
(23, 1, 1, 'mobile chat button for chatscript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:44:18', '2025-09-17 06:44:18'),
(24, 1, 1, 'safe chat button for chatscript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:44:26', '2025-09-17 06:44:26'),
(25, 1, 1, 'ChatFrame for chatscript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:44:36', '2025-09-17 06:44:36'),
(26, 1, 5, 'PurchasePromptScript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:45:05', '2025-09-17 06:45:05'),
(27, 1, 1, 'warningErrorIcon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:45:17', '2025-09-17 06:45:17'),
(28, 1, 1, 'errorIcon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:45:23', '2025-09-17 06:45:23'),
(29, 1, 1, 'successIcon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:45:30', '2025-09-17 06:45:30'),
(30, 1, 1, 'dropDownIcon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:45:36', '2025-09-17 06:45:36'),
(31, 1, 1, 'cancelImage', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:45:43', '2025-09-17 06:45:43'),
(32, 1, 1, 'dropDownButton', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 06:45:50', '2025-09-17 06:45:50'),
(33, 1, 1, 'Grass', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:08:19', '2025-09-17 07:08:19'),
(34, 1, 1, 'Sand', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:08:26', '2025-09-17 07:08:26'),
(35, 1, 1, 'Brick', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:08:34', '2025-09-17 07:08:34'),
(36, 1, 1, 'Granite', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:09:20', '2025-09-17 07:09:20'),
(37, 1, 1, 'Asphalt', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:09:37', '2025-09-17 07:09:37'),
(38, 1, 1, 'Iron', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:09:47', '2025-09-17 07:09:47'),
(39, 1, 1, 'Aluminum', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:09:54', '2025-09-17 07:09:54'),
(40, 1, 1, 'Gold', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:10:01', '2025-09-17 07:10:01'),
(41, 1, 1, 'Plastic (red)', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:10:54', '2025-09-17 07:10:54'),
(42, 1, 1, 'Plastic (blue)', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:11:07', '2025-09-17 07:11:07'),
(43, 1, 1, 'Plank', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:11:16', '2025-09-17 07:11:16'),
(44, 1, 1, 'Log', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:11:25', '2025-09-17 07:11:25'),
(45, 1, 1, 'Gravel', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:11:47', '2025-09-17 07:11:47'),
(46, 1, 1, 'Cinder Block', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:11:59', '2025-09-17 07:11:59'),
(47, 1, 1, 'Stone Wall', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:12:09', '2025-09-17 07:12:09'),
(48, 1, 1, 'Concrete', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:12:18', '2025-09-17 07:12:18'),
(49, 1, 1, 'Water', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:12:36', '2025-09-17 07:12:36'),
(50, 1, 1, 'Terrain Cursor', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:15:08', '2025-09-17 07:15:08'),
(51, 1, 1, 'Green Loading Bar (also Healthbar)', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-17 07:15:30', '2025-09-17 07:15:30'),
(52, 1, 1, 'scrolldrag (rbxgui)', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:39:59', '2025-09-21 13:39:59'),
(53, 1, 1, 'Buy Image', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:41:17', '2025-09-21 13:41:17'),
(54, 1, 1, 'Buy Image Down', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:41:35', '2025-09-21 13:41:35'),
(55, 1, 1, 'Buy Image Disabled', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:41:48', '2025-09-21 13:41:48'),
(56, 1, 1, 'Cancel Button', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:41:57', '2025-09-21 13:41:57'),
(57, 1, 1, 'Cancel Button Down', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:42:10', '2025-09-21 13:42:10'),
(58, 1, 1, 'Ok Button', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:43:39', '2025-09-21 13:43:39'),
(59, 1, 1, 'Ok Button Down', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:43:59', '2025-09-21 13:43:59'),
(60, 1, 1, 'Take Now Button', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:44:39', '2025-09-21 13:44:39'),
(61, 1, 1, 'Take Now Button Down', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:44:48', '2025-09-21 13:44:48'),
(62, 1, 1, 'Robux Icon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:46:07', '2025-09-21 13:46:07'),
(63, 1, 1, 'Tix Icon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 13:46:14', '2025-09-21 13:46:14'),
(64, 1, 5, 'PlayerList', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:03:40', '2025-09-21 20:03:40'),
(65, 1, 1, 'bottom dark', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:04:47', '2025-09-21 20:04:47'),
(66, 1, 1, 'bottom light', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:04:57', '2025-09-21 20:04:57'),
(67, 1, 1, 'mid dark', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:05:14', '2025-09-21 20:05:14'),
(68, 1, 1, 'mid light', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:05:34', '2025-09-21 20:05:34'),
(69, 1, 1, 'large dark', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:19:21', '2025-09-21 20:19:21'),
(70, 1, 1, 'large light', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:19:33', '2025-09-21 20:19:33'),
(71, 1, 1, 'large header', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:34:26', '2025-09-21 20:34:26'),
(72, 1, 1, 'normal header', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:34:35', '2025-09-21 20:34:35'),
(73, 1, 1, 'large bottom', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:34:47', '2025-09-21 20:34:47'),
(74, 1, 1, 'normal bottom', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:34:54', '2025-09-21 20:34:54'),
(75, 1, 1, 'DarkBluePopupMid/LightBluePopupMid', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:35:11', '2025-09-21 20:35:11'),
(76, 1, 1, 'DarkPopupMid', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:35:18', '2025-09-21 20:35:18'),
(77, 1, 1, 'LightPopupMid', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:35:30', '2025-09-21 20:35:30'),
(78, 1, 1, 'DarkBluePopupTop', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:35:40', '2025-09-21 20:35:40'),
(79, 1, 1, 'DarkBluePopupBottom', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:35:48', '2025-09-21 20:35:48'),
(80, 1, 1, 'LightPopupBottom', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:36:14', '2025-09-21 20:36:14'),
(81, 1, 1, 'DarkPopupBottom', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:36:24', '2025-09-21 20:36:24'),
(82, 1, 1, 'ExtendTab', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:36:57', '2025-09-21 20:36:57'),
(83, 1, 1, 'DextendTab', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:37:06', '2025-09-21 20:37:06'),
(84, 1, 1, 'Submit Button', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:37:15', '2025-09-21 20:37:15'),
(85, 1, 1, 'Submit Button Down', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:37:24', '2025-09-21 20:37:24'),
(86, 1, 1, 'Cancel Report Button', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:37:34', '2025-09-21 20:37:34'),
(87, 1, 1, 'Ok Button', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:37:47', '2025-09-21 20:37:47'),
(88, 1, 1, 'NormalAbuseBox', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:38:31', '2025-09-21 20:38:31'),
(89, 1, 1, 'AbuseSettingsFrame', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:38:40', '2025-09-21 20:38:40'),
(90, 1, 1, 'Popup Backboard thing', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:38:54', '2025-09-21 20:38:54'),
(91, 1, 1, 'Friends Icon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:39:06', '2025-09-21 20:39:06'),
(92, 1, 1, 'FriendReq Sent Icon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:39:14', '2025-09-21 20:39:14'),
(93, 1, 1, 'FriendReq Recieved Icon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:39:24', '2025-09-21 20:39:24'),
(94, 1, 1, 'Admin Icon', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 20:39:32', '2025-09-21 20:39:32'),
(95, 1, 5, 'BackpackBuilder', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:40:13', '2025-09-21 21:40:13'),
(96, 1, 1, 'CLBackground', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:40:28', '2025-09-21 21:40:28'),
(97, 1, 1, 'BackgroundUp', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:40:40', '2025-09-21 21:40:40'),
(98, 1, 1, 'Backpack Button', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:40:54', '2025-09-21 21:40:54'),
(99, 1, 1, 'Slotbackground', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:41:05', '2025-09-21 21:41:05'),
(100, 1, 1, 'HighLight', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:41:12', '2025-09-21 21:41:12'),
(101, 1, 1, 'X image', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:41:22', '2025-09-21 21:41:22'),
(102, 1, 1, 'FaceZone', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:41:30', '2025-09-21 21:41:30'),
(103, 1, 1, 'HatsZone', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:41:44', '2025-09-21 21:41:44'),
(104, 1, 1, 'PantsZone', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:41:51', '2025-09-21 21:41:51'),
(105, 1, 1, 'TShirtZone/ShirtZone', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:42:03', '2025-09-21 21:42:03'),
(106, 1, 1, 'ColorZone', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:42:14', '2025-09-21 21:42:14'),
(107, 1, 5, 'BackpackManager', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:42:37', '2025-09-21 21:42:37'),
(108, 1, 1, 'Backpack Button Close', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:42:51', '2025-09-21 21:42:51'),
(109, 1, 1, 'Loadout', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:42:58', '2025-09-21 21:42:58'),
(110, 1, 5, 'BackpackGear', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:43:09', '2025-09-21 21:43:09'),
(111, 1, 5, 'LoadoutScript', '', 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 1, '2025-09-21 21:43:23', '2025-09-21 21:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `assetversions`
--

DROP TABLE IF EXISTS `assetversions`;
CREATE TABLE `assetversions` (
  `version_id` int(11) NOT NULL,
  `version_assetid` int(11) NOT NULL,
  `version_md5sig` varchar(50) NOT NULL,
  `version_md5thumb` varchar(50) NOT NULL DEFAULT 'sound',
  `version_subid` int(11) NOT NULL DEFAULT 1,
  `version_assettype` int(11) NOT NULL DEFAULT 1,
  `version_publishdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assetversions`
--

INSERT INTO `assetversions` (`version_id`, `version_assetid`, `version_md5sig`, `version_md5thumb`, `version_subid`, `version_assettype`, `version_publishdate`) VALUES
(1, 1, '285688a3e2c9b67c9e91ecf37e1dea75', 'script', 1, 5, '2025-09-16 21:33:11'),
(2, 2, '14ed6e67a2b047ab2844cd0fd577eca4', 'script', 1, 5, '2025-09-16 21:33:34'),
(3, 3, '05dc546934cb9ba8d112c9ad7d1fb075', 'script', 1, 5, '2025-09-16 21:34:14'),
(4, 4, '54d7409ef059cad85880d288497646ee', 'script', 1, 5, '2025-09-16 21:34:52'),
(5, 5, '21581134e672659085bc865069a74ae0', 'script', 1, 5, '2025-09-17 06:30:51'),
(6, 6, '53469359356ba6f7e65ba16025232bb2', 'script', 1, 5, '2025-09-17 06:31:10'),
(7, 7, 'd38d6d7cb86d23fa6fab7a8229fc4bab', 'script', 1, 5, '2025-09-17 06:31:26'),
(8, 8, '6cc56ff61287097c63b471e536915e25', '6cc56ff61287097c63b471e536915e25', 1, 4, '2025-09-17 06:32:12'),
(9, 9, '210e6e1dc5bb7400a334b00caa045afc', 'script', 1, 5, '2025-09-17 06:34:32'),
(10, 10, 'fbdb646758fbc63e71edd30e144da2b5', 'script', 1, 5, '2025-09-17 06:34:46'),
(11, 11, '1affe21e20967f286ee0890ccdd22d89', '1affe21e20967f286ee0890ccdd22d89', 1, 1, '2025-09-17 06:34:58'),
(12, 12, '7345f7f387803895a58a1a43beeb6c01', '7345f7f387803895a58a1a43beeb6c01', 1, 1, '2025-09-17 06:35:06'),
(13, 13, '991f3b2f0f0542f0ceac61f04da27af1', '991f3b2f0f0542f0ceac61f04da27af1', 1, 1, '2025-09-17 06:38:29'),
(14, 14, '2ca4b747fa02806e56f7ec6e86bb03bd', '2ca4b747fa02806e56f7ec6e86bb03bd', 1, 1, '2025-09-17 06:41:05'),
(15, 15, '7b6a34d0f0e6909256553040c6e2ad68', '7b6a34d0f0e6909256553040c6e2ad68', 1, 1, '2025-09-17 06:42:40'),
(16, 16, '1b87a4cf5086dfa32c357f73fe937e8c', '1b87a4cf5086dfa32c357f73fe937e8c', 1, 1, '2025-09-17 06:42:51'),
(17, 17, '245681f7925dc7db7b8766faf4d87a55', '245681f7925dc7db7b8766faf4d87a55', 1, 1, '2025-09-17 06:43:05'),
(18, 18, '8963862ecc05d2666e3603eaaa89272b', 'script', 1, 5, '2025-09-17 06:43:20'),
(19, 19, '2348dad91c666734390a2287cbd06ae8', 'script', 1, 5, '2025-09-17 06:43:30'),
(20, 20, '90479c4fbc56b336171e7cf3e645fdd3', '90479c4fbc56b336171e7cf3e645fdd3', 1, 1, '2025-09-17 06:43:37'),
(21, 21, 'deaa768cc169731ea3ba919514a536fa', 'script', 1, 5, '2025-09-17 06:43:55'),
(22, 22, '1e4608394411b82976cb8799aed8f104', 'script', 1, 5, '2025-09-17 06:44:07'),
(23, 23, '7166e6d926cef25ac5d407692d9662c6', '7166e6d926cef25ac5d407692d9662c6', 1, 1, '2025-09-17 06:44:18'),
(24, 24, 'ccf78416a2c646b439ae228ca5a429ec', 'ccf78416a2c646b439ae228ca5a429ec', 1, 1, '2025-09-17 06:44:26'),
(25, 25, 'b9d2a546fca6b4463ca0b93f07c87b37', 'b9d2a546fca6b4463ca0b93f07c87b37', 1, 1, '2025-09-17 06:44:36'),
(26, 26, '76be15835a2c9ada6befe70c0783289b', 'script', 1, 5, '2025-09-17 06:45:05'),
(27, 27, '1925ec84298be6e000b31943043a7835', '1925ec84298be6e000b31943043a7835', 1, 1, '2025-09-17 06:45:17'),
(28, 28, 'd928abd437e5b415ea417654827dc5ff', 'd928abd437e5b415ea417654827dc5ff', 1, 1, '2025-09-17 06:45:23'),
(29, 29, '0264c78f2f37540890861da2da52d179', '0264c78f2f37540890861da2da52d179', 1, 1, '2025-09-17 06:45:30'),
(30, 30, 'c7989f3154489996470c19b2dc84935c', 'c7989f3154489996470c19b2dc84935c', 1, 1, '2025-09-17 06:45:36'),
(31, 31, '2be413414343fc690d7ba5ac2679fe1b', '2be413414343fc690d7ba5ac2679fe1b', 1, 1, '2025-09-17 06:45:43'),
(32, 32, '6c3748a409d89e24b676dd38d8456486', '6c3748a409d89e24b676dd38d8456486', 1, 1, '2025-09-17 06:45:50'),
(33, 33, '65a78fc5eb5aaa6f1fc9fd57c15746b2', '65a78fc5eb5aaa6f1fc9fd57c15746b2', 1, 1, '2025-09-17 07:08:19'),
(34, 34, 'bb2ce79e4d871587ef5e2ae756c80c93', 'bb2ce79e4d871587ef5e2ae756c80c93', 1, 1, '2025-09-17 07:08:26'),
(35, 35, 'bce62cb18b586b9126235eaae5cecdb8', 'bce62cb18b586b9126235eaae5cecdb8', 1, 1, '2025-09-17 07:08:34'),
(36, 36, '0068f3e3ff7e2320ef7a1de524ce30a9', '0068f3e3ff7e2320ef7a1de524ce30a9', 1, 1, '2025-09-17 07:09:20'),
(37, 37, 'a1099e0b98a77b39c91bfda6f4782af0', 'a1099e0b98a77b39c91bfda6f4782af0', 1, 1, '2025-09-17 07:09:38'),
(38, 38, '3c99b7e70c5cd865c90f9a82012c52e5', '3c99b7e70c5cd865c90f9a82012c52e5', 1, 1, '2025-09-17 07:09:47'),
(39, 39, '7a2b82a1161b047c8d52d0da453f3ff3', '7a2b82a1161b047c8d52d0da453f3ff3', 1, 1, '2025-09-17 07:09:55'),
(40, 40, 'fc2e760b6250c68116b968f73b88331b', 'fc2e760b6250c68116b968f73b88331b', 1, 1, '2025-09-17 07:10:01'),
(41, 41, 'c7e67f3264c188f7d5cd038e9190b259', 'c7e67f3264c188f7d5cd038e9190b259', 1, 1, '2025-09-17 07:10:54'),
(42, 42, '4ce4e86eb5c06edacca7b372f9b514cf', '4ce4e86eb5c06edacca7b372f9b514cf', 1, 1, '2025-09-17 07:11:07'),
(43, 43, '44306c7e822e84b8872693109747c8cc', '44306c7e822e84b8872693109747c8cc', 1, 1, '2025-09-17 07:11:16'),
(44, 44, 'f4b7be7f945c0512e68bd824240831ff', 'f4b7be7f945c0512e68bd824240831ff', 1, 1, '2025-09-17 07:11:25'),
(45, 45, '987eec419adebba994f861b44226bfd8', '987eec419adebba994f861b44226bfd8', 1, 1, '2025-09-17 07:11:47'),
(46, 46, '617f24f9682c9d50b51a267920828579', '617f24f9682c9d50b51a267920828579', 1, 1, '2025-09-17 07:11:59'),
(47, 47, 'b809a51289221ca7f28861ecc75b8741', 'b809a51289221ca7f28861ecc75b8741', 1, 1, '2025-09-17 07:12:09'),
(48, 48, '5dfab6620eb61165c2e92798545cd95d', '5dfab6620eb61165c2e92798545cd95d', 1, 1, '2025-09-17 07:12:18'),
(49, 49, '1db786c5be736514d99441a7de92408a', '1db786c5be736514d99441a7de92408a', 1, 1, '2025-09-17 07:12:36'),
(50, 50, '4981cd9069338ce3ef9371b394afaa05', '4981cd9069338ce3ef9371b394afaa05', 1, 1, '2025-09-17 07:15:08'),
(51, 51, '8f395cb37583f1feab24afd5ef3558d8', '8f395cb37583f1feab24afd5ef3558d8', 1, 1, '2025-09-17 07:15:30'),
(52, 52, '62fc9493fbe4ec0500bc1babb36a784d', '62fc9493fbe4ec0500bc1babb36a784d', 1, 1, '2025-09-21 13:39:59'),
(53, 53, 'e97c392eb468db34c054cadf91323367', 'e97c392eb468db34c054cadf91323367', 1, 1, '2025-09-21 13:41:18'),
(54, 54, '8e8a846e7dce7bbe64a685245f783124', '8e8a846e7dce7bbe64a685245f783124', 1, 1, '2025-09-21 13:41:35'),
(55, 55, 'f8ffe261edde16d078440fe71cbf982a', 'f8ffe261edde16d078440fe71cbf982a', 1, 1, '2025-09-21 13:41:48'),
(56, 56, '9576c7570d7e969aee2a6dba17a5638a', '9576c7570d7e969aee2a6dba17a5638a', 1, 1, '2025-09-21 13:41:57'),
(57, 57, 'f703d13d346a528de923daf4c9b696ed', 'f703d13d346a528de923daf4c9b696ed', 1, 1, '2025-09-21 13:42:10'),
(58, 58, 'db0d9fda025dbe4a6035159fa106d280', 'db0d9fda025dbe4a6035159fa106d280', 1, 1, '2025-09-21 13:43:39'),
(59, 59, '3d18c4e942afa80b8c1d10aed668b234', '3d18c4e942afa80b8c1d10aed668b234', 1, 1, '2025-09-21 13:43:59'),
(60, 60, 'c753ead36fda657317c3fed482508edd', 'c753ead36fda657317c3fed482508edd', 1, 1, '2025-09-21 13:44:40'),
(61, 61, 'a3e32329c94443bb568ef848b058c89c', 'a3e32329c94443bb568ef848b058c89c', 1, 1, '2025-09-21 13:44:48'),
(62, 62, '0120ed91a53424c30cd9bb9dc65b6f32', '0120ed91a53424c30cd9bb9dc65b6f32', 1, 1, '2025-09-21 13:46:07'),
(63, 63, '0d0ce1f16aad3e9e424b8cc27baa8b5c', '0d0ce1f16aad3e9e424b8cc27baa8b5c', 1, 1, '2025-09-21 13:46:15'),
(64, 3, '0f739b469b33389eca5297002c50fbb8', 'script', 2, 5, '2025-09-21 13:57:49'),
(65, 64, 'f56db5b1ee636b512b82cab43272c4de', 'script', 1, 5, '2025-09-21 20:03:40'),
(66, 1, '782690e598ea353ac8d2d0da18105d62', 'script', 2, 5, '2025-09-21 20:03:55'),
(67, 65, '6af834fc82a8b7b96a101680746bff8a', '6af834fc82a8b7b96a101680746bff8a', 1, 1, '2025-09-21 20:04:47'),
(68, 66, '69e373e226a7aeef1dc317eba57ed756', '69e373e226a7aeef1dc317eba57ed756', 1, 1, '2025-09-21 20:04:57'),
(69, 67, '1a3a12f62a47b0301eafaaffdcddde5a', '1a3a12f62a47b0301eafaaffdcddde5a', 1, 1, '2025-09-21 20:05:14'),
(70, 68, 'a5b0c7fcbfb89134e9c59b7fb7f8dfad', 'a5b0c7fcbfb89134e9c59b7fb7f8dfad', 1, 1, '2025-09-21 20:05:34'),
(71, 69, 'c4ab19d8fe8c243b365c3e658a1c8505', 'c4ab19d8fe8c243b365c3e658a1c8505', 1, 1, '2025-09-21 20:19:21'),
(72, 70, '274c67a3ea2d4da8660035ce35535ab9', '274c67a3ea2d4da8660035ce35535ab9', 1, 1, '2025-09-21 20:19:33'),
(73, 71, 'e05a852cfaa8965b4a04c81194fd01e2', 'e05a852cfaa8965b4a04c81194fd01e2', 1, 1, '2025-09-21 20:34:26'),
(74, 72, '5e57169dc0268c7e4f482c51ceb53230', '5e57169dc0268c7e4f482c51ceb53230', 1, 1, '2025-09-21 20:34:35'),
(75, 73, '880fb340ee2e72ecd6783b5369a892e1', '880fb340ee2e72ecd6783b5369a892e1', 1, 1, '2025-09-21 20:34:47'),
(76, 74, 'd4f875acad57e6962f429d1fe2104c0b', 'd4f875acad57e6962f429d1fe2104c0b', 1, 1, '2025-09-21 20:34:54'),
(77, 75, 'cd00058a348c34cdfe09862066691f8d', 'cd00058a348c34cdfe09862066691f8d', 1, 1, '2025-09-21 20:35:11'),
(78, 76, '40518ea41fb50a9b49cb9459e5c4a4c1', '40518ea41fb50a9b49cb9459e5c4a4c1', 1, 1, '2025-09-21 20:35:18'),
(79, 77, '2e2daf65a925bd0b88262afec0de5e32', '2e2daf65a925bd0b88262afec0de5e32', 1, 1, '2025-09-21 20:35:30'),
(80, 78, '2095b62e95d704ee7e8533745ef3bb0b', '2095b62e95d704ee7e8533745ef3bb0b', 1, 1, '2025-09-21 20:35:40'),
(81, 79, '7b93c8925b5408549e62f6eb70923cbf', '7b93c8925b5408549e62f6eb70923cbf', 1, 1, '2025-09-21 20:35:48'),
(82, 80, 'e654e117fdf2f183ef145b8b001ad777', 'e654e117fdf2f183ef145b8b001ad777', 1, 1, '2025-09-21 20:36:14'),
(83, 81, '7cddba944c309613aae78b4b4f41cf16', '7cddba944c309613aae78b4b4f41cf16', 1, 1, '2025-09-21 20:36:24'),
(84, 82, 'e821ba8d2acfd8c94e45727e03b6d611', 'e821ba8d2acfd8c94e45727e03b6d611', 1, 1, '2025-09-21 20:36:57'),
(85, 83, 'b811e4a3bd85e2363f92cdd965a500b0', 'b811e4a3bd85e2363f92cdd965a500b0', 1, 1, '2025-09-21 20:37:06'),
(86, 84, '5a649095377731c6bc527e4eb4d7eb4c', '5a649095377731c6bc527e4eb4d7eb4c', 1, 1, '2025-09-21 20:37:15'),
(87, 85, '897d76d9c95388d04ba537a4ee714a26', '897d76d9c95388d04ba537a4ee714a26', 1, 1, '2025-09-21 20:37:24'),
(88, 86, '181a8bf659251227a8b504732ad344a6', '181a8bf659251227a8b504732ad344a6', 1, 1, '2025-09-21 20:37:34'),
(89, 87, '75e650306eea0b30f2c5c9d362f14c9a', '75e650306eea0b30f2c5c9d362f14c9a', 1, 1, '2025-09-21 20:37:47'),
(90, 88, '903cc8cedbbe5df40e34d90c4f84b729', '903cc8cedbbe5df40e34d90c4f84b729', 1, 1, '2025-09-21 20:38:31'),
(91, 89, '6a11872685fb38677b6c85e690c2633a', '6a11872685fb38677b6c85e690c2633a', 1, 1, '2025-09-21 20:38:40'),
(92, 90, '8573efc2f756ca81a05dcedf5508ef54', '8573efc2f756ca81a05dcedf5508ef54', 1, 1, '2025-09-21 20:38:54'),
(93, 91, '859b44cebd83094ec215cd668a199293', '859b44cebd83094ec215cd668a199293', 1, 1, '2025-09-21 20:39:06'),
(94, 92, 'd3cf48201c21e5e4b3007ca2376f00dc', 'd3cf48201c21e5e4b3007ca2376f00dc', 1, 1, '2025-09-21 20:39:14'),
(95, 93, '7066f723b2b6df76deb61c20f6e963e0', '7066f723b2b6df76deb61c20f6e963e0', 1, 1, '2025-09-21 20:39:24'),
(96, 94, 'a86383790b90a5082e0d5c2d01e8a038', 'a86383790b90a5082e0d5c2d01e8a038', 1, 1, '2025-09-21 20:39:33'),
(97, 95, 'ea67d59db92f588857f9d45ebc876bec', 'script', 1, 5, '2025-09-21 21:40:13'),
(98, 96, 'f67bb577541f7a2ff31cc313c0bfc664', 'f67bb577541f7a2ff31cc313c0bfc664', 1, 1, '2025-09-21 21:40:28'),
(99, 97, '3ee259e39affda6caddfde17588cb57a', '3ee259e39affda6caddfde17588cb57a', 1, 1, '2025-09-21 21:40:40'),
(100, 98, '24fa722a5bf8e8037a7114b2b8b6d82e', '24fa722a5bf8e8037a7114b2b8b6d82e', 1, 1, '2025-09-21 21:40:55'),
(101, 99, 'b2ec0bdfbc31cddda0fa7f9b5b3f0218', 'b2ec0bdfbc31cddda0fa7f9b5b3f0218', 1, 1, '2025-09-21 21:41:05'),
(102, 100, 'b38ad6ed2ec592dea01e318cf46a4b2d', 'b38ad6ed2ec592dea01e318cf46a4b2d', 1, 1, '2025-09-21 21:41:12'),
(103, 101, 'd4bd89585805a68515844418d8172ca2', 'd4bd89585805a68515844418d8172ca2', 1, 1, '2025-09-21 21:41:23'),
(104, 102, '7f5d2e7ddbfffe5bb844df82f6af65d8', '7f5d2e7ddbfffe5bb844df82f6af65d8', 1, 1, '2025-09-21 21:41:30'),
(105, 103, 'ba92f33f2f6b148add13340ee757453d', 'ba92f33f2f6b148add13340ee757453d', 1, 1, '2025-09-21 21:41:44'),
(106, 104, 'efde50a691bbbf5441756f203edf3928', 'efde50a691bbbf5441756f203edf3928', 1, 1, '2025-09-21 21:41:51'),
(107, 105, '2349b44ae3ce40801b98e89bc520a20c', '2349b44ae3ce40801b98e89bc520a20c', 1, 1, '2025-09-21 21:42:03'),
(108, 106, '2ba2c2f53a09313ca281529a4c3cf9cb', '2ba2c2f53a09313ca281529a4c3cf9cb', 1, 1, '2025-09-21 21:42:14'),
(109, 107, 'b36c051ca1d68b75be71e8f2383663ea', 'script', 1, 5, '2025-09-21 21:42:37'),
(110, 108, '41abf10e60af9d5ccfe8423818062e4b', '41abf10e60af9d5ccfe8423818062e4b', 1, 1, '2025-09-21 21:42:51'),
(111, 109, '1a1935552070acb0fdf4545f004e78a9', '1a1935552070acb0fdf4545f004e78a9', 1, 1, '2025-09-21 21:42:58'),
(112, 110, '583f07c7766f4dc9fd72b22d34a7a034', 'script', 1, 5, '2025-09-21 21:43:09'),
(113, 111, '964cb7745d86c88b17d4c4df3adf0274', 'script', 1, 5, '2025-09-21 21:43:23'),
(114, 1, '13415c2d8ce66f40e840b378525a286a', 'script', 3, 5, '2025-09-21 21:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `asset_packages`
--

DROP TABLE IF EXISTS `asset_packages`;
CREATE TABLE `asset_packages` (
  `package_id` int(11) NOT NULL,
  `package_items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_places`
--

DROP TABLE IF EXISTS `asset_places`;
CREATE TABLE `asset_places` (
  `place_id` int(11) NOT NULL,
  `place_copylocked` int(11) NOT NULL DEFAULT 1,
  `place_genre` int(11) NOT NULL DEFAULT 1,
  `place_gearsallowed` varchar(100) DEFAULT NULL,
  `place_chattype` int(11) NOT NULL DEFAULT 0,
  `place_serversize` int(11) NOT NULL DEFAULT 12,
  `place_visit_count` int(11) NOT NULL DEFAULT 0,
  `place_currently_playing` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bodycolours`
--

DROP TABLE IF EXISTS `bodycolours`;
CREATE TABLE `bodycolours` (
  `colours_userid` int(11) NOT NULL,
  `colours_head` int(11) NOT NULL DEFAULT 24,
  `colours_torso` int(11) NOT NULL DEFAULT 23,
  `colours_leftarm` int(11) NOT NULL DEFAULT 24,
  `colours_rightarm` int(11) NOT NULL DEFAULT 24,
  `colours_leftleg` int(11) NOT NULL DEFAULT 119,
  `colours_rightleg` int(11) NOT NULL DEFAULT 119
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
CREATE TABLE `favourites` (
  `fav_assetid` int(11) NOT NULL,
  `fav_userid` int(11) NOT NULL,
  `fav_assettype` int(2) NOT NULL,
  `fav_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `inv_userid` int(11) NOT NULL,
  `inv_assetid` int(11) NOT NULL,
  `inv_assettype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persistenceblobs`
--

DROP TABLE IF EXISTS `persistenceblobs`;
CREATE TABLE `persistenceblobs` (
  `blob_placeid` int(11) NOT NULL,
  `blob_playerid` int(11) NOT NULL,
  `blob_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profilebadges`
--

DROP TABLE IF EXISTS `profilebadges`;
CREATE TABLE `profilebadges` (
  `badge_id` int(2) NOT NULL,
  `badge_userid` int(10) NOT NULL,
  `badge_admincorecore` int(1) NOT NULL,
  `badge_recieved` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profilebadges`
--

INSERT INTO `profilebadges` (`badge_id`, `badge_userid`, `badge_admincorecore`, `badge_recieved`) VALUES
(1, 1, 1, '2025-09-15 08:11:16'),
(1, 2, 1, '2025-09-15 22:14:11'),
(1, 3, 1, '2025-09-15 22:14:33'),
(1, 4, 1, '2025-09-15 22:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `profilebadges_info`
--

DROP TABLE IF EXISTS `profilebadges_info`;
CREATE TABLE `profilebadges_info` (
  `pbadge_id` int(11) NOT NULL,
  `pbadge_name` varchar(64) NOT NULL,
  `pbadge_description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profilebadges_info`
--

INSERT INTO `profilebadges_info` (`pbadge_id`, `pbadge_name`, `pbadge_description`) VALUES
(1, 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `status_id` varchar(20) NOT NULL,
  `status_poster` int(10) NOT NULL,
  `status_content` varchar(64) NOT NULL,
  `status_posted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions` (
  `userid` int(11) NOT NULL,
  `lastpaytime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `ta_id` varchar(15) NOT NULL,
  `ta_userid` int(11) NOT NULL,
  `ta_assetcreator` int(11) DEFAULT NULL,
  `ta_currency` varchar(10) NOT NULL,
  `ta_cost` int(11) NOT NULL,
  `ta_asset` int(11) DEFAULT NULL,
  `ta_assettype` int(11) DEFAULT NULL,
  `ta_showsupatall` int(11) NOT NULL DEFAULT 1,
  `ta_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`ta_id`, `ta_userid`, `ta_assetcreator`, `ta_currency`, `ta_cost`, `ta_asset`, `ta_assettype`, `ta_showsupatall`, `ta_date`) VALUES
('17K5pjFg574BHOz', 1, 1, 'none', 0, 7, 5, 0, '2025-09-17 06:31:26'),
('1Ef7SiUBxY63IAb', 1, 1, 'none', 0, 10, 5, 0, '2025-09-17 06:34:46'),
('2103qcpppJWqxNK', 1, 1, 'none', 0, 85, 1, 0, '2025-09-21 20:37:24'),
('214sQmFbTkHKFza', 1, 1, 'none', 0, 46, 1, 0, '2025-09-17 07:11:59'),
('2aU0H6WQ0dtxAZC', 1, 1, 'none', 0, 2, 5, 0, '2025-09-16 21:33:34'),
('2n4yUEQEOPJoD9L', 1, 1, 'none', 0, 38, 1, 0, '2025-09-17 07:09:47'),
('34YdzxD5k0kx1o0', 1, 1, 'none', 0, 96, 1, 0, '2025-09-21 21:40:28'),
('397HFgjdsqnNrys', 1, 1, 'none', 0, 36, 1, 0, '2025-09-17 07:09:20'),
('48Ixgu7oQOqSxwc', 1, 1, 'none', 0, 55, 1, 0, '2025-09-21 13:41:48'),
('5AduG1NLg5XULXx', 1, 1, 'none', 0, 17, 1, 0, '2025-09-17 06:43:05'),
('5KP9bEADzXCG5Ju', 1, 1, 'none', 0, 34, 1, 0, '2025-09-17 07:08:26'),
('5L3XfQSGdNbjU6O', 1, 1, 'none', 0, 92, 1, 0, '2025-09-21 20:39:15'),
('67sSkHZVha7wTEj', 1, 1, 'none', 0, 23, 1, 0, '2025-09-17 06:44:18'),
('6QNM5KsSHrXhdeF', 1, 1, 'none', 0, 76, 1, 0, '2025-09-21 20:35:18'),
('6bxKbI2F9F6YSQR', 1, 1, 'none', 0, 27, 1, 0, '2025-09-17 06:45:17'),
('6jddZGWAbf75cm7', 1, 1, 'none', 0, 97, 1, 0, '2025-09-21 21:40:40'),
('7P53l1ZtchmSWh8', 1, 1, 'none', 0, 20, 1, 0, '2025-09-17 06:43:38'),
('7bHrvNq8o85pafV', 1, 1, 'none', 0, 5, 5, 0, '2025-09-17 06:30:52'),
('A4vwlrwwMTu8TFc', 1, 1, 'none', 0, 90, 1, 0, '2025-09-21 20:38:54'),
('APzhtwmXhiiUJHm', 1, 1, 'none', 0, 35, 1, 0, '2025-09-17 07:08:34'),
('ATZZOOCXyiaRXyD', 1, 1, 'none', 0, 61, 1, 0, '2025-09-21 13:44:48'),
('Age3OZy2a8t1F02', 1, 1, 'none', 0, 21, 5, 0, '2025-09-17 06:43:55'),
('ArlhJskVHTulHDY', 1, 1, 'none', 0, 66, 1, 0, '2025-09-21 20:04:57'),
('BLu6JcOdI3UXRee', 1, 1, 'none', 0, 83, 1, 0, '2025-09-21 20:37:06'),
('C1PG3HS8KDF7reL', 1, 1, 'none', 0, 67, 1, 0, '2025-09-21 20:05:14'),
('D0n4K7KtMTXVact', 1, 1, 'none', 0, 42, 1, 0, '2025-09-17 07:11:07'),
('D3ZTS3A1zveOJQr', 1, 1, 'none', 0, 94, 1, 0, '2025-09-21 20:39:33'),
('DYdob5aTAqasiZP', 1, 1, 'none', 0, 91, 1, 0, '2025-09-21 20:39:06'),
('DaN2OLHJdzE9evW', 1, 1, 'none', 0, 8, 4, 0, '2025-09-17 06:32:12'),
('Ey7fl6H0s3xa9Xk', 1, 1, 'none', 0, 80, 1, 0, '2025-09-21 20:36:14'),
('GP3wbEQE4wHDr61', 1, 1, 'none', 0, 44, 1, 0, '2025-09-17 07:11:25'),
('GULaWLIddlfXrCn', 1, 1, 'none', 0, 104, 1, 0, '2025-09-21 21:41:51'),
('GXdrUuxw2zSBCao', 1, 1, 'none', 0, 79, 1, 0, '2025-09-21 20:35:48'),
('HGEbRfKbgCwIpIA', 1, 1, 'none', 0, 29, 1, 0, '2025-09-17 06:45:30'),
('HW61wI9fAET2dqK', 1, 1, 'none', 0, 105, 1, 0, '2025-09-21 21:42:03'),
('Hf92Dm8CWMv7wI5', 1, 1, 'none', 0, 54, 1, 0, '2025-09-21 13:41:35'),
('IKwBWhCo3V9QqVJ', 1, 1, 'none', 0, 11, 1, 0, '2025-09-17 06:34:58'),
('JVSp62uasebn1Xk', 1, 1, 'none', 0, 58, 1, 0, '2025-09-21 13:43:39'),
('KlXGJXsFFdknBLt', 1, 1, 'none', 0, 107, 5, 0, '2025-09-21 21:42:37'),
('KoD8UO5fGKvUztr', 1, 1, 'none', 0, 24, 1, 0, '2025-09-17 06:44:26'),
('LLmJITfW9e4ozKS', 1, 1, 'none', 0, 59, 1, 0, '2025-09-21 13:43:59'),
('LcqAxjgViQOeEnM', 1, 1, 'none', 0, 99, 1, 0, '2025-09-21 21:41:05'),
('LhNHXbje3eF7ba2', 1, 1, 'none', 0, 12, 1, 0, '2025-09-17 06:35:06'),
('LtrjWdhALlGcWMw', 1, 1, 'none', 0, 68, 1, 0, '2025-09-21 20:05:34'),
('M7G9c362WO0Rps8', 1, 1, 'none', 0, 40, 1, 0, '2025-09-17 07:10:01'),
('MBcjJFt5bpSwUKd', 1, 1, 'none', 0, 89, 1, 0, '2025-09-21 20:38:40'),
('MNiz4zd1blqf5F4', 1, 1, 'none', 0, 108, 1, 0, '2025-09-21 21:42:51'),
('N0HVxOUD8CFUNcE', 1, 1, 'none', 0, 70, 1, 0, '2025-09-21 20:19:33'),
('N4hnmxGUneo6tsh', 1, 1, 'none', 0, 33, 1, 0, '2025-09-17 07:08:19'),
('N4jJ7ZJJvWWUnIN', 1, 1, 'none', 0, 26, 5, 0, '2025-09-17 06:45:05'),
('NQDvNKQUL3Sj70y', 1, 1, 'none', 0, 84, 1, 0, '2025-09-21 20:37:16'),
('NaFJZThM07Y09d4', 1, 1, 'none', 0, 93, 1, 0, '2025-09-21 20:39:24'),
('NfO1fkoEJDP8rpo', 1, 1, 'none', 0, 48, 1, 0, '2025-09-17 07:12:18'),
('OEyrRJCYxzKGRJg', 1, 1, 'none', 0, 111, 5, 0, '2025-09-21 21:43:23'),
('Pguqc85rrW093zf', 1, 1, 'none', 0, 31, 1, 0, '2025-09-17 06:45:43'),
('Q4xcqXGhO50w97w', 1, 1, 'none', 0, 16, 1, 0, '2025-09-17 06:42:51'),
('SI8Ea36tORFggsB', 1, 1, 'none', 0, 37, 1, 0, '2025-09-17 07:09:38'),
('Sgqke8CD30Ik7Ew', 1, 1, 'none', 0, 22, 5, 0, '2025-09-17 06:44:07'),
('UHQKoqDsUBFbVtP', 1, 1, 'none', 0, 106, 1, 0, '2025-09-21 21:42:15'),
('WCOiKgHWTolmZc8', 1, 1, 'none', 0, 52, 1, 0, '2025-09-21 13:39:59'),
('WL278DygDHTUh3U', 1, 1, 'none', 0, 30, 1, 0, '2025-09-17 06:45:36'),
('WvUnsl0sxUxsSer', 1, 1, 'none', 0, 63, 1, 0, '2025-09-21 13:46:15'),
('XrUK4kSi8XZkE7F', 1, 1, 'none', 0, 41, 1, 0, '2025-09-17 07:10:54'),
('YEn8aoQhob5aqQ7', 1, 1, 'none', 0, 13, 1, 0, '2025-09-17 06:38:29'),
('YTbOykSrAS9BY1w', 1, 1, 'none', 0, 50, 1, 0, '2025-09-17 07:15:08'),
('YYj0HalpzpWbijr', 1, 1, 'none', 0, 77, 1, 0, '2025-09-21 20:35:30'),
('YmGnoaBb67PDat7', 1, 1, 'none', 0, 72, 1, 0, '2025-09-21 20:34:35'),
('b8kh6UwIvDlSQ6E', 1, 1, 'none', 0, 4, 5, 0, '2025-09-16 21:34:52'),
('baZAUEXBawyuEWm', 1, 1, 'none', 0, 15, 1, 0, '2025-09-17 06:42:40'),
('cEFWjBSafGSrcQO', 1, 1, 'none', 0, 82, 1, 0, '2025-09-21 20:36:57'),
('d2QFRwrADB6ZTAW', 1, 1, 'none', 0, 51, 1, 0, '2025-09-17 07:15:30'),
('dWgkQvBQhi441aN', 1, 1, 'none', 0, 57, 1, 0, '2025-09-21 13:42:10'),
('degsXHZiZMVkaIf', 1, 1, 'none', 0, 102, 1, 0, '2025-09-21 21:41:30'),
('duxH4LYglBQWXIO', 1, 1, 'none', 0, 100, 1, 0, '2025-09-21 21:41:12'),
('g1x388ANsxKSFOZ', 1, 1, 'none', 0, 28, 1, 0, '2025-09-17 06:45:23'),
('hkXWvBzwcDFomKA', 1, 1, 'none', 0, 71, 1, 0, '2025-09-21 20:34:26'),
('hpOzOnnWnN7RlVN', 1, 1, 'none', 0, 74, 1, 0, '2025-09-21 20:34:54'),
('hqvbiqYvMoBrksC', 1, 1, 'none', 0, 1, 5, 0, '2025-09-16 21:33:11'),
('iOv70INJWamH5KY', 1, 1, 'none', 0, 98, 1, 0, '2025-09-21 21:40:55'),
('iWnGfCdGxbnncJ3', 1, 1, 'none', 0, 18, 5, 0, '2025-09-17 06:43:20'),
('ixaAvPWssXMIQ7Y', 1, 1, 'none', 0, 6, 5, 0, '2025-09-17 06:31:10'),
('iy6Mw3Rz1vNXqYE', 1, 1, 'none', 0, 88, 1, 0, '2025-09-21 20:38:31'),
('jlgSg1s4r0aPRK1', 1, 1, 'none', 0, 75, 1, 0, '2025-09-21 20:35:11'),
('k2rHbFlW429gqn3', 1, 1, 'none', 0, 60, 1, 0, '2025-09-21 13:44:40'),
('lhsvkJXFh4OQduB', 1, 1, 'none', 0, 14, 1, 0, '2025-09-17 06:41:05'),
('lzPmuSOKjCcZgY0', 1, 1, 'none', 0, 95, 5, 0, '2025-09-21 21:40:13'),
('mpeVTWzRzDQVfg2', 1, 1, 'none', 0, 73, 1, 0, '2025-09-21 20:34:47'),
('nOVfjZPXASHGD6c', 1, 1, 'none', 0, 110, 5, 0, '2025-09-21 21:43:09'),
('nOiY7n44N98Di7z', 1, 1, 'none', 0, 3, 5, 0, '2025-09-16 21:34:14'),
('nTk7NHxaoraOd0L', 1, 1, 'none', 0, 62, 1, 0, '2025-09-21 13:46:07'),
('nfuYCjlU9wvzD2S', 1, 1, 'none', 0, 53, 1, 0, '2025-09-21 13:41:18'),
('o1Vbt4wJEHiOZ0S', 1, 1, 'none', 0, 87, 1, 0, '2025-09-21 20:37:48'),
('oEGVevLfthCHXZ4', 1, 1, 'none', 0, 64, 5, 0, '2025-09-21 20:03:40'),
('obqmgjXozSzTa2O', 1, 1, 'none', 0, 78, 1, 0, '2025-09-21 20:35:40'),
('otqSRQQTFRODW7h', 1, 1, 'none', 0, 9, 5, 0, '2025-09-17 06:34:32'),
('passxPlSsVpyz8p', 1, 1, 'none', 0, 43, 1, 0, '2025-09-17 07:11:16'),
('pp8OpfCvuau6OGc', 1, 1, 'none', 0, 86, 1, 0, '2025-09-21 20:37:35'),
('q8bYCzk9mhqJifm', 1, 1, 'none', 0, 39, 1, 0, '2025-09-17 07:09:55'),
('qGh8TgQW2fLhHCK', 1, 1, 'none', 0, 25, 1, 0, '2025-09-17 06:44:36'),
('qRHlQnYL4LNUIMw', 1, 1, 'none', 0, 65, 1, 0, '2025-09-21 20:04:47'),
('ql0quMrnJhuUX1i', 1, 1, 'none', 0, 32, 1, 0, '2025-09-17 06:45:50'),
('rIWo8iPQvdHQnCz', 1, 1, 'none', 0, 69, 1, 0, '2025-09-21 20:19:21'),
('sG7bXbW7IPEJSnw', 1, 1, 'none', 0, 101, 1, 0, '2025-09-21 21:41:23'),
('sJ2BJXryEMLC03G', 1, 1, 'none', 0, 19, 5, 0, '2025-09-17 06:43:30'),
('tpCHLkZv73P03qr', 1, 1, 'none', 0, 103, 1, 0, '2025-09-21 21:41:44'),
('u1CDa2B6NTtseNJ', 1, 1, 'none', 0, 45, 1, 0, '2025-09-17 07:11:47'),
('ukMv9RZN3Zr418r', 1, 1, 'none', 0, 49, 1, 0, '2025-09-17 07:12:36'),
('xK65LndGmkvuT4u', 1, 1, 'none', 0, 109, 1, 0, '2025-09-21 21:42:59'),
('xrLFzQpynnD7Ie4', 1, 1, 'none', 0, 56, 1, 0, '2025-09-21 13:41:57'),
('yybOyXGmtqrmlLK', 1, 1, 'none', 0, 47, 1, 0, '2025-09-17 07:12:09'),
('z4ZKrclSvWY4Dzh', 1, 1, 'none', 0, 81, 1, 0, '2025-09-21 20:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_blurb` varchar(1000) NOT NULL DEFAULT '',
  `user_discord` varchar(256) NOT NULL,
  `user_password` varchar(256) NOT NULL,
  `user_security` varchar(255) NOT NULL,
  `user_lastprofileupdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_joindate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `assetversions`
--
ALTER TABLE `assetversions`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `asset_packages`
--
ALTER TABLE `asset_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `asset_places`
--
ALTER TABLE `asset_places`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `bodycolours`
--
ALTER TABLE `bodycolours`
  ADD PRIMARY KEY (`colours_userid`);

--
-- Indexes for table `profilebadges_info`
--
ALTER TABLE `profilebadges_info`
  ADD PRIMARY KEY (`pbadge_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`ta_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `assetversions`
--
ALTER TABLE `assetversions`
  MODIFY `version_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `profilebadges_info`
--
ALTER TABLE `profilebadges_info`
  MODIFY `pbadge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
