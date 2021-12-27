-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-12-2021 a las 23:00:18
-- Versión del servidor: 10.2.41-MariaDB-cll-lve
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ibcccecl_wp500`
--
DROP DATABASE IF EXISTS `ibcccecl_wp500`;
CREATE DATABASE IF NOT EXISTS `ibcccecl_wp500` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ibcccecl_wp500`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wpjy_actionscheduler_actions`;
CREATE TABLE `wpjy_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_actionscheduler_actions`
--

TRUNCATE TABLE `wpjy_actionscheduler_actions`;
--
-- Volcado de datos para la tabla `wpjy_actionscheduler_actions`
--

INSERT INTO `wpjy_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(409, 'wpforms_builder_help_cache_update', 'failed', '2021-03-04 09:23:02', '2021-03-04 09:23:02', '{\"tasks_meta_id\":3}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1614849782;s:18:\"\0*\0first_timestamp\";i:1608742528;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1614849782;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-02-28 19:04:43', '2021-02-28 15:04:43', 0, NULL),
(431, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-03-19 15:45:21', '2021-03-19 15:45:21', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1616168721;s:18:\"\0*\0first_timestamp\";i:1608163200;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1616168721;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-03-18 22:43:56', '2021-03-18 18:43:56', 0, NULL),
(441, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-03-28 13:38:46', '2021-03-28 13:38:46', '{\"tasks_meta_id\":26}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1616938726;s:18:\"\0*\0first_timestamp\";i:1616112000;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1616938726;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-03-27 13:43:12', '2021-03-27 09:43:12', 0, NULL),
(471, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-04-26 20:22:51', '2021-04-26 20:22:51', '{\"tasks_meta_id\":27}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1619468571;s:18:\"\0*\0first_timestamp\";i:1616889600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1619468571;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-04-26 10:23:53', '2021-04-26 06:23:53', 0, NULL),
(472, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-04-27 00:00:00', '2021-04-27 00:00:00', '{\"tasks_meta_id\":29}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1619481600;s:18:\"\0*\0first_timestamp\";i:1619481600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1619481600;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-04-26 11:43:55', '2021-04-26 07:43:55', 0, NULL),
(487, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-05-13 00:27:35', '2021-05-13 00:27:35', '{\"tasks_meta_id\":30}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1620865655;s:18:\"\0*\0first_timestamp\";i:1619481600;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1620865655;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-05-12 23:32:49', '2021-05-12 19:32:49', 0, NULL),
(493, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-05-19 17:07:10', '2021-05-19 17:07:10', '{\"tasks_meta_id\":31}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1621444030;s:18:\"\0*\0first_timestamp\";i:1620950400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1621444030;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-05-19 01:04:23', '2021-05-18 21:04:23', 0, NULL),
(495, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-05-21 00:12:11', '2021-05-21 00:12:11', '{\"tasks_meta_id\":32}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1621555931;s:18:\"\0*\0first_timestamp\";i:1621468800;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1621555931;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-05-20 06:24:38', '2021-05-20 02:24:38', 0, NULL),
(506, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-05-31 17:05:20', '2021-05-31 17:05:20', '{\"tasks_meta_id\":33}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1622480720;s:18:\"\0*\0first_timestamp\";i:1621555200;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1622480720;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-05-30 20:26:34', '2021-05-30 16:26:34', 0, NULL),
(514, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-06-07 18:42:20', '2021-06-07 18:42:20', '{\"tasks_meta_id\":34}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1623091340;s:18:\"\0*\0first_timestamp\";i:1622419200;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1623091340;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-06-07 00:07:20', '2021-06-06 20:07:20', 0, NULL),
(515, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-06-08 00:00:00', '2021-06-08 00:00:00', '{\"tasks_meta_id\":35}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1623110400;s:18:\"\0*\0first_timestamp\";i:1623110400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1623110400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-06-07 15:04:53', '2021-06-07 11:04:53', 0, NULL),
(520, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-06-12 08:14:59', '2021-06-12 08:14:59', '{\"tasks_meta_id\":36}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1623485699;s:18:\"\0*\0first_timestamp\";i:1623110400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1623485699;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-06-11 17:04:54', '2021-06-11 13:04:54', 0, NULL),
(523, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-06-14 00:33:48', '2021-06-14 00:33:48', '{\"tasks_meta_id\":37}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1623630828;s:18:\"\0*\0first_timestamp\";i:1623456000;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1623630828;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-06-13 15:27:19', '2021-06-13 11:27:19', 0, NULL),
(525, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-06-15 00:07:14', '2021-06-15 00:07:14', '{\"tasks_meta_id\":38}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1623715634;s:18:\"\0*\0first_timestamp\";i:1623628800;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1623715634;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-06-14 23:37:03', '2021-06-14 19:37:03', 0, NULL),
(528, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-06-17 00:06:33', '2021-06-17 00:06:33', '{\"tasks_meta_id\":39}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1623888393;s:18:\"\0*\0first_timestamp\";i:1623715200;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1623888393;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-06-16 15:45:43', '2021-06-16 11:45:43', 0, NULL),
(532, 'wpforms_process_entry_emails_meta_cleanup', 'failed', '2021-06-20 05:43:22', '2021-06-20 05:43:22', '{\"tasks_meta_id\":40}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1624167802;s:18:\"\0*\0first_timestamp\";i:1623888000;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1624167802;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-06-19 15:43:57', '2021-06-19 11:43:57', 0, NULL),
(711, 'wp_mail_smtp_summary_report_email', 'complete', '2021-11-16 00:57:56', '2021-11-16 00:57:56', '[19]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637024276;s:18:\"\0*\0first_timestamp\";i:1633370400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637024276;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2021-11-16 02:04:29', '2021-11-15 22:04:29', 0, NULL),
(715, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2021-11-13 07:54:47', '2021-11-13 07:54:47', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1636790087;s:18:\"\0*\0first_timestamp\";i:1636790087;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1636790087;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-13 11:17:14', '2021-11-13 07:17:14', 0, NULL),
(716, 'wpforms_send_usage_data', 'complete', '2021-11-19 14:15:16', '2021-11-19 14:15:16', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637331316;s:18:\"\0*\0first_timestamp\";i:1637331316;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637331316;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-19 16:21:31', '2021-11-19 12:21:31', 0, NULL),
(717, 'wpforms_admin_addons_cache_update', 'complete', '2021-11-16 14:31:49', '2021-11-16 14:31:49', '{\"tasks_meta_id\":57}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637073109;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637073109;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-16 16:53:37', '2021-11-16 12:53:37', 0, NULL),
(718, 'wpforms_admin_builder_templates_cache_update', 'complete', '2021-11-16 14:31:49', '2021-11-16 14:31:49', '{\"tasks_meta_id\":58}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637073109;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637073109;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-16 16:53:37', '2021-11-16 12:53:37', 0, NULL),
(722, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-11 00:28:00', '2021-11-11 00:28:00', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1636590480;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1636590480;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-11 07:55:01', '2021-11-11 03:55:01', 0, NULL),
(727, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-12 07:55:01', '2021-11-12 07:55:01', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1636703701;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1636703701;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-12 10:58:08', '2021-11-12 06:58:08', 0, NULL),
(728, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[25]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2021-11-11 20:24:42', '2021-11-11 16:24:42', 0, NULL),
(729, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":64}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-11-11 20:24:42', '2021-11-11 16:24:43', 0, NULL),
(730, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-13 10:58:08', '2021-11-13 10:58:08', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1636801088;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1636801088;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-13 11:17:14', '2021-11-13 07:17:14', 0, NULL),
(731, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2021-11-20 11:17:14', '2021-11-20 11:17:14', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637407034;s:18:\"\0*\0first_timestamp\";i:1636790087;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637407034;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-20 11:20:42', '2021-11-20 07:20:42', 0, NULL),
(732, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-14 11:17:14', '2021-11-14 11:17:14', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1636888634;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1636888634;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-14 16:14:33', '2021-11-14 12:14:33', 0, NULL),
(733, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-15 16:14:33', '2021-11-15 16:14:33', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1636992873;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1636992873;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-15 16:54:53', '2021-11-15 12:54:53', 0, NULL),
(734, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-16 16:54:53', '2021-11-16 16:54:53', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637081693;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637081693;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-16 16:56:09', '2021-11-16 12:56:09', 0, NULL),
(735, 'wp_mail_smtp_summary_report_email', 'complete', '2021-11-23 02:04:29', '2021-11-23 02:04:29', '[19]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637633069;s:18:\"\0*\0first_timestamp\";i:1633370400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637633069;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2021-11-23 04:35:38', '2021-11-23 00:35:38', 0, NULL),
(736, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[26]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2021-11-16 02:06:51', '2021-11-15 22:06:51', 0, NULL),
(737, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":65}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-11-16 02:08:27', '2021-11-15 22:08:27', 0, NULL),
(738, 'wpforms_admin_addons_cache_update', 'complete', '2021-11-23 16:53:37', '2021-11-23 16:53:37', '{\"tasks_meta_id\":57}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637686417;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637686417;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-23 17:35:31', '2021-11-23 13:35:31', 0, NULL),
(739, 'wpforms_admin_builder_templates_cache_update', 'complete', '2021-11-23 16:53:37', '2021-11-23 16:53:37', '{\"tasks_meta_id\":58}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637686417;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637686417;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-23 17:35:31', '2021-11-23 13:35:31', 0, NULL),
(740, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-17 16:56:09', '2021-11-17 16:56:09', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637168169;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637168169;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-17 17:48:56', '2021-11-17 13:48:56', 0, NULL),
(741, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-18 17:48:56', '2021-11-18 17:48:56', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637257736;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637257736;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-18 17:51:43', '2021-11-18 13:51:43', 0, NULL),
(742, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-19 17:51:43', '2021-11-19 17:51:43', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637344303;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637344303;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-19 18:31:29', '2021-11-19 14:31:29', 0, NULL),
(743, 'wpforms_send_usage_data', 'complete', '2021-11-26 16:21:31', '2021-11-26 16:21:31', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637943691;s:18:\"\0*\0first_timestamp\";i:1637331316;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637943691;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-26 18:00:50', '2021-11-26 14:00:50', 0, NULL),
(744, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-20 18:31:29', '2021-11-20 18:31:29', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637433089;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637433089;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-20 18:32:41', '2021-11-20 14:32:41', 0, NULL),
(745, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2021-11-27 11:20:42', '2021-11-27 11:20:42', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638012042;s:18:\"\0*\0first_timestamp\";i:1636790087;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638012042;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-27 23:50:12', '2021-11-27 19:50:12', 0, NULL),
(746, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-21 18:32:41', '2021-11-21 18:32:41', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637519561;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637519561;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-21 18:47:06', '2021-11-21 14:47:06', 0, NULL),
(747, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-22 18:47:06', '2021-11-22 18:47:06', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637606826;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637606826;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-22 21:18:53', '2021-11-22 17:18:53', 0, NULL),
(748, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-23 21:18:53', '2021-11-23 21:18:53', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637702333;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637702333;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-23 21:49:32', '2021-11-23 17:49:32', 0, NULL),
(749, 'wp_mail_smtp_summary_report_email', 'complete', '2021-11-30 04:35:38', '2021-11-30 04:35:38', '[19]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638246938;s:18:\"\0*\0first_timestamp\";i:1633370400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638246938;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2021-11-30 09:48:46', '2021-11-30 05:48:46', 0, NULL),
(750, 'wpforms_admin_addons_cache_update', 'complete', '2021-11-30 17:35:31', '2021-11-30 17:35:31', '{\"tasks_meta_id\":57}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638293731;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638293731;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-30 17:50:08', '2021-11-30 13:50:08', 0, NULL),
(751, 'wpforms_admin_builder_templates_cache_update', 'complete', '2021-11-30 17:35:31', '2021-11-30 17:35:31', '{\"tasks_meta_id\":58}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638293731;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638293731;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-11-30 17:50:08', '2021-11-30 13:50:08', 0, NULL),
(752, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-24 21:49:32', '2021-11-24 21:49:32', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637790572;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637790572;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-25 00:12:21', '2021-11-24 20:12:21', 0, NULL),
(753, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-26 00:12:21', '2021-11-26 00:12:21', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637885541;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637885541;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-26 00:14:22', '2021-11-25 20:14:22', 0, NULL),
(754, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-27 00:14:22', '2021-11-27 00:14:22', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1637972062;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1637972062;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-27 00:35:59', '2021-11-26 20:35:59', 0, NULL),
(755, 'wpforms_send_usage_data', 'complete', '2021-12-03 18:00:50', '2021-12-03 18:00:50', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638554450;s:18:\"\0*\0first_timestamp\";i:1637331316;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638554450;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-12-03 18:55:52', '2021-12-03 14:55:52', 0, NULL),
(756, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-28 00:35:59', '2021-11-28 00:35:59', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638059759;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638059759;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-28 08:34:40', '2021-11-28 04:34:40', 0, NULL),
(757, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2021-12-04 23:50:12', '2021-12-04 23:50:12', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638661812;s:18:\"\0*\0first_timestamp\";i:1636790087;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638661812;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-12-05 00:20:17', '2021-12-04 20:20:17', 0, NULL),
(758, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-29 08:34:40', '2021-11-29 08:34:40', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638174880;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638174880;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-29 09:45:53', '2021-11-29 05:45:53', 0, NULL),
(759, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-11-30 09:45:53', '2021-11-30 09:45:53', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638265553;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638265553;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-11-30 09:48:46', '2021-11-30 05:48:46', 0, NULL),
(760, 'wp_mail_smtp_summary_report_email', 'complete', '2021-12-07 09:48:46', '2021-12-07 09:48:46', '[19]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638870526;s:18:\"\0*\0first_timestamp\";i:1633370400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638870526;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2021-12-07 14:42:04', '2021-12-07 10:42:04', 0, NULL),
(761, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-01 09:48:46', '2021-12-01 09:48:46', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638352126;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638352126;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-01 16:12:59', '2021-12-01 12:12:59', 0, NULL),
(762, 'wpforms_admin_addons_cache_update', 'complete', '2021-12-07 17:50:08', '2021-12-07 17:50:08', '{\"tasks_meta_id\":57}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638899408;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638899408;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-12-07 18:05:06', '2021-12-07 14:05:06', 0, NULL),
(763, 'wpforms_admin_builder_templates_cache_update', 'complete', '2021-12-07 17:50:08', '2021-12-07 17:50:08', '{\"tasks_meta_id\":58}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638899408;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638899408;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-12-07 18:05:06', '2021-12-07 14:05:06', 0, NULL),
(764, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-02 16:12:59', '2021-12-02 16:12:59', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638461579;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638461579;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-02 17:21:23', '2021-12-02 13:21:23', 0, NULL),
(765, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-03 17:21:23', '2021-12-03 17:21:23', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638552083;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638552083;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-03 17:22:40', '2021-12-03 13:22:40', 0, NULL),
(766, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-04 17:22:40', '2021-12-04 17:22:40', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638638560;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638638560;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-04 20:07:13', '2021-12-04 16:07:13', 0, NULL),
(767, 'wpforms_send_usage_data', 'complete', '2021-12-10 18:55:52', '2021-12-10 18:55:52', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639162552;s:18:\"\0*\0first_timestamp\";i:1637331316;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639162552;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-12-10 18:56:06', '2021-12-10 14:56:06', 0, NULL),
(768, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-05 20:07:13', '2021-12-05 20:07:13', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638734833;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638734833;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-05 21:15:43', '2021-12-05 17:15:43', 0, NULL),
(769, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2021-12-12 00:20:17', '2021-12-12 00:20:17', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639268417;s:18:\"\0*\0first_timestamp\";i:1636790087;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639268417;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2021-12-12 00:21:52', '2021-12-11 20:21:52', 0, NULL),
(770, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-06 21:15:43', '2021-12-06 21:15:43', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638825343;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638825343;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-06 21:28:56', '2021-12-06 17:28:56', 0, NULL),
(771, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-07 21:28:56', '2021-12-07 21:28:56', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638912536;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638912536;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-07 21:29:29', '2021-12-07 17:29:29', 0, NULL),
(772, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[27]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2021-12-07 02:10:51', '2021-12-06 22:10:51', 0, NULL),
(773, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":66}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-12-07 02:11:51', '2021-12-06 22:11:51', 0, NULL),
(774, 'wpforms_builder_help_cache_update', 'pending', '2021-12-14 05:06:41', '2021-12-14 05:06:41', '{\"tasks_meta_id\":67}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639458401;s:18:\"\0*\0first_timestamp\";i:1639458401;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639458401;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(775, 'wp_mail_smtp_summary_report_email', 'pending', '2021-12-14 14:42:04', '2021-12-14 14:42:04', '[19]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639492924;s:18:\"\0*\0first_timestamp\";i:1633370400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639492924;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(776, 'wpforms_admin_addons_cache_update', 'pending', '2021-12-14 18:05:06', '2021-12-14 18:05:06', '{\"tasks_meta_id\":57}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639505106;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639505106;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(777, 'wpforms_admin_builder_templates_cache_update', 'pending', '2021-12-14 18:05:06', '2021-12-14 18:05:06', '{\"tasks_meta_id\":58}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639505106;s:18:\"\0*\0first_timestamp\";i:1637073109;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639505106;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(778, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-08 21:29:29', '2021-12-08 21:29:29', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1638998969;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1638998969;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-09 00:34:26', '2021-12-08 20:34:26', 0, NULL),
(779, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[28]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2021-12-08 02:38:49', '2021-12-07 22:38:49', 0, NULL),
(780, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":68}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-12-08 02:39:02', '2021-12-07 22:39:02', 0, NULL),
(781, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[29]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2021-12-08 02:39:09', '2021-12-07 22:39:09', 0, NULL),
(782, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":69}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-12-08 02:39:09', '2021-12-07 22:39:09', 0, NULL),
(783, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-10 00:34:26', '2021-12-10 00:34:26', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639096466;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639096466;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-10 00:41:17', '2021-12-09 20:41:17', 0, NULL),
(784, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[30]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2021-12-09 14:57:27', '2021-12-09 10:57:27', 0, NULL),
(785, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":70}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-12-09 14:57:31', '2021-12-09 10:57:31', 0, NULL),
(786, 'action_scheduler/migration_hook', 'complete', '2021-12-09 16:22:34', '2021-12-09 16:22:34', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639066954;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639066954;}', 1, 1, '2021-12-09 16:22:56', '2021-12-09 12:22:56', 0, NULL),
(787, 'action_scheduler/migration_hook', 'complete', '2021-12-09 16:24:00', '2021-12-09 16:24:00', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639067040;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639067040;}', 1, 1, '2021-12-09 16:25:47', '2021-12-09 12:25:47', 0, NULL),
(788, 'action_scheduler/migration_hook', 'complete', '2021-12-09 21:45:25', '2021-12-09 21:45:25', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639086325;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639086325;}', 1, 1, '2021-12-09 21:45:58', '2021-12-09 17:45:58', 0, NULL),
(789, 'action_scheduler/migration_hook', 'complete', '2021-12-09 21:47:00', '2021-12-09 21:47:00', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639086420;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639086420;}', 1, 1, '2021-12-09 21:48:04', '2021-12-09 17:48:04', 0, NULL),
(790, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-11 00:41:17', '2021-12-11 00:41:17', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639183277;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639183277;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-11 00:42:08', '2021-12-10 20:42:08', 0, NULL),
(791, 'wpforms_process_entry_emails', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":71}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-12-10 03:04:05', '2021-12-09 23:04:05', 0, NULL),
(792, 'wpforms_process_entry_emails', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":72}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-12-10 03:04:06', '2021-12-09 23:04:06', 0, NULL),
(793, 'wpforms_send_usage_data', 'pending', '2021-12-17 18:56:06', '2021-12-17 18:56:06', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639767366;s:18:\"\0*\0first_timestamp\";i:1637331316;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639767366;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(794, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[31]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2021-12-10 20:09:05', '2021-12-10 16:09:05', 0, NULL),
(795, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":73}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-12-10 20:09:05', '2021-12-10 16:09:05', 0, NULL),
(796, 'wpforms_process_entry_emails_meta_cleanup', 'complete', '2021-12-12 00:42:08', '2021-12-12 00:42:08', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639269728;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639269728;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2021-12-12 00:44:05', '2021-12-11 20:44:05', 0, NULL),
(797, 'action_scheduler/migration_hook', 'complete', '2021-12-11 01:30:26', '2021-12-11 01:30:26', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639186226;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639186226;}', 1, 1, '2021-12-11 01:31:04', '2021-12-10 21:31:04', 0, NULL),
(798, 'wpforms_email_summaries_fetch_info_blocks', 'pending', '2021-12-19 00:21:52', '2021-12-19 00:21:52', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639873312;s:18:\"\0*\0first_timestamp\";i:1636790087;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639873312;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(799, 'wpforms_process_entry_emails_meta_cleanup', 'pending', '2021-12-13 00:44:05', '2021-12-13 00:44:05', '{\"tasks_meta_id\":56}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1639356245;s:18:\"\0*\0first_timestamp\";i:1636502400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1639356245;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wpjy_actionscheduler_claims`;
CREATE TABLE `wpjy_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_actionscheduler_claims`
--

TRUNCATE TABLE `wpjy_actionscheduler_claims`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wpjy_actionscheduler_groups`;
CREATE TABLE `wpjy_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_actionscheduler_groups`
--

TRUNCATE TABLE `wpjy_actionscheduler_groups`;
--
-- Volcado de datos para la tabla `wpjy_actionscheduler_groups`
--

INSERT INTO `wpjy_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms'),
(3, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wpjy_actionscheduler_logs`;
CREATE TABLE `wpjy_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_actionscheduler_logs`
--

TRUNCATE TABLE `wpjy_actionscheduler_logs`;
--
-- Volcado de datos para la tabla `wpjy_actionscheduler_logs`
--

INSERT INTO `wpjy_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(344, 409, 'action created', '2021-02-25 09:23:02', '2021-02-25 09:23:02'),
(354, 409, 'action timed out after 300 seconds', '2021-02-28 19:09:56', '2021-02-28 19:09:56'),
(411, 431, 'action created', '2021-03-18 15:45:21', '2021-03-18 15:45:21'),
(412, 431, 'action timed out after 300 seconds', '2021-03-18 22:55:52', '2021-03-18 22:55:52'),
(440, 441, 'action created', '2021-03-27 13:38:46', '2021-03-27 13:38:46'),
(441, 441, 'action timed out after 300 seconds', '2021-03-27 15:45:54', '2021-03-27 15:45:54'),
(529, 471, 'action created', '2021-04-25 20:22:51', '2021-04-25 20:22:51'),
(530, 471, 'action timed out after 300 seconds', '2021-04-26 10:28:53', '2021-04-26 10:28:53'),
(531, 472, 'action created', '2021-04-26 10:28:55', '2021-04-26 10:28:55'),
(532, 472, 'action timed out after 300 seconds', '2021-04-26 11:50:14', '2021-04-26 11:50:14'),
(575, 487, 'action created', '2021-05-12 00:27:35', '2021-05-12 00:27:35'),
(576, 487, 'action timed out after 300 seconds', '2021-05-13 02:02:17', '2021-05-13 02:02:17'),
(592, 493, 'action created', '2021-05-18 17:07:10', '2021-05-18 17:07:10'),
(593, 493, 'action timed out after 300 seconds', '2021-05-19 01:09:25', '2021-05-19 01:09:25'),
(597, 495, 'action created', '2021-05-20 00:12:11', '2021-05-20 00:12:11'),
(598, 495, 'action timed out after 300 seconds', '2021-05-20 08:02:36', '2021-05-20 08:02:36'),
(629, 506, 'action created', '2021-05-30 17:05:20', '2021-05-30 17:05:20'),
(630, 506, 'action timed out after 300 seconds', '2021-05-30 20:59:02', '2021-05-30 20:59:02'),
(652, 514, 'action created', '2021-06-06 18:42:20', '2021-06-06 18:42:20'),
(653, 514, 'action timed out after 300 seconds', '2021-06-07 06:34:48', '2021-06-07 06:34:48'),
(654, 515, 'action created', '2021-06-07 06:34:51', '2021-06-07 06:34:51'),
(655, 515, 'action timed out after 300 seconds', '2021-06-07 15:38:05', '2021-06-07 15:38:05'),
(668, 520, 'action created', '2021-06-11 08:14:59', '2021-06-11 08:14:59'),
(669, 520, 'action timed out after 300 seconds', '2021-06-11 17:37:55', '2021-06-11 17:37:55'),
(676, 523, 'action created', '2021-06-13 00:33:48', '2021-06-13 00:33:48'),
(677, 523, 'action timed out after 300 seconds', '2021-06-13 16:30:28', '2021-06-13 16:30:28'),
(681, 525, 'action created', '2021-06-14 00:07:14', '2021-06-14 00:07:14'),
(682, 525, 'action timed out after 300 seconds', '2021-06-14 23:58:02', '2021-06-14 23:58:02'),
(689, 528, 'action created', '2021-06-16 00:06:33', '2021-06-16 00:06:33'),
(690, 528, 'action timed out after 300 seconds', '2021-06-16 15:53:05', '2021-06-16 15:53:05'),
(700, 532, 'action created', '2021-06-19 05:43:22', '2021-06-19 05:43:22'),
(701, 532, 'action timed out after 300 seconds', '2021-06-19 16:24:29', '2021-06-19 16:24:29'),
(1226, 711, 'action created', '2021-11-09 00:57:56', '2021-11-09 00:57:56'),
(1239, 715, 'action created', '2021-11-09 14:31:34', '2021-11-09 14:31:34'),
(1240, 716, 'action created', '2021-11-09 14:31:34', '2021-11-09 14:31:34'),
(1241, 717, 'action created', '2021-11-09 14:31:49', '2021-11-09 14:31:49'),
(1242, 718, 'action created', '2021-11-09 14:31:49', '2021-11-09 14:31:49'),
(1254, 722, 'action created', '2021-11-10 00:28:00', '2021-11-10 00:28:00'),
(1267, 722, 'action started via WP Cron', '2021-11-11 07:55:01', '2021-11-11 07:55:01'),
(1268, 722, 'action complete via WP Cron', '2021-11-11 07:55:01', '2021-11-11 07:55:01'),
(1269, 727, 'action created', '2021-11-11 07:55:01', '2021-11-11 07:55:01'),
(1270, 728, 'action created', '2021-11-11 20:24:38', '2021-11-11 20:24:38'),
(1271, 729, 'action created', '2021-11-11 20:24:38', '2021-11-11 20:24:38'),
(1272, 728, 'action started via WP Cron', '2021-11-11 20:24:41', '2021-11-11 20:24:41'),
(1273, 728, 'action complete via WP Cron', '2021-11-11 20:24:42', '2021-11-11 20:24:42'),
(1274, 729, 'action started via WP Cron', '2021-11-11 20:24:42', '2021-11-11 20:24:42'),
(1275, 729, 'action complete via WP Cron', '2021-11-11 20:24:42', '2021-11-11 20:24:42'),
(1276, 727, 'action started via WP Cron', '2021-11-12 10:58:08', '2021-11-12 10:58:08'),
(1277, 727, 'action complete via WP Cron', '2021-11-12 10:58:08', '2021-11-12 10:58:08'),
(1278, 730, 'action created', '2021-11-12 10:58:08', '2021-11-12 10:58:08'),
(1279, 715, 'action started via WP Cron', '2021-11-13 11:17:13', '2021-11-13 11:17:13'),
(1280, 715, 'action complete via WP Cron', '2021-11-13 11:17:14', '2021-11-13 11:17:14'),
(1281, 731, 'action created', '2021-11-13 11:17:14', '2021-11-13 11:17:14'),
(1282, 730, 'action started via WP Cron', '2021-11-13 11:17:14', '2021-11-13 11:17:14'),
(1283, 730, 'action complete via WP Cron', '2021-11-13 11:17:14', '2021-11-13 11:17:14'),
(1284, 732, 'action created', '2021-11-13 11:17:14', '2021-11-13 11:17:14'),
(1285, 732, 'action started via WP Cron', '2021-11-14 16:14:32', '2021-11-14 16:14:32'),
(1286, 732, 'action complete via WP Cron', '2021-11-14 16:14:33', '2021-11-14 16:14:33'),
(1287, 733, 'action created', '2021-11-14 16:14:33', '2021-11-14 16:14:33'),
(1288, 733, 'action started via WP Cron', '2021-11-15 16:54:53', '2021-11-15 16:54:53'),
(1289, 733, 'action complete via WP Cron', '2021-11-15 16:54:53', '2021-11-15 16:54:53'),
(1290, 734, 'action created', '2021-11-15 16:54:53', '2021-11-15 16:54:53'),
(1291, 711, 'action started via WP Cron', '2021-11-16 02:04:26', '2021-11-16 02:04:26'),
(1292, 711, 'action complete via WP Cron', '2021-11-16 02:04:29', '2021-11-16 02:04:29'),
(1293, 735, 'action created', '2021-11-16 02:04:29', '2021-11-16 02:04:29'),
(1294, 736, 'action created', '2021-11-16 02:06:27', '2021-11-16 02:06:27'),
(1295, 737, 'action created', '2021-11-16 02:06:27', '2021-11-16 02:06:27'),
(1296, 736, 'action started via Async Request', '2021-11-16 02:06:51', '2021-11-16 02:06:51'),
(1297, 736, 'action complete via Async Request', '2021-11-16 02:06:51', '2021-11-16 02:06:51'),
(1298, 737, 'action started via WP Cron', '2021-11-16 02:08:27', '2021-11-16 02:08:27'),
(1299, 737, 'action complete via WP Cron', '2021-11-16 02:08:27', '2021-11-16 02:08:27'),
(1300, 717, 'action started via WP Cron', '2021-11-16 16:53:37', '2021-11-16 16:53:37'),
(1301, 717, 'action complete via WP Cron', '2021-11-16 16:53:37', '2021-11-16 16:53:37'),
(1302, 738, 'action created', '2021-11-16 16:53:37', '2021-11-16 16:53:37'),
(1303, 718, 'action started via WP Cron', '2021-11-16 16:53:37', '2021-11-16 16:53:37'),
(1304, 718, 'action complete via WP Cron', '2021-11-16 16:53:37', '2021-11-16 16:53:37'),
(1305, 739, 'action created', '2021-11-16 16:53:37', '2021-11-16 16:53:37'),
(1306, 734, 'action started via WP Cron', '2021-11-16 16:56:09', '2021-11-16 16:56:09'),
(1307, 734, 'action complete via WP Cron', '2021-11-16 16:56:09', '2021-11-16 16:56:09'),
(1308, 740, 'action created', '2021-11-16 16:56:09', '2021-11-16 16:56:09'),
(1309, 740, 'action started via WP Cron', '2021-11-17 17:48:56', '2021-11-17 17:48:56'),
(1310, 740, 'action complete via WP Cron', '2021-11-17 17:48:56', '2021-11-17 17:48:56'),
(1311, 741, 'action created', '2021-11-17 17:48:56', '2021-11-17 17:48:56'),
(1312, 741, 'action started via WP Cron', '2021-11-18 17:51:43', '2021-11-18 17:51:43'),
(1313, 741, 'action complete via WP Cron', '2021-11-18 17:51:43', '2021-11-18 17:51:43'),
(1314, 742, 'action created', '2021-11-18 17:51:43', '2021-11-18 17:51:43'),
(1315, 716, 'action started via WP Cron', '2021-11-19 16:21:29', '2021-11-19 16:21:29'),
(1316, 716, 'action complete via WP Cron', '2021-11-19 16:21:31', '2021-11-19 16:21:31'),
(1317, 743, 'action created', '2021-11-19 16:21:31', '2021-11-19 16:21:31'),
(1318, 742, 'action started via WP Cron', '2021-11-19 18:31:29', '2021-11-19 18:31:29'),
(1319, 742, 'action complete via WP Cron', '2021-11-19 18:31:29', '2021-11-19 18:31:29'),
(1320, 744, 'action created', '2021-11-19 18:31:29', '2021-11-19 18:31:29'),
(1321, 731, 'action started via WP Cron', '2021-11-20 11:20:41', '2021-11-20 11:20:41'),
(1322, 731, 'action complete via WP Cron', '2021-11-20 11:20:42', '2021-11-20 11:20:42'),
(1323, 745, 'action created', '2021-11-20 11:20:42', '2021-11-20 11:20:42'),
(1324, 744, 'action started via WP Cron', '2021-11-20 18:32:41', '2021-11-20 18:32:41'),
(1325, 744, 'action complete via WP Cron', '2021-11-20 18:32:41', '2021-11-20 18:32:41'),
(1326, 746, 'action created', '2021-11-20 18:32:41', '2021-11-20 18:32:41'),
(1327, 746, 'action started via WP Cron', '2021-11-21 18:47:06', '2021-11-21 18:47:06'),
(1328, 746, 'action complete via WP Cron', '2021-11-21 18:47:06', '2021-11-21 18:47:06'),
(1329, 747, 'action created', '2021-11-21 18:47:06', '2021-11-21 18:47:06'),
(1330, 747, 'action started via WP Cron', '2021-11-22 21:18:53', '2021-11-22 21:18:53'),
(1331, 747, 'action complete via WP Cron', '2021-11-22 21:18:53', '2021-11-22 21:18:53'),
(1332, 748, 'action created', '2021-11-22 21:18:53', '2021-11-22 21:18:53'),
(1333, 735, 'action started via WP Cron', '2021-11-23 04:35:35', '2021-11-23 04:35:35'),
(1334, 735, 'action complete via WP Cron', '2021-11-23 04:35:38', '2021-11-23 04:35:38'),
(1335, 749, 'action created', '2021-11-23 04:35:38', '2021-11-23 04:35:38'),
(1336, 738, 'action started via WP Cron', '2021-11-23 17:35:31', '2021-11-23 17:35:31'),
(1337, 738, 'action complete via WP Cron', '2021-11-23 17:35:31', '2021-11-23 17:35:31'),
(1338, 750, 'action created', '2021-11-23 17:35:31', '2021-11-23 17:35:31'),
(1339, 739, 'action started via WP Cron', '2021-11-23 17:35:31', '2021-11-23 17:35:31'),
(1340, 739, 'action complete via WP Cron', '2021-11-23 17:35:31', '2021-11-23 17:35:31'),
(1341, 751, 'action created', '2021-11-23 17:35:31', '2021-11-23 17:35:31'),
(1342, 748, 'action started via WP Cron', '2021-11-23 21:49:32', '2021-11-23 21:49:32'),
(1343, 748, 'action complete via WP Cron', '2021-11-23 21:49:32', '2021-11-23 21:49:32'),
(1344, 752, 'action created', '2021-11-23 21:49:32', '2021-11-23 21:49:32'),
(1345, 752, 'action started via WP Cron', '2021-11-25 00:12:21', '2021-11-25 00:12:21'),
(1346, 752, 'action complete via WP Cron', '2021-11-25 00:12:21', '2021-11-25 00:12:21'),
(1347, 753, 'action created', '2021-11-25 00:12:21', '2021-11-25 00:12:21'),
(1348, 753, 'action started via WP Cron', '2021-11-26 00:14:21', '2021-11-26 00:14:21'),
(1349, 753, 'action complete via WP Cron', '2021-11-26 00:14:22', '2021-11-26 00:14:22'),
(1350, 754, 'action created', '2021-11-26 00:14:22', '2021-11-26 00:14:22'),
(1351, 743, 'action started via WP Cron', '2021-11-26 18:00:49', '2021-11-26 18:00:49'),
(1352, 743, 'action complete via WP Cron', '2021-11-26 18:00:50', '2021-11-26 18:00:50'),
(1353, 755, 'action created', '2021-11-26 18:00:50', '2021-11-26 18:00:50'),
(1354, 754, 'action started via WP Cron', '2021-11-27 00:35:59', '2021-11-27 00:35:59'),
(1355, 754, 'action complete via WP Cron', '2021-11-27 00:35:59', '2021-11-27 00:35:59'),
(1356, 756, 'action created', '2021-11-27 00:35:59', '2021-11-27 00:35:59'),
(1357, 745, 'action started via WP Cron', '2021-11-27 23:50:11', '2021-11-27 23:50:11'),
(1358, 745, 'action complete via WP Cron', '2021-11-27 23:50:12', '2021-11-27 23:50:12'),
(1359, 757, 'action created', '2021-11-27 23:50:12', '2021-11-27 23:50:12'),
(1360, 756, 'action started via WP Cron', '2021-11-28 08:34:40', '2021-11-28 08:34:40'),
(1361, 756, 'action complete via WP Cron', '2021-11-28 08:34:40', '2021-11-28 08:34:40'),
(1362, 758, 'action created', '2021-11-28 08:34:40', '2021-11-28 08:34:40'),
(1363, 758, 'action started via WP Cron', '2021-11-29 09:45:52', '2021-11-29 09:45:52'),
(1364, 758, 'action complete via WP Cron', '2021-11-29 09:45:53', '2021-11-29 09:45:53'),
(1365, 759, 'action created', '2021-11-29 09:45:53', '2021-11-29 09:45:53'),
(1366, 749, 'action started via WP Cron', '2021-11-30 09:48:43', '2021-11-30 09:48:43'),
(1367, 749, 'action complete via WP Cron', '2021-11-30 09:48:46', '2021-11-30 09:48:46'),
(1368, 760, 'action created', '2021-11-30 09:48:46', '2021-11-30 09:48:46'),
(1369, 759, 'action started via WP Cron', '2021-11-30 09:48:46', '2021-11-30 09:48:46'),
(1370, 759, 'action complete via WP Cron', '2021-11-30 09:48:46', '2021-11-30 09:48:46'),
(1371, 761, 'action created', '2021-11-30 09:48:46', '2021-11-30 09:48:46'),
(1372, 750, 'action started via WP Cron', '2021-11-30 17:50:08', '2021-11-30 17:50:08'),
(1373, 750, 'action complete via WP Cron', '2021-11-30 17:50:08', '2021-11-30 17:50:08'),
(1374, 762, 'action created', '2021-11-30 17:50:08', '2021-11-30 17:50:08'),
(1375, 751, 'action started via WP Cron', '2021-11-30 17:50:08', '2021-11-30 17:50:08'),
(1376, 751, 'action complete via WP Cron', '2021-11-30 17:50:08', '2021-11-30 17:50:08'),
(1377, 763, 'action created', '2021-11-30 17:50:08', '2021-11-30 17:50:08'),
(1378, 761, 'action started via WP Cron', '2021-12-01 16:12:59', '2021-12-01 16:12:59'),
(1379, 761, 'action complete via WP Cron', '2021-12-01 16:12:59', '2021-12-01 16:12:59'),
(1380, 764, 'action created', '2021-12-01 16:12:59', '2021-12-01 16:12:59'),
(1381, 764, 'action started via WP Cron', '2021-12-02 17:21:23', '2021-12-02 17:21:23'),
(1382, 764, 'action complete via WP Cron', '2021-12-02 17:21:23', '2021-12-02 17:21:23'),
(1383, 765, 'action created', '2021-12-02 17:21:23', '2021-12-02 17:21:23'),
(1384, 765, 'action started via WP Cron', '2021-12-03 17:22:40', '2021-12-03 17:22:40'),
(1385, 765, 'action complete via WP Cron', '2021-12-03 17:22:40', '2021-12-03 17:22:40'),
(1386, 766, 'action created', '2021-12-03 17:22:40', '2021-12-03 17:22:40'),
(1387, 755, 'action started via WP Cron', '2021-12-03 18:55:51', '2021-12-03 18:55:51'),
(1388, 755, 'action complete via WP Cron', '2021-12-03 18:55:52', '2021-12-03 18:55:52'),
(1389, 767, 'action created', '2021-12-03 18:55:52', '2021-12-03 18:55:52'),
(1390, 766, 'action started via WP Cron', '2021-12-04 20:07:12', '2021-12-04 20:07:12'),
(1391, 766, 'action complete via WP Cron', '2021-12-04 20:07:13', '2021-12-04 20:07:13'),
(1392, 768, 'action created', '2021-12-04 20:07:13', '2021-12-04 20:07:13'),
(1393, 757, 'action started via WP Cron', '2021-12-05 00:20:17', '2021-12-05 00:20:17'),
(1394, 757, 'action complete via WP Cron', '2021-12-05 00:20:17', '2021-12-05 00:20:17'),
(1395, 769, 'action created', '2021-12-05 00:20:17', '2021-12-05 00:20:17'),
(1396, 768, 'action started via WP Cron', '2021-12-05 21:15:43', '2021-12-05 21:15:43'),
(1397, 768, 'action complete via WP Cron', '2021-12-05 21:15:43', '2021-12-05 21:15:43'),
(1398, 770, 'action created', '2021-12-05 21:15:43', '2021-12-05 21:15:43'),
(1399, 770, 'action started via WP Cron', '2021-12-06 21:28:56', '2021-12-06 21:28:56'),
(1400, 770, 'action complete via WP Cron', '2021-12-06 21:28:56', '2021-12-06 21:28:56'),
(1401, 771, 'action created', '2021-12-06 21:28:56', '2021-12-06 21:28:56'),
(1402, 772, 'action created', '2021-12-07 02:09:34', '2021-12-07 02:09:34'),
(1403, 773, 'action created', '2021-12-07 02:09:34', '2021-12-07 02:09:34'),
(1404, 772, 'action started via WP Cron', '2021-12-07 02:10:50', '2021-12-07 02:10:50'),
(1405, 772, 'action complete via WP Cron', '2021-12-07 02:10:51', '2021-12-07 02:10:51'),
(1406, 773, 'action started via WP Cron', '2021-12-07 02:11:51', '2021-12-07 02:11:51'),
(1407, 773, 'action complete via WP Cron', '2021-12-07 02:11:51', '2021-12-07 02:11:51'),
(1408, 774, 'action created', '2021-12-07 05:06:42', '2021-12-07 05:06:42'),
(1409, 760, 'action started via WP Cron', '2021-12-07 14:42:00', '2021-12-07 14:42:00'),
(1410, 760, 'action complete via WP Cron', '2021-12-07 14:42:04', '2021-12-07 14:42:04'),
(1411, 775, 'action created', '2021-12-07 14:42:04', '2021-12-07 14:42:04'),
(1412, 762, 'action started via WP Cron', '2021-12-07 18:05:06', '2021-12-07 18:05:06'),
(1413, 762, 'action complete via WP Cron', '2021-12-07 18:05:06', '2021-12-07 18:05:06'),
(1414, 776, 'action created', '2021-12-07 18:05:06', '2021-12-07 18:05:06'),
(1415, 763, 'action started via WP Cron', '2021-12-07 18:05:06', '2021-12-07 18:05:06'),
(1416, 763, 'action complete via WP Cron', '2021-12-07 18:05:06', '2021-12-07 18:05:06'),
(1417, 777, 'action created', '2021-12-07 18:05:06', '2021-12-07 18:05:06'),
(1418, 771, 'action started via WP Cron', '2021-12-07 21:29:29', '2021-12-07 21:29:29'),
(1419, 771, 'action complete via WP Cron', '2021-12-07 21:29:29', '2021-12-07 21:29:29'),
(1420, 778, 'action created', '2021-12-07 21:29:29', '2021-12-07 21:29:29'),
(1421, 779, 'action created', '2021-12-08 02:38:39', '2021-12-08 02:38:39'),
(1422, 780, 'action created', '2021-12-08 02:38:39', '2021-12-08 02:38:39'),
(1423, 779, 'action started via Async Request', '2021-12-08 02:38:48', '2021-12-08 02:38:48'),
(1424, 779, 'action complete via Async Request', '2021-12-08 02:38:49', '2021-12-08 02:38:49'),
(1425, 780, 'action started via WP Cron', '2021-12-08 02:39:01', '2021-12-08 02:39:01'),
(1426, 780, 'action complete via WP Cron', '2021-12-08 02:39:02', '2021-12-08 02:39:02'),
(1427, 781, 'action created', '2021-12-08 02:39:05', '2021-12-08 02:39:05'),
(1428, 782, 'action created', '2021-12-08 02:39:05', '2021-12-08 02:39:05'),
(1429, 781, 'action started via Async Request', '2021-12-08 02:39:08', '2021-12-08 02:39:08'),
(1430, 781, 'action complete via Async Request', '2021-12-08 02:39:09', '2021-12-08 02:39:09'),
(1431, 782, 'action started via Async Request', '2021-12-08 02:39:09', '2021-12-08 02:39:09'),
(1432, 782, 'action complete via Async Request', '2021-12-08 02:39:09', '2021-12-08 02:39:09'),
(1433, 778, 'action started via WP Cron', '2021-12-09 00:34:26', '2021-12-09 00:34:26'),
(1434, 778, 'action complete via WP Cron', '2021-12-09 00:34:26', '2021-12-09 00:34:26'),
(1435, 783, 'action created', '2021-12-09 00:34:26', '2021-12-09 00:34:26'),
(1436, 784, 'action created', '2021-12-09 14:57:13', '2021-12-09 14:57:13'),
(1437, 785, 'action created', '2021-12-09 14:57:13', '2021-12-09 14:57:13'),
(1438, 784, 'action started via Async Request', '2021-12-09 14:57:26', '2021-12-09 14:57:26'),
(1439, 784, 'action complete via Async Request', '2021-12-09 14:57:26', '2021-12-09 14:57:26'),
(1440, 785, 'action started via WP Cron', '2021-12-09 14:57:31', '2021-12-09 14:57:31'),
(1441, 785, 'action complete via WP Cron', '2021-12-09 14:57:31', '2021-12-09 14:57:31'),
(1442, 786, 'action created', '2021-12-09 16:21:34', '2021-12-09 16:21:34'),
(1443, 786, 'action started via WP Cron', '2021-12-09 16:22:56', '2021-12-09 16:22:56'),
(1444, 786, 'action complete via WP Cron', '2021-12-09 16:22:56', '2021-12-09 16:22:56'),
(1445, 787, 'action created', '2021-12-09 16:23:00', '2021-12-09 16:23:00'),
(1446, 787, 'action started via WP Cron', '2021-12-09 16:25:47', '2021-12-09 16:25:47'),
(1447, 787, 'action complete via WP Cron', '2021-12-09 16:25:47', '2021-12-09 16:25:47'),
(1448, 788, 'action created', '2021-12-09 21:44:25', '2021-12-09 21:44:25'),
(1449, 788, 'action started via WP Cron', '2021-12-09 21:45:58', '2021-12-09 21:45:58'),
(1450, 788, 'action complete via WP Cron', '2021-12-09 21:45:58', '2021-12-09 21:45:58'),
(1451, 789, 'action created', '2021-12-09 21:46:00', '2021-12-09 21:46:00'),
(1452, 789, 'action started via WP Cron', '2021-12-09 21:48:04', '2021-12-09 21:48:04'),
(1453, 789, 'action complete via WP Cron', '2021-12-09 21:48:04', '2021-12-09 21:48:04'),
(1454, 783, 'action started via WP Cron', '2021-12-10 00:41:17', '2021-12-10 00:41:17'),
(1455, 783, 'action complete via WP Cron', '2021-12-10 00:41:17', '2021-12-10 00:41:17'),
(1456, 790, 'action created', '2021-12-10 00:41:17', '2021-12-10 00:41:17'),
(1457, 791, 'action created', '2021-12-10 03:03:38', '2021-12-10 03:03:38'),
(1458, 792, 'action created', '2021-12-10 03:03:38', '2021-12-10 03:03:38'),
(1459, 791, 'action started via WP Cron', '2021-12-10 03:04:03', '2021-12-10 03:04:03'),
(1460, 791, 'action complete via WP Cron', '2021-12-10 03:04:05', '2021-12-10 03:04:05'),
(1461, 792, 'action started via WP Cron', '2021-12-10 03:04:05', '2021-12-10 03:04:05'),
(1462, 792, 'action complete via WP Cron', '2021-12-10 03:04:06', '2021-12-10 03:04:06'),
(1463, 767, 'action started via WP Cron', '2021-12-10 18:56:05', '2021-12-10 18:56:05'),
(1464, 767, 'action complete via WP Cron', '2021-12-10 18:56:06', '2021-12-10 18:56:06'),
(1465, 793, 'action created', '2021-12-10 18:56:06', '2021-12-10 18:56:06'),
(1466, 794, 'action created', '2021-12-10 20:08:58', '2021-12-10 20:08:58'),
(1467, 795, 'action created', '2021-12-10 20:08:58', '2021-12-10 20:08:58'),
(1468, 794, 'action started via WP Cron', '2021-12-10 20:09:04', '2021-12-10 20:09:04'),
(1469, 794, 'action complete via WP Cron', '2021-12-10 20:09:05', '2021-12-10 20:09:05'),
(1470, 795, 'action started via WP Cron', '2021-12-10 20:09:05', '2021-12-10 20:09:05'),
(1471, 795, 'action complete via WP Cron', '2021-12-10 20:09:05', '2021-12-10 20:09:05'),
(1472, 790, 'action started via WP Cron', '2021-12-11 00:42:08', '2021-12-11 00:42:08'),
(1473, 790, 'action complete via WP Cron', '2021-12-11 00:42:08', '2021-12-11 00:42:08'),
(1474, 796, 'action created', '2021-12-11 00:42:08', '2021-12-11 00:42:08'),
(1475, 797, 'action created', '2021-12-11 01:29:26', '2021-12-11 01:29:26'),
(1476, 797, 'action started via WP Cron', '2021-12-11 01:31:04', '2021-12-11 01:31:04'),
(1477, 797, 'action complete via WP Cron', '2021-12-11 01:31:04', '2021-12-11 01:31:04'),
(1478, 769, 'action started via WP Cron', '2021-12-12 00:21:52', '2021-12-12 00:21:52'),
(1479, 769, 'action complete via WP Cron', '2021-12-12 00:21:52', '2021-12-12 00:21:52'),
(1480, 798, 'action created', '2021-12-12 00:21:52', '2021-12-12 00:21:52'),
(1481, 796, 'action started via WP Cron', '2021-12-12 00:44:05', '2021-12-12 00:44:05'),
(1482, 796, 'action complete via WP Cron', '2021-12-12 00:44:05', '2021-12-12 00:44:05'),
(1483, 799, 'action created', '2021-12-12 00:44:05', '2021-12-12 00:44:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_commentmeta`
--

DROP TABLE IF EXISTS `wpjy_commentmeta`;
CREATE TABLE `wpjy_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_commentmeta`
--

TRUNCATE TABLE `wpjy_commentmeta`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_comments`
--

DROP TABLE IF EXISTS `wpjy_comments`;
CREATE TABLE `wpjy_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_comments`
--

TRUNCATE TABLE `wpjy_comments`;
--
-- Volcado de datos para la tabla `wpjy_comments`
--

INSERT INTO `wpjy_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(4, 136, 'Stevtync', 'stevVeinna@insite.pw', 'http://aquedan.com', '5.188.84.76', '2019-08-14 00:17:27', '2019-08-14 04:17:27', 'Can You Buy Diflucan Online  <a href=\"http://clanar.com\" rel=\"nofollow\">viagra</a> best buy isotretinoin', 0, 'spam', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'comment', 0, 0),
(5, 136, 'Stevtync', 'stevVeinna@insite.pw', 'http://cialgeneric.com', '5.188.84.76', '2019-08-15 14:51:23', '2019-08-15 18:51:23', 'Levitra Mas Potente Que Viagra Levaquin Best Website In Internet Mastercard Donde Comprar Silagra  <a href=\"http://4rxday.com\" rel=\"nofollow\">cialis overnight shipping from usa</a> Diferencias Entre Cialis Y Levitra Amoxicillin Tab 500mg Canadian Pharmacy Online Cialis', 0, 'spam', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_huge_it_reslider_sliders`
--

DROP TABLE IF EXISTS `wpjy_huge_it_reslider_sliders`;
CREATE TABLE `wpjy_huge_it_reslider_sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `style` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_huge_it_reslider_sliders`
--

TRUNCATE TABLE `wpjy_huge_it_reslider_sliders`;
--
-- Volcado de datos para la tabla `wpjy_huge_it_reslider_sliders`
--

INSERT INTO `wpjy_huge_it_reslider_sliders` (`id`, `title`, `type`, `params`, `time`, `slide`, `style`, `custom`) VALUES
(1, 'IBC', 'simple', '{\"autoplay\":1,\"pauseonhover\":1,\"effect\":{\"type\":3,\"duration\":1500,\"interval\":1000},\"thumbnails\":{\"show\":0,\"positioning\":0},\"custom\":{\"type\":\"text\"},\"title\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":213,\"height\":61,\"left\":\"\",\"top\":\"\",\"color\":\"FFFFFF\",\"opacity\":0,\"font\":{\"size\":18},\"border\":{\"color\":\"FFFFFF\",\"width\":1,\"radius\":2},\"background\":{\"color\":\"FFFFFF\",\"hover\":\"30FF4F\"}}},\"description\":{\"show\":0,\"position\":\"1\",\"style\":{\"width\":768,\"height\":116,\"left\":\"\",\"top\":\"\",\"color\":\"FFFFFF\",\"opacity\":80,\"font\":{\"size\":14},\"border\":{\"color\":\"3478FF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"000000\",\"hover\":\"000000\"}}},\"arrows\":{\"show\":2,\"type\":1,\"style\":{\"background\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"},\"free\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"}}}}},\"bullets\":{\"show\":2,\"type\":\"0\",\"position\":0,\"autocenter\":0,\"rows\":1,\"s_x\":10,\"s_y\":10,\"orientation\":1,\"style\":{\"background\":{\"width\":\"60\",\"height\":\"60\",\"color\":{\"hover\":\"646464\",\"active\":\"30FF4F\",\"link\":\"CCCCCC\"}},\"position\":{\"top\":\"16px\",\"left\":\"10px\",\"free\":{\"top\":\"16px\",\"left\":\"10px\"}}}}}', '2016-05-02 10:58:58', 'NULL', '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}'),
(3, 'Admisión 2018', 'simple', '{\"autoplay\":1,\"pauseonhover\":1,\"effect\":{\"type\":3,\"duration\":1500,\"interval\":1000},\"thumbnails\":{\"show\":0,\"positioning\":0},\"custom\":{\"type\":\"button\",\"show\":1,\"style\":{\"width\":\"100\",\"height\":\"50\",\"left\":\"100px\",\"top\":\"200px\",\"color\":\"000000\",\"opacity\":\"50\",\"font\":{\"size\":\"14\"},\"border\":{\"color\":\"3478FF\",\"width\":\"2\",\"radius\":\"10\"},\"background\":{\"color\":\"E8FF81\",\"hover\":\"30FF4F\"}}},\"title\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":150,\"height\":50,\"left\":\"10px\",\"top\":\"20px\",\"color\":\"FFFFFF\",\"opacity\":70,\"font\":{\"size\":16},\"border\":{\"color\":\"FFFFFF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"CCCCCC\",\"hover\":\"000000\"}}},\"description\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":200,\"height\":60,\"left\":\"170px\",\"top\":\"20px\",\"color\":\"FFFFFF\",\"opacity\":70,\"font\":{\"size\":14},\"border\":{\"color\":\"FFFFFF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"CCCCCC\",\"hover\":\"000000\"}}},\"arrows\":{\"show\":2,\"type\":1,\"style\":{\"background\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"},\"free\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"}}}}},\"bullets\":{\"show\":2,\"type\":\"0\",\"position\":0,\"autocenter\":0,\"rows\":1,\"s_x\":10,\"s_y\":10,\"orientation\":1,\"style\":{\"background\":{\"width\":\"60\",\"height\":\"60\",\"color\":{\"hover\":\"646464\",\"active\":\"30FF4F\",\"link\":\"CCCCCC\"}},\"position\":{\"top\":\"16px\",\"left\":\"10px\",\"free\":{\"top\":\"16px\",\"left\":\"10px\"}}}}}', '2018-01-03 09:59:58', NULL, '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}'),
(5, 'Organigrama', 'simple', '{\"autoplay\":1,\"pauseonhover\":1,\"effect\":{\"type\":3,\"duration\":1500,\"interval\":1000},\"thumbnails\":{\"show\":0,\"positioning\":0},\"custom\":{\"type\":\"button\",\"show\":1,\"style\":{\"width\":\"100\",\"height\":\"50\",\"left\":\"100px\",\"top\":\"200px\",\"color\":\"000000\",\"opacity\":\"50\",\"font\":{\"size\":\"14\"},\"border\":{\"color\":\"3478FF\",\"width\":\"2\",\"radius\":\"10\"},\"background\":{\"color\":\"E8FF81\",\"hover\":\"30FF4F\"}}},\"title\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":150,\"height\":50,\"left\":\"10px\",\"top\":\"20px\",\"color\":\"FFFFFF\",\"opacity\":70,\"font\":{\"size\":16},\"border\":{\"color\":\"FFFFFF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"CCCCCC\",\"hover\":\"000000\"}}},\"description\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":200,\"height\":60,\"left\":\"170px\",\"top\":\"20px\",\"color\":\"FFFFFF\",\"opacity\":70,\"font\":{\"size\":14},\"border\":{\"color\":\"FFFFFF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"CCCCCC\",\"hover\":\"000000\"}}},\"arrows\":{\"show\":2,\"type\":1,\"style\":{\"background\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"},\"free\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"}}}}},\"bullets\":{\"show\":2,\"type\":\"0\",\"position\":0,\"autocenter\":\"0\",\"rows\":1,\"s_x\":10,\"s_y\":10,\"orientation\":1,\"style\":{\"background\":{\"width\":\"60\",\"height\":\"60\",\"color\":{\"hover\":\"646464\",\"active\":\"30FF4F\",\"link\":\"CCCCCC\"}},\"position\":{\"top\":\"16px\",\"left\":\"10px\",\"free\":{\"top\":\"16px\",\"left\":\"10px\"}}}}}', '2018-12-10 22:52:12', NULL, '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_huge_it_reslider_slides`
--

DROP TABLE IF EXISTS `wpjy_huge_it_reslider_slides`;
CREATE TABLE `wpjy_huge_it_reslider_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sliderid` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `slide` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link_new_tab` tinyint(1) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_huge_it_reslider_slides`
--

TRUNCATE TABLE `wpjy_huge_it_reslider_slides`;
--
-- Volcado de datos para la tabla `wpjy_huge_it_reslider_slides`
--

INSERT INTO `wpjy_huge_it_reslider_slides` (`id`, `title`, `sliderid`, `published`, `slide`, `description`, `image_link`, `image_link_new_tab`, `thumbnail`, `custom`, `ordering`, `type`) VALUES
(8, 'Corporacion', 1, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/Corporacion.png', '{}', 2, ''),
(9, 'ibcAlcance', 1, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/ibcAlcance.png', '{}', 3, ''),
(10, 'IbcL', 1, 1, NULL, 'Ibc', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/IbcL.png', '{}', 6, ''),
(11, 'ibcnum', 1, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/ibcnum.png', '{}', 4, ''),
(12, 'ibcnumeros', 1, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/ibcnumeros.png', '{}', 5, ''),
(15, 'Web Direccion IBC', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Web-Direccion-IBC.jpg', '{}', 1, ''),
(16, 'Sede San Miguel', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Sede-San-Miguel.jpg', '{}', 2, ''),
(17, 'Sede Parral', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Sede-Parral.jpg', '{}', 3, ''),
(18, 'Sede Maipu', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Sede-Maipu.jpg', '{}', 4, ''),
(19, 'Reserva tu cupo', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Reserva-tu-cupo.jpg', '{}', 5, ''),
(20, 'Mision del IBC', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Mision-del-IBC.jpg', '{}', 6, ''),
(21, 'email cce', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/email-cce.jpg', '{}', 7, ''),
(22, 'Celular IBC', 3, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Celular-IBC.jpg', '{}', 8, ''),
(6, 'alianza-estrategica-ibc-wcmu', 1, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Alianza-estrategica-IBC-WCMU.jpg', '{}', 1, ''),
(24, 'Organigrama', 5, 1, NULL, '', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/12/Organigrama.png', '{}', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_links`
--

DROP TABLE IF EXISTS `wpjy_links`;
CREATE TABLE `wpjy_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_links`
--

TRUNCATE TABLE `wpjy_links`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_loginizer_logs`
--

DROP TABLE IF EXISTS `wpjy_loginizer_logs`;
CREATE TABLE `wpjy_loginizer_logs` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT 0,
  `count` int(10) NOT NULL DEFAULT 0,
  `lockout` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_loginizer_logs`
--

TRUNCATE TABLE `wpjy_loginizer_logs`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_options`
--

DROP TABLE IF EXISTS `wpjy_options`;
CREATE TABLE `wpjy_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_options`
--

TRUNCATE TABLE `wpjy_options`;
--
-- Volcado de datos para la tabla `wpjy_options`
--

INSERT INTO `wpjy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ibc-cce.cl/wp', 'yes'),
(2, 'home', 'http://ibc-cce.cl/wp', 'yes'),
(3, 'blogname', 'Instituto Bíblico del Centro', 'yes'),
(4, 'blogdescription', 'Centro Cristiano de Evangelización', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'secretaria@i-cce.cl', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:148:{s:46:\"um-download/([^/]+)/([^/]+)/([^/]+)/([^/]+)/?$\";s:111:\"index.php?um_action=download&um_form=$matches[1]&um_field=$matches[2]&um_user=$matches[3]&um_verify=$matches[4]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/um-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&um-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/um-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&um-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"um_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"um_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"um_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"um_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"um_form/([^/]+)/embed/?$\";s:40:\"index.php?um_form=$matches[1]&embed=true\";s:28:\"um_form/([^/]+)/trackback/?$\";s:34:\"index.php?um_form=$matches[1]&tb=1\";s:36:\"um_form/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&paged=$matches[2]\";s:43:\"um_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&cpage=$matches[2]\";s:33:\"um_form/([^/]+)/um-api(/(.*))?/?$\";s:48:\"index.php?um_form=$matches[1]&um-api=$matches[3]\";s:39:\"um_form/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:50:\"um_form/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:32:\"um_form/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?um_form=$matches[1]&page=$matches[2]\";s:24:\"um_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"um_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"um_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"um_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"um_directory/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"um_directory/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"um_directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"um_directory/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"um_directory/([^/]+)/embed/?$\";s:45:\"index.php?um_directory=$matches[1]&embed=true\";s:33:\"um_directory/([^/]+)/trackback/?$\";s:39:\"index.php?um_directory=$matches[1]&tb=1\";s:41:\"um_directory/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&paged=$matches[2]\";s:48:\"um_directory/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&cpage=$matches[2]\";s:38:\"um_directory/([^/]+)/um-api(/(.*))?/?$\";s:53:\"index.php?um_directory=$matches[1]&um-api=$matches[3]\";s:44:\"um_directory/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:55:\"um_directory/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:37:\"um_directory/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?um_directory=$matches[1]&page=$matches[2]\";s:29:\"um_directory/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"um_directory/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"um_directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"um_directory/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=76&cpage=$matches[1]\";s:17:\"um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/um-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&um-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/um-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&um-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&um-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&um-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/um-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&um-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/um-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&um-api=$matches[3]\";s:31:\".?.+?/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/um-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&um-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:19:\"jetpack/jetpack.php\";i:1;s:33:\"nimble-builder/nimble-builder.php\";i:2;s:27:\"redirection/redirection.php\";i:3;s:45:\"simple-local-avatars/simple-local-avatars.php\";i:4;s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";i:5;s:31:\"wp-from-email/wp-from-email.php\";i:6;s:31:\"wp-google-maps/wpGoogleMaps.php\";i:7;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:8;s:19:\"wpforms/wpforms.php\";i:9;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-4', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:71:\"/home/ibcccecl/public_html/wp/wp-content/themes/education-hub/index.php\";i:2;s:71:\"/home/ibcccecl/public_html/wp/wp-content/themes/education-hub/style.css\";i:3;s:80:\"/home/ibcccecl/public_html/wp/wp-content/plugins/wp-from-email/wp-from-email.php\";i:4;s:66:\"/home/ibcccecl/public_html/wp/wp-content/plugins/slider/slider.php\";i:5;s:72:\"/home/ibcccecl/public_html/wp/wp-content/themes/education-hub/footer.php\";}', 'no'),
(40, 'template', 'customizr', 'yes'),
(41, 'stylesheet', 'customizr-child', 'yes'),
(17673, 'finished_updating_comment_type', '1', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '49752', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:4:{s:5:\"title\";s:29:\"INSTITUTO BÍBLICO DEL CENTRO\";s:4:\"text\";s:39:\"del Centro Cristiano de Evangelización\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:95:\"Casa Central: Teresa vial 1141, San Miguel, Santiago\r\nTeléfono: +569 3 204 04 51\r\nibc@i-cce.cl\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:23:\"loginizer/loginizer.php\";s:22:\"loginizer_deactivation\";s:27:\"redirection/redirection.php\";a:2:{i:0;s:17:\"Redirection_Admin\";i:1;s:16:\"plugin_uninstall\";}s:45:\"simple-local-avatars/simple-local-avatars.php\";s:30:\"simple_local_avatars_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '76', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '209', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wpjy_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:18:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:20:\"nimble-widget-area-1\";a:0:{}s:20:\"nimble-widget-area-2\";a:0:{}s:20:\"nimble-widget-area-3\";a:0:{}s:20:\"nimble-widget-area-4\";a:0:{}s:20:\"nimble-widget-area-5\";a:0:{}s:20:\"nimble-widget-area-6\";a:0:{}s:20:\"nimble-widget-area-7\";a:0:{}s:20:\"nimble-widget-area-8\";a:0:{}s:20:\"nimble-widget-area-9\";a:0:{}s:21:\"nimble-widget-area-10\";a:0:{}s:4:\"left\";a:0:{}s:5:\"right\";a:1:{i:0;s:12:\"categories-2\";}s:17:\"footer_horizontal\";a:0:{}s:10:\"footer_one\";a:1:{i:0;s:6:\"text-3\";}s:10:\"footer_two\";a:0:{}s:12:\"footer_three\";a:1:{i:0;s:6:\"text-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'cron', 'a:20:{i:1639273127;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1639273197;a:2:{s:22:\"jetpack_sync_full_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}s:17:\"jetpack_sync_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1639273233;a:1:{s:25:\"wpp_maybe_performance_nag\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639273271;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639273792;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639274772;a:1:{s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639277332;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639277688;a:1:{s:24:\"jp_purge_transients_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639285572;a:1:{s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639308102;a:1:{s:22:\"redirection_log_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639312407;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639312846;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639328772;a:1:{s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639330343;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639330869;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639330881;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639418400;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1639590069;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1639674372;a:1:{s:26:\"um_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'loginizer_version', '1.3.0', 'yes'),
(105, 'loginizer_options', 'a:0:{}', 'yes'),
(106, 'loginizer_last_reset', '1481217960', 'yes'),
(107, 'loginizer_whitelist', 'a:0:{}', 'yes'),
(108, 'loginizer_blacklist', 'a:0:{}', 'yes'),
(109, 'loginizer_ins_time', '1481027813', 'yes'),
(153, 'theme_mods_twentysixteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1481028240;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(151, 'widget_education-hub-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(383, 'wp_from_email', 'a:2:{s:5:\"email\";s:12:\"ibc@i-cce.cl\";s:4:\"name\";s:29:\"Instituto Bíblico del Centro\";}', 'yes'),
(246, 'recently_activated', 'a:2:{s:35:\"ultimate-member/ultimate-member.php\";i:1639086260;s:45:\"profile-extra-fields/profile-extra-fields.php\";i:1639066889;}', 'yes'),
(257, '_transient_twentyfifteen_categories', '2', 'yes'),
(331, 'theme_mods_appointment', 'a:4:{i:0;b:0;s:12:\"header_image\";s:81:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-banner_biblia.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:52;s:3:\"url\";s:81:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-banner_biblia.jpg\";s:13:\"thumbnail_url\";s:81:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-banner_biblia.jpg\";s:6:\"height\";i:307;s:5:\"width\";i:1420;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1481742926;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:15:\"sidebar-primary\";a:1:{i:0;s:12:\"categories-2\";}s:18:\"footer-widget-area\";N;s:24:\"home-orange-sidebar_left\";N;s:25:\"home-orange-sidebar_right\";N;s:26:\"home-orange-sidebar_center\";N;}}}', 'yes'),
(332, 'widget_appointment_info_callout', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'appointment_options', 'a:6:{s:17:\"upload_image_logo\";s:81:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-Logo-IBC-transparente.png\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"90\";s:20:\"upload_image_favicon\";s:81:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-Logo-IBC-transparente.png\";s:15:\"header_one_name\";s:29:\"Instituto Bíblico del Centro\";s:15:\"header_one_text\";s:43:\"Iglesia Centro Cristiano de Evangelización\";}', 'yes'),
(19054, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2020-12-16 19:23:54\";s:14:\"first_accessed\";s:19:\"2020-12-16 19:19:34\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2020-12-16 19:20:30\";s:14:\"first_accessed\";s:19:\"2020-12-16 19:19:56\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2020-12-16 19:23:39\";s:14:\"first_accessed\";s:19:\"2020-12-16 19:21:06\";}}', 'yes'),
(341, 'widget_form_maker_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(342, 'fm_emailverification', '1', 'yes'),
(2126, 'page_for_posts', '0', 'yes'),
(2139, 'widget_education_zone_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3652, 'theme_mods_bhost', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608060247;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(2140, 'theme_mods_education-zone', 'a:11:{i:0;b:0;s:11:\"custom_logo\";i:81;s:16:\"background_image\";s:0:\"\";s:20:\"education_zone_email\";s:12:\"ibc@i-cce.cl\";s:20:\"education_zone_phone\";s:15:\"+56 9 6596 9488\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_attachment\";s:5:\"fixed\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608054306;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:13:\"right-sidebar\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}}}s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(57051, 'wp_mail_smtp_lite_sent_email_counter', '35', 'yes'),
(57052, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:11:{i:39;i:5;i:40;i:2;i:41;i:2;i:42;i:2;i:43;i:2;i:44;i:2;i:45;i:8;i:46;i:1;i:47;i:1;i:48;i:1;i:49;i:9;}', 'yes'),
(69236, 'widget_um_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(71860, '_site_transient_timeout_theme_roots', '1639271041', 'no'),
(71861, '_site_transient_theme_roots', 'a:10:{s:11:\"appointment\";s:7:\"/themes\";s:5:\"bhost\";s:7:\"/themes\";s:15:\"customizr-child\";s:7:\"/themes\";s:9:\"customizr\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(71962, '_transient_timeout_jetpack_sync_callables_await', '1639273148', 'no'),
(71963, '_transient_jetpack_sync_callables_await', '1639273088.1468', 'no'),
(71720, '_transient_timeout_jetpack_jitm_ec3a81d31de636bb9e2cc08fc7ad579', '1639264948', 'no'),
(71721, '_transient_jetpack_jitm_ec3a81d31de636bb9e2cc08fc7ad579', 'a:1:{s:18:\"last_response_time\";i:1639264648;}', 'no'),
(71731, '_transient_timeout_jetpack_https_test', '1639351157', 'no'),
(71732, '_transient_jetpack_https_test', '1', 'no'),
(71733, '_transient_timeout_jetpack_https_test_message', '1639351157', 'no'),
(71734, '_transient_jetpack_https_test_message', '', 'no'),
(71735, '_wpforms_transient_timeout_addons_urls', '1639351158', 'no'),
(71736, '_wpforms_transient_addons_urls', 'a:27:{s:22:\"wpforms-activecampaign\";s:0:\"\";s:21:\"wpforms-authorize-net\";s:0:\"\";s:14:\"wpforms-aweber\";s:0:\"\";s:24:\"wpforms-campaign-monitor\";s:0:\"\";s:28:\"wpforms-conversational-forms\";s:0:\"\";s:15:\"wpforms-captcha\";s:185:\"https://wpforms-plugin.s3.amazonaws.com/wpforms-captcha/wpforms-captcha-1.3.2.zip?AWSAccessKeyId=AKIASBN2TIA5QYG6HTPP&Expires=1639307958&Signature=ihvZ1igqgoi%2Fe%2BYhZYHtO%2F%2BCUac%3D\";s:12:\"wpforms-drip\";s:0:\"\";s:24:\"wpforms-form-abandonment\";s:0:\"\";s:19:\"wpforms-form-locker\";s:0:\"\";s:18:\"wpforms-form-pages\";s:0:\"\";s:19:\"wpforms-geolocation\";s:0:\"\";s:19:\"wpforms-getresponse\";s:0:\"\";s:17:\"wpforms-mailchimp\";s:0:\"\";s:21:\"wpforms-offline-forms\";s:0:\"\";s:23:\"wpforms-paypal-standard\";s:0:\"\";s:24:\"wpforms-post-submissions\";s:0:\"\";s:18:\"wpforms-salesforce\";s:0:\"\";s:19:\"wpforms-save-resume\";s:0:\"\";s:18:\"wpforms-sendinblue\";s:0:\"\";s:18:\"wpforms-signatures\";s:0:\"\";s:14:\"wpforms-square\";s:0:\"\";s:14:\"wpforms-stripe\";s:0:\"\";s:21:\"wpforms-surveys-polls\";s:0:\"\";s:20:\"wpforms-user-journey\";s:0:\"\";s:25:\"wpforms-user-registration\";s:0:\"\";s:16:\"wpforms-webhooks\";s:0:\"\";s:14:\"wpforms-zapier\";s:0:\"\";}', 'no'),
(71930, '_transient_timeout_jetpack_sync_constants_await', '1639275494', 'no'),
(71931, '_transient_jetpack_sync_constants_await', '1639271894.7404', 'no'),
(69496, 'um_cached_users_queue', '0', 'no'),
(19084, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:18:\"-33.49386842214428\";s:24:\"map_default_starting_lng\";s:18:\"-70.65139576295165\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:16;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:2;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(25672, 'whl_page', 'mylogin', 'yes'),
(25673, 'whl_redirect_admin', '404', 'yes'),
(17758, 'jetpack_activated', '1', 'yes'),
(17761, 'jetpack_activation_source', 'a:2:{i:0;s:8:\"featured\";i:1;N;}', 'yes'),
(17762, 'jetpack_sync_settings_disable', '0', 'yes'),
(17763, 'jetpack_options', 'a:10:{s:7:\"version\";s:16:\"9.2.2:1622728368\";s:11:\"old_version\";s:16:\"9.2.1:1608086931\";s:14:\"last_heartbeat\";i:1639196302;s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;s:2:\"id\";i:186926171;s:6:\"public\";i:1;s:11:\"master_user\";i:2;s:9:\"hide_jitm\";a:2:{s:4:\"scan\";a:2:{s:14:\"last_dismissal\";i:1608124033;s:6:\"number\";i:1;}s:6:\"backup\";a:2:{s:14:\"last_dismissal\";i:1639186443;s:6:\"number\";i:1;}}s:16:\"first_admin_view\";b:1;}', 'yes'),
(17764, 'jetpack_connection_active_plugins', 'a:1:{s:7:\"jetpack\";a:1:{s:4:\"name\";s:7:\"Jetpack\";}}', 'yes'),
(17766, 'do_activate', '0', 'yes'),
(69221, 'um_role_editor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(69222, 'um_role_administrator_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(69443, 'um_cache_userdata_4', 'a:55:{s:2:\"ID\";i:4;s:10:\"user_login\";s:8:\"mmorales\";s:9:\"user_pass\";s:34:\"$P$BKyTghQ9BUqgZTU3z7IcqboshOkw2K1\";s:13:\"user_nicename\";s:8:\"mmorales\";s:10:\"user_email\";s:21:\"jmiller@latitud90.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2021-12-09 21:32:11\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:13:\"Miles Morales\";s:10:\"subscriber\";b:1;s:8:\"wp_roles\";s:10:\"subscriber\";s:4:\"read\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:8:\"mmorales\";s:10:\"first_name\";s:5:\"Miles\";s:9:\"last_name\";s:7:\"Morales\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:25:\"synced_gravatar_hashed_id\";s:32:\"640da4f94d083acee76b145dc3380028\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:1;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:9:\"submitted\";s:302:\"a:9:{s:7:\"form_id\";s:3:\"373\";s:10:\"um_request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"8042cb51b5\";s:16:\"_wp_http_referer\";s:13:\"/wp/register/\";s:10:\"user_login\";s:8:\"mmorales\";s:10:\"first_name\";s:5:\"Miles\";s:9:\"last_name\";s:7:\"Morales\";s:10:\"user_email\";s:21:\"jmiller@latitud90.com\";s:9:\"timestamp\";i:1639071131;}\";s:7:\"form_id\";s:3:\"373\";s:10:\"um_request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"8042cb51b5\";s:16:\"_wp_http_referer\";s:13:\"/wp/register/\";s:9:\"timestamp\";s:10:\"1639071131\";s:35:\"um_user_profile_url_slug_user_login\";s:8:\"mmorales\";s:9:\"full_name\";s:13:\"miles morales\";s:14:\"account_status\";s:8:\"approved\";s:14:\"_um_last_login\";s:10:\"1639071134\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:10:\"subscriber\";s:5:\"roles\";a:1:{i:0;s:10:\"subscriber\";}s:18:\"can_access_wpadmin\";i:0;s:20:\"can_not_see_adminbar\";i:1;s:17:\"can_edit_everyone\";i:0;s:19:\"can_delete_everyone\";i:0;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:11:\"after_login\";s:16:\"redirect_profile\";s:12:\"after_logout\";s:13:\"redirect_home\";s:16:\"default_homepage\";i:1;s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:0;s:26:\"can_access_private_profile\";i:0;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:0;}', 'no'),
(729, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"secretaria@i-cce.cl\";s:7:\"version\";s:5:\"5.6.6\";s:9:\"timestamp\";i:1636617320;}', 'no'),
(440, '_transient_timeout_feed_ef605fdbfbba53a6c98437c00d402dfe', '1482231499', 'no'),
(3302, 'WPLANG', 'es_CL', 'yes'),
(29985, 'category_children', 'a:0:{}', 'yes'),
(9844, 'redirection_options', 'a:31:{s:7:\"support\";b:0;s:5:\"token\";s:32:\"d75aac6c3c2cd99eac08ec1727d84937\";s:12:\"monitor_post\";i:0;s:13:\"monitor_types\";a:0:{}s:19:\"associated_redirect\";s:0:\"\";s:11:\"auto_target\";s:0:\"\";s:15:\"expire_redirect\";i:7;s:10:\"expire_404\";i:7;s:7:\"modules\";a:0:{}s:10:\"newsletter\";b:0;s:14:\"redirect_cache\";i:1;s:10:\"ip_logging\";i:1;s:13:\"last_group_id\";i:0;s:8:\"rest_api\";i:0;s:5:\"https\";b:0;s:8:\"database\";s:0:\"\";s:10:\"flag_query\";s:5:\"exact\";s:9:\"flag_case\";b:0;s:13:\"flag_trailing\";b:0;s:10:\"flag_regex\";b:0;s:12:\"log_external\";b:0;s:10:\"log_header\";b:0;s:10:\"track_hits\";b:1;s:7:\"headers\";a:0:{}s:8:\"relocate\";s:0:\"\";s:16:\"preferred_domain\";s:0:\"\";s:7:\"aliases\";a:0:{}s:10:\"permalinks\";a:0:{}s:9:\"cache_key\";i:0;s:13:\"plugin_update\";s:6:\"prompt\";s:13:\"update_notice\";i:0;}', 'yes'),
(56713, 'nimble_version_upgraded_from', '2.1.29', 'no'),
(145, '_transient_twentysixteen_categories', '1', 'yes'),
(146, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, '_transient_twentyfourteen_category_count', '1', 'yes'),
(154, 'current_theme', 'customizr child theme', 'yes'),
(155, 'theme_mods_education-hub', 'a:7:{i:0;b:0;s:12:\"header_image\";s:73:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-banner_biblia.jpg\";s:13:\"theme_options\";a:38:{s:14:\"contact_number\";s:12:\"00-00-000-00\";s:13:\"contact_email\";s:12:\"ibc@i-cce.cl\";s:11:\"show_notice\";b:1;s:16:\"notice_link_text\";s:15:\"Matriculas 2018\";s:21:\"show_social_in_header\";b:1;s:16:\"show_quick_links\";b:0;s:16:\"show_search_form\";b:0;s:12:\"show_tagline\";b:0;s:12:\"notice_title\";s:9:\"Noticias:\";s:15:\"notice_link_url\";s:44:\"http://ibc-cce.cl/wp/category/matricula2017/\";s:22:\"featured_slider_status\";s:11:\"entire-site\";s:23:\"featured_content_status\";s:8:\"disabled\";s:11:\"site_layout\";s:5:\"fluid\";s:19:\"home_content_status\";b:0;s:24:\"home_news_section_status\";b:0;s:18:\"home_news_category\";i:3;s:26:\"home_events_section_status\";b:1;s:20:\"home_events_category\";i:3;s:18:\"home_events_number\";i:2;s:26:\"home_events_excerpt_length\";i:0;s:14:\"copyright_text\";s:156:\"Casa Central Teresa Vial 1141, San Miguel, Santiago / Sede Maipu Las Heras, Maipú.  Personalidad jurídica de Derecho Público 24555 Ley 19638, Decreto 303\";s:9:\"go_to_top\";b:0;s:14:\"excerpt_length\";i:34;s:14:\"read_more_text\";s:11:\"Leer Mas...\";s:13:\"global_layout\";s:13:\"right-sidebar\";s:22:\"featured_slider_page_1\";s:0:\"\";s:22:\"featured_slider_page_2\";s:0:\"\";s:33:\"featured_slider_transition_effect\";s:10:\"scrollHorz\";s:23:\"featured_content_number\";i:1;s:23:\"featured_content_page_1\";s:0:\"\";s:14:\"archive_layout\";s:4:\"full\";s:13:\"archive_image\";s:5:\"large\";s:23:\"archive_image_alignment\";s:6:\"center\";s:15:\"pagination_type\";s:7:\"numeric\";s:10:\"show_title\";b:1;s:15:\"breadcrumb_type\";s:6:\"simple\";s:22:\"featured_slider_number\";i:2;s:28:\"featured_slider_enable_pager\";b:1;}s:11:\"custom_logo\";i:40;s:16:\"background_color\";s:6:\"ffffff\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:9;s:3:\"url\";s:73:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-banner_biblia.jpg\";s:13:\"thumbnail_url\";s:73:\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-banner_biblia.jpg\";s:6:\"height\";i:489;s:5:\"width\";i:1420;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1508790282;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";N;}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'theme_switched_via_customizer', '', 'yes'),
(17696, 'theme_mods_customizr', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:4:\"main\";i:21;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638846694;s:4:\"data\";a:18:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:20:\"nimble-widget-area-1\";a:0:{}s:20:\"nimble-widget-area-2\";a:0:{}s:20:\"nimble-widget-area-3\";a:0:{}s:20:\"nimble-widget-area-4\";a:0:{}s:20:\"nimble-widget-area-5\";a:0:{}s:20:\"nimble-widget-area-6\";a:0:{}s:20:\"nimble-widget-area-7\";a:0:{}s:20:\"nimble-widget-area-8\";a:0:{}s:20:\"nimble-widget-area-9\";a:0:{}s:21:\"nimble-widget-area-10\";a:0:{}s:4:\"left\";a:0:{}s:5:\"right\";a:0:{}s:17:\"footer_horizontal\";a:0:{}s:10:\"footer_one\";a:1:{i:0;s:6:\"text-3\";}s:10:\"footer_two\";a:0:{}s:12:\"footer_three\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}}}}', 'yes');
INSERT INTO `wpjy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(17699, 'tc_theme_options', 'a:30:{s:7:\"tc_skin\";s:8:\"grey.css\";s:14:\"tc_logo_upload\";s:67:\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/logotipo-actual.png\";s:13:\"tc_fav_upload\";s:59:\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/favIcon.png\";s:28:\"tc_featured_page_button_text\";s:7:\"Más »\";s:20:\"tc_featured_text_one\";s:68:\"¡MATRICULAS ABIERTAS!\nReserva tu cupo ¡AHORA! para el periodo 2022\";s:20:\"tc_featured_page_one\";s:2:\"22\";s:20:\"tc_featured_page_two\";s:3:\"201\";s:22:\"tc_featured_page_three\";s:3:\"176\";s:20:\"tc_featured_text_two\";s:63:\"Información sobre charlas y seminarios.\nimpartidos en el IBC\n\n\";s:22:\"tc_featured_text_three\";s:73:\"Accede a la información sobre nuestras clases via streaming 100% online.\";s:19:\"tc_social_in_header\";b:0;s:6:\"tc_rss\";s:0:\"\";s:23:\"started_using_customizr\";s:11:\"with|4.3.14\";s:12:\"__moved_opts\";a:9:{i:0;s:11:\"old_socials\";i:1;s:10:\"custom_css\";i:2;s:12:\"classic_skin\";i:3;s:21:\"classic_sticky_header\";i:4;s:21:\"classic_header_wccart\";i:5;s:22:\"classic_header_tagline\";i:6;s:20:\"header_mobile_search\";i:7;s:13:\"header_topbar\";i:8;s:14:\"header_socials\";}s:13:\"tc_skin_color\";s:7:\"#5A5A5A\";s:22:\"tc_header_show_socials\";s:14:\"desktop_mobile\";s:8:\"defaults\";a:162:{s:18:\"tc_title_next_logo\";b:1;s:14:\"tc_logo_resize\";b:1;s:14:\"tc_site_layout\";s:4:\"wide\";s:23:\"tc_header_topbar_layout\";s:5:\"boxed\";s:23:\"tc_header_navbar_layout\";s:5:\"boxed\";s:25:\"tc_footer_colophon_layout\";s:5:\"boxed\";s:13:\"tc_skin_color\";s:7:\"#5a5a5a\";s:8:\"tc_fonts\";s:16:\"_g_sourcesanspro\";s:17:\"tc_body_font_size\";i:15;s:15:\"tc_social_links\";a:0:{}s:14:\"tc_link_scroll\";b:0;s:20:\"tc_link_hover_effect\";b:1;s:17:\"tc_link_underline\";b:1;s:11:\"tc_fancybox\";b:1;s:17:\"tc_retina_support\";b:0;s:20:\"tc_center_slider_img\";b:1;s:13:\"tc_center_img\";b:1;s:18:\"tc_resp_thumbs_img\";b:1;s:18:\"tc_slider_parallax\";b:1;s:19:\"tc_show_author_info\";b:1;s:15:\"tc_smoothscroll\";b:1;s:14:\"tc_header_skin\";s:5:\"light\";s:25:\"tc_header_custom_bg_color\";s:7:\"#ffffff\";s:25:\"tc_header_custom_fg_color\";s:7:\"#313131\";s:43:\"tc_highlight_contextually_active_menu_items\";b:0;s:26:\"tc_header_transparent_home\";b:0;s:19:\"tc_home_header_skin\";s:4:\"dark\";s:20:\"tc_header_no_borders\";b:1;s:21:\"tc_header_show_topbar\";s:4:\"none\";s:22:\"tc_header_show_socials\";s:7:\"desktop\";s:13:\"tc_top_border\";b:1;s:25:\"tc_header_title_underline\";b:1;s:31:\"tc_sticky_transparent_on_scroll\";b:1;s:17:\"tc_sticky_z_index\";i:100;s:16:\"tc_header_layout\";s:4:\"left\";s:25:\"tc_header_desktop_tagline\";s:11:\"brand_below\";s:24:\"tc_header_desktop_search\";s:6:\"navbar\";s:27:\"tc_header_search_full_width\";b:0;s:25:\"tc_header_desktop_wc_cart\";s:6:\"topbar\";s:24:\"tc_header_desktop_sticky\";s:8:\"stick_up\";s:26:\"tc_header_desktop_to_stick\";s:7:\"primary\";s:27:\"tc_sticky_shrink_title_logo\";b:1;s:28:\"tc_header_mobile_menu_layout\";s:11:\"mobile_menu\";s:39:\"tc_header_mobile_menu_dropdown_on_click\";b:1;s:24:\"tc_header_mobile_tagline\";b:0;s:24:\"tc_header_mobile_wc_cart\";b:1;s:23:\"tc_header_mobile_sticky\";s:8:\"stick_up\";s:23:\"tc_header_mobile_search\";s:6:\"navbar\";s:22:\"tc_display_second_menu\";b:0;s:13:\"tc_menu_style\";s:6:\"navbar\";s:30:\"tc_side_menu_dropdown_on_click\";b:0;s:16:\"tc_menu_position\";s:15:\"pull-menu-right\";s:23:\"tc_second_menu_position\";s:14:\"pull-menu-left\";s:12:\"tc_menu_type\";s:5:\"hover\";s:27:\"tc_menu_submenu_fade_effect\";b:1;s:32:\"tc_menu_submenu_item_move_effect\";b:1;s:17:\"tc_hide_all_menus\";b:0;s:28:\"tc_show_post_navigation_home\";b:0;s:23:\"tc_blog_restrict_by_cat\";a:0:{}s:15:\"tc_front_layout\";s:1:\"f\";s:15:\"tc_front_slider\";s:1:\"0\";s:22:\"tc_posts_slider_number\";i:4;s:24:\"tc_posts_slider_stickies\";b:0;s:21:\"tc_posts_slider_title\";b:1;s:20:\"tc_posts_slider_text\";b:1;s:20:\"tc_posts_slider_link\";s:3:\"cta\";s:27:\"tc_posts_slider_button_text\";s:17:\"Read more &raquo;\";s:15:\"tc_slider_width\";b:1;s:15:\"tc_slider_delay\";i:5000;s:22:\"tc_home_slider_overlay\";s:2:\"on\";s:19:\"tc_home_slider_dots\";s:2:\"on\";s:24:\"tc_slider_default_height\";i:500;s:34:\"tc_slider_default_height_apply_all\";b:1;s:33:\"tc_slider_change_default_img_size\";b:0;s:22:\"tc_show_featured_pages\";i:0;s:26:\"tc_show_featured_pages_img\";b:1;s:28:\"tc_featured_page_button_text\";s:17:\"Read more &raquo;\";s:20:\"tc_featured_page_one\";i:0;s:20:\"tc_featured_page_two\";i:0;s:22:\"tc_featured_page_three\";i:0;s:20:\"tc_featured_text_one\";N;s:20:\"tc_featured_text_two\";N;s:22:\"tc_featured_text_three\";N;s:24:\"tc_sidebar_global_layout\";s:1:\"f\";s:23:\"tc_sidebar_force_layout\";b:0;s:22:\"tc_sidebar_post_layout\";s:1:\"f\";s:22:\"tc_sidebar_page_layout\";s:1:\"f\";s:31:\"tc_single_author_block_location\";s:18:\"below_post_content\";s:38:\"tc_single_related_posts_block_location\";s:18:\"below_post_content\";s:35:\"tc_singular_comments_block_location\";s:18:\"below_post_content\";s:22:\"tc_comment_show_bubble\";b:1;s:16:\"tc_page_comments\";b:0;s:16:\"tc_post_comments\";b:1;s:20:\"tc_show_comment_list\";b:1;s:13:\"tc_breadcrumb\";b:1;s:23:\"tc_show_breadcrumb_home\";b:0;s:27:\"tc_show_breadcrumb_in_pages\";b:1;s:34:\"tc_show_breadcrumb_in_single_posts\";b:1;s:32:\"tc_show_breadcrumb_in_post_lists\";b:1;s:19:\"tc_breadcrumb_yoast\";b:1;s:18:\"tc_show_post_metas\";b:1;s:23:\"tc_show_post_metas_home\";b:0;s:30:\"tc_show_post_metas_single_post\";b:1;s:29:\"tc_show_post_metas_post_lists\";b:1;s:29:\"tc_show_post_metas_categories\";b:1;s:23:\"tc_show_post_metas_tags\";b:1;s:25:\"tc_show_post_metas_author\";b:1;s:35:\"tc_show_post_metas_publication_date\";b:1;s:30:\"tc_show_post_metas_update_date\";b:0;s:27:\"tc_post_list_excerpt_length\";i:50;s:23:\"tc_post_list_show_thumb\";b:1;s:36:\"tc_post_list_use_attachment_as_thumb\";b:1;s:24:\"tc_post_list_thumb_shape\";s:7:\"rounded\";s:27:\"tc_post_list_thumb_position\";s:5:\"right\";s:28:\"tc_post_list_thumb_alternate\";b:1;s:12:\"tc_cat_title\";s:0:\"\";s:12:\"tc_tag_title\";s:0:\"\";s:15:\"tc_author_title\";s:0:\"\";s:15:\"tc_search_title\";s:20:\"Search Results for :\";s:17:\"tc_post_list_grid\";s:4:\"grid\";s:15:\"tc_grid_columns\";s:1:\"3\";s:23:\"tc_grid_expand_featured\";b:1;s:14:\"tc_grid_shadow\";b:1;s:21:\"tc_grid_bottom_border\";b:1;s:17:\"tc_grid_num_words\";i:10;s:30:\"tc_post_list_thumb_placeholder\";b:1;s:29:\"tc_single_post_thumb_location\";s:4:\"hide\";s:28:\"tc_single_post_thumb_natural\";b:0;s:27:\"tc_single_post_thumb_height\";i:250;s:38:\"tc_single_post_thumb_smartphone_height\";i:200;s:16:\"tc_related_posts\";s:10:\"categories\";s:29:\"tc_single_page_thumb_location\";s:4:\"hide\";s:28:\"tc_single_page_thumb_natural\";b:0;s:27:\"tc_single_page_thumb_height\";i:250;s:38:\"tc_single_page_thumb_smartphone_height\";i:200;s:17:\"tc_enable_gallery\";b:1;s:19:\"tc_gallery_fancybox\";b:1;s:16:\"tc_gallery_style\";b:1;s:23:\"tc_show_post_navigation\";b:1;s:28:\"tc_show_post_navigation_page\";b:0;s:30:\"tc_show_post_navigation_single\";b:1;s:31:\"tc_show_post_navigation_archive\";b:1;s:25:\"tc_social_in_left-sidebar\";b:0;s:26:\"tc_social_in_right-sidebar\";b:0;s:14:\"tc_footer_skin\";s:4:\"dark\";s:28:\"tc_footer_horizontal_widgets\";s:4:\"none\";s:19:\"tc_social_in_footer\";b:1;s:16:\"tc_sticky_footer\";b:1;s:19:\"tc_show_back_to_top\";b:1;s:23:\"tc_back_to_top_position\";s:5:\"right\";s:16:\"tc_minified_skin\";b:1;s:17:\"tc_img_smart_load\";b:0;s:24:\"tc_slider_img_smart_load\";b:1;s:21:\"tc_defer_front_script\";b:0;s:21:\"tc_defer_font_awesome\";b:1;s:17:\"tc_preload_gfonts\";b:1;s:21:\"tc_display_front_help\";b:1;s:21:\"tc_font_awesome_icons\";b:1;s:17:\"tc_ms_respond_css\";b:0;s:8:\"tc_style\";s:6:\"modern\";s:46:\"tc_woocommerce_display_product_thumb_before_mw\";b:0;s:3:\"ver\";s:6:\"4.4.19\";}s:18:\"last_update_notice\";a:2:{s:7:\"version\";s:6:\"4.4.19\";s:13:\"display_count\";i:0;}s:10:\"tc_sliders\";a:2:{s:10:\"mainslider\";a:6:{i:6;s:3:\"251\";i:5;s:3:\"241\";i:4;s:3:\"249\";i:1;s:3:\"247\";i:2;s:3:\"246\";i:3;s:3:\"243\";}s:10:\"slidesedes\";a:2:{i:1;s:3:\"147\";i:2;s:3:\"146\";}}s:15:\"tc_front_slider\";s:10:\"mainslider\";s:22:\"tc_show_featured_pages\";s:1:\"1\";s:8:\"tc_fonts\";s:7:\"_g_abel\";s:17:\"tc_retina_support\";b:1;s:19:\"tc_show_author_info\";b:0;s:25:\"tc_header_title_underline\";b:1;s:25:\"tc_header_desktop_tagline\";s:11:\"brand_below\";s:14:\"tc_header_skin\";s:5:\"light\";s:43:\"tc_highlight_contextually_active_menu_items\";b:0;s:23:\"tc_header_topbar_layout\";s:4:\"wide\";s:16:\"tc_header_layout\";s:4:\"left\";}', 'yes'),
(17700, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(17701, 'fresh_site', '0', 'yes'),
(18389, 'wp_mail_smtp_migration_version', '4', 'yes'),
(30412, 'wpp_ver', '5.4.2', 'yes'),
(17681, 'recovery_keys', 'a:0:{}', 'yes'),
(69337, 'um_cache_userdata_2', 'a:100:{s:2:\"ID\";i:2;s:10:\"user_login\";s:14:\"nchavez@system\";s:9:\"user_pass\";s:34:\"$P$BGP.DDWiWaVnUytA9HAfqr4ERNDXaI/\";s:13:\"user_nicename\";s:13:\"nchavezsystem\";s:10:\"user_email\";s:16:\"nchavez@i-cce.cl\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2017-03-24 15:20:02\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:13:\"Nicole Chavez\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:14:\"nchavez@system\";s:10:\"first_name\";s:6:\"Nicole\";s:9:\"last_name\";s:6:\"Chavez\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:20:\"default_password_nag\";s:0:\"\";s:39:\"wpjy_dashboard_quick_press_last_post_id\";s:3:\"186\";s:18:\"wpjy_user-settings\";s:79:\"libraryContent=browse&editor=tinymce&imgsize=full&urlbutton=custom&align=center\";s:23:\"wpjy_user-settings-time\";s:10:\"1607953162\";s:25:\"community-events-location\";s:34:\"a:1:{s:2:\"ip\";s:11:\"181.43.95.0\";}\";s:23:\"wpjy_media_library_mode\";s:4:\"list\";s:23:\"jetpack_tracks_wpcom_id\";s:9:\"198418694\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:16:\"nchavez%40system\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no'),
(17682, 'can_compress_scripts', '0', 'no'),
(18697, 'wpforms_crypto_secret_key', 'jlyo7kPGRtXY1o/I3TxBaqiuJQpWf9zBD7DWEc/8IbE=', 'yes'),
(69218, 'um_role_subscriber_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(69219, 'um_role_author_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(69220, 'um_role_contributor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(71695, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.4-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.4\";s:7:\"version\";s:5:\"5.7.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1639269235;s:15:\"version_checked\";s:5:\"5.6.6\";s:12:\"translations\";a:0:{}}', 'no'),
(18149, 'action_scheduler_hybrid_store_demarkation', '292', 'yes'),
(18150, 'schema-ActionScheduler_StoreSchema', '4.0.1632968855', 'yes'),
(18151, 'schema-ActionScheduler_LoggerSchema', '2.0.1608127487', 'yes'),
(18152, 'wpforms_version', '1.7.1', 'yes'),
(18153, 'wpforms_version_lite', '1.7.1', 'yes'),
(18154, 'wpforms_activated', 'a:2:{s:4:\"lite\";i:1608127487;s:3:\"pro\";i:1636468238;}', 'yes'),
(62774, 'wpforms_license', 'a:5:{s:3:\"key\";s:32:\"5973c7a8a0cdc347f13ac29108d0b430\";s:4:\"type\";s:5:\"basic\";s:10:\"is_expired\";b:0;s:11:\"is_disabled\";b:0;s:10:\"is_invalid\";b:0;}', 'yes'),
(62775, 'wpforms_license_updates', '1639351152', 'yes'),
(17727, 'nimble_version', '3.1.24', 'yes'),
(17728, 'nimble_start_date', '2020-12-15 20:50:00', 'yes'),
(17729, 'nimble_started_with_version', '2.1.29', 'yes'),
(17730, 'nb_backward_fixes', 'a:7:{s:35:\"clean_section_params_transient_0720\";s:4:\"done\";s:23:\"api_data_transient_0720\";s:4:\"done\";s:33:\"clean_section_json_transient_0720\";s:4:\"done\";s:20:\"optimize_opts_0321_2\";s:4:\"done\";s:18:\"optimize_opts_0321\";s:4:\"done\";s:23:\"move_in_post_index_0321\";s:4:\"done\";s:27:\"fix_skope_opt_autoload_0321\";s:4:\"done\";}', 'yes'),
(17731, 'nimble_global_css', '', 'yes'),
(17733, '_transient_timeout_tc_thumbnail_help', '2238789767', 'no'),
(17734, '_transient_tc_thumbnail_help', 'disabled', 'no'),
(56715, 'nimble_posts_index', 'a:0:{}', 'no'),
(19063, 'wpgmza_google_maps_api_key', '', 'yes'),
(19041, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(2137, 'widget_education_zone_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2138, 'widget_education_zone_popular_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17674, 'db_upgraded', '', 'yes'),
(71511, 'action_scheduler_migration_status', 'complete', 'yes'),
(17648, '_transient_bhost_categories', '1', 'yes'),
(17659, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17660, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17661, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17662, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17663, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17709, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(17664, 'wp_page_for_privacy_policy', '0', 'yes'),
(17665, 'show_comments_cookies_opt_in', '1', 'yes'),
(17666, 'admin_email_lifespan', '1648520315', 'yes'),
(17667, 'disallowed_keys', '', 'no'),
(17668, 'comment_previously_approved', '1', 'yes'),
(17669, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(17670, 'auto_update_core_dev', 'enabled', 'yes'),
(17671, 'auto_update_core_minor', 'enabled', 'yes'),
(17672, 'auto_update_core_major', 'unset', 'yes'),
(17773, 'jetpack_available_modules', 'a:1:{s:5:\"9.2.2\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(17774, 'jetpack_tos_agreed', '1', 'yes'),
(17775, 'jetpack_secrets', 'a:1:{s:19:\"jetpack_authorize_4\";a:3:{s:8:\"secret_1\";s:32:\"wDgksXZvF5fEFI6KEpT7BhiBYmmarU4J\";s:8:\"secret_2\";s:32:\"dDPQH0bjxyDaS7CZA0atmxWBmOXvwkrw\";s:3:\"exp\";i:1639093714;}}', 'no'),
(17777, 'jetpack_private_options', 'a:2:{s:10:\"blog_token\";s:65:\"3&OVlCk^j&O3#uQBc@$E3*JF*O0r(q)U.rFDHS^Iolm3Ob8t3m7BH)FwlGQMXzN3z\";s:11:\"user_tokens\";a:1:{i:2;s:67:\"Q4Ws2JXnVfhFhIb&S1BnV3@$UfMq2)Zz.9(C1yHsmb(&9zPXrfkLp^TIVyA&Tu8Aa.2\";}}', 'yes'),
(17776, '_transient_jetpack_assumed_site_creation_date', '2016-12-06 12:33:27', 'yes'),
(17778, 'jetpack_unique_connection', 'a:3:{s:9:\"connected\";i:1;s:12:\"disconnected\";i:0;s:7:\"version\";s:5:\"3.6.1\";}', 'yes'),
(17779, 'jetpack_sync_settings_max_queue_size', '5000', 'yes'),
(17780, 'jetpack_sync_settings_max_queue_lag', '7200', 'yes'),
(17781, 'jetpack_sync_full_status', 'a:4:{s:7:\"started\";i:1608086988;s:8:\"finished\";i:1608087008;s:8:\"progress\";a:5:{s:7:\"options\";a:1:{s:8:\"finished\";b:1;}s:9:\"functions\";a:1:{s:8:\"finished\";b:1;}s:9:\"constants\";a:1:{s:8:\"finished\";b:1;}s:5:\"users\";a:4:{s:5:\"total\";s:1:\"1\";s:4:\"sent\";i:1;s:8:\"finished\";b:1;s:9:\"last_sent\";s:1:\"2\";}s:15:\"network_options\";a:1:{s:8:\"finished\";b:1;}}s:6:\"config\";a:5:{s:7:\"options\";b:1;s:9:\"functions\";b:1;s:9:\"constants\";b:1;s:5:\"users\";a:1:{i:0;i:2;}s:15:\"network_options\";b:1;}}', 'no'),
(17782, 'jetpack_sync_settings_dequeue_max_bytes', '500000', 'yes'),
(17783, 'jetpack_sync_settings_upload_max_bytes', '600000', 'yes'),
(17784, 'jetpack_sync_settings_upload_max_rows', '500', 'yes'),
(17785, 'jetpack_sync_settings_sync_wait_time', '10', 'yes'),
(17786, 'jetpack_sync_settings_sync_wait_threshold', '10', 'yes'),
(17787, 'jetpack_sync_settings_enqueue_wait_time', '1', 'yes'),
(17788, 'jetpack_sync_settings_queue_max_writes_sec', '100', 'yes'),
(17789, 'jetpack_sync_settings_post_types_blacklist', 'a:0:{}', 'yes'),
(17790, 'jetpack_sync_settings_taxonomies_blacklist', 'a:0:{}', 'yes'),
(17791, 'jetpack_sync_settings_render_filtered_content', '0', 'yes'),
(17792, 'jetpack_sync_settings_post_meta_whitelist', 'a:0:{}', 'yes'),
(17793, 'jetpack_sync_settings_comment_meta_whitelist', 'a:0:{}', 'yes'),
(17794, 'jetpack_sync_settings_max_enqueue_full_sync', '100', 'yes'),
(17795, 'jetpack_sync_settings_max_queue_size_full_sync', '1000', 'yes'),
(17796, 'jetpack_sync_settings_sync_via_cron', '1', 'yes'),
(17797, 'jetpack_sync_settings_cron_sync_time_limit', '240', 'yes'),
(17798, 'jetpack_sync_settings_known_importers', 'a:6:{s:16:\"Blogger_Importer\";s:7:\"blogger\";s:13:\"LJ_API_Import\";s:11:\"livejournal\";s:9:\"MT_Import\";s:2:\"mt\";s:10:\"RSS_Import\";s:3:\"rss\";s:20:\"WC_Tax_Rate_Importer\";s:12:\"woo-tax-rate\";s:9:\"WP_Import\";s:9:\"wordpress\";}', 'yes'),
(17799, 'jetpack_sync_settings_term_relationships_full_sync_item_size', '100', 'yes'),
(17800, 'jetpack_sync_settings_sync_sender_enabled', '1', 'yes'),
(17801, 'jetpack_sync_settings_full_sync_sender_enabled', '1', 'yes'),
(17802, 'jetpack_sync_settings_full_sync_send_duration', '9', 'yes'),
(17803, 'jetpack_sync_settings_full_sync_limits', 'a:5:{s:5:\"users\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}s:5:\"terms\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}s:5:\"posts\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:1;}s:8:\"comments\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}s:18:\"term_relationships\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}}', 'yes'),
(17806, 'jetpack_plugin_api_action_links', 'a:4:{s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";a:2:{s:8:\"Opciones\";s:78:\"http://ibc-cce.cl/wp/wp-admin/options-general.php?page=wordpress-popular-posts\";s:7:\"Support\";s:61:\"https://wordpress.org/support/plugin/wordpress-popular-posts/\";}s:19:\"wpforms/wpforms.php\";a:2:{s:4:\"Docs\";s:25:\"https://wpforms.com/docs/\";s:7:\"Support\";s:36:\"https://wpforms.com/account/support/\";}s:31:\"wp-google-maps/wpGoogleMaps.php\";a:3:{s:15:\"Get Pro Version\";s:121:\"https://www.wpgmaps.com/purchase-professional-version/?utm_source=plugin&utm_medium=link&utm_campaign=plugin_link_upgrade\";s:8:\"Settings\";s:73:\"http://ibc-cce.cl/wp/wp-admin/admin.php?page=wp-google-maps-menu-settings\";s:10:\"Map Editor\";s:64:\"http://ibc-cce.cl/wp/wp-admin/admin.php?page=wp-google-maps-menu\";}s:33:\"wps-hide-login/wps-hide-login.php\";a:1:{s:8:\"Settings\";s:62:\"http://ibc-cce.cl/wp/wp-admin/options-general.php#whl_settings\";}}', 'yes'),
(17809, 'jetpack_active_modules', 'a:8:{i:0;s:12:\"contact-form\";i:1;s:21:\"enhanced-distribution\";i:2;s:8:\"json-api\";i:3;s:5:\"notes\";i:4;s:7:\"protect\";i:5;s:5:\"stats\";i:6;s:18:\"verification-tools\";i:7;s:21:\"woocommerce-analytics\";}', 'yes'),
(17818, 'jetpack_protect_key', '9fdad89833a44f1a8c66c363b27fa59a49634009', 'no'),
(62770, 'wpforms_version_upgraded_from', '1.6.3.1', 'yes'),
(18171, 'action_scheduler_lock_async-request-runner', '1639273147', 'yes'),
(18172, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(56777, 'wpforms_builder_opened_date', '0', 'no'),
(17838, 'jetpack_constants_sync_checksum', 'a:20:{s:16:\"EMPTY_TRASH_DAYS\";i:2473281379;s:17:\"WP_POST_REVISIONS\";i:4261170317;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:1751117128;s:14:\"WP_CONTENT_DIR\";i:3496711168;s:9:\"FS_METHOD\";i:634125391;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:634125391;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:3358293662;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:3994858278;s:11:\"PHP_VERSION\";i:1761172046;s:15:\"WP_MEMORY_LIMIT\";i:3065409971;s:19:\"WP_MAX_MEMORY_LIMIT\";i:3898294937;s:8:\"WP_DEBUG\";i:734881840;}', 'yes'),
(17839, 'jetpack_sync_https_history_main_network_site_url', 'a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}', 'yes'),
(17840, 'jetpack_sync_https_history_site_url', 'a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}', 'yes'),
(17841, 'jetpack_sync_https_history_home_url', 'a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}', 'yes'),
(71715, '_transient_timeout_jetpack_is_single_user', '1639300222', 'no'),
(71716, '_transient_jetpack_is_single_user', '2', 'no'),
(17991, 'jetpack_protect_blocked_attempts', '379', 'no'),
(18314, 'wpforms_settings', 'a:20:{s:14:\"recaptcha-type\";s:2:\"v2\";s:18:\"recaptcha-site-key\";s:40:\"6LfdAAkaAAAAAMizjIB5DpPu4u99cr8xF21iGjcU\";s:20:\"recaptcha-secret-key\";s:40:\"6LfdAAkaAAAAALxnTMEZ4xvZd4LqNzowKJQC3k90\";s:18:\"recaptcha-fail-msg\";s:34:\"Verifique que casilla de reCAPTCHA\";s:22:\"recaptcha-v3-threshold\";d:0.40000000000000002220446049250313080847263336181640625;s:20:\"recaptcha-noconflict\";b:0;s:19:\"validation-required\";s:26:\"Este campo es obligatorio.\";s:14:\"validation-url\";s:25:\"Please enter a valid URL.\";s:16:\"validation-email\";s:34:\"Por favor ingrese un email valido.\";s:27:\"validation-email-suggestion\";s:25:\"Quizo decir {suggestion}?\";s:27:\"validation-email-restricted\";s:33:\"Esta dirección no esta permitida\";s:17:\"validation-number\";s:35:\"Por favor ingrese un numero valido.\";s:18:\"validation-confirm\";s:26:\"Field values do not match.\";s:32:\"validation-input-mask-incomplete\";s:27:\"Please fill out all blanks.\";s:22:\"validation-check-limit\";s:56:\"You have exceeded the number of allowed selections: {#}.\";s:11:\"email-async\";b:1;s:14:\"email-template\";s:7:\"default\";s:18:\"email-header-image\";s:0:\"\";s:22:\"email-background-color\";s:7:\"#e9eaec\";s:17:\"email-carbon-copy\";b:0;}', 'yes'),
(18236, 'wpforms_notifications', 'a:4:{s:6:\"update\";i:1639166945;s:4:\"feed\";a:4:{i:0;a:6:{s:5:\"title\";s:42:\"Introducing the NEW Save and Resume Addon!\";s:7:\"content\";s:322:\"<span style=\"font-weight: 400;\">The NEW Save and Resume addon is now available for our Pro customers! Let your visitors save progress and easily resume their entry later. Users can complete the entry themselves or share the link via email. Click below to see all the features + screenshots in our awesome new addon.</span>\";s:4:\"type\";a:6:{i:0;s:6:\"agency\";i:1;s:5:\"basic\";i:2;s:5:\"elite\";i:3;s:4:\"plus\";i:4;s:3:\"pro\";i:5;s:8:\"ultimate\";}s:2:\"id\";i:115;s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:188:\"https://wpforms.com/introducing-the-new-save-and-resume-addon-for-wpforms?utm_source=WordPress&utm_campaign=plugin&utm_medium=Plugin Notification&utm_content=Save and Resume Pro Learn More\";s:4:\"text\";s:10:\"Learn More\";}s:3:\"alt\";a:2:{s:3:\"url\";s:203:\"https://wpforms.com/docs/how-to-install-and-use-the-save-and-resume-addon-with-wpforms/?utm_source=WordPress&utm_campaign=plugin&utm_medium=Plugin Notification&utm_content=Save and Resume Pro Get Started\";s:4:\"text\";s:11:\"Get Started\";}}s:5:\"start\";s:19:\"2021-10-28 10:00:00\";}i:1;a:6:{s:5:\"title\";s:52:\"NEW! Rich Text Field + Uncanny Automator Integration\";s:7:\"content\";s:366:\"Update to WPForms 1.7.0 today to activate the NEW Rich Text field! Get fully formatted entries with bold, headings, images, links, and more. Rich text is perfect for blog post submissions and you can let visitors preview their layout before submitting. PLUS: our new Uncanny Automator integration makes it easy to use your forms to trigger your own custom workflows.\";s:4:\"type\";a:6:{i:0;s:6:\"agency\";i:1;s:5:\"basic\";i:2;s:5:\"elite\";i:3;s:4:\"plus\";i:4;s:3:\"pro\";i:5;s:8:\"ultimate\";}s:2:\"id\";i:109;s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:183:\"https://wpforms.com/introducing-wpforms-1-7-0-rich-text-uncanny-automator/?utm_source=WordPress&utm_campaign=plugin&utm_medium=Plugin Notification&utm_content=Rich Text Pro Learn More\";s:4:\"text\";s:10:\"Learn More\";}s:3:\"alt\";a:2:{s:3:\"url\";s:177:\"https://wpforms.com/docs/how-to-use-the-rich-text-field-in-wpforms/?utm_source=WordPress&utm_campaign=plugin&utm_medium=Plugin Notification&utm_content=Rich Text Pro Get Started\";s:4:\"text\";s:11:\"Get Started\";}}s:5:\"start\";s:19:\"2021-10-11 00:00:00\";}i:2;a:6:{s:5:\"title\";s:123:\"Now available in WPForms Pro! Accept payments with Square and start making more money through your website’s forms today.\";s:7:\"content\";s:316:\"It’s now easier than ever to take payments through your forms. With our new Square addon, WPForms Pro users can accept orders online using one of the world’s most popular payment service providers. Easily process credit card transactions through your Square account right on your website, with just a few clicks.\";s:4:\"type\";a:6:{i:0;s:6:\"agency\";i:1;s:5:\"basic\";i:2;s:5:\"elite\";i:3;s:4:\"plus\";i:4;s:3:\"pro\";i:5;s:8:\"ultimate\";}s:2:\"id\";i:97;s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:171:\"https://wpforms.com/introducing-the-new-square-addon-for-wpforms/?utm_source=WordPress&utm_campaign=plugin&utm_medium=Plugin Notification&utm_content=Square Pro Learn More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2021-09-14 00:00:00\";}i:3;a:6:{s:5:\"title\";s:99:\"New Features: Entry Preview Field for Multi-Step Forms + Improved Entry Search & Keyboard Shortcuts\";s:7:\"content\";s:405:\"Our most requested feature, Entry Preview field, is finally here. This is super helpful for multi-step forms and mission-critical forms where you want to avoid typos and inaccurate details. It lets users preview all form information before they click the submit button. Plus, we also improved our Entry Management by adding better search filters, and we added keyboard shortcuts to speed up your workflow.\";s:4:\"type\";a:6:{i:0;s:6:\"agency\";i:1;s:5:\"basic\";i:2;s:5:\"elite\";i:3;s:4:\"plus\";i:4;s:3:\"pro\";i:5;s:8:\"ultimate\";}s:2:\"id\";i:90;s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:209:\"https://wpforms.com/announcing-the-new-entry-preview-field-added-entry-editing-features-wpforms-1-6-9/?utm_source=WordPress&utm_campaign=plugin&utm_medium=Plugin Notification&utm_content=WPForms 169 Learn More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2021-08-26 00:00:00\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(18244, 'wpforms_challenge', 'a:13:{s:6:\"status\";s:7:\"skipped\";s:4:\"step\";i:0;s:7:\"user_id\";i:2;s:7:\"form_id\";i:0;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:19:\"2020-12-16 14:27:09\";s:17:\"finished_date_gmt\";s:19:\"2020-12-16 14:27:09\";s:13:\"seconds_spent\";i:0;s:12:\"seconds_left\";i:300;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:0:\"\";}', 'yes'),
(30411, 'wpp_settings_config', 'a:2:{s:5:\"stats\";a:7:{s:5:\"range\";s:9:\"last7days\";s:9:\"time_unit\";s:4:\"hour\";s:13:\"time_quantity\";s:2:\"24\";s:8:\"order_by\";s:5:\"views\";s:5:\"limit\";i:10;s:9:\"post_type\";s:9:\"post,page\";s:9:\"freshness\";b:0;}s:5:\"tools\";a:7:{s:4:\"ajax\";b:0;s:3:\"css\";b:1;s:4:\"link\";a:1:{s:6:\"target\";s:5:\"_self\";}s:9:\"thumbnail\";a:5:{s:6:\"source\";s:8:\"featured\";s:5:\"field\";s:0:\"\";s:6:\"resize\";b:0;s:7:\"default\";s:0:\"\";s:8:\"lazyload\";b:1;}s:3:\"log\";a:3:{s:5:\"level\";i:1;s:5:\"limit\";i:0;s:13:\"expires_after\";i:180;}s:5:\"cache\";a:2:{s:6:\"active\";b:1;s:8:\"interval\";a:2:{s:4:\"time\";s:6:\"minute\";s:5:\"value\";i:1;}}s:8:\"sampling\";a:2:{s:6:\"active\";b:0;s:4:\"rate\";i:100;}}}', 'yes'),
(17952, 'stats_cache', 'a:2:{s:32:\"0c08364d8cbc9a593f54bafa9c0dee57\";a:1:{i:1639133198;a:0:{}}s:32:\"4ad0f3ef1f148ac5c8730a659a8244a0\";a:1:{i:1639133199;a:0:{}}}', 'yes'),
(17953, 'jetpack_updates_sync_checksum', 'a:3:{s:14:\"update_plugins\";i:536966168;s:13:\"update_themes\";i:231005683;s:11:\"update_core\";i:100150264;}', 'yes'),
(56991, 'wpforms_email_summaries_fetch_info_blocks_last_run', '1639268512', 'yes'),
(71488, '_transient_timeout_as-post-store-dependencies-met', '1639272566', 'no'),
(71489, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(28844, '_transient_timeout_tc_img_smartload_help', '2241360806', 'no'),
(28845, '_transient_tc_img_smartload_help', 'disabled', 'no'),
(69135, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1639126138', 'no'),
(69140, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1639126140', 'no'),
(67249, 'recovery_mode_email_last_sent', '1639074574', 'yes'),
(69216, 'um_core_directories', 'a:1:{s:7:\"members\";i:376;}', 'yes'),
(69217, 'um_options', 'a:172:{s:30:\"restricted_access_post_metabox\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:31:\"disable_restriction_pre_queries\";i:0;s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:10:\"user_login\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";b:1;s:12:\"members_page\";b:1;s:13:\"use_gravatars\";b:1;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";b:1;s:24:\"reset_require_strongpass\";b:0;s:18:\"password_min_chars\";i:8;s:18:\"password_max_chars\";i:30;s:20:\"account_tab_password\";i:1;s:19:\"account_tab_privacy\";i:1;s:25:\"account_tab_notifications\";i:1;s:18:\"account_tab_delete\";i:1;s:19:\"delete_account_text\";s:151:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below.\";s:36:\"delete_account_no_pass_required_text\";s:152:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account, click on the button below.\";s:12:\"account_name\";i:1;s:20:\"account_name_disable\";i:0;s:20:\"account_name_require\";i:1;s:13:\"account_email\";i:1;s:24:\"account_general_password\";i:0;s:25:\"account_hide_in_directory\";i:1;s:33:\"account_hide_in_directory_default\";s:2:\"No\";s:26:\"account_require_strongpass\";i:0;s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";i:1;s:24:\"category_page_accessible\";i:1;s:29:\"restricted_post_title_replace\";i:1;s:28:\"restricted_access_post_title\";s:18:\"Restricted content\";s:25:\"restricted_access_message\";s:0:\"\";s:17:\"restricted_blocks\";i:0;s:13:\"enable_blocks\";i:0;s:24:\"restricted_block_message\";s:0:\"\";s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:14:\"default_avatar\";s:0:\"\";s:13:\"default_cover\";s:0:\"\";s:28:\"disable_profile_photo_upload\";i:0;s:21:\"profile_show_metaicon\";i:0;s:12:\"profile_menu\";i:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";i:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:19:\"secretaria@i-cce.cl\";s:9:\"mail_from\";s:29:\"Instituto Bíblico del Centro\";s:14:\"mail_from_addr\";s:19:\"secretaria@i-cce.cl\";s:10:\"email_html\";i:1;s:25:\"image_orientation_by_exif\";i:0;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:28:\"um_profile_object_cache_stop\";i:0;s:16:\"rest_api_version\";s:3:\"2.0\";s:26:\"member_directory_own_table\";i:0;s:21:\"profile_show_html_bio\";i:0;s:15:\"profile_noindex\";b:0;s:27:\"activation_link_expiry_time\";i:0;s:16:\"profile_tab_main\";i:1;s:24:\"profile_tab_main_privacy\";i:0;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";i:1;s:25:\"profile_tab_posts_privacy\";i:0;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";i:1;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";b:1;s:17:\"welcome_email_sub\";s:23:\"Welcome to {site_name}!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";b:0;s:19:\"checkmail_email_sub\";s:28:\"Please activate your account\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";b:0;s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";b:0;s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";i:377;s:10:\"core_login\";i:378;s:13:\"core_register\";i:379;s:12:\"core_members\";i:380;s:11:\"core_logout\";i:381;s:12:\"core_account\";i:382;s:19:\"core_password-reset\";i:383;s:17:\"profile_show_name\";i:1;s:25:\"profile_show_social_links\";i:0;s:16:\"profile_show_bio\";i:1;s:20:\"profile_bio_maxchars\";i:180;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";i:1;s:22:\"profile_empty_text_emo\";i:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:28:\"profile_disable_photo_upload\";i:0;s:17:\"profile_photosize\";s:3:\"190\";s:21:\"profile_cover_enabled\";i:1;s:17:\"profile_coversize\";s:8:\"original\";s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:14:\"Update Profile\";s:21:\"profile_secondary_btn\";s:1:\"1\";s:26:\"profile_secondary_btn_word\";s:6:\"Cancel\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:8:\"Register\";s:22:\"register_secondary_btn\";i:1;s:27:\"register_secondary_btn_word\";s:5:\"Login\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:6:\"center\";s:11:\"login_icons\";s:5:\"label\";s:22:\"login_primary_btn_word\";s:5:\"Login\";s:22:\"login_forgot_pass_link\";i:1;s:21:\"login_show_rememberme\";i:1;s:19:\"login_secondary_btn\";i:1;s:24:\"login_secondary_btn_word\";s:8:\"Register\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:21:\"{total_users} Members\";s:23:\"directory_header_single\";s:20:\"{total_users} Member\";}', 'yes'),
(71726, '_transient_timeout_jetpack_sync_last_checked_queue_state_sync', '1639264950', 'no'),
(71727, '_transient_jetpack_sync_last_checked_queue_state_sync', 'a:2:{i:0;i:0;i:1;i:0;}', 'no'),
(17963, 'verification_services_codes', '0', 'yes'),
(18372, 'wp_mail_smtp_initial_version', '2.5.1', 'no'),
(18373, 'wp_mail_smtp_version', '2.5.1', 'no'),
(18374, 'wp_mail_smtp', 'a:12:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:17:\"webclass@i-cce.cl\";s:9:\"from_name\";s:29:\"Instituto Bíblico del Centro\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:0;s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:13:\"64.233.186.27\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";s:2:\"25\";s:4:\"user\";s:17:\"webclass@i-cce.cl\";s:4:\"pass\";s:9:\"6545.iCCE\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:6:{s:9:\"client_id\";s:72:\"561565329349-cm2ho29f8pq32dgakfdbp19bv69k9v3s.apps.googleusercontent.com\";s:13:\"client_secret\";s:24:\"-Uiqbq4iJxnQ5oc8x2-kVp9M\";s:20:\"is_setup_wizard_auth\";b:0;s:12:\"access_token\";a:6:{s:12:\"access_token\";s:166:\"ya29.a0ARrdaM-U23dwr7hVSNPuyAmj7Pq_Pa-iRf7WqDxKxK3o01zLesqgPvHVvE7ttr5fHp_ucdAIRolx2P92F-l7-Vp7TKywzpevPklOyXK3CGE2BRV-L5xSLIPLponuEO2HZO5IsF2fPPZCqkKk1mTQA7tsrucsuvQ\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:24:\"https://mail.google.com/\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1639167875;s:13:\"refresh_token\";s:103:\"1//0hkiJk9lZeKmbCgYIARAAGBESNwF-L9IrszP1OIQ20Ey00PQo3aYnmBQXRvL8cUvkIsMuMRVOaawkHCxAeNEOF1TKNPwYrXnxemE\";}s:13:\"refresh_token\";s:103:\"1//0hkiJk9lZeKmbCgYIARAAGBESNwF-L9IrszP1OIQ20Ey00PQo3aYnmBQXRvL8cUvkIsMuMRVOaawkHCxAeNEOF1TKNPwYrXnxemE\";s:9:\"auth_code\";s:73:\"4/0AX4XfWg2CtV1g88eWPzYpfMfhPUm_wOq4_X_kijfp5N-99XP21eIyajLX6CGl1E2LEZviw\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"amazonses\";a:3:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"region\";s:9:\"us-east-1\";}s:7:\"outlook\";a:5:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"zoho\";a:6:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"domain\";s:3:\"com\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"logs\";a:1:{s:7:\"enabled\";b:0;}}', 'no'),
(18375, 'wp_mail_smtp_activated_time', '1608135480', 'no'),
(18376, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1608135480;}', 'yes'),
(18609, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"7\",\"critical\":\"2\"}', 'yes');
INSERT INTO `wpjy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(18430, 'wp_mail_smtp_mail_key', 'vFkxiXXxqErlJmYQVQr/7nowyZpCgo4ujKLqo4h8mq8=', 'yes'),
(18401, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(56793, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(19032, 'wpgmza_db_version', '8.1.16', 'yes'),
(19033, 'wpgmza_global_settings', '{\"wpgmza_google_maps_api_key\":\"\",\"engine\":\"open-layers\",\"google_maps_api_key\":false,\"default_marker_icon\":\"http:\\/\\/ibc-cce.cl\\/wp\\/wp-content\\/plugins\\/wp-google-maps\\/images\\/spotlight-poi2.png\",\"user_interface_style\":\"default\",\"wpgmza_gdpr_default_notice\":\"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"Instituto B\\u00edblico del Centro\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_settings_marker_pull\":\"0\",\"wpgmza_gdpr_notice_override_text\":\"\",\"wpgmza_settings_map_full_screen_control\":\"yes\",\"use_fontawesome\":\"4.*\",\"wpgmza_maps_engine\":\"open-layers\",\"wpgmza_settings_map_open_marker_by\":\"1\",\"wpgmza_custom_css\":\"\",\"wpgmza_custom_js\":\"\",\"wpgmza_settings_access_level\":\"manage_options\",\"wpgmza_store_locator_radii\":\"1,5,10,25,50,75,100,150,200,300\",\"wpgmza_maps_engine_dialog_done\":true,\"wpgmza_marker_xml_location\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/uploads\\/wp-google-maps\\/\",\"wpgmza_marker_xml_url\":\"http:\\/\\/ibc-cce.cl\\/wp\\/wp-content\\/uploads\\/wp-google-maps\\/\"}', 'yes'),
(19034, 'WPGMZA_OTHER_SETTINGS', 'a:21:{s:26:\"wpgmza_google_maps_api_key\";s:0:\"\";s:6:\"engine\";s:11:\"open-layers\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:80:\"http://ibc-cce.cl/wp/wp-content/plugins/wp-google-maps/images/spotlight-poi2.png\";s:20:\"user_interface_style\";s:7:\"default\";s:26:\"wpgmza_gdpr_default_notice\";s:1972:\"<p>\r\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:29:\"Instituto Bíblico del Centro\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:32:\"wpgmza_gdpr_notice_override_text\";s:0:\"\";s:39:\"wpgmza_settings_map_full_screen_control\";s:3:\"yes\";s:15:\"use_fontawesome\";s:3:\"4.*\";s:18:\"wpgmza_maps_engine\";s:11:\"open-layers\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:26:\"wpgmza_store_locator_radii\";s:31:\"1,5,10,25,50,75,100,150,200,300\";s:30:\"wpgmza_maps_engine_dialog_done\";b:1;s:26:\"wpgmza_marker_xml_location\";s:64:\"/home/ibcccecl/public_html/wp/wp-content/uploads/wp-google-maps/\";s:21:\"wpgmza_marker_xml_url\";s:55:\"http://ibc-cce.cl/wp/wp-content/uploads/wp-google-maps/\";}', 'yes'),
(19035, 'wpgmza_temp_api', 'AIzaSyDo_fG7DXBOVvdhlrLa-PHREuFDpTklWhY', 'yes'),
(19036, 'wpgmza_xml_location', '/home/ibcccecl/public_html/wp/wp-content/uploads/wp-google-maps/', 'yes'),
(19037, 'wpgmza_xml_url', 'http://ibc-cce.cl/wp/wp-content/uploads/wp-google-maps/', 'yes'),
(19038, 'wpgmaps_current_version', '8.0.29', 'yes'),
(18391, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1632969037;s:9:\"dismissed\";b:1;}', 'yes'),
(18392, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1639166945;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(17918, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:12:\"Compártelo:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}', 'yes'),
(69338, 'um_cache_userdata_1', 'a:98:{s:2:\"ID\";i:1;s:10:\"user_login\";s:15:\"epizarro@system\";s:9:\"user_pass\";s:34:\"$P$B/hXdzV0mfuvyLXUMGsuuU.gFd07TI/\";s:13:\"user_nicename\";s:15:\"epizarro@system\";s:10:\"user_email\";s:14:\"admin@i-cce.cl\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2016-12-06 12:33:27\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:15:\"epizarro@system\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:15:\"epizarro@system\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:18:\"show_welcome_panel\";s:1:\"1\";s:39:\"wpjy_dashboard_quick_press_last_post_id\";s:3:\"180\";s:18:\"wpjy_user-settings\";s:63:\"libraryContent=browse&post_dfw=off&editor=html&hidetb=1&mfold=o\";s:23:\"wpjy_user-settings-time\";s:10:\"1554424311\";s:20:\"default_password_nag\";s:0:\"\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:17:\"epizarro%40system\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no'),
(17920, 'post_by_email_address2', 'NULL', 'yes'),
(17921, 'monitor_receive_notifications', '1', 'yes'),
(19050, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(19051, 'WPGMZA_FIRST_TIME', '8.0.29', 'yes'),
(17898, 'jp_sync_lock_full_sync', '1639273103.1517', 'yes'),
(17891, 'trusted_ip_header', 'O:8:\"stdClass\":3:{s:14:\"trusted_header\";s:11:\"REMOTE_ADDR\";s:8:\"segments\";i:1;s:7:\"reverse\";b:0;}', 'no'),
(17892, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";i:186926171;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(69764, 'jetpack_site_products', 'a:0:{}', 'yes'),
(17894, 'jetpack_next_sync_time_sync', '1639264769', 'yes'),
(17881, 'jetpack_callables_sync_checksum', 'a:35:{s:18:\"wp_max_upload_size\";i:1819132959;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:2452230946;s:26:\"main_network_site_wpcom_id\";i:2340171208;s:8:\"site_url\";i:2452230946;s:8:\"home_url\";i:2452230946;s:16:\"single_user_site\";i:734881840;s:7:\"updates\";i:181203724;s:28:\"has_file_system_write_access\";i:4261170317;s:21:\"is_version_controlled\";i:734881840;s:10:\"taxonomies\";i:1238195053;s:10:\"post_types\";i:4006785228;s:18:\"post_type_features\";i:1697172851;s:10:\"shortcodes\";i:3229372439;s:27:\"rest_api_allowed_post_types\";i:2544842423;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:10:\"wp_version\";i:1424485558;s:11:\"get_plugins\";i:1607022939;s:24:\"get_plugins_action_links\";i:3506070009;s:14:\"active_modules\";i:4083673817;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:1260101309;s:13:\"site_icon_url\";i:322950589;s:5:\"roles\";i:1426873501;s:8:\"timezone\";i:2212534263;s:24:\"available_jetpack_blocks\";i:4202660282;s:13:\"paused_themes\";i:223132457;s:14:\"paused_plugins\";i:223132457;s:13:\"theme_support\";i:2161753460;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:4261170317;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;}', 'no'),
(17882, 'jpsq_sync_checkout', '0:0', 'no'),
(17897, 'jetpack_active_plan', 'a:10:{s:10:\"product_id\";i:2002;s:12:\"product_slug\";s:12:\"jetpack_free\";s:12:\"product_name\";s:12:\"Jetpack Free\";s:18:\"product_name_short\";s:4:\"Free\";s:7:\"expired\";b:0;s:14:\"billing_period\";s:0:\"\";s:13:\"user_is_owner\";b:0;s:7:\"is_free\";b:1;s:11:\"license_key\";s:0:\"\";s:8:\"features\";a:2:{s:6:\"active\";a:7:{i:0;s:17:\"security-settings\";i:1;s:12:\"advanced-seo\";i:2;s:18:\"upload-video-files\";i:3;s:7:\"akismet\";i:4;s:14:\"send-a-message\";i:5;s:15:\"whatsapp-button\";i:6;s:15:\"social-previews\";}s:9:\"available\";a:27:{s:16:\"google-analytics\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:17:\"security-settings\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:12:\"advanced-seo\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:18:\"upload-video-files\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:13:\"video-hosting\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:15:\"wordads-jetpack\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:7:\"akismet\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:18:\"vaultpress-backups\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:25:\"vaultpress-backup-archive\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:24:\"vaultpress-storage-space\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:29:\"vaultpress-automated-restores\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:15:\"simple-payments\";a:10:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";}s:8:\"calendly\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:9:\"opentable\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:14:\"send-a-message\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:15:\"whatsapp-button\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:15:\"social-previews\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:9:\"donations\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:10:\"core/video\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:10:\"core/cover\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:10:\"core/audio\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:11:\"republicize\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:25:\"premium-content/container\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:7:\"support\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:14:\"premium-themes\";a:2:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";}s:28:\"vaultpress-security-scanning\";a:2:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";}s:9:\"polldaddy\";a:2:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";}}}}', 'yes'),
(17884, 'jetpack_testimonial', '0', 'yes'),
(17895, 'jetpack_next_sync_time_full-sync-enqueue', '1639273091', 'yes'),
(30422, 'widget_wpp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(30424, 'wpp_performance_nag', 'a:2:{s:6:\"status\";i:0;s:12:\"last_checked\";N;}', 'yes'),
(30428, 'wpp_rand', '3803f032610260cda07504400084be5d', 'yes'),
(38270, 'wpp_transients', 'a:1:{i:0;s:36:\"wpp_bd08ade85c00e65064ed6754503c7a30\";}', 'yes'),
(25670, 'new_admin_email', 'secretaria@i-cce.cl', 'yes'),
(25705, 'feedback_unread_count', '0', 'yes'),
(69122, '_site_transient_timeout_browser_a2fdad25d911a8a4b39828759d282361', '1639687699', 'no'),
(69123, '_site_transient_browser_a2fdad25d911a8a4b39828759d282361', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.93\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(69124, '_site_transient_timeout_php_check_8706d9e16ec2aa6542c624d1e3c9facd', '1639687700', 'no'),
(69125, '_site_transient_php_check_8706d9e16ec2aa6542c624d1e3c9facd', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(65129, 'wpforms_send_usage_last_run', '1639162566', 'yes'),
(66896, '_site_transient_timeout_browser_b4088f046bf9a570f2964ffc86d258ff', '1639447774', 'no'),
(66353, '_transient_timeout_jetpack_file_data_9.2.2', '1641592113', 'no');
INSERT INTO `wpjy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(66354, '_transient_jetpack_file_data_9.2.2', 'a:52:{s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:37:\"business, premium, security, complete\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:50:\"WordPress.com Toolbar and Dashboard customizations\";s:11:\"description\";s:201:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com. Also adds additional customizations to the WPAdmin dashboard experience for better compatibility with WP.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:33:\"adminbar, masterbar, colorschemes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:117:\"Jetpack’s downtime monitoring will continuously watch your site and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:102:\"Help visitors quickly find answers with highly relevant instant search results and powerful filtering.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:18:\"business, complete\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:37:\"business, premium, security, complete\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:47:\"Generates shorter links using the wp.me domain.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:51:\"sso, single sign on, login, log in, 2fa, two-factor\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:47:\"personal, business, premium, security, complete\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:37:\"business, premium, security, complete\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"21b59e7bb3fe0784e7525ad11ad8a8f6\";a:14:{s:4:\"name\";s:21:\"WooCommerce Analytics\";s:11:\"description\";s:53:\"Enhanced analytics for WooCommerce and Jetpack users.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"8.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Other, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:69:\"woocommerce, analytics, stats, statistics, tracking, analytics, views\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:37:\"premium, business, security, complete\";}s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(43712, 'wpcom_publish_posts_with_markdown', '1', 'yes'),
(69336, 'um_cache_userdata_3', 'a:104:{s:2:\"ID\";i:3;s:10:\"user_login\";s:14:\"jmiller@system\";s:9:\"user_pass\";s:34:\"$P$Bti7gpXjKETMtuyeOH0XtaGhA.XyJA/\";s:13:\"user_nicename\";s:13:\"jmillersystem\";s:10:\"user_email\";s:23:\"jota_miller@hotmail.com\";s:8:\"user_url\";s:21:\"http://jmiller@system\";s:15:\"user_registered\";s:19:\"2020-12-16 13:32:12\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:15:\"Jonathan Miller\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:14:\"jmiller@system\";s:10:\"first_name\";s:8:\"Jonathan\";s:9:\"last_name\";s:6:\"Miller\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:5:\"es_CL\";s:18:\"wpjy_user-settings\";s:21:\"libraryContent=browse\";s:23:\"wpjy_user-settings-time\";s:10:\"1611089324\";s:22:\"jetpack_tracks_anon_id\";s:32:\"jetpack:+CbBlWIYGyDA05oZQmHC6IlB\";s:39:\"wpjy_dashboard_quick_press_last_post_id\";s:3:\"371\";s:25:\"community-events-location\";s:36:\"a:1:{s:2:\"ip\";s:13:\"200.111.224.0\";}\";s:39:\"wpforms_entries_default_screen_timespan\";s:2:\"30\";s:3:\"rut\";s:9:\"136791486\";s:7:\"ingreso\";s:4:\"2021\";s:8:\"vigencia\";s:1:\"2\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:16:\"jmiller%40system\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no');
INSERT INTO `wpjy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(69327, 'um_cache_fonticons', 'a:1283:{i:0;s:13:\"um-icon-alert\";i:1;s:21:\"um-icon-alert-circled\";i:2;s:19:\"um-icon-android-add\";i:3;s:26:\"um-icon-android-add-circle\";i:4;s:27:\"um-icon-android-alarm-clock\";i:5;s:21:\"um-icon-android-alert\";i:6;s:20:\"um-icon-android-apps\";i:7;s:23:\"um-icon-android-archive\";i:8;s:26:\"um-icon-android-arrow-back\";i:9;s:26:\"um-icon-android-arrow-down\";i:10;s:30:\"um-icon-android-arrow-dropdown\";i:11;s:37:\"um-icon-android-arrow-dropdown-circle\";i:12;s:30:\"um-icon-android-arrow-dropleft\";i:13;s:37:\"um-icon-android-arrow-dropleft-circle\";i:14;s:31:\"um-icon-android-arrow-dropright\";i:15;s:38:\"um-icon-android-arrow-dropright-circle\";i:16;s:28:\"um-icon-android-arrow-dropup\";i:17;s:35:\"um-icon-android-arrow-dropup-circle\";i:18;s:29:\"um-icon-android-arrow-forward\";i:19;s:24:\"um-icon-android-arrow-up\";i:20;s:22:\"um-icon-android-attach\";i:21;s:19:\"um-icon-android-bar\";i:22;s:23:\"um-icon-android-bicycle\";i:23;s:20:\"um-icon-android-boat\";i:24;s:24:\"um-icon-android-bookmark\";i:25;s:20:\"um-icon-android-bulb\";i:26;s:19:\"um-icon-android-bus\";i:27;s:24:\"um-icon-android-calendar\";i:28;s:20:\"um-icon-android-call\";i:29;s:22:\"um-icon-android-camera\";i:30;s:22:\"um-icon-android-cancel\";i:31;s:19:\"um-icon-android-car\";i:32;s:20:\"um-icon-android-cart\";i:33;s:20:\"um-icon-android-chat\";i:34;s:24:\"um-icon-android-checkbox\";i:35;s:30:\"um-icon-android-checkbox-blank\";i:36;s:32:\"um-icon-android-checkbox-outline\";i:37;s:38:\"um-icon-android-checkbox-outline-blank\";i:38;s:32:\"um-icon-android-checkmark-circle\";i:39;s:25:\"um-icon-android-clipboard\";i:40;s:21:\"um-icon-android-close\";i:41;s:21:\"um-icon-android-cloud\";i:42;s:28:\"um-icon-android-cloud-circle\";i:43;s:26:\"um-icon-android-cloud-done\";i:44;s:29:\"um-icon-android-cloud-outline\";i:45;s:29:\"um-icon-android-color-palette\";i:46;s:23:\"um-icon-android-compass\";i:47;s:23:\"um-icon-android-contact\";i:48;s:24:\"um-icon-android-contacts\";i:49;s:24:\"um-icon-android-contract\";i:50;s:22:\"um-icon-android-create\";i:51;s:22:\"um-icon-android-delete\";i:52;s:23:\"um-icon-android-desktop\";i:53;s:24:\"um-icon-android-document\";i:54;s:20:\"um-icon-android-done\";i:55;s:24:\"um-icon-android-done-all\";i:56;s:24:\"um-icon-android-download\";i:57;s:22:\"um-icon-android-drafts\";i:58;s:20:\"um-icon-android-exit\";i:59;s:22:\"um-icon-android-expand\";i:60;s:24:\"um-icon-android-favorite\";i:61;s:32:\"um-icon-android-favorite-outline\";i:62;s:20:\"um-icon-android-film\";i:63;s:22:\"um-icon-android-folder\";i:64;s:27:\"um-icon-android-folder-open\";i:65;s:22:\"um-icon-android-funnel\";i:66;s:21:\"um-icon-android-globe\";i:67;s:20:\"um-icon-android-hand\";i:68;s:23:\"um-icon-android-hangout\";i:69;s:21:\"um-icon-android-happy\";i:70;s:20:\"um-icon-android-home\";i:71;s:21:\"um-icon-android-image\";i:72;s:22:\"um-icon-android-laptop\";i:73;s:20:\"um-icon-android-list\";i:74;s:22:\"um-icon-android-locate\";i:75;s:20:\"um-icon-android-lock\";i:76;s:20:\"um-icon-android-mail\";i:77;s:19:\"um-icon-android-map\";i:78;s:20:\"um-icon-android-menu\";i:79;s:26:\"um-icon-android-microphone\";i:80;s:30:\"um-icon-android-microphone-off\";i:81;s:31:\"um-icon-android-more-horizontal\";i:82;s:29:\"um-icon-android-more-vertical\";i:83;s:24:\"um-icon-android-navigate\";i:84;s:29:\"um-icon-android-notifications\";i:85;s:34:\"um-icon-android-notifications-none\";i:86;s:33:\"um-icon-android-notifications-off\";i:87;s:20:\"um-icon-android-open\";i:88;s:23:\"um-icon-android-options\";i:89;s:22:\"um-icon-android-people\";i:90;s:22:\"um-icon-android-person\";i:91;s:26:\"um-icon-android-person-add\";i:92;s:31:\"um-icon-android-phone-landscape\";i:93;s:30:\"um-icon-android-phone-portrait\";i:94;s:19:\"um-icon-android-pin\";i:95;s:21:\"um-icon-android-plane\";i:96;s:25:\"um-icon-android-playstore\";i:97;s:21:\"um-icon-android-print\";i:98;s:32:\"um-icon-android-radio-button-off\";i:99;s:31:\"um-icon-android-radio-button-on\";i:100;s:23:\"um-icon-android-refresh\";i:101;s:22:\"um-icon-android-remove\";i:102;s:29:\"um-icon-android-remove-circle\";i:103;s:26:\"um-icon-android-restaurant\";i:104;s:19:\"um-icon-android-sad\";i:105;s:22:\"um-icon-android-search\";i:106;s:20:\"um-icon-android-send\";i:107;s:24:\"um-icon-android-settings\";i:108;s:21:\"um-icon-android-share\";i:109;s:25:\"um-icon-android-share-alt\";i:110;s:20:\"um-icon-android-star\";i:111;s:25:\"um-icon-android-star-half\";i:112;s:28:\"um-icon-android-star-outline\";i:113;s:25:\"um-icon-android-stopwatch\";i:114;s:22:\"um-icon-android-subway\";i:115;s:21:\"um-icon-android-sunny\";i:116;s:20:\"um-icon-android-sync\";i:117;s:23:\"um-icon-android-textsms\";i:118;s:20:\"um-icon-android-time\";i:119;s:21:\"um-icon-android-train\";i:120;s:22:\"um-icon-android-unlock\";i:121;s:22:\"um-icon-android-upload\";i:122;s:27:\"um-icon-android-volume-down\";i:123;s:27:\"um-icon-android-volume-mute\";i:124;s:26:\"um-icon-android-volume-off\";i:125;s:25:\"um-icon-android-volume-up\";i:126;s:20:\"um-icon-android-walk\";i:127;s:23:\"um-icon-android-warning\";i:128;s:21:\"um-icon-android-watch\";i:129;s:20:\"um-icon-android-wifi\";i:130;s:16:\"um-icon-aperture\";i:131;s:15:\"um-icon-archive\";i:132;s:20:\"um-icon-arrow-down-a\";i:133;s:20:\"um-icon-arrow-down-b\";i:134;s:20:\"um-icon-arrow-down-c\";i:135;s:20:\"um-icon-arrow-expand\";i:136;s:29:\"um-icon-arrow-graph-down-left\";i:137;s:30:\"um-icon-arrow-graph-down-right\";i:138;s:27:\"um-icon-arrow-graph-up-left\";i:139;s:28:\"um-icon-arrow-graph-up-right\";i:140;s:20:\"um-icon-arrow-left-a\";i:141;s:20:\"um-icon-arrow-left-b\";i:142;s:20:\"um-icon-arrow-left-c\";i:143;s:18:\"um-icon-arrow-move\";i:144;s:20:\"um-icon-arrow-resize\";i:145;s:25:\"um-icon-arrow-return-left\";i:146;s:26:\"um-icon-arrow-return-right\";i:147;s:21:\"um-icon-arrow-right-a\";i:148;s:21:\"um-icon-arrow-right-b\";i:149;s:21:\"um-icon-arrow-right-c\";i:150;s:20:\"um-icon-arrow-shrink\";i:151;s:18:\"um-icon-arrow-swap\";i:152;s:18:\"um-icon-arrow-up-a\";i:153;s:18:\"um-icon-arrow-up-b\";i:154;s:18:\"um-icon-arrow-up-c\";i:155;s:16:\"um-icon-asterisk\";i:156;s:10:\"um-icon-at\";i:157;s:17:\"um-icon-backspace\";i:158;s:25:\"um-icon-backspace-outline\";i:159;s:11:\"um-icon-bag\";i:160;s:24:\"um-icon-battery-charging\";i:161;s:21:\"um-icon-battery-empty\";i:162;s:20:\"um-icon-battery-full\";i:163;s:20:\"um-icon-battery-half\";i:164;s:19:\"um-icon-battery-low\";i:165;s:14:\"um-icon-beaker\";i:166;s:12:\"um-icon-beer\";i:167;s:17:\"um-icon-bluetooth\";i:168;s:15:\"um-icon-bonfire\";i:169;s:16:\"um-icon-bookmark\";i:170;s:14:\"um-icon-bowtie\";i:171;s:17:\"um-icon-briefcase\";i:172;s:11:\"um-icon-bug\";i:173;s:18:\"um-icon-calculator\";i:174;s:16:\"um-icon-calendar\";i:175;s:14:\"um-icon-camera\";i:176;s:12:\"um-icon-card\";i:177;s:12:\"um-icon-cash\";i:178;s:15:\"um-icon-chatbox\";i:179;s:23:\"um-icon-chatbox-working\";i:180;s:17:\"um-icon-chatboxes\";i:181;s:18:\"um-icon-chatbubble\";i:182;s:26:\"um-icon-chatbubble-working\";i:183;s:19:\"um-icon-chatbubbles\";i:184;s:17:\"um-icon-checkmark\";i:185;s:25:\"um-icon-checkmark-circled\";i:186;s:23:\"um-icon-checkmark-round\";i:187;s:20:\"um-icon-chevron-down\";i:188;s:20:\"um-icon-chevron-left\";i:189;s:21:\"um-icon-chevron-right\";i:190;s:18:\"um-icon-chevron-up\";i:191;s:17:\"um-icon-clipboard\";i:192;s:13:\"um-icon-clock\";i:193;s:13:\"um-icon-close\";i:194;s:21:\"um-icon-close-circled\";i:195;s:19:\"um-icon-close-round\";i:196;s:25:\"um-icon-closed-captioning\";i:197;s:13:\"um-icon-cloud\";i:198;s:12:\"um-icon-code\";i:199;s:21:\"um-icon-code-download\";i:200;s:20:\"um-icon-code-working\";i:201;s:14:\"um-icon-coffee\";i:202;s:15:\"um-icon-compass\";i:203;s:15:\"um-icon-compose\";i:204;s:23:\"um-icon-connection-bars\";i:205;s:16:\"um-icon-contrast\";i:206;s:12:\"um-icon-crop\";i:207;s:12:\"um-icon-cube\";i:208;s:12:\"um-icon-disc\";i:209;s:16:\"um-icon-document\";i:210;s:21:\"um-icon-document-text\";i:211;s:12:\"um-icon-drag\";i:212;s:13:\"um-icon-earth\";i:213;s:13:\"um-icon-easel\";i:214;s:12:\"um-icon-edit\";i:215;s:11:\"um-icon-egg\";i:216;s:13:\"um-icon-eject\";i:217;s:13:\"um-icon-email\";i:218;s:20:\"um-icon-email-unread\";i:219;s:24:\"um-icon-erlenmeyer-flask\";i:220;s:32:\"um-icon-erlenmeyer-flask-bubbles\";i:221;s:11:\"um-icon-eye\";i:222;s:20:\"um-icon-eye-disabled\";i:223;s:14:\"um-icon-female\";i:224;s:14:\"um-icon-filing\";i:225;s:19:\"um-icon-film-marker\";i:226;s:16:\"um-icon-fireball\";i:227;s:12:\"um-icon-flag\";i:228;s:13:\"um-icon-flame\";i:229;s:13:\"um-icon-flash\";i:230;s:17:\"um-icon-flash-off\";i:231;s:14:\"um-icon-folder\";i:232;s:12:\"um-icon-fork\";i:233;s:17:\"um-icon-fork-repo\";i:234;s:15:\"um-icon-forward\";i:235;s:14:\"um-icon-funnel\";i:236;s:14:\"um-icon-gear-a\";i:237;s:14:\"um-icon-gear-b\";i:238;s:12:\"um-icon-grid\";i:239;s:14:\"um-icon-hammer\";i:240;s:13:\"um-icon-happy\";i:241;s:21:\"um-icon-happy-outline\";i:242;s:17:\"um-icon-headphone\";i:243;s:13:\"um-icon-heart\";i:244;s:20:\"um-icon-heart-broken\";i:245;s:12:\"um-icon-help\";i:246;s:17:\"um-icon-help-buoy\";i:247;s:20:\"um-icon-help-circled\";i:248;s:12:\"um-icon-home\";i:249;s:16:\"um-icon-icecream\";i:250;s:13:\"um-icon-image\";i:251;s:14:\"um-icon-images\";i:252;s:19:\"um-icon-information\";i:253;s:27:\"um-icon-information-circled\";i:254;s:13:\"um-icon-ionic\";i:255;s:17:\"um-icon-ios-alarm\";i:256;s:25:\"um-icon-ios-alarm-outline\";i:257;s:18:\"um-icon-ios-albums\";i:258;s:26:\"um-icon-ios-albums-outline\";i:259;s:28:\"um-icon-ios-americanfootball\";i:260;s:36:\"um-icon-ios-americanfootball-outline\";i:261;s:21:\"um-icon-ios-analytics\";i:262;s:29:\"um-icon-ios-analytics-outline\";i:263;s:22:\"um-icon-ios-arrow-back\";i:264;s:22:\"um-icon-ios-arrow-down\";i:265;s:25:\"um-icon-ios-arrow-forward\";i:266;s:22:\"um-icon-ios-arrow-left\";i:267;s:23:\"um-icon-ios-arrow-right\";i:268;s:27:\"um-icon-ios-arrow-thin-down\";i:269;s:27:\"um-icon-ios-arrow-thin-left\";i:270;s:28:\"um-icon-ios-arrow-thin-right\";i:271;s:25:\"um-icon-ios-arrow-thin-up\";i:272;s:20:\"um-icon-ios-arrow-up\";i:273;s:14:\"um-icon-ios-at\";i:274;s:22:\"um-icon-ios-at-outline\";i:275;s:19:\"um-icon-ios-barcode\";i:276;s:27:\"um-icon-ios-barcode-outline\";i:277;s:20:\"um-icon-ios-baseball\";i:278;s:28:\"um-icon-ios-baseball-outline\";i:279;s:22:\"um-icon-ios-basketball\";i:280;s:30:\"um-icon-ios-basketball-outline\";i:281;s:16:\"um-icon-ios-bell\";i:282;s:24:\"um-icon-ios-bell-outline\";i:283;s:16:\"um-icon-ios-body\";i:284;s:24:\"um-icon-ios-body-outline\";i:285;s:16:\"um-icon-ios-bolt\";i:286;s:24:\"um-icon-ios-bolt-outline\";i:287;s:16:\"um-icon-ios-book\";i:288;s:24:\"um-icon-ios-book-outline\";i:289;s:21:\"um-icon-ios-bookmarks\";i:290;s:29:\"um-icon-ios-bookmarks-outline\";i:291;s:15:\"um-icon-ios-box\";i:292;s:23:\"um-icon-ios-box-outline\";i:293;s:21:\"um-icon-ios-briefcase\";i:294;s:29:\"um-icon-ios-briefcase-outline\";i:295;s:20:\"um-icon-ios-browsers\";i:296;s:28:\"um-icon-ios-browsers-outline\";i:297;s:22:\"um-icon-ios-calculator\";i:298;s:30:\"um-icon-ios-calculator-outline\";i:299;s:20:\"um-icon-ios-calendar\";i:300;s:28:\"um-icon-ios-calendar-outline\";i:301;s:18:\"um-icon-ios-camera\";i:302;s:26:\"um-icon-ios-camera-outline\";i:303;s:16:\"um-icon-ios-cart\";i:304;s:24:\"um-icon-ios-cart-outline\";i:305;s:21:\"um-icon-ios-chatboxes\";i:306;s:29:\"um-icon-ios-chatboxes-outline\";i:307;s:22:\"um-icon-ios-chatbubble\";i:308;s:30:\"um-icon-ios-chatbubble-outline\";i:309;s:21:\"um-icon-ios-checkmark\";i:310;s:27:\"um-icon-ios-checkmark-empty\";i:311;s:29:\"um-icon-ios-checkmark-outline\";i:312;s:25:\"um-icon-ios-circle-filled\";i:313;s:26:\"um-icon-ios-circle-outline\";i:314;s:17:\"um-icon-ios-clock\";i:315;s:25:\"um-icon-ios-clock-outline\";i:316;s:17:\"um-icon-ios-close\";i:317;s:23:\"um-icon-ios-close-empty\";i:318;s:25:\"um-icon-ios-close-outline\";i:319;s:17:\"um-icon-ios-cloud\";i:320;s:26:\"um-icon-ios-cloud-download\";i:321;s:34:\"um-icon-ios-cloud-download-outline\";i:322;s:25:\"um-icon-ios-cloud-outline\";i:323;s:24:\"um-icon-ios-cloud-upload\";i:324;s:32:\"um-icon-ios-cloud-upload-outline\";i:325;s:18:\"um-icon-ios-cloudy\";i:326;s:24:\"um-icon-ios-cloudy-night\";i:327;s:32:\"um-icon-ios-cloudy-night-outline\";i:328;s:26:\"um-icon-ios-cloudy-outline\";i:329;s:15:\"um-icon-ios-cog\";i:330;s:23:\"um-icon-ios-cog-outline\";i:331;s:24:\"um-icon-ios-color-filter\";i:332;s:32:\"um-icon-ios-color-filter-outline\";i:333;s:22:\"um-icon-ios-color-wand\";i:334;s:30:\"um-icon-ios-color-wand-outline\";i:335;s:19:\"um-icon-ios-compose\";i:336;s:27:\"um-icon-ios-compose-outline\";i:337;s:19:\"um-icon-ios-contact\";i:338;s:27:\"um-icon-ios-contact-outline\";i:339;s:16:\"um-icon-ios-copy\";i:340;s:24:\"um-icon-ios-copy-outline\";i:341;s:16:\"um-icon-ios-crop\";i:342;s:23:\"um-icon-ios-crop-strong\";i:343;s:20:\"um-icon-ios-download\";i:344;s:28:\"um-icon-ios-download-outline\";i:345;s:16:\"um-icon-ios-drag\";i:346;s:17:\"um-icon-ios-email\";i:347;s:25:\"um-icon-ios-email-outline\";i:348;s:15:\"um-icon-ios-eye\";i:349;s:23:\"um-icon-ios-eye-outline\";i:350;s:23:\"um-icon-ios-fastforward\";i:351;s:31:\"um-icon-ios-fastforward-outline\";i:352;s:18:\"um-icon-ios-filing\";i:353;s:26:\"um-icon-ios-filing-outline\";i:354;s:16:\"um-icon-ios-film\";i:355;s:24:\"um-icon-ios-film-outline\";i:356;s:16:\"um-icon-ios-flag\";i:357;s:24:\"um-icon-ios-flag-outline\";i:358;s:17:\"um-icon-ios-flame\";i:359;s:25:\"um-icon-ios-flame-outline\";i:360;s:17:\"um-icon-ios-flask\";i:361;s:25:\"um-icon-ios-flask-outline\";i:362;s:18:\"um-icon-ios-flower\";i:363;s:26:\"um-icon-ios-flower-outline\";i:364;s:18:\"um-icon-ios-folder\";i:365;s:26:\"um-icon-ios-folder-outline\";i:366;s:20:\"um-icon-ios-football\";i:367;s:28:\"um-icon-ios-football-outline\";i:368;s:29:\"um-icon-ios-game-controller-a\";i:369;s:37:\"um-icon-ios-game-controller-a-outline\";i:370;s:29:\"um-icon-ios-game-controller-b\";i:371;s:37:\"um-icon-ios-game-controller-b-outline\";i:372;s:16:\"um-icon-ios-gear\";i:373;s:24:\"um-icon-ios-gear-outline\";i:374;s:19:\"um-icon-ios-glasses\";i:375;s:27:\"um-icon-ios-glasses-outline\";i:376;s:21:\"um-icon-ios-grid-view\";i:377;s:29:\"um-icon-ios-grid-view-outline\";i:378;s:17:\"um-icon-ios-heart\";i:379;s:25:\"um-icon-ios-heart-outline\";i:380;s:16:\"um-icon-ios-help\";i:381;s:22:\"um-icon-ios-help-empty\";i:382;s:24:\"um-icon-ios-help-outline\";i:383;s:16:\"um-icon-ios-home\";i:384;s:24:\"um-icon-ios-home-outline\";i:385;s:20:\"um-icon-ios-infinite\";i:386;s:28:\"um-icon-ios-infinite-outline\";i:387;s:23:\"um-icon-ios-information\";i:388;s:29:\"um-icon-ios-information-empty\";i:389;s:31:\"um-icon-ios-information-outline\";i:390;s:25:\"um-icon-ios-ionic-outline\";i:391;s:18:\"um-icon-ios-keypad\";i:392;s:26:\"um-icon-ios-keypad-outline\";i:393;s:21:\"um-icon-ios-lightbulb\";i:394;s:29:\"um-icon-ios-lightbulb-outline\";i:395;s:16:\"um-icon-ios-list\";i:396;s:24:\"um-icon-ios-list-outline\";i:397;s:20:\"um-icon-ios-location\";i:398;s:28:\"um-icon-ios-location-outline\";i:399;s:18:\"um-icon-ios-locked\";i:400;s:26:\"um-icon-ios-locked-outline\";i:401;s:16:\"um-icon-ios-loop\";i:402;s:23:\"um-icon-ios-loop-strong\";i:403;s:19:\"um-icon-ios-medical\";i:404;s:27:\"um-icon-ios-medical-outline\";i:405;s:18:\"um-icon-ios-medkit\";i:406;s:26:\"um-icon-ios-medkit-outline\";i:407;s:15:\"um-icon-ios-mic\";i:408;s:19:\"um-icon-ios-mic-off\";i:409;s:23:\"um-icon-ios-mic-outline\";i:410;s:17:\"um-icon-ios-minus\";i:411;s:23:\"um-icon-ios-minus-empty\";i:412;s:25:\"um-icon-ios-minus-outline\";i:413;s:19:\"um-icon-ios-monitor\";i:414;s:27:\"um-icon-ios-monitor-outline\";i:415;s:16:\"um-icon-ios-moon\";i:416;s:24:\"um-icon-ios-moon-outline\";i:417;s:16:\"um-icon-ios-more\";i:418;s:24:\"um-icon-ios-more-outline\";i:419;s:24:\"um-icon-ios-musical-note\";i:420;s:25:\"um-icon-ios-musical-notes\";i:421;s:20:\"um-icon-ios-navigate\";i:422;s:28:\"um-icon-ios-navigate-outline\";i:423;s:21:\"um-icon-ios-nutrition\";i:424;s:29:\"um-icon-ios-nutrition-outline\";i:425;s:17:\"um-icon-ios-paper\";i:426;s:25:\"um-icon-ios-paper-outline\";i:427;s:22:\"um-icon-ios-paperplane\";i:428;s:30:\"um-icon-ios-paperplane-outline\";i:429;s:23:\"um-icon-ios-partlysunny\";i:430;s:31:\"um-icon-ios-partlysunny-outline\";i:431;s:17:\"um-icon-ios-pause\";i:432;s:25:\"um-icon-ios-pause-outline\";i:433;s:15:\"um-icon-ios-paw\";i:434;s:23:\"um-icon-ios-paw-outline\";i:435;s:18:\"um-icon-ios-people\";i:436;s:26:\"um-icon-ios-people-outline\";i:437;s:18:\"um-icon-ios-person\";i:438;s:26:\"um-icon-ios-person-outline\";i:439;s:21:\"um-icon-ios-personadd\";i:440;s:29:\"um-icon-ios-personadd-outline\";i:441;s:18:\"um-icon-ios-photos\";i:442;s:26:\"um-icon-ios-photos-outline\";i:443;s:15:\"um-icon-ios-pie\";i:444;s:23:\"um-icon-ios-pie-outline\";i:445;s:16:\"um-icon-ios-pint\";i:446;s:24:\"um-icon-ios-pint-outline\";i:447;s:16:\"um-icon-ios-play\";i:448;s:24:\"um-icon-ios-play-outline\";i:449;s:16:\"um-icon-ios-plus\";i:450;s:22:\"um-icon-ios-plus-empty\";i:451;s:24:\"um-icon-ios-plus-outline\";i:452;s:20:\"um-icon-ios-pricetag\";i:453;s:28:\"um-icon-ios-pricetag-outline\";i:454;s:21:\"um-icon-ios-pricetags\";i:455;s:29:\"um-icon-ios-pricetags-outline\";i:456;s:19:\"um-icon-ios-printer\";i:457;s:27:\"um-icon-ios-printer-outline\";i:458;s:17:\"um-icon-ios-pulse\";i:459;s:24:\"um-icon-ios-pulse-strong\";i:460;s:17:\"um-icon-ios-rainy\";i:461;s:25:\"um-icon-ios-rainy-outline\";i:462;s:21:\"um-icon-ios-recording\";i:463;s:29:\"um-icon-ios-recording-outline\";i:464;s:16:\"um-icon-ios-redo\";i:465;s:24:\"um-icon-ios-redo-outline\";i:466;s:19:\"um-icon-ios-refresh\";i:467;s:25:\"um-icon-ios-refresh-empty\";i:468;s:27:\"um-icon-ios-refresh-outline\";i:469;s:18:\"um-icon-ios-reload\";i:470;s:26:\"um-icon-ios-reverse-camera\";i:471;s:34:\"um-icon-ios-reverse-camera-outline\";i:472;s:18:\"um-icon-ios-rewind\";i:473;s:26:\"um-icon-ios-rewind-outline\";i:474;s:16:\"um-icon-ios-rose\";i:475;s:24:\"um-icon-ios-rose-outline\";i:476;s:18:\"um-icon-ios-search\";i:477;s:25:\"um-icon-ios-search-strong\";i:478;s:20:\"um-icon-ios-settings\";i:479;s:27:\"um-icon-ios-settings-strong\";i:480;s:19:\"um-icon-ios-shuffle\";i:481;s:26:\"um-icon-ios-shuffle-strong\";i:482;s:24:\"um-icon-ios-skipbackward\";i:483;s:32:\"um-icon-ios-skipbackward-outline\";i:484;s:23:\"um-icon-ios-skipforward\";i:485;s:31:\"um-icon-ios-skipforward-outline\";i:486;s:17:\"um-icon-ios-snowy\";i:487;s:23:\"um-icon-ios-speedometer\";i:488;s:31:\"um-icon-ios-speedometer-outline\";i:489;s:16:\"um-icon-ios-star\";i:490;s:21:\"um-icon-ios-star-half\";i:491;s:24:\"um-icon-ios-star-outline\";i:492;s:21:\"um-icon-ios-stopwatch\";i:493;s:29:\"um-icon-ios-stopwatch-outline\";i:494;s:17:\"um-icon-ios-sunny\";i:495;s:25:\"um-icon-ios-sunny-outline\";i:496;s:21:\"um-icon-ios-telephone\";i:497;s:29:\"um-icon-ios-telephone-outline\";i:498;s:22:\"um-icon-ios-tennisball\";i:499;s:30:\"um-icon-ios-tennisball-outline\";i:500;s:24:\"um-icon-ios-thunderstorm\";i:501;s:32:\"um-icon-ios-thunderstorm-outline\";i:502;s:16:\"um-icon-ios-time\";i:503;s:24:\"um-icon-ios-time-outline\";i:504;s:17:\"um-icon-ios-timer\";i:505;s:25:\"um-icon-ios-timer-outline\";i:506;s:18:\"um-icon-ios-toggle\";i:507;s:26:\"um-icon-ios-toggle-outline\";i:508;s:17:\"um-icon-ios-trash\";i:509;s:25:\"um-icon-ios-trash-outline\";i:510;s:16:\"um-icon-ios-undo\";i:511;s:24:\"um-icon-ios-undo-outline\";i:512;s:20:\"um-icon-ios-unlocked\";i:513;s:28:\"um-icon-ios-unlocked-outline\";i:514;s:18:\"um-icon-ios-upload\";i:515;s:26:\"um-icon-ios-upload-outline\";i:516;s:20:\"um-icon-ios-videocam\";i:517;s:28:\"um-icon-ios-videocam-outline\";i:518;s:23:\"um-icon-ios-volume-high\";i:519;s:22:\"um-icon-ios-volume-low\";i:520;s:21:\"um-icon-ios-wineglass\";i:521;s:29:\"um-icon-ios-wineglass-outline\";i:522;s:17:\"um-icon-ios-world\";i:523;s:25:\"um-icon-ios-world-outline\";i:524;s:12:\"um-icon-ipad\";i:525;s:14:\"um-icon-iphone\";i:526;s:12:\"um-icon-ipod\";i:527;s:11:\"um-icon-jet\";i:528;s:11:\"um-icon-key\";i:529;s:13:\"um-icon-knife\";i:530;s:14:\"um-icon-laptop\";i:531;s:12:\"um-icon-leaf\";i:532;s:14:\"um-icon-levels\";i:533;s:17:\"um-icon-lightbulb\";i:534;s:12:\"um-icon-link\";i:535;s:14:\"um-icon-load-a\";i:536;s:14:\"um-icon-load-b\";i:537;s:14:\"um-icon-load-c\";i:538;s:14:\"um-icon-load-d\";i:539;s:16:\"um-icon-location\";i:540;s:24:\"um-icon-lock-combination\";i:541;s:14:\"um-icon-locked\";i:542;s:14:\"um-icon-log-in\";i:543;s:15:\"um-icon-log-out\";i:544;s:12:\"um-icon-loop\";i:545;s:14:\"um-icon-magnet\";i:546;s:12:\"um-icon-male\";i:547;s:11:\"um-icon-man\";i:548;s:11:\"um-icon-map\";i:549;s:14:\"um-icon-medkit\";i:550;s:13:\"um-icon-merge\";i:551;s:13:\"um-icon-mic-a\";i:552;s:13:\"um-icon-mic-b\";i:553;s:13:\"um-icon-mic-c\";i:554;s:13:\"um-icon-minus\";i:555;s:21:\"um-icon-minus-circled\";i:556;s:19:\"um-icon-minus-round\";i:557;s:15:\"um-icon-model-s\";i:558;s:15:\"um-icon-monitor\";i:559;s:12:\"um-icon-more\";i:560;s:13:\"um-icon-mouse\";i:561;s:18:\"um-icon-music-note\";i:562;s:15:\"um-icon-navicon\";i:563;s:21:\"um-icon-navicon-round\";i:564;s:16:\"um-icon-navigate\";i:565;s:15:\"um-icon-network\";i:566;s:18:\"um-icon-no-smoking\";i:567;s:15:\"um-icon-nuclear\";i:568;s:14:\"um-icon-outlet\";i:569;s:18:\"um-icon-paintbrush\";i:570;s:19:\"um-icon-paintbucket\";i:571;s:22:\"um-icon-paper-airplane\";i:572;s:17:\"um-icon-paperclip\";i:573;s:13:\"um-icon-pause\";i:574;s:14:\"um-icon-person\";i:575;s:18:\"um-icon-person-add\";i:576;s:22:\"um-icon-person-stalker\";i:577;s:17:\"um-icon-pie-graph\";i:578;s:11:\"um-icon-pin\";i:579;s:16:\"um-icon-pinpoint\";i:580;s:13:\"um-icon-pizza\";i:581;s:13:\"um-icon-plane\";i:582;s:14:\"um-icon-planet\";i:583;s:12:\"um-icon-play\";i:584;s:19:\"um-icon-playstation\";i:585;s:12:\"um-icon-plus\";i:586;s:20:\"um-icon-plus-circled\";i:587;s:18:\"um-icon-plus-round\";i:588;s:14:\"um-icon-podium\";i:589;s:13:\"um-icon-pound\";i:590;s:13:\"um-icon-power\";i:591;s:16:\"um-icon-pricetag\";i:592;s:17:\"um-icon-pricetags\";i:593;s:15:\"um-icon-printer\";i:594;s:20:\"um-icon-pull-request\";i:595;s:18:\"um-icon-qr-scanner\";i:596;s:13:\"um-icon-quote\";i:597;s:19:\"um-icon-radio-waves\";i:598;s:14:\"um-icon-record\";i:599;s:15:\"um-icon-refresh\";i:600;s:13:\"um-icon-reply\";i:601;s:17:\"um-icon-reply-all\";i:602;s:16:\"um-icon-ribbon-a\";i:603;s:16:\"um-icon-ribbon-b\";i:604;s:11:\"um-icon-sad\";i:605;s:19:\"um-icon-sad-outline\";i:606;s:16:\"um-icon-scissors\";i:607;s:14:\"um-icon-search\";i:608;s:16:\"um-icon-settings\";i:609;s:13:\"um-icon-share\";i:610;s:15:\"um-icon-shuffle\";i:611;s:21:\"um-icon-skip-backward\";i:612;s:20:\"um-icon-skip-forward\";i:613;s:22:\"um-icon-social-android\";i:614;s:30:\"um-icon-social-android-outline\";i:615;s:22:\"um-icon-social-angular\";i:616;s:30:\"um-icon-social-angular-outline\";i:617;s:20:\"um-icon-social-apple\";i:618;s:28:\"um-icon-social-apple-outline\";i:619;s:22:\"um-icon-social-bitcoin\";i:620;s:30:\"um-icon-social-bitcoin-outline\";i:621;s:21:\"um-icon-social-buffer\";i:622;s:29:\"um-icon-social-buffer-outline\";i:623;s:21:\"um-icon-social-chrome\";i:624;s:29:\"um-icon-social-chrome-outline\";i:625;s:22:\"um-icon-social-codepen\";i:626;s:30:\"um-icon-social-codepen-outline\";i:627;s:19:\"um-icon-social-css3\";i:628;s:27:\"um-icon-social-css3-outline\";i:629;s:27:\"um-icon-social-designernews\";i:630;s:35:\"um-icon-social-designernews-outline\";i:631;s:23:\"um-icon-social-dribbble\";i:632;s:31:\"um-icon-social-dribbble-outline\";i:633;s:22:\"um-icon-social-dropbox\";i:634;s:30:\"um-icon-social-dropbox-outline\";i:635;s:19:\"um-icon-social-euro\";i:636;s:27:\"um-icon-social-euro-outline\";i:637;s:23:\"um-icon-social-facebook\";i:638;s:31:\"um-icon-social-facebook-outline\";i:639;s:25:\"um-icon-social-foursquare\";i:640;s:33:\"um-icon-social-foursquare-outline\";i:641;s:28:\"um-icon-social-freebsd-devil\";i:642;s:21:\"um-icon-social-github\";i:643;s:29:\"um-icon-social-github-outline\";i:644;s:21:\"um-icon-social-google\";i:645;s:29:\"um-icon-social-google-outline\";i:646;s:25:\"um-icon-social-googleplus\";i:647;s:33:\"um-icon-social-googleplus-outline\";i:648;s:25:\"um-icon-social-hackernews\";i:649;s:33:\"um-icon-social-hackernews-outline\";i:650;s:20:\"um-icon-social-html5\";i:651;s:28:\"um-icon-social-html5-outline\";i:652;s:24:\"um-icon-social-instagram\";i:653;s:32:\"um-icon-social-instagram-outline\";i:654;s:25:\"um-icon-social-javascript\";i:655;s:33:\"um-icon-social-javascript-outline\";i:656;s:23:\"um-icon-social-linkedin\";i:657;s:31:\"um-icon-social-linkedin-outline\";i:658;s:23:\"um-icon-social-markdown\";i:659;s:21:\"um-icon-social-nodejs\";i:660;s:22:\"um-icon-social-octocat\";i:661;s:24:\"um-icon-social-pinterest\";i:662;s:32:\"um-icon-social-pinterest-outline\";i:663;s:21:\"um-icon-social-python\";i:664;s:21:\"um-icon-social-reddit\";i:665;s:29:\"um-icon-social-reddit-outline\";i:666;s:18:\"um-icon-social-rss\";i:667;s:26:\"um-icon-social-rss-outline\";i:668;s:19:\"um-icon-social-sass\";i:669;s:20:\"um-icon-social-skype\";i:670;s:28:\"um-icon-social-skype-outline\";i:671;s:23:\"um-icon-social-snapchat\";i:672;s:31:\"um-icon-social-snapchat-outline\";i:673;s:21:\"um-icon-social-tumblr\";i:674;s:29:\"um-icon-social-tumblr-outline\";i:675;s:18:\"um-icon-social-tux\";i:676;s:21:\"um-icon-social-twitch\";i:677;s:29:\"um-icon-social-twitch-outline\";i:678;s:22:\"um-icon-social-twitter\";i:679;s:30:\"um-icon-social-twitter-outline\";i:680;s:18:\"um-icon-social-usd\";i:681;s:26:\"um-icon-social-usd-outline\";i:682;s:20:\"um-icon-social-vimeo\";i:683;s:28:\"um-icon-social-vimeo-outline\";i:684;s:23:\"um-icon-social-whatsapp\";i:685;s:31:\"um-icon-social-whatsapp-outline\";i:686;s:22:\"um-icon-social-windows\";i:687;s:30:\"um-icon-social-windows-outline\";i:688;s:24:\"um-icon-social-wordpress\";i:689;s:32:\"um-icon-social-wordpress-outline\";i:690;s:20:\"um-icon-social-yahoo\";i:691;s:28:\"um-icon-social-yahoo-outline\";i:692;s:18:\"um-icon-social-yen\";i:693;s:26:\"um-icon-social-yen-outline\";i:694;s:22:\"um-icon-social-youtube\";i:695;s:30:\"um-icon-social-youtube-outline\";i:696;s:16:\"um-icon-soup-can\";i:697;s:24:\"um-icon-soup-can-outline\";i:698;s:20:\"um-icon-speakerphone\";i:699;s:19:\"um-icon-speedometer\";i:700;s:13:\"um-icon-spoon\";i:701;s:12:\"um-icon-star\";i:702;s:18:\"um-icon-stats-bars\";i:703;s:13:\"um-icon-steam\";i:704;s:12:\"um-icon-stop\";i:705;s:19:\"um-icon-thermometer\";i:706;s:18:\"um-icon-thumbsdown\";i:707;s:16:\"um-icon-thumbsup\";i:708;s:14:\"um-icon-toggle\";i:709;s:21:\"um-icon-toggle-filled\";i:710;s:19:\"um-icon-transgender\";i:711;s:15:\"um-icon-trash-a\";i:712;s:15:\"um-icon-trash-b\";i:713;s:14:\"um-icon-trophy\";i:714;s:14:\"um-icon-tshirt\";i:715;s:22:\"um-icon-tshirt-outline\";i:716;s:16:\"um-icon-umbrella\";i:717;s:18:\"um-icon-university\";i:718;s:16:\"um-icon-unlocked\";i:719;s:14:\"um-icon-upload\";i:720;s:11:\"um-icon-usb\";i:721;s:19:\"um-icon-videocamera\";i:722;s:19:\"um-icon-volume-high\";i:723;s:18:\"um-icon-volume-low\";i:724;s:21:\"um-icon-volume-medium\";i:725;s:19:\"um-icon-volume-mute\";i:726;s:12:\"um-icon-wand\";i:727;s:17:\"um-icon-waterdrop\";i:728;s:12:\"um-icon-wifi\";i:729;s:17:\"um-icon-wineglass\";i:730;s:13:\"um-icon-woman\";i:731;s:14:\"um-icon-wrench\";i:732;s:12:\"um-icon-xbox\";i:733;s:21:\"um-faicon-sticky-note\";i:734;s:15:\"um-faicon-glass\";i:735;s:15:\"um-faicon-music\";i:736;s:16:\"um-faicon-search\";i:737;s:20:\"um-faicon-envelope-o\";i:738;s:15:\"um-faicon-heart\";i:739;s:14:\"um-faicon-star\";i:740;s:16:\"um-faicon-star-o\";i:741;s:14:\"um-faicon-user\";i:742;s:14:\"um-faicon-film\";i:743;s:18:\"um-faicon-th-large\";i:744;s:12:\"um-faicon-th\";i:745;s:17:\"um-faicon-th-list\";i:746;s:15:\"um-faicon-check\";i:747;s:16:\"um-faicon-remove\";i:748;s:15:\"um-faicon-close\";i:749;s:15:\"um-faicon-times\";i:750;s:21:\"um-faicon-search-plus\";i:751;s:22:\"um-faicon-search-minus\";i:752;s:19:\"um-faicon-power-off\";i:753;s:16:\"um-faicon-signal\";i:754;s:14:\"um-faicon-gear\";i:755;s:13:\"um-faicon-cog\";i:756;s:17:\"um-faicon-trash-o\";i:757;s:14:\"um-faicon-home\";i:758;s:16:\"um-faicon-file-o\";i:759;s:17:\"um-faicon-clock-o\";i:760;s:14:\"um-faicon-road\";i:761;s:18:\"um-faicon-download\";i:762;s:29:\"um-faicon-arrow-circle-o-down\";i:763;s:27:\"um-faicon-arrow-circle-o-up\";i:764;s:15:\"um-faicon-inbox\";i:765;s:23:\"um-faicon-play-circle-o\";i:766;s:22:\"um-faicon-rotate-right\";i:767;s:16:\"um-faicon-repeat\";i:768;s:17:\"um-faicon-refresh\";i:769;s:18:\"um-faicon-list-alt\";i:770;s:14:\"um-faicon-lock\";i:771;s:14:\"um-faicon-flag\";i:772;s:20:\"um-faicon-headphones\";i:773;s:20:\"um-faicon-volume-off\";i:774;s:21:\"um-faicon-volume-down\";i:775;s:19:\"um-faicon-volume-up\";i:776;s:16:\"um-faicon-qrcode\";i:777;s:17:\"um-faicon-barcode\";i:778;s:13:\"um-faicon-tag\";i:779;s:14:\"um-faicon-tags\";i:780;s:14:\"um-faicon-book\";i:781;s:18:\"um-faicon-bookmark\";i:782;s:15:\"um-faicon-print\";i:783;s:16:\"um-faicon-camera\";i:784;s:14:\"um-faicon-font\";i:785;s:14:\"um-faicon-bold\";i:786;s:16:\"um-faicon-italic\";i:787;s:21:\"um-faicon-text-height\";i:788;s:20:\"um-faicon-text-width\";i:789;s:20:\"um-faicon-align-left\";i:790;s:22:\"um-faicon-align-center\";i:791;s:21:\"um-faicon-align-right\";i:792;s:23:\"um-faicon-align-justify\";i:793;s:14:\"um-faicon-list\";i:794;s:16:\"um-faicon-dedent\";i:795;s:17:\"um-faicon-outdent\";i:796;s:16:\"um-faicon-indent\";i:797;s:22:\"um-faicon-video-camera\";i:798;s:15:\"um-faicon-photo\";i:799;s:15:\"um-faicon-image\";i:800;s:19:\"um-faicon-picture-o\";i:801;s:16:\"um-faicon-pencil\";i:802;s:20:\"um-faicon-map-marker\";i:803;s:16:\"um-faicon-adjust\";i:804;s:14:\"um-faicon-tint\";i:805;s:14:\"um-faicon-edit\";i:806;s:25:\"um-faicon-pencil-square-o\";i:807;s:24:\"um-faicon-share-square-o\";i:808;s:24:\"um-faicon-check-square-o\";i:809;s:16:\"um-faicon-arrows\";i:810;s:23:\"um-faicon-step-backward\";i:811;s:23:\"um-faicon-fast-backward\";i:812;s:18:\"um-faicon-backward\";i:813;s:14:\"um-faicon-play\";i:814;s:15:\"um-faicon-pause\";i:815;s:14:\"um-faicon-stop\";i:816;s:17:\"um-faicon-forward\";i:817;s:22:\"um-faicon-fast-forward\";i:818;s:22:\"um-faicon-step-forward\";i:819;s:15:\"um-faicon-eject\";i:820;s:22:\"um-faicon-chevron-left\";i:821;s:23:\"um-faicon-chevron-right\";i:822;s:21:\"um-faicon-plus-circle\";i:823;s:22:\"um-faicon-minus-circle\";i:824;s:22:\"um-faicon-times-circle\";i:825;s:22:\"um-faicon-check-circle\";i:826;s:25:\"um-faicon-question-circle\";i:827;s:21:\"um-faicon-info-circle\";i:828;s:20:\"um-faicon-crosshairs\";i:829;s:24:\"um-faicon-times-circle-o\";i:830;s:24:\"um-faicon-check-circle-o\";i:831;s:13:\"um-faicon-ban\";i:832;s:20:\"um-faicon-arrow-left\";i:833;s:21:\"um-faicon-arrow-right\";i:834;s:18:\"um-faicon-arrow-up\";i:835;s:20:\"um-faicon-arrow-down\";i:836;s:22:\"um-faicon-mail-forward\";i:837;s:15:\"um-faicon-share\";i:838;s:16:\"um-faicon-expand\";i:839;s:18:\"um-faicon-compress\";i:840;s:14:\"um-faicon-plus\";i:841;s:15:\"um-faicon-minus\";i:842;s:18:\"um-faicon-asterisk\";i:843;s:28:\"um-faicon-exclamation-circle\";i:844;s:14:\"um-faicon-gift\";i:845;s:14:\"um-faicon-leaf\";i:846;s:14:\"um-faicon-fire\";i:847;s:13:\"um-faicon-eye\";i:848;s:19:\"um-faicon-eye-slash\";i:849;s:17:\"um-faicon-warning\";i:850;s:30:\"um-faicon-exclamation-triangle\";i:851;s:15:\"um-faicon-plane\";i:852;s:18:\"um-faicon-calendar\";i:853;s:16:\"um-faicon-random\";i:854;s:17:\"um-faicon-comment\";i:855;s:16:\"um-faicon-magnet\";i:856;s:20:\"um-faicon-chevron-up\";i:857;s:22:\"um-faicon-chevron-down\";i:858;s:17:\"um-faicon-retweet\";i:859;s:23:\"um-faicon-shopping-cart\";i:860;s:16:\"um-faicon-folder\";i:861;s:21:\"um-faicon-folder-open\";i:862;s:18:\"um-faicon-arrows-v\";i:863;s:18:\"um-faicon-arrows-h\";i:864;s:21:\"um-faicon-bar-chart-o\";i:865;s:19:\"um-faicon-bar-chart\";i:866;s:24:\"um-faicon-twitter-square\";i:867;s:25:\"um-faicon-facebook-square\";i:868;s:22:\"um-faicon-camera-retro\";i:869;s:13:\"um-faicon-key\";i:870;s:15:\"um-faicon-gears\";i:871;s:14:\"um-faicon-cogs\";i:872;s:18:\"um-faicon-comments\";i:873;s:21:\"um-faicon-thumbs-o-up\";i:874;s:23:\"um-faicon-thumbs-o-down\";i:875;s:19:\"um-faicon-star-half\";i:876;s:17:\"um-faicon-heart-o\";i:877;s:18:\"um-faicon-sign-out\";i:878;s:25:\"um-faicon-linkedin-square\";i:879;s:20:\"um-faicon-thumb-tack\";i:880;s:23:\"um-faicon-external-link\";i:881;s:17:\"um-faicon-sign-in\";i:882;s:16:\"um-faicon-trophy\";i:883;s:23:\"um-faicon-github-square\";i:884;s:16:\"um-faicon-upload\";i:885;s:17:\"um-faicon-lemon-o\";i:886;s:15:\"um-faicon-phone\";i:887;s:18:\"um-faicon-square-o\";i:888;s:20:\"um-faicon-bookmark-o\";i:889;s:22:\"um-faicon-phone-square\";i:890;s:17:\"um-faicon-twitter\";i:891;s:18:\"um-faicon-facebook\";i:892;s:16:\"um-faicon-github\";i:893;s:16:\"um-faicon-unlock\";i:894;s:21:\"um-faicon-credit-card\";i:895;s:13:\"um-faicon-rss\";i:896;s:15:\"um-faicon-hdd-o\";i:897;s:18:\"um-faicon-bullhorn\";i:898;s:14:\"um-faicon-bell\";i:899;s:21:\"um-faicon-certificate\";i:900;s:22:\"um-faicon-hand-o-right\";i:901;s:21:\"um-faicon-hand-o-left\";i:902;s:19:\"um-faicon-hand-o-up\";i:903;s:21:\"um-faicon-hand-o-down\";i:904;s:27:\"um-faicon-arrow-circle-left\";i:905;s:28:\"um-faicon-arrow-circle-right\";i:906;s:25:\"um-faicon-arrow-circle-up\";i:907;s:27:\"um-faicon-arrow-circle-down\";i:908;s:15:\"um-faicon-globe\";i:909;s:16:\"um-faicon-wrench\";i:910;s:15:\"um-faicon-tasks\";i:911;s:16:\"um-faicon-filter\";i:912;s:19:\"um-faicon-briefcase\";i:913;s:20:\"um-faicon-arrows-alt\";i:914;s:15:\"um-faicon-group\";i:915;s:15:\"um-faicon-users\";i:916;s:15:\"um-faicon-chain\";i:917;s:14:\"um-faicon-link\";i:918;s:15:\"um-faicon-cloud\";i:919;s:15:\"um-faicon-flask\";i:920;s:13:\"um-faicon-cut\";i:921;s:18:\"um-faicon-scissors\";i:922;s:14:\"um-faicon-copy\";i:923;s:17:\"um-faicon-files-o\";i:924;s:19:\"um-faicon-paperclip\";i:925;s:14:\"um-faicon-save\";i:926;s:18:\"um-faicon-floppy-o\";i:927;s:16:\"um-faicon-square\";i:928;s:17:\"um-faicon-navicon\";i:929;s:17:\"um-faicon-reorder\";i:930;s:14:\"um-faicon-bars\";i:931;s:17:\"um-faicon-list-ul\";i:932;s:17:\"um-faicon-list-ol\";i:933;s:23:\"um-faicon-strikethrough\";i:934;s:19:\"um-faicon-underline\";i:935;s:15:\"um-faicon-table\";i:936;s:15:\"um-faicon-magic\";i:937;s:15:\"um-faicon-truck\";i:938;s:19:\"um-faicon-pinterest\";i:939;s:26:\"um-faicon-pinterest-square\";i:940;s:28:\"um-faicon-google-plus-square\";i:941;s:21:\"um-faicon-google-plus\";i:942;s:15:\"um-faicon-money\";i:943;s:20:\"um-faicon-caret-down\";i:944;s:18:\"um-faicon-caret-up\";i:945;s:20:\"um-faicon-caret-left\";i:946;s:21:\"um-faicon-caret-right\";i:947;s:17:\"um-faicon-columns\";i:948;s:18:\"um-faicon-unsorted\";i:949;s:14:\"um-faicon-sort\";i:950;s:19:\"um-faicon-sort-down\";i:951;s:19:\"um-faicon-sort-desc\";i:952;s:17:\"um-faicon-sort-up\";i:953;s:18:\"um-faicon-sort-asc\";i:954;s:18:\"um-faicon-envelope\";i:955;s:18:\"um-faicon-linkedin\";i:956;s:21:\"um-faicon-rotate-left\";i:957;s:14:\"um-faicon-undo\";i:958;s:15:\"um-faicon-legal\";i:959;s:15:\"um-faicon-gavel\";i:960;s:19:\"um-faicon-dashboard\";i:961;s:20:\"um-faicon-tachometer\";i:962;s:19:\"um-faicon-comment-o\";i:963;s:20:\"um-faicon-comments-o\";i:964;s:15:\"um-faicon-flash\";i:965;s:14:\"um-faicon-bolt\";i:966;s:17:\"um-faicon-sitemap\";i:967;s:18:\"um-faicon-umbrella\";i:968;s:15:\"um-faicon-paste\";i:969;s:19:\"um-faicon-clipboard\";i:970;s:21:\"um-faicon-lightbulb-o\";i:971;s:18:\"um-faicon-exchange\";i:972;s:24:\"um-faicon-cloud-download\";i:973;s:22:\"um-faicon-cloud-upload\";i:974;s:17:\"um-faicon-user-md\";i:975;s:21:\"um-faicon-stethoscope\";i:976;s:18:\"um-faicon-suitcase\";i:977;s:16:\"um-faicon-bell-o\";i:978;s:16:\"um-faicon-coffee\";i:979;s:17:\"um-faicon-cutlery\";i:980;s:21:\"um-faicon-file-text-o\";i:981;s:20:\"um-faicon-building-o\";i:982;s:20:\"um-faicon-hospital-o\";i:983;s:19:\"um-faicon-ambulance\";i:984;s:16:\"um-faicon-medkit\";i:985;s:21:\"um-faicon-fighter-jet\";i:986;s:14:\"um-faicon-beer\";i:987;s:18:\"um-faicon-h-square\";i:988;s:21:\"um-faicon-plus-square\";i:989;s:27:\"um-faicon-angle-double-left\";i:990;s:28:\"um-faicon-angle-double-right\";i:991;s:25:\"um-faicon-angle-double-up\";i:992;s:27:\"um-faicon-angle-double-down\";i:993;s:20:\"um-faicon-angle-left\";i:994;s:21:\"um-faicon-angle-right\";i:995;s:18:\"um-faicon-angle-up\";i:996;s:20:\"um-faicon-angle-down\";i:997;s:17:\"um-faicon-desktop\";i:998;s:16:\"um-faicon-laptop\";i:999;s:16:\"um-faicon-tablet\";i:1000;s:22:\"um-faicon-mobile-phone\";i:1001;s:16:\"um-faicon-mobile\";i:1002;s:18:\"um-faicon-circle-o\";i:1003;s:20:\"um-faicon-quote-left\";i:1004;s:21:\"um-faicon-quote-right\";i:1005;s:17:\"um-faicon-spinner\";i:1006;s:16:\"um-faicon-circle\";i:1007;s:20:\"um-faicon-mail-reply\";i:1008;s:15:\"um-faicon-reply\";i:1009;s:20:\"um-faicon-github-alt\";i:1010;s:18:\"um-faicon-folder-o\";i:1011;s:23:\"um-faicon-folder-open-o\";i:1012;s:17:\"um-faicon-smile-o\";i:1013;s:17:\"um-faicon-frown-o\";i:1014;s:15:\"um-faicon-meh-o\";i:1015;s:17:\"um-faicon-gamepad\";i:1016;s:20:\"um-faicon-keyboard-o\";i:1017;s:16:\"um-faicon-flag-o\";i:1018;s:24:\"um-faicon-flag-checkered\";i:1019;s:18:\"um-faicon-terminal\";i:1020;s:14:\"um-faicon-code\";i:1021;s:24:\"um-faicon-mail-reply-all\";i:1022;s:19:\"um-faicon-reply-all\";i:1023;s:25:\"um-faicon-star-half-empty\";i:1024;s:24:\"um-faicon-star-half-full\";i:1025;s:21:\"um-faicon-star-half-o\";i:1026;s:24:\"um-faicon-location-arrow\";i:1027;s:14:\"um-faicon-crop\";i:1028;s:19:\"um-faicon-code-fork\";i:1029;s:16:\"um-faicon-unlink\";i:1030;s:22:\"um-faicon-chain-broken\";i:1031;s:18:\"um-faicon-question\";i:1032;s:14:\"um-faicon-info\";i:1033;s:21:\"um-faicon-exclamation\";i:1034;s:21:\"um-faicon-superscript\";i:1035;s:19:\"um-faicon-subscript\";i:1036;s:16:\"um-faicon-eraser\";i:1037;s:22:\"um-faicon-puzzle-piece\";i:1038;s:20:\"um-faicon-microphone\";i:1039;s:26:\"um-faicon-microphone-slash\";i:1040;s:16:\"um-faicon-shield\";i:1041;s:20:\"um-faicon-calendar-o\";i:1042;s:27:\"um-faicon-fire-extinguisher\";i:1043;s:16:\"um-faicon-rocket\";i:1044;s:16:\"um-faicon-maxcdn\";i:1045;s:29:\"um-faicon-chevron-circle-left\";i:1046;s:30:\"um-faicon-chevron-circle-right\";i:1047;s:27:\"um-faicon-chevron-circle-up\";i:1048;s:29:\"um-faicon-chevron-circle-down\";i:1049;s:15:\"um-faicon-html5\";i:1050;s:14:\"um-faicon-css3\";i:1051;s:16:\"um-faicon-anchor\";i:1052;s:20:\"um-faicon-unlock-alt\";i:1053;s:18:\"um-faicon-bullseye\";i:1054;s:20:\"um-faicon-ellipsis-h\";i:1055;s:20:\"um-faicon-ellipsis-v\";i:1056;s:20:\"um-faicon-rss-square\";i:1057;s:21:\"um-faicon-play-circle\";i:1058;s:16:\"um-faicon-ticket\";i:1059;s:22:\"um-faicon-minus-square\";i:1060;s:24:\"um-faicon-minus-square-o\";i:1061;s:18:\"um-faicon-level-up\";i:1062;s:20:\"um-faicon-level-down\";i:1063;s:22:\"um-faicon-check-square\";i:1064;s:23:\"um-faicon-pencil-square\";i:1065;s:30:\"um-faicon-external-link-square\";i:1066;s:22:\"um-faicon-share-square\";i:1067;s:17:\"um-faicon-compass\";i:1068;s:21:\"um-faicon-toggle-down\";i:1069;s:29:\"um-faicon-caret-square-o-down\";i:1070;s:19:\"um-faicon-toggle-up\";i:1071;s:27:\"um-faicon-caret-square-o-up\";i:1072;s:22:\"um-faicon-toggle-right\";i:1073;s:30:\"um-faicon-caret-square-o-right\";i:1074;s:14:\"um-faicon-euro\";i:1075;s:13:\"um-faicon-eur\";i:1076;s:13:\"um-faicon-gbp\";i:1077;s:16:\"um-faicon-dollar\";i:1078;s:13:\"um-faicon-usd\";i:1079;s:15:\"um-faicon-rupee\";i:1080;s:13:\"um-faicon-inr\";i:1081;s:13:\"um-faicon-cny\";i:1082;s:13:\"um-faicon-rmb\";i:1083;s:13:\"um-faicon-yen\";i:1084;s:13:\"um-faicon-jpy\";i:1085;s:15:\"um-faicon-ruble\";i:1086;s:16:\"um-faicon-rouble\";i:1087;s:13:\"um-faicon-rub\";i:1088;s:13:\"um-faicon-won\";i:1089;s:13:\"um-faicon-krw\";i:1090;s:17:\"um-faicon-bitcoin\";i:1091;s:13:\"um-faicon-btc\";i:1092;s:14:\"um-faicon-file\";i:1093;s:19:\"um-faicon-file-text\";i:1094;s:24:\"um-faicon-sort-alpha-asc\";i:1095;s:25:\"um-faicon-sort-alpha-desc\";i:1096;s:25:\"um-faicon-sort-amount-asc\";i:1097;s:26:\"um-faicon-sort-amount-desc\";i:1098;s:26:\"um-faicon-sort-numeric-asc\";i:1099;s:27:\"um-faicon-sort-numeric-desc\";i:1100;s:19:\"um-faicon-thumbs-up\";i:1101;s:21:\"um-faicon-thumbs-down\";i:1102;s:24:\"um-faicon-youtube-square\";i:1103;s:17:\"um-faicon-youtube\";i:1104;s:14:\"um-faicon-xing\";i:1105;s:21:\"um-faicon-xing-square\";i:1106;s:22:\"um-faicon-youtube-play\";i:1107;s:17:\"um-faicon-dropbox\";i:1108;s:24:\"um-faicon-stack-overflow\";i:1109;s:19:\"um-faicon-instagram\";i:1110;s:16:\"um-faicon-flickr\";i:1111;s:13:\"um-faicon-adn\";i:1112;s:19:\"um-faicon-bitbucket\";i:1113;s:26:\"um-faicon-bitbucket-square\";i:1114;s:16:\"um-faicon-tumblr\";i:1115;s:23:\"um-faicon-tumblr-square\";i:1116;s:25:\"um-faicon-long-arrow-down\";i:1117;s:23:\"um-faicon-long-arrow-up\";i:1118;s:25:\"um-faicon-long-arrow-left\";i:1119;s:26:\"um-faicon-long-arrow-right\";i:1120;s:15:\"um-faicon-apple\";i:1121;s:17:\"um-faicon-windows\";i:1122;s:17:\"um-faicon-android\";i:1123;s:15:\"um-faicon-linux\";i:1124;s:18:\"um-faicon-dribbble\";i:1125;s:15:\"um-faicon-skype\";i:1126;s:20:\"um-faicon-foursquare\";i:1127;s:16:\"um-faicon-trello\";i:1128;s:16:\"um-faicon-female\";i:1129;s:14:\"um-faicon-male\";i:1130;s:16:\"um-faicon-gittip\";i:1131;s:15:\"um-faicon-sun-o\";i:1132;s:16:\"um-faicon-moon-o\";i:1133;s:17:\"um-faicon-archive\";i:1134;s:13:\"um-faicon-bug\";i:1135;s:12:\"um-faicon-vk\";i:1136;s:15:\"um-faicon-weibo\";i:1137;s:16:\"um-faicon-renren\";i:1138;s:19:\"um-faicon-pagelines\";i:1139;s:24:\"um-faicon-stack-exchange\";i:1140;s:30:\"um-faicon-arrow-circle-o-right\";i:1141;s:29:\"um-faicon-arrow-circle-o-left\";i:1142;s:21:\"um-faicon-toggle-left\";i:1143;s:29:\"um-faicon-caret-square-o-left\";i:1144;s:22:\"um-faicon-dot-circle-o\";i:1145;s:20:\"um-faicon-wheelchair\";i:1146;s:22:\"um-faicon-vimeo-square\";i:1147;s:22:\"um-faicon-turkish-lira\";i:1148;s:13:\"um-faicon-try\";i:1149;s:23:\"um-faicon-plus-square-o\";i:1150;s:23:\"um-faicon-space-shuttle\";i:1151;s:15:\"um-faicon-slack\";i:1152;s:25:\"um-faicon-envelope-square\";i:1153;s:19:\"um-faicon-wordpress\";i:1154;s:16:\"um-faicon-openid\";i:1155;s:21:\"um-faicon-institution\";i:1156;s:14:\"um-faicon-bank\";i:1157;s:20:\"um-faicon-university\";i:1158;s:22:\"um-faicon-mortar-board\";i:1159;s:24:\"um-faicon-graduation-cap\";i:1160;s:15:\"um-faicon-yahoo\";i:1161;s:16:\"um-faicon-google\";i:1162;s:16:\"um-faicon-reddit\";i:1163;s:23:\"um-faicon-reddit-square\";i:1164;s:28:\"um-faicon-stumbleupon-circle\";i:1165;s:21:\"um-faicon-stumbleupon\";i:1166;s:19:\"um-faicon-delicious\";i:1167;s:14:\"um-faicon-digg\";i:1168;s:20:\"um-faicon-pied-piper\";i:1169;s:24:\"um-faicon-pied-piper-alt\";i:1170;s:16:\"um-faicon-drupal\";i:1171;s:16:\"um-faicon-joomla\";i:1172;s:18:\"um-faicon-language\";i:1173;s:13:\"um-faicon-fax\";i:1174;s:18:\"um-faicon-building\";i:1175;s:15:\"um-faicon-child\";i:1176;s:13:\"um-faicon-paw\";i:1177;s:15:\"um-faicon-spoon\";i:1178;s:14:\"um-faicon-cube\";i:1179;s:15:\"um-faicon-cubes\";i:1180;s:17:\"um-faicon-behance\";i:1181;s:24:\"um-faicon-behance-square\";i:1182;s:15:\"um-faicon-steam\";i:1183;s:22:\"um-faicon-steam-square\";i:1184;s:17:\"um-faicon-recycle\";i:1185;s:20:\"um-faicon-automobile\";i:1186;s:13:\"um-faicon-car\";i:1187;s:13:\"um-faicon-cab\";i:1188;s:14:\"um-faicon-taxi\";i:1189;s:14:\"um-faicon-tree\";i:1190;s:17:\"um-faicon-spotify\";i:1191;s:20:\"um-faicon-deviantart\";i:1192;s:20:\"um-faicon-soundcloud\";i:1193;s:18:\"um-faicon-database\";i:1194;s:20:\"um-faicon-file-pdf-o\";i:1195;s:21:\"um-faicon-file-word-o\";i:1196;s:22:\"um-faicon-file-excel-o\";i:1197;s:27:\"um-faicon-file-powerpoint-o\";i:1198;s:22:\"um-faicon-file-photo-o\";i:1199;s:24:\"um-faicon-file-picture-o\";i:1200;s:22:\"um-faicon-file-image-o\";i:1201;s:20:\"um-faicon-file-zip-o\";i:1202;s:24:\"um-faicon-file-archive-o\";i:1203;s:22:\"um-faicon-file-sound-o\";i:1204;s:22:\"um-faicon-file-audio-o\";i:1205;s:22:\"um-faicon-file-movie-o\";i:1206;s:22:\"um-faicon-file-video-o\";i:1207;s:21:\"um-faicon-file-code-o\";i:1208;s:14:\"um-faicon-vine\";i:1209;s:17:\"um-faicon-codepen\";i:1210;s:18:\"um-faicon-jsfiddle\";i:1211;s:19:\"um-faicon-life-bouy\";i:1212;s:19:\"um-faicon-life-buoy\";i:1213;s:20:\"um-faicon-life-saver\";i:1214;s:17:\"um-faicon-support\";i:1215;s:19:\"um-faicon-life-ring\";i:1216;s:24:\"um-faicon-circle-o-notch\";i:1217;s:12:\"um-faicon-ra\";i:1218;s:15:\"um-faicon-rebel\";i:1219;s:12:\"um-faicon-ge\";i:1220;s:16:\"um-faicon-empire\";i:1221;s:20:\"um-faicon-git-square\";i:1222;s:13:\"um-faicon-git\";i:1223;s:21:\"um-faicon-hacker-news\";i:1224;s:23:\"um-faicon-tencent-weibo\";i:1225;s:12:\"um-faicon-qq\";i:1226;s:16:\"um-faicon-wechat\";i:1227;s:16:\"um-faicon-weixin\";i:1228;s:14:\"um-faicon-send\";i:1229;s:21:\"um-faicon-paper-plane\";i:1230;s:16:\"um-faicon-send-o\";i:1231;s:23:\"um-faicon-paper-plane-o\";i:1232;s:17:\"um-faicon-history\";i:1233;s:21:\"um-faicon-circle-thin\";i:1234;s:16:\"um-faicon-header\";i:1235;s:19:\"um-faicon-paragraph\";i:1236;s:17:\"um-faicon-sliders\";i:1237;s:19:\"um-faicon-share-alt\";i:1238;s:26:\"um-faicon-share-alt-square\";i:1239;s:14:\"um-faicon-bomb\";i:1240;s:23:\"um-faicon-soccer-ball-o\";i:1241;s:18:\"um-faicon-futbol-o\";i:1242;s:13:\"um-faicon-tty\";i:1243;s:20:\"um-faicon-binoculars\";i:1244;s:14:\"um-faicon-plug\";i:1245;s:20:\"um-faicon-slideshare\";i:1246;s:16:\"um-faicon-twitch\";i:1247;s:14:\"um-faicon-yelp\";i:1248;s:21:\"um-faicon-newspaper-o\";i:1249;s:14:\"um-faicon-wifi\";i:1250;s:20:\"um-faicon-calculator\";i:1251;s:16:\"um-faicon-paypal\";i:1252;s:23:\"um-faicon-google-wallet\";i:1253;s:17:\"um-faicon-cc-visa\";i:1254;s:23:\"um-faicon-cc-mastercard\";i:1255;s:21:\"um-faicon-cc-discover\";i:1256;s:17:\"um-faicon-cc-amex\";i:1257;s:19:\"um-faicon-cc-paypal\";i:1258;s:19:\"um-faicon-cc-stripe\";i:1259;s:20:\"um-faicon-bell-slash\";i:1260;s:22:\"um-faicon-bell-slash-o\";i:1261;s:15:\"um-faicon-trash\";i:1262;s:19:\"um-faicon-copyright\";i:1263;s:12:\"um-faicon-at\";i:1264;s:20:\"um-faicon-eyedropper\";i:1265;s:21:\"um-faicon-paint-brush\";i:1266;s:23:\"um-faicon-birthday-cake\";i:1267;s:20:\"um-faicon-area-chart\";i:1268;s:19:\"um-faicon-pie-chart\";i:1269;s:20:\"um-faicon-line-chart\";i:1270;s:16:\"um-faicon-lastfm\";i:1271;s:23:\"um-faicon-lastfm-square\";i:1272;s:20:\"um-faicon-toggle-off\";i:1273;s:19:\"um-faicon-toggle-on\";i:1274;s:17:\"um-faicon-bicycle\";i:1275;s:13:\"um-faicon-bus\";i:1276;s:17:\"um-faicon-ioxhost\";i:1277;s:19:\"um-faicon-angellist\";i:1278;s:12:\"um-faicon-cc\";i:1279;s:16:\"um-faicon-shekel\";i:1280;s:16:\"um-faicon-sheqel\";i:1281;s:13:\"um-faicon-ils\";i:1282;s:18:\"um-faicon-meanpath\";}', 'yes'),
(69549, 'post_by_email_address4', 'NULL', 'yes'),
(69550, 'jetpack_last_connect_url_check', '1639086513', 'no'),
(70642, '_transient_timeout_jetpack_a8c_data', '1639253350', 'no'),
(70643, '_transient_jetpack_a8c_data', 'a:4:{s:4:\"a12s\";i:1834;s:9:\"countries\";i:94;s:9:\"languages\";i:118;s:16:\"featured_plugins\";a:4:{i:0;s:11:\"woocommerce\";i:1;s:14:\"wp-super-cache\";i:2;s:14:\"wp-job-manager\";i:3;s:15:\"co-authors-plus\";}}', 'no'),
(69202, 'um_last_version_upgrade', '2.2.5', 'yes'),
(69203, 'um_first_activation_date', '1639083370', 'yes'),
(69204, 'um_version', '2.2.5', 'yes'),
(69205, '__ultimatemember_sitekey', 'ibc-cce.cl/wp-ePyJbmH9ikXFfQDx2tvI', 'yes'),
(69206, 'um_is_installed', '1', 'yes'),
(66902, '_transient_timeout_nimble_api_posts', '1639447776', 'no'),
(60563, '_transient_timeout_nimble_version_check_for_api', '1647743291', 'no'),
(60564, '_transient_nimble_version_check_for_api', '3.1.24_customizr', 'no'),
(71737, '_transient_timeout_jpp_li_eacccf21a8aa2234c3fc76c55b878324', '1639264818', 'no'),
(71738, '_transient_jpp_li_eacccf21a8aa2234c3fc76c55b878324', 'a:5:{s:6:\"status\";s:2:\"ok\";s:3:\"msg\";s:61:\"{\"trusted_header\":\"REMOTE_ADDR\",\"segments\":1,\"reverse\":false}\";s:17:\"seconds_remaining\";i:60;s:16:\"blocked_attempts\";s:3:\"379\";s:6:\"expire\";i:1639264818;}', 'no'),
(71739, '_transient_timeout_jpp_headers_updated_recently', '1639351158', 'no'),
(71740, '_transient_jpp_headers_updated_recently', '1', 'no'),
(71707, '_transient_timeout_jetpack_plugin_api_action_links_refresh', '1639334219', 'no'),
(71708, '_transient_jetpack_plugin_api_action_links_refresh', '1639247819', 'no'),
(67022, 'theme_mods_customizr-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:4:\"main\";i:21;}s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wpjy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(71862, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1639269246;s:7:\"checked\";a:10:{s:11:\"appointment\";s:5:\"2.5.5\";s:5:\"bhost\";s:5:\"1.3.7\";s:15:\"customizr-child\";s:3:\"1.0\";s:9:\"customizr\";s:6:\"4.4.19\";s:13:\"twentyfifteen\";s:3:\"1.6\";s:14:\"twentyfourteen\";s:3:\"1.8\";s:14:\"twentynineteen\";s:3:\"1.8\";s:13:\"twentysixteen\";s:3:\"1.3\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:8:{s:11:\"appointment\";a:6:{s:5:\"theme\";s:11:\"appointment\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:41:\"https://wordpress.org/themes/appointment/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/appointment.3.2.4.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:3:\"5.4\";}s:5:\"bhost\";a:6:{s:5:\"theme\";s:5:\"bhost\";s:11:\"new_version\";s:5:\"1.4.9\";s:3:\"url\";s:35:\"https://wordpress.org/themes/bhost/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/bhost.1.4.9.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"3.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.3.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentyfourteen\";a:6:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.3.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.5.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:9:\"customizr\";a:6:{s:5:\"theme\";s:9:\"customizr\";s:11:\"new_version\";s:6:\"4.4.19\";s:3:\"url\";s:39:\"https://wordpress.org/themes/customizr/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/customizr.4.4.19.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.3\";}}s:12:\"translations\";a:0:{}}', 'no'),
(71863, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1639269257;s:7:\"checked\";a:16:{s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:31:\"wp-from-email/wp-from-email.php\";s:5:\"1.2.1\";s:25:\"form-maker/form-maker.php\";s:6:\"1.14.3\";s:21:\"hello-dolly/hello.php\";s:5:\"1.7.2\";s:17:\"slider/slider.php\";s:5:\"2.3.3\";s:19:\"jetpack/jetpack.php\";s:5:\"9.2.2\";s:23:\"loginizer/loginizer.php\";s:5:\"1.6.7\";s:33:\"nimble-builder/nimble-builder.php\";s:6:\"3.1.24\";s:27:\"redirection/redirection.php\";s:5:\"5.1.3\";s:45:\"simple-local-avatars/simple-local-avatars.php\";s:5:\"2.2.0\";s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";s:5:\"5.4.2\";s:19:\"wpforms/wpforms.php\";s:5:\"1.7.1\";s:24:\"wpforms-lite/wpforms.php\";s:5:\"1.6.9\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"8.1.16\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.0.3\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.8.6\";}s:8:\"response\";a:9:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"form-maker/form-maker.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/form-maker\";s:4:\"slug\";s:10:\"form-maker\";s:6:\"plugin\";s:25:\"form-maker/form-maker.php\";s:11:\"new_version\";s:6:\"1.14.6\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/form-maker/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/form-maker.1.14.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/form-maker/assets/icon-256x256.png?rev=2068681\";s:2:\"1x\";s:63:\"https://ps.w.org/form-maker/assets/icon-128x128.png?rev=2068681\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/form-maker/assets/banner-1544x500.png?rev=2068681\";s:2:\"1x\";s:65:\"https://ps.w.org/form-maker/assets/banner-772x250.png?rev=2068681\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"loginizer/loginizer.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/loginizer\";s:4:\"slug\";s:9:\"loginizer\";s:6:\"plugin\";s:23:\"loginizer/loginizer.php\";s:11:\"new_version\";s:5:\"1.6.8\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/loginizer/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/loginizer.1.6.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/loginizer/assets/icon-256x256.png?rev=1381093\";s:2:\"1x\";s:62:\"https://ps.w.org/loginizer/assets/icon-128x128.png?rev=1381093\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/loginizer/assets/banner-1544x500.jpg?rev=1517954\";s:2:\"1x\";s:64:\"https://ps.w.org/loginizer/assets/banner-772x250.jpg?rev=1517954\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"nimble-builder/nimble-builder.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/nimble-builder\";s:4:\"slug\";s:14:\"nimble-builder\";s:6:\"plugin\";s:33:\"nimble-builder/nimble-builder.php\";s:11:\"new_version\";s:6:\"3.1.31\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/nimble-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/nimble-builder.3.1.31.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/nimble-builder/assets/icon-256x256.jpg?rev=1986014\";s:2:\"1x\";s:59:\"https://ps.w.org/nimble-builder/assets/icon.svg?rev=1986014\";s:3:\"svg\";s:59:\"https://ps.w.org/nimble-builder/assets/icon.svg?rev=1986014\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/nimble-builder/assets/banner-1544x500.jpg?rev=1986014\";s:2:\"1x\";s:69:\"https://ps.w.org/nimble-builder/assets/banner-772x250.jpg?rev=1986014\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:37:\"w.org/plugins/wordpress-popular-posts\";s:4:\"slug\";s:23:\"wordpress-popular-posts\";s:6:\"plugin\";s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";s:11:\"new_version\";s:5:\"5.5.0\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/wordpress-popular-posts/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/wordpress-popular-posts.5.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/wordpress-popular-posts/assets/icon-256x256.png?rev=1232659\";s:2:\"1x\";s:76:\"https://ps.w.org/wordpress-popular-posts/assets/icon-128x128.png?rev=1232659\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/wordpress-popular-posts/assets/banner-772x250.png?rev=2179381\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.7.1.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.7.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=2574201\";s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=2602491\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=2602491\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=2602491\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=2602491\";}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"8.1.19\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.gif?rev=2426404\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.gif?rev=2394385\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-google-maps/assets/banner-1544x500.png?rev=2230737\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.png?rev=2230737\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:31:\"wp-from-email/wp-from-email.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wp-from-email\";s:4:\"slug\";s:13:\"wp-from-email\";s:6:\"plugin\";s:31:\"wp-from-email/wp-from-email.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-from-email/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-from-email.1.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-from-email/assets/icon-256x256.png?rev=1783937\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-from-email/assets/icon-128x128.png?rev=1783937\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:21:\"hello-dolly/hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:21:\"hello-dolly/hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:4:\"10.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/jetpack.10.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=2638128\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}s:27:\"redirection/redirection.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/redirection\";s:4:\"slug\";s:11:\"redirection\";s:6:\"plugin\";s:27:\"redirection/redirection.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/redirection/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/redirection.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/redirection/assets/icon-256x256.jpg?rev=983639\";s:2:\"1x\";s:63:\"https://ps.w.org/redirection/assets/icon-128x128.jpg?rev=983640\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/redirection/assets/banner-1544x500.jpg?rev=983641\";s:2:\"1x\";s:65:\"https://ps.w.org/redirection/assets/banner-772x250.jpg?rev=983642\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:45:\"simple-local-avatars/simple-local-avatars.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/simple-local-avatars\";s:4:\"slug\";s:20:\"simple-local-avatars\";s:6:\"plugin\";s:45:\"simple-local-avatars/simple-local-avatars.php\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/simple-local-avatars/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/simple-local-avatars.2.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/simple-local-avatars/assets/icon-256x256.png?rev=2406995\";s:2:\"1x\";s:65:\"https://ps.w.org/simple-local-avatars/assets/icon.svg?rev=2406995\";s:3:\"svg\";s:65:\"https://ps.w.org/simple-local-avatars/assets/icon.svg?rev=2406995\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/simple-local-avatars/assets/banner-1544x500.jpg?rev=2406995\";s:2:\"1x\";s:75:\"https://ps.w.org/simple-local-avatars/assets/banner-772x250.jpg?rev=2406995\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'no'),
(69213, 'um_core_forms', 'a:3:{s:8:\"register\";i:373;s:5:\"login\";i:374;s:7:\"profile\";i:375;}', 'yes'),
(62769, '_site_transient_wpforms_t15s_wpforms', 'a:1:{s:12:\"translations\";a:6:{i:0;a:9:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2021-11-04T14:53:36+00:00\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:72:\"https://packages.translationspress.com/wpforms/wpforms/wpforms-fr_FR.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"fr\";}s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"wpforms\";}i:1;a:9:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2021-10-19T12:50:39+00:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:72:\"https://packages.translationspress.com/wpforms/wpforms/wpforms-de_DE.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"de\";}s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"wpforms\";}i:2;a:9:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2021-11-08T19:19:48+00:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:72:\"https://packages.translationspress.com/wpforms/wpforms/wpforms-it_IT.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"it\";i:1;s:3:\"ita\";}s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"wpforms\";}i:3;a:9:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2021-10-19T12:51:44+00:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:69:\"https://packages.translationspress.com/wpforms/wpforms/wpforms-ja.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"ja\";}s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"wpforms\";}i:4;a:9:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2021-10-19T12:51:57+00:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:72:\"https://packages.translationspress.com/wpforms/wpforms/wpforms-pt_BR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pt\";i:1;s:3:\"por\";}s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"wpforms\";}i:5;a:9:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2021-10-19T12:50:51+00:00\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:72:\"https://packages.translationspress.com/wpforms/wpforms/wpforms-es_ES.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"wpforms\";}}}', 'no'),
(56789, '_transient_wpforms_htaccess_file', 'a:3:{s:4:\"size\";i:760;s:5:\"mtime\";i:1632968908;s:5:\"ctime\";i:1632968908;}', 'yes'),
(56776, 'wpforms_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1609339301;s:9:\"dismissed\";b:1;}}', 'yes'),
(66897, '_site_transient_browser_b4088f046bf9a570f2964ffc86d258ff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.45\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_popularpostsdata`
--

DROP TABLE IF EXISTS `wpjy_popularpostsdata`;
CREATE TABLE `wpjy_popularpostsdata` (
  `postid` bigint(20) NOT NULL,
  `day` datetime NOT NULL,
  `last_viewed` datetime NOT NULL,
  `pageviews` bigint(20) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_popularpostsdata`
--

TRUNCATE TABLE `wpjy_popularpostsdata`;
--
-- Volcado de datos para la tabla `wpjy_popularpostsdata`
--

INSERT INTO `wpjy_popularpostsdata` (`postid`, `day`, `last_viewed`, `pageviews`) VALUES
(0, '2021-03-07 16:46:02', '2021-03-07 16:46:02', 1),
(2, '2021-01-22 06:10:12', '2021-08-28 18:17:30', 6),
(12, '2021-01-19 19:50:01', '2021-12-10 18:18:03', 282),
(20, '2021-01-23 03:44:42', '2021-12-09 17:44:46', 110),
(22, '2021-01-20 19:19:40', '2021-11-20 14:35:33', 105),
(24, '2021-01-25 12:16:00', '2021-12-09 14:52:17', 168),
(58, '2021-01-23 16:14:50', '2021-12-10 16:10:43', 17),
(136, '2021-01-22 15:25:04', '2021-11-22 13:45:50', 70),
(176, '2021-02-15 12:19:05', '2021-10-27 23:44:49', 29),
(201, '2021-01-19 16:49:01', '2021-12-02 22:53:18', 221),
(253, '2021-01-21 00:47:03', '2021-12-09 02:52:06', 76),
(256, '2021-01-20 06:08:04', '2021-12-03 19:33:14', 70),
(343, '2021-01-20 08:17:36', '2021-11-08 09:03:51', 14),
(354, '2021-09-30 12:06:15', '2021-12-09 23:03:42', 35),
(367, '2021-11-09 18:49:54', '2021-11-21 22:33:26', 3),
(379, '2021-12-09 17:29:30', '2021-12-09 17:31:55', 3),
(380, '2021-12-09 17:16:56', '2021-12-09 17:16:56', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_popularpostssummary`
--

DROP TABLE IF EXISTS `wpjy_popularpostssummary`;
CREATE TABLE `wpjy_popularpostssummary` (
  `ID` bigint(20) NOT NULL,
  `postid` bigint(20) NOT NULL,
  `pageviews` bigint(20) NOT NULL DEFAULT 1,
  `view_date` date NOT NULL,
  `view_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_popularpostssummary`
--

TRUNCATE TABLE `wpjy_popularpostssummary`;
--
-- Volcado de datos para la tabla `wpjy_popularpostssummary`
--

INSERT INTO `wpjy_popularpostssummary` (`ID`, `postid`, `pageviews`, `view_date`, `view_datetime`) VALUES
(1, 201, 1, '2021-01-19', '2021-01-19 16:49:01'),
(2, 201, 1, '2021-01-19', '2021-01-19 16:51:18'),
(3, 12, 1, '2021-01-19', '2021-01-19 19:50:01'),
(4, 201, 1, '2021-01-19', '2021-01-19 20:25:33'),
(5, 201, 1, '2021-01-19', '2021-01-19 20:29:31'),
(6, 256, 1, '2021-01-20', '2021-01-20 06:08:04'),
(7, 201, 1, '2021-01-20', '2021-01-20 08:17:27'),
(8, 343, 1, '2021-01-20', '2021-01-20 08:17:36'),
(9, 343, 1, '2021-01-20', '2021-01-20 08:19:37'),
(10, 343, 1, '2021-01-20', '2021-01-20 09:27:04'),
(11, 201, 1, '2021-01-20', '2021-01-20 15:32:58'),
(12, 201, 1, '2021-01-20', '2021-01-20 15:34:43'),
(13, 201, 1, '2021-01-20', '2021-01-20 16:40:31'),
(14, 201, 1, '2021-01-20', '2021-01-20 18:15:11'),
(15, 201, 1, '2021-01-20', '2021-01-20 18:20:34'),
(16, 22, 1, '2021-01-20', '2021-01-20 19:19:40'),
(17, 201, 1, '2021-01-20', '2021-01-20 21:32:44'),
(18, 201, 1, '2021-01-20', '2021-01-20 22:45:31'),
(19, 201, 1, '2021-01-20', '2021-01-20 22:46:19'),
(20, 201, 1, '2021-01-21', '2021-01-21 00:02:06'),
(21, 201, 1, '2021-01-21', '2021-01-21 00:14:21'),
(22, 201, 1, '2021-01-21', '2021-01-21 00:15:36'),
(23, 201, 1, '2021-01-21', '2021-01-21 00:15:38'),
(24, 201, 1, '2021-01-21', '2021-01-21 00:15:44'),
(25, 201, 1, '2021-01-21', '2021-01-21 00:25:22'),
(26, 201, 1, '2021-01-21', '2021-01-21 00:45:46'),
(27, 253, 1, '2021-01-21', '2021-01-21 00:47:03'),
(28, 253, 1, '2021-01-21', '2021-01-21 00:49:01'),
(29, 201, 1, '2021-01-21', '2021-01-21 00:59:43'),
(30, 201, 1, '2021-01-21', '2021-01-21 01:00:00'),
(31, 201, 1, '2021-01-21', '2021-01-21 08:42:07'),
(32, 12, 1, '2021-01-21', '2021-01-21 08:44:28'),
(33, 201, 1, '2021-01-21', '2021-01-21 14:04:38'),
(34, 343, 1, '2021-01-21', '2021-01-21 14:04:51'),
(35, 201, 1, '2021-01-21', '2021-01-21 14:05:52'),
(36, 343, 1, '2021-01-21', '2021-01-21 14:06:13'),
(37, 201, 1, '2021-01-21', '2021-01-21 19:32:56'),
(38, 201, 1, '2021-01-21', '2021-01-21 19:35:48'),
(39, 253, 1, '2021-01-21', '2021-01-21 21:50:30'),
(40, 201, 1, '2021-01-21', '2021-01-21 22:32:17'),
(41, 12, 1, '2021-01-22', '2021-01-22 02:56:21'),
(42, 2, 1, '2021-01-22', '2021-01-22 06:10:12'),
(43, 201, 1, '2021-01-22', '2021-01-22 13:57:39'),
(44, 136, 1, '2021-01-22', '2021-01-22 15:25:04'),
(45, 201, 1, '2021-01-22', '2021-01-22 18:23:20'),
(46, 20, 1, '2021-01-23', '2021-01-23 03:44:42'),
(47, 20, 1, '2021-01-23', '2021-01-23 04:18:05'),
(48, 12, 1, '2021-01-23', '2021-01-23 07:59:21'),
(49, 201, 1, '2021-01-23', '2021-01-23 07:59:57'),
(50, 12, 1, '2021-01-23', '2021-01-23 08:05:44'),
(51, 201, 1, '2021-01-23', '2021-01-23 09:27:20'),
(52, 136, 1, '2021-01-23', '2021-01-23 11:51:12'),
(53, 136, 1, '2021-01-23', '2021-01-23 12:03:33'),
(54, 12, 1, '2021-01-23', '2021-01-23 13:53:28'),
(55, 58, 1, '2021-01-23', '2021-01-23 16:14:50'),
(56, 201, 1, '2021-01-23', '2021-01-23 16:56:00'),
(57, 201, 1, '2021-01-23', '2021-01-23 17:29:22'),
(58, 201, 1, '2021-01-23', '2021-01-23 17:35:51'),
(59, 201, 1, '2021-01-23', '2021-01-23 17:39:16'),
(60, 201, 1, '2021-01-23', '2021-01-23 17:40:22'),
(61, 201, 1, '2021-01-23', '2021-01-23 17:40:57'),
(62, 201, 1, '2021-01-23', '2021-01-23 17:54:20'),
(63, 201, 1, '2021-01-23', '2021-01-23 21:29:41'),
(64, 201, 1, '2021-01-23', '2021-01-23 23:17:35'),
(65, 201, 1, '2021-01-23', '2021-01-23 23:18:04'),
(66, 201, 1, '2021-01-23', '2021-01-23 23:22:33'),
(67, 201, 1, '2021-01-23', '2021-01-23 23:36:39'),
(68, 201, 1, '2021-01-23', '2021-01-23 23:40:13'),
(69, 201, 1, '2021-01-24', '2021-01-24 10:25:09'),
(70, 201, 1, '2021-01-24', '2021-01-24 11:03:32'),
(71, 256, 1, '2021-01-24', '2021-01-24 11:20:16'),
(72, 201, 1, '2021-01-24', '2021-01-24 11:21:38'),
(73, 201, 1, '2021-01-24', '2021-01-24 11:28:19'),
(74, 201, 1, '2021-01-24', '2021-01-24 11:56:50'),
(75, 22, 1, '2021-01-24', '2021-01-24 12:27:25'),
(76, 253, 1, '2021-01-24', '2021-01-24 12:29:10'),
(77, 253, 1, '2021-01-24', '2021-01-24 12:30:29'),
(78, 253, 1, '2021-01-24', '2021-01-24 12:30:37'),
(79, 22, 1, '2021-01-24', '2021-01-24 12:31:31'),
(80, 22, 1, '2021-01-24', '2021-01-24 16:28:12'),
(81, 201, 1, '2021-01-24', '2021-01-24 18:54:06'),
(82, 201, 1, '2021-01-24', '2021-01-24 21:49:09'),
(83, 343, 1, '2021-01-24', '2021-01-24 21:50:43'),
(84, 201, 1, '2021-01-24', '2021-01-24 22:41:53'),
(85, 201, 1, '2021-01-25', '2021-01-25 00:19:57'),
(86, 201, 1, '2021-01-25', '2021-01-25 08:49:38'),
(87, 201, 1, '2021-01-25', '2021-01-25 08:50:33'),
(88, 136, 1, '2021-01-25', '2021-01-25 09:06:46'),
(89, 201, 1, '2021-01-25', '2021-01-25 09:07:29'),
(90, 201, 1, '2021-01-25', '2021-01-25 09:21:31'),
(91, 201, 1, '2021-01-25', '2021-01-25 11:02:55'),
(92, 201, 1, '2021-01-25', '2021-01-25 11:03:51'),
(93, 201, 1, '2021-01-25', '2021-01-25 11:04:56'),
(94, 24, 1, '2021-01-25', '2021-01-25 12:16:00'),
(95, 201, 1, '2021-01-25', '2021-01-25 12:27:42'),
(96, 343, 1, '2021-01-25', '2021-01-25 12:30:48'),
(97, 201, 1, '2021-01-25', '2021-01-25 12:31:08'),
(98, 201, 1, '2021-01-25', '2021-01-25 13:32:35'),
(99, 201, 1, '2021-01-25', '2021-01-25 13:32:51'),
(100, 201, 1, '2021-01-25', '2021-01-25 13:39:11'),
(101, 201, 1, '2021-01-25', '2021-01-25 13:40:46'),
(102, 201, 1, '2021-01-25', '2021-01-25 14:25:26'),
(103, 201, 1, '2021-01-25', '2021-01-25 14:27:18'),
(104, 201, 1, '2021-01-25', '2021-01-25 15:10:25'),
(105, 201, 1, '2021-01-25', '2021-01-25 15:10:44'),
(106, 201, 1, '2021-01-25', '2021-01-25 15:17:03'),
(107, 201, 1, '2021-01-25', '2021-01-25 17:13:22'),
(108, 343, 1, '2021-01-25', '2021-01-25 17:13:39'),
(109, 201, 1, '2021-01-25', '2021-01-25 17:13:52'),
(110, 201, 1, '2021-01-25', '2021-01-25 17:13:59'),
(111, 201, 1, '2021-01-25', '2021-01-25 17:33:35'),
(112, 201, 1, '2021-01-25', '2021-01-25 17:45:36'),
(113, 201, 1, '2021-01-25', '2021-01-25 18:09:34'),
(114, 201, 1, '2021-01-25', '2021-01-25 18:16:40'),
(115, 201, 1, '2021-01-25', '2021-01-25 18:18:30'),
(116, 201, 1, '2021-01-25', '2021-01-25 18:47:58'),
(117, 201, 1, '2021-01-25', '2021-01-25 18:48:28'),
(118, 201, 1, '2021-01-25', '2021-01-25 18:53:43'),
(119, 201, 1, '2021-01-25', '2021-01-25 18:58:45'),
(120, 201, 1, '2021-01-25', '2021-01-25 18:59:55'),
(121, 201, 1, '2021-01-25', '2021-01-25 19:00:11'),
(122, 201, 1, '2021-01-25', '2021-01-25 19:10:20'),
(123, 343, 1, '2021-01-25', '2021-01-25 19:11:09'),
(124, 201, 1, '2021-01-25', '2021-01-25 19:11:17'),
(125, 201, 1, '2021-01-25', '2021-01-25 19:32:34'),
(126, 201, 1, '2021-01-25', '2021-01-25 19:36:35'),
(127, 201, 1, '2021-01-25', '2021-01-25 19:37:32'),
(128, 201, 1, '2021-01-25', '2021-01-25 19:47:10'),
(129, 201, 1, '2021-01-25', '2021-01-25 19:48:23'),
(130, 201, 1, '2021-01-25', '2021-01-25 19:57:20'),
(131, 201, 1, '2021-01-25', '2021-01-25 19:58:01'),
(132, 201, 1, '2021-01-25', '2021-01-25 20:03:02'),
(133, 201, 1, '2021-01-25', '2021-01-25 20:05:46'),
(134, 201, 1, '2021-01-25', '2021-01-25 20:06:09'),
(135, 201, 1, '2021-01-25', '2021-01-25 20:13:08'),
(136, 201, 1, '2021-01-25', '2021-01-25 20:18:01'),
(137, 201, 1, '2021-01-25', '2021-01-25 20:27:01'),
(138, 136, 1, '2021-01-25', '2021-01-25 21:22:39'),
(139, 253, 1, '2021-01-25', '2021-01-25 21:23:01'),
(140, 256, 1, '2021-01-25', '2021-01-25 21:23:15'),
(141, 22, 1, '2021-01-25', '2021-01-25 21:23:59'),
(142, 201, 1, '2021-01-25', '2021-01-25 21:24:08'),
(143, 58, 1, '2021-01-25', '2021-01-25 21:25:46'),
(144, 24, 1, '2021-01-26', '2021-01-26 06:50:24'),
(145, 22, 1, '2021-01-26', '2021-01-26 06:55:09'),
(146, 201, 1, '2021-01-26', '2021-01-26 07:31:16'),
(147, 201, 1, '2021-01-26', '2021-01-26 13:57:46'),
(148, 201, 1, '2021-01-26', '2021-01-26 15:52:39'),
(149, 201, 1, '2021-01-26', '2021-01-26 22:09:10'),
(150, 253, 1, '2021-01-27', '2021-01-27 08:50:31'),
(151, 201, 1, '2021-01-27', '2021-01-27 13:37:06'),
(152, 136, 1, '2021-01-28', '2021-01-28 00:32:46'),
(153, 256, 1, '2021-01-28', '2021-01-28 09:10:31'),
(154, 201, 1, '2021-01-28', '2021-01-28 16:05:55'),
(155, 256, 1, '2021-01-28', '2021-01-28 17:52:12'),
(156, 136, 1, '2021-01-29', '2021-01-29 03:32:14'),
(157, 12, 1, '2021-01-29', '2021-01-29 03:38:59'),
(158, 20, 1, '2021-01-29', '2021-01-29 03:44:49'),
(159, 12, 1, '2021-01-29', '2021-01-29 05:04:40'),
(160, 12, 1, '2021-01-29', '2021-01-29 07:16:56'),
(161, 201, 1, '2021-01-29', '2021-01-29 10:39:38'),
(162, 22, 1, '2021-01-29', '2021-01-29 14:44:55'),
(163, 136, 1, '2021-01-29', '2021-01-29 16:38:36'),
(164, 20, 1, '2021-01-29', '2021-01-29 16:38:40'),
(165, 20, 1, '2021-01-29', '2021-01-29 16:57:58'),
(166, 201, 1, '2021-01-29', '2021-01-29 20:25:21'),
(167, 12, 1, '2021-01-29', '2021-01-29 20:45:40'),
(168, 253, 1, '2021-01-29', '2021-01-29 20:46:31'),
(169, 256, 1, '2021-01-29', '2021-01-29 20:46:46'),
(170, 22, 1, '2021-01-29', '2021-01-29 20:47:46'),
(171, 22, 1, '2021-01-30', '2021-01-30 01:35:26'),
(172, 12, 1, '2021-01-30', '2021-01-30 01:35:32'),
(173, 201, 1, '2021-01-30', '2021-01-30 06:13:17'),
(174, 253, 1, '2021-01-30', '2021-01-30 09:28:17'),
(175, 20, 1, '2021-01-30', '2021-01-30 09:52:30'),
(176, 24, 1, '2021-01-30', '2021-01-30 14:05:37'),
(177, 256, 1, '2021-01-30', '2021-01-30 15:48:59'),
(178, 24, 1, '2021-01-30', '2021-01-30 22:17:05'),
(179, 136, 1, '2021-01-31', '2021-01-31 14:33:38'),
(180, 256, 1, '2021-01-31', '2021-01-31 15:22:58'),
(181, 12, 1, '2021-01-31', '2021-01-31 15:23:31'),
(182, 253, 1, '2021-01-31', '2021-01-31 15:23:46'),
(183, 20, 1, '2021-01-31', '2021-01-31 15:30:04'),
(184, 201, 1, '2021-01-31', '2021-01-31 15:58:31'),
(185, 24, 1, '2021-01-31', '2021-01-31 17:34:17'),
(186, 256, 1, '2021-01-31', '2021-01-31 18:00:53'),
(187, 201, 1, '2021-01-31', '2021-01-31 23:24:42'),
(188, 22, 1, '2021-02-01', '2021-02-01 11:10:50'),
(189, 253, 1, '2021-02-01', '2021-02-01 17:14:19'),
(190, 12, 1, '2021-02-01', '2021-02-01 20:28:51'),
(191, 256, 1, '2021-02-01', '2021-02-01 21:07:10'),
(192, 256, 1, '2021-02-02', '2021-02-02 00:36:28'),
(193, 20, 1, '2021-02-02', '2021-02-02 07:43:08'),
(194, 12, 1, '2021-02-02', '2021-02-02 08:08:44'),
(195, 22, 1, '2021-02-02', '2021-02-02 09:06:05'),
(196, 20, 1, '2021-02-02', '2021-02-02 09:19:13'),
(197, 136, 1, '2021-02-02', '2021-02-02 10:31:33'),
(198, 136, 1, '2021-02-02', '2021-02-02 13:11:01'),
(199, 24, 1, '2021-02-02', '2021-02-02 20:28:34'),
(200, 253, 1, '2021-02-03', '2021-02-03 06:19:02'),
(201, 253, 1, '2021-02-03', '2021-02-03 06:20:37'),
(202, 22, 1, '2021-02-03', '2021-02-03 06:21:06'),
(203, 201, 1, '2021-02-03', '2021-02-03 08:20:14'),
(204, 201, 1, '2021-02-03', '2021-02-03 08:30:22'),
(205, 22, 1, '2021-02-03', '2021-02-03 15:08:43'),
(206, 20, 1, '2021-02-03', '2021-02-03 15:15:42'),
(207, 12, 1, '2021-02-03', '2021-02-03 19:56:26'),
(208, 12, 1, '2021-02-03', '2021-02-03 20:18:25'),
(209, 12, 1, '2021-02-03', '2021-02-03 20:22:33'),
(210, 22, 1, '2021-02-03', '2021-02-03 21:22:14'),
(211, 256, 1, '2021-02-04', '2021-02-04 02:14:25'),
(212, 22, 1, '2021-02-04', '2021-02-04 04:43:34'),
(213, 201, 1, '2021-02-04', '2021-02-04 11:06:52'),
(214, 253, 1, '2021-02-04', '2021-02-04 19:42:14'),
(215, 12, 1, '2021-02-05', '2021-02-05 14:14:34'),
(216, 201, 1, '2021-02-05', '2021-02-05 22:41:53'),
(217, 136, 1, '2021-02-05', '2021-02-05 22:41:55'),
(218, 12, 1, '2021-02-05', '2021-02-05 22:45:21'),
(219, 12, 1, '2021-02-06', '2021-02-06 00:55:43'),
(220, 201, 1, '2021-02-06', '2021-02-06 01:08:14'),
(221, 12, 1, '2021-02-06', '2021-02-06 01:08:35'),
(222, 253, 1, '2021-02-06', '2021-02-06 01:08:43'),
(223, 12, 1, '2021-02-06', '2021-02-06 01:09:08'),
(224, 20, 1, '2021-02-06', '2021-02-06 15:58:00'),
(225, 20, 1, '2021-02-06', '2021-02-06 21:20:26'),
(226, 201, 1, '2021-02-07', '2021-02-07 11:59:55'),
(227, 201, 1, '2021-02-07', '2021-02-07 13:01:49'),
(228, 201, 1, '2021-02-08', '2021-02-08 17:44:15'),
(229, 256, 1, '2021-02-09', '2021-02-09 08:39:38'),
(230, 201, 1, '2021-02-09', '2021-02-09 10:28:33'),
(231, 136, 1, '2021-02-09', '2021-02-09 13:19:01'),
(232, 256, 1, '2021-02-09', '2021-02-09 15:04:34'),
(233, 136, 1, '2021-02-09', '2021-02-09 16:13:57'),
(234, 12, 1, '2021-02-09', '2021-02-09 23:52:27'),
(235, 256, 1, '2021-02-10', '2021-02-10 04:52:26'),
(236, 22, 1, '2021-02-10', '2021-02-10 05:37:01'),
(237, 136, 1, '2021-02-10', '2021-02-10 06:22:03'),
(238, 256, 1, '2021-02-10', '2021-02-10 12:53:18'),
(239, 201, 1, '2021-02-10', '2021-02-10 14:24:09'),
(240, 201, 1, '2021-02-10', '2021-02-10 15:27:25'),
(241, 201, 1, '2021-02-10', '2021-02-10 15:31:39'),
(242, 2, 1, '2021-02-10', '2021-02-10 18:24:40'),
(243, 12, 1, '2021-02-11', '2021-02-11 09:44:22'),
(244, 256, 1, '2021-02-11', '2021-02-11 10:24:12'),
(245, 12, 1, '2021-02-11', '2021-02-11 20:03:34'),
(246, 12, 1, '2021-02-12', '2021-02-12 00:07:06'),
(247, 256, 1, '2021-02-12', '2021-02-12 13:52:00'),
(248, 256, 1, '2021-02-12', '2021-02-12 17:50:54'),
(249, 136, 1, '2021-02-12', '2021-02-12 23:54:15'),
(250, 256, 1, '2021-02-13', '2021-02-13 05:00:35'),
(251, 136, 1, '2021-02-13', '2021-02-13 10:41:26'),
(252, 136, 1, '2021-02-13', '2021-02-13 11:48:40'),
(253, 256, 1, '2021-02-13', '2021-02-13 17:18:23'),
(254, 201, 1, '2021-02-13', '2021-02-13 20:36:15'),
(255, 20, 1, '2021-02-13', '2021-02-13 21:49:04'),
(256, 136, 1, '2021-02-14', '2021-02-14 06:46:53'),
(257, 136, 1, '2021-02-14', '2021-02-14 06:52:07'),
(258, 256, 1, '2021-02-14', '2021-02-14 07:04:38'),
(259, 2, 1, '2021-02-14', '2021-02-14 12:52:13'),
(260, 20, 1, '2021-02-15', '2021-02-15 03:30:29'),
(261, 24, 1, '2021-02-15', '2021-02-15 10:10:23'),
(262, 176, 1, '2021-02-15', '2021-02-15 12:19:05'),
(263, 136, 1, '2021-02-16', '2021-02-16 14:32:07'),
(264, 176, 1, '2021-02-16', '2021-02-16 14:40:52'),
(265, 12, 1, '2021-02-16', '2021-02-16 16:28:03'),
(266, 201, 1, '2021-02-16', '2021-02-16 16:57:19'),
(267, 12, 1, '2021-02-16', '2021-02-16 19:58:32'),
(268, 253, 1, '2021-02-16', '2021-02-16 21:23:55'),
(269, 22, 1, '2021-02-17', '2021-02-17 03:16:40'),
(270, 136, 1, '2021-02-17', '2021-02-17 04:35:32'),
(271, 20, 1, '2021-02-17', '2021-02-17 09:39:28'),
(272, 12, 1, '2021-02-17', '2021-02-17 12:07:04'),
(273, 12, 1, '2021-02-17', '2021-02-17 18:04:19'),
(274, 12, 1, '2021-02-18', '2021-02-18 04:01:24'),
(275, 20, 1, '2021-02-18', '2021-02-18 07:58:12'),
(276, 22, 1, '2021-02-18', '2021-02-18 09:57:41'),
(277, 253, 1, '2021-02-18', '2021-02-18 13:41:23'),
(278, 201, 1, '2021-02-18', '2021-02-18 21:05:27'),
(279, 136, 1, '2021-02-19', '2021-02-19 03:16:02'),
(280, 22, 1, '2021-02-19', '2021-02-19 05:24:46'),
(281, 201, 1, '2021-02-19', '2021-02-19 16:45:49'),
(282, 136, 1, '2021-02-19', '2021-02-19 23:48:25'),
(283, 201, 1, '2021-02-20', '2021-02-20 21:03:56'),
(284, 22, 1, '2021-02-23', '2021-02-23 16:31:02'),
(285, 12, 1, '2021-02-24', '2021-02-24 02:43:55'),
(286, 12, 1, '2021-02-24', '2021-02-24 02:44:01'),
(287, 22, 1, '2021-02-26', '2021-02-26 19:27:20'),
(288, 176, 1, '2021-02-28', '2021-02-28 15:05:11'),
(289, 22, 1, '2021-02-28', '2021-02-28 15:05:53'),
(290, 256, 1, '2021-02-28', '2021-02-28 15:08:55'),
(291, 12, 1, '2021-02-28', '2021-02-28 15:09:22'),
(292, 201, 1, '2021-02-28', '2021-02-28 19:37:10'),
(293, 22, 1, '2021-03-01', '2021-03-01 12:05:46'),
(294, 22, 1, '2021-03-01', '2021-03-01 12:43:04'),
(295, 22, 1, '2021-03-02', '2021-03-02 10:26:35'),
(296, 12, 1, '2021-03-02', '2021-03-02 10:28:31'),
(297, 256, 1, '2021-03-02', '2021-03-02 10:30:16'),
(298, 253, 1, '2021-03-02', '2021-03-02 10:30:41'),
(299, 201, 1, '2021-03-03', '2021-03-03 15:55:53'),
(300, 12, 1, '2021-03-05', '2021-03-05 11:19:12'),
(301, 12, 1, '2021-03-05', '2021-03-05 19:14:46'),
(302, 253, 1, '2021-03-05', '2021-03-05 19:15:16'),
(303, 22, 1, '2021-03-05', '2021-03-05 19:15:46'),
(304, 201, 1, '2021-03-06', '2021-03-06 14:51:44'),
(305, 12, 1, '2021-03-06', '2021-03-06 14:55:47'),
(306, 256, 1, '2021-03-06', '2021-03-06 15:08:55'),
(307, 24, 1, '2021-03-06', '2021-03-06 15:15:27'),
(308, 22, 1, '2021-03-06', '2021-03-06 15:16:06'),
(309, 253, 1, '2021-03-06', '2021-03-06 15:17:11'),
(310, 58, 1, '2021-03-06', '2021-03-06 15:18:07'),
(311, 58, 1, '2021-03-06', '2021-03-06 15:18:11'),
(312, 20, 1, '2021-03-06', '2021-03-06 21:24:51'),
(313, 20, 1, '2021-03-06', '2021-03-06 21:26:54'),
(314, 256, 1, '2021-03-06', '2021-03-06 21:27:08'),
(315, 253, 1, '2021-03-06', '2021-03-06 21:27:43'),
(316, 12, 1, '2021-03-06', '2021-03-06 21:28:03'),
(317, 20, 1, '2021-03-06', '2021-03-06 22:04:32'),
(318, 0, 1, '2021-03-07', '2021-03-07 16:46:02'),
(319, 136, 1, '2021-03-07', '2021-03-07 17:47:57'),
(320, 22, 1, '2021-03-07', '2021-03-07 17:48:32'),
(321, 201, 1, '2021-03-07', '2021-03-07 17:50:50'),
(322, 22, 1, '2021-03-07', '2021-03-07 17:51:36'),
(323, 12, 1, '2021-03-07', '2021-03-07 17:52:01'),
(324, 253, 1, '2021-03-07', '2021-03-07 17:52:37'),
(325, 253, 1, '2021-03-07', '2021-03-07 18:07:52'),
(326, 201, 1, '2021-03-08', '2021-03-08 15:47:32'),
(327, 201, 1, '2021-03-08', '2021-03-08 20:01:05'),
(328, 136, 1, '2021-03-08', '2021-03-08 22:10:29'),
(329, 253, 1, '2021-03-08', '2021-03-08 22:10:42'),
(330, 22, 1, '2021-03-08', '2021-03-08 22:11:06'),
(331, 201, 1, '2021-03-10', '2021-03-10 14:13:44'),
(332, 343, 1, '2021-03-11', '2021-03-11 11:34:56'),
(333, 12, 1, '2021-03-11', '2021-03-11 15:40:20'),
(334, 22, 1, '2021-03-11', '2021-03-11 20:49:16'),
(335, 253, 1, '2021-03-11', '2021-03-11 20:50:04'),
(336, 253, 1, '2021-03-11', '2021-03-11 20:53:57'),
(337, 253, 1, '2021-03-11', '2021-03-11 20:54:08'),
(338, 22, 1, '2021-03-11', '2021-03-11 20:54:23'),
(339, 253, 1, '2021-03-11', '2021-03-11 20:56:07'),
(340, 253, 1, '2021-03-11', '2021-03-11 20:57:36'),
(341, 256, 1, '2021-03-11', '2021-03-11 20:57:47'),
(342, 22, 1, '2021-03-11', '2021-03-11 20:59:30'),
(343, 12, 1, '2021-03-12', '2021-03-12 15:13:06'),
(344, 12, 1, '2021-03-12', '2021-03-12 15:25:36'),
(345, 12, 1, '2021-03-12', '2021-03-12 15:26:15'),
(346, 12, 1, '2021-03-12', '2021-03-12 15:26:39'),
(347, 12, 1, '2021-03-16', '2021-03-16 16:49:13'),
(348, 12, 1, '2021-03-18', '2021-03-18 11:45:25'),
(349, 12, 1, '2021-03-18', '2021-03-18 20:38:46'),
(350, 22, 1, '2021-03-19', '2021-03-19 09:22:57'),
(351, 176, 1, '2021-03-19', '2021-03-19 09:23:44'),
(352, 22, 1, '2021-03-19', '2021-03-19 09:24:57'),
(353, 24, 1, '2021-03-19', '2021-03-19 09:30:21'),
(354, 343, 1, '2021-03-19', '2021-03-19 17:41:12'),
(355, 12, 1, '2021-03-19', '2021-03-19 21:19:33'),
(356, 201, 1, '2021-03-19', '2021-03-19 21:28:55'),
(357, 201, 1, '2021-03-20', '2021-03-20 23:16:40'),
(358, 201, 1, '2021-03-20', '2021-03-20 23:17:31'),
(359, 201, 1, '2021-03-20', '2021-03-20 23:17:37'),
(360, 201, 1, '2021-03-20', '2021-03-20 23:17:40'),
(361, 20, 1, '2021-03-21', '2021-03-21 02:37:54'),
(362, 256, 1, '2021-03-21', '2021-03-21 03:25:32'),
(363, 20, 1, '2021-03-21', '2021-03-21 03:38:18'),
(364, 201, 1, '2021-03-21', '2021-03-21 04:15:45'),
(365, 22, 1, '2021-03-21', '2021-03-21 04:40:47'),
(366, 24, 1, '2021-03-21', '2021-03-21 05:44:05'),
(367, 12, 1, '2021-03-21', '2021-03-21 08:02:38'),
(368, 201, 1, '2021-03-21', '2021-03-21 09:59:50'),
(369, 253, 1, '2021-03-21', '2021-03-21 10:18:55'),
(370, 22, 1, '2021-03-21', '2021-03-21 11:13:19'),
(371, 24, 1, '2021-03-21', '2021-03-21 11:57:55'),
(372, 20, 1, '2021-03-21', '2021-03-21 14:31:24'),
(373, 22, 1, '2021-03-21', '2021-03-21 15:02:02'),
(374, 201, 1, '2021-03-21', '2021-03-21 16:03:43'),
(375, 12, 1, '2021-03-21', '2021-03-21 16:53:57'),
(376, 176, 1, '2021-03-21', '2021-03-21 21:23:02'),
(377, 256, 1, '2021-03-22', '2021-03-22 03:36:51'),
(378, 176, 1, '2021-03-22', '2021-03-22 06:39:44'),
(379, 201, 1, '2021-03-22', '2021-03-22 07:39:56'),
(380, 136, 1, '2021-03-22', '2021-03-22 08:39:18'),
(381, 2, 1, '2021-03-22', '2021-03-22 11:37:29'),
(382, 256, 1, '2021-03-22', '2021-03-22 12:53:26'),
(383, 176, 1, '2021-03-22', '2021-03-22 14:16:59'),
(384, 20, 1, '2021-03-22', '2021-03-22 15:33:24'),
(385, 2, 1, '2021-03-22', '2021-03-22 21:57:37'),
(386, 253, 1, '2021-03-22', '2021-03-22 22:04:37'),
(387, 176, 1, '2021-03-22', '2021-03-22 22:37:45'),
(388, 256, 1, '2021-03-23', '2021-03-23 00:31:14'),
(389, 12, 1, '2021-03-23', '2021-03-23 13:22:11'),
(390, 20, 1, '2021-03-23', '2021-03-23 13:36:18'),
(391, 136, 1, '2021-03-23', '2021-03-23 17:16:26'),
(392, 136, 1, '2021-03-23', '2021-03-23 17:56:01'),
(393, 58, 1, '2021-03-23', '2021-03-23 18:38:02'),
(394, 256, 1, '2021-03-23', '2021-03-23 18:43:50'),
(395, 12, 1, '2021-03-23', '2021-03-23 19:58:53'),
(396, 12, 1, '2021-03-23', '2021-03-23 21:32:17'),
(397, 20, 1, '2021-03-24', '2021-03-24 00:43:11'),
(398, 24, 1, '2021-03-24', '2021-03-24 02:23:56'),
(399, 22, 1, '2021-03-24', '2021-03-24 02:24:13'),
(400, 136, 1, '2021-03-24', '2021-03-24 03:21:25'),
(401, 20, 1, '2021-03-24', '2021-03-24 03:51:30'),
(402, 136, 1, '2021-03-24', '2021-03-24 06:26:48'),
(403, 12, 1, '2021-03-24', '2021-03-24 08:34:30'),
(404, 12, 1, '2021-03-24', '2021-03-24 11:29:49'),
(405, 20, 1, '2021-03-24', '2021-03-24 11:38:50'),
(406, 12, 1, '2021-03-24', '2021-03-24 12:14:33'),
(407, 12, 1, '2021-03-24', '2021-03-24 13:16:31'),
(408, 12, 1, '2021-03-24', '2021-03-24 13:42:00'),
(409, 253, 1, '2021-03-24', '2021-03-24 14:02:05'),
(410, 12, 1, '2021-03-24', '2021-03-24 14:02:36'),
(411, 12, 1, '2021-03-24', '2021-03-24 17:28:43'),
(412, 20, 1, '2021-03-25', '2021-03-25 07:00:46'),
(413, 12, 1, '2021-03-25', '2021-03-25 07:13:36'),
(414, 256, 1, '2021-03-25', '2021-03-25 07:14:26'),
(415, 256, 1, '2021-03-25', '2021-03-25 07:14:52'),
(416, 12, 1, '2021-03-25', '2021-03-25 07:15:14'),
(417, 12, 1, '2021-03-25', '2021-03-25 07:15:28'),
(418, 24, 1, '2021-03-25', '2021-03-25 07:15:42'),
(419, 201, 1, '2021-03-25', '2021-03-25 10:02:08'),
(420, 20, 1, '2021-03-25', '2021-03-25 14:26:23'),
(421, 12, 1, '2021-03-25', '2021-03-25 17:29:22'),
(422, 201, 1, '2021-03-25', '2021-03-25 19:20:00'),
(423, 24, 1, '2021-03-25', '2021-03-25 20:52:40'),
(424, 256, 1, '2021-03-26', '2021-03-26 01:40:12'),
(425, 12, 1, '2021-03-26', '2021-03-26 05:32:18'),
(426, 20, 1, '2021-03-26', '2021-03-26 06:03:02'),
(427, 24, 1, '2021-03-26', '2021-03-26 20:35:50'),
(428, 20, 1, '2021-03-27', '2021-03-27 00:46:28'),
(429, 12, 1, '2021-03-27', '2021-03-27 09:38:53'),
(430, 20, 1, '2021-03-27', '2021-03-27 09:43:16'),
(431, 24, 1, '2021-03-27', '2021-03-27 13:07:24'),
(432, 12, 1, '2021-03-27', '2021-03-27 13:24:01'),
(433, 22, 1, '2021-03-27', '2021-03-27 18:38:31'),
(434, 20, 1, '2021-03-27', '2021-03-27 19:45:29'),
(435, 24, 1, '2021-03-27', '2021-03-27 21:59:27'),
(436, 20, 1, '2021-03-28', '2021-03-28 01:39:15'),
(437, 22, 1, '2021-03-28', '2021-03-28 03:55:44'),
(438, 12, 1, '2021-03-28', '2021-03-28 04:30:36'),
(439, 20, 1, '2021-03-28', '2021-03-28 04:49:34'),
(440, 20, 1, '2021-03-29', '2021-03-29 05:43:41'),
(441, 24, 1, '2021-03-29', '2021-03-29 21:05:24'),
(442, 24, 1, '2021-03-29', '2021-03-29 21:51:06'),
(443, 201, 1, '2021-03-31', '2021-03-31 12:32:33'),
(444, 12, 1, '2021-03-31', '2021-03-31 22:20:02'),
(445, 176, 1, '2021-04-03', '2021-04-03 12:15:10'),
(446, 12, 1, '2021-04-03', '2021-04-03 12:15:19'),
(447, 201, 1, '2021-04-03', '2021-04-03 12:17:38'),
(448, 253, 1, '2021-04-03', '2021-04-03 12:17:58'),
(449, 22, 1, '2021-04-06', '2021-04-06 14:05:03'),
(450, 24, 1, '2021-04-08', '2021-04-08 00:09:03'),
(451, 24, 1, '2021-04-08', '2021-04-08 00:10:04'),
(452, 201, 1, '2021-04-08', '2021-04-08 21:58:26'),
(453, 20, 1, '2021-04-09', '2021-04-09 13:59:48'),
(454, 253, 1, '2021-04-09', '2021-04-09 14:00:36'),
(455, 12, 1, '2021-04-10', '2021-04-10 09:09:40'),
(456, 20, 1, '2021-04-11', '2021-04-11 01:32:44'),
(457, 12, 1, '2021-04-11', '2021-04-11 01:33:50'),
(458, 20, 1, '2021-04-11', '2021-04-11 04:17:30'),
(459, 20, 1, '2021-04-12', '2021-04-12 23:25:46'),
(460, 201, 1, '2021-04-13', '2021-04-13 19:23:28'),
(461, 201, 1, '2021-04-13', '2021-04-13 19:23:35'),
(462, 253, 1, '2021-04-14', '2021-04-14 21:17:12'),
(463, 256, 1, '2021-04-14', '2021-04-14 21:17:22'),
(464, 12, 1, '2021-04-14', '2021-04-14 21:17:38'),
(465, 12, 1, '2021-04-15', '2021-04-15 21:30:56'),
(466, 12, 1, '2021-04-15', '2021-04-15 21:31:02'),
(467, 256, 1, '2021-04-15', '2021-04-15 21:31:50'),
(468, 253, 1, '2021-04-15', '2021-04-15 21:32:12'),
(469, 12, 1, '2021-04-15', '2021-04-15 21:32:20'),
(470, 253, 1, '2021-04-15', '2021-04-15 21:35:00'),
(471, 176, 1, '2021-04-15', '2021-04-15 21:36:35'),
(472, 201, 1, '2021-04-15', '2021-04-15 21:36:37'),
(473, 176, 1, '2021-04-15', '2021-04-15 21:36:42'),
(474, 201, 1, '2021-04-15', '2021-04-15 21:36:49'),
(475, 12, 1, '2021-04-15', '2021-04-15 21:37:39'),
(476, 253, 1, '2021-04-15', '2021-04-15 21:37:47'),
(477, 24, 1, '2021-04-16', '2021-04-16 20:20:05'),
(478, 12, 1, '2021-04-19', '2021-04-19 23:59:34'),
(479, 253, 1, '2021-04-20', '2021-04-20 00:18:34'),
(480, 176, 1, '2021-04-20', '2021-04-20 00:19:20'),
(481, 201, 1, '2021-04-20', '2021-04-20 00:20:08'),
(482, 12, 1, '2021-04-20', '2021-04-20 01:48:31'),
(483, 12, 1, '2021-04-20', '2021-04-20 03:45:58'),
(484, 253, 1, '2021-04-20', '2021-04-20 03:46:16'),
(485, 201, 1, '2021-04-22', '2021-04-22 19:26:57'),
(486, 201, 1, '2021-04-23', '2021-04-23 13:44:59'),
(487, 201, 1, '2021-04-23', '2021-04-23 21:09:17'),
(488, 201, 1, '2021-04-23', '2021-04-23 21:09:29'),
(489, 12, 1, '2021-04-24', '2021-04-24 10:03:44'),
(490, 201, 1, '2021-04-26', '2021-04-26 09:21:06'),
(491, 201, 1, '2021-04-27', '2021-04-27 15:02:34'),
(492, 201, 1, '2021-04-28', '2021-04-28 09:26:54'),
(493, 12, 1, '2021-04-28', '2021-04-28 16:05:17'),
(494, 201, 1, '2021-04-30', '2021-04-30 00:02:42'),
(495, 201, 1, '2021-05-01', '2021-05-01 22:25:22'),
(496, 12, 1, '2021-05-02', '2021-05-02 15:51:47'),
(497, 12, 1, '2021-05-04', '2021-05-04 22:32:33'),
(498, 253, 1, '2021-05-05', '2021-05-05 12:55:19'),
(499, 256, 1, '2021-05-05', '2021-05-05 12:55:24'),
(500, 24, 1, '2021-05-05', '2021-05-05 12:55:42'),
(501, 12, 1, '2021-05-05', '2021-05-05 12:56:22'),
(502, 12, 1, '2021-05-06', '2021-05-06 11:31:11'),
(503, 201, 1, '2021-05-06', '2021-05-06 19:59:25'),
(504, 12, 1, '2021-05-07', '2021-05-07 22:23:22'),
(505, 20, 1, '2021-05-08', '2021-05-08 17:49:59'),
(506, 201, 1, '2021-05-08', '2021-05-08 17:50:40'),
(507, 20, 1, '2021-05-08', '2021-05-08 17:51:12'),
(508, 201, 1, '2021-05-09', '2021-05-09 02:37:49'),
(509, 201, 1, '2021-05-09', '2021-05-09 09:51:47'),
(510, 201, 1, '2021-05-09', '2021-05-09 09:52:02'),
(511, 12, 1, '2021-05-10', '2021-05-10 20:08:30'),
(512, 201, 1, '2021-05-12', '2021-05-12 12:53:08'),
(513, 201, 1, '2021-05-14', '2021-05-14 00:28:08'),
(514, 201, 1, '2021-05-14', '2021-05-14 00:29:43'),
(515, 201, 1, '2021-05-15', '2021-05-15 15:59:52'),
(516, 253, 1, '2021-05-15', '2021-05-15 16:00:27'),
(517, 256, 1, '2021-05-15', '2021-05-15 16:00:36'),
(518, 253, 1, '2021-05-15', '2021-05-15 16:00:55'),
(519, 12, 1, '2021-05-15', '2021-05-15 16:01:14'),
(520, 12, 1, '2021-05-15', '2021-05-15 16:03:05'),
(521, 201, 1, '2021-05-16', '2021-05-16 10:30:18'),
(522, 201, 1, '2021-05-16', '2021-05-16 10:35:30'),
(523, 201, 1, '2021-05-16', '2021-05-16 10:39:34'),
(524, 201, 1, '2021-05-17', '2021-05-17 11:35:35'),
(525, 201, 1, '2021-05-17', '2021-05-17 15:08:38'),
(526, 201, 1, '2021-05-17', '2021-05-17 15:08:52'),
(527, 201, 1, '2021-05-17', '2021-05-17 23:01:42'),
(528, 201, 1, '2021-05-17', '2021-05-17 23:01:59'),
(529, 201, 1, '2021-05-18', '2021-05-18 13:07:21'),
(530, 12, 1, '2021-05-18', '2021-05-18 13:19:18'),
(531, 20, 1, '2021-05-18', '2021-05-18 15:04:52'),
(532, 22, 1, '2021-05-18', '2021-05-18 16:57:58'),
(533, 253, 1, '2021-05-18', '2021-05-18 17:00:19'),
(534, 256, 1, '2021-05-18', '2021-05-18 17:00:44'),
(535, 12, 1, '2021-05-18', '2021-05-18 17:01:08'),
(536, 58, 1, '2021-05-18', '2021-05-18 17:09:40'),
(537, 253, 1, '2021-05-18', '2021-05-18 17:10:08'),
(538, 253, 1, '2021-05-18', '2021-05-18 17:10:21'),
(539, 12, 1, '2021-05-19', '2021-05-19 16:00:00'),
(540, 12, 1, '2021-05-19', '2021-05-19 16:04:41'),
(541, 22, 1, '2021-05-20', '2021-05-20 02:24:35'),
(542, 136, 1, '2021-05-20', '2021-05-20 05:16:48'),
(543, 24, 1, '2021-05-20', '2021-05-20 05:58:46'),
(544, 24, 1, '2021-05-20', '2021-05-20 08:05:00'),
(545, 12, 1, '2021-05-20', '2021-05-20 17:52:37'),
(546, 176, 1, '2021-05-20', '2021-05-20 18:19:03'),
(547, 58, 1, '2021-05-21', '2021-05-21 11:18:16'),
(548, 20, 1, '2021-05-21', '2021-05-21 13:00:23'),
(549, 20, 1, '2021-05-21', '2021-05-21 13:00:24'),
(550, 24, 1, '2021-05-21', '2021-05-21 13:14:18'),
(551, 24, 1, '2021-05-21', '2021-05-21 13:15:23'),
(552, 12, 1, '2021-05-21', '2021-05-21 16:23:34'),
(553, 201, 1, '2021-05-21', '2021-05-21 19:28:11'),
(554, 12, 1, '2021-05-21', '2021-05-21 21:34:43'),
(555, 12, 1, '2021-05-22', '2021-05-22 19:56:11'),
(556, 22, 1, '2021-05-22', '2021-05-22 22:53:51'),
(557, 22, 1, '2021-05-22', '2021-05-22 22:55:28'),
(558, 20, 1, '2021-05-23', '2021-05-23 05:07:13'),
(559, 12, 1, '2021-05-23', '2021-05-23 05:53:43'),
(560, 24, 1, '2021-05-23', '2021-05-23 07:04:00'),
(561, 20, 1, '2021-05-23', '2021-05-23 08:08:30'),
(562, 136, 1, '2021-05-23', '2021-05-23 09:44:00'),
(563, 12, 1, '2021-05-23', '2021-05-23 11:44:40'),
(564, 24, 1, '2021-05-23', '2021-05-23 13:42:02'),
(565, 201, 1, '2021-05-23', '2021-05-23 16:33:54'),
(566, 24, 1, '2021-05-24', '2021-05-24 06:44:38'),
(567, 256, 1, '2021-05-24', '2021-05-24 07:49:28'),
(568, 201, 1, '2021-05-24', '2021-05-24 08:22:51'),
(569, 24, 1, '2021-05-24', '2021-05-24 08:33:43'),
(570, 256, 1, '2021-05-24', '2021-05-24 08:46:02'),
(571, 22, 1, '2021-05-24', '2021-05-24 13:52:49'),
(572, 24, 1, '2021-05-25', '2021-05-25 06:04:08'),
(573, 201, 1, '2021-05-25', '2021-05-25 06:55:37'),
(574, 256, 1, '2021-05-25', '2021-05-25 09:48:07'),
(575, 12, 1, '2021-05-27', '2021-05-27 00:55:08'),
(576, 12, 1, '2021-05-27', '2021-05-27 18:11:41'),
(577, 12, 1, '2021-05-27', '2021-05-27 18:29:36'),
(578, 20, 1, '2021-05-27', '2021-05-27 18:34:19'),
(579, 12, 1, '2021-05-27', '2021-05-27 22:41:05'),
(580, 24, 1, '2021-05-28', '2021-05-28 03:13:22'),
(581, 136, 1, '2021-05-28', '2021-05-28 03:46:05'),
(582, 20, 1, '2021-05-28', '2021-05-28 05:39:38'),
(583, 12, 1, '2021-05-28', '2021-05-28 06:58:04'),
(584, 20, 1, '2021-05-28', '2021-05-28 09:23:49'),
(585, 136, 1, '2021-05-28', '2021-05-28 09:40:17'),
(586, 20, 1, '2021-05-29', '2021-05-29 03:40:45'),
(587, 12, 1, '2021-05-29', '2021-05-29 13:13:17'),
(588, 201, 1, '2021-05-29', '2021-05-29 14:03:00'),
(589, 201, 1, '2021-05-29', '2021-05-29 23:51:58'),
(590, 201, 1, '2021-05-29', '2021-05-29 23:52:10'),
(591, 12, 1, '2021-05-30', '2021-05-30 16:26:43'),
(592, 12, 1, '2021-05-30', '2021-05-30 16:31:15'),
(593, 12, 1, '2021-05-30', '2021-05-30 16:59:14'),
(594, 12, 1, '2021-05-30', '2021-05-30 20:58:47'),
(595, 20, 1, '2021-05-30', '2021-05-30 23:04:28'),
(596, 256, 1, '2021-05-31', '2021-05-31 01:05:11'),
(597, 253, 1, '2021-05-31', '2021-05-31 01:05:37'),
(598, 256, 1, '2021-05-31', '2021-05-31 01:05:55'),
(599, 201, 1, '2021-05-31', '2021-05-31 21:22:26'),
(600, 12, 1, '2021-06-01', '2021-06-01 20:40:24'),
(601, 201, 1, '2021-06-01', '2021-06-01 21:42:04'),
(602, 201, 1, '2021-06-01', '2021-06-01 22:53:10'),
(603, 20, 1, '2021-06-02', '2021-06-02 02:49:32'),
(604, 201, 1, '2021-06-02', '2021-06-02 05:04:31'),
(605, 201, 1, '2021-06-02', '2021-06-02 05:09:09'),
(606, 20, 1, '2021-06-03', '2021-06-03 06:22:00'),
(607, 24, 1, '2021-06-03', '2021-06-03 09:55:22'),
(608, 201, 1, '2021-06-06', '2021-06-06 19:15:18'),
(609, 12, 1, '2021-06-07', '2021-06-07 08:46:55'),
(610, 12, 1, '2021-06-07', '2021-06-07 17:27:31'),
(611, 24, 1, '2021-06-10', '2021-06-10 13:25:44'),
(612, 136, 1, '2021-06-10', '2021-06-10 19:14:08'),
(613, 136, 1, '2021-06-11', '2021-06-11 00:52:34'),
(614, 22, 1, '2021-06-11', '2021-06-11 12:31:41'),
(615, 12, 1, '2021-06-11', '2021-06-11 13:04:51'),
(616, 253, 1, '2021-06-11', '2021-06-11 16:55:26'),
(617, 256, 1, '2021-06-11', '2021-06-11 16:55:33'),
(618, 176, 1, '2021-06-11', '2021-06-11 16:56:13'),
(619, 201, 1, '2021-06-11', '2021-06-11 16:56:28'),
(620, 12, 1, '2021-06-11', '2021-06-11 16:57:00'),
(621, 176, 1, '2021-06-12', '2021-06-12 20:36:02'),
(622, 58, 1, '2021-06-13', '2021-06-13 00:13:49'),
(623, 58, 1, '2021-06-13', '2021-06-13 00:15:14'),
(624, 24, 1, '2021-06-13', '2021-06-13 00:21:33'),
(625, 12, 1, '2021-06-13', '2021-06-13 00:56:58'),
(626, 20, 1, '2021-06-13', '2021-06-13 01:02:18'),
(627, 20, 1, '2021-06-13', '2021-06-13 03:00:00'),
(628, 22, 1, '2021-06-13', '2021-06-13 04:03:15'),
(629, 24, 1, '2021-06-13', '2021-06-13 04:33:08'),
(630, 12, 1, '2021-06-13', '2021-06-13 11:28:41'),
(631, 22, 1, '2021-06-13', '2021-06-13 14:14:40'),
(632, 24, 1, '2021-06-14', '2021-06-14 01:00:52'),
(633, 22, 1, '2021-06-14', '2021-06-14 01:05:36'),
(634, 20, 1, '2021-06-14', '2021-06-14 01:41:22'),
(635, 24, 1, '2021-06-14', '2021-06-14 01:42:18'),
(636, 22, 1, '2021-06-14', '2021-06-14 05:00:30'),
(637, 12, 1, '2021-06-14', '2021-06-14 09:21:43'),
(638, 12, 1, '2021-06-14', '2021-06-14 18:42:43'),
(639, 24, 1, '2021-06-14', '2021-06-14 19:00:24'),
(640, 12, 1, '2021-06-14', '2021-06-14 20:05:11'),
(641, 58, 1, '2021-06-14', '2021-06-14 20:18:03'),
(642, 12, 1, '2021-06-14', '2021-06-14 20:20:55'),
(643, 176, 1, '2021-06-14', '2021-06-14 21:29:59'),
(644, 24, 1, '2021-06-15', '2021-06-15 03:15:19'),
(645, 22, 1, '2021-06-15', '2021-06-15 05:18:12'),
(646, 24, 1, '2021-06-15', '2021-06-15 05:48:46'),
(647, 20, 1, '2021-06-15', '2021-06-15 07:00:27'),
(648, 176, 1, '2021-06-15', '2021-06-15 07:31:46'),
(649, 58, 1, '2021-06-15', '2021-06-15 07:40:12'),
(650, 12, 1, '2021-06-15', '2021-06-15 10:22:40'),
(651, 20, 1, '2021-06-15', '2021-06-15 12:43:40'),
(652, 22, 1, '2021-06-15', '2021-06-15 17:42:34'),
(653, 24, 1, '2021-06-15', '2021-06-15 20:51:07'),
(654, 22, 1, '2021-06-15', '2021-06-15 23:22:52'),
(655, 24, 1, '2021-06-16', '2021-06-16 00:38:37'),
(656, 12, 1, '2021-06-16', '2021-06-16 00:42:51'),
(657, 12, 1, '2021-06-16', '2021-06-16 01:02:32'),
(658, 20, 1, '2021-06-16', '2021-06-16 01:47:59'),
(659, 22, 1, '2021-06-16', '2021-06-16 10:30:18'),
(660, 20, 1, '2021-06-16', '2021-06-16 11:08:26'),
(661, 12, 1, '2021-06-16', '2021-06-16 11:42:07'),
(662, 12, 1, '2021-06-16', '2021-06-16 11:45:37'),
(663, 20, 1, '2021-06-16', '2021-06-16 14:27:27'),
(664, 22, 1, '2021-06-16', '2021-06-16 14:58:00'),
(665, 24, 1, '2021-06-16', '2021-06-16 16:03:16'),
(666, 24, 1, '2021-06-16', '2021-06-16 16:37:53'),
(667, 22, 1, '2021-06-16', '2021-06-16 22:31:04'),
(668, 176, 1, '2021-06-18', '2021-06-18 01:23:04'),
(669, 12, 1, '2021-06-19', '2021-06-19 10:52:18'),
(670, 24, 1, '2021-06-19', '2021-06-19 11:41:20'),
(671, 24, 1, '2021-06-19', '2021-06-19 11:42:28'),
(672, 12, 1, '2021-06-19', '2021-06-19 19:00:11'),
(673, 201, 1, '2021-06-19', '2021-06-19 19:16:34'),
(674, 201, 1, '2021-06-19', '2021-06-19 19:16:36'),
(675, 24, 1, '2021-06-21', '2021-06-21 10:06:51'),
(676, 24, 1, '2021-06-21', '2021-06-21 10:17:51'),
(677, 12, 1, '2021-06-22', '2021-06-22 15:41:14'),
(678, 253, 1, '2021-06-22', '2021-06-22 15:48:04'),
(679, 256, 1, '2021-06-22', '2021-06-22 15:48:34'),
(680, 253, 1, '2021-06-22', '2021-06-22 15:50:15'),
(681, 12, 1, '2021-06-22', '2021-06-22 15:50:18'),
(682, 22, 1, '2021-06-24', '2021-06-24 21:47:25'),
(683, 12, 1, '2021-06-27', '2021-06-27 09:38:17'),
(684, 24, 1, '2021-06-27', '2021-06-27 18:37:09'),
(685, 22, 1, '2021-06-28', '2021-06-28 14:23:27'),
(686, 12, 1, '2021-06-28', '2021-06-28 21:30:56'),
(687, 12, 1, '2021-06-28', '2021-06-28 21:47:47'),
(688, 12, 1, '2021-06-28', '2021-06-28 21:53:10'),
(689, 12, 1, '2021-06-29', '2021-06-29 18:42:04'),
(690, 24, 1, '2021-06-29', '2021-06-29 19:36:52'),
(691, 136, 1, '2021-06-30', '2021-06-30 22:14:33'),
(692, 12, 1, '2021-07-01', '2021-07-01 15:20:34'),
(693, 24, 1, '2021-07-04', '2021-07-04 02:56:51'),
(694, 253, 1, '2021-07-07', '2021-07-07 01:28:08'),
(695, 253, 1, '2021-07-11', '2021-07-11 22:17:11'),
(696, 12, 1, '2021-07-11', '2021-07-11 22:17:33'),
(697, 201, 1, '2021-07-11', '2021-07-11 22:18:27'),
(698, 176, 1, '2021-07-11', '2021-07-11 22:19:23'),
(699, 176, 1, '2021-07-12', '2021-07-12 00:07:58'),
(700, 22, 1, '2021-07-12', '2021-07-12 00:09:12'),
(701, 24, 1, '2021-07-12', '2021-07-12 18:02:52'),
(702, 201, 1, '2021-07-13', '2021-07-13 14:31:06'),
(703, 22, 1, '2021-07-13', '2021-07-13 14:32:07'),
(704, 201, 1, '2021-07-13', '2021-07-13 14:33:59'),
(705, 176, 1, '2021-07-13', '2021-07-13 14:34:09'),
(706, 12, 1, '2021-07-13', '2021-07-13 14:34:24'),
(707, 20, 1, '2021-07-14', '2021-07-14 08:42:20'),
(708, 253, 1, '2021-07-14', '2021-07-14 21:49:42'),
(709, 20, 1, '2021-07-14', '2021-07-14 22:42:55'),
(710, 24, 1, '2021-07-15', '2021-07-15 08:26:42'),
(711, 12, 1, '2021-07-15', '2021-07-15 18:48:06'),
(712, 20, 1, '2021-07-16', '2021-07-16 00:49:51'),
(713, 20, 1, '2021-07-16', '2021-07-16 02:08:38'),
(714, 24, 1, '2021-07-17', '2021-07-17 00:01:21'),
(715, 24, 1, '2021-07-17', '2021-07-17 16:03:56'),
(716, 12, 1, '2021-07-18', '2021-07-18 06:44:22'),
(717, 20, 1, '2021-07-18', '2021-07-18 07:13:28'),
(718, 22, 1, '2021-07-18', '2021-07-18 12:14:22'),
(719, 12, 1, '2021-07-18', '2021-07-18 13:21:25'),
(720, 12, 1, '2021-07-19', '2021-07-19 03:16:34'),
(721, 24, 1, '2021-07-19', '2021-07-19 11:11:56'),
(722, 12, 1, '2021-07-19', '2021-07-19 18:07:05'),
(723, 12, 1, '2021-07-20', '2021-07-20 01:19:54'),
(724, 20, 1, '2021-07-20', '2021-07-20 04:57:33'),
(725, 12, 1, '2021-07-20', '2021-07-20 11:08:05'),
(726, 20, 1, '2021-07-20', '2021-07-20 18:39:16'),
(727, 12, 1, '2021-07-20', '2021-07-20 21:37:37'),
(728, 22, 1, '2021-07-21', '2021-07-21 05:21:12'),
(729, 24, 1, '2021-07-21', '2021-07-21 05:56:35'),
(730, 12, 1, '2021-07-21', '2021-07-21 06:23:36'),
(731, 24, 1, '2021-07-21', '2021-07-21 06:25:38'),
(732, 12, 1, '2021-07-21', '2021-07-21 07:57:39'),
(733, 22, 1, '2021-07-21', '2021-07-21 09:04:00'),
(734, 136, 1, '2021-07-21', '2021-07-21 10:21:17'),
(735, 256, 1, '2021-07-21', '2021-07-21 10:38:20'),
(736, 12, 1, '2021-07-21', '2021-07-21 17:29:38'),
(737, 12, 1, '2021-07-22', '2021-07-22 01:49:53'),
(738, 12, 1, '2021-07-22', '2021-07-22 03:23:10'),
(739, 24, 1, '2021-07-22', '2021-07-22 06:29:24'),
(740, 256, 1, '2021-07-22', '2021-07-22 07:08:10'),
(741, 12, 1, '2021-07-22', '2021-07-22 12:03:02'),
(742, 22, 1, '2021-07-22', '2021-07-22 13:22:56'),
(743, 24, 1, '2021-07-22', '2021-07-22 13:25:08'),
(744, 22, 1, '2021-07-22', '2021-07-22 13:33:40'),
(745, 24, 1, '2021-07-22', '2021-07-22 13:59:23'),
(746, 20, 1, '2021-07-22', '2021-07-22 20:18:48'),
(747, 12, 1, '2021-07-23', '2021-07-23 06:35:35'),
(748, 22, 1, '2021-07-24', '2021-07-24 14:43:45'),
(749, 20, 1, '2021-07-24', '2021-07-24 16:01:36'),
(750, 12, 1, '2021-07-24', '2021-07-24 16:01:40'),
(751, 20, 1, '2021-07-24', '2021-07-24 18:33:16'),
(752, 24, 1, '2021-07-24', '2021-07-24 21:11:36'),
(753, 20, 1, '2021-07-25', '2021-07-25 07:06:39'),
(754, 12, 1, '2021-07-27', '2021-07-27 00:52:10'),
(755, 20, 1, '2021-07-27', '2021-07-27 04:27:59'),
(756, 20, 1, '2021-07-27', '2021-07-27 14:43:09'),
(757, 24, 1, '2021-07-27', '2021-07-27 15:17:01'),
(758, 12, 1, '2021-07-27', '2021-07-27 15:52:00'),
(759, 24, 1, '2021-07-27', '2021-07-27 20:25:54'),
(760, 12, 1, '2021-07-27', '2021-07-27 22:54:13'),
(761, 20, 1, '2021-07-28', '2021-07-28 15:38:06'),
(762, 136, 1, '2021-07-29', '2021-07-29 14:21:09'),
(763, 24, 1, '2021-07-30', '2021-07-30 06:54:43'),
(764, 12, 1, '2021-07-31', '2021-07-31 02:14:36'),
(765, 12, 1, '2021-07-31', '2021-07-31 04:42:24'),
(766, 24, 1, '2021-07-31', '2021-07-31 06:11:04'),
(767, 12, 1, '2021-07-31', '2021-07-31 14:08:19'),
(768, 12, 1, '2021-07-31', '2021-07-31 19:37:09'),
(769, 12, 1, '2021-07-31', '2021-07-31 19:38:10'),
(770, 12, 1, '2021-07-31', '2021-07-31 19:40:42'),
(771, 24, 1, '2021-07-31', '2021-07-31 22:58:30'),
(772, 12, 1, '2021-07-31', '2021-07-31 22:58:55'),
(773, 24, 1, '2021-08-01', '2021-08-01 14:00:45'),
(774, 256, 1, '2021-08-01', '2021-08-01 14:01:26'),
(775, 24, 1, '2021-08-01', '2021-08-01 16:01:21'),
(776, 176, 1, '2021-08-02', '2021-08-02 07:54:58'),
(777, 24, 1, '2021-08-02', '2021-08-02 10:02:03'),
(778, 12, 1, '2021-08-02', '2021-08-02 22:12:22'),
(779, 20, 1, '2021-08-03', '2021-08-03 20:53:35'),
(780, 12, 1, '2021-08-04', '2021-08-04 00:52:11'),
(781, 12, 1, '2021-08-04', '2021-08-04 01:04:55'),
(782, 22, 1, '2021-08-04', '2021-08-04 13:08:43'),
(783, 256, 1, '2021-08-04', '2021-08-04 13:09:50'),
(784, 12, 1, '2021-08-04', '2021-08-04 13:10:27'),
(785, 58, 1, '2021-08-04', '2021-08-04 22:46:01'),
(786, 20, 1, '2021-08-05', '2021-08-05 02:35:20'),
(787, 24, 1, '2021-08-06', '2021-08-06 00:16:05'),
(788, 20, 1, '2021-08-06', '2021-08-06 05:04:00'),
(789, 12, 1, '2021-08-06', '2021-08-06 11:35:58'),
(790, 12, 1, '2021-08-06', '2021-08-06 11:39:22'),
(791, 12, 1, '2021-08-07', '2021-08-07 06:34:50'),
(792, 24, 1, '2021-08-07', '2021-08-07 09:17:40'),
(793, 20, 1, '2021-08-07', '2021-08-07 10:59:44'),
(794, 24, 1, '2021-08-08', '2021-08-08 12:02:49'),
(795, 12, 1, '2021-08-08', '2021-08-08 15:51:48'),
(796, 12, 1, '2021-08-08', '2021-08-08 16:14:31'),
(797, 136, 1, '2021-08-09', '2021-08-09 03:53:57'),
(798, 24, 1, '2021-08-09', '2021-08-09 12:33:23'),
(799, 12, 1, '2021-08-09', '2021-08-09 22:51:42'),
(800, 253, 1, '2021-08-09', '2021-08-09 22:52:35'),
(801, 58, 1, '2021-08-09', '2021-08-09 22:52:47'),
(802, 12, 1, '2021-08-09', '2021-08-09 22:53:07'),
(803, 24, 1, '2021-08-10', '2021-08-10 02:54:45'),
(804, 12, 1, '2021-08-11', '2021-08-11 03:48:59'),
(805, 136, 1, '2021-08-11', '2021-08-11 08:09:04'),
(806, 136, 1, '2021-08-11', '2021-08-11 09:05:05'),
(807, 24, 1, '2021-08-11', '2021-08-11 13:17:40'),
(808, 24, 1, '2021-08-11', '2021-08-11 16:28:14'),
(809, 24, 1, '2021-08-11', '2021-08-11 16:45:56'),
(810, 22, 1, '2021-08-11', '2021-08-11 17:51:57'),
(811, 343, 1, '2021-08-11', '2021-08-11 20:06:12'),
(812, 12, 1, '2021-08-12', '2021-08-12 07:12:12'),
(813, 24, 1, '2021-08-12', '2021-08-12 22:27:03'),
(814, 22, 1, '2021-08-12', '2021-08-12 22:28:07'),
(815, 22, 1, '2021-08-12', '2021-08-12 22:28:14'),
(816, 12, 1, '2021-08-13', '2021-08-13 05:50:41'),
(817, 12, 1, '2021-08-13', '2021-08-13 06:53:55'),
(818, 24, 1, '2021-08-13', '2021-08-13 17:55:32'),
(819, 12, 1, '2021-08-13', '2021-08-13 21:12:37'),
(820, 12, 1, '2021-08-13', '2021-08-13 21:58:50'),
(821, 24, 1, '2021-08-13', '2021-08-13 23:27:45'),
(822, 24, 1, '2021-08-14', '2021-08-14 06:45:33'),
(823, 24, 1, '2021-08-14', '2021-08-14 06:55:17'),
(824, 20, 1, '2021-08-14', '2021-08-14 10:37:08'),
(825, 22, 1, '2021-08-14', '2021-08-14 10:52:19'),
(826, 12, 1, '2021-08-14', '2021-08-14 11:22:01'),
(827, 256, 1, '2021-08-14', '2021-08-14 11:22:27'),
(828, 253, 1, '2021-08-14', '2021-08-14 11:22:41'),
(829, 12, 1, '2021-08-14', '2021-08-14 14:58:40'),
(830, 12, 1, '2021-08-14', '2021-08-14 19:59:01'),
(831, 201, 1, '2021-08-14', '2021-08-14 22:26:58'),
(832, 24, 1, '2021-08-15', '2021-08-15 01:57:25'),
(833, 136, 1, '2021-08-15', '2021-08-15 02:44:29'),
(834, 136, 1, '2021-08-15', '2021-08-15 07:36:22'),
(835, 22, 1, '2021-08-15', '2021-08-15 13:08:06'),
(836, 253, 1, '2021-08-15', '2021-08-15 13:09:10'),
(837, 253, 1, '2021-08-15', '2021-08-15 13:11:27'),
(838, 58, 1, '2021-08-15', '2021-08-15 13:11:43'),
(839, 12, 1, '2021-08-15', '2021-08-15 17:09:27'),
(840, 22, 1, '2021-08-15', '2021-08-15 21:05:56'),
(841, 22, 1, '2021-08-15', '2021-08-15 21:06:14'),
(842, 12, 1, '2021-08-16', '2021-08-16 03:01:46'),
(843, 12, 1, '2021-08-16', '2021-08-16 04:50:55'),
(844, 22, 1, '2021-08-16', '2021-08-16 05:05:51'),
(845, 22, 1, '2021-08-16', '2021-08-16 06:01:30'),
(846, 24, 1, '2021-08-16', '2021-08-16 19:55:34'),
(847, 20, 1, '2021-08-16', '2021-08-16 20:21:12'),
(848, 24, 1, '2021-08-16', '2021-08-16 20:34:32'),
(849, 20, 1, '2021-08-16', '2021-08-16 20:35:48'),
(850, 20, 1, '2021-08-16', '2021-08-16 20:36:03'),
(851, 253, 1, '2021-08-16', '2021-08-16 20:36:27'),
(852, 253, 1, '2021-08-16', '2021-08-16 20:36:34'),
(853, 20, 1, '2021-08-16', '2021-08-16 20:36:36'),
(854, 20, 1, '2021-08-16', '2021-08-16 20:39:34'),
(855, 20, 1, '2021-08-16', '2021-08-16 20:42:38'),
(856, 24, 1, '2021-08-17', '2021-08-17 10:17:38'),
(857, 12, 1, '2021-08-17', '2021-08-17 11:14:21'),
(858, 256, 1, '2021-08-17', '2021-08-17 21:26:41'),
(859, 256, 1, '2021-08-17', '2021-08-17 21:29:38'),
(860, 256, 1, '2021-08-17', '2021-08-17 21:30:44'),
(861, 12, 1, '2021-08-17', '2021-08-17 21:31:11'),
(862, 253, 1, '2021-08-17', '2021-08-17 21:32:23'),
(863, 12, 1, '2021-08-17', '2021-08-17 21:33:16'),
(864, 12, 1, '2021-08-17', '2021-08-17 21:35:54'),
(865, 253, 1, '2021-08-17', '2021-08-17 21:36:25'),
(866, 12, 1, '2021-08-17', '2021-08-17 21:36:28'),
(867, 256, 1, '2021-08-17', '2021-08-17 21:36:59'),
(868, 24, 1, '2021-08-17', '2021-08-17 21:37:24'),
(869, 256, 1, '2021-08-17', '2021-08-17 21:37:27'),
(870, 20, 1, '2021-08-18', '2021-08-18 01:22:44'),
(871, 12, 1, '2021-08-18', '2021-08-18 06:24:39'),
(872, 12, 1, '2021-08-18', '2021-08-18 06:55:22'),
(873, 24, 1, '2021-08-18', '2021-08-18 16:36:57'),
(874, 12, 1, '2021-08-18', '2021-08-18 21:54:45'),
(875, 12, 1, '2021-08-18', '2021-08-18 21:58:36'),
(876, 24, 1, '2021-08-19', '2021-08-19 04:38:57'),
(877, 12, 1, '2021-08-20', '2021-08-20 13:33:12'),
(878, 24, 1, '2021-08-20', '2021-08-20 15:34:01'),
(879, 24, 1, '2021-08-20', '2021-08-20 22:31:38'),
(880, 12, 1, '2021-08-20', '2021-08-20 22:35:07'),
(881, 24, 1, '2021-08-20', '2021-08-20 22:35:17'),
(882, 12, 1, '2021-08-21', '2021-08-21 19:15:59'),
(883, 22, 1, '2021-08-23', '2021-08-23 05:04:09'),
(884, 22, 1, '2021-08-23', '2021-08-23 06:16:57'),
(885, 24, 1, '2021-08-23', '2021-08-23 16:23:55'),
(886, 256, 1, '2021-08-25', '2021-08-25 23:03:50'),
(887, 12, 1, '2021-08-25', '2021-08-25 23:04:17'),
(888, 256, 1, '2021-08-25', '2021-08-25 23:09:07'),
(889, 12, 1, '2021-08-26', '2021-08-26 01:55:12'),
(890, 12, 1, '2021-08-26', '2021-08-26 09:43:09'),
(891, 24, 1, '2021-08-26', '2021-08-26 13:54:32'),
(892, 12, 1, '2021-08-26', '2021-08-26 15:43:34'),
(893, 12, 1, '2021-08-27', '2021-08-27 00:17:19'),
(894, 22, 1, '2021-08-27', '2021-08-27 13:40:57'),
(895, 22, 1, '2021-08-27', '2021-08-27 13:45:07'),
(896, 22, 1, '2021-08-27', '2021-08-27 16:19:36'),
(897, 12, 1, '2021-08-27', '2021-08-27 16:52:18'),
(898, 12, 1, '2021-08-27', '2021-08-27 17:34:29'),
(899, 24, 1, '2021-08-28', '2021-08-28 17:43:51'),
(900, 2, 1, '2021-08-28', '2021-08-28 18:17:30'),
(901, 24, 1, '2021-08-29', '2021-08-29 08:21:08'),
(902, 58, 1, '2021-08-29', '2021-08-29 09:51:26'),
(903, 24, 1, '2021-08-29', '2021-08-29 13:02:55'),
(904, 24, 1, '2021-08-29', '2021-08-29 19:04:51'),
(905, 24, 1, '2021-08-30', '2021-08-30 04:23:50'),
(906, 24, 1, '2021-08-30', '2021-08-30 20:56:24'),
(907, 12, 1, '2021-08-31', '2021-08-31 09:32:53'),
(908, 24, 1, '2021-08-31', '2021-08-31 09:36:42'),
(909, 24, 1, '2021-09-01', '2021-09-01 02:37:55'),
(910, 24, 1, '2021-09-02', '2021-09-02 13:05:44'),
(911, 12, 1, '2021-09-02', '2021-09-02 17:32:30'),
(912, 12, 1, '2021-09-02', '2021-09-02 22:22:42'),
(913, 24, 1, '2021-09-03', '2021-09-03 20:32:31'),
(914, 24, 1, '2021-09-05', '2021-09-05 01:42:40'),
(915, 136, 1, '2021-09-05', '2021-09-05 09:45:27'),
(916, 24, 1, '2021-09-05', '2021-09-05 12:42:04'),
(917, 24, 1, '2021-09-05', '2021-09-05 13:29:14'),
(918, 136, 1, '2021-09-06', '2021-09-06 01:31:17'),
(919, 24, 1, '2021-09-06', '2021-09-06 13:16:21'),
(920, 201, 1, '2021-09-06', '2021-09-06 15:04:40'),
(921, 136, 1, '2021-09-06', '2021-09-06 22:21:59'),
(922, 12, 1, '2021-09-06', '2021-09-06 23:44:37'),
(923, 24, 1, '2021-09-07', '2021-09-07 03:24:06'),
(924, 136, 1, '2021-09-07', '2021-09-07 09:03:32'),
(925, 22, 1, '2021-09-07', '2021-09-07 12:14:24'),
(926, 256, 1, '2021-09-07', '2021-09-07 12:19:28'),
(927, 12, 1, '2021-09-07', '2021-09-07 12:19:44'),
(928, 22, 1, '2021-09-07', '2021-09-07 12:22:55'),
(929, 12, 1, '2021-09-07', '2021-09-07 12:24:00'),
(930, 12, 1, '2021-09-07', '2021-09-07 16:07:29'),
(931, 136, 1, '2021-09-07', '2021-09-07 21:16:41'),
(932, 136, 1, '2021-09-08', '2021-09-08 01:19:30'),
(933, 201, 1, '2021-09-08', '2021-09-08 08:22:54'),
(934, 256, 1, '2021-09-08', '2021-09-08 08:23:18'),
(935, 201, 1, '2021-09-08', '2021-09-08 08:23:33'),
(936, 12, 1, '2021-09-08', '2021-09-08 08:23:40'),
(937, 201, 1, '2021-09-08', '2021-09-08 08:39:56'),
(938, 12, 1, '2021-09-08', '2021-09-08 13:55:35'),
(939, 12, 1, '2021-09-08', '2021-09-08 14:07:54'),
(940, 24, 1, '2021-09-10', '2021-09-10 11:33:06'),
(941, 22, 1, '2021-09-11', '2021-09-11 14:35:38'),
(942, 24, 1, '2021-09-12', '2021-09-12 11:02:56'),
(943, 20, 1, '2021-09-12', '2021-09-12 12:48:52'),
(944, 12, 1, '2021-09-12', '2021-09-12 22:40:17'),
(945, 12, 1, '2021-09-13', '2021-09-13 02:55:40'),
(946, 12, 1, '2021-09-13', '2021-09-13 15:21:41'),
(947, 256, 1, '2021-09-13', '2021-09-13 15:22:02'),
(948, 253, 1, '2021-09-13', '2021-09-13 20:04:53'),
(949, 12, 1, '2021-09-13', '2021-09-13 20:06:20'),
(950, 22, 1, '2021-09-13', '2021-09-13 20:08:22'),
(951, 20, 1, '2021-09-14', '2021-09-14 06:41:42'),
(952, 24, 1, '2021-09-16', '2021-09-16 18:42:50'),
(953, 20, 1, '2021-09-17', '2021-09-17 09:00:01'),
(954, 136, 1, '2021-09-18', '2021-09-18 23:47:30'),
(955, 136, 1, '2021-09-19', '2021-09-19 06:36:42'),
(956, 24, 1, '2021-09-19', '2021-09-19 11:59:16'),
(957, 176, 1, '2021-09-20', '2021-09-20 20:50:10'),
(958, 253, 1, '2021-09-20', '2021-09-20 20:50:21'),
(959, 253, 1, '2021-09-20', '2021-09-20 20:50:33'),
(960, 253, 1, '2021-09-20', '2021-09-20 20:50:42'),
(961, 176, 1, '2021-09-20', '2021-09-20 20:50:46'),
(962, 24, 1, '2021-09-20', '2021-09-20 20:51:03'),
(963, 24, 1, '2021-09-20', '2021-09-20 20:51:09'),
(964, 136, 1, '2021-09-21', '2021-09-21 07:39:14'),
(965, 24, 1, '2021-09-21', '2021-09-21 09:10:40'),
(966, 24, 1, '2021-09-21', '2021-09-21 09:33:44'),
(967, 12, 1, '2021-09-21', '2021-09-21 14:17:07'),
(968, 136, 1, '2021-09-21', '2021-09-21 17:20:32'),
(969, 136, 1, '2021-09-21', '2021-09-21 20:25:18'),
(970, 12, 1, '2021-09-22', '2021-09-22 01:24:40'),
(971, 24, 1, '2021-09-23', '2021-09-23 03:33:51'),
(972, 24, 1, '2021-09-23', '2021-09-23 22:24:13'),
(973, 24, 1, '2021-09-24', '2021-09-24 03:42:00'),
(974, 22, 1, '2021-09-24', '2021-09-24 10:36:05'),
(975, 22, 1, '2021-09-24', '2021-09-24 11:25:22'),
(976, 12, 1, '2021-09-25', '2021-09-25 00:34:51'),
(977, 24, 1, '2021-09-25', '2021-09-25 03:15:36'),
(978, 12, 1, '2021-09-25', '2021-09-25 12:47:02'),
(979, 24, 1, '2021-09-25', '2021-09-25 15:18:36'),
(980, 12, 1, '2021-09-25', '2021-09-25 20:26:55'),
(981, 24, 1, '2021-09-25', '2021-09-25 23:05:04'),
(982, 253, 1, '2021-09-26', '2021-09-26 11:10:55'),
(983, 12, 1, '2021-09-26', '2021-09-26 12:37:14'),
(984, 22, 1, '2021-09-26', '2021-09-26 15:45:30'),
(985, 136, 1, '2021-09-26', '2021-09-26 17:18:34'),
(986, 12, 1, '2021-09-27', '2021-09-27 05:18:30'),
(987, 22, 1, '2021-09-27', '2021-09-27 08:30:06'),
(988, 22, 1, '2021-09-27', '2021-09-27 16:33:58'),
(989, 136, 1, '2021-09-27', '2021-09-27 20:11:55'),
(990, 24, 1, '2021-09-28', '2021-09-28 12:16:49'),
(991, 12, 1, '2021-09-29', '2021-09-29 14:16:18'),
(992, 136, 1, '2021-09-29', '2021-09-29 17:34:58'),
(993, 253, 1, '2021-09-29', '2021-09-29 22:12:08'),
(994, 24, 1, '2021-09-30', '2021-09-30 09:07:16'),
(995, 136, 1, '2021-09-30', '2021-09-30 09:36:51'),
(996, 253, 1, '2021-09-30', '2021-09-30 09:46:27'),
(997, 253, 1, '2021-09-30', '2021-09-30 11:06:07'),
(998, 253, 1, '2021-09-30', '2021-09-30 11:08:13'),
(999, 253, 1, '2021-09-30', '2021-09-30 12:06:08'),
(1000, 354, 1, '2021-09-30', '2021-09-30 12:06:15'),
(1001, 354, 1, '2021-09-30', '2021-09-30 12:09:49'),
(1002, 354, 1, '2021-09-30', '2021-09-30 12:10:30'),
(1003, 354, 1, '2021-09-30', '2021-09-30 12:17:15'),
(1004, 354, 1, '2021-09-30', '2021-09-30 12:19:15'),
(1005, 354, 1, '2021-09-30', '2021-09-30 12:19:42'),
(1006, 354, 1, '2021-09-30', '2021-09-30 12:22:09'),
(1007, 354, 1, '2021-09-30', '2021-09-30 12:22:29'),
(1008, 22, 1, '2021-09-30', '2021-09-30 12:42:44'),
(1009, 24, 1, '2021-09-30', '2021-09-30 15:51:42'),
(1010, 12, 1, '2021-09-30', '2021-09-30 21:56:00'),
(1011, 354, 1, '2021-09-30', '2021-09-30 21:56:22');
INSERT INTO `wpjy_popularpostssummary` (`ID`, `postid`, `pageviews`, `view_date`, `view_datetime`) VALUES
(1012, 354, 1, '2021-09-30', '2021-09-30 21:58:54'),
(1013, 24, 1, '2021-10-02', '2021-10-02 00:09:47'),
(1014, 24, 1, '2021-10-02', '2021-10-02 19:50:26'),
(1015, 24, 1, '2021-10-03', '2021-10-03 13:22:25'),
(1016, 201, 1, '2021-10-03', '2021-10-03 14:49:14'),
(1017, 176, 1, '2021-10-03', '2021-10-03 15:49:27'),
(1018, 176, 1, '2021-10-03', '2021-10-03 15:49:31'),
(1019, 256, 1, '2021-10-03', '2021-10-03 15:49:42'),
(1020, 256, 1, '2021-10-03', '2021-10-03 15:50:02'),
(1021, 24, 1, '2021-10-04', '2021-10-04 00:17:07'),
(1022, 24, 1, '2021-10-04', '2021-10-04 20:46:19'),
(1023, 176, 1, '2021-10-06', '2021-10-06 10:37:36'),
(1024, 354, 1, '2021-10-06', '2021-10-06 10:38:24'),
(1025, 22, 1, '2021-10-06', '2021-10-06 10:39:18'),
(1026, 22, 1, '2021-10-06', '2021-10-06 10:39:30'),
(1027, 12, 1, '2021-10-06', '2021-10-06 16:15:21'),
(1028, 24, 1, '2021-10-07', '2021-10-07 03:37:44'),
(1029, 20, 1, '2021-10-08', '2021-10-08 11:38:24'),
(1030, 20, 1, '2021-10-08', '2021-10-08 11:53:22'),
(1031, 20, 1, '2021-10-08', '2021-10-08 21:50:26'),
(1032, 24, 1, '2021-10-08', '2021-10-08 22:02:43'),
(1033, 24, 1, '2021-10-09', '2021-10-09 05:51:03'),
(1034, 22, 1, '2021-10-10', '2021-10-10 02:22:17'),
(1035, 176, 1, '2021-10-10', '2021-10-10 11:05:02'),
(1036, 12, 1, '2021-10-10', '2021-10-10 18:53:10'),
(1037, 24, 1, '2021-10-10', '2021-10-10 20:28:22'),
(1038, 24, 1, '2021-10-12', '2021-10-12 12:11:50'),
(1039, 12, 1, '2021-10-12', '2021-10-12 12:39:58'),
(1040, 12, 1, '2021-10-12', '2021-10-12 12:40:08'),
(1041, 12, 1, '2021-10-12', '2021-10-12 21:06:05'),
(1042, 20, 1, '2021-10-14', '2021-10-14 16:35:05'),
(1043, 20, 1, '2021-10-14', '2021-10-14 16:38:30'),
(1044, 343, 1, '2021-10-14', '2021-10-14 18:45:31'),
(1045, 20, 1, '2021-10-15', '2021-10-15 23:19:20'),
(1046, 12, 1, '2021-10-16', '2021-10-16 11:24:45'),
(1047, 12, 1, '2021-10-16', '2021-10-16 12:01:51'),
(1048, 12, 1, '2021-10-16', '2021-10-16 12:22:40'),
(1049, 12, 1, '2021-10-16', '2021-10-16 12:40:53'),
(1050, 12, 1, '2021-10-16', '2021-10-16 12:43:19'),
(1051, 136, 1, '2021-10-17', '2021-10-17 05:47:43'),
(1052, 136, 1, '2021-10-17', '2021-10-17 14:39:32'),
(1053, 12, 1, '2021-10-17', '2021-10-17 19:45:39'),
(1054, 12, 1, '2021-10-17', '2021-10-17 21:54:00'),
(1055, 256, 1, '2021-10-17', '2021-10-17 21:55:24'),
(1056, 12, 1, '2021-10-17', '2021-10-17 22:38:18'),
(1057, 24, 1, '2021-10-23', '2021-10-23 21:10:51'),
(1058, 24, 1, '2021-10-23', '2021-10-23 21:20:00'),
(1059, 256, 1, '2021-10-23', '2021-10-23 21:21:30'),
(1060, 22, 1, '2021-10-24', '2021-10-24 12:46:58'),
(1061, 12, 1, '2021-10-24', '2021-10-24 20:26:45'),
(1062, 22, 1, '2021-10-24', '2021-10-24 20:51:45'),
(1063, 22, 1, '2021-10-24', '2021-10-24 23:33:04'),
(1064, 136, 1, '2021-10-26', '2021-10-26 11:41:26'),
(1065, 24, 1, '2021-10-27', '2021-10-27 23:38:25'),
(1066, 24, 1, '2021-10-27', '2021-10-27 23:38:29'),
(1067, 354, 1, '2021-10-27', '2021-10-27 23:39:50'),
(1068, 256, 1, '2021-10-27', '2021-10-27 23:40:35'),
(1069, 12, 1, '2021-10-27', '2021-10-27 23:41:15'),
(1070, 176, 1, '2021-10-27', '2021-10-27 23:44:49'),
(1071, 22, 1, '2021-10-27', '2021-10-27 23:45:46'),
(1072, 12, 1, '2021-10-27', '2021-10-27 23:48:43'),
(1073, 256, 1, '2021-10-27', '2021-10-27 23:48:51'),
(1074, 354, 1, '2021-10-27', '2021-10-27 23:48:54'),
(1075, 24, 1, '2021-10-27', '2021-10-27 23:48:54'),
(1076, 24, 1, '2021-10-29', '2021-10-29 00:38:57'),
(1077, 12, 1, '2021-11-04', '2021-11-04 16:28:16'),
(1078, 12, 1, '2021-11-06', '2021-11-06 13:41:36'),
(1079, 20, 1, '2021-11-06', '2021-11-06 20:14:47'),
(1080, 354, 1, '2021-11-06', '2021-11-06 21:43:23'),
(1081, 354, 1, '2021-11-08', '2021-11-08 09:01:22'),
(1082, 354, 1, '2021-11-08', '2021-11-08 09:02:20'),
(1083, 201, 1, '2021-11-08', '2021-11-08 09:03:41'),
(1084, 343, 1, '2021-11-08', '2021-11-08 09:03:51'),
(1085, 354, 1, '2021-11-08', '2021-11-08 09:04:09'),
(1086, 354, 1, '2021-11-08', '2021-11-08 09:06:20'),
(1087, 354, 1, '2021-11-08', '2021-11-08 09:09:43'),
(1088, 201, 1, '2021-11-08', '2021-11-08 09:11:02'),
(1089, 354, 1, '2021-11-08', '2021-11-08 12:24:55'),
(1090, 20, 1, '2021-11-08', '2021-11-08 12:45:19'),
(1091, 354, 1, '2021-11-08', '2021-11-08 16:03:07'),
(1092, 354, 1, '2021-11-08', '2021-11-08 17:44:53'),
(1093, 354, 1, '2021-11-08', '2021-11-08 17:46:13'),
(1094, 201, 1, '2021-11-08', '2021-11-08 18:04:30'),
(1095, 201, 1, '2021-11-08', '2021-11-08 18:05:30'),
(1096, 201, 1, '2021-11-08', '2021-11-08 18:07:10'),
(1097, 201, 1, '2021-11-08', '2021-11-08 18:25:08'),
(1098, 354, 1, '2021-11-08', '2021-11-08 18:27:52'),
(1099, 354, 1, '2021-11-08', '2021-11-08 18:28:34'),
(1100, 354, 1, '2021-11-08', '2021-11-08 19:13:26'),
(1101, 12, 1, '2021-11-08', '2021-11-08 23:12:48'),
(1102, 354, 1, '2021-11-09', '2021-11-09 09:22:03'),
(1103, 354, 1, '2021-11-09', '2021-11-09 11:02:00'),
(1104, 354, 1, '2021-11-09', '2021-11-09 11:03:32'),
(1105, 12, 1, '2021-11-09', '2021-11-09 17:23:37'),
(1106, 201, 1, '2021-11-09', '2021-11-09 18:33:50'),
(1107, 201, 1, '2021-11-09', '2021-11-09 18:49:29'),
(1108, 367, 1, '2021-11-09', '2021-11-09 18:49:54'),
(1109, 12, 1, '2021-11-11', '2021-11-11 03:55:14'),
(1110, 201, 1, '2021-11-11', '2021-11-11 06:35:25'),
(1111, 24, 1, '2021-11-11', '2021-11-11 15:42:54'),
(1112, 22, 1, '2021-11-11', '2021-11-11 18:35:50'),
(1113, 20, 1, '2021-11-12', '2021-11-12 11:51:50'),
(1114, 20, 1, '2021-11-12', '2021-11-12 11:54:38'),
(1115, 201, 1, '2021-11-12', '2021-11-12 15:49:21'),
(1116, 201, 1, '2021-11-12', '2021-11-12 15:49:26'),
(1117, 367, 1, '2021-11-12', '2021-11-12 15:49:43'),
(1118, 12, 1, '2021-11-13', '2021-11-13 18:10:38'),
(1119, 12, 1, '2021-11-13', '2021-11-13 18:11:43'),
(1120, 20, 1, '2021-11-13', '2021-11-13 18:12:04'),
(1121, 136, 1, '2021-11-13', '2021-11-13 18:12:57'),
(1122, 12, 1, '2021-11-13', '2021-11-13 18:13:22'),
(1123, 12, 1, '2021-11-13', '2021-11-13 18:13:31'),
(1124, 136, 1, '2021-11-13', '2021-11-13 18:13:48'),
(1125, 12, 1, '2021-11-13', '2021-11-13 18:14:13'),
(1126, 256, 1, '2021-11-13', '2021-11-13 18:14:55'),
(1127, 354, 1, '2021-11-13', '2021-11-13 18:15:17'),
(1128, 354, 1, '2021-11-13', '2021-11-13 20:12:12'),
(1129, 12, 1, '2021-11-15', '2021-11-15 16:43:57'),
(1130, 24, 1, '2021-11-16', '2021-11-16 12:56:06'),
(1131, 22, 1, '2021-11-16', '2021-11-16 16:48:30'),
(1132, 12, 1, '2021-11-16', '2021-11-16 18:48:03'),
(1133, 12, 1, '2021-11-17', '2021-11-17 14:29:07'),
(1134, 12, 1, '2021-11-17', '2021-11-17 20:07:10'),
(1135, 136, 1, '2021-11-18', '2021-11-18 01:07:55'),
(1136, 24, 1, '2021-11-18', '2021-11-18 05:54:48'),
(1137, 12, 1, '2021-11-18', '2021-11-18 07:23:35'),
(1138, 354, 1, '2021-11-19', '2021-11-19 21:20:33'),
(1139, 136, 1, '2021-11-20', '2021-11-20 07:08:33'),
(1140, 24, 1, '2021-11-20', '2021-11-20 07:29:13'),
(1141, 24, 1, '2021-11-20', '2021-11-20 07:32:51'),
(1142, 24, 1, '2021-11-20', '2021-11-20 07:37:59'),
(1143, 22, 1, '2021-11-20', '2021-11-20 14:33:30'),
(1144, 22, 1, '2021-11-20', '2021-11-20 14:33:46'),
(1145, 22, 1, '2021-11-20', '2021-11-20 14:35:33'),
(1146, 24, 1, '2021-11-21', '2021-11-21 03:08:15'),
(1147, 136, 1, '2021-11-21', '2021-11-21 05:52:42'),
(1148, 136, 1, '2021-11-21', '2021-11-21 05:53:05'),
(1149, 12, 1, '2021-11-21', '2021-11-21 13:05:56'),
(1150, 12, 1, '2021-11-21', '2021-11-21 13:50:50'),
(1151, 12, 1, '2021-11-21', '2021-11-21 17:03:24'),
(1152, 367, 1, '2021-11-21', '2021-11-21 22:33:26'),
(1153, 136, 1, '2021-11-22', '2021-11-22 13:45:50'),
(1154, 12, 1, '2021-11-22', '2021-11-22 18:48:14'),
(1155, 12, 1, '2021-11-22', '2021-11-22 18:51:34'),
(1156, 24, 1, '2021-11-22', '2021-11-22 21:33:59'),
(1157, 12, 1, '2021-11-23', '2021-11-23 05:50:33'),
(1158, 24, 1, '2021-11-23', '2021-11-23 12:38:16'),
(1159, 24, 1, '2021-11-23', '2021-11-23 14:20:11'),
(1160, 12, 1, '2021-11-23', '2021-11-23 14:27:59'),
(1161, 12, 1, '2021-11-23', '2021-11-23 17:49:33'),
(1162, 253, 1, '2021-11-25', '2021-11-25 01:05:08'),
(1163, 12, 1, '2021-11-25', '2021-11-25 09:04:25'),
(1164, 20, 1, '2021-11-25', '2021-11-25 09:40:58'),
(1165, 20, 1, '2021-11-25', '2021-11-25 12:48:53'),
(1166, 12, 1, '2021-11-25', '2021-11-25 13:58:41'),
(1167, 253, 1, '2021-11-25', '2021-11-25 15:21:44'),
(1168, 24, 1, '2021-11-25', '2021-11-25 17:32:23'),
(1169, 24, 1, '2021-11-25', '2021-11-25 17:36:38'),
(1170, 201, 1, '2021-11-27', '2021-11-27 20:25:10'),
(1171, 24, 1, '2021-11-29', '2021-11-29 12:37:05'),
(1172, 24, 1, '2021-11-29', '2021-11-29 15:26:06'),
(1173, 12, 1, '2021-11-29', '2021-11-29 15:28:17'),
(1174, 12, 1, '2021-11-29', '2021-11-29 15:30:56'),
(1175, 12, 1, '2021-11-29', '2021-11-29 15:35:22'),
(1176, 12, 1, '2021-11-29', '2021-11-29 16:15:20'),
(1177, 12, 1, '2021-11-29', '2021-11-29 16:15:53'),
(1178, 12, 1, '2021-11-29', '2021-11-29 16:30:53'),
(1179, 24, 1, '2021-11-29', '2021-11-29 23:26:33'),
(1180, 24, 1, '2021-11-30', '2021-11-30 10:43:24'),
(1181, 12, 1, '2021-11-30', '2021-11-30 14:12:01'),
(1182, 12, 1, '2021-11-30', '2021-11-30 22:38:59'),
(1183, 20, 1, '2021-12-02', '2021-12-02 17:51:18'),
(1184, 201, 1, '2021-12-02', '2021-12-02 22:53:18'),
(1185, 20, 1, '2021-12-03', '2021-12-03 05:00:09'),
(1186, 20, 1, '2021-12-03', '2021-12-03 12:53:50'),
(1187, 12, 1, '2021-12-03', '2021-12-03 19:32:51'),
(1188, 256, 1, '2021-12-03', '2021-12-03 19:33:14'),
(1189, 354, 1, '2021-12-03', '2021-12-03 19:37:39'),
(1190, 20, 1, '2021-12-04', '2021-12-04 03:04:49'),
(1191, 20, 1, '2021-12-04', '2021-12-04 16:07:18'),
(1192, 24, 1, '2021-12-06', '2021-12-06 03:18:49'),
(1193, 24, 1, '2021-12-06', '2021-12-06 17:29:00'),
(1194, 24, 1, '2021-12-07', '2021-12-07 16:20:22'),
(1195, 24, 1, '2021-12-07', '2021-12-07 16:29:37'),
(1196, 12, 1, '2021-12-07', '2021-12-07 18:32:06'),
(1197, 24, 1, '2021-12-08', '2021-12-08 14:39:04'),
(1198, 24, 1, '2021-12-08', '2021-12-08 14:54:14'),
(1199, 253, 1, '2021-12-09', '2021-12-09 02:46:31'),
(1200, 253, 1, '2021-12-09', '2021-12-09 02:52:06'),
(1201, 24, 1, '2021-12-09', '2021-12-09 14:52:17'),
(1202, 380, 1, '2021-12-09', '2021-12-09 17:16:56'),
(1203, 379, 1, '2021-12-09', '2021-12-09 17:29:30'),
(1204, 379, 1, '2021-12-09', '2021-12-09 17:31:33'),
(1205, 379, 1, '2021-12-09', '2021-12-09 17:31:55'),
(1206, 20, 1, '2021-12-09', '2021-12-09 17:44:46'),
(1207, 58, 1, '2021-12-09', '2021-12-09 23:01:09'),
(1208, 354, 1, '2021-12-09', '2021-12-09 23:01:44'),
(1209, 354, 1, '2021-12-09', '2021-12-09 23:03:42'),
(1210, 58, 1, '2021-12-10', '2021-12-10 16:10:43'),
(1211, 12, 1, '2021-12-10', '2021-12-10 18:18:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_postmeta`
--

DROP TABLE IF EXISTS `wpjy_postmeta`;
CREATE TABLE `wpjy_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_postmeta`
--

TRUNCATE TABLE `wpjy_postmeta`;
--
-- Volcado de datos para la tabla `wpjy_postmeta`
--

INSERT INTO `wpjy_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'full-width-page.php'),
(6, 6, '_wp_attached_file', '2016/12/Logo-IBC-transparente.png'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:768;s:4:\"file\";s:33:\"2016/12/Logo-IBC-transparente.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Logo-IBC-transparente-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Logo-IBC-transparente-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Logo-IBC-transparente-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Logo-IBC-transparente-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:33:\"Logo-IBC-transparente-360x202.png\";s:5:\"width\";i:360;s:6:\"height\";i:202;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_wp_attached_file', '2016/12/cropped-Logo-IBC-transparente.png'),
(9, 7, '_wp_attachment_context', 'site-icon'),
(10, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:41:\"2016/12/cropped-Logo-IBC-transparente.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-Logo-IBC-transparente-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-Logo-IBC-transparente-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-Logo-IBC-transparente-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:41:\"cropped-Logo-IBC-transparente-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:41:\"cropped-Logo-IBC-transparente-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:41:\"cropped-Logo-IBC-transparente-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:39:\"cropped-Logo-IBC-transparente-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 8, '_wp_attached_file', '2016/12/banner_biblia.jpg'),
(12, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2016/12/banner_biblia.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banner_biblia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banner_biblia-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:25:\"banner_biblia-360x171.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 9, '_wp_attached_file', '2016/12/cropped-banner_biblia.jpg'),
(14, 9, '_wp_attachment_context', 'custom-header'),
(15, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1420;s:6:\"height\";i:489;s:4:\"file\";s:33:\"2016/12/cropped-banner_biblia.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-banner_biblia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-banner_biblia-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"cropped-banner_biblia-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"cropped-banner_biblia-1024x353.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:353;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:33:\"cropped-banner_biblia-360x124.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 9, '_wp_attachment_custom_header_last_used_education-hub', '1481228739'),
(17, 9, '_wp_attachment_is_custom_header', 'education-hub'),
(24, 12, '_edit_lock', '1608085050:2'),
(23, 12, '_edit_last', '2'),
(22, 2, '_edit_lock', '1568159975:2'),
(30, 20, '_edit_last', '3'),
(31, 20, '_edit_lock', '1609338299:3'),
(32, 22, '_edit_last', '3'),
(33, 22, '_edit_lock', '1633015731:3'),
(34, 24, '_edit_last', '1'),
(35, 24, '_edit_lock', '1514987465:2'),
(36, 25, '_wp_attached_file', '2016/12/Malla-Curricular-2016.jpg'),
(37, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:33:\"2016/12/Malla-Curricular-2016.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Malla-Curricular-2016-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Malla-Curricular-2016-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Malla-Curricular-2016-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:33:\"Malla-Curricular-2016-360x270.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 28, '_wp_attached_file', '2016/12/Mision-IBC-JPEG.jpg'),
(39, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:27:\"2016/12/Mision-IBC-JPEG.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Mision-IBC-JPEG-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Mision-IBC-JPEG-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Mision-IBC-JPEG-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:27:\"Mision-IBC-JPEG-360x270.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 31, '_wp_attached_file', '2016/12/IBC-Reglamento-del-alumno-V2-2011.docx'),
(41, 2, '_edit_last', '2'),
(43, 34, '_wp_attached_file', '2016/12/IBC-2017-FLYER.jpg'),
(44, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:26:\"2016/12/IBC-2017-FLYER.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"IBC-2017-FLYER-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"IBC-2017-FLYER-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"IBC-2017-FLYER-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:26:\"IBC-2017-FLYER-360x270.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 37, '_wp_attached_file', '2016/12/Alianza-estrategica-IBC-WCMU.jpg'),
(51, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:40:\"2016/12/Alianza-estrategica-IBC-WCMU.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Alianza-estrategica-IBC-WCMU-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Alianza-estrategica-IBC-WCMU-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"Alianza-estrategica-IBC-WCMU-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:40:\"Alianza-estrategica-IBC-WCMU-360x270.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 40, '_wp_attached_file', '2016/12/logo1.png'),
(353, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:23:\"2018/01/Celular-IBC.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Celular-IBC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Celular-IBC-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Celular-IBC-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Celular-IBC-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:23:\"Celular-IBC-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:686;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2016/12/logo1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo1-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:17:\"logo1-360x188.png\";s:5:\"width\";i:360;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1528;s:6:\"height\";i:627;s:4:\"file\";s:23:\"2017/05/Corporacion.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Corporacion-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Corporacion-300x123.png\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Corporacion-768x315.png\";s:5:\"width\";i:768;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Corporacion-1024x420.png\";s:5:\"width\";i:1024;s:6:\"height\";i:420;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:23:\"Corporacion-360x148.png\";s:5:\"width\";i:360;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 52, '_wp_attached_file', '2016/12/cropped-cropped-banner_biblia.jpg'),
(70, 52, '_wp_attachment_context', 'custom-header'),
(71, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1420;s:6:\"height\";i:307;s:4:\"file\";s:41:\"2016/12/cropped-cropped-banner_biblia.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-cropped-banner_biblia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-cropped-banner_biblia-300x65.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-cropped-banner_biblia-768x166.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-cropped-banner_biblia-1024x221.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 52, '_wp_attachment_custom_header_last_used_appointment', '1481742865'),
(73, 52, '_wp_attachment_is_custom_header', 'appointment'),
(742, 292, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(80, 71, '_wp_attached_file', '2017/05/Corporacion.png'),
(78, 58, '_edit_last', '3'),
(79, 58, '_edit_lock', '1608156032:3'),
(82, 72, '_wp_attached_file', '2017/05/ibcAlcance.png'),
(83, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1495;s:6:\"height\";i:785;s:4:\"file\";s:22:\"2017/05/ibcAlcance.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ibcAlcance-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ibcAlcance-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"ibcAlcance-768x403.png\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"ibcAlcance-1024x538.png\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:22:\"ibcAlcance-360x189.png\";s:5:\"width\";i:360;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 73, '_wp_attached_file', '2017/05/IbcL.png'),
(85, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1238;s:6:\"height\";i:536;s:4:\"file\";s:16:\"2017/05/IbcL.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"IbcL-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"IbcL-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"IbcL-768x333.png\";s:5:\"width\";i:768;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"IbcL-1024x443.png\";s:5:\"width\";i:1024;s:6:\"height\";i:443;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:16:\"IbcL-360x156.png\";s:5:\"width\";i:360;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 74, '_wp_attached_file', '2017/05/ibcnum.png'),
(87, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1294;s:6:\"height\";i:733;s:4:\"file\";s:18:\"2017/05/ibcnum.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ibcnum-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"ibcnum-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"ibcnum-768x435.png\";s:5:\"width\";i:768;s:6:\"height\";i:435;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"ibcnum-1024x580.png\";s:5:\"width\";i:1024;s:6:\"height\";i:580;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:18:\"ibcnum-360x204.png\";s:5:\"width\";i:360;s:6:\"height\";i:204;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 75, '_wp_attached_file', '2017/05/ibcnumeros.png'),
(89, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1424;s:6:\"height\";i:737;s:4:\"file\";s:22:\"2017/05/ibcnumeros.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ibcnumeros-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ibcnumeros-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"ibcnumeros-768x397.png\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"ibcnumeros-1024x530.png\";s:5:\"width\";i:1024;s:6:\"height\";i:530;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"education-hub-thumb\";a:4:{s:4:\"file\";s:22:\"ibcnumeros-360x186.png\";s:5:\"width\";i:360;s:6:\"height\";i:186;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 76, '_edit_lock', '1633034680:3'),
(91, 76, '_edit_last', '3'),
(92, 80, '_wp_attached_file', '2016/12/cropped-cropped-Logo-IBC-transparente.png'),
(93, 80, '_wp_attachment_context', 'custom-logo'),
(94, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:284;s:4:\"file\";s:49:\"2016/12/cropped-cropped-Logo-IBC-transparente.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-Logo-IBC-transparente-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-Logo-IBC-transparente-300x166.png\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"education-zone-recent-post\";a:4:{s:4:\"file\";s:47:\"cropped-cropped-Logo-IBC-transparente-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"education-zone-search-result\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-Logo-IBC-transparente-246x246.png\";s:5:\"width\";i:246;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"education-zone-featured-course\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-Logo-IBC-transparente-276x276.png\";s:5:\"width\";i:276;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"education-zone-testimonial\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-Logo-IBC-transparente-125x125.png\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 8, '_wp_attachment_is_custom_background', 'education-zone'),
(96, 52, '_wp_attachment_is_custom_background', 'education-zone'),
(97, 81, '_wp_attached_file', '2016/12/cropped-cropped-cropped-banner_biblia.jpg'),
(98, 81, '_wp_attachment_context', 'custom-logo'),
(99, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1420;s:6:\"height\";i:134;s:4:\"file\";s:49:\"2016/12/cropped-cropped-cropped-banner_biblia.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-cropped-banner_biblia-150x134.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"cropped-cropped-cropped-banner_biblia-300x28.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:28;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"cropped-cropped-cropped-banner_biblia-768x72.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-cropped-banner_biblia-1024x97.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"education-zone-image-full\";a:4:{s:4:\"file\";s:50:\"cropped-cropped-cropped-banner_biblia-1140x134.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"education-zone-image\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-cropped-banner_biblia-750x134.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"education-zone-recent-post\";a:4:{s:4:\"file\";s:47:\"cropped-cropped-cropped-banner_biblia-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"education-zone-search-result\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-cropped-banner_biblia-246x134.jpg\";s:5:\"width\";i:246;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"education-zone-featured-course\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-cropped-banner_biblia-276x134.jpg\";s:5:\"width\";i:276;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"education-zone-testimonial\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-cropped-banner_biblia-125x125.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"education-zone-blog-full\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-cropped-banner_biblia-848x134.jpg\";s:5:\"width\";i:848;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 58, '_wp_page_template', 'default'),
(101, 58, 'education_zone_sidebar_layout', 'right-sidebar'),
(102, 20, 'education_zone_sidebar_layout', 'right-sidebar'),
(103, 20, '_wp_page_template', 'default'),
(104, 22, '_wp_page_template', 'default'),
(105, 22, 'education_zone_sidebar_layout', 'right-sidebar'),
(114, 12, '_wp_page_template', 'default'),
(115, 24, '_wp_page_template', 'full-width-page.php'),
(539, 240, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:24:\"2020/12/Mujer-biblia.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Mujer-biblia-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:25:\"Mujer-biblia-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:25:\"Mujer-biblia-1350x500.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:25:\"Mujer-biblia-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:25:\"Mujer-biblia-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:24:\"Mujer-biblia-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 240, '_wp_attached_file', '2020/12/Mujer-biblia.jpg'),
(352, 141, '_wp_attached_file', '2018/01/Celular-IBC.jpg'),
(537, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1950;s:6:\"height\";i:1300;s:4:\"file\";s:19:\"2020/12/Lectura.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Lectura-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Lectura-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Lectura-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Lectura-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"Lectura-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:20:\"Lectura-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:19:\"Lectura-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:19:\"Lectura-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:20:\"Lectura-1950x500.jpg\";s:5:\"width\";i:1950;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:20:\"Lectura-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:19:\"Lectura-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:20:\"Lectura-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:19:\"Lectura-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:19:\"Lectura-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(536, 239, '_wp_attached_file', '2020/12/Lectura.jpg'),
(777, 320, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:27:\"2020/12/Seminario-28-12.png\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Seminario-28-12-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x444.png\";s:5:\"width\";i:1080;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-510x510.png\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x624.png\";s:5:\"width\";i:1080;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-528x297.png\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-517x235.png\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 136, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(531, 76, 'post_slider_check_key', '0'),
(530, 76, 'layout_key', ''),
(525, 234, '_menu_item_url', ''),
(524, 234, '_menu_item_xfn', ''),
(523, 234, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(522, 234, '_menu_item_target', ''),
(521, 234, '_menu_item_object', 'page'),
(520, 234, '_menu_item_object_id', '58'),
(519, 234, '_menu_item_menu_item_parent', '0'),
(518, 234, '_menu_item_type', 'post_type'),
(852, 368, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:27:\"2021/11/Seminario-06-11.png\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Seminario-06-11-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:28:\"Seminario-06-11-1080x444.png\";s:5:\"width\";i:1080;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:28:\"Seminario-06-11-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:28:\"Seminario-06-11-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-510x510.png\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:28:\"Seminario-06-11-1080x624.png\";s:5:\"width\";i:1080;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-528x297.png\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:27:\"Seminario-06-11-517x235.png\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(851, 368, '_wp_attached_file', '2021/11/Seminario-06-11.png'),
(850, 367, '_oembed_time_33de21d538b0516ee79702dead9898c2', '1636497600'),
(849, 367, '_oembed_33de21d538b0516ee79702dead9898c2', '<iframe title=\"Secularización y Post Modernidad / El impacto en el cristianismo\" width=\"1140\" height=\"641\" src=\"https://www.youtube.com/embed/0NKssWhnHxQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(846, 361, '_thumbnail_id', '337'),
(838, 361, 'layout_key', ''),
(839, 361, 'post_slider_check_key', '0'),
(837, 361, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:337;s:11:\"_thumb_type\";s:5:\"thumb\";}'),
(836, 361, '_edit_last', '3'),
(847, 367, '_edit_lock', '1636498611:3'),
(848, 367, '_last_editor_used_jetpack', 'block-editor'),
(833, 361, '_oembed_time_787e94b3bf66eacc36392467640df886', '1636381306'),
(826, 358, '_menu_item_url', ''),
(471, 228, '_menu_item_url', ''),
(470, 228, '_menu_item_xfn', ''),
(469, 228, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 228, '_menu_item_target', ''),
(467, 228, '_menu_item_object', 'page'),
(466, 228, '_menu_item_object_id', '12'),
(465, 228, '_menu_item_menu_item_parent', '0'),
(464, 228, '_menu_item_type', 'post_type'),
(825, 358, '_menu_item_xfn', ''),
(824, 358, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(823, 358, '_menu_item_target', ''),
(822, 358, '_menu_item_object', 'page'),
(821, 358, '_menu_item_object_id', '354'),
(820, 358, '_menu_item_menu_item_parent', '0'),
(819, 358, '_menu_item_type', 'post_type'),
(818, 358, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(453, 226, '_menu_item_url', ''),
(452, 226, '_menu_item_xfn', ''),
(451, 226, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(450, 226, '_menu_item_target', ''),
(449, 226, '_menu_item_object', 'page'),
(448, 226, '_menu_item_object_id', '76'),
(447, 226, '_menu_item_menu_item_parent', '0'),
(446, 226, '_menu_item_type', 'post_type'),
(354, 142, '_wp_attached_file', '2018/01/email-cce.jpg'),
(344, 76, '_wp_page_template', 'default'),
(345, 136, '_edit_last', '2'),
(346, 136, '_edit_lock', '1514989064:2'),
(347, 136, 'theme_settings', 'a:3:{s:11:\"post_layout\";s:12:\"left-sidebar\";s:12:\"single_image\";s:0:\"\";s:22:\"single_image_alignment\";s:6:\"center\";}'),
(355, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:21:\"2018/01/email-cce.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"email-cce-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"email-cce-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"email-cce-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"email-cce-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:21:\"email-cce-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 9, '_wp_attachment_is_custom_background', 'bhost'),
(342, 80, '_wp_attachment_is_custom_background', 'bhost'),
(356, 143, '_wp_attached_file', '2018/01/Mision-del-IBC.jpg'),
(357, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:26:\"2018/01/Mision-del-IBC.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Mision-del-IBC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Mision-del-IBC-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Mision-del-IBC-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:26:\"Mision-del-IBC-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 144, '_wp_attached_file', '2018/01/Reserva-tu-cupo.jpg'),
(359, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:27:\"2018/01/Reserva-tu-cupo.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Reserva-tu-cupo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Reserva-tu-cupo-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Reserva-tu-cupo-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Reserva-tu-cupo-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:27:\"Reserva-tu-cupo-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 145, '_wp_attached_file', '2018/01/Sede-Maipu.jpg'),
(361, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:22:\"2018/01/Sede-Maipu.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Sede-Maipu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Sede-Maipu-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Sede-Maipu-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Sede-Maipu-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:22:\"Sede-Maipu-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 146, '_wp_attached_file', '2018/01/Sede-Parral.jpg'),
(363, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:23:\"2018/01/Sede-Parral.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Sede-Parral-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Sede-Parral-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Sede-Parral-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Sede-Parral-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:23:\"Sede-Parral-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 147, '_wp_attached_file', '2018/01/Sede-San-Miguel.jpg'),
(365, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:27:\"2018/01/Sede-San-Miguel.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Sede-San-Miguel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Sede-San-Miguel-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Sede-San-Miguel-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Sede-San-Miguel-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:27:\"Sede-San-Miguel-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(366, 148, '_wp_attached_file', '2018/01/Web-Direccion-IBC.jpg'),
(367, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:29:\"2018/01/Web-Direccion-IBC.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Web-Direccion-IBC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Web-Direccion-IBC-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Web-Direccion-IBC-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Web-Direccion-IBC-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:29:\"Web-Direccion-IBC-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(368, 157, '_edit_lock', '1536431162:2'),
(369, 157, '_edit_last', '2'),
(370, 159, '_wp_attached_file', '2018/09/2018-Invitación-Hogar-Cristiano.jpg');
INSERT INTO `wpjy_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(371, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:44:\"2018/09/2018-Invitación-Hogar-Cristiano.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"2018-Invitación-Hogar-Cristiano-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"2018-Invitación-Hogar-Cristiano-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"2018-Invitación-Hogar-Cristiano-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"2018-Invitación-Hogar-Cristiano-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:44:\"2018-Invitación-Hogar-Cristiano-770x400.jpg\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 168, '_wp_attached_file', '2018/12/Organigrama.png'),
(373, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:450;s:4:\"file\";s:23:\"2018/12/Organigrama.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Organigrama-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Organigrama-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Organigrama-768x431.png\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:23:\"Organigrama-770x400.png\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(380, 176, '_edit_lock', '1608242544:3'),
(381, 176, '_edit_last', '3'),
(382, 176, '_wp_page_template', 'default'),
(394, 201, '_edit_last', '3'),
(399, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:31:\"2020/12/Seminario-28-12-web.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Seminario-28-12-web-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Seminario-28-12-web-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Seminario-28-12-web-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Seminario-28-12-web-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:31:\"Seminario-28-12-web-770x400.png\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 201, '_edit_lock', '1636497487:3'),
(398, 204, '_wp_attached_file', '2020/12/Seminario-28-12-web.png'),
(400, 201, '_wp_page_template', 'default'),
(401, 204, '_edit_lock', '1607953496:2'),
(405, 208, '_wp_attached_file', '2020/12/favIcon.png'),
(406, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2020/12/favIcon.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"favIcon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"favIcon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:19:\"favIcon-512x400.png\";s:5:\"width\";i:512;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 209, '_wp_attached_file', '2020/12/cropped-favIcon.png'),
(408, 209, '_wp_attachment_context', 'site-icon'),
(409, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2020/12/cropped-favIcon.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-favIcon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-favIcon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:27:\"cropped-favIcon-512x400.png\";s:5:\"width\";i:512;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-favIcon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-favIcon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-favIcon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-favIcon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(412, 211, '_wp_attached_file', '2020/12/logotipo-actual.png'),
(413, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1049;s:6:\"height\";i:632;s:4:\"file\";s:27:\"2020/12/logotipo-actual.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"logotipo-actual-300x181.png\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"logotipo-actual-1024x617.png\";s:5:\"width\";i:1024;s:6:\"height\";i:617;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logotipo-actual-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"logotipo-actual-768x463.png\";s:5:\"width\";i:768;s:6:\"height\";i:463;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:27:\"logotipo-actual-770x400.png\";s:5:\"width\";i:770;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(416, 201, 'layout_key', ''),
(417, 201, 'post_slider_check_key', '0'),
(441, 176, 'layout_key', ''),
(442, 176, 'post_slider_check_key', '0'),
(430, 219, '_wp_attached_file', '2020/12/seminarios.png'),
(431, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:250;s:4:\"file\";s:22:\"2020/12/seminarios.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"seminarios-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 201, '_thumbnail_id', '219'),
(433, 220, '_wp_attached_file', '2020/12/admision_icono.png'),
(434, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:250;s:4:\"file\";s:26:\"2020/12/admision_icono.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"admision_icono-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(435, 22, '_thumbnail_id', '220'),
(436, 22, 'layout_key', ''),
(437, 22, 'post_slider_check_key', '0'),
(438, 222, '_wp_attached_file', '2020/12/webclass.png'),
(439, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:250;s:4:\"file\";s:20:\"2020/12/webclass.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"webclass-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 176, '_thumbnail_id', '222'),
(540, 241, '_wp_attached_file', '2020/12/ON-LINE-1.jpg'),
(541, 241, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1352;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2020/12/ON-LINE-1.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"ON-LINE-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:22:\"ON-LINE-1-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:22:\"ON-LINE-1-1352x500.jpg\";s:5:\"width\";i:1352;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:22:\"ON-LINE-1-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:22:\"ON-LINE-1-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:21:\"ON-LINE-1-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(597, 249, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:800;s:4:\"file\";s:62:\"2020/12/2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:63:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:63:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:63:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-1280x500.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:63:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:63:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:62:\"2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(544, 243, '_wp_attached_file', '2020/12/titulados.jpg'),
(545, 243, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2020/12/titulados.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"titulados-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"titulados-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"titulados-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"titulados-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:22:\"titulados-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:21:\"titulados-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:21:\"titulados-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:22:\"titulados-1350x500.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:22:\"titulados-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:21:\"titulados-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:22:\"titulados-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:21:\"titulados-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:21:\"titulados-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 244, '_wp_attached_file', '2020/12/Adoracion.jpg'),
(547, 244, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1950;s:6:\"height\";i:1300;s:4:\"file\";s:21:\"2020/12/Adoracion.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Adoracion-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Adoracion-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Adoracion-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Adoracion-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"Adoracion-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:22:\"Adoracion-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:21:\"Adoracion-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:21:\"Adoracion-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:22:\"Adoracion-1950x500.jpg\";s:5:\"width\";i:1950;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:22:\"Adoracion-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:21:\"Adoracion-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:22:\"Adoracion-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:21:\"Adoracion-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:21:\"Adoracion-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(548, 245, '_wp_attached_file', '2020/12/Biblia.jpg'),
(549, 245, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1266;s:6:\"height\";i:951;s:4:\"file\";s:18:\"2020/12/Biblia.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Biblia-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"Biblia-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Biblia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Biblia-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:19:\"Biblia-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:18:\"Biblia-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:18:\"Biblia-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:19:\"Biblia-1266x500.jpg\";s:5:\"width\";i:1266;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:19:\"Biblia-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:18:\"Biblia-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:19:\"Biblia-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:18:\"Biblia-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:18:\"Biblia-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(550, 246, '_wp_attached_file', '2020/12/estudio-2.jpg'),
(551, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2020/12/estudio-2.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"estudio-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"estudio-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"estudio-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"estudio-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:22:\"estudio-2-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:21:\"estudio-2-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:21:\"estudio-2-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:22:\"estudio-2-1350x500.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:22:\"estudio-2-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:21:\"estudio-2-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:22:\"estudio-2-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:21:\"estudio-2-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:21:\"estudio-2-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 247, '_wp_attached_file', '2020/12/Estudio.jpg'),
(553, 247, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:19:\"2020/12/Estudio.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Estudio-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Estudio-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Estudio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Estudio-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:20:\"Estudio-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:19:\"Estudio-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:19:\"Estudio-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:20:\"Estudio-1350x500.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:20:\"Estudio-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:19:\"Estudio-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:20:\"Estudio-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:19:\"Estudio-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:19:\"Estudio-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(554, 247, '_edit_lock', '1608068279:2'),
(555, 247, 'slider_check_key', '1'),
(556, 247, '_edit_last', '2'),
(557, 247, 'slide_title_key', 'NOS POTENCIAMOS'),
(558, 247, 'slide_text_key', 'Nos potenciamos para el desarrollo de nuestra vida como creyentes y para mantener en alto el llamamiento que se nos ha hecho, para servir y servir mejor al Señor.'),
(559, 247, 'slide_color_key', '#ffffff'),
(560, 247, 'slide_button_key', ''),
(561, 247, 'slide_link_key', ''),
(562, 247, 'slide_custom_link_key', ''),
(563, 247, 'slide_link_target_key', '0'),
(564, 247, 'slide_link_whole_slide_key', '0'),
(565, 247, 'layout_key', ''),
(566, 246, '_edit_lock', '1608068278:2'),
(567, 246, 'slider_check_key', '1'),
(568, 246, 'post_slider_key', 'mainslider'),
(569, 246, '_edit_last', '2'),
(570, 246, 'slide_title_key', 'ESTUDIAMOS'),
(571, 246, 'slide_text_key', 'Estudiamos de forma sistemática de las Sagradas Escrituras porque nos transmite fe, verdad, sabiduría y fortaleza'),
(572, 246, 'slide_color_key', 'Estudiamos'),
(573, 246, 'slide_button_key', ''),
(584, 243, 'post_slider_key', 'mainslider'),
(574, 246, 'slide_link_key', ''),
(575, 246, 'slide_custom_link_key', ''),
(576, 246, 'slide_link_target_key', '0'),
(577, 246, 'slide_link_whole_slide_key', '0'),
(578, 246, 'layout_key', ''),
(582, 243, '_edit_lock', '1608068676:2'),
(583, 243, 'slider_check_key', '1'),
(776, 320, '_wp_attached_file', '2020/12/Seminario-28-12.png'),
(807, 348, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:48:\"2021/01/ca1fe13b-e19a-4838-91d0-c72658b8c0a6.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:49:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-1080x444.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:49:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-1080x500.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:49:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-1080x500.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:49:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-1080x624.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:48:\"ca1fe13b-e19a-4838-91d0-c72658b8c0a6-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(585, 243, '_edit_last', '2'),
(586, 243, 'slide_title_key', 'OBREROS'),
(587, 243, 'slide_text_key', 'Nos transformamos en obreros útiles para nuestras congregaciones y nos transformamos en siervos leales al Señor y nuestros ministros.'),
(588, 243, 'slide_color_key', ''),
(589, 243, 'slide_button_key', ''),
(590, 243, 'slide_link_key', ''),
(591, 243, 'slide_custom_link_key', ''),
(592, 243, 'slide_link_target_key', '0'),
(593, 243, 'slide_link_whole_slide_key', '0'),
(594, 243, 'layout_key', ''),
(596, 249, '_wp_attached_file', '2020/12/2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal.jpg'),
(598, 249, '_edit_lock', '1608068566:2'),
(599, 249, 'slider_check_key', '1'),
(600, 249, 'post_slider_key', 'mainslider'),
(601, 249, '_edit_last', '2'),
(602, 249, 'slide_title_key', '11 SEDES'),
(603, 249, 'slide_text_key', 'Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.'),
(604, 249, 'slide_color_key', '11 SEDES'),
(605, 249, 'slide_button_key', ''),
(606, 249, 'slide_link_key', ''),
(607, 249, 'slide_custom_link_key', ''),
(608, 249, 'slide_link_target_key', '0'),
(609, 249, 'slide_link_whole_slide_key', '0'),
(610, 249, 'layout_key', ''),
(611, 241, '_edit_lock', '1608068800:2'),
(612, 241, 'slider_check_key', '1'),
(613, 241, '_edit_last', '2'),
(614, 241, 'slide_title_key', '100% ON LINE'),
(615, 241, 'slide_text_key', 'Adaptamos nuestros cursos a la nueva realidad digital, con clases 100% Streaming - On line'),
(616, 241, 'slide_color_key', ''),
(617, 241, 'slide_button_key', ''),
(618, 241, 'slide_link_key', ''),
(619, 241, 'slide_custom_link_key', ''),
(620, 241, 'slide_link_target_key', '0'),
(621, 241, 'slide_link_whole_slide_key', '0'),
(622, 241, 'layout_key', ''),
(623, 241, 'post_slider_key', 'mainslider'),
(624, 22, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:220;s:11:\"_thumb_type\";s:5:\"thumb\";}'),
(625, 201, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:219;s:11:\"_thumb_type\";s:5:\"thumb\";}'),
(626, 176, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:222;s:11:\"_thumb_type\";s:5:\"thumb\";}'),
(805, 343, '_thumbnail_id', '348'),
(796, 343, 'post_slider_check_key', '0'),
(629, 251, '_wp_attached_file', '2020/12/Matriculate.jpg'),
(630, 251, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1267;s:6:\"height\";i:950;s:4:\"file\";s:23:\"2020/12/Matriculate.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Matriculate-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Matriculate-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Matriculate-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Matriculate-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:24:\"Matriculate-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:23:\"Matriculate-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:23:\"Matriculate-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:24:\"Matriculate-1267x500.jpg\";s:5:\"width\";i:1267;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:24:\"Matriculate-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:23:\"Matriculate-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:24:\"Matriculate-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:23:\"Matriculate-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:23:\"Matriculate-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(631, 251, '_edit_lock', '1608143667:3'),
(632, 251, 'slider_check_key', '1'),
(633, 251, 'post_slider_key', 'mainslider'),
(634, 251, '_edit_last', '3'),
(635, 251, 'slide_title_key', 'Reserva tu cupo ¡AHORA!'),
(636, 251, 'slide_text_key', '¡MATRICULAS ABIERTAS! Es necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios. PREPÁRATE RESPONSABLEMENTE PARA APRENDER, ...'),
(637, 251, 'slide_color_key', ''),
(638, 251, 'slide_button_key', ''),
(639, 251, 'slide_link_key', '253'),
(640, 251, 'slide_custom_link_key', ''),
(641, 251, 'slide_link_target_key', '0'),
(642, 251, 'slide_link_whole_slide_key', '1'),
(643, 251, 'layout_key', ''),
(644, 76, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:6;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(645, 253, '_edit_lock', '1633015663:3'),
(646, 253, '_edit_last', '2'),
(647, 253, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:295;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(648, 253, 'layout_key', ''),
(649, 253, 'post_slider_check_key', '0'),
(830, 361, '_edit_lock', '1636497938:3'),
(831, 361, '_last_editor_used_jetpack', 'block-editor'),
(832, 361, '_oembed_787e94b3bf66eacc36392467640df886', '<iframe title=\"Feminismo / Cristianismo ¿Dónde estamos?\" width=\"1140\" height=\"641\" src=\"https://www.youtube.com/embed/HwdelXHxs9g?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(662, 234, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(660, 226, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(661, 228, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(663, 256, '_edit_lock', '1608083578:2'),
(664, 256, '_edit_last', '2'),
(665, 256, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:270;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(666, 256, 'layout_key', ''),
(667, 256, 'post_slider_check_key', '0'),
(668, 258, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(669, 258, '_menu_item_type', 'post_type'),
(670, 258, '_menu_item_menu_item_parent', '0'),
(671, 258, '_menu_item_object_id', '256'),
(672, 258, '_menu_item_object', 'page'),
(673, 258, '_menu_item_target', ''),
(674, 258, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 258, '_menu_item_xfn', ''),
(676, 258, '_menu_item_url', ''),
(794, 343, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:348;s:11:\"_thumb_type\";s:5:\"thumb\";}'),
(795, 343, 'layout_key', ''),
(806, 348, '_wp_attached_file', '2021/01/ca1fe13b-e19a-4838-91d0-c72658b8c0a6.jpg'),
(793, 343, '_edit_last', '3'),
(790, 343, '_oembed_time_6d078519d485e84258c4440099cd1f4f', '1610992344'),
(687, 147, '_edit_lock', '1608081241:2'),
(688, 147, 'slider_check_key', '1'),
(689, 147, 'post_slider_key', ''),
(690, 147, '_edit_last', '2'),
(691, 147, 'slide_title_key', ''),
(692, 147, 'slide_text_key', ''),
(693, 147, 'slide_color_key', ''),
(694, 147, 'slide_button_key', ''),
(695, 147, 'slide_link_key', ''),
(696, 147, 'slide_custom_link_key', ''),
(697, 147, 'slide_link_target_key', '0'),
(698, 147, 'slide_link_whole_slide_key', '0'),
(699, 147, 'layout_key', ''),
(700, 146, '_edit_lock', '1608081102:2'),
(701, 146, 'slider_check_key', '1'),
(702, 146, 'post_slider_key', 'slidesedes'),
(703, 146, '_edit_last', '2'),
(704, 146, 'slide_title_key', ''),
(705, 146, 'slide_text_key', ''),
(706, 146, 'slide_color_key', ''),
(707, 146, 'slide_button_key', ''),
(708, 146, 'slide_link_key', ''),
(709, 146, 'slide_custom_link_key', ''),
(710, 146, 'slide_link_target_key', '0'),
(711, 146, 'slide_link_whole_slide_key', '0'),
(712, 146, 'layout_key', ''),
(713, 145, '_edit_lock', '1608081156:2'),
(714, 145, 'slider_check_key', '1'),
(715, 145, '_edit_last', '2'),
(716, 145, 'slide_title_key', ''),
(717, 145, 'slide_text_key', ''),
(718, 145, 'slide_color_key', ''),
(719, 145, 'slide_button_key', ''),
(720, 145, 'slide_link_key', ''),
(721, 145, 'slide_custom_link_key', ''),
(722, 145, 'slide_link_target_key', '0'),
(723, 145, 'slide_link_whole_slide_key', '0'),
(724, 145, 'layout_key', ''),
(725, 256, 'post_slider_key', 'slidesedes'),
(726, 256, 'slider_delay_key', '5000'),
(727, 256, 'slider_layout_key', '1'),
(728, 256, 'slider_overlay_key', 'on'),
(729, 256, 'slider_dots_key', 'on'),
(732, 270, '_wp_attached_file', '2020/12/ping.jpg'),
(733, 270, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2020/12/ping.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ping-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"ping-948x1024.jpg\";s:5:\"width\";i:948;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ping-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"ping-768x829.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:829;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:17:\"ping-1000x444.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:16:\"ping-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:16:\"ping-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:17:\"ping-1000x500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:17:\"ping-1000x500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:16:\"ping-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:17:\"ping-1000x624.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:16:\"ping-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:16:\"ping-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(734, 278, '_wp_attached_file', '2020/12/Mision.png'),
(735, 278, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:956;s:6:\"height\";i:505;s:4:\"file\";s:18:\"2020/12/Mision.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Mision-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Mision-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Mision-768x406.png\";s:5:\"width\";i:768;s:6:\"height\";i:406;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:18:\"Mision-956x444.png\";s:5:\"width\";i:956;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:18:\"Mision-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:18:\"Mision-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:18:\"Mision-956x500.png\";s:5:\"width\";i:956;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:18:\"Mision-956x500.png\";s:5:\"width\";i:956;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:18:\"Mision-510x505.png\";s:5:\"width\";i:510;s:6:\"height\";i:505;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:18:\"Mision-528x297.png\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:18:\"Mision-517x235.png\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(736, 12, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:286;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(737, 12, 'layout_key', ''),
(738, 12, 'post_slider_check_key', '0'),
(739, 286, '_wp_attached_file', '2020/12/07032020-DSC_8932-HDR-scaled.jpg'),
(740, 286, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:776;s:4:\"file\";s:40:\"2020/12/07032020-DSC_8932-HDR-scaled.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"07032020-DSC_8932-HDR-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"07032020-DSC_8932-HDR-1024x311.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:311;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"07032020-DSC_8932-HDR-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"07032020-DSC_8932-HDR-768x233.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"07032020-DSC_8932-HDR-1536x466.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"07032020-DSC_8932-HDR-2048x621.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:621;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:34:\"07032020-DSC_8932-HDR-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:33:\"07032020-DSC_8932-HDR-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:33:\"07032020-DSC_8932-HDR-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:34:\"07032020-DSC_8932-HDR-4164x500.jpg\";s:5:\"width\";i:4164;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:34:\"07032020-DSC_8932-HDR-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:33:\"07032020-DSC_8932-HDR-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:34:\"07032020-DSC_8932-HDR-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:33:\"07032020-DSC_8932-HDR-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:33:\"07032020-DSC_8932-HDR-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:11:\"JOTA_MILLER\";s:6:\"camera\";s:11:\"NIKON D7000\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1583583055\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:25:\"07032020-DSC_8932-HDR.jpg\";}'),
(741, 291, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(743, 253, '_last_editor_used_jetpack', 'block-editor');
INSERT INTO `wpjy_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(744, 295, '_wp_attached_file', '2020/12/proceso-admision-pinares-2021.png'),
(745, 295, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:41:\"2020/12/proceso-admision-pinares-2021.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:42:\"proceso-admision-pinares-2021-1024x444.png\";s:5:\"width\";i:1024;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:42:\"proceso-admision-pinares-2021-1024x500.png\";s:5:\"width\";i:1024;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:42:\"proceso-admision-pinares-2021-1024x500.png\";s:5:\"width\";i:1024;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-510x510.png\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:42:\"proceso-admision-pinares-2021-1024x624.png\";s:5:\"width\";i:1024;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-528x297.png\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:41:\"proceso-admision-pinares-2021-517x235.png\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(746, 292, 'wpforms_entries_count', '12'),
(747, 297, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(748, 76, '_last_editor_used_jetpack', 'block-editor'),
(749, 299, '_wp_attached_file', '2020/12/IBCfinal-WSP.mp4'),
(750, 299, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:40821704;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:87;s:16:\"length_formatted\";s:4:\"1:27\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1607997871;}'),
(751, 58, '_last_editor_used_jetpack', 'block-editor'),
(752, 58, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(753, 58, 'layout_key', ''),
(754, 58, 'post_slider_check_key', '0'),
(755, 201, '_last_editor_used_jetpack', 'block-editor'),
(789, 343, '_oembed_6d078519d485e84258c4440099cd1f4f', '<iframe title=\"Seminario Amenazas y Esperanzas para la iglesia cristiana  2021\" width=\"1140\" height=\"641\" src=\"https://www.youtube.com/embed/V90B23FOwZY?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(787, 343, '_edit_lock', '1636376871:3'),
(788, 343, '_last_editor_used_jetpack', 'block-editor'),
(766, 22, '_last_editor_used_jetpack', 'block-editor'),
(769, 314, '_wp_attached_file', '2020/12/Malla.png'),
(770, 314, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1911;s:6:\"height\";i:1079;s:4:\"file\";s:17:\"2020/12/Malla.png\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Malla-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"Malla-1024x578.png\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Malla-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Malla-768x434.png\";s:5:\"width\";i:768;s:6:\"height\";i:434;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"Malla-1536x867.png\";s:5:\"width\";i:1536;s:6:\"height\";i:867;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:18:\"Malla-1110x444.png\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:17:\"Malla-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:17:\"Malla-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:18:\"Malla-1911x500.png\";s:5:\"width\";i:1911;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:18:\"Malla-1110x500.png\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:17:\"Malla-510x510.png\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:18:\"Malla-1110x624.png\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:17:\"Malla-528x297.png\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:17:\"Malla-517x235.png\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(771, 176, '_last_editor_used_jetpack', 'block-editor'),
(772, 297, 'wpforms_entries_count', '3'),
(773, 24, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:25;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(774, 20, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(775, 2, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(778, 20, '_last_editor_used_jetpack', 'block-editor'),
(779, 20, 'layout_key', ''),
(780, 20, 'post_slider_check_key', '0'),
(781, 327, '_wp_attached_file', '2021/01/Seminario-28-12.png'),
(782, 327, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:27:\"2021/01/Seminario-28-12.png\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Seminario-28-12-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x444.png\";s:5:\"width\";i:1080;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-510x510.png\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:28:\"Seminario-28-12-1080x624.png\";s:5:\"width\";i:1080;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-528x297.png\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:27:\"Seminario-28-12-517x235.png\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(783, 335, '_wp_attached_file', '2021/01/DatosIBC.jpg'),
(784, 335, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:1080;s:4:\"file\";s:20:\"2021/01/DatosIBC.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DatosIBC-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DatosIBC-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DatosIBC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DatosIBC-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"DatosIBC-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:21:\"DatosIBC-1110x444.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:20:\"DatosIBC-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:20:\"DatosIBC-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:21:\"DatosIBC-1919x500.jpg\";s:5:\"width\";i:1919;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"slider\";a:4:{s:4:\"file\";s:21:\"DatosIBC-1110x500.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:20:\"DatosIBC-510x510.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:21:\"DatosIBC-1110x624.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:20:\"DatosIBC-528x297.jpg\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:20:\"DatosIBC-517x235.jpg\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(785, 337, '_wp_attached_file', '2021/01/Seminario-25-01.png'),
(786, 337, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:27:\"2021/01/Seminario-25-01.png\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Seminario-25-01-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"tc-grid-full\";a:4:{s:4:\"file\";s:28:\"Seminario-25-01-1080x444.png\";s:5:\"width\";i:1080;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-570x350.png\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"slider-full\";a:4:{s:4:\"file\";s:28:\"Seminario-25-01-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"slider\";a:4:{s:4:\"file\";s:28:\"Seminario-25-01-1080x500.png\";s:5:\"width\";i:1080;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-sq-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-510x510.png\";s:5:\"width\";i:510;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"tc-ws-thumb\";a:4:{s:4:\"file\";s:28:\"Seminario-25-01-1080x624.png\";s:5:\"width\";i:1080;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-528x297.png\";s:5:\"width\";i:528;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:27:\"Seminario-25-01-517x235.png\";s:5:\"width\";i:517;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(810, 354, '_edit_lock', '1633017772:3'),
(811, 354, '_last_editor_used_jetpack', 'block-editor'),
(812, 354, '_edit_last', '3'),
(813, 354, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:356;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(814, 354, 'layout_key', ''),
(815, 354, 'post_slider_check_key', '0'),
(816, 356, '_wp_attached_file', '2021/09/admision-2022-textoimg_2_azul1.png'),
(817, 356, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:401;s:4:\"file\";s:42:\"2021/09/admision-2022-textoimg_2_azul1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"admision-2022-textoimg_2_azul1-300x241.png\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"admision-2022-textoimg_2_azul1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"tc-grid\";a:4:{s:4:\"file\";s:42:\"admision-2022-textoimg_2_azul1-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:42:\"admision-2022-textoimg_2_azul1-270x250.png\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:42:\"admision-2022-textoimg_2_azul1-500x297.png\";s:5:\"width\";i:500;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:42:\"admision-2022-textoimg_2_azul1-500x235.png\";s:5:\"width\";i:500;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(860, 372, '_wp_attached_file', '2021/12/logotipo-IBC-AZUL-CHICO.png'),
(855, 367, '_thumbnail_id', '368'),
(856, 367, '_edit_last', '3'),
(857, 367, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";i:368;s:11:\"_thumb_type\";s:5:\"thumb\";}'),
(858, 367, 'layout_key', ''),
(859, 367, 'post_slider_check_key', '0'),
(861, 372, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:112;s:4:\"file\";s:35:\"2021/12/logotipo-IBC-AZUL-CHICO.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"logotipo-IBC-AZUL-CHICO-150x112.png\";s:5:\"width\";i:150;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(862, 373, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(863, 373, '_um_custom_fields', 'a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(864, 373, '_um_mode', 'register'),
(865, 373, '_um_core', 'register'),
(866, 373, '_um_register_use_custom_settings', '0'),
(867, 374, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(868, 374, '_um_custom_fields', 'a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(869, 374, '_um_mode', 'login'),
(870, 374, '_um_core', 'login'),
(871, 374, '_um_login_use_custom_settings', '0'),
(872, 375, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(873, 375, '_um_custom_fields', 'a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(874, 375, '_um_mode', 'profile'),
(875, 375, '_um_core', 'profile'),
(876, 375, '_um_profile_use_custom_settings', '0'),
(877, 376, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(878, 376, '_um_core', 'members'),
(879, 376, '_um_template', 'members'),
(880, 376, '_um_mode', 'directory'),
(881, 376, '_um_view_types', 'a:1:{i:0;s:4:\"grid\";}'),
(882, 376, '_um_default_view', 'grid'),
(883, 376, '_um_roles', 'a:0:{}'),
(884, 376, '_um_has_profile_photo', '0'),
(885, 376, '_um_has_cover_photo', '0'),
(886, 376, '_um_show_these_users', ''),
(887, 376, '_um_exclude_these_users', ''),
(888, 376, '_um_sortby', 'user_registered_desc'),
(889, 376, '_um_sortby_custom', ''),
(890, 376, '_um_sortby_custom_label', ''),
(891, 376, '_um_enable_sorting', '0'),
(892, 376, '_um_sorting_fields', 'a:0:{}'),
(893, 376, '_um_profile_photo', '1'),
(894, 376, '_um_cover_photos', '1'),
(895, 376, '_um_show_name', '1'),
(896, 376, '_um_show_tagline', '0'),
(897, 376, '_um_tagline_fields', 'a:0:{}'),
(898, 376, '_um_show_userinfo', '0'),
(899, 376, '_um_reveal_fields', 'a:0:{}'),
(900, 376, '_um_show_social', '0'),
(901, 376, '_um_userinfo_animate', '1'),
(902, 376, '_um_search', '0'),
(903, 376, '_um_roles_can_search', 'a:0:{}'),
(904, 376, '_um_filters', '0'),
(905, 376, '_um_roles_can_filter', 'a:0:{}'),
(906, 376, '_um_search_fields', 'a:0:{}'),
(907, 376, '_um_filters_expanded', '0'),
(908, 376, '_um_filters_is_collapsible', '1'),
(909, 376, '_um_search_filters', 'a:0:{}'),
(910, 376, '_um_must_search', '0'),
(911, 376, '_um_max_users', ''),
(912, 376, '_um_profiles_per_page', '12'),
(913, 376, '_um_profiles_per_page_mobile', '6'),
(914, 376, '_um_directory_header', '{total_users} Members'),
(915, 376, '_um_directory_header_single', '{total_users} Member'),
(916, 376, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(917, 377, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(918, 377, '_um_core', 'user'),
(919, 378, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(920, 378, '_um_core', 'login'),
(921, 379, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(922, 379, '_um_core', 'register'),
(923, 380, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(924, 380, '_um_core', 'members'),
(925, 381, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(926, 381, '_um_core', 'logout'),
(927, 382, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(928, 382, '_um_core', 'account'),
(929, 383, 'tc-thumb-fld', 'a:2:{s:9:\"_thumb_id\";b:0;s:11:\"_thumb_type\";s:10:\"attachment\";}'),
(930, 383, '_um_core', 'password-reset'),
(931, 377, '_edit_lock', '1639084159:3'),
(932, 377, '_last_editor_used_jetpack', 'block-editor'),
(933, 380, '_edit_lock', '1639084474:3'),
(934, 380, '_last_editor_used_jetpack', 'block-editor'),
(937, 386, '_wp_attached_file', '2021/12/CSUH9800.jpg'),
(938, 386, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2021/12/CSUH9800.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"CSUH9800-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:20:\"CSUH9800-270x200.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(939, 387, '_wp_attached_file', '2021/12/avatar-personaje-empresario-aislado_24877-601111.jpg'),
(940, 387, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:338;s:6:\"height\";i:338;s:4:\"file\";s:60:\"2021/12/avatar-personaje-empresario-aislado_24877-601111.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"avatar-personaje-empresario-aislado_24877-601111-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"avatar-personaje-empresario-aislado_24877-601111-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tc-thumb\";a:4:{s:4:\"file\";s:60:\"avatar-personaje-empresario-aislado_24877-601111-270x250.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"tc-ws-small-thumb\";a:4:{s:4:\"file\";s:60:\"avatar-personaje-empresario-aislado_24877-601111-338x297.jpg\";s:5:\"width\";i:338;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"tc-slider-small\";a:4:{s:4:\"file\";s:60:\"avatar-personaje-empresario-aislado_24877-601111-338x235.jpg\";s:5:\"width\";i:338;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_posts`
--

DROP TABLE IF EXISTS `wpjy_posts`;
CREATE TABLE `wpjy_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_posts`
--

TRUNCATE TABLE `wpjy_posts`;
--
-- Volcado de datos para la tabla `wpjy_posts`
--

INSERT INTO `wpjy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(146, 2, '2018-01-03 10:06:09', '2018-01-03 14:06:09', '', 'Sede Parral', '', 'inherit', 'open', 'closed', '', 'sede-parral', '', '', '2020-12-15 21:13:24', '2020-12-16 01:13:24', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Sede-Parral.jpg', 0, 'attachment', 'image/jpeg', 0),
(2, 1, '2016-12-06 12:33:27', '2016-12-06 12:33:27', 'Todo alumno del IBC debe comprometerse con lo siguiente:\r\n<ul>\r\n 	<li>Orar y estudiar permanentemente para dar frutos dignos de un obrero cristiano</li>\r\n 	<li>Asistir puntualmente a cada una de sus clases y entregar sus deberes a tiempo</li>\r\n 	<li>Aceptar el castigo en sus notas por incumplimiento académico:</li>\r\n</ul>\r\n<table class=\" aligncenter\" style=\"height: 181px;\" width=\"355\">\r\n<tbody>\r\n<tr>\r\n<td width=\"120\">Nota máxima</td>\r\n<td width=\"225\">Entrega de tareas</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">7</td>\r\n<td width=\"225\">\r\n<p style=\"text-align: left;\">A tiempo (en la fecha)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">6</td>\r\n<td width=\"225\">1 semana después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">5</td>\r\n<td width=\"225\">2 semanas después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">1</td>\r\n<td width=\"225\">&gt;2 semanas</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Justificar las inasistencias debidamente con su respectivo profesor y con la Dirección académica del Instituto Bíblico. En el caso de enfermedad, presentar certificado médico, en cuyo caso las tareas no quedan sujetas a descuento por demora. Si se tratase de un impedimento laboral se deberá avisar al profesor oportunamente la inasistencia (siendo el mismo día el último plazo) y las tareas se entregarán en la reunión siguiente.</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Pagar puntualmente sus compromisos académicos con el IBC. En caso contrario se compromete a dar una explicación razonable y anticipada por alguna demora.</li>\r\n 	<li style=\"text-align: left;\">Manifestar una conducta de respeto y espíritu cristiano hacia sus profesores y compañeros en todo momento</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Practicar la sencillez y el buen compañerismo</li>\r\n</ul>\r\nDescargar Documento :<a href=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-Reglamento-del-alumno-V2-2011.docx\">Reglamento</a>', 'Reglamento', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-10 20:01:42', '2019-09-11 00:01:42', '', 0, 'http://ibc-cce.cl/wp/?page_id=2', 5, 'page', '', 0),
(13, 1, '2016-12-08 17:33:08', '2016-12-08 17:33:08', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nEl IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.\r\n\r\nEl IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos\r\n\r\n</div>\r\n</div>\r\n</div>', 'Misión IBC', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-08 17:33:08', '2016-12-08 17:33:08', '', 12, 'http://ibc-cce.cl/wp/?p=13', 0, 'revision', '', 0),
(6, 1, '2016-12-06 12:47:12', '2016-12-06 12:47:12', '', 'IBC', '', 'inherit', 'open', 'closed', '', 'logo-ibc-transparente', '', '', '2017-10-23 15:39:26', '2017-10-23 19:39:26', '', 76, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Logo-IBC-transparente.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2016-12-06 12:47:59', '2016-12-06 12:47:59', 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-Logo-IBC-transparente.png', 'cropped-Logo-IBC-transparente.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-ibc-transparente-png', '', '', '2016-12-06 12:47:59', '2016-12-06 12:47:59', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-Logo-IBC-transparente.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2016-12-06 12:49:08', '2016-12-06 12:49:08', '', 'banner_biblia', '', 'inherit', 'open', 'closed', '', 'banner_biblia', '', '', '2016-12-06 12:49:08', '2016-12-06 12:49:08', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/banner_biblia.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2016-12-06 12:49:26', '2016-12-06 12:49:26', '', 'cropped-banner_biblia.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-banner_biblia-jpg', '', '', '2016-12-06 12:49:26', '2016-12-06 12:49:26', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-banner_biblia.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2016-12-08 17:33:08', '2016-12-08 17:33:08', '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p>El Instituto Bíblico del Centro (IBC) existe para formar <span style=\"font-weight: 700 !important;\">obreros útiles a la obra de Dios</span>, entregándoles una sólida formación teológica y una clara orientación al servicio cristiano en el Reino de Dios. Cada uno de ellos saldrá más y mejor preparado para servir a Dios <span style=\"font-weight: 700 !important;\">en sus congregaciones según el llamado propio que Dios ha hecho a cada uno</span>.</p>\n<p>El IBC se diferencia de otras instituciones teológicas porque su objetivo es la formación de obreros y no de teólogos. Al mismo tiempo, combina de manera exquisita la transmisión de conocimiento y la unción del Espíritu Santo. Por otro lado, el ambiente que se vive en cada clase es único. Los hermanos se enamoran del clima fraternal, donde nadie discrimina a otro por ser más o menos, pues se sienten acogidos por iguales.</p>\n<p>Nuestros alumnos dicen así: una vez institutano del IBC por siempre institutano del IBC. Es decir, basta ir a la primera clase de Pentateuco para enamorarse de la Palabra de Dios y nunca más abandonar el instituto.</p>\n</div>\n<div class=\"column\">\n<p><strong>Nuestra Misión</strong></p>\n<p>El IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.</p>\n<p>El IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos.</p>\n</div>\n</div>\n</div>\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Misión del IBC</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":278,\"width\":960,\"height\":508,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mision.png\" alt=\"\" class=\"wp-image-278\" width=\"960\" height=\"508\" title=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestros Objetivos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1- &nbsp;Formar obreros útiles para las congregaciones locales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2- &nbsp;Desarrollar carácter cristiano en los obreros según patrones bíblicos</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3- &nbsp;Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>El foco del IBC se sustenta en tres pilares:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>a) &nbsp;Conocimiento de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>b)  Presencia de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>c)  Administración transparente</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Nuestro Equipo</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":286,\"width\":1024,\"height\":311,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/07032020-DSC_8932-HDR-1024x311.jpg\" alt=\"\" class=\"wp-image-286\" width=\"1024\" height=\"311\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Equipo Docente</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Pastora, Margarita Piqué Faúndez (Director)</li><li>Pastor, Elías Montero Piqué (Representante Legal)</li><li>Pastor, Gerardo Arancibia Ovalle</li><li>Pastor, Leonel Suárez</li><li>Dcno. Andrés Ureta Órdenes</li><li>Dcno. Italo Morales Ruiz</li><li>Dcno. Jaime Toledo Rupallán</li><li>Dcno. Lorenzo Villalobos</li><li>Hna. Fabiola Ceppi Monares</li><li>Hna. Nicole Chávez Muñoz</li><li>Hno. Gabriel Zamora Muñoz</li><li>Hna. Viviana Daza Manque</li><li>Hno. Samuel Campos Cid</li><li>Hna. Laura Muñoz Muñoz</li><li>Hno. Felipe Montero Fuentes</li><li>Hna. Ariela Rios Cisterna</li><li>Hno. Esteban Pizarro Pinto</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Equipo administrativo</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Pastora, Marcela Fuentes Fuentes (directora de casino)</li><li>Jonathan Miller (Secretaría)</li><li>Angie Millan (Secretaría)</li><li>Ana Luz Díaz Cartes (Finanzas)</li><li>Esteban Pizarro Pinto (Campus Virtual)</li><li>María Soledad González (Casino)</li><li>Ercilda Fuentes Burgos (Casino)</li><li>Adelina Fuentes Burgos (Casino)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Misión y Objetivos', '', 'publish', 'closed', 'closed', '', 'mision-ibc', '', '', '2020-12-15 22:17:28', '2020-12-16 02:17:28', '', 0, 'http://ibc-cce.cl/wp/?page_id=12', 1, 'page', '', 0),
(76, 1, '2017-05-25 22:51:20', '2017-05-26 02:51:20', '[video width=\"1280\" height=\"720\" mp4=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/IBCfinal-WSP.mp4\"][/video]', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2020-12-16 15:03:03', '2020-12-16 19:03:03', '', 0, 'http://ibc-cce.cl/wp/?page_id=76', 0, 'page', '', 0),
(298, 3, '2020-12-16 14:59:18', '2020-12-16 18:59:18', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-12-16 14:59:18', '2020-12-16 18:59:18', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(276, 2, '2020-12-15 21:56:08', '2020-12-16 01:56:08', 'Mas Información en +569 3 204 04 51 o ibc@i-cce.cl\n\nInicio de clases MARZO 2021', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-12-15 21:56:08', '2020-12-16 01:56:08', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(252, 2, '2020-12-15 18:05:07', '2020-12-15 22:05:07', 'Sedes\nCasa Central, Teresa Vial 1141, San Miguel\nMaipu, General las Heras 2606\nParral, Igualdad esquina San Martín\nPuente Alto, Camino Internacional\nPuente Alto, Primavera\nPuente Alto, Jireh\nPudahuel\nCerro Navia\nPaine\n\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\n\nInicio de clases MARZO 2021\n\nPor la contingencia (COVID19) las clases serán online', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-12-15 18:05:07', '2020-12-15 22:05:07', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(236, 2, '2020-12-15 16:34:18', '2020-12-15 20:34:18', '<strong>ADMISIÓN 2021</strong>\n\nEs necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios.\n\n<strong>PREPÁRATE RESPONSABLEMENTE PARA SERVIR A DIOS DE MANERA EFICIENTE</strong>\n\n¡MATRICULAS ABIERTAS!\n\nReserva tu cupo ¡AHORA!\n\nSedes\nCasa Central, Teresa Vial 1141, San Miguel\nMaipu, General las Heras 2606\nParral, Igualdad esquina San Martín\nPuente Alto, Camino Internacional\nPuente Alto, Primavera\nPuente Alto, Jireh\nPudahuel\nCerro Navia\nPaine\n\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\n\nInicio de clases MARZO 2021\n\nPor la contingencia (COVID19) las clases serán online', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-12-15 16:34:18', '2020-12-15 20:34:18', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-10-23 13:11:27', '2017-10-23 17:11:27', '[R-slider id=\"1\"]\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-10-23 13:11:27', '2017-10-23 17:11:27', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-05-25 22:51:20', '2017-05-25 22:51:20', '[R-slider id=\"2\"]\r\n\r\nBienvenidos al Instituto Biblico del Centro', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-05-25 22:51:20', '2017-05-25 22:51:20', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-12-08 17:38:47', '2016-12-08 17:38:47', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nNuestra Misión\r\n\r\nEl IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.\r\n\r\nEl IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos\r\n\r\n<hr />\r\n\r\nNuestros Objetivos\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ol>\r\n 	<li>1-  Formar obreros útiles para las congregaciones locales</li>\r\n 	<li>2-  Desarrollar carácter cristiano en los obreros según patrones bíblicos</li>\r\n 	<li>3-  Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-08 17:38:47', '2016-12-08 17:38:47', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-12-08 17:40:49', '2016-12-08 17:40:49', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nNuestra Misión\r\n\r\nEl IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.\r\n\r\nEl IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos\r\n\r\n<hr />\r\n\r\nNuestros Objetivos\r\n\r\n1-  Formar obreros útiles para las congregaciones locales\r\n\r\n2-  Desarrollar carácter cristiano en los obreros según patrones bíblicos\r\n\r\n3-  Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nEl foco del IBC se sustenta en tres pilares:\r\n<ol>\r\n 	<li>a)  Conocimiento de la Palabra de Dios</li>\r\n 	<li>b)  Presencia de Dios</li>\r\n 	<li>c)  Administración transparente</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-08 17:40:49', '2016-12-08 17:40:49', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-12-08 17:44:33', '2016-12-08 17:44:33', '[R-slider id=\"5\"]\n\nEquipo Docente\n<div class=\"page\" title=\"Página 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\n 	<li>Pastor, Gerardo Arancibia Ovalle</li>\n 	<li>Pastor, Leonel Suárez</li>\n 	<li>Dcno. Andrés Ureta Órdenes</li>\n 	<li>Dcno. Italo Morales Ruiz</li>\n 	<li>Dcno. Jaime Toledo Rupallán</li>\n 	<li>Dcno. Lorenzo Villalobos</li>\n 	<li>Dcnsa. Fabiola Ceppi Monares</li>\n 	<li>Hna. Nicole Chávez Muñoz</li>\n 	<li>Hno. Gabriel Zamora Muñoz</li>\n 	<li>Hna. Viviana Daza Manque</li>\n 	<li>Hno. Samuel Campos Cid</li>\n 	<li>Hna. Laura Muñoz Muñoz</li>\n 	<li>Dcno. Felipe Montero Fuentes</li>\n 	<li>Dcnsa. Ariela Rios Cisterna</li>\n 	<li>Hno. Esteban Pizarro Pinto</li>\n</ul>\n\n<hr />\n\nEquipo administrativo\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\n 	<li><span class=\"goog-text-highlight\">Jonathan Miller (Secretaría)</span></li>\n 	<li><span class=\"goog-text-highlight\">Angie Millan (Secretaría)</span></li>\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\n 	<li>Esteban Pizarro Pinto (Campus Virtual)</li>\n 	<li>María Soledad González (Casino)</li>\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\n 	<li>Adelina Fuentes Burgos (Casino)</li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Nuestro Equipo', '', 'publish', 'closed', 'closed', '', 'nuestro-equipo', '', '', '2020-12-30 10:26:34', '2020-12-30 14:26:34', '', 0, 'http://ibc-cce.cl/wp/?page_id=20', 2, 'page', '', 0),
(326, 3, '2020-12-30 10:26:29', '2020-12-30 14:26:29', '[R-slider id=\"5\"]\n\nEquipo Docente\n<div class=\"page\" title=\"Página 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\n 	<li>Pastor, Gerardo Arancibia Ovalle</li>\n 	<li>Pastor, Leonel Suárez</li>\n 	<li>Dcno. Andrés Ureta Órdenes</li>\n 	<li>Dcno. Italo Morales Ruiz</li>\n 	<li>Dcno. Jaime Toledo Rupallán</li>\n 	<li>Dcno. Lorenzo Villalobos</li>\n 	<li>Dcnsa. Fabiola Ceppi Monares</li>\n 	<li>Hna. Nicole Chávez Muñoz</li>\n 	<li>Hno. Gabriel Zamora Muñoz</li>\n 	<li>Hna. Viviana Daza Manque</li>\n 	<li>Hno. Samuel Campos Cid</li>\n 	<li>Hna. Laura Muñoz Muñoz</li>\n 	<li>Dcno. Felipe Montero Fuentes</li>\n 	<li>Dcnsa. Ariela Rios Cisterna</li>\n 	<li>Hno. Esteban Pizarro Pinto</li>\n</ul>\n\n<hr />\n\nEquipo administrativo\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\n 	<li><span class=\"goog-text-highlight\">Jonathan Miller (Secretaría)</span></li>\n 	<li><span class=\"goog-text-highlight\">Angie Millan (Secretaría)</span></li>\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\n 	<li>Esteban Pizarro Pinto (Campus Virtual)</li>\n 	<li>María Soledad González (Casino)</li>\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\n 	<li>Adelina Fuentes Burgos (Casino)</li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-12-30 10:26:29', '2020-12-30 14:26:29', '', 20, 'https://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-12-08 17:44:33', '2016-12-08 17:44:33', 'Equipo Docente\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Mardones</li>\r\n 	<li>Hno. Danilo Ampuero Meza</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (Director Casino)</li>\r\n 	<li>Nicole Chávez Muñoz (Secretaria)</li>\r\n 	<li>Carola Villar Sierra (Secretaria)</li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas</li>\r\n 	<li>Ariela Ríos Cisterna (Casino)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-12-08 17:44:33', '2016-12-08 17:44:33', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-12-08 17:49:17', '2016-12-08 17:49:17', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">&nbsp; &nbsp;&nbsp;</span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">&nbsp;¿Quiénes pueden asistir al IBC?</span></span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Malla Curricular</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":314,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Malla-1024x578.png\" alt=\"\" class=\"wp-image-314\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos y horarios de funcionamiento</span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\n<li>Miércoles 19:45 - 22:00 horas</li>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\n</ul>\n<p>&nbsp;</p>\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2021</span></span></p>\n<hr>\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 20.000 (se cancela una vez al año)</span></span></li>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 20.000 (durante 8 meses)</span></span></li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Admisión', '', 'publish', 'closed', 'closed', '', 'aranceles-y-horario', '', '', '2020-12-16 19:09:05', '2020-12-16 23:09:05', '', 0, 'http://ibc-cce.cl/wp/?page_id=22', 4, 'page', '', 0),
(23, 1, '2016-12-08 17:49:17', '2016-12-08 17:49:17', 'Horarios\r\n\r\n<hr />\r\n\r\nDías fijos de funcionamiento\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li> Lunes 19.45-22.00 horas</li>\r\n 	<li>Viernes 19.45-22.00 horas</li>\r\n</ul>\r\n&nbsp;\r\n\r\nArancel 2016\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Matrícula, $ 5.000 (se cancela una vez al año)</li>\r\n 	<li>Mensualidad, $ 22.000 (durante 8 meses)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Aranceles y Horario', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-08 17:49:17', '2016-12-08 17:49:17', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-12-08 17:53:17', '2016-12-08 17:53:17', '<img class=\"aligncenter wp-image-25 size-full\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Malla-Curricular-2016.jpg\" alt=\"malla-curricular-2016\" width=\"960\" height=\"720\" />', 'Malla Academica', '', 'publish', 'closed', 'closed', '', 'malla-academica', '', '', '2017-10-23 13:15:29', '2017-10-23 17:15:29', '', 0, 'http://ibc-cce.cl/wp/?page_id=24', 3, 'page', '', 0),
(25, 1, '2016-12-08 17:52:33', '2016-12-08 17:52:33', '', 'malla-curricular-2016', '', 'inherit', 'open', 'closed', '', 'malla-curricular-2016', '', '', '2016-12-08 17:52:33', '2016-12-08 17:52:33', '', 24, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Malla-Curricular-2016.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-12-08 17:53:17', '2016-12-08 17:53:17', '<img class=\"size-medium wp-image-25 aligncenter\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Malla-Curricular-2016-300x225.jpg\" alt=\"malla-curricular-2016\" width=\"300\" height=\"225\" />', 'Malla Academica', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-08 17:53:17', '2016-12-08 17:53:17', '', 24, 'http://ibc-cce.cl/wp/24-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-12-08 17:55:17', '2016-12-08 17:55:17', '<img class=\"aligncenter wp-image-25 size-full\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Malla-Curricular-2016.jpg\" alt=\"malla-curricular-2016\" width=\"960\" height=\"720\" />', 'Malla Academica', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-08 17:55:17', '2016-12-08 17:55:17', '', 24, 'http://ibc-cce.cl/wp/24-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-12-08 17:56:35', '2016-12-08 17:56:35', '', 'mision-ibc-jpeg', '', 'inherit', 'open', 'closed', '', 'mision-ibc-jpeg', '', '', '2016-12-08 17:56:35', '2016-12-08 17:56:35', '', 12, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Mision-IBC-JPEG.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-12-08 17:58:15', '2016-12-08 17:58:15', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\n<strong>Nuestra Misión</strong>\r\n\r\nEl IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.\r\n\r\nEl IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n<img class=\"aligncenter wp-image-28 size-full\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Mision-IBC-JPEG.jpg\" alt=\"mision-ibc-jpeg\" width=\"960\" height=\"720\" />\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\n<hr />\r\n\r\n<strong>Nuestros Objetivos</strong>\r\n\r\n1-  Formar obreros útiles para las congregaciones locales\r\n\r\n2-  Desarrollar carácter cristiano en los obreros según patrones bíblicos\r\n\r\n3-  Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\n<strong>El foco del IBC se sustenta en tres pilares:</strong>\r\n\r\na)  Conocimiento de la Palabra de Dios\r\n\r\nb)  Presencia de Dios\r\n\r\nc)  Administración transparente\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-08 17:58:15', '2016-12-08 17:58:15', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-12-08 18:05:36', '2016-12-08 18:05:36', 'Todo alumno del IBC debe comprometerse con lo siguiente:\n<ul>\n 	<li>Orar y estudiar permanentemente para dar frutos dignos de un obrero cristiano</li>\n 	<li>Asistir puntualmente a cada una de sus clases y entregar sus deberes a tiempo</li>\n 	<li>Aceptar el castigo en sus notas por incumplimiento académico:</li>\n</ul>\n<table class=\" aligncenter\">\n<tbody>\n<tr>\n<td width=\"120\">Nota máxima</td>\n<td width=\"225\">Entrega de tareas</td>\n</tr>\n<tr>\n<td width=\"120\">7</td>\n<td width=\"225\">\n<p style=\"text-align: left;\">A tiempo (en la fecha)</p>\n</td>\n</tr>\n<tr>\n<td width=\"120\">6</td>\n<td width=\"225\">1 semana después</td>\n</tr>\n<tr>\n<td width=\"120\">5</td>\n<td width=\"225\">2 semanas después</td>\n</tr>\n<tr>\n<td width=\"120\">1</td>\n<td width=\"225\">&gt;2 semanas</td>\n</tr>\n</tbody>\n</table>\n<p style=\"text-align: center;\"></p>\n\n<ul style=\"text-align: center;\">\n 	<li style=\"text-align: left;\">Justificar las inasistencias debidamente con su respectivo profesor y con la Dirección académica del Instituto Bíblico. En el caso de enfermedad, presentar certificado médico, en cuyo caso las tareas no quedan sujetas a descuento por demora. Si se tratase de un impedimento laboral se deberá avisar al profesor oportunamente la inasistencia (siendo el mismo día el último plazo) y las tareas se entregarán en la reunión siguiente.</li>\n</ul>\n<ul style=\"text-align: center;\">\n 	<li style=\"text-align: left;\">Pagar puntualmente sus compromisos académicos con el IBC. En caso contrario se compromete a dar una explicación razonable y anticipada por alguna demora.</li>\n 	<li style=\"text-align: left;\">Manifestar una conducta de respeto y espíritu cristiano hacia sus profesores y compañeros en todo momento</li>\n</ul>\n<ul style=\"text-align: center;\">\n 	<li style=\"text-align: left;\">Practicar la sencillez y el buen compañerismo</li>\n</ul>\nDescargar Documento<a href=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-Reglamento-del-alumno-V2-2011.docx\">ibc-reglamento-del-alumno-v2-2011</a>', 'Reglamento del Alumno', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-12-08 18:05:36', '2016-12-08 18:05:36', '', 2, 'http://ibc-cce.cl/wp/2-autosave-v1/', 0, 'revision', '', 0),
(31, 1, '2016-12-08 18:05:08', '2016-12-08 18:05:08', '', 'ibc-reglamento-del-alumno-v2-2011', '', 'inherit', 'open', 'closed', '', 'ibc-reglamento-del-alumno-v2-2011', '', '', '2016-12-08 18:05:08', '2016-12-08 18:05:08', '', 2, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-Reglamento-del-alumno-V2-2011.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(32, 1, '2016-12-08 18:06:38', '2016-12-08 18:06:38', 'Todo alumno del IBC debe comprometerse con lo siguiente:\r\n<ul>\r\n 	<li>Orar y estudiar permanentemente para dar frutos dignos de un obrero cristiano</li>\r\n 	<li>Asistir puntualmente a cada una de sus clases y entregar sus deberes a tiempo</li>\r\n 	<li>Aceptar el castigo en sus notas por incumplimiento académico:</li>\r\n</ul>\r\n<table class=\" aligncenter\">\r\n<tbody>\r\n<tr>\r\n<td width=\"120\">Nota máxima</td>\r\n<td width=\"225\">Entrega de tareas</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">7</td>\r\n<td width=\"225\">\r\n<p style=\"text-align: left;\">A tiempo (en la fecha)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">6</td>\r\n<td width=\"225\">1 semana después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">5</td>\r\n<td width=\"225\">2 semanas después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">1</td>\r\n<td width=\"225\">&gt;2 semanas</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: center;\"></p>\r\n\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Justificar las inasistencias debidamente con su respectivo profesor y con la Dirección académica del Instituto Bíblico. En el caso de enfermedad, presentar certificado médico, en cuyo caso las tareas no quedan sujetas a descuento por demora. Si se tratase de un impedimento laboral se deberá avisar al profesor oportunamente la inasistencia (siendo el mismo día el último plazo) y las tareas se entregarán en la reunión siguiente.</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Pagar puntualmente sus compromisos académicos con el IBC. En caso contrario se compromete a dar una explicación razonable y anticipada por alguna demora.</li>\r\n 	<li style=\"text-align: left;\">Manifestar una conducta de respeto y espíritu cristiano hacia sus profesores y compañeros en todo momento</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Practicar la sencillez y el buen compañerismo</li>\r\n</ul>\r\nDescargar Documento :<a href=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-Reglamento-del-alumno-V2-2011.docx\">Reglamento</a>', 'Reglamento del Alumno', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 18:06:38', '2016-12-08 18:06:38', '', 2, 'http://ibc-cce.cl/wp/2-revision-v1/', 0, 'revision', '', 0),
(147, 2, '2018-01-03 10:06:12', '2018-01-03 14:06:12', '', 'Sede San Miguel', '', 'inherit', 'open', 'closed', '', 'sede-san-miguel', '', '', '2020-12-15 21:13:53', '2020-12-16 01:13:53', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Sede-San-Miguel.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-12-08 18:09:10', '2016-12-08 18:09:10', '', 'ibc-2017-flyer', '', 'inherit', 'open', 'closed', '', 'ibc-2017-flyer', '', '', '2016-12-08 18:09:10', '2016-12-08 18:09:10', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-2017-FLYER.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 2, '2018-01-03 10:06:02', '2018-01-03 14:06:02', '', 'Reserva tu cupo', '', 'inherit', 'open', 'closed', '', 'reserva-tu-cupo', '', '', '2018-01-03 10:06:02', '2018-01-03 14:06:02', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Reserva-tu-cupo.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 2, '2018-01-03 10:06:06', '2018-01-03 14:06:06', '', 'Sede Maipu', '', 'inherit', 'open', 'closed', '', 'sede-maipu', '', '', '2020-12-15 21:14:50', '2020-12-16 01:14:50', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Sede-Maipu.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-12-08 18:10:46', '2016-12-08 18:10:46', '', 'alianza-estrategica-ibc-wcmu', '', 'inherit', 'open', 'closed', '', 'alianza-estrategica-ibc-wcmu', '', '', '2016-12-08 18:10:46', '2016-12-08 18:10:46', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Alianza-estrategica-IBC-WCMU.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 2, '2018-01-03 10:02:25', '2018-01-03 14:02:25', '', 'Celular IBC', '', 'inherit', 'open', 'closed', '', 'celular-ibc', '', '', '2018-01-03 10:02:25', '2018-01-03 14:02:25', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Celular-IBC.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 2, '2018-01-03 10:03:34', '2018-01-03 14:03:34', '', 'email cce', '', 'inherit', 'open', 'closed', '', 'email-cce', '', '', '2018-01-03 10:03:34', '2018-01-03 14:03:34', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/email-cce.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 2, '2018-01-03 10:05:57', '2018-01-03 14:05:57', '', 'Mision del IBC', '', 'inherit', 'open', 'closed', '', 'mision-del-ibc', '', '', '2018-01-03 10:05:57', '2018-01-03 14:05:57', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Mision-del-IBC.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-05-27 02:11:56', '2017-05-27 02:11:56', 'Equipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Eliazar Vega</li>\r\n 	<li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Camila Correa (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n 	<li>Ariela Ríos Cisterna (Casino)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-05-27 02:11:56', '2017-05-27 02:11:56', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-12-08 20:03:00', '2016-12-08 20:03:00', 'Todo alumno del IBC debe comprometerse con lo siguiente:\r\n<ul>\r\n 	<li>Orar y estudiar permanentemente para dar frutos dignos de un obrero cristiano</li>\r\n 	<li>Asistir puntualmente a cada una de sus clases y entregar sus deberes a tiempo</li>\r\n 	<li>Aceptar el castigo en sus notas por incumplimiento académico:</li>\r\n</ul>\r\n<table class=\" aligncenter\" style=\"height: 181px;\" width=\"355\">\r\n<tbody>\r\n<tr>\r\n<td width=\"120\">Nota máxima</td>\r\n<td width=\"225\">Entrega de tareas</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">7</td>\r\n<td width=\"225\">\r\n<p style=\"text-align: left;\">A tiempo (en la fecha)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">6</td>\r\n<td width=\"225\">1 semana después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">5</td>\r\n<td width=\"225\">2 semanas después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">1</td>\r\n<td width=\"225\">&gt;2 semanas</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Justificar las inasistencias debidamente con su respectivo profesor y con la Dirección académica del Instituto Bíblico. En el caso de enfermedad, presentar certificado médico, en cuyo caso las tareas no quedan sujetas a descuento por demora. Si se tratase de un impedimento laboral se deberá avisar al profesor oportunamente la inasistencia (siendo el mismo día el último plazo) y las tareas se entregarán en la reunión siguiente.</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Pagar puntualmente sus compromisos académicos con el IBC. En caso contrario se compromete a dar una explicación razonable y anticipada por alguna demora.</li>\r\n 	<li style=\"text-align: left;\">Manifestar una conducta de respeto y espíritu cristiano hacia sus profesores y compañeros en todo momento</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Practicar la sencillez y el buen compañerismo</li>\r\n</ul>\r\nDescargar Documento :<a href=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-Reglamento-del-alumno-V2-2011.docx\">Reglamento</a>', 'Reglamento del Alumno', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 20:03:00', '2016-12-08 20:03:00', '', 2, 'http://ibc-cce.cl/wp/2-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-12-08 20:24:40', '2016-12-08 20:24:40', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2016-12-08 20:24:40', '2016-12-08 20:24:40', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/logo1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2017-05-25 22:46:52', '2017-05-25 22:46:52', '', 'Corporacion', '', 'inherit', 'open', 'closed', '', 'corporacion', '', '', '2017-05-25 22:46:52', '2017-05-25 22:46:52', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/Corporacion.png', 0, 'attachment', 'image/png', 0),
(69, 2, '2017-03-29 19:41:04', '2017-03-29 19:41:04', 'Equipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hno. Danilo Ampuero Meza</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Camila Correa (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n 	<li>Ariela Ríos Cisterna (Casino)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-03-29 19:41:04', '2017-03-29 19:41:04', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-05-25 22:46:55', '2017-05-25 22:46:55', '', 'ibcAlcance', '', 'inherit', 'open', 'closed', '', 'ibcalcance', '', '', '2017-05-25 22:46:55', '2017-05-25 22:46:55', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/ibcAlcance.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2017-05-25 22:46:58', '2017-05-25 22:46:58', '', 'IbcL', '', 'inherit', 'open', 'closed', '', 'ibcl', '', '', '2017-05-25 22:46:58', '2017-05-25 22:46:58', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/IbcL.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2016-12-08 21:16:17', '2016-12-08 21:16:17', 'Todo alumno del IBC debe comprometerse con lo siguiente:\r\n<ul>\r\n 	<li>Orar y estudiar permanentemente para dar frutos dignos de un obrero cristiano</li>\r\n 	<li>Asistir puntualmente a cada una de sus clases y entregar sus deberes a tiempo</li>\r\n 	<li>Aceptar el castigo en sus notas por incumplimiento académico:</li>\r\n</ul>\r\n<table class=\" aligncenter\" style=\"height: 181px;\" width=\"355\">\r\n<tbody>\r\n<tr>\r\n<td width=\"120\">Nota máxima</td>\r\n<td width=\"225\">Entrega de tareas</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">7</td>\r\n<td width=\"225\">\r\n<p style=\"text-align: left;\">A tiempo (en la fecha)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">6</td>\r\n<td width=\"225\">1 semana después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">5</td>\r\n<td width=\"225\">2 semanas después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">1</td>\r\n<td width=\"225\">&gt;2 semanas</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Justificar las inasistencias debidamente con su respectivo profesor y con la Dirección académica del Instituto Bíblico. En el caso de enfermedad, presentar certificado médico, en cuyo caso las tareas no quedan sujetas a descuento por demora. Si se tratase de un impedimento laboral se deberá avisar al profesor oportunamente la inasistencia (siendo el mismo día el último plazo) y las tareas se entregarán en la reunión siguiente.</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Pagar puntualmente sus compromisos académicos con el IBC. En caso contrario se compromete a dar una explicación razonable y anticipada por alguna demora.</li>\r\n 	<li style=\"text-align: left;\">Manifestar una conducta de respeto y espíritu cristiano hacia sus profesores y compañeros en todo momento</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Practicar la sencillez y el buen compañerismo</li>\r\n</ul>\r\nDescargar Documento :<a href=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-Reglamento-del-alumno-V2-2011.docx\">Reglamento</a>', 'Reglamento', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 21:16:17', '2016-12-08 21:16:17', '', 2, 'http://ibc-cce.cl/wp/2-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-12-08 23:00:25', '2016-12-08 23:00:25', 'Equipo Docente\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hno. Danilo Ampuero Meza</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (Director Casino)</li>\r\n 	<li>Nicole Chávez Muñoz (Secretaria)</li>\r\n 	<li>Carola Villar Sierra (Secretaria)</li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas</li>\r\n 	<li>Ariela Ríos Cisterna (Casino)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-12-08 23:00:25', '2016-12-08 23:00:25', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wpjy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47, 1, '2016-12-08 23:31:18', '2016-12-08 23:31:18', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nEl Instituto Bíblico del Centro (IBC) existe para formar <span style=\"font-weight: 700 !important;\">obreros útiles a la obra de Dios</span>, entregándoles una sólida formación teológica y una clara orientación al servicio cristiano en el Reino de Dios. Cada uno de ellos saldrá más y mejor preparado para servir a Dios <span style=\"font-weight: 700 !important;\">en sus congregaciones según el llamado propio que Dios ha hecho a cada uno</span>.\r\n\r\nEl IBC se diferencia de otras instituciones teológicas porque su objetivo es la formación de obreros y no de teólogos. Al mismo tiempo, combina de manera exquisita la transmisión de conocimiento y la unción del Espíritu Santo. Por otro lado, el ambiente que se vive en cada clase es único. Los hermanos se enamoran del clima fraternal, donde nadie discrimina a otro por ser más o menos, pues se sienten acogidos por iguales.\r\n\r\nNuestros alumnos dicen así: una vez institutano del IBC por siempre institutano del IBC. Es decir, basta ir a la primera clase de Pentateuco para enamorarse de la Palabra de Dios y nunca más abandonar el instituto.\r\n\r\n</div>\r\n<div class=\"column\">\r\n\r\n<strong>Nuestra Misión</strong>\r\n\r\nEl IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.\r\n\r\nEl IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n<img class=\"aligncenter wp-image-28 size-full\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Mision-IBC-JPEG.jpg\" alt=\"mision-ibc-jpeg\" width=\"960\" height=\"720\" />\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\n<hr />\r\n\r\n<strong>Nuestros Objetivos</strong>\r\n\r\n1-  Formar obreros útiles para las congregaciones locales\r\n\r\n2-  Desarrollar carácter cristiano en los obreros según patrones bíblicos\r\n\r\n3-  Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\n<strong>El foco del IBC se sustenta en tres pilares:</strong>\r\n\r\na)  Conocimiento de la Palabra de Dios\r\n\r\nb)  Presencia de Dios\r\n\r\nc)  Administración transparente\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-08 23:31:18', '2016-12-08 23:31:18', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(222, 2, '2020-12-15 16:01:56', '2020-12-15 20:01:56', '', 'webclass', '', 'inherit', 'open', 'closed', '', 'webclass', '', '', '2020-12-15 16:01:56', '2020-12-15 20:01:56', '', 176, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/webclass.png', 0, 'attachment', 'image/png', 0),
(223, 2, '2020-12-15 16:02:10', '2020-12-15 20:02:10', '<!--?php\n// PHP permanent URL redirection\nheader(\"Location: http://www.webclass.ibc-cce.cl\", true, 301);\nexit();\n?-->', 'Web Class', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2020-12-15 16:02:10', '2020-12-15 20:02:10', '', 176, 'http://ibc-cce.cl/wp/176-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-12-08 23:32:38', '2016-12-08 23:32:38', '<span style=\"font-weight: 700 !important;\">¿Por qué los cristianos deberían asistir a un instituto bíblico?</span>\r\n\r\nCreemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer al Dios revelado, Salvador y Señor de nuestra vida.\r\n\r\n<span style=\"font-weight: 700 !important;\">¿Qué beneficios obtiene un cristiano al asistir a un Instituto Bíblico?</span>\r\n\r\nEl creyente que se prepara teológicamente, es un obrero mejor preparado. Y usando las Palabras del pastor Pablo Hoff, “hacha afilada corta más leña”, esto quiere decir que un creyente será más útil al reino de Dios y a su propia iglesia en la medida que esté mejor capacitado.<span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"> ¿Quiénes pueden asistir al IBC?</span>\r\n\r\nEl IBC está abierto a todos los cristianos, no tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.\r\n\r\n&nbsp;\r\n\r\nHorarios\r\n\r\n<hr />\r\n\r\nDías fijos de funcionamiento\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li> Lunes 19.45-22.00 horas</li>\r\n 	<li>Viernes 19.45-22.00 horas</li>\r\n</ul>\r\n&nbsp;\r\n\r\nArancel 2016\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Matrícula, $ 5.000 (se cancela una vez al año)</li>\r\n 	<li>Mensualidad, $ 22.000 (durante 8 meses)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Aranceles y Horario', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-08 23:32:38', '2016-12-08 23:32:38', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-12-08 23:34:26', '2016-12-08 23:34:26', '<span style=\"font-weight: 700 !important;\">¿Por qué los cristianos deberían asistir a un instituto bíblico?</span>\r\n\r\nCreemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer al Dios revelado, Salvador y Señor de nuestra vida.\r\n\r\n<span style=\"font-weight: 700 !important;\">¿Qué beneficios obtiene un cristiano al asistir a un Instituto Bíblico?</span>\r\n\r\nEl creyente que se prepara teológicamente, es un obrero mejor preparado. Y usando las Palabras del pastor Pablo Hoff, “hacha afilada corta más leña”, esto quiere decir que un creyente será más útil al reino de Dios y a su propia iglesia en la medida que esté mejor capacitado.<span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"> ¿Quiénes pueden asistir al IBC?</span>\r\n\r\nEl IBC está abierto a todos los cristianos, no tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.\r\n\r\n&nbsp;\r\n\r\nHorarios\r\n\r\n<hr />\r\n\r\nDías fijos de funcionamiento\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li> Lunes 19.45-22.00 horas</li>\r\n 	<li>Viernes 19.45-22.00 horas</li>\r\n</ul>\r\n&nbsp;\r\n\r\nArancel 2016\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Matrícula, $ 10.000 (se cancela una vez al año)</li>\r\n 	<li>Mensualidad, $ 13.000 (durante 8 meses)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Aranceles y Horario', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-08 23:34:26', '2016-12-08 23:34:26', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-12-14 19:14:02', '2016-12-14 19:14:02', '', 'cropped-cropped-banner_biblia.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-banner_biblia-jpg', '', '', '2016-12-14 19:14:02', '2016-12-14 19:14:02', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-banner_biblia.jpg', 0, 'attachment', 'image/jpeg', 0),
(292, 2, '2020-12-16 12:56:29', '2020-12-16 16:56:29', '{\"fields\":{\"5\":{\"id\":\"5\",\"type\":\"name\",\"label\":\"Informaci\\u00f3n del alumno\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"Nombres\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"Apellidos\",\"last_default\":\"\",\"css\":\"\",\"sublabel_hide\":\"1\"},\"6\":{\"id\":\"6\",\"type\":\"text\",\"label\":\"RUT\",\"description\":\"\",\"required\":\"1\",\"size\":\"small\",\"placeholder\":\"12345678-1\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"99.999.999-*\",\"css\":\"\"},\"19\":{\"id\":\"19\",\"type\":\"date-time\",\"label\":\"Fecha de Nacimiento\",\"format\":\"date\",\"description\":\"\",\"size\":\"small\",\"date_type\":\"dropdown\",\"date_placeholder\":\"\",\"date_format\":\"d\\/m\\/Y\",\"date_limit_days_mon\":\"1\",\"date_limit_days_tue\":\"1\",\"date_limit_days_wed\":\"1\",\"date_limit_days_thu\":\"1\",\"date_limit_days_fri\":\"1\",\"time_interval\":\"30\",\"time_placeholder\":\"\",\"time_format\":\"g:i A\",\"time_limit_hours_start_hour\":\"09\",\"time_limit_hours_start_min\":\"00\",\"time_limit_hours_start_ampm\":\"am\",\"time_limit_hours_end_hour\":\"06\",\"time_limit_hours_end_min\":\"00\",\"time_limit_hours_end_ampm\":\"pm\",\"css\":\"\"},\"21\":{\"id\":\"21\",\"type\":\"phone\",\"label\":\"Telefono de contacto\",\"format\":\"smart\",\"description\":\"\",\"required\":\"1\",\"size\":\"small\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"14\":{\"id\":\"14\",\"type\":\"select\",\"label\":\"Regi\\u00f3n\",\"choices\":{\"4\":{\"label\":\"XV de Arica y Parinacota\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"I de Tarapac\\u00e1\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"II de Antofagasta\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"III de Atacama\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"IV de Coquimbo\",\"value\":\"\",\"image\":\"\"},\"9\":{\"label\":\"V de Valpara\\u00edso\",\"value\":\"\",\"image\":\"\"},\"10\":{\"label\":\"RM Metropolitana de Santiago\",\"value\":\"\",\"image\":\"\"},\"11\":{\"label\":\"VI del Libertador General Bernardo O\'Higgins\",\"value\":\"\",\"image\":\"\"},\"12\":{\"label\":\"VII del Maule\",\"value\":\"\",\"image\":\"\"},\"13\":{\"label\":\"VIII del B\\u00edo B\\u00edo\",\"value\":\"\",\"image\":\"\"},\"14\":{\"label\":\"IX de la Araucan\\u00eda\",\"value\":\"\",\"image\":\"\"},\"15\":{\"label\":\"X de los Lagos\",\"value\":\"\",\"image\":\"\"},\"16\":{\"label\":\"XI Ais\\u00e9n del General Carlos Ib\\u00e1\\u00f1ez del Campo\",\"value\":\"\",\"image\":\"\"},\"17\":{\"label\":\"XII de Magallanes y Ant\\u00e1rtica Chilena\",\"value\":\"\",\"image\":\"\"},\"18\":{\"label\":\"XIV de los R\\u00edos\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"15\":{\"id\":\"15\",\"type\":\"select\",\"label\":\"Comuna\",\"choices\":{\"4\":{\"label\":\"ALHUE\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"ALGARROBO\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"ALTO BIO BIO\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"ALTO DEL CARMEN\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"ALTO HOSPICIO\",\"value\":\"\",\"image\":\"\"},\"9\":{\"label\":\"ANCUD\",\"value\":\"\",\"image\":\"\"},\"10\":{\"label\":\"ANDACOLLO\",\"value\":\"\",\"image\":\"\"},\"11\":{\"label\":\"ANGOL\",\"value\":\"\",\"image\":\"\"},\"12\":{\"label\":\"ANT\\u00c1RTICA\",\"value\":\"\",\"image\":\"\"},\"13\":{\"label\":\"ANTOFAGASTA\",\"value\":\"\",\"image\":\"\"},\"14\":{\"label\":\"ANTUCO\",\"value\":\"\",\"image\":\"\"},\"15\":{\"label\":\"ARAUCO\",\"value\":\"\",\"image\":\"\"},\"16\":{\"label\":\"ARICA\",\"value\":\"\",\"image\":\"\"},\"17\":{\"label\":\"AYSEN \\/ AISEN\",\"value\":\"\",\"image\":\"\"},\"18\":{\"label\":\"BUIN\",\"value\":\"\",\"image\":\"\"},\"19\":{\"label\":\"BULNES\",\"value\":\"\",\"image\":\"\"},\"20\":{\"label\":\"CABILDO\",\"value\":\"\",\"image\":\"\"},\"21\":{\"label\":\"CABO DE HORNOS\",\"value\":\"\",\"image\":\"\"},\"22\":{\"label\":\"CABRERO\",\"value\":\"\",\"image\":\"\"},\"23\":{\"label\":\"CALAMA\",\"value\":\"\",\"image\":\"\"},\"24\":{\"label\":\"CALBUCO\",\"value\":\"\",\"image\":\"\"},\"25\":{\"label\":\"CALDERA\",\"value\":\"\",\"image\":\"\"},\"26\":{\"label\":\"CALERA DE TANGO\",\"value\":\"\",\"image\":\"\"},\"27\":{\"label\":\"CALLE LARGA\",\"value\":\"\",\"image\":\"\"},\"28\":{\"label\":\"CAMARONES\",\"value\":\"\",\"image\":\"\"},\"29\":{\"label\":\"CAMI\\u00d1A\",\"value\":\"\",\"image\":\"\"},\"30\":{\"label\":\"CANELA\",\"value\":\"\",\"image\":\"\"},\"31\":{\"label\":\"CA\\u00d1ETE\",\"value\":\"\",\"image\":\"\"},\"32\":{\"label\":\"CARAHUE\",\"value\":\"\",\"image\":\"\"},\"33\":{\"label\":\"CARTAGENA\",\"value\":\"\",\"image\":\"\"},\"34\":{\"label\":\"CASABLANCA\",\"value\":\"\",\"image\":\"\"},\"35\":{\"label\":\"CASTRO\",\"value\":\"\",\"image\":\"\"},\"36\":{\"label\":\"CATEMU\",\"value\":\"\",\"image\":\"\"},\"37\":{\"label\":\"CAUQUENES\",\"value\":\"\",\"image\":\"\"},\"38\":{\"label\":\"CERRILLOS\",\"value\":\"\",\"image\":\"\"},\"39\":{\"label\":\"CERRO NAVIA\",\"value\":\"\",\"image\":\"\"},\"40\":{\"label\":\"CHAITEN\",\"value\":\"\",\"image\":\"\"},\"41\":{\"label\":\"CHANCO\",\"value\":\"\",\"image\":\"\"},\"42\":{\"label\":\"CHA\\u00d1ARAL\",\"value\":\"\",\"image\":\"\"},\"43\":{\"label\":\"CHEPICA\",\"value\":\"\",\"image\":\"\"},\"44\":{\"label\":\"CHIGUAYANTE\",\"value\":\"\",\"image\":\"\"},\"45\":{\"label\":\"CHILE CHICO\",\"value\":\"\",\"image\":\"\"},\"46\":{\"label\":\"CHILLAN\",\"value\":\"\",\"image\":\"\"},\"47\":{\"label\":\"CHILLAN VIEJO\",\"value\":\"\",\"image\":\"\"},\"48\":{\"label\":\"CHIMBARONGO\",\"value\":\"\",\"image\":\"\"},\"49\":{\"label\":\"CHOLCHOL\",\"value\":\"\",\"image\":\"\"},\"50\":{\"label\":\"CHONCHI\",\"value\":\"\",\"image\":\"\"},\"51\":{\"label\":\"CISNES\",\"value\":\"\",\"image\":\"\"},\"52\":{\"label\":\"COBQUECURA\",\"value\":\"\",\"image\":\"\"},\"53\":{\"label\":\"COCHAMO\",\"value\":\"\",\"image\":\"\"},\"54\":{\"label\":\"COCHRANE\",\"value\":\"\",\"image\":\"\"},\"55\":{\"label\":\"CODEGUA\",\"value\":\"\",\"image\":\"\"},\"56\":{\"label\":\"COELEMU\",\"value\":\"\",\"image\":\"\"},\"57\":{\"label\":\"COIHUECO\",\"value\":\"\",\"image\":\"\"},\"58\":{\"label\":\"COINCO\",\"value\":\"\",\"image\":\"\"},\"59\":{\"label\":\"COLBUN\",\"value\":\"\",\"image\":\"\"},\"60\":{\"label\":\"COLCHANE\",\"value\":\"\",\"image\":\"\"},\"61\":{\"label\":\"COLINA\",\"value\":\"\",\"image\":\"\"},\"62\":{\"label\":\"COLLIPULLI\",\"value\":\"\",\"image\":\"\"},\"63\":{\"label\":\"COLTAUCO\",\"value\":\"\",\"image\":\"\"},\"64\":{\"label\":\"COMBARBALA\",\"value\":\"\",\"image\":\"\"},\"65\":{\"label\":\"CONCEPCION\",\"value\":\"\",\"image\":\"\"},\"66\":{\"label\":\"CONCHALI\",\"value\":\"\",\"image\":\"\"},\"67\":{\"label\":\"CONCON\",\"value\":\"\",\"image\":\"\"},\"68\":{\"label\":\"CONSTITUCION\",\"value\":\"\",\"image\":\"\"},\"69\":{\"label\":\"CONTULMO\",\"value\":\"\",\"image\":\"\"},\"70\":{\"label\":\"COPIAPO\",\"value\":\"\",\"image\":\"\"},\"71\":{\"label\":\"COQUIMBO\",\"value\":\"\",\"image\":\"\"},\"72\":{\"label\":\"CORONEL\",\"value\":\"\",\"image\":\"\"},\"73\":{\"label\":\"CORRAL\",\"value\":\"\",\"image\":\"\"},\"74\":{\"label\":\"COYHAIQUE \\/ COIHAIQUE\",\"value\":\"\",\"image\":\"\"},\"75\":{\"label\":\"CUNCO\",\"value\":\"\",\"image\":\"\"},\"76\":{\"label\":\"CURACAUTIN\",\"value\":\"\",\"image\":\"\"},\"77\":{\"label\":\"CURACAVI\",\"value\":\"\",\"image\":\"\"},\"78\":{\"label\":\"CURACO DE VELEZ\",\"value\":\"\",\"image\":\"\"},\"79\":{\"label\":\"CURANILAHUE\",\"value\":\"\",\"image\":\"\"},\"80\":{\"label\":\"CURARREHUE\",\"value\":\"\",\"image\":\"\"},\"81\":{\"label\":\"CUREPTO\",\"value\":\"\",\"image\":\"\"},\"82\":{\"label\":\"CURICO\",\"value\":\"\",\"image\":\"\"},\"83\":{\"label\":\"DALCAHUE\",\"value\":\"\",\"image\":\"\"},\"84\":{\"label\":\"DIEGO DE ALMAGRO\",\"value\":\"\",\"image\":\"\"},\"85\":{\"label\":\"DO\\u00d1IHUE\",\"value\":\"\",\"image\":\"\"},\"86\":{\"label\":\"EL BOSQUE\",\"value\":\"\",\"image\":\"\"},\"87\":{\"label\":\"EL CARMEN\",\"value\":\"\",\"image\":\"\"},\"88\":{\"label\":\"EL MONTE\",\"value\":\"\",\"image\":\"\"},\"89\":{\"label\":\"EL QUISCO\",\"value\":\"\",\"image\":\"\"},\"90\":{\"label\":\"EL TABO\",\"value\":\"\",\"image\":\"\"},\"91\":{\"label\":\"EMPEDRADO\",\"value\":\"\",\"image\":\"\"},\"92\":{\"label\":\"ERCILLA\",\"value\":\"\",\"image\":\"\"},\"93\":{\"label\":\"ESTACION CENTRAL\",\"value\":\"\",\"image\":\"\"},\"94\":{\"label\":\"FLORIDA\",\"value\":\"\",\"image\":\"\"},\"95\":{\"label\":\"FREIRE\",\"value\":\"\",\"image\":\"\"},\"96\":{\"label\":\"FREIRINA\",\"value\":\"\",\"image\":\"\"},\"97\":{\"label\":\"FRESIA\",\"value\":\"\",\"image\":\"\"},\"98\":{\"label\":\"FRUTILLAR\",\"value\":\"\",\"image\":\"\"},\"99\":{\"label\":\"FUTALEUFU\",\"value\":\"\",\"image\":\"\"},\"100\":{\"label\":\"FUTRONO\",\"value\":\"\",\"image\":\"\"},\"101\":{\"label\":\"GALVARINO\",\"value\":\"\",\"image\":\"\"},\"102\":{\"label\":\"GENERAL LAGOS\",\"value\":\"\",\"image\":\"\"},\"103\":{\"label\":\"GORBEA\",\"value\":\"\",\"image\":\"\"},\"104\":{\"label\":\"GRANEROS\",\"value\":\"\",\"image\":\"\"},\"105\":{\"label\":\"GUAITECAS\",\"value\":\"\",\"image\":\"\"},\"106\":{\"label\":\"HIJUELAS\",\"value\":\"\",\"image\":\"\"},\"107\":{\"label\":\"HUALAIHUE\",\"value\":\"\",\"image\":\"\"},\"108\":{\"label\":\"HUALA\\u00d1E\",\"value\":\"\",\"image\":\"\"},\"109\":{\"label\":\"HUALPEN\",\"value\":\"\",\"image\":\"\"},\"110\":{\"label\":\"HUALQUI\",\"value\":\"\",\"image\":\"\"},\"111\":{\"label\":\"HUARA\",\"value\":\"\",\"image\":\"\"},\"112\":{\"label\":\"HUASCO\",\"value\":\"\",\"image\":\"\"},\"113\":{\"label\":\"HUECHURABA\",\"value\":\"\",\"image\":\"\"},\"114\":{\"label\":\"ILLAPEL\",\"value\":\"\",\"image\":\"\"},\"115\":{\"label\":\"INDEPENDENCIA\",\"value\":\"\",\"image\":\"\"},\"116\":{\"label\":\"IQUIQUE\",\"value\":\"\",\"image\":\"\"},\"117\":{\"label\":\"ISLA DE MAIPO\",\"value\":\"\",\"image\":\"\"},\"118\":{\"label\":\"ISLA DE PASCUA\",\"value\":\"\",\"image\":\"\"},\"119\":{\"label\":\"ISLA JUAN FERNANDEZ\",\"value\":\"\",\"image\":\"\"},\"120\":{\"label\":\"LA CALERA\",\"value\":\"\",\"image\":\"\"},\"121\":{\"label\":\"LA CISTERNA\",\"value\":\"\",\"image\":\"\"},\"122\":{\"label\":\"LA CRUZ\",\"value\":\"\",\"image\":\"\"},\"123\":{\"label\":\"LA ESTRELLA\",\"value\":\"\",\"image\":\"\"},\"124\":{\"label\":\"LA FLORIDA\",\"value\":\"\",\"image\":\"\"},\"125\":{\"label\":\"LA GRANJA\",\"value\":\"\",\"image\":\"\"},\"126\":{\"label\":\"LA HIGUERA\",\"value\":\"\",\"image\":\"\"},\"127\":{\"label\":\"LA LIGUA\",\"value\":\"\",\"image\":\"\"},\"128\":{\"label\":\"LA PINTANA\",\"value\":\"\",\"image\":\"\"},\"129\":{\"label\":\"LA REINA\",\"value\":\"\",\"image\":\"\"},\"130\":{\"label\":\"LA SERENA\",\"value\":\"\",\"image\":\"\"},\"131\":{\"label\":\"LA UNION\",\"value\":\"\",\"image\":\"\"},\"132\":{\"label\":\"LAGO RANCO\",\"value\":\"\",\"image\":\"\"},\"133\":{\"label\":\"LAGO VERDE\",\"value\":\"\",\"image\":\"\"},\"134\":{\"label\":\"LAGUNA BLANCA\",\"value\":\"\",\"image\":\"\"},\"135\":{\"label\":\"LAJA\",\"value\":\"\",\"image\":\"\"},\"136\":{\"label\":\"LAMPA\",\"value\":\"\",\"image\":\"\"},\"137\":{\"label\":\"LANCO\",\"value\":\"\",\"image\":\"\"},\"138\":{\"label\":\"LAS CABRAS\",\"value\":\"\",\"image\":\"\"},\"139\":{\"label\":\"LAS CONDES\",\"value\":\"\",\"image\":\"\"},\"140\":{\"label\":\"LAUTARO\",\"value\":\"\",\"image\":\"\"},\"141\":{\"label\":\"LEBU\",\"value\":\"\",\"image\":\"\"},\"142\":{\"label\":\"LICANTEN\",\"value\":\"\",\"image\":\"\"},\"143\":{\"label\":\"LIMACHE\",\"value\":\"\",\"image\":\"\"},\"144\":{\"label\":\"LINARES\",\"value\":\"\",\"image\":\"\"},\"145\":{\"label\":\"LITUECHE\",\"value\":\"\",\"image\":\"\"},\"146\":{\"label\":\"LLAILLAY \\/ LLAYLLAY\",\"value\":\"\",\"image\":\"\"},\"147\":{\"label\":\"LLANQUIHUE\",\"value\":\"\",\"image\":\"\"},\"148\":{\"label\":\"LO BARNECHEA\",\"value\":\"\",\"image\":\"\"},\"149\":{\"label\":\"LO ESPEJO\",\"value\":\"\",\"image\":\"\"},\"150\":{\"label\":\"LO PRADO\",\"value\":\"\",\"image\":\"\"},\"151\":{\"label\":\"LOLOL\",\"value\":\"\",\"image\":\"\"},\"152\":{\"label\":\"LONCOCHE\",\"value\":\"\",\"image\":\"\"},\"153\":{\"label\":\"LONGAVI\",\"value\":\"\",\"image\":\"\"},\"154\":{\"label\":\"LONQUIMAY\",\"value\":\"\",\"image\":\"\"},\"155\":{\"label\":\"LOS ALAMOS\",\"value\":\"\",\"image\":\"\"},\"156\":{\"label\":\"LOS ANDES\",\"value\":\"\",\"image\":\"\"},\"157\":{\"label\":\"LOS ANGELES\",\"value\":\"\",\"image\":\"\"},\"158\":{\"label\":\"LOS LAGOS\",\"value\":\"\",\"image\":\"\"},\"159\":{\"label\":\"LOS MUERMOS\",\"value\":\"\",\"image\":\"\"},\"160\":{\"label\":\"LOS SAUCES\",\"value\":\"\",\"image\":\"\"},\"161\":{\"label\":\"LOS VILOS\",\"value\":\"\",\"image\":\"\"},\"162\":{\"label\":\"LOTA\",\"value\":\"\",\"image\":\"\"},\"163\":{\"label\":\"LUMACO\",\"value\":\"\",\"image\":\"\"},\"164\":{\"label\":\"MACHALI\",\"value\":\"\",\"image\":\"\"},\"165\":{\"label\":\"MACUL\",\"value\":\"\",\"image\":\"\"},\"166\":{\"label\":\"MAFIL\",\"value\":\"\",\"image\":\"\"},\"167\":{\"label\":\"MAIPU\",\"value\":\"\",\"image\":\"\"},\"168\":{\"label\":\"MALLOA\",\"value\":\"\",\"image\":\"\"},\"169\":{\"label\":\"MARCHIHUE\",\"value\":\"\",\"image\":\"\"},\"170\":{\"label\":\"MARIA ELENA\",\"value\":\"\",\"image\":\"\"},\"171\":{\"label\":\"MARIA PINTO\",\"value\":\"\",\"image\":\"\"},\"172\":{\"label\":\"MARIQUINA\",\"value\":\"\",\"image\":\"\"},\"173\":{\"label\":\"MAULE\",\"value\":\"\",\"image\":\"\"},\"174\":{\"label\":\"MAULLIN\",\"value\":\"\",\"image\":\"\"},\"175\":{\"label\":\"MEJILLONES\",\"value\":\"\",\"image\":\"\"},\"176\":{\"label\":\"MELIPEUCO\",\"value\":\"\",\"image\":\"\"},\"177\":{\"label\":\"MELIPILLA\",\"value\":\"\",\"image\":\"\"},\"178\":{\"label\":\"MOLINA\",\"value\":\"\",\"image\":\"\"},\"179\":{\"label\":\"MONTE PATRIA\",\"value\":\"\",\"image\":\"\"},\"180\":{\"label\":\"MOSTAZAL\",\"value\":\"\",\"image\":\"\"},\"181\":{\"label\":\"MULCHEN\",\"value\":\"\",\"image\":\"\"},\"182\":{\"label\":\"NACIMIENTO\",\"value\":\"\",\"image\":\"\"},\"183\":{\"label\":\"NANCAGUA\",\"value\":\"\",\"image\":\"\"},\"184\":{\"label\":\"NATALES\",\"value\":\"\",\"image\":\"\"},\"185\":{\"label\":\"NAVIDAD\",\"value\":\"\",\"image\":\"\"},\"186\":{\"label\":\"NEGRETE\",\"value\":\"\",\"image\":\"\"},\"187\":{\"label\":\"NINHUE\",\"value\":\"\",\"image\":\"\"},\"188\":{\"label\":\"NOGALES\",\"value\":\"\",\"image\":\"\"},\"189\":{\"label\":\"NUEVA IMPERIAL\",\"value\":\"\",\"image\":\"\"},\"190\":{\"label\":\"\\u00d1IQUEN\",\"value\":\"\",\"image\":\"\"},\"191\":{\"label\":\"\\u00d1U\\u00d1OA\",\"value\":\"\",\"image\":\"\"},\"192\":{\"label\":\"O\'HIGGINS\",\"value\":\"\",\"image\":\"\"},\"193\":{\"label\":\"OLIVAR\",\"value\":\"\",\"image\":\"\"},\"194\":{\"label\":\"OLLAG\\u00dcE\",\"value\":\"\",\"image\":\"\"},\"195\":{\"label\":\"OLMUE\",\"value\":\"\",\"image\":\"\"},\"196\":{\"label\":\"OSORNO\",\"value\":\"\",\"image\":\"\"},\"197\":{\"label\":\"OVALLE\",\"value\":\"\",\"image\":\"\"},\"198\":{\"label\":\"PADRE HURTADO\",\"value\":\"\",\"image\":\"\"},\"199\":{\"label\":\"PADRE LAS CASAS\",\"value\":\"\",\"image\":\"\"},\"200\":{\"label\":\"PAIHUANO\",\"value\":\"\",\"image\":\"\"},\"201\":{\"label\":\"PAILLACO\",\"value\":\"\",\"image\":\"\"},\"202\":{\"label\":\"PAINE\",\"value\":\"\",\"image\":\"\"},\"203\":{\"label\":\"PALENA\",\"value\":\"\",\"image\":\"\"},\"204\":{\"label\":\"PALMILLA\",\"value\":\"\",\"image\":\"\"},\"205\":{\"label\":\"PANGUIPULLI\",\"value\":\"\",\"image\":\"\"},\"206\":{\"label\":\"PANQUEHUE\",\"value\":\"\",\"image\":\"\"},\"207\":{\"label\":\"PAPUDO\",\"value\":\"\",\"image\":\"\"},\"208\":{\"label\":\"PAREDONES\",\"value\":\"\",\"image\":\"\"},\"209\":{\"label\":\"PARRAL\",\"value\":\"\",\"image\":\"\"},\"210\":{\"label\":\"PEDRO AGUIRRE CERDA\",\"value\":\"\",\"image\":\"\"},\"211\":{\"label\":\"PELARCO\",\"value\":\"\",\"image\":\"\"},\"212\":{\"label\":\"PELLUHUE\",\"value\":\"\",\"image\":\"\"},\"213\":{\"label\":\"PEMUCO\",\"value\":\"\",\"image\":\"\"},\"214\":{\"label\":\"PENCAHUE\",\"value\":\"\",\"image\":\"\"},\"215\":{\"label\":\"PENCO\",\"value\":\"\",\"image\":\"\"},\"216\":{\"label\":\"PE\\u00d1AFLOR\",\"value\":\"\",\"image\":\"\"},\"217\":{\"label\":\"PE\\u00d1ALOLEN\",\"value\":\"\",\"image\":\"\"},\"218\":{\"label\":\"PERALILLO\",\"value\":\"\",\"image\":\"\"},\"219\":{\"label\":\"PERQUENCO\",\"value\":\"\",\"image\":\"\"},\"220\":{\"label\":\"PETORCA\",\"value\":\"\",\"image\":\"\"},\"221\":{\"label\":\"PEUMO\",\"value\":\"\",\"image\":\"\"},\"222\":{\"label\":\"PICA\",\"value\":\"\",\"image\":\"\"},\"223\":{\"label\":\"PICHIDEGUA\",\"value\":\"\",\"image\":\"\"},\"224\":{\"label\":\"PICHILEMU\",\"value\":\"\",\"image\":\"\"},\"225\":{\"label\":\"PINTO\",\"value\":\"\",\"image\":\"\"},\"226\":{\"label\":\"PIRQUE\",\"value\":\"\",\"image\":\"\"},\"227\":{\"label\":\"PITRUFQUEN\",\"value\":\"\",\"image\":\"\"},\"228\":{\"label\":\"PLACILLA\",\"value\":\"\",\"image\":\"\"},\"229\":{\"label\":\"PORTEZUELO\",\"value\":\"\",\"image\":\"\"},\"230\":{\"label\":\"PORVENIR\",\"value\":\"\",\"image\":\"\"},\"231\":{\"label\":\"POZO ALMONTE\",\"value\":\"\",\"image\":\"\"},\"232\":{\"label\":\"PRIMAVERA\",\"value\":\"\",\"image\":\"\"},\"233\":{\"label\":\"PROVIDENCIA\",\"value\":\"\",\"image\":\"\"},\"234\":{\"label\":\"PUCHUNCAVI\",\"value\":\"\",\"image\":\"\"},\"235\":{\"label\":\"PUCON\",\"value\":\"\",\"image\":\"\"},\"236\":{\"label\":\"PUDAHUEL\",\"value\":\"\",\"image\":\"\"},\"237\":{\"label\":\"PUENTE ALTO\",\"value\":\"\",\"image\":\"\"},\"238\":{\"label\":\"PUERTO MONTT\",\"value\":\"\",\"image\":\"\"},\"239\":{\"label\":\"PUERTO OCTAY\",\"value\":\"\",\"image\":\"\"},\"240\":{\"label\":\"PUERTO VARAS\",\"value\":\"\",\"image\":\"\"},\"241\":{\"label\":\"PUMANQUE\",\"value\":\"\",\"image\":\"\"},\"242\":{\"label\":\"PUNITAQUI\",\"value\":\"\",\"image\":\"\"},\"243\":{\"label\":\"PUNTA ARENAS\",\"value\":\"\",\"image\":\"\"},\"244\":{\"label\":\"PUQUELDON\",\"value\":\"\",\"image\":\"\"},\"245\":{\"label\":\"PUREN\",\"value\":\"\",\"image\":\"\"},\"246\":{\"label\":\"PURRANQUE\",\"value\":\"\",\"image\":\"\"},\"247\":{\"label\":\"PUTAENDO\",\"value\":\"\",\"image\":\"\"},\"248\":{\"label\":\"PUTRE\",\"value\":\"\",\"image\":\"\"},\"249\":{\"label\":\"PUYEHUE\",\"value\":\"\",\"image\":\"\"},\"250\":{\"label\":\"QUEILEN\",\"value\":\"\",\"image\":\"\"},\"251\":{\"label\":\"QUELLON\",\"value\":\"\",\"image\":\"\"},\"252\":{\"label\":\"QUEMCHI\",\"value\":\"\",\"image\":\"\"},\"253\":{\"label\":\"QUILACO\",\"value\":\"\",\"image\":\"\"},\"254\":{\"label\":\"QUILICURA\",\"value\":\"\",\"image\":\"\"},\"255\":{\"label\":\"QUILLECO\",\"value\":\"\",\"image\":\"\"},\"256\":{\"label\":\"QUILLON\",\"value\":\"\",\"image\":\"\"},\"257\":{\"label\":\"QUILLOTA\",\"value\":\"\",\"image\":\"\"},\"258\":{\"label\":\"QUILPUE\",\"value\":\"\",\"image\":\"\"},\"259\":{\"label\":\"QUINCHAO\",\"value\":\"\",\"image\":\"\"},\"260\":{\"label\":\"QUINTA DE TILCOCO\",\"value\":\"\",\"image\":\"\"},\"261\":{\"label\":\"QUINTA NORMAL\",\"value\":\"\",\"image\":\"\"},\"262\":{\"label\":\"QUINTERO\",\"value\":\"\",\"image\":\"\"},\"263\":{\"label\":\"QUIRIHUE\",\"value\":\"\",\"image\":\"\"},\"264\":{\"label\":\"RANCAGUA\",\"value\":\"\",\"image\":\"\"},\"265\":{\"label\":\"RANQUIL\",\"value\":\"\",\"image\":\"\"},\"266\":{\"label\":\"RAUCO\",\"value\":\"\",\"image\":\"\"},\"267\":{\"label\":\"RECOLETA\",\"value\":\"\",\"image\":\"\"},\"268\":{\"label\":\"RENAICO\",\"value\":\"\",\"image\":\"\"},\"269\":{\"label\":\"RENCA\",\"value\":\"\",\"image\":\"\"},\"270\":{\"label\":\"RENGO\",\"value\":\"\",\"image\":\"\"},\"271\":{\"label\":\"REQUINOA\",\"value\":\"\",\"image\":\"\"},\"272\":{\"label\":\"RETIRO\",\"value\":\"\",\"image\":\"\"},\"273\":{\"label\":\"RINCONADA\",\"value\":\"\",\"image\":\"\"},\"274\":{\"label\":\"RIO BUENO\",\"value\":\"\",\"image\":\"\"},\"275\":{\"label\":\"RIO CLARO\",\"value\":\"\",\"image\":\"\"},\"276\":{\"label\":\"RIO HURTADO\",\"value\":\"\",\"image\":\"\"},\"277\":{\"label\":\"RIO IBA\\u00d1EZ\",\"value\":\"\",\"image\":\"\"},\"278\":{\"label\":\"RIO NEGRO\",\"value\":\"\",\"image\":\"\"},\"279\":{\"label\":\"RIO VERDE\",\"value\":\"\",\"image\":\"\"},\"280\":{\"label\":\"ROMERAL\",\"value\":\"\",\"image\":\"\"},\"281\":{\"label\":\"SAAVEDRA\",\"value\":\"\",\"image\":\"\"},\"282\":{\"label\":\"SAGRADA FAMILIA\",\"value\":\"\",\"image\":\"\"},\"283\":{\"label\":\"SALAMANCA\",\"value\":\"\",\"image\":\"\"},\"284\":{\"label\":\"SAN ANTONIO\",\"value\":\"\",\"image\":\"\"},\"285\":{\"label\":\"SAN BERNARDO\",\"value\":\"\",\"image\":\"\"},\"286\":{\"label\":\"SAN CARLOS\",\"value\":\"\",\"image\":\"\"},\"287\":{\"label\":\"SAN CLEMENTE\",\"value\":\"\",\"image\":\"\"},\"288\":{\"label\":\"SAN ESTEBAN\",\"value\":\"\",\"image\":\"\"},\"289\":{\"label\":\"SAN FABIAN\",\"value\":\"\",\"image\":\"\"},\"290\":{\"label\":\"SAN FELIPE\",\"value\":\"\",\"image\":\"\"},\"291\":{\"label\":\"SAN FERNANDO\",\"value\":\"\",\"image\":\"\"},\"292\":{\"label\":\"SAN GREGORIO\",\"value\":\"\",\"image\":\"\"},\"293\":{\"label\":\"SAN IGNACIO\",\"value\":\"\",\"image\":\"\"},\"294\":{\"label\":\"SAN JAVIER\",\"value\":\"\",\"image\":\"\"},\"295\":{\"label\":\"SAN JOAQUIN\",\"value\":\"\",\"image\":\"\"},\"296\":{\"label\":\"SAN JOSE DE MAIPO\",\"value\":\"\",\"image\":\"\"},\"297\":{\"label\":\"SAN JUAN DE LA COSTA\",\"value\":\"\",\"image\":\"\"},\"298\":{\"label\":\"SAN MIGUEL\",\"value\":\"\",\"image\":\"\"},\"299\":{\"label\":\"SAN NICOLAS\",\"value\":\"\",\"image\":\"\"},\"300\":{\"label\":\"SAN PABLO\",\"value\":\"\",\"image\":\"\"},\"301\":{\"label\":\"SAN PEDRO\",\"value\":\"\",\"image\":\"\"},\"302\":{\"label\":\"SAN PEDRO DE ATACAMA\",\"value\":\"\",\"image\":\"\"},\"303\":{\"label\":\"SAN PEDRO DE LA PAZ\",\"value\":\"\",\"image\":\"\"},\"304\":{\"label\":\"SAN RAFAEL\",\"value\":\"\",\"image\":\"\"},\"305\":{\"label\":\"SAN RAMON\",\"value\":\"\",\"image\":\"\"},\"306\":{\"label\":\"SAN ROSENDO\",\"value\":\"\",\"image\":\"\"},\"307\":{\"label\":\"SAN VICENTE\",\"value\":\"\",\"image\":\"\"},\"308\":{\"label\":\"SANTA BARBARA\",\"value\":\"\",\"image\":\"\"},\"309\":{\"label\":\"SANTA CRUZ\",\"value\":\"\",\"image\":\"\"},\"310\":{\"label\":\"SANTA JUANA\",\"value\":\"\",\"image\":\"\"},\"311\":{\"label\":\"SANTA MARIA\",\"value\":\"\",\"image\":\"\"},\"312\":{\"label\":\"SANTIAGO\",\"value\":\"\",\"image\":\"\"},\"313\":{\"label\":\"SANTO DOMINGO\",\"value\":\"\",\"image\":\"\"},\"314\":{\"label\":\"SIERRA GORDA\",\"value\":\"\",\"image\":\"\"},\"315\":{\"label\":\"TALAGANTE\",\"value\":\"\",\"image\":\"\"},\"316\":{\"label\":\"TALCA\",\"value\":\"\",\"image\":\"\"},\"317\":{\"label\":\"TALCAHUANO\",\"value\":\"\",\"image\":\"\"},\"318\":{\"label\":\"TALTAL\",\"value\":\"\",\"image\":\"\"},\"319\":{\"label\":\"TEMUCO\",\"value\":\"\",\"image\":\"\"},\"320\":{\"label\":\"TENO\",\"value\":\"\",\"image\":\"\"},\"321\":{\"label\":\"TEODORO SCHMIDT\",\"value\":\"\",\"image\":\"\"},\"322\":{\"label\":\"TIERRA AMARILLA\",\"value\":\"\",\"image\":\"\"},\"323\":{\"label\":\"TIL TIL\",\"value\":\"\",\"image\":\"\"},\"324\":{\"label\":\"TIMAUKEL\",\"value\":\"\",\"image\":\"\"},\"325\":{\"label\":\"TIRUA\",\"value\":\"\",\"image\":\"\"},\"326\":{\"label\":\"TOCOPILLA\",\"value\":\"\",\"image\":\"\"},\"327\":{\"label\":\"TOLTEN\",\"value\":\"\",\"image\":\"\"},\"328\":{\"label\":\"TOME\",\"value\":\"\",\"image\":\"\"},\"329\":{\"label\":\"TORRES DEL PAINE\",\"value\":\"\",\"image\":\"\"},\"330\":{\"label\":\"TORTEL\",\"value\":\"\",\"image\":\"\"},\"331\":{\"label\":\"TRAIGUEN\",\"value\":\"\",\"image\":\"\"},\"332\":{\"label\":\"TREGUACO \\/ TREHUACO\",\"value\":\"\",\"image\":\"\"},\"333\":{\"label\":\"TUCAPEL\",\"value\":\"\",\"image\":\"\"},\"334\":{\"label\":\"VALDIVIA\",\"value\":\"\",\"image\":\"\"},\"335\":{\"label\":\"VALLENAR\",\"value\":\"\",\"image\":\"\"},\"336\":{\"label\":\"VALPARAISO\",\"value\":\"\",\"image\":\"\"},\"337\":{\"label\":\"VICHUQUEN\",\"value\":\"\",\"image\":\"\"},\"338\":{\"label\":\"VICTORIA\",\"value\":\"\",\"image\":\"\"},\"339\":{\"label\":\"VICU\\u00d1A\",\"value\":\"\",\"image\":\"\"},\"340\":{\"label\":\"VILCUN\",\"value\":\"\",\"image\":\"\"},\"341\":{\"label\":\"VILLA ALEGRE\",\"value\":\"\",\"image\":\"\"},\"342\":{\"label\":\"VILLA ALEMANA\",\"value\":\"\",\"image\":\"\"},\"343\":{\"label\":\"VILLARRICA\",\"value\":\"\",\"image\":\"\"},\"344\":{\"label\":\"VI\\u00d1A DEL MAR\",\"value\":\"\",\"image\":\"\"},\"345\":{\"label\":\"VITACURA\",\"value\":\"\",\"image\":\"\"},\"346\":{\"label\":\"YERBAS BUENAS\",\"value\":\"\",\"image\":\"\"},\"347\":{\"label\":\"YUMBEL\",\"value\":\"\",\"image\":\"\"},\"348\":{\"label\":\"YUNGAY\",\"value\":\"\",\"image\":\"\"},\"349\":{\"label\":\"ZAPALLAR\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"9\":{\"id\":\"9\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"confirmation\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"Confirmar email\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"10\":{\"id\":\"10\",\"type\":\"text\",\"label\":\"Direcci\\u00f3n\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"12\":{\"id\":\"12\",\"type\":\"text\",\"label\":\"Congregaci\\u00f3n\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"17\":{\"id\":\"17\",\"type\":\"select\",\"label\":\"Curso al que se matricula\",\"choices\":{\"1\":{\"default\":\"1\",\"label\":\"1er a\\u00f1o. Pentateuco\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"2do a\\u00f1o.  Libros Hist\\u00f3ricos\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"3er a\\u00f1o. Profetas\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"4to a\\u00f1o. Teolog\\u00eda\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"5to a\\u00f1o. Evangelios sin\\u00f3pticos\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"6to a\\u00f1o. Ep\\u00edstolas Paulinas\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"Bachiller\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"required\":\"1\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"13\":{\"id\":\"13\",\"type\":\"select\",\"label\":\"Sede\",\"choices\":{\"4\":{\"default\":\"1\",\"label\":\"Casa Central\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"Cerro Navia\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"Copiap\\u00f3\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"Est.Central\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"Maip\\u00fa\",\"value\":\"\",\"image\":\"\"},\"9\":{\"label\":\"Paine\",\"value\":\"\",\"image\":\"\"},\"10\":{\"label\":\"Parral\",\"value\":\"\",\"image\":\"\"},\"11\":{\"label\":\"Pudahuel\",\"value\":\"\",\"image\":\"\"},\"12\":{\"label\":\"Puente Alto - Jireh\",\"value\":\"\",\"image\":\"\"},\"13\":{\"label\":\"Puente Alto - Primavera\",\"value\":\"\",\"image\":\"\"},\"14\":{\"label\":\"Puente Alto - Camino internacional\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"required\":\"1\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"20\":{\"id\":\"20\",\"type\":\"date-time\",\"label\":\"Fecha en que se pag\\u00f3 la matricula\",\"format\":\"date\",\"description\":\"\",\"size\":\"small\",\"date_type\":\"dropdown\",\"date_placeholder\":\"\",\"date_format\":\"m\\/d\\/Y\",\"date_limit_days_mon\":\"1\",\"date_limit_days_tue\":\"1\",\"date_limit_days_wed\":\"1\",\"date_limit_days_thu\":\"1\",\"date_limit_days_fri\":\"1\",\"time_interval\":\"30\",\"time_placeholder\":\"\",\"time_format\":\"g:i A\",\"time_limit_hours_start_hour\":\"09\",\"time_limit_hours_start_min\":\"00\",\"time_limit_hours_start_ampm\":\"am\",\"time_limit_hours_end_hour\":\"06\",\"time_limit_hours_end_min\":\"00\",\"time_limit_hours_end_ampm\":\"pm\",\"css\":\"\"},\"22\":{\"id\":\"22\",\"type\":\"file-upload\",\"label\":\"Fotograf\\u00eda\",\"description\":\"la fotograf\\u00eda debe ser tama\\u00f1o carnet, clara y de buena calidad.\",\"extensions\":\"jpg,jpeg,png\",\"max_size\":\"1\",\"max_file_number\":\"1\",\"style\":\"modern\",\"css\":\"\"}},\"id\":\"292\",\"field_id\":26,\"settings\":{\"form_title\":\"Matricula\",\"form_desc\":\"\",\"submit_text\":\"Enviar\",\"submit_text_processing\":\"Enviando...\",\"antispam\":\"1\",\"recaptcha\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"notification_enable\":\"1\",\"notifications\":{\"2\":{\"notification_name\":\"Nueva Solicitud de Matricula to User\",\"email\":\"{field_id=\\\"9\\\"}\",\"subject\":\"Solicitud de matricula recibida\",\"sender_name\":\"Instituto B\\u00edblico del Centro\",\"sender_address\":\"{admin_email}\",\"replyto\":\"secretaria@i-cce.cl\",\"message\":\"Gracias {field_id=\\\"5\\\"}, hemos recibito su solicitud, pronto nos pondremos en contacto con usted.\\r\\n\\r\\n\\r\\nAtte.\\r\\nDpto. Admisi\\u00f3n IBC\"},\"1\":{\"notification_name\":\"Nueva Matricula to WebClass\",\"email\":\"secretaria@i-cce.cl\",\"subject\":\"Nueva solicitud de Matricula ...\",\"sender_name\":\"Instituto B\\u00edblico del Centro\",\"sender_address\":\"{admin_email}\",\"replyto\":\"secretaria@i-cce.cl\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"name\":\"Default Confirmation\",\"type\":\"message\",\"message\":\"<p>Gracias por contactarnos {field_id=\\\"5\\\"}, dentro de las pr\\u00f3ximas 72 horas confirmaremos su matricula al correo {field_id=\\\"9\\\"}.<br \\/><br \\/><strong>** Si en el plazo indicado no ha recibido respuestas revisar su bandeja de spam\\u00a0<\\/strong><\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"\",\"message_entry_preview_style\":\"basic\"}}},\"meta\":{\"template\":\"blank\",\"entry_columns\":[5,21,17,13,20]}}', 'Matricula', '', 'publish', 'closed', 'closed', '', 'matricula', '', '', '2021-12-07 01:12:00', '2021-12-07 05:12:00', '', 0, 'http://ibc-cce.cl/wp/?post_type=wpforms&#038;p=292', 0, 'wpforms', '', 0),
(74, 1, '2017-05-25 22:47:02', '2017-05-25 22:47:02', '', 'ibcnum', '', 'inherit', 'open', 'closed', '', 'ibcnum', '', '', '2017-05-25 22:47:02', '2017-05-25 22:47:02', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/ibcnum.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2017-05-25 22:47:06', '2017-05-25 22:47:06', '', 'ibcnumeros', '', 'inherit', 'open', 'closed', '', 'ibcnumeros', '', '', '2017-05-25 22:47:06', '2017-05-25 22:47:06', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2017/05/ibcnumeros.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2016-12-14 19:36:05', '2016-12-14 23:36:05', '<!-- wp:wpforms/form-selector {\"formId\":\"297\"} /-->\n\n<!-- wp:heading -->\n<h2>Mas Información en +569 3 204 04 51 o ibc@i-cce.cl</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gutenberg-wpgmza/block /-->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2020-12-16 18:02:03', '2020-12-16 22:02:03', '', 0, 'http://ibc-cce.cl/wp/?page_id=58', 7, 'page', '', 0),
(302, 3, '2020-12-16 15:10:35', '2020-12-16 19:10:35', '<!-- wp:paragraph -->\n<p>Mas Información en +569 3 204 04 51 o ibc@i-cce.cl</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"297\"} /-->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-12-16 15:10:35', '2020-12-16 19:10:35', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-12-14 19:36:05', '2016-12-14 19:36:05', '[Form id=\"1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-12-14 19:36:05', '2016-12-14 19:36:05', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2016-12-14 19:37:11', '2016-12-14 19:37:11', '[Form id=\"10\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-12-14 19:37:11', '2016-12-14 19:37:11', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-12-14 19:36:47', '2016-12-14 19:36:47', '[Form id=\"10\"][Form id=\"1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-12-14 19:36:47', '2016-12-14 19:36:47', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2016-12-19 23:05:36', '2016-12-19 23:05:36', '[Form id=\"10\"]<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.3049068171254!2d-70.65508648492131!3d-33.49344340710593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662dacc15567f5f%3A0x2932446e7f2b0c6a!2sTeresa+Vial+1141%2C+San+Miguel%2C+Regi%C3%B3n+Metropolitana!5e0!3m2!1ses!2scl!4v1482188612450\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-12-19 23:05:36', '2016-12-19 23:05:36', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2016-12-19 23:10:35', '2016-12-19 23:10:35', '<span style=\"font-weight: 700 !important;\">¿Por qué los cristianos deberían asistir a un instituto bíblico?</span>\r\n\r\nCreemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer al Dios revelado, Salvador y Señor de nuestra vida.\r\n\r\n<span style=\"font-weight: 700 !important;\">¿Qué beneficios obtiene un cristiano al asistir a un Instituto Bíblico?</span>\r\n\r\nEl creyente que se prepara teológicamente, es un obrero mejor preparado. Y usando las Palabras del pastor Pablo Hoff, “hacha afilada corta más leña”, esto quiere decir que un creyente será más útil al reino de Dios y a su propia iglesia en la medida que esté mejor capacitado.<span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"> ¿Quiénes pueden asistir al IBC?</span>\r\n\r\nEl IBC está abierto a todos los cristianos, no tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.\r\n\r\n&nbsp;\r\n\r\nHorarios\r\n\r\n<hr />\r\n\r\nDías fijos de funcionamiento\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li> Lunes 19.45-22.00 horas</li>\r\n 	<li>Viernes 19.45-22.00 horas</li>\r\n</ul>\r\n&nbsp;\r\n\r\nArancel 2016\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Page 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Matrícula, $ 10.000 (se cancela una vez al año)</li>\r\n 	<li>Mensualidad, $ 13.000 (durante 8 meses)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-12-19 23:10:35', '2016-12-19 23:10:35', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-05-25 22:56:55', '2017-05-25 22:56:55', '[R-slider id=\"1\"]\r\n\r\nBienvenidos al Instituto Biblico del Centro', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-05-25 22:56:55', '2017-05-25 22:56:55', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(220, 2, '2020-12-15 15:55:00', '2020-12-15 19:55:00', '', 'admision_icono', '', 'inherit', 'open', 'closed', '', 'admision_icono', '', '', '2020-12-15 15:55:00', '2020-12-15 19:55:00', '', 22, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/admision_icono.png', 0, 'attachment', 'image/png', 0),
(221, 2, '2020-12-15 15:55:51', '2020-12-15 19:55:51', '<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span>\n\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span>\n\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span>\n\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">&nbsp; &nbsp;&nbsp;</span>\n\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">&nbsp;¿Quiénes pueden asistir al IBC?</span></span></span>\n\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span>\n\n&nbsp;\n\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Horarios</span></span>\n\n<hr>\n\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos de funcionamiento</span></span>\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\n 	<li>Miércoles 19:45 - 22:00 horas</li>\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\n</ul>\n&nbsp;\n\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2021</span></span>\n\n<hr>\n\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 20.000 (se cancela una vez al año)</span></span></li>\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 20.000 (durante 8 meses)</span></span></li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-12-15 15:55:51', '2020-12-15 19:55:51', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-05-25 23:00:36', '2017-05-25 23:00:36', 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-Logo-IBC-transparente.png', 'cropped-cropped-Logo-IBC-transparente.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-logo-ibc-transparente-png', '', '', '2017-05-25 23:00:36', '2017-05-25 23:00:36', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-Logo-IBC-transparente.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2017-05-25 23:02:55', '2017-05-25 23:02:55', 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-cropped-banner_biblia.jpg', 'cropped-cropped-cropped-banner_biblia.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-cropped-banner_biblia-jpg', '', '', '2017-05-25 23:02:55', '2017-05-25 23:02:55', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2016/12/cropped-cropped-cropped-banner_biblia.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-05-25 23:06:16', '2017-05-25 23:06:16', 'Nuestra Ubicación\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.3049068171254!2d-70.65508648492131!3d-33.49344340710593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662dacc15567f5f%3A0x2932446e7f2b0c6a!2sTeresa+Vial+1141%2C+San+Miguel%2C+Regi%C3%B3n+Metropolitana!5e0!3m2!1ses!2scl!4v1482188612450\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n\r\nContactanos\r\n[Form id=\"10\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-05-25 23:06:16', '2017-05-25 23:06:16', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wpjy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(329, 3, '2021-01-03 13:16:46', '2021-01-03 17:16:46', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":327,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-28-12-1024x1024.png\" alt=\"\" class=\"wp-image-327\"/></figure>\n<!-- /wp:image -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-03 13:16:46', '2021-01-03 17:16:46', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(330, 3, '2021-01-04 08:38:41', '2021-01-04 12:38:41', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":327,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/JG6yEnNGzjMpFVNU6\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-28-12-1024x1024.png\" alt=\"\" class=\"wp-image-327\"/></a></figure>\n<!-- /wp:image -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-04 08:38:41', '2021-01-04 12:38:41', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(87, 2, '2017-09-22 15:18:05', '2017-09-22 15:18:05', '<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> ¿Quiénes pueden asistir al IBC?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Horarios</span></span>\r\n\r\n<hr />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos de funcionamiento</span></span>\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\r\n 	<li>Miércoles 19:45 - 22:00 horas</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2018</span></span>\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 15.000 (se cancela una vez al año)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 17.000 (durante 8 meses)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-09-22 15:18:05', '2017-09-22 15:18:05', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(293, 2, '2020-12-16 14:08:54', '2020-12-16 18:08:54', '<!-- wp:paragraph -->\n<p>El periodo de matrícula 2021 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"292\"} /-->', 'ADMISIÓN 2021', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2020-12-16 14:08:54', '2020-12-16 18:08:54', '', 253, 'http://ibc-cce.cl/wp/253-revision-v1/', 0, 'revision', '', 0),
(290, 2, '2020-12-15 22:27:59', '2020-12-16 02:27:59', '<!-- wp:paragraph -->\n<p>El periodo de matrícula 2021 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tw/fm-submissions {\"popupOpened\":false,\"notInitial\":true} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ADMISIÓN 2021', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2020-12-15 22:27:59', '2020-12-16 02:27:59', '', 253, 'http://ibc-cce.cl/wp/253-revision-v1/', 0, 'revision', '', 0),
(289, 2, '2020-12-15 22:26:46', '2020-12-16 02:26:46', '<!-- wp:paragraph -->\n<p>El periodo de matrícula 2021 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tw/form-maker {\"shortcode\":\"[Form id=\\u00223\\u0022]\",\"popupOpened\":true,\"notInitial\":true} -->\n[Form id=\"3\"]\n<!-- /wp:tw/form-maker -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ADMISIÓN 2021', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2020-12-15 22:26:46', '2020-12-16 02:26:46', '', 253, 'http://ibc-cce.cl/wp/253-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2020-12-15 22:28:19', '2020-12-16 02:28:19', '[FormPreview]', 'Preview', '', 'publish', 'closed', 'closed', '', 'preview', '', '', '2020-12-15 22:28:19', '2020-12-16 02:28:19', '', 0, 'http://ibc-cce.cl/wp/form-maker/preview/', 0, 'form-maker', '', 0),
(89, 2, '2017-09-22 15:28:02', '2017-09-22 15:28:02', 'Equipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Eliazar Vega</li>\r\n 	<li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n 	<li>Hno. Gabriel Zamora Muñoz</li>\r\n 	<li>Hna. Viviana Daza Manque</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Camila Correa (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n 	<li>Ariela Ríos Cisterna (Casino)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-09-22 15:28:02', '2017-09-22 15:28:02', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(155, 2, '2018-01-03 17:17:57', '2018-01-03 21:17:57', '[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\n<strong>ADMISIÓN 2018</strong>\r\n\r\nEs necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios.\r\n\r\n<strong>PREPÁRATE RESPONSABLEMENTE PARA SERVIR A DIOS DE MANERA EFICIENTE</strong>\r\n\r\n¡MATRICULAS ABIERTAS!\r\n\r\nReserva tu cupo ¡AHORA!\r\n\r\nSedes\r\n      Casa Central, Teresa Vial 1141, San Miguel\r\n      Maipu, General las Heras 2606\r\n      Parral, Igualdad esquina San Martín \r\n\r\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\r\n\r\nInicio de clases MARZO 2018', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-01-03 17:17:57', '2018-01-03 21:17:57', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(148, 2, '2018-01-03 10:06:15', '2018-01-03 14:06:15', '', 'Web Direccion IBC', '', 'inherit', 'open', 'closed', '', 'web-direccion-ibc', '', '', '2018-01-03 10:06:15', '2018-01-03 14:06:15', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/01/Web-Direccion-IBC.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 2, '2018-01-03 10:12:43', '2018-01-03 14:12:43', '[R-slider id=\"3\"]\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-01-03 10:12:43', '2018-01-03 14:12:43', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(150, 2, '2018-01-03 10:12:18', '2018-01-03 14:12:18', '[R-slider id=\"3\"] [R-slider id=\"3\"]\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-01-03 10:12:18', '2018-01-03 14:12:18', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(152, 2, '2018-01-03 16:56:37', '2018-01-03 20:56:37', '[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\nADMISIÓN 2018\r\n\r\nMas Información en +569 3 204 04 51', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-01-03 16:56:37', '2018-01-03 20:56:37', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(153, 2, '2018-01-03 16:58:55', '2018-01-03 20:58:55', '[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\n<strong>ADMISIÓN 2018</strong>\r\n\r\nMas Información en +569 3 204 04 51', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-01-03 16:58:55', '2018-01-03 20:58:55', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-10-23 13:17:03', '2017-10-23 17:17:03', '<p style=\"text-align: center;\">Nuestra Ubicación</p>\r\n<p style=\"text-align: center;\">\r\n<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.3049068171254!2d-70.65508648492131!3d-33.49344340710593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662dacc15567f5f%3A0x2932446e7f2b0c6a!2sTeresa+Vial+1141%2C+San+Miguel%2C+Regi%C3%B3n+Metropolitana!5e0!3m2!1ses!2scl!4v1482188612450\" width=\"600\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p style=\"text-align: center;\">Contactanos\r\n[Form id=\"10\"]</p>', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-10-23 13:17:03', '2017-10-23 17:17:03', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(241, 2, '2020-12-15 16:55:42', '2020-12-15 20:55:42', '', 'ON LINE-1', '', 'inherit', 'open', 'closed', '', 'on-line-1', '', '', '2020-12-15 17:46:16', '2020-12-15 21:46:16', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ON-LINE-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 2, '2020-12-15 16:55:35', '2020-12-15 20:55:35', '', 'Mujer biblia', '', 'inherit', 'open', 'closed', '', 'mujer-biblia', '', '', '2020-12-15 16:55:35', '2020-12-15 20:55:35', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mujer-biblia.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 2, '2020-12-15 16:55:25', '2020-12-15 20:55:25', '', 'Lectura', '', 'inherit', 'open', 'closed', '', 'lectura', '', '', '2020-12-15 16:55:25', '2020-12-15 20:55:25', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Lectura.jpg', 0, 'attachment', 'image/jpeg', 0),
(321, 3, '2020-12-26 22:15:52', '2020-12-27 02:15:52', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12-1024x1024.png\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2020-12-26 22:15:52', '2020-12-27 02:15:52', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(234, 2, '2020-12-15 16:25:57', '2020-12-15 20:25:57', ' ', '', '', 'publish', 'closed', 'closed', '', '234', '', '', '2021-09-30 12:04:27', '2021-09-30 16:04:27', '', 0, 'http://ibc-cce.cl/wp/?p=234', 5, 'nav_menu_item', '', 0),
(118, 1, '2017-10-23 13:21:34', '2017-10-23 17:21:34', '<p style=\"text-align: center;\">Nuestra Ubicación</p>\r\n<p style=\"text-align: center;\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.3049068171254!2d-70.65508648492131!3d-33.49344340710593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662dacc15567f5f%3A0x2932446e7f2b0c6a!2sTeresa+Vial+1141%2C+San+Miguel%2C+Regi%C3%B3n+Metropolitana!5e0!3m2!1ses!2scl!4v1482188612450\" width=\"600\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p style=\"text-align: center;\">Contactanos\r\n[Form id=\"10\"]</p>', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-10-23 13:21:34', '2017-10-23 17:21:34', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(367, 3, '2021-11-09 18:48:10', '2021-11-09 22:48:10', '<!-- wp:paragraph -->\n<p>El pasado sábado 06 de Noviembre  Ante una audiencia que supero las 100 personas , se llevó a cabo el Seminario “<strong>Secularización y postmodernidad, ¿Cómo afecta a la iglesia?</strong>”, organizado por el Instituto bíblico del Centro como actividad del año académico 2021 y desarrollado por nuestro Pastor Elías Montero Piqué y el Pastor Juan Vidal.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por nuestra coordinadora académica, la Hna. Nicole Chavez , se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Faundes  que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar la Hmna. Angie Millán invita a nuestros expositores a contestar algunas preguntas de los presentes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/0NKssWhnHxQ\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/0NKssWhnHxQ\n</div></figure>\n<!-- /wp:embed -->', 'Seminario y conversatorio: Secularización y postmodernidad, ¿Cómo afecta al cristianismo?', '', 'publish', 'open', 'open', '', 'seminario-y-conversatorio-secularizacion-y-postmodernidad-como-afecta-al-cristianismo', '', '', '2021-11-09 18:48:19', '2021-11-09 22:48:19', '', 0, 'http://ibc-cce.cl/wp/?p=367', 0, 'post', '', 0),
(361, 3, '2021-11-08 10:21:55', '2021-11-08 14:21:55', '<!-- wp:paragraph -->\n<p>El pasado viernes 25 de Enero &nbsp;Ante una audiencia empapada de emociones y llena de respeto, se llevó a cabo el Seminario “<strong>Seminario Feminismo / Cristianismo: ¿Dónde estamos?</strong>”, organizado por el Instituto bíblico del Centro como actividad de  de inicio año académico 2021 y desarrollado por nuestro Pastor Elías Montero Piqué.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por la Hna. Angie Millán del departamento de secretaria del IBC, se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Faundes &nbsp;que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar los profesores Viviana Daza y Samuel Campos leen algunas preguntas de los presentes las cuales fueron respondidas por el expositor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/HwdelXHxs9g\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/HwdelXHxs9g\n</div></figure>\n<!-- /wp:embed -->', 'Seminario Feminismo / Cristianismo: ¿Dónde estamos?', '', 'publish', 'open', 'open', '', 'seminario-feminismo-cristianismo-donde-estamos', '', '', '2021-11-08 18:24:44', '2021-11-08 22:24:44', '', 0, 'http://ibc-cce.cl/wp/?p=361', 0, 'post', '', 0),
(228, 2, '2020-12-15 16:25:57', '2020-12-15 20:25:57', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', '228', '', '', '2021-09-30 12:04:27', '2021-09-30 16:04:27', '', 0, 'http://ibc-cce.cl/wp/?p=228', 2, 'nav_menu_item', '', 0),
(358, 3, '2021-09-30 12:04:27', '2021-09-30 16:04:27', ' ', '', '', 'publish', 'closed', 'closed', '', '358', '', '', '2021-09-30 12:04:27', '2021-09-30 16:04:27', '', 0, 'http://ibc-cce.cl/wp/?p=358', 4, 'nav_menu_item', '', 0),
(226, 2, '2020-12-15 16:25:57', '2020-12-15 20:25:57', ' ', '', '', 'publish', 'closed', 'closed', '', '226', '', '', '2021-09-30 12:04:27', '2021-09-30 16:04:27', '', 0, 'http://ibc-cce.cl/wp/?p=226', 1, 'nav_menu_item', '', 0),
(149, 2, '2018-01-03 10:10:49', '2018-01-03 14:10:49', '[R-slider id=\"3\"]\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-01-03 10:10:49', '2018-01-03 14:10:49', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(131, 2, '2017-10-23 15:41:44', '2017-10-23 19:41:44', '[R-slider id=\"1\"][R-slider id=\"1\"][R-slider id=\"1\"]\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-10-23 15:41:44', '2017-10-23 19:41:44', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(130, 2, '2017-10-23 15:39:55', '2017-10-23 19:39:55', '<img class=\"alignnone size-medium wp-image-6\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/Logo-IBC-transparente-300x169.png\" alt=\"IBC\" width=\"300\" height=\"169\" />[R-slider id=\"1\"][R-slider id=\"1\"][R-slider id=\"1\"]\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-10-23 15:39:55', '2017-10-23 19:39:55', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(132, 2, '2017-10-23 15:54:30', '2017-10-23 19:54:30', '[R-slider id=\"1\"][R-slider id=\"1\"][R-slider id=\"1\"]\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-10-23 15:54:30', '2017-10-23 19:54:30', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(135, 2, '2017-10-23 16:02:38', '2017-10-23 20:02:38', '[R-slider id=\"1\"]\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-10-23 16:02:38', '2017-10-23 20:02:38', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(134, 2, '2017-10-23 15:57:51', '2017-10-23 19:57:51', '[R-slider id=\"1\"][R-slider id=\"1\"][R-slider id=\"1\"][R-slider id=\"1\"]\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-10-23 15:57:51', '2017-10-23 19:57:51', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(136, 2, '2017-10-23 16:14:39', '2017-10-23 20:14:39', '[R-slider id=\"1\"]', 'Inicio', '', 'publish', 'open', 'open', '', '136-2', '', '', '2017-10-23 16:27:50', '2017-10-23 20:27:50', '', 0, 'http://ibc-cce.cl/wp/?p=136', 0, 'post', '', 0),
(137, 2, '2017-10-23 16:09:36', '2017-10-23 20:09:36', '[R-slider id=\"1\"]', '', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2017-10-23 16:09:36', '2017-10-23 20:09:36', '', 136, 'http://ibc-cce.cl/wp/136-revision-v1/', 0, 'revision', '', 0),
(139, 2, '2017-10-23 16:27:50', '2017-10-23 20:27:50', '[R-slider id=\"1\"]', 'Inicio', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2017-10-23 16:27:50', '2017-10-23 20:27:50', '', 136, 'http://ibc-cce.cl/wp/136-revision-v1/', 0, 'revision', '', 0),
(157, 2, '2018-09-08 13:24:34', '0000-00-00 00:00:00', '[R-slider id=\"4\"]', 'Hogar Cristiano', '', 'draft', 'open', 'open', '', '', '', '', '2018-09-08 13:24:34', '2018-09-08 17:24:34', '', 0, 'http://ibc-cce.cl/wp/?p=157', 0, 'post', '', 0),
(158, 2, '2018-09-08 13:20:34', '2018-09-08 17:20:34', '[R-slider id=\"1\"][R-slider id=\"3\"]', 'Hogar Cristiano', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2018-09-08 13:20:34', '2018-09-08 17:20:34', '', 157, 'http://ibc-cce.cl/wp/157-revision-v1/', 0, 'revision', '', 0),
(159, 2, '2018-09-08 13:22:53', '2018-09-08 17:22:53', '', '2018 Invitación Hogar Cristiano', '', 'inherit', 'open', 'closed', '', '2018-invitacion-hogar-cristiano', '', '', '2018-09-08 13:22:53', '2018-09-08 17:22:53', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/09/2018-Invitación-Hogar-Cristiano.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 2, '2018-09-08 13:24:13', '2018-09-08 17:24:13', '[R-slider id=\"4\"]', 'Hogar Cristiano', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2018-09-08 13:24:13', '2018-09-08 17:24:13', '', 157, 'http://ibc-cce.cl/wp/157-revision-v1/', 0, 'revision', '', 0),
(161, 2, '2018-09-08 13:25:41', '2018-09-08 17:25:41', '[R-slider id=\"4\"]\r\n\r\n[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\n<strong>ADMISIÓN 2018</strong>\r\n\r\nEs necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios.\r\n\r\n<strong>PREPÁRATE RESPONSABLEMENTE PARA SERVIR A DIOS DE MANERA EFICIENTE</strong>\r\n\r\n¡MATRICULAS ABIERTAS!\r\n\r\nReserva tu cupo ¡AHORA!\r\n\r\nSedes\r\n      Casa Central, Teresa Vial 1141, San Miguel\r\n      Maipu, General las Heras 2606\r\n      Parral, Igualdad esquina San Martín \r\n\r\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\r\n\r\nInicio de clases MARZO 2018', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-09-08 13:25:41', '2018-09-08 17:25:41', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(163, 2, '2018-12-10 22:33:01', '2018-12-11 02:33:01', '[R-slider id=\"4\"]\r\n\r\n[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\n<strong>ADMISIÓN 2019</strong>\r\n\r\nEs necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios.\r\n\r\n<strong>PREPÁRATE RESPONSABLEMENTE PARA SERVIR A DIOS DE MANERA EFICIENTE</strong>\r\n\r\n¡MATRICULAS ABIERTAS!\r\n\r\nReserva tu cupo ¡AHORA!\r\n\r\nSedes\r\n      Casa Central, Teresa Vial 1141, San Miguel\r\n      Maipu, General las Heras 2606\r\n      Parral, Igualdad esquina San Martín \r\n      Puente Alto, Camino Internacional\r\n      Puente Alto, Primavera\r\n      Puente Alto, Renacer\r\n      Estación Central\r\n      Pudahuel\r\n\r\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\r\n\r\nInicio de clases MARZO 2019', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-10 22:33:01', '2018-12-11 02:33:01', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(164, 2, '2018-12-10 22:34:57', '2018-12-11 02:34:57', '[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\n<strong>ADMISIÓN 2019</strong>\r\n\r\nEs necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios.\r\n\r\n<strong>PREPÁRATE RESPONSABLEMENTE PARA SERVIR A DIOS DE MANERA EFICIENTE</strong>\r\n\r\n¡MATRICULAS ABIERTAS!\r\n\r\nReserva tu cupo ¡AHORA!\r\n\r\nSedes\r\n      Casa Central, Teresa Vial 1141, San Miguel\r\n      Maipu, General las Heras 2606\r\n      Parral, Igualdad esquina San Martín \r\n      Puente Alto, Camino Internacional\r\n      Puente Alto, Primavera\r\n      Puente Alto, Renacer\r\n      Estación Central\r\n      Pudahuel\r\n\r\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\r\n\r\nInicio de clases MARZO 2019', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-10 22:34:57', '2018-12-11 02:34:57', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(165, 2, '2018-12-10 22:41:18', '2018-12-11 02:41:18', 'Equipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n 	<li>Hno. Gabriel Zamora Muñoz</li>\r\n 	<li>Hna. Viviana Daza Manque</li>\r\n        <li>Hno. Samuel Campos Cid</li>\r\n        <li>Hna. Laura Muñoz Muñoz</li>\r\n        <li>Hna. Ariela Rios Cisterna</li>\r\n        <li>Hno. Felipe Montero Fuentes</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Jonathan Miller (Secretaría)</span></li>\r\n        <li><span class=\"goog-text-highlight\">Angie Millan (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-12-10 22:41:18', '2018-12-11 02:41:18', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(166, 2, '2018-12-10 22:42:26', '2018-12-11 02:42:26', 'Equipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Gerardo Arancibia Ovalle</li>\r\n        <li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n 	<li>Hno. Gabriel Zamora Muñoz</li>\r\n 	<li>Hna. Viviana Daza Manque</li>\r\n        <li>Hno. Samuel Campos Cid</li>\r\n        <li>Hna. Laura Muñoz Muñoz</li>\r\n        <li>Hna. Ariela Rios Cisterna</li>\r\n        <li>Hno. Felipe Montero Fuentes</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Jonathan Miller (Secretaría)</span></li>\r\n        <li><span class=\"goog-text-highlight\">Angie Millan (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-12-10 22:42:26', '2018-12-11 02:42:26', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(167, 2, '2018-12-10 22:46:47', '2018-12-11 02:46:47', 'Equipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Gerardo Arancibia Ovalle</li>\r\n        <li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n 	<li>Hno. Gabriel Zamora Muñoz</li>\r\n 	<li>Hna. Viviana Daza Manque</li>\r\n        <li>Hno. Samuel Campos Cid</li>\r\n        <li>Hna. Laura Muñoz Muñoz</li>\r\n        <li>Hno. Felipe Montero Fuentes</li>\r\n        <li>Hna. Ariela Rios Cisterna</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Jonathan Miller (Secretaría)</span></li>\r\n        <li><span class=\"goog-text-highlight\">Angie Millan (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n        <li>Esteban Pizarro Pinto (Campus Virtual)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-12-10 22:46:47', '2018-12-11 02:46:47', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(168, 2, '2018-12-10 22:53:33', '2018-12-11 02:53:33', '', 'Organigrama', '', 'inherit', 'open', 'closed', '', 'organigrama', '', '', '2018-12-10 22:53:33', '2018-12-11 02:53:33', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2018/12/Organigrama.png', 0, 'attachment', 'image/png', 0),
(169, 2, '2018-12-10 22:54:31', '2018-12-11 02:54:31', '[R-slider id=\"5\"]\r\n\r\nEquipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Gerardo Arancibia Ovalle</li>\r\n        <li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n 	<li>Hno. Gabriel Zamora Muñoz</li>\r\n 	<li>Hna. Viviana Daza Manque</li>\r\n        <li>Hno. Samuel Campos Cid</li>\r\n        <li>Hna. Laura Muñoz Muñoz</li>\r\n        <li>Hno. Felipe Montero Fuentes</li>\r\n        <li>Hna. Ariela Rios Cisterna</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Jonathan Miller (Secretaría)</span></li>\r\n        <li><span class=\"goog-text-highlight\">Angie Millan (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n        <li>Esteban Pizarro Pinto (Campus Virtual)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-12-10 22:54:31', '2018-12-11 02:54:31', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(170, 2, '2018-12-10 22:57:55', '2018-12-11 02:57:55', '<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> ¿Quiénes pueden asistir al IBC?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Horarios</span></span>\r\n\r\n<hr />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos de funcionamiento</span></span>\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\r\n 	<li>Miércoles 19:45 - 22:00 horas</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2018</span></span>\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 20.000 (se cancela una vez al año)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 17.000 (durante 8 meses)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-12-10 22:57:55', '2018-12-11 02:57:55', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(171, 2, '2018-12-10 22:58:31', '2018-12-11 02:58:31', '<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> ¿Quiénes pueden asistir al IBC?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Horarios</span></span>\r\n\r\n<hr />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos de funcionamiento</span></span>\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\r\n 	<li>Miércoles 19:45 - 22:00 horas</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2019</span></span>\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 20.000 (se cancela una vez al año)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 17.000 (durante 8 meses)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-12-10 22:58:31', '2018-12-11 02:58:31', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(182, 2, '2019-09-10 19:52:25', '2019-09-10 23:52:25', '[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\n<strong>ADMISIÓN 2020</strong>\r\n\r\nEs necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios.\r\n\r\n<strong>PREPÁRATE RESPONSABLEMENTE PARA SERVIR A DIOS DE MANERA EFICIENTE</strong>\r\n\r\n¡MATRICULAS ABIERTAS!\r\n\r\nReserva tu cupo ¡AHORA!\r\n\r\nSedes\r\n      Casa Central, Teresa Vial 1141, San Miguel\r\n      Maipu, General las Heras 2606\r\n      Parral, Igualdad esquina San Martín \r\n      Puente Alto, Camino Internacional\r\n      Puente Alto, Primavera\r\n      Puente Alto, Jireh\r\n      Pudahuel\r\n      Cerro Navia\r\n      Paine\r\n\r\n\r\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\r\n\r\nInicio de clases MARZO 2020', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-09-10 19:52:25', '2019-09-10 23:52:25', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-04-04 20:36:56', '2019-04-05 00:36:56', '<!-- wp:paragraph -->\n<p>Ya terminado el Año Académico 2020 no podemos más que agradecer la excelente disposición que han tenido todos nuestros docentes. Sin duda que el contexto de contingencia sanitaria nos ha llevado a modificar la forma de trabajo, en especial la manera de impartir las clases, por lo que agradecemos el esfuerzo y dedicación que ustedes, nuestros docentes, han tenido para adaptarse a estos nuevos tiempos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En el IBC nos adaptamos a la nueva modalidad online dictando todos nuestro cursos vía steaming con la pasión y excelencia que entrega nuestro gran equipo de docentes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":241,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ON-LINE-1-1024x682.jpg\" alt=\"\" class=\"wp-image-241\"/></figure>\n<!-- /wp:image -->', 'WebClass', '', 'publish', 'closed', 'closed', '', 'web-class', '', '', '2020-12-16 22:10:46', '2020-12-17 02:10:46', '', 0, 'http://ibc-cce.cl/wp/?page_id=176', 5, 'page', '', 0),
(177, 1, '2019-04-04 20:34:52', '2019-04-05 00:34:52', '', 'Web Class', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2019-04-04 20:34:52', '2019-04-05 00:34:52', '', 176, 'http://ibc-cce.cl/wp/176-revision-v1/', 0, 'revision', '', 0),
(224, 2, '2020-12-15 16:11:33', '2020-12-15 20:11:33', '<!--?php\n// PHP permanent URL redirection\nheader(\"Location: http://www.webclass.ibc-cce.cl\", true, 301);\nexit();\n?-->', 'WebClass', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2020-12-15 16:11:33', '2020-12-15 20:11:33', '', 176, 'http://ibc-cce.cl/wp/176-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-04-04 21:15:35', '2019-04-05 01:15:35', '<?php\r\n// PHP permanent URL redirection\r\nheader(\"Location: http://www.webclass.ibc-cce.cl\", true, 301);\r\nexit();\r\n?>', 'Web Class', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2019-04-04 21:15:35', '2019-04-05 01:15:35', '', 176, 'http://ibc-cce.cl/wp/176-revision-v1/', 0, 'revision', '', 0),
(183, 2, '2019-09-10 19:55:21', '2019-09-10 23:55:21', '[R-slider id=\"5\"]\r\n\r\nEquipo Docente\r\n<div class=\"page\" title=\"Página 1\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Margarita Piqué Faúndez (Director)</li>\r\n 	<li>Pastor, Elías Montero Piqué (Representante Legal)</li>\r\n 	<li>Pastor, Gerardo Arancibia Ovalle</li>\r\n        <li>Pastor, Leonel Suárez</li>\r\n 	<li>Dcno. Andrés Ureta Órdenes</li>\r\n 	<li>Dcno. Italo Morales Ruiz</li>\r\n 	<li>Dcno. Jaime Toledo Rupallán</li>\r\n 	<li>Dcno. Lorenzo Villalobos</li>\r\n 	<li>Hna. Fabiola Ceppi Monares</li>\r\n 	<li>Hna. Nicole Chávez Muñoz</li>\r\n 	<li>Hno. Gabriel Zamora Muñoz</li>\r\n 	<li>Hna. Viviana Daza Manque</li>\r\n        <li>Hno. Samuel Campos Cid</li>\r\n        <li>Hna. Laura Muñoz Muñoz</li>\r\n        <li>Hno. Felipe Montero Fuentes</li>\r\n        <li>Hna. Ariela Rios Cisterna</li>\r\n        <li>Hno. Esteban Pizarro Pinto</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\nEquipo administrativo\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li>Pastora, Marcela Fuentes Fuentes (director del casino)</li>\r\n 	<li><span class=\"goog-text-highlight\">Jonathan Miller (Secretaría)</span></li>\r\n        <li><span class=\"goog-text-highlight\">Angie Millan (Secretaría)</span></li>\r\n 	<li>Ana Luz Díaz Cartes (Finanzas)</li>\r\n        <li>Esteban Pizarro Pinto (Campus Virtual)</li>\r\n 	<li>María Soledad González (Casino)</li>\r\n 	<li>Ercilda Fuentes Burgos (Casino)</li>\r\n 	<li>Adelina Fuentes Burgos (Casino)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nuestro Equipo', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-09-10 19:55:21', '2019-09-10 23:55:21', '', 20, 'http://ibc-cce.cl/wp/20-revision-v1/', 0, 'revision', '', 0),
(184, 2, '2019-09-10 19:57:48', '2019-09-10 23:57:48', '<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> ¿Quiénes pueden asistir al IBC?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Horarios</span></span>\r\n\r\n<hr />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos de funcionamiento</span></span>\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\r\n 	<li>Miércoles 19:45 - 22:00 horas</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2020</span></span>\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 25.000 (se cancela una vez al año)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 20.000 (durante 8 meses)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-09-10 19:57:48', '2019-09-10 23:57:48', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wpjy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(185, 2, '2019-09-10 20:01:30', '2019-09-11 00:01:30', 'Todo alumno del IBC debe comprometerse con lo siguiente:\r\n<ul>\r\n 	<li>Orar y estudiar permanentemente para dar frutos dignos de un obrero cristiano</li>\r\n 	<li>Asistir puntualmente a cada una de sus clases y entregar sus deberes a tiempo</li>\r\n 	<li>Aceptar el castigo en sus notas por incumplimiento académico:</li>\r\n</ul>\r\n<table class=\" aligncenter\" style=\"height: 181px;\" width=\"355\">\r\n<tbody>\r\n<tr>\r\n<td width=\"120\">Nota máxima</td>\r\n<td width=\"225\">Entrega de tareas</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">7</td>\r\n<td width=\"225\">\r\n<p style=\"text-align: left;\">A tiempo (en la fecha)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">6</td>\r\n<td width=\"225\">1 semana después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">5</td>\r\n<td width=\"225\">2 semanas después</td>\r\n</tr>\r\n<tr>\r\n<td width=\"120\">1</td>\r\n<td width=\"225\">&gt;2 semanas</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Justificar las inasistencias debidamente con su respectivo profesor y con la Dirección académica del Instituto Bíblico. En el caso de enfermedad, presentar certificado médico, en cuyo caso las tareas no quedan sujetas a descuento por demora. Si se tratase de un impedimento laboral se deberá avisar al profesor oportunamente la inasistencia (siendo el mismo día el último plazo) y las tareas se entregarán en la reunión siguiente.</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Pagar puntualmente sus compromisos académicos con el IBC. En caso contrario se compromete a dar una explicación razonable y anticipada por alguna demora.</li>\r\n 	<li style=\"text-align: left;\">Manifestar una conducta de respeto y espíritu cristiano hacia sus profesores y compañeros en todo momento</li>\r\n</ul>\r\n<ul style=\"text-align: center;\">\r\n 	<li style=\"text-align: left;\">Practicar la sencillez y el buen compañerismo</li>\r\n</ul>\r\nDescargar Documento :<a href=\"http://ibc-cce.cl/wp/wp-content/uploads/2016/12/IBC-Reglamento-del-alumno-V2-2011.docx\">Reglamento</a>', 'Reglamento', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-09-10 20:01:30', '2019-09-11 00:01:30', '', 2, 'http://ibc-cce.cl/wp/2-autosave-v1/', 0, 'revision', '', 0),
(187, 2, '2020-12-13 23:21:46', '2020-12-14 03:21:46', '[R-slider id=\"3\"]\r\n\r\n&nbsp;\r\n\r\n<strong>ADMISIÓN 2021</strong>\r\n\r\nEs necesario que todo creyente presente con mansedumbre, defensa de su FE a todo aquel que demande razón de ella, por eso no pierdas tu tiempo y ven a estudiar con nosotros la palabra de Dios.\r\n\r\n<strong>PREPÁRATE RESPONSABLEMENTE PARA SERVIR A DIOS DE MANERA EFICIENTE</strong>\r\n\r\n¡MATRICULAS ABIERTAS!\r\n\r\nReserva tu cupo ¡AHORA!\r\n\r\nSedes\r\n      Casa Central, Teresa Vial 1141, San Miguel\r\n      Maipu, General las Heras 2606\r\n      Parral, Igualdad esquina San Martín \r\n      Puente Alto, Camino Internacional\r\n      Puente Alto, Primavera\r\n      Puente Alto, Jireh\r\n      Pudahuel\r\n      Cerro Navia\r\n      Paine\r\n\r\n\r\nMas Información en +569 3 204 04 51 o ibc@i-cce.cl\r\n\r\nInicio de clases MARZO 2021\r\n\r\nPor la contingencia (COVID19) las clases serán online ', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-12-13 23:21:46', '2020-12-14 03:21:46', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(188, 2, '2020-12-13 23:24:53', '2020-12-14 03:24:53', '<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> ¿Quiénes pueden asistir al IBC?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Horarios</span></span>\r\n\r\n<hr />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos de funcionamiento</span></span>\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\r\n 	<li>Miércoles 19:45 - 22:00 horas</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2020</span></span>\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 20.000 (se cancela una vez al año)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 20.000 (durante 8 meses)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-12-13 23:24:53', '2020-12-14 03:24:53', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(189, 2, '2020-12-13 23:25:25', '2020-12-14 03:25:25', '<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">    </span>\r\n\r\n<span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> ¿Quiénes pueden asistir al IBC?</span></span></span>\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Horarios</span></span>\r\n\r\n<hr />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos de funcionamiento</span></span>\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\r\n 	<li>Miércoles 19:45 - 22:00 horas</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2021</span></span>\r\n\r\n<hr />\r\n\r\n<div class=\"page\" title=\"Página 2\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 20.000 (se cancela una vez al año)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 20.000 (durante 8 meses)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-12-13 23:25:25', '2020-12-14 03:25:25', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(366, 3, '2021-11-08 18:06:37', '2021-11-08 22:06:37', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Seminarios pasados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {\"categories\":[{\"id\":22,\"count\":1,\"description\":\"\",\"link\":\"https://ibc-cce.cl/wp/category/seminarios/\",\"name\":\"Seminarios\",\"slug\":\"seminarios\",\"taxonomy\":\"category\",\"parent\":0,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories/22\"}],\"collection\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/taxonomies/category\"}],\"wp:post_type\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/posts?categories=22\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}],\"excerptLength\":41,\"displayPostDate\":true,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"left\",\"featuredImageSizeSlug\":\"medium\",\"addLinkToFeaturedImage\":true,\"align\":\"center\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-11-08 18:06:37', '2021-11-08 22:06:37', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(350, 3, '2021-01-19 16:57:28', '2021-01-19 20:57:28', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":337,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/WZHR1RhksGgaUcPJ8\" target=\"_blank\" rel=\"noopener\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-25-01-1024x1024.png\" alt=\"\" class=\"wp-image-337\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Seminarios pasados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {\"categories\":[{\"id\":22,\"count\":1,\"description\":\"\",\"link\":\"https://ibc-cce.cl/wp/category/seminarios/\",\"name\":\"Seminarios\",\"slug\":\"seminarios\",\"taxonomy\":\"category\",\"parent\":0,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories/22\"}],\"collection\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/taxonomies/category\"}],\"wp:post_type\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/posts?categories=22\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}],\"excerptLength\":41,\"displayPostDate\":true,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"left\",\"featuredImageSizeSlug\":\"medium\",\"addLinkToFeaturedImage\":true,\"align\":\"center\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-19 16:57:28', '2021-01-19 20:57:28', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(201, 2, '2020-12-14 09:41:28', '2020-12-14 13:41:28', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Seminarios pasados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {\"categories\":[{\"id\":22,\"count\":1,\"description\":\"\",\"link\":\"https://ibc-cce.cl/wp/category/seminarios/\",\"name\":\"Seminarios\",\"slug\":\"seminarios\",\"taxonomy\":\"category\",\"parent\":0,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories/22\"}],\"collection\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/taxonomies/category\"}],\"wp:post_type\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/posts?categories=22\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}],\"excerptLength\":41,\"displayPostDate\":true,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"left\",\"featuredImageSizeSlug\":\"medium\",\"addLinkToFeaturedImage\":true,\"align\":\"center\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Seminarios', '', 'publish', 'closed', 'closed', '', 'seminarios', '', '', '2021-11-08 18:07:19', '2021-11-08 22:07:19', '', 0, 'http://ibc-cce.cl/wp/?page_id=201', 0, 'page', '', 0),
(204, 2, '2020-12-14 09:40:09', '2020-12-14 13:40:09', '', 'Seminario 28-12 web', '', 'inherit', 'open', 'closed', '', 'seminario-28-12-web', '', '', '2020-12-14 09:40:50', '2020-12-14 13:40:50', '', 201, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12-web.png', 0, 'attachment', 'image/png', 0),
(328, 3, '2021-01-03 13:01:26', '2021-01-03 17:01:26', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-03 13:01:26', '2021-01-03 17:01:26', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(323, 3, '2020-12-26 22:17:30', '2020-12-27 02:17:30', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/49awAQMPhFBWEzJN6\" target=\"_blank\" rel=\"https://forms.gle/49awAQMPhFBWEzJN6 noopener\"><img src=\"https://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12-1024x1024.png\" alt=\"\" class=\"wp-image-320\"/></a></figure>\n<!-- /wp:image -->\n\n', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2020-12-26 22:17:30', '2020-12-27 02:17:30', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(205, 2, '2020-12-14 09:41:05', '2020-12-14 13:41:05', '<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSe8tcfV_yCzRvVIvl7B965RkcBiAHZv5juQWfCK3qahhCi2bg/viewform\"><img class=\"aligncenter size-full wp-image-204\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12-web.png\" alt=\"Seminario 28-12 web\" width=\"1080\" height=\"1080\" /></a>', 'SEMINARIOS', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2020-12-14 09:41:05', '2020-12-14 13:41:05', '', 201, 'http://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(208, 2, '2020-12-15 14:21:40', '2020-12-15 18:21:40', '', 'favIcon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2020-12-15 14:21:40', '2020-12-15 18:21:40', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/favIcon.png', 0, 'attachment', 'image/png', 0),
(209, 2, '2020-12-15 14:21:46', '2020-12-15 18:21:46', 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/cropped-favIcon.png', 'cropped-favIcon.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2020-12-15 14:21:46', '2020-12-15 18:21:46', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/cropped-favIcon.png', 0, 'attachment', 'image/png', 0),
(211, 2, '2020-12-15 14:23:51', '2020-12-15 18:23:51', '', 'logotipo actual', '', 'inherit', 'open', 'closed', '', 'logotipo-actual', '', '', '2020-12-15 14:23:51', '2020-12-15 18:23:51', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/logotipo-actual.png', 0, 'attachment', 'image/png', 0),
(348, 3, '2021-01-19 16:50:31', '2021-01-19 20:50:31', '', 'ca1fe13b-e19a-4838-91d0-c72658b8c0a6', '', 'inherit', 'open', 'closed', '', 'ca1fe13b-e19a-4838-91d0-c72658b8c0a6', '', '', '2021-01-19 16:50:31', '2021-01-19 20:50:31', '', 343, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/01/ca1fe13b-e19a-4838-91d0-c72658b8c0a6.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 2, '2020-12-15 15:31:44', '2020-12-15 19:31:44', '<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSe8tcfV_yCzRvVIvl7B965RkcBiAHZv5juQWfCK3qahhCi2bg/viewform\"><img class=\"aligncenter size-full wp-image-204\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12-web.png\" alt=\"Seminario 28-12 web\" width=\"1080\" height=\"1080\"></a>', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2020-12-15 15:31:44', '2020-12-15 19:31:44', '', 201, 'http://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(214, 2, '2020-12-15 15:33:01', '2020-12-15 19:33:01', '<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSe8tcfV_yCzRvVIvl7B965RkcBiAHZv5juQWfCK3qahhCi2bg/viewform\"><img class=\"aligncenter size-full wp-image-204\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12-web.png\" alt=\"Seminario 28-12 web\" width=\"1080\" height=\"1080\" /></a>', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2020-12-15 15:33:01', '2020-12-15 19:33:01', '', 201, 'http://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(217, 2, '2020-12-15 15:42:44', '2020-12-15 19:42:44', '<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSe8tcfV_yCzRvVIvl7B965RkcBiAHZv5juQWfCK3qahhCi2bg/viewform\"><img class=\"aligncenter size-full wp-image-204\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12-web.png\" alt=\"Seminario 28-12 web\" width=\"1080\" height=\"1080\"></a>', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2020-12-15 15:42:44', '2020-12-15 19:42:44', '', 201, 'http://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(219, 2, '2020-12-15 15:46:36', '2020-12-15 19:46:36', '', 'seminarios', '', 'inherit', 'open', 'closed', '', 'seminarios-2', '', '', '2020-12-15 15:46:36', '2020-12-15 19:46:36', '', 201, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/seminarios.png', 0, 'attachment', 'image/png', 0),
(249, 2, '2020-12-15 17:41:35', '2020-12-15 21:41:35', '', 'Santiago', '', 'inherit', 'open', 'closed', '', '2700px-santiago_de_chile_desde_cerro_san_cristobal', '', '', '2020-12-15 17:43:08', '2020-12-15 21:43:08', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/2700px-Santiago_de_Chile_Desde_Cerro_San_Cristobal.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 2, '2020-12-15 16:56:30', '2020-12-15 20:56:30', '', 'titulados', '', 'inherit', 'open', 'closed', '', 'titulados', '', '', '2020-12-15 17:37:15', '2020-12-15 21:37:15', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/titulados.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 2, '2020-12-15 16:56:38', '2020-12-15 20:56:38', '', 'Adoracion', '', 'inherit', 'open', 'closed', '', 'adoracion', '', '', '2020-12-15 16:56:38', '2020-12-15 20:56:38', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Adoracion.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 2, '2020-12-15 16:56:48', '2020-12-15 20:56:48', '', 'Biblia', '', 'inherit', 'open', 'closed', '', 'biblia', '', '', '2020-12-15 16:56:48', '2020-12-15 20:56:48', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Biblia.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 2, '2020-12-15 16:56:55', '2020-12-15 20:56:55', '', 'estudio 2', '', 'inherit', 'open', 'closed', '', 'estudio-2', '', '', '2020-12-15 17:34:10', '2020-12-15 21:34:10', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/estudio-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 2, '2020-12-15 16:57:05', '2020-12-15 20:57:05', '', 'Estudio', '', 'inherit', 'open', 'closed', '', 'estudio', '', '', '2020-12-15 17:35:03', '2020-12-15 21:35:03', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Estudio.jpg', 0, 'attachment', 'image/jpeg', 0),
(346, 3, '2021-01-18 14:16:50', '2021-01-18 18:16:50', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":337,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/WZHR1RhksGgaUcPJ8\" target=\"_blank\" rel=\"noopener\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-25-01-1024x1024.png\" alt=\"\" class=\"wp-image-337\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Seminarios pasados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {\"categories\":[{\"id\":22,\"count\":1,\"description\":\"\",\"link\":\"https://ibc-cce.cl/wp/category/seminarios/\",\"name\":\"Seminarios\",\"slug\":\"seminarios\",\"taxonomy\":\"category\",\"parent\":0,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories/22\"}],\"collection\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/taxonomies/category\"}],\"wp:post_type\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/posts?categories=22\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}],\"displayPostDate\":true,\"align\":\"center\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-18 14:16:50', '2021-01-18 18:16:50', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(251, 2, '2020-12-15 17:58:30', '2020-12-15 21:58:30', '', 'Matriculate', '', 'inherit', 'open', 'closed', '', 'matriculate', '', '', '2020-12-16 14:35:10', '2020-12-16 18:35:10', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Matriculate.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 2, '2020-12-15 18:08:21', '2020-12-15 22:08:21', '<!-- wp:image {\"align\":\"center\",\"id\":295,\"width\":256,\"height\":256,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/proceso-admision-pinares-2021.png\" alt=\"\" class=\"wp-image-295\" width=\"256\" height=\"256\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>El periodo de matrícula 2021 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"292\"} /-->', 'ADMISIÓN 2021', '', 'publish', 'closed', 'closed', '', 'admision-2021', '', '', '2020-12-16 14:13:41', '2020-12-16 18:13:41', '', 0, 'http://ibc-cce.cl/wp/?page_id=253', 0, 'page', '', 0),
(254, 2, '2020-12-15 18:08:21', '2020-12-15 22:08:21', '', 'ADMISIÓN 2021', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2020-12-15 18:08:21', '2020-12-15 22:08:21', '', 253, 'http://ibc-cce.cl/wp/253-revision-v1/', 0, 'revision', '', 0),
(256, 2, '2020-12-15 18:25:53', '2020-12-15 22:25:53', '<!-- wp:heading -->\n<h2><br>Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Estación Central</strong><br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":270,\"width\":237,\"height\":256,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-rounded\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ping-948x1024.jpg\" alt=\"\" class=\"wp-image-270\" width=\"237\" height=\"256\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'publish', 'closed', 'closed', '', 'sedes', '', '', '2020-12-15 21:49:48', '2020-12-16 01:49:48', '', 0, 'http://ibc-cce.cl/wp/?page_id=256', 0, 'page', '', 0),
(257, 2, '2020-12-15 18:25:53', '2020-12-15 22:25:53', '', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 18:25:53', '2020-12-15 22:25:53', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(258, 2, '2020-12-15 18:26:36', '2020-12-15 22:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '258', '', '', '2021-09-30 12:04:27', '2021-09-30 16:04:27', '', 0, 'http://ibc-cce.cl/wp/?p=258', 3, 'nav_menu_item', '', 0),
(347, 3, '2021-01-19 16:46:21', '2021-01-19 20:46:21', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":337,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/WZHR1RhksGgaUcPJ8\" target=\"_blank\" rel=\"noopener\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-25-01-1024x1024.png\" alt=\"\" class=\"wp-image-337\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Seminarios pasados</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {\"categories\":[{\"id\":22,\"count\":1,\"description\":\"\",\"link\":\"https://ibc-cce.cl/wp/category/seminarios/\",\"name\":\"Seminarios\",\"slug\":\"seminarios\",\"taxonomy\":\"category\",\"parent\":0,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories/22\"}],\"collection\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/taxonomies/category\"}],\"wp:post_type\":[{\"href\":\"https://ibc-cce.cl/wp/wp-json/wp/v2/posts?categories=22\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}],\"displayPostDate\":true,\"displayFeaturedImage\":true,\"featuredImageSizeSlug\":\"medium\",\"align\":\"center\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-19 16:46:21', '2021-01-19 20:46:21', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(345, 3, '2021-01-18 14:04:11', '2021-01-18 18:04:11', '<!-- wp:paragraph -->\n<p>El pasado viernes 08 de Enero &nbsp;Ante una audiencia empapada de emociones y llena de respeto, se llevó a cabo el Seminario “<strong>Amenazas y esperanzas para la iglesia cristiana 202</strong>1”, organizado por el Instituto bíblico del Centro como actividad de cierre del año académico 2020 y desarrollado por nuestro Pastor Elías Montero Piqué.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por la Hna. Angie Millán del departamento de secretaria del IBC, se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Fundes &nbsp;que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar nuestra coordinadora académica Hna. Nicole Chávez lee algunas preguntas de los presentes las cuales fueron respondidas por el expositor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/V90B23FOwZY\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/V90B23FOwZY\n</div></figure>\n<!-- /wp:embed -->', 'Seminario Amenazas y esperanzas para la iglesia cristiana 2021', '', 'inherit', 'closed', 'closed', '', '343-revision-v1', '', '', '2021-01-18 14:04:11', '2021-01-18 18:04:11', '', 343, 'https://ibc-cce.cl/wp/343-revision-v1/', 0, 'revision', '', 0),
(263, 2, '2020-12-15 20:11:37', '2020-12-16 00:11:37', '<!-- wp:paragraph -->\n<p><br><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 20:11:37', '2020-12-16 00:11:37', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(265, 2, '2020-12-15 21:20:27', '2020-12-16 01:20:27', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p><br><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 21:20:27', '2020-12-16 01:20:27', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(267, 2, '2020-12-15 21:24:03', '2020-12-16 01:24:03', '<!-- wp:heading -->\n<h2><br>Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><br><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Estación Central</strong><br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 21:24:03', '2020-12-16 01:24:03', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(272, 2, '2020-12-15 21:43:46', '2020-12-16 01:43:46', '<!-- wp:heading -->\n<h2><br>Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td class=\"has-text-align-left\" data-align=\"left\"></td><td></td></tr><tr><td class=\"has-text-align-left\" data-align=\"left\"><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Estación Central</strong><br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></td><td><img class=\"wp-image-270\" style=\"width: 150px;\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ping.jpg\" alt=\"\"></td></tr></tbody></table></figure>\n<!-- /wp:table --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 21:43:46', '2020-12-16 01:43:46', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(270, 2, '2020-12-15 21:33:50', '2020-12-16 01:33:50', '', 'ping', '', 'inherit', 'open', 'closed', '', 'ping', '', '', '2020-12-15 21:33:50', '2020-12-16 01:33:50', '', 256, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ping.jpg', 0, 'attachment', 'image/jpeg', 0),
(271, 2, '2020-12-15 21:43:29', '2020-12-16 01:43:29', '<!-- wp:heading -->\n<h2><br>Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td></td><td></td></tr><tr><td><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Estación Central</strong><br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></td><td><img class=\"wp-image-270\" style=\"width: 150px;\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ping.jpg\" alt=\"\"></td></tr></tbody></table></figure>\n<!-- /wp:table --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 21:43:29', '2020-12-16 01:43:29', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(273, 2, '2020-12-15 21:44:33', '2020-12-16 01:44:33', '<!-- wp:heading -->\n<h2><br>Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td class=\"has-text-align-left\" data-align=\"left\"></td><td></td></tr><tr><td class=\"has-text-align-left\" data-align=\"left\"><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Estación Central</strong><br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></td><td><img class=\"wp-image-270\" style=\"width: 150px;\" src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ping.jpg\" alt=\"\"></td></tr></tbody></table></figure>\n<!-- /wp:table --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 21:44:33', '2020-12-16 01:44:33', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(278, 2, '2020-12-15 21:58:26', '2020-12-16 01:58:26', '', 'Mision', '', 'inherit', 'open', 'closed', '', 'mision', '', '', '2020-12-15 21:58:26', '2020-12-16 01:58:26', '', 12, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mision.png', 0, 'attachment', 'image/png', 0),
(275, 2, '2020-12-15 21:49:47', '2020-12-16 01:49:47', '<!-- wp:heading -->\n<h2><br>Somos un instituto con una red educativa, que cuenta actualmente con 11 sedes en 9 comunas.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Casa Central</strong>, Teresa Vial 1141, San Miguel<br><strong>Maipú</strong>, General las Heras 2606<br><strong>Parral</strong>, Igualdad esquina San Martín<br><strong>Puente Alto</strong>, Camino Internacional<br><strong>Puente Alto</strong>, Primavera<br><strong>Puente Alto</strong>, Jireh<br><strong>Estación Central</strong><br><strong>Pudahuel</strong><br><strong>Cerro Navia</strong><br><strong>Paine</strong><br><strong>Copiapó</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":270,\"width\":237,\"height\":256,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-rounded\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ping-948x1024.jpg\" alt=\"\" class=\"wp-image-270\" width=\"237\" height=\"256\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sedes', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2020-12-15 21:49:47', '2020-12-16 01:49:47', '', 256, 'http://ibc-cce.cl/wp/256-revision-v1/', 0, 'revision', '', 0),
(279, 2, '2020-12-15 22:00:13', '2020-12-16 02:00:13', '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p>El Instituto Bíblico del Centro (IBC) existe para formar <span style=\"font-weight: 700 !important;\">obreros útiles a la obra de Dios</span>, entregándoles una sólida formación teológica y una clara orientación al servicio cristiano en el Reino de Dios. Cada uno de ellos saldrá más y mejor preparado para servir a Dios <span style=\"font-weight: 700 !important;\">en sus congregaciones según el llamado propio que Dios ha hecho a cada uno</span>.</p>\n<p>El IBC se diferencia de otras instituciones teológicas porque su objetivo es la formación de obreros y no de teólogos. Al mismo tiempo, combina de manera exquisita la transmisión de conocimiento y la unción del Espíritu Santo. Por otro lado, el ambiente que se vive en cada clase es único. Los hermanos se enamoran del clima fraternal, donde nadie discrimina a otro por ser más o menos, pues se sienten acogidos por iguales.</p>\n<p>Nuestros alumnos dicen así: una vez institutano del IBC por siempre institutano del IBC. Es decir, basta ir a la primera clase de Pentateuco para enamorarse de la Palabra de Dios y nunca más abandonar el instituto.</p>\n</div>\n<div class=\"column\">\n<p><strong>Nuestra Misión</strong></p>\n<p>El IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.</p>\n<p>El IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos</p>\n</div>\n</div>\n</div>\n<p> </p>\n<p> </p>\n<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\"><hr />\n<div class=\"page\" title=\"Page 1\">\n<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p> </p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<!-- wp:image {\"id\":278,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mision.png\" alt=\"\" class=\"wp-image-278\" title=\"\"/><figcaption>MISIÓN DEL IBC</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestros Objetivos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1- &nbsp;Formar obreros útiles para las congregaciones locales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2- &nbsp;Desarrollar carácter cristiano en los obreros según patrones bíblicos</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3- &nbsp;Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>El foco del IBC se sustenta en tres pilares:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>a) &nbsp;Conocimiento de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>b) &nbsp;Presencia de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>c) &nbsp;Administración transparente</p>\n<!-- /wp:paragraph -->', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-12-15 22:00:13', '2020-12-16 02:00:13', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(282, 2, '2020-12-15 22:02:28', '2020-12-16 02:02:28', '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p>El Instituto Bíblico del Centro (IBC) existe para formar <span style=\"font-weight: 700 !important;\">obreros útiles a la obra de Dios</span>, entregándoles una sólida formación teológica y una clara orientación al servicio cristiano en el Reino de Dios. Cada uno de ellos saldrá más y mejor preparado para servir a Dios <span style=\"font-weight: 700 !important;\">en sus congregaciones según el llamado propio que Dios ha hecho a cada uno</span>.</p>\n<p>El IBC se diferencia de otras instituciones teológicas porque su objetivo es la formación de obreros y no de teólogos. Al mismo tiempo, combina de manera exquisita la transmisión de conocimiento y la unción del Espíritu Santo. Por otro lado, el ambiente que se vive en cada clase es único. Los hermanos se enamoran del clima fraternal, donde nadie discrimina a otro por ser más o menos, pues se sienten acogidos por iguales.</p>\n<p>Nuestros alumnos dicen así: una vez institutano del IBC por siempre institutano del IBC. Es decir, basta ir a la primera clase de Pentateuco para enamorarse de la Palabra de Dios y nunca más abandonar el instituto.</p>\n</div>\n<div class=\"column\">\n<p><strong>Nuestra Misión</strong></p>\n<p>El IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.</p>\n<p>El IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos.</p>\n</div>\n</div>\n</div>\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Misión del IBC</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":278,\"width\":960,\"height\":508,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mision.png\" alt=\"\" class=\"wp-image-278\" width=\"960\" height=\"508\" title=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestros Objetivos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1- &nbsp;Formar obreros útiles para las congregaciones locales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2- &nbsp;Desarrollar carácter cristiano en los obreros según patrones bíblicos</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3- &nbsp;Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>El foco del IBC se sustenta en tres pilares:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>a) &nbsp;Conocimiento de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>b) &nbsp;Presencia de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>c) &nbsp;Administración transparente</p>\n<!-- /wp:paragraph -->', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-12-15 22:02:28', '2020-12-16 02:02:28', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wpjy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(281, 2, '2020-12-15 22:02:05', '2020-12-16 02:02:05', '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p>El Instituto Bíblico del Centro (IBC) existe para formar <span style=\"font-weight: 700 !important;\">obreros útiles a la obra de Dios</span>, entregándoles una sólida formación teológica y una clara orientación al servicio cristiano en el Reino de Dios. Cada uno de ellos saldrá más y mejor preparado para servir a Dios <span style=\"font-weight: 700 !important;\">en sus congregaciones según el llamado propio que Dios ha hecho a cada uno</span>.</p>\n<p>El IBC se diferencia de otras instituciones teológicas porque su objetivo es la formación de obreros y no de teólogos. Al mismo tiempo, combina de manera exquisita la transmisión de conocimiento y la unción del Espíritu Santo. Por otro lado, el ambiente que se vive en cada clase es único. Los hermanos se enamoran del clima fraternal, donde nadie discrimina a otro por ser más o menos, pues se sienten acogidos por iguales.</p>\n<p>Nuestros alumnos dicen así: una vez institutano del IBC por siempre institutano del IBC. Es decir, basta ir a la primera clase de Pentateuco para enamorarse de la Palabra de Dios y nunca más abandonar el instituto.</p>\n</div>\n<div class=\"column\">\n<p><strong>Nuestra Misión</strong></p>\n<p>El IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.</p>\n<p>El IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos</p>\n</div>\n</div>\n</div>\n<p> </p>\n<p> </p>\n<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\"><hr />\n<div class=\"page\" title=\"Page 1\">\n<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p> </p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Misión del IBC</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":278,\"width\":960,\"height\":508,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mision.png\" alt=\"\" class=\"wp-image-278\" width=\"960\" height=\"508\" title=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestros Objetivos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1- &nbsp;Formar obreros útiles para las congregaciones locales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2- &nbsp;Desarrollar carácter cristiano en los obreros según patrones bíblicos</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3- &nbsp;Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>El foco del IBC se sustenta en tres pilares:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>a) &nbsp;Conocimiento de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>b) &nbsp;Presencia de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>c) &nbsp;Administración transparente</p>\n<!-- /wp:paragraph -->', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-12-15 22:02:05', '2020-12-16 02:02:05', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(295, 2, '2020-12-16 14:12:29', '2020-12-16 18:12:29', '', 'proceso-admision-pinares-2021', '', 'inherit', 'open', 'closed', '', 'proceso-admision-pinares-2021', '', '', '2020-12-16 14:12:29', '2020-12-16 18:12:29', '', 253, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/proceso-admision-pinares-2021.png', 0, 'attachment', 'image/png', 0),
(297, 3, '2020-12-16 14:51:24', '2020-12-16 18:51:24', '{\"id\":\"297\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Nombre\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"small\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"confirmation\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comentario o mensaje\",\"description\":\"\",\"required\":\"1\",\"size\":\"small\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"contacto\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Enviar\",\"submit_text_processing\":\"Enviando...\",\"submit_class\":\"\",\"antispam\":\"1\",\"recaptcha\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"Nueva Consulta\",\"sender_name\":\"Instituto B\\u00edblico del Centro\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p><strong>Gracias!<\\/strong> por contactarnos, nos comunicaremos con usted a la brevedad.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}', 'contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2020-12-16 15:13:47', '2020-12-16 19:13:47', '', 0, 'http://ibc-cce.cl/wp/?post_type=wpforms&#038;p=297', 0, 'wpforms', '', 0),
(284, 2, '2020-12-15 22:14:50', '2020-12-16 02:14:50', '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p>El Instituto Bíblico del Centro (IBC) existe para formar <span style=\"font-weight: 700 !important;\">obreros útiles a la obra de Dios</span>, entregándoles una sólida formación teológica y una clara orientación al servicio cristiano en el Reino de Dios. Cada uno de ellos saldrá más y mejor preparado para servir a Dios <span style=\"font-weight: 700 !important;\">en sus congregaciones según el llamado propio que Dios ha hecho a cada uno</span>.</p>\n<p>El IBC se diferencia de otras instituciones teológicas porque su objetivo es la formación de obreros y no de teólogos. Al mismo tiempo, combina de manera exquisita la transmisión de conocimiento y la unción del Espíritu Santo. Por otro lado, el ambiente que se vive en cada clase es único. Los hermanos se enamoran del clima fraternal, donde nadie discrimina a otro por ser más o menos, pues se sienten acogidos por iguales.</p>\n<p>Nuestros alumnos dicen así: una vez institutano del IBC por siempre institutano del IBC. Es decir, basta ir a la primera clase de Pentateuco para enamorarse de la Palabra de Dios y nunca más abandonar el instituto.</p>\n</div>\n<div class=\"column\">\n<p><strong>Nuestra Misión</strong></p>\n<p>El IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.</p>\n<p>El IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos.</p>\n</div>\n</div>\n</div>\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Misión del IBC</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":278,\"width\":960,\"height\":508,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mision.png\" alt=\"\" class=\"wp-image-278\" width=\"960\" height=\"508\" title=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestros Objetivos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1- &nbsp;Formar obreros útiles para las congregaciones locales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2- &nbsp;Desarrollar carácter cristiano en los obreros según patrones bíblicos</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3- &nbsp;Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>El foco del IBC se sustenta en tres pilares:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>a) &nbsp;Conocimiento de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>b)  Presencia de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>c)  Administración transparente</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Nuestro Equipo</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Equipo Docente</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Pastora, Margarita Piqué Faúndez (Director)</li><li>Pastor, Elías Montero Piqué (Representante Legal)</li><li>Pastor, Gerardo Arancibia Ovalle</li><li>Pastor, Leonel Suárez</li><li>Dcno. Andrés Ureta Órdenes</li><li>Dcno. Italo Morales Ruiz</li><li>Dcno. Jaime Toledo Rupallán</li><li>Dcno. Lorenzo Villalobos</li><li>Hna. Fabiola Ceppi Monares</li><li>Hna. Nicole Chávez Muñoz</li><li>Hno. Gabriel Zamora Muñoz</li><li>Hna. Viviana Daza Manque</li><li>Hno. Samuel Campos Cid</li><li>Hna. Laura Muñoz Muñoz</li><li>Hno. Felipe Montero Fuentes</li><li>Hna. Ariela Rios Cisterna</li><li>Hno. Esteban Pizarro Pinto</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Equipo administrativo</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Pastora, Marcela Fuentes Fuentes (directora de casino)</li><li>Jonathan Miller (Secretaría)</li><li>Angie Millan (Secretaría)</li><li>Ana Luz Díaz Cartes (Finanzas)</li><li>Esteban Pizarro Pinto (Campus Virtual)</li><li>María Soledad González (Casino)</li><li>Ercilda Fuentes Burgos (Casino)</li><li>Adelina Fuentes Burgos (Casino)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-12-15 22:14:50', '2020-12-16 02:14:50', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(286, 2, '2020-12-15 22:16:12', '2020-12-16 02:16:12', '', '07032020-DSC_8932-HDR', '', 'inherit', 'open', 'closed', '', '07032020-dsc_8932-hdr', '', '', '2020-12-15 22:16:12', '2020-12-16 02:16:12', '', 12, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/07032020-DSC_8932-HDR.jpg', 0, 'attachment', 'image/jpeg', 0),
(287, 2, '2020-12-15 22:17:25', '2020-12-16 02:17:25', '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p>El Instituto Bíblico del Centro (IBC) existe para formar <span style=\"font-weight: 700 !important;\">obreros útiles a la obra de Dios</span>, entregándoles una sólida formación teológica y una clara orientación al servicio cristiano en el Reino de Dios. Cada uno de ellos saldrá más y mejor preparado para servir a Dios <span style=\"font-weight: 700 !important;\">en sus congregaciones según el llamado propio que Dios ha hecho a cada uno</span>.</p>\n<p>El IBC se diferencia de otras instituciones teológicas porque su objetivo es la formación de obreros y no de teólogos. Al mismo tiempo, combina de manera exquisita la transmisión de conocimiento y la unción del Espíritu Santo. Por otro lado, el ambiente que se vive en cada clase es único. Los hermanos se enamoran del clima fraternal, donde nadie discrimina a otro por ser más o menos, pues se sienten acogidos por iguales.</p>\n<p>Nuestros alumnos dicen así: una vez institutano del IBC por siempre institutano del IBC. Es decir, basta ir a la primera clase de Pentateuco para enamorarse de la Palabra de Dios y nunca más abandonar el instituto.</p>\n</div>\n<div class=\"column\">\n<p><strong>Nuestra Misión</strong></p>\n<p>El IBC existe para potenciar el desarrollo de los creyentes mediante el estudio sistemático de las Sagradas Escrituras, para que cada uno de ellos se transforme en “obreros” útiles para sus congregaciones, y siervos leales con sus ministros.</p>\n<p>El IBC nació como una necesidad local de la Iglesia Centro Cristiano de Evangelización en el año 2004, atendiendo a la urgente necesidad de formar obreros para los distintos trabajos eclesiásticos.</p>\n</div>\n</div>\n</div>\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Misión del IBC</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":278,\"width\":960,\"height\":508,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Mision.png\" alt=\"\" class=\"wp-image-278\" width=\"960\" height=\"508\" title=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestros Objetivos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1- &nbsp;Formar obreros útiles para las congregaciones locales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2- &nbsp;Desarrollar carácter cristiano en los obreros según patrones bíblicos</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3- &nbsp;Fomentar el amor por el estudio y la enseñanza de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><strong>El foco del IBC se sustenta en tres pilares:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>a) &nbsp;Conocimiento de la Palabra de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>b)  Presencia de Dios</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>c)  Administración transparente</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Nuestro Equipo</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":286,\"width\":1024,\"height\":311,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/07032020-DSC_8932-HDR-1024x311.jpg\" alt=\"\" class=\"wp-image-286\" width=\"1024\" height=\"311\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Equipo Docente</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Pastora, Margarita Piqué Faúndez (Director)</li><li>Pastor, Elías Montero Piqué (Representante Legal)</li><li>Pastor, Gerardo Arancibia Ovalle</li><li>Pastor, Leonel Suárez</li><li>Dcno. Andrés Ureta Órdenes</li><li>Dcno. Italo Morales Ruiz</li><li>Dcno. Jaime Toledo Rupallán</li><li>Dcno. Lorenzo Villalobos</li><li>Hna. Fabiola Ceppi Monares</li><li>Hna. Nicole Chávez Muñoz</li><li>Hno. Gabriel Zamora Muñoz</li><li>Hna. Viviana Daza Manque</li><li>Hno. Samuel Campos Cid</li><li>Hna. Laura Muñoz Muñoz</li><li>Hno. Felipe Montero Fuentes</li><li>Hna. Ariela Rios Cisterna</li><li>Hno. Esteban Pizarro Pinto</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Equipo administrativo</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Pastora, Marcela Fuentes Fuentes (directora de casino)</li><li>Jonathan Miller (Secretaría)</li><li>Angie Millan (Secretaría)</li><li>Ana Luz Díaz Cartes (Finanzas)</li><li>Esteban Pizarro Pinto (Campus Virtual)</li><li>María Soledad González (Casino)</li><li>Ercilda Fuentes Burgos (Casino)</li><li>Adelina Fuentes Burgos (Casino)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Misión y Objetivos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-12-15 22:17:25', '2020-12-16 02:17:25', '', 12, 'http://ibc-cce.cl/wp/12-revision-v1/', 0, 'revision', '', 0),
(296, 2, '2020-12-16 14:13:37', '2020-12-16 18:13:37', '<!-- wp:image {\"align\":\"center\",\"id\":295,\"width\":256,\"height\":256,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/proceso-admision-pinares-2021.png\" alt=\"\" class=\"wp-image-295\" width=\"256\" height=\"256\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>El periodo de matrícula 2021 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"292\"} /-->', 'ADMISIÓN 2021', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2020-12-16 14:13:37', '2020-12-16 18:13:37', '', 253, 'http://ibc-cce.cl/wp/253-revision-v1/', 0, 'revision', '', 0),
(299, 3, '2020-12-16 15:01:44', '2020-12-16 19:01:44', '', 'IBCfinal-WSP', '', 'inherit', 'open', 'closed', '', 'ibcfinal-wsp', '', '', '2020-12-16 15:01:44', '2020-12-16 19:01:44', '', 76, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/IBCfinal-WSP.mp4', 0, 'attachment', 'video/mp4', 0),
(300, 3, '2020-12-16 15:02:23', '2020-12-16 19:02:23', '[video width=\"1280\" height=\"720\" mp4=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/IBCfinal-WSP.mp4\"][/video]', 'Inicio', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-12-16 15:02:23', '2020-12-16 19:02:23', '', 76, 'http://ibc-cce.cl/wp/76-revision-v1/', 0, 'revision', '', 0),
(306, 3, '2020-12-16 18:01:57', '2020-12-16 22:01:57', '<!-- wp:wpforms/form-selector {\"formId\":\"297\"} /-->\n\n<!-- wp:heading -->\n<h2>Mas Información en +569 3 204 04 51 o ibc@i-cce.cl</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gutenberg-wpgmza/block /-->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-12-16 18:01:57', '2020-12-16 22:01:57', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(305, 3, '2020-12-16 18:01:36', '2020-12-16 22:01:36', '<!-- wp:paragraph -->\n<p>Mas Información en +569 3 204 04 51 o ibc@i-cce.cl</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"297\"} /-->\n\n<!-- wp:heading -->\n<h2>Mas Información en +569 3 204 04 51 o ibc@i-cce.cl</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gutenberg-wpgmza/block /-->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-12-16 18:01:36', '2020-12-16 22:01:36', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(304, 3, '2020-12-16 15:25:49', '2020-12-16 19:25:49', '<!-- wp:paragraph -->\n<p>Mas Información en +569 3 204 04 51 o ibc@i-cce.cl</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"297\"} /-->\n\n<!-- wp:gutenberg-wpgmza/block /-->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-12-16 15:25:49', '2020-12-16 19:25:49', '', 58, 'http://ibc-cce.cl/wp/58-revision-v1/', 0, 'revision', '', 0),
(327, 3, '2021-01-03 13:00:58', '2021-01-03 17:00:58', '', 'Seminario-28-12', '', 'inherit', 'open', 'closed', '', 'seminario-28-12-2', '', '', '2021-01-03 13:00:58', '2021-01-03 17:00:58', '', 201, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-28-12.png', 0, 'attachment', 'image/png', 0),
(320, 3, '2020-12-26 22:13:08', '2020-12-27 02:13:08', '', 'Seminario-28-12', '', 'inherit', 'open', 'closed', '', 'seminario-28-12', '', '', '2020-12-26 22:13:08', '2020-12-27 02:13:08', '', 201, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Seminario-28-12.png', 0, 'attachment', 'image/png', 0),
(344, 3, '2021-01-18 13:53:19', '2021-01-18 17:53:19', '<!-- wp:paragraph -->\n<p>El pasado viernes 08 de Enero  Ante una audiencia empapada de emociones y llena de respeto, se llevó a cabo el Seminario “<strong>Amenazas y esperanzas para la iglesia cristiana 202</strong>1”, organizado por el Instituto bíblico del Centro como actividad de cierre del año académico 2020 y desarrollado por nuestro Pastor Elías Montero Piqué.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por la Hna. Angie Millán del departamento de secretaria del IBC, se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Fundes &nbsp;que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar nuestra coordinadora académica Hna. Nicole Chávez lee algunas preguntas de los presentes las cuales fueron respondidas por el expositor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/V90B23FOwZY\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/V90B23FOwZY\n</div></figure>\n<!-- /wp:embed -->', 'Seminario Amenazas y esperanzas para la iglesia cristiana 2021', '', 'inherit', 'closed', 'closed', '', '343-revision-v1', '', '', '2021-01-18 13:53:19', '2021-01-18 17:53:19', '', 343, 'https://ibc-cce.cl/wp/343-revision-v1/', 0, 'revision', '', 0),
(343, 3, '2021-01-18 13:53:19', '2021-01-18 17:53:19', '<!-- wp:paragraph -->\n<p>El pasado viernes 08 de Enero &nbsp;Ante una audiencia empapada de emociones y llena de respeto, se llevó a cabo el Seminario “<strong>Amenazas y esperanzas para la iglesia cristiana 202</strong>1”, organizado por el Instituto bíblico del Centro como actividad de cierre del año académico 2020 y desarrollado por nuestro Pastor Elías Montero Piqué.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por la Hna. Angie Millán del departamento de secretaria del IBC, se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Fundes &nbsp;que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar nuestra coordinadora académica Hna. Nicole Chávez lee algunas preguntas de los presentes las cuales fueron respondidas por el expositor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/V90B23FOwZY\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/V90B23FOwZY\n</div></figure>\n<!-- /wp:embed -->', 'Seminario Amenazas y esperanzas para la iglesia cristiana 2021', '', 'publish', 'closed', 'closed', '', 'seminario-amenazas-y-esperanzas-para-la-iglesia-cristiana-2021', '', '', '2021-01-19 16:51:04', '2021-01-19 20:51:04', '', 0, 'http://ibc-cce.cl/wp/?p=343', 0, 'post', '', 0),
(318, 3, '2020-12-16 20:24:21', '2020-12-17 00:24:21', '<!-- wp:paragraph -->\n<p>Ya terminado el Año Académico 2020 no podemos más que agradecer la excelente disposición que han tenido todos nuestros docentes. Sin duda que el contexto de contingencia sanitaria nos ha llevado a modificar la forma de trabajo, en especial la manera de impartir las clases, por lo que agradecemos el esfuerzo y dedicación que ustedes, nuestros docentes, han tenido para adaptarse a estos nuevos tiempos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En el IBC nos adaptamos a la nueva modalidad online dictando todos nuestro cursos vía steaming con la pasión y excelencia que entrega nuestro gran equipo de docentes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":241,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ON-LINE-1-1024x682.jpg\" alt=\"\" class=\"wp-image-241\"/></figure>\n<!-- /wp:image -->', 'WebClass', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2020-12-16 20:24:21', '2020-12-17 00:24:21', '', 176, 'http://ibc-cce.cl/wp/176-revision-v1/', 0, 'revision', '', 0),
(317, 3, '2020-12-16 20:23:25', '2020-12-17 00:23:25', '<!-- wp:paragraph -->\n<p>YA terminando el Año Académico 2020 no podemos más que agradecer la excelente disposición que han tenido todos nuestros docentes. Sin duda que el contexto de contingencia sanitaria nos ha llevado a modificar la forma de trabajo, en especial la manera de impartir las clases, por lo que agradecemos el esfuerzo y dedicación que ustedes, nuestros docentes, han tenido para adaptarse a estos nuevos tiempos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En el IBC nos adaptamos a la nueva modalidad online dictando todos nuestro cursos vía steaming con la pasión y excelencia que entrega nuestro gran equipo de docentes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":241,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/ON-LINE-1-1024x682.jpg\" alt=\"\" class=\"wp-image-241\"/></figure>\n<!-- /wp:image -->', 'WebClass', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2020-12-16 20:23:25', '2020-12-17 00:23:25', '', 176, 'http://ibc-cce.cl/wp/176-revision-v1/', 0, 'revision', '', 0),
(314, 3, '2020-12-16 19:05:08', '2020-12-16 23:05:08', '', 'Malla', '', 'inherit', 'open', 'closed', '', 'malla', '', '', '2020-12-16 19:05:08', '2020-12-16 23:05:08', '', 22, 'http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Malla.png', 0, 'attachment', 'image/png', 0),
(315, 3, '2020-12-16 19:08:59', '2020-12-16 23:08:59', '<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Por qué los cristianos deben asistir a un instituto bíblico?</span></span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos que la Biblia es la Palabra de Dios, y en ella Dios se ha revelado o dado a conocer. </span><span style=\"vertical-align: inherit;\">Entonces, dado que Él quiere ser conocido es deber de cada creyente conocer a Dios revelado, Salvador y Señor de nuestra vida.</span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">¿Qué beneficios obtienen un cristiano al asistir a un Instituto Bíblico?</span></span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El creyente que se prepara teológicamente, es un obrero mejor preparado. </span><span style=\"vertical-align: inherit;\">Y usando las palabras del pastor Pablo Hoff, \"hacha afilada corta más leña\", lo que significa que un creyente será más útil en el reino de Dios y su propia iglesia en la medida que esté mejor capacitado.</span></span><span style=\"font-weight: 700 !important;\">&nbsp; &nbsp;&nbsp;</span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-weight: 700 !important;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">&nbsp;¿Quiénes pueden asistir al IBC?</span></span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">El IBC está abierto a todos los cristianos, sin tan solo los miembros de la iglesia CCE, sino también todos los creyentes de diferentes iglesias, siempre y cuando cuenten con la autorización de sus pastores mediante una carta que así lo exprese.</span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Malla Curricular</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":314,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2020/12/Malla-1024x578.png\" alt=\"\" class=\"wp-image-314\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Días fijos y horarios de funcionamiento</span></span></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lunes 19:45 - 22:00 horas</span></span></li>\n<li>Miércoles 19:45 - 22:00 horas</li>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viernes 19.45 - 22:00 horas</span></span></li>\n</ul>\n<p>&nbsp;</p>\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Arancel 2021</span></span></p>\n<hr>\n<div class=\"page\" title=\"Página 2\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<ul>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Matrícula, $ 20.000 (se cancela una vez al año)</span></span></li>\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mensualidad, $ 20.000 (durante 8 meses)</span></span></li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Admisión', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-12-16 19:08:59', '2020-12-16 23:08:59', '', 22, 'http://ibc-cce.cl/wp/22-revision-v1/', 0, 'revision', '', 0),
(335, 3, '2021-01-08 22:13:56', '2021-01-09 02:13:56', '', 'DatosIBC', '', 'inherit', 'open', 'closed', '', 'datosibc', '', '', '2021-01-08 22:13:56', '2021-01-09 02:13:56', '', 201, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/01/DatosIBC.jpg', 0, 'attachment', 'image/jpeg', 0),
(332, 3, '2021-01-04 08:39:40', '2021-01-04 12:39:40', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":327,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/JG6yEnNGzjMpFVNU6\" target=\"_blank\" rel=\"noopener\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-28-12-1024x1024.png\" alt=\"\" class=\"wp-image-327\"/></a></figure>\n<!-- /wp:image -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-04 08:39:40', '2021-01-04 12:39:40', '', 201, 'https://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(337, 3, '2021-01-08 22:14:34', '2021-01-09 02:14:34', '', 'Seminario 25-01', '', 'inherit', 'open', 'closed', '', 'seminario-25-01', '', '', '2021-01-08 22:14:34', '2021-01-09 02:14:34', '', 201, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-25-01.png', 0, 'attachment', 'image/png', 0),
(340, 3, '2021-01-08 22:22:28', '2021-01-09 02:22:28', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":337,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/WZHR1RhksGgaUcPJ8\" target=\"_blank\" rel=\"noopener\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-25-01-1024x1024.png\" alt=\"\" class=\"wp-image-337\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":327,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-28-12-1024x1024.png\" alt=\"\" class=\"wp-image-327\"/></figure>\n<!-- /wp:image -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-08 22:22:28', '2021-01-09 02:22:28', '', 201, 'http://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(338, 3, '2021-01-08 22:19:05', '2021-01-09 02:19:05', '<!-- wp:image {\"id\":320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"blob:https://ibc-cce.cl/d640548c-5554-4ab8-baf7-158bea7204d4\" alt=\"\" class=\"wp-image-320\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":337,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/WZHR1RhksGgaUcPJ8\" target=\"_blank\" rel=\"noopener\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-25-01-1024x1024.png\" alt=\"\" class=\"wp-image-337\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":327,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://forms.gle/JG6yEnNGzjMpFVNU6\" target=\"_blank\" rel=\"noopener\"><img src=\"http://ibc-cce.cl/wp/wp-content/uploads/2021/01/Seminario-28-12-1024x1024.png\" alt=\"\" class=\"wp-image-327\"/></a></figure>\n<!-- /wp:image -->', 'Seminarios', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2021-01-08 22:19:05', '2021-01-09 02:19:05', '', 201, 'http://ibc-cce.cl/wp/201-revision-v1/', 0, 'revision', '', 0),
(354, 3, '2021-09-30 12:02:27', '2021-09-30 16:02:27', '<!-- wp:image {\"align\":\"center\",\"id\":356,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"https://ibc-cce.cl/wp/wp-content/uploads/2021/09/admision-2022-textoimg_2_azul1.png\" alt=\"\" class=\"wp-image-356\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>El periodo de matrícula 2022 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"292\"} /-->', 'Admisión 2022', '', 'publish', 'closed', 'closed', '', 'admision-2022', '', '', '2021-09-30 12:02:34', '2021-09-30 16:02:34', '', 0, 'http://ibc-cce.cl/wp/?page_id=354', 0, 'page', '', 0),
(355, 3, '2021-09-30 11:34:02', '2021-09-30 15:34:02', '<!-- wp:paragraph -->\n<p>El periodo de matrícula 2021 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"292\"} /-->', 'Admisión 2022', '', 'inherit', 'closed', 'closed', '', '354-revision-v1', '', '', '2021-09-30 11:34:02', '2021-09-30 15:34:02', '', 354, 'https://ibc-cce.cl/wp/354-revision-v1/', 0, 'revision', '', 0),
(356, 3, '2021-09-30 12:01:19', '2021-09-30 16:01:19', '', 'admision-2022-textoimg_2_azul1', '', 'inherit', 'open', 'closed', '', 'admision-2022-textoimg_2_azul1', '', '', '2021-09-30 12:01:19', '2021-09-30 16:01:19', '', 354, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/09/admision-2022-textoimg_2_azul1.png', 0, 'attachment', 'image/png', 0),
(357, 3, '2021-09-30 12:02:27', '2021-09-30 16:02:27', '<!-- wp:image {\"align\":\"center\",\"id\":356,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"https://ibc-cce.cl/wp/wp-content/uploads/2021/09/admision-2022-textoimg_2_azul1.png\" alt=\"\" class=\"wp-image-356\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>El periodo de matrícula 2022 ya esta abierto, para reservar su cupo llene el siguiente formulario.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"292\"} /-->', 'Admisión 2022', '', 'inherit', 'closed', 'closed', '', '354-revision-v1', '', '', '2021-09-30 12:02:27', '2021-09-30 16:02:27', '', 354, 'https://ibc-cce.cl/wp/354-revision-v1/', 0, 'revision', '', 0),
(362, 3, '2021-11-08 10:21:55', '2021-11-08 14:21:55', '<!-- wp:paragraph -->\n<p>El pasado viernes 25 de Enero  Ante una audiencia empapada de emociones y llena de respeto, se llevó a cabo el Seminario “<strong>Seminario Feminismo / Cristianismo: ¿Dónde estamos?</strong>”, organizado por el Instituto bíblico del Centro como actividad de  de inicio año académico 2021 y desarrollado por nuestro Pastor Elías Montero Piqué.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por la Hna. Angie Millán del departamento de secretaria del IBC, se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Faundes  que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar nuestra coordinadora académica Hna. Nicole Chávez lee algunas preguntas de los presentes las cuales fueron respondidas por el expositor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/HwdelXHxs9g\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/HwdelXHxs9g\n</div></figure>\n<!-- /wp:embed -->', 'Seminario Feminismo / Cristianismo: ¿Dónde estamos?', '', 'inherit', 'closed', 'closed', '', '361-revision-v1', '', '', '2021-11-08 10:21:55', '2021-11-08 14:21:55', '', 361, 'https://ibc-cce.cl/wp/361-revision-v1/', 0, 'revision', '', 0),
(363, 3, '2021-11-08 10:23:13', '2021-11-08 14:23:13', '<!-- wp:paragraph -->\n<p>El pasado viernes 25 de Enero  Ante una audiencia empapada de emociones y llena de respeto, se llevó a cabo el Seminario “<strong>Seminario Feminismo / Cristianismo: ¿Dónde estamos?</strong>”, organizado por el Instituto bíblico del Centro como actividad de  de inicio año académico 2021 y desarrollado por nuestro Pastor Elías Montero Piqué.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por la Hna. Angie Millán del departamento de secretaria del IBC, se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Faundes  que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar los profesores Viviana Daza y Samuel Campos leen algunas preguntas de los presentes las cuales fueron respondidas por el expositor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/HwdelXHxs9g\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/HwdelXHxs9g\n</div></figure>\n<!-- /wp:embed -->', 'Seminario Feminismo / Cristianismo: ¿Dónde estamos?', '', 'inherit', 'closed', 'closed', '', '361-revision-v1', '', '', '2021-11-08 10:23:13', '2021-11-08 14:23:13', '', 361, 'https://ibc-cce.cl/wp/361-revision-v1/', 0, 'revision', '', 0),
(365, 3, '2021-11-08 18:03:18', '2021-11-08 22:03:18', '<!-- wp:paragraph -->\n<p>El pasado viernes 25 de Enero &nbsp;Ante una audiencia empapada de emociones y llena de respeto, se llevó a cabo el Seminario “<strong>Seminario Feminismo / Cristianismo: ¿Dónde estamos?</strong>”, organizado por el Instituto bíblico del Centro como actividad de  de inicio año académico 2021 y desarrollado por nuestro Pastor Elías Montero Piqué.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por la Hna. Angie Millán del departamento de secretaria del IBC, se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Faundes &nbsp;que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar los profesores Viviana Daza y Samuel Campos leen algunas preguntas de los presentes las cuales fueron respondidas por el expositor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/HwdelXHxs9g\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/HwdelXHxs9g\n</div></figure>\n<!-- /wp:embed -->', 'Seminario Feminismo / Cristianismo: ¿Dónde estamos?', '', 'inherit', 'closed', 'closed', '', '361-revision-v1', '', '', '2021-11-08 18:03:18', '2021-11-08 22:03:18', '', 361, 'https://ibc-cce.cl/wp/361-revision-v1/', 0, 'revision', '', 0),
(368, 3, '2021-11-09 18:41:02', '2021-11-09 22:41:02', '', 'Seminario 06-11', '', 'inherit', 'open', 'closed', '', 'seminario-06-11', '', '', '2021-11-09 18:41:02', '2021-11-09 22:41:02', '', 367, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/11/Seminario-06-11.png', 0, 'attachment', 'image/png', 0),
(369, 3, '2021-11-09 18:48:10', '2021-11-09 22:48:10', '<!-- wp:paragraph -->\n<p>El pasado sábado 06 de Noviembre  Ante una audiencia que supero las 100 personas , se llevó a cabo el Seminario “<strong>Secularización y postmodernidad, ¿Cómo afecta a la iglesia?</strong>”, organizado por el Instituto bíblico del Centro como actividad del año académico 2021 y desarrollado por nuestro Pastor Elías Montero Piqué y el Pastor Juan Vidal.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durante la actividad dirigida por nuestra coordinadora académica, la Hna. Nicole Chavez , se dirigió a la audiencia nuestra directora, la Pastora Margarita Pique Faundes  que inició con el saludo a los presentes, se contó con la presencia de muchos estudiantes y pastores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Al finalizar la Hmna. Angie Millán invita a nuestros expositores a contestar algunas preguntas de los presentes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A continuación el registro del evento:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/0NKssWhnHxQ\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/0NKssWhnHxQ\n</div></figure>\n<!-- /wp:embed -->', 'Seminario y conversatorio: Secularización y postmodernidad, ¿Cómo afecta al cristianismo?', '', 'inherit', 'closed', 'closed', '', '367-revision-v1', '', '', '2021-11-09 18:48:10', '2021-11-09 22:48:10', '', 367, 'https://ibc-cce.cl/wp/367-revision-v1/', 0, 'revision', '', 0),
(371, 3, '2021-12-06 22:09:36', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-06 22:09:36', '0000-00-00 00:00:00', '', 0, 'http://ibc-cce.cl/wp/?p=371', 0, 'post', '', 0),
(372, 3, '2021-12-07 18:36:01', '2021-12-07 22:36:01', '', 'logotipo IBC AZUL CHICO', '', 'inherit', 'open', 'closed', '', 'logotipo-ibc-azul-chico', '', '', '2021-12-07 18:36:01', '2021-12-07 22:36:01', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/12/logotipo-IBC-AZUL-CHICO.png', 0, 'attachment', 'image/png', 0),
(373, 3, '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 0, 'http://ibc-cce.cl/wp/um_form/default-registration/', 0, 'um_form', '', 0),
(374, 3, '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 0, 'http://ibc-cce.cl/wp/um_form/default-login/', 0, 'um_form', '', 0),
(375, 3, '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 0, 'http://ibc-cce.cl/wp/um_form/default-profile/', 0, 'um_form', '', 0),
(376, 3, '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2021-12-09 16:56:11', '2021-12-09 20:56:11', '', 0, 'http://ibc-cce.cl/wp/um_directory/members/', 0, 'um_directory', '', 0),
(377, 3, '2021-12-09 17:05:40', '2021-12-09 21:05:40', '[ultimatemember form_id=\"375\"]', 'User', '', 'publish', 'closed', 'closed', '', 'user', '', '', '2021-12-09 17:05:40', '2021-12-09 21:05:40', '', 0, 'http://ibc-cce.cl/wp/user/', 0, 'page', '', 0),
(378, 3, '2021-12-09 17:05:41', '2021-12-09 21:05:41', '[ultimatemember form_id=\"374\"]', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2021-12-09 17:05:41', '2021-12-09 21:05:41', '', 0, 'http://ibc-cce.cl/wp/login/', 0, 'page', '', 0),
(379, 3, '2021-12-09 17:05:41', '2021-12-09 21:05:41', '[ultimatemember form_id=\"373\"]', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2021-12-09 17:05:41', '2021-12-09 21:05:41', '', 0, 'http://ibc-cce.cl/wp/register/', 0, 'page', '', 0),
(380, 3, '2021-12-09 17:05:42', '2021-12-09 21:05:42', '[ultimatemember form_id=\"376\"]', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2021-12-09 17:05:42', '2021-12-09 21:05:42', '', 0, 'http://ibc-cce.cl/wp/members/', 0, 'page', '', 0),
(381, 3, '2021-12-09 17:05:42', '2021-12-09 21:05:42', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2021-12-09 17:05:42', '2021-12-09 21:05:42', '', 0, 'http://ibc-cce.cl/wp/logout/', 0, 'page', '', 0),
(382, 3, '2021-12-09 17:05:42', '2021-12-09 21:05:42', '[ultimatemember_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2021-12-09 17:05:42', '2021-12-09 21:05:42', '', 0, 'http://ibc-cce.cl/wp/account/', 0, 'page', '', 0),
(383, 3, '2021-12-09 17:05:43', '2021-12-09 21:05:43', '[ultimatemember_password]', 'Password Reset', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2021-12-09 17:05:43', '2021-12-09 21:05:43', '', 0, 'http://ibc-cce.cl/wp/password-reset/', 0, 'page', '', 0),
(384, 3, '2021-12-09 17:10:00', '2021-12-09 21:10:00', '[ultimatemember form_id=\"375\"]', 'User', '', 'inherit', 'closed', 'closed', '', '377-autosave-v1', '', '', '2021-12-09 17:10:00', '2021-12-09 21:10:00', '', 377, 'https://ibc-cce.cl/wp/377-autosave-v1/', 0, 'revision', '', 0),
(386, 3, '2021-12-10 21:27:09', '2021-12-11 01:27:09', '', 'CSUH9800', '', 'inherit', 'open', 'closed', '', 'csuh9800', '', '', '2021-12-10 21:27:09', '2021-12-11 01:27:09', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/12/CSUH9800.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wpjy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(387, 3, '2021-12-10 22:00:51', '2021-12-11 02:00:51', '', 'avatar-personaje-empresario-aislado_24877-60111[1]', '', 'inherit', 'open', 'closed', '', 'avatar-personaje-empresario-aislado_24877-601111', '', '', '2021-12-10 22:00:51', '2021-12-11 02:00:51', '', 0, 'http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_prflxtrflds_fields_meta`
--

DROP TABLE IF EXISTS `wpjy_prflxtrflds_fields_meta`;
CREATE TABLE `wpjy_prflxtrflds_fields_meta` (
  `meta_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `show_in` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_prflxtrflds_fields_meta`
--

TRUNCATE TABLE `wpjy_prflxtrflds_fields_meta`;
--
-- Volcado de datos para la tabla `wpjy_prflxtrflds_fields_meta`
--

INSERT INTO `wpjy_prflxtrflds_fields_meta` (`meta_id`, `field_id`, `show_in`, `value`) VALUES
(5, 2, 'register_form', '1'),
(8, 3, 'register_form', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_termmeta`
--

DROP TABLE IF EXISTS `wpjy_termmeta`;
CREATE TABLE `wpjy_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_termmeta`
--

TRUNCATE TABLE `wpjy_termmeta`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_terms`
--

DROP TABLE IF EXISTS `wpjy_terms`;
CREATE TABLE `wpjy_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_terms`
--

TRUNCATE TABLE `wpjy_terms`;
--
-- Volcado de datos para la tabla `wpjy_terms`
--

INSERT INTO `wpjy_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Home', 'home', 0),
(2, 'post-format-image', 'post-format-image', 0),
(3, 'Matriculas 2017', 'matricula2017', 0),
(4, 'Misión y Objetivo', 'misionyobjetivos', 0),
(5, 'Nuestro Equipo', 'nuestroequipo', 0),
(6, 'Malla Academica', 'malla', 0),
(7, 'Aranceles y Horarios', 'arancelhorario', 0),
(8, 'Reglamento Alumno', 'reglamento', 0),
(9, 'matricula', 'matricula', 0),
(10, '2017', '2017', 0),
(11, 'académico', 'academico', 0),
(12, 'universidad', 'universidad', 0),
(13, 'alianza', 'alianza', 0),
(14, 'c', 'c', 0),
(15, 'morris', 'morris', 0),
(16, 'william', 'william', 0),
(17, 'university', 'university', 0),
(18, 'iba', 'iba', 0),
(19, 'post-format-aside', 'post-format-aside', 0),
(20, 'post-format-video', 'post-format-video', 0),
(21, 'MainMenu', 'mainmenu', 0),
(22, 'Seminarios', 'seminarios', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_term_relationships`
--

DROP TABLE IF EXISTS `wpjy_term_relationships`;
CREATE TABLE `wpjy_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_term_relationships`
--

TRUNCATE TABLE `wpjy_term_relationships`;
--
-- Volcado de datos para la tabla `wpjy_term_relationships`
--

INSERT INTO `wpjy_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(136, 1, 0),
(157, 1, 0),
(226, 21, 0),
(228, 21, 0),
(234, 21, 0),
(258, 21, 0),
(358, 21, 0),
(343, 22, 0),
(361, 22, 0),
(367, 22, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_term_taxonomy`
--

DROP TABLE IF EXISTS `wpjy_term_taxonomy`;
CREATE TABLE `wpjy_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_term_taxonomy`
--

TRUNCATE TABLE `wpjy_term_taxonomy`;
--
-- Volcado de datos para la tabla `wpjy_term_taxonomy`
--

INSERT INTO `wpjy_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'post_format', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'post_tag', '', 0, 0),
(10, 10, 'post_tag', '', 0, 0),
(11, 11, 'post_tag', '', 0, 0),
(12, 12, 'post_tag', '', 0, 0),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'post_tag', '', 0, 0),
(15, 15, 'post_tag', '', 0, 0),
(16, 16, 'post_tag', '', 0, 0),
(17, 17, 'post_tag', '', 0, 0),
(18, 18, 'post_tag', '', 0, 0),
(20, 20, 'post_format', '', 0, 0),
(19, 19, 'post_format', '', 0, 0),
(21, 21, 'nav_menu', '', 0, 5),
(22, 22, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_um_metadata`
--

DROP TABLE IF EXISTS `wpjy_um_metadata`;
CREATE TABLE `wpjy_um_metadata` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `um_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `um_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_um_metadata`
--

TRUNCATE TABLE `wpjy_um_metadata`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_usermeta`
--

DROP TABLE IF EXISTS `wpjy_usermeta`;
CREATE TABLE `wpjy_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_usermeta`
--

TRUNCATE TABLE `wpjy_usermeta`;
--
-- Volcado de datos para la tabla `wpjy_usermeta`
--

INSERT INTO `wpjy_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'epizarro@system'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wpjy_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wpjy_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(23, 2, 'nickname', 'nchavez@system'),
(15, 1, 'wpjy_dashboard_quick_press_last_post_id', '180'),
(16, 1, 'wpjy_user-settings', 'libraryContent=browse&post_dfw=off&editor=html&hidetb=1&mfold=o'),
(17, 1, 'wpjy_user-settings-time', '1554424311'),
(20, 1, 'session_tokens', 'a:1:{s:64:\"e0cc2b6f1c10afc04b1f86863c89ee5e69b40174cde8880b98b4363de565eedd\";a:4:{s:10:\"expiration\";i:1566571193;s:2:\"ip\";s:14:\"201.238.201.34\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1566398393;}}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(24, 2, 'first_name', 'Nicole'),
(25, 2, 'last_name', 'Chavez'),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(32, 2, 'wpjy_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(33, 2, 'wpjy_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', 'nimble-welcome-notice-12-2018'),
(35, 2, 'default_password_nag', ''),
(49, 2, 'session_tokens', 'a:3:{s:64:\"5d6af95b2e118abb1465f35eba316aadc11d246f4f2eef8dfb52b9f96a526c92\";a:4:{s:10:\"expiration\";i:1609125459;s:2:\"ip\";s:13:\"181.160.200.3\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1607915859;}s:64:\"678e0450d067525fe36937cbfa75d4b2c97eaafc25910216c55d76d08fad5415\";a:4:{s:10:\"expiration\";i:1608298152;s:2:\"ip\";s:12:\"181.43.95.69\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1608125352;}s:64:\"27d0196748e12b3b97b09ce140ec0225f5d6e8b2f885abf40974329f4fcf5139\";a:4:{s:10:\"expiration\";i:1608298157;s:2:\"ip\";s:12:\"181.43.95.69\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1608125357;}}'),
(37, 2, 'wpjy_dashboard_quick_press_last_post_id', '186'),
(38, 1, 'default_password_nag', ''),
(45, 2, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:61:\"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:71:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:14:\"theme-settings\";}'),
(39, 1, 'closedpostboxes_page', 'a:1:{i:0;s:9:\"submitdiv\";}'),
(40, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(41, 2, 'wpjy_user-settings', 'libraryContent=browse&editor=tinymce&imgsize=full&urlbutton=custom&align=center'),
(42, 2, 'wpjy_user-settings-time', '1607953162'),
(43, 2, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(44, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(46, 2, 'screen_layout_post', '2'),
(47, 2, 'closedpostboxes_post', 'a:1:{i:0;s:14:\"theme-settings\";}'),
(48, 2, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(50, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"181.43.95.0\";}'),
(51, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(52, 2, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(53, 2, 'nav_menu_recently_edited', '21'),
(54, 2, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:0:\"\";s:4:\"side\";s:33:\"slider_sectionid,layout_sectionid\";s:8:\"advanced\";s:0:\"\";}'),
(55, 2, 'closedpostboxes_page', 'a:0:{}'),
(56, 2, 'metaboxhidden_page', 'a:0:{}'),
(57, 2, 'wpjy_media_library_mode', 'list'),
(59, 2, 'jetpack_tracks_wpcom_id', '198418694'),
(84, 3, 'session_tokens', 'a:2:{s:64:\"0e00d67bde0e809a48b804faa686f56ce58580a18da640c4bc8f12c9d556f0db\";a:4:{s:10:\"expiration\";i:1639234149;s:2:\"ip\";s:15:\"200.111.224.235\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639061349;}s:64:\"865300f8f42920a70e8afaa91a060b6d66ea435be27dab66d22f794e8a9eb763\";a:4:{s:10:\"expiration\";i:1639276084;s:2:\"ip\";s:15:\"200.111.224.235\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639103284;}}'),
(60, 3, 'nickname', 'jmiller@system'),
(61, 3, 'first_name', 'Jonathan'),
(62, 3, 'last_name', 'Miller'),
(63, 3, 'description', ''),
(64, 3, 'rich_editing', 'true'),
(65, 3, 'syntax_highlighting', 'true'),
(66, 3, 'comment_shortcuts', 'false'),
(67, 3, 'admin_color', 'fresh'),
(68, 3, 'use_ssl', '0'),
(69, 3, 'show_admin_bar_front', 'true'),
(70, 3, 'locale', 'es_CL'),
(71, 3, 'wpjy_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(72, 3, 'wpjy_user_level', '10'),
(73, 3, 'dismissed_wp_pointers', 'nimble-welcome-notice-12-2018'),
(75, 3, 'wpjy_user-settings', 'libraryContent=browse'),
(76, 3, 'wpjy_user-settings-time', '1611089324'),
(77, 3, 'jetpack_tracks_anon_id', 'jetpack:+CbBlWIYGyDA05oZQmHC6IlB'),
(78, 3, 'wpjy_dashboard_quick_press_last_post_id', '371'),
(79, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"200.111.224.0\";}'),
(95, 1, 'account_status', 'approved'),
(96, 1, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(81, 3, 'nav_menu_recently_edited', '21'),
(82, 3, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(83, 3, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(86, 3, 'wpforms_entries_default_screen_timespan', '30'),
(90, 3, 'managetoplevel_page_profile-extra-fieldsuserdatacolumnshidden', 'a:5:{i:0;s:4:\"role\";i:1;s:9:\"disp_name\";i:2;s:5:\"email\";i:3;s:5:\"posts\";i:4;s:1:\"1\";}'),
(91, 3, 'managetoplevel_page_profile-extra-fieldsuserdataallcolumns', 'a:7:{s:7:\"user_id\";s:7:\"User ID\";s:4:\"name\";s:8:\"Username\";s:4:\"role\";s:9:\"User role\";s:9:\"disp_name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";s:5:\"posts\";s:5:\"Posts\";i:1;s:3:\"Rut\";}'),
(92, 3, 'rut', '136791486'),
(93, 3, 'ingreso', '2021'),
(94, 3, 'vigencia', '2'),
(97, 3, 'account_status', 'approved'),
(98, 3, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(99, 2, 'account_status', 'approved'),
(100, 2, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(101, 3, 'um_user_profile_url_slug_user_login', 'jmiller%40system'),
(102, 2, 'um_user_profile_url_slug_user_login', 'nchavez%40system'),
(103, 1, 'um_user_profile_url_slug_user_login', 'epizarro%40system'),
(104, 4, 'nickname', 'mmorales'),
(105, 4, 'first_name', 'Miles'),
(106, 4, 'last_name', 'Morales'),
(107, 4, 'description', ''),
(108, 4, 'rich_editing', 'true'),
(109, 4, 'syntax_highlighting', 'true'),
(110, 4, 'comment_shortcuts', 'false'),
(111, 4, 'admin_color', 'fresh'),
(112, 4, 'use_ssl', '0'),
(113, 4, 'show_admin_bar_front', 'true'),
(114, 4, 'locale', ''),
(115, 4, 'wpjy_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(116, 4, 'wpjy_user_level', '0'),
(117, 4, 'synced_gravatar_hashed_id', '640da4f94d083acee76b145dc3380028'),
(118, 4, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:1;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(119, 4, 'submitted', 'a:9:{s:7:\"form_id\";s:3:\"373\";s:10:\"um_request\";s:0:\"\";s:8:\"_wpnonce\";s:10:\"8042cb51b5\";s:16:\"_wp_http_referer\";s:13:\"/wp/register/\";s:10:\"user_login\";s:8:\"mmorales\";s:10:\"first_name\";s:5:\"Miles\";s:9:\"last_name\";s:7:\"Morales\";s:10:\"user_email\";s:21:\"jmiller@latitud90.com\";s:9:\"timestamp\";i:1639071131;}'),
(120, 4, 'form_id', '373'),
(121, 4, 'um_request', ''),
(122, 4, '_wpnonce', '8042cb51b5'),
(123, 4, '_wp_http_referer', '/wp/register/'),
(125, 4, 'timestamp', '1639071131'),
(126, 4, 'um_user_profile_url_slug_user_login', 'mmorales'),
(129, 4, 'account_status', 'approved'),
(128, 4, 'full_name', 'miles morales'),
(131, 4, '_um_last_login', '1639071134'),
(132, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"200.111.224.0\";}'),
(133, 4, 'rut', '123456789'),
(134, 4, 'ingreso', '2019'),
(135, 4, 'vigencia', '1'),
(136, 4, 'jetpack_tracks_anon_id', 'jetpack:OZiap/sneoGUcp1D7BWEzv3m'),
(144, 3, 'simple_local_avatar_rating', 'G'),
(143, 3, 'simple_local_avatar', 'a:9:{s:8:\"media_id\";i:387;s:4:\"full\";s:100:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111.jpg\";i:192;s:108:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111-192x192.jpg\";i:96;s:106:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111-96x96.jpg\";i:128;s:108:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111-128x128.jpg\";i:64;s:106:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111-64x64.jpg\";i:52;s:106:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111-52x52.jpg\";i:26;s:106:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111-26x26.jpg\";i:32;s:106:\"http://ibc-cce.cl/wp/wp-content/uploads/2021/12/avatar-personaje-empresario-aislado_24877-601111-32x32.jpg\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_users`
--

DROP TABLE IF EXISTS `wpjy_users`;
CREATE TABLE `wpjy_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `wpjy_users`
--

TRUNCATE TABLE `wpjy_users`;
--
-- Volcado de datos para la tabla `wpjy_users`
--

INSERT INTO `wpjy_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'epizarro@system', '$P$B/hXdzV0mfuvyLXUMGsuuU.gFd07TI/', 'epizarro@system', 'admin@i-cce.cl', '', '2016-12-06 12:33:27', '', 0, 'epizarro@system'),
(2, 'nchavez@system', '$P$BGP.DDWiWaVnUytA9HAfqr4ERNDXaI/', 'nchavezsystem', 'nchavez@i-cce.cl', '', '2017-03-24 15:20:02', '', 0, 'Nicole Chavez'),
(3, 'jmiller@system', '$P$Bti7gpXjKETMtuyeOH0XtaGhA.XyJA/', 'jmillersystem', 'jota_miller@hotmail.com', 'http://jmiller@system', '2020-12-16 13:32:12', '', 0, 'Jonathan Miller'),
(4, 'mmorales', '$P$BORcIJ5x68MvnIIsMW9rx/hreHkSK4.', 'mmorales', 'jmiller@latitud90.com', 'http://jmiller@system', '2021-12-09 21:32:11', '', 0, 'Miles Morales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpforms_entries`
--

DROP TABLE IF EXISTS `wpjy_wpforms_entries`;
CREATE TABLE `wpjy_wpforms_entries` (
  `entry_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `viewed` tinyint(1) DEFAULT 0,
  `starred` tinyint(1) DEFAULT 0,
  `fields` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `ip_address` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_agent` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_uuid` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpforms_entries`
--

TRUNCATE TABLE `wpjy_wpforms_entries`;
--
-- Volcado de datos para la tabla `wpjy_wpforms_entries`
--

INSERT INTO `wpjy_wpforms_entries` (`entry_id`, `form_id`, `post_id`, `user_id`, `status`, `type`, `viewed`, `starred`, `fields`, `meta`, `date`, `date_modified`, `ip_address`, `user_agent`, `user_uuid`) VALUES
(3, 292, 0, 0, '', '', 0, 0, '{\"5\":{\"name\":\"Informaci\\u00f3n del alumno\",\"value\":\"Jonathan Miller\",\"id\":5,\"type\":\"name\",\"first\":\"Jonathan\",\"middle\":\"\",\"last\":\"Miller\"},\"6\":{\"name\":\"RUT\",\"value\":\"13.679.148-6\",\"id\":6,\"type\":\"text\"},\"19\":{\"name\":\"Fecha de Nacimiento\",\"value\":\"\",\"id\":19,\"type\":\"date-time\",\"date\":\"\",\"time\":\"\",\"unix\":\"\"},\"21\":{\"name\":\"Telefono de contacto\",\"value\":\"+56971358052\",\"id\":21,\"type\":\"phone\"},\"14\":{\"name\":\"Regi\\u00f3n\",\"value\":\"XV de Arica y Parinacota\",\"value_raw\":\"XV de Arica y Parinacota\",\"id\":14,\"type\":\"select\"},\"15\":{\"name\":\"Comuna\",\"value\":\"ALHUE\",\"value_raw\":\"ALHUE\",\"id\":15,\"type\":\"select\"},\"9\":{\"name\":\"Email\",\"value\":\"jmiller@latitud90.com\",\"id\":9,\"type\":\"email\"},\"10\":{\"name\":\"Direcci\\u00f3n\",\"value\":\"Lo fontecillas111\",\"id\":10,\"type\":\"text\"},\"12\":{\"name\":\"Congregaci\\u00f3n\",\"value\":\"CCE\",\"id\":12,\"type\":\"text\"},\"17\":{\"name\":\"Curso al que se matricula\",\"value\":\"1er a\\u00f1o. Pentateuco\",\"value_raw\":\"1er a\\u00f1o. Pentateuco\",\"id\":17,\"type\":\"select\"},\"13\":{\"name\":\"Sede\",\"value\":\"Casa Central\",\"value_raw\":\"Casa Central\",\"id\":13,\"type\":\"select\"},\"20\":{\"name\":\"Fecha en que se pag\\u00f3 la matricula\",\"value\":\"3\\/2\\/2020\",\"id\":20,\"type\":\"date-time\",\"date\":\"3\\/2\\/2020\",\"time\":\"\",\"unix\":1583107200},\"22\":{\"name\":\"Fotograf\\u00eda\",\"value\":\"http:\\/\\/ibc-cce.cl\\/wp\\/wp-content\\/uploads\\/wpforms\\/292-8e1a36dae2e8313e5e67f504a36bb87f\\/wallpapersden.com_red-crewmate-among-us_2560x1440-6c3cf930e3808cc2f9988d2834a40386.jpg\",\"value_raw\":[{\"name\":\"wallpapersden.com_red-crewmate-among-us_2560x1440.jpg\",\"value\":\"http:\\/\\/ibc-cce.cl\\/wp\\/wp-content\\/uploads\\/wpforms\\/292-8e1a36dae2e8313e5e67f504a36bb87f\\/wallpapersden.com_red-crewmate-among-us_2560x1440-6c3cf930e3808cc2f9988d2834a40386.jpg\",\"file\":\"wallpapersden.com_red-crewmate-among-us_2560x1440-6c3cf930e3808cc2f9988d2834a40386.jpg\",\"file_original\":\"wallpapersden.com_red-crewmate-among-us_2560x1440.jpg\",\"file_user_name\":\"wallpapersden.com_red-crewmate-among-us_2560x1440.jpg\",\"ext\":\"jpg\",\"attachment_id\":0,\"id\":22,\"type\":\"image\\/jpeg\"}],\"id\":22,\"type\":\"file-upload\",\"style\":\"modern\",\"visible\":false}}', '', '2021-12-10 03:03:38', '2021-12-10 03:03:38', '200.111.224.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '07cd20e3-39a8-468a-841f-281cbd932dd0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpforms_entry_fields`
--

DROP TABLE IF EXISTS `wpjy_wpforms_entry_fields`;
CREATE TABLE `wpjy_wpforms_entry_fields` (
  `id` bigint(20) NOT NULL,
  `entry_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpforms_entry_fields`
--

TRUNCATE TABLE `wpjy_wpforms_entry_fields`;
--
-- Volcado de datos para la tabla `wpjy_wpforms_entry_fields`
--

INSERT INTO `wpjy_wpforms_entry_fields` (`id`, `entry_id`, `form_id`, `field_id`, `value`, `date`) VALUES
(24, 3, 292, 5, 'Jonathan Miller', '2021-12-10 03:03:38'),
(25, 3, 292, 6, '13.679.148-6', '2021-12-10 03:03:38'),
(26, 3, 292, 21, '+56971358052', '2021-12-10 03:03:38'),
(27, 3, 292, 14, 'XV de Arica y Parinacota', '2021-12-10 03:03:38'),
(28, 3, 292, 15, 'ALHUE', '2021-12-10 03:03:38'),
(29, 3, 292, 9, 'jmiller@latitud90.com', '2021-12-10 03:03:38'),
(30, 3, 292, 10, 'Lo fontecillas111', '2021-12-10 03:03:38'),
(31, 3, 292, 12, 'CCE', '2021-12-10 03:03:38'),
(32, 3, 292, 17, '1er año. Pentateuco', '2021-12-10 03:03:38'),
(33, 3, 292, 13, 'Casa Central', '2021-12-10 03:03:38'),
(34, 3, 292, 20, '3/2/2020', '2021-12-10 03:03:38'),
(35, 3, 292, 22, 'http://ibc-cce.cl/wp/wp-content/uploads/wpforms/292-8e1a36dae2e8313e5e67f504a36bb87f/wallpapersden.com_red-crewmate-among-us_2560x1440-6c3cf930e3808cc2f9988d2834a40386.jpg', '2021-12-10 03:03:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpforms_entry_meta`
--

DROP TABLE IF EXISTS `wpjy_wpforms_entry_meta`;
CREATE TABLE `wpjy_wpforms_entry_meta` (
  `id` bigint(20) NOT NULL,
  `entry_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpforms_entry_meta`
--

TRUNCATE TABLE `wpjy_wpforms_entry_meta`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wpjy_wpforms_tasks_meta`;
CREATE TABLE `wpjy_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpforms_tasks_meta`
--

TRUNCATE TABLE `wpjy_wpforms_tasks_meta`;
--
-- Volcado de datos para la tabla `wpjy_wpforms_tasks_meta`
--

INSERT INTO `wpjy_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2020-12-16 14:06:09'),
(2, 'wpforms_admin_notifications_update', 'W10=', '2020-12-16 14:23:34'),
(3, 'wpforms_builder_help_cache_update', 'W10=', '2020-12-16 16:55:28'),
(5, 'wpforms_admin_notifications_update', 'W10=', '2020-12-17 19:04:38'),
(6, 'wpforms_admin_notifications_update', 'W10=', '2020-12-17 19:04:51'),
(8, 'wpforms_admin_notifications_update', 'W10=', '2020-12-21 13:40:49'),
(9, 'wpforms_admin_notifications_update', 'W10=', '2020-12-24 12:44:38'),
(10, 'wpforms_admin_notifications_update', 'W10=', '2020-12-27 02:06:21'),
(11, 'wpforms_admin_notifications_update', 'W10=', '2020-12-30 14:17:43'),
(12, 'wpforms_admin_notifications_update', 'W10=', '2021-01-03 16:58:04'),
(14, 'wpforms_admin_notifications_update', 'W10=', '2021-01-09 02:04:13'),
(15, 'wpforms_admin_notifications_update', 'W10=', '2021-01-12 21:24:38'),
(16, 'wpforms_admin_notifications_update', 'W10=', '2021-01-14 14:33:06'),
(17, 'wpforms_admin_notifications_update', 'W10=', '2021-01-18 16:50:04'),
(18, 'wpforms_admin_notifications_update', 'W10=', '2021-01-18 16:50:53'),
(19, 'wpforms_admin_notifications_update', 'W10=', '2021-01-19 20:13:24'),
(20, 'wpforms_admin_notifications_update', 'W10=', '2021-01-20 21:40:36'),
(23, 'wpforms_admin_notifications_update', 'W10=', '2021-03-08 18:32:15'),
(26, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-03-18 22:59:50'),
(27, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-03-27 17:07:15'),
(28, 'wpforms_admin_notifications_update', 'W10=', '2021-03-27 18:22:02'),
(29, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-04-26 10:28:55'),
(30, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-04-26 11:50:44'),
(31, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-05-13 03:48:54'),
(32, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-05-19 01:37:26'),
(33, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-05-20 08:03:00'),
(34, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-05-30 20:59:12'),
(35, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-06-07 06:34:51'),
(36, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-06-07 17:25:43'),
(37, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-06-11 19:09:29'),
(38, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-06-13 16:53:54'),
(39, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-06-14 23:58:04'),
(40, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-06-16 15:59:00'),
(41, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-06-19 16:24:32'),
(44, 'wpforms_admin_notifications_update', 'W10=', '2021-09-30 02:18:45'),
(45, 'wpforms_admin_addons_cache_update', 'W10=', '2021-09-30 02:28:24'),
(46, 'wpforms_admin_builder_templates_cache_update', 'W10=', '2021-09-30 02:28:24'),
(47, 'wpforms_builder_help_cache_update', 'W10=', '2021-09-30 13:39:21'),
(52, 'wpforms_admin_notifications_update', 'W10=', '2021-11-02 00:47:38'),
(53, 'wpforms_admin_notifications_update', 'W10=', '2021-11-03 22:08:02'),
(54, 'wpforms_admin_notifications_update', 'W10=', '2021-11-08 13:05:26'),
(56, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2021-11-09 14:31:34'),
(57, 'wpforms_admin_addons_cache_update', 'W10=', '2021-11-09 14:31:49'),
(58, 'wpforms_admin_builder_templates_cache_update', 'W10=', '2021-11-09 14:31:49'),
(59, 'wpforms_admin_notifications_update', 'W10=', '2021-11-09 14:34:28'),
(63, 'wpforms_admin_notifications_update', 'W10=', '2021-11-10 19:07:53'),
(64, 'wpforms_admin_notifications_update', 'W10=', '2021-11-11 20:24:38'),
(65, 'wpforms_admin_notifications_update', 'W10=', '2021-11-16 02:06:27'),
(66, 'wpforms_admin_notifications_update', 'W10=', '2021-12-07 02:09:34'),
(67, 'wpforms_builder_help_cache_update', 'W10=', '2021-12-07 05:06:41'),
(68, 'wpforms_admin_notifications_update', 'W10=', '2021-12-08 02:38:39'),
(69, 'wpforms_admin_notifications_update', 'W10=', '2021-12-08 02:39:05'),
(70, 'wpforms_admin_notifications_update', 'W10=', '2021-12-09 14:57:13'),
(73, 'wpforms_admin_notifications_update', 'W10=', '2021-12-10 20:08:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpgmza`
--

DROP TABLE IF EXISTS `wpjy_wpgmza`;
CREATE TABLE `wpjy_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pic` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(2083) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lng` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `anim` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infoopen` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `approved` tinyint(1) DEFAULT 1,
  `retina` tinyint(1) DEFAULT 0,
  `type` tinyint(1) DEFAULT 0,
  `did` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sticky` tinyint(1) DEFAULT 0,
  `other_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpgmza`
--

TRUNCATE TABLE `wpjy_wpgmza`;
--
-- Volcado de datos para la tabla `wpjy_wpgmza`
--

INSERT INTO `wpjy_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `sticky`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', 0, '', 0x0000000001010000004a60730e9e63424098608967bfda5dc0),
(2, 1, 'Teresa Vial 1141, San Miguel, Chile', '', '', '', '', '-33.493448', '-70.652898', '0', '', '0', '', 1, 0, 0, '', 0, '', 0x000000000101000000d363004d29bf40c058a8da13c9a951c0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpgmza_circles`
--

DROP TABLE IF EXISTS `wpjy_wpgmza_circles`;
CREATE TABLE `wpjy_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpgmza_circles`
--

TRUNCATE TABLE `wpjy_wpgmza_circles`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpgmza_maps`
--

DROP TABLE IF EXISTS `wpjy_wpgmza_maps`;
CREATE TABLE `wpjy_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lat` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lng` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_location` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `other_settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpgmza_maps`
--

TRUNCATE TABLE `wpjy_wpgmza_maps`;
--
-- Volcado de datos para la tabla `wpjy_wpgmza_maps`
--

INSERT INTO `wpjy_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Casa Central', '100', '400', '-33.493868', '-70.651396', '-33.49386842214428,-70.65139576295165', 16, '0', 1, 2, 1, 0, '', 0, '', 0, 0, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:14:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";i:10;s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:0;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;s:17:\"wpgmza_auto_night\";i:0;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wpjy_wpgmza_polygon`;
CREATE TABLE `wpjy_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `innerpolydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lineopacity` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohfillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohlinecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohopacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpgmza_polygon`
--

TRUNCATE TABLE `wpjy_wpgmza_polygon`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wpjy_wpgmza_polylines`;
CREATE TABLE `wpjy_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linethickness` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpgmza_polylines`
--

TRUNCATE TABLE `wpjy_wpgmza_polylines`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpgmza_rectangles`
--

DROP TABLE IF EXISTS `wpjy_wpgmza_rectangles`;
CREATE TABLE `wpjy_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpgmza_rectangles`
--

TRUNCATE TABLE `wpjy_wpgmza_rectangles`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpmailsmtp_debug_events`
--

DROP TABLE IF EXISTS `wpjy_wpmailsmtp_debug_events`;
CREATE TABLE `wpjy_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `initiator` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpmailsmtp_debug_events`
--

TRUNCATE TABLE `wpjy_wpmailsmtp_debug_events`;
--
-- Volcado de datos para la tabla `wpjy_wpmailsmtp_debug_events`
--

INSERT INTO `wpjy_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 05:30:42'),
(2, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 05:38:57'),
(3, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 05:41:24'),
(4, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 05:43:03'),
(5, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/SetupWizard.php\",\"line\":1075}', 0, '2021-09-30 05:57:34'),
(6, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 05:57:53'),
(7, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 06:09:38'),
(8, 'Mailer: Other SMTP\nSMTP Error: Could not authenticate.', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 06:12:56'),
(9, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 06:16:12'),
(10, 'Mailer: Other SMTP\nSMTP Error: Could not connect to SMTP host.', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 06:19:32'),
(11, 'Mailer: Other SMTP\nSMTP Error: Could not authenticate.', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 06:21:21'),
(12, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 06:22:24'),
(13, 'Mailer: Other SMTP\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting', '{\"file\":\"\\/home\\/ibcccecl\\/public_html\\/wp\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2021-09-30 06:25:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wpjy_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `wpjy_wpmailsmtp_tasks_meta`;
CREATE TABLE `wpjy_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncar tablas antes de insertar `wpjy_wpmailsmtp_tasks_meta`
--

TRUNCATE TABLE `wpjy_wpmailsmtp_tasks_meta`;
--
-- Volcado de datos para la tabla `wpjy_wpmailsmtp_tasks_meta`
--

INSERT INTO `wpjy_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-12-16 16:19:51'),
(2, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-12-17 19:04:38'),
(3, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-12-17 19:04:51'),
(4, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-12-21 13:40:49'),
(5, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-12-24 12:44:38'),
(6, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-12-27 02:06:21'),
(7, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-12-30 14:47:16'),
(8, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-09 02:04:12'),
(9, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-12 21:24:38'),
(10, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-12 21:25:17'),
(11, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-14 14:33:06'),
(12, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-14 14:33:15'),
(13, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-18 16:50:04'),
(14, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-19 20:13:24'),
(15, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-01-20 21:40:36'),
(16, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-03-08 18:32:15'),
(17, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-03-27 18:22:02'),
(18, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-09-30 02:21:56'),
(19, 'wp_mail_smtp_summary_report_email', 'W10=', '2021-09-30 02:56:03'),
(20, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-02 00:47:38'),
(21, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-03 22:08:01'),
(22, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-08 13:05:26'),
(23, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-09 14:34:29'),
(24, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-10 19:07:53'),
(25, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-11 20:24:38'),
(26, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-16 02:06:27'),
(27, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-12-07 02:09:34'),
(28, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-12-08 02:38:39'),
(29, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-12-08 02:39:05'),
(30, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-12-09 14:57:13'),
(31, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-12-10 20:08:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wpjy_actionscheduler_actions`
--
ALTER TABLE `wpjy_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indices de la tabla `wpjy_actionscheduler_claims`
--
ALTER TABLE `wpjy_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wpjy_actionscheduler_groups`
--
ALTER TABLE `wpjy_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wpjy_actionscheduler_logs`
--
ALTER TABLE `wpjy_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wpjy_commentmeta`
--
ALTER TABLE `wpjy_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wpjy_comments`
--
ALTER TABLE `wpjy_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wpjy_huge_it_reslider_sliders`
--
ALTER TABLE `wpjy_huge_it_reslider_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_huge_it_reslider_slides`
--
ALTER TABLE `wpjy_huge_it_reslider_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_links`
--
ALTER TABLE `wpjy_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wpjy_loginizer_logs`
--
ALTER TABLE `wpjy_loginizer_logs`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indices de la tabla `wpjy_options`
--
ALTER TABLE `wpjy_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wpjy_popularpostsdata`
--
ALTER TABLE `wpjy_popularpostsdata`
  ADD PRIMARY KEY (`postid`);

--
-- Indices de la tabla `wpjy_popularpostssummary`
--
ALTER TABLE `wpjy_popularpostssummary`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `postid` (`postid`),
  ADD KEY `view_date` (`view_date`),
  ADD KEY `view_datetime` (`view_datetime`);

--
-- Indices de la tabla `wpjy_postmeta`
--
ALTER TABLE `wpjy_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wpjy_posts`
--
ALTER TABLE `wpjy_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wpjy_prflxtrflds_fields_meta`
--
ALTER TABLE `wpjy_prflxtrflds_fields_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD UNIQUE KEY `prflxtrflds_unique_pair` (`field_id`,`show_in`);

--
-- Indices de la tabla `wpjy_termmeta`
--
ALTER TABLE `wpjy_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wpjy_terms`
--
ALTER TABLE `wpjy_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wpjy_term_relationships`
--
ALTER TABLE `wpjy_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wpjy_term_taxonomy`
--
ALTER TABLE `wpjy_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wpjy_um_metadata`
--
ALTER TABLE `wpjy_um_metadata`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id_indx` (`user_id`),
  ADD KEY `meta_key_indx` (`um_key`),
  ADD KEY `meta_value_indx` (`um_value`(191));

--
-- Indices de la tabla `wpjy_usermeta`
--
ALTER TABLE `wpjy_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wpjy_users`
--
ALTER TABLE `wpjy_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wpjy_wpforms_entries`
--
ALTER TABLE `wpjy_wpforms_entries`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indices de la tabla `wpjy_wpforms_entry_fields`
--
ALTER TABLE `wpjy_wpforms_entry_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indices de la tabla `wpjy_wpforms_entry_meta`
--
ALTER TABLE `wpjy_wpforms_entry_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`);

--
-- Indices de la tabla `wpjy_wpforms_tasks_meta`
--
ALTER TABLE `wpjy_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpgmza`
--
ALTER TABLE `wpjy_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpgmza_circles`
--
ALTER TABLE `wpjy_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpgmza_maps`
--
ALTER TABLE `wpjy_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpgmza_polygon`
--
ALTER TABLE `wpjy_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpgmza_polylines`
--
ALTER TABLE `wpjy_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpgmza_rectangles`
--
ALTER TABLE `wpjy_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpmailsmtp_debug_events`
--
ALTER TABLE `wpjy_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wpjy_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wpjy_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wpjy_actionscheduler_actions`
--
ALTER TABLE `wpjy_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT de la tabla `wpjy_actionscheduler_claims`
--
ALTER TABLE `wpjy_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12040;

--
-- AUTO_INCREMENT de la tabla `wpjy_actionscheduler_groups`
--
ALTER TABLE `wpjy_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wpjy_actionscheduler_logs`
--
ALTER TABLE `wpjy_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1484;

--
-- AUTO_INCREMENT de la tabla `wpjy_commentmeta`
--
ALTER TABLE `wpjy_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wpjy_comments`
--
ALTER TABLE `wpjy_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wpjy_huge_it_reslider_sliders`
--
ALTER TABLE `wpjy_huge_it_reslider_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wpjy_huge_it_reslider_slides`
--
ALTER TABLE `wpjy_huge_it_reslider_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `wpjy_links`
--
ALTER TABLE `wpjy_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wpjy_options`
--
ALTER TABLE `wpjy_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71964;

--
-- AUTO_INCREMENT de la tabla `wpjy_popularpostssummary`
--
ALTER TABLE `wpjy_popularpostssummary`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1212;

--
-- AUTO_INCREMENT de la tabla `wpjy_postmeta`
--
ALTER TABLE `wpjy_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT de la tabla `wpjy_posts`
--
ALTER TABLE `wpjy_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT de la tabla `wpjy_prflxtrflds_fields_meta`
--
ALTER TABLE `wpjy_prflxtrflds_fields_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `wpjy_termmeta`
--
ALTER TABLE `wpjy_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wpjy_terms`
--
ALTER TABLE `wpjy_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `wpjy_term_taxonomy`
--
ALTER TABLE `wpjy_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `wpjy_um_metadata`
--
ALTER TABLE `wpjy_um_metadata`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wpjy_usermeta`
--
ALTER TABLE `wpjy_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT de la tabla `wpjy_users`
--
ALTER TABLE `wpjy_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpforms_entries`
--
ALTER TABLE `wpjy_wpforms_entries`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpforms_entry_fields`
--
ALTER TABLE `wpjy_wpforms_entry_fields`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpforms_entry_meta`
--
ALTER TABLE `wpjy_wpforms_entry_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpforms_tasks_meta`
--
ALTER TABLE `wpjy_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpgmza`
--
ALTER TABLE `wpjy_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpgmza_circles`
--
ALTER TABLE `wpjy_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpgmza_maps`
--
ALTER TABLE `wpjy_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpgmza_polygon`
--
ALTER TABLE `wpjy_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpgmza_polylines`
--
ALTER TABLE `wpjy_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpgmza_rectangles`
--
ALTER TABLE `wpjy_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpmailsmtp_debug_events`
--
ALTER TABLE `wpjy_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `wpjy_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wpjy_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
