-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 20 2012 г., 12:20
-- Версия сервера: 5.5.28
-- Версия PHP: 5.4.6-1ubuntu1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `geekhab`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_assets`
--

CREATE TABLE IF NOT EXISTS `ww2lu_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `ww2lu_assets`
--

INSERT INTO `ww2lu_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 77, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 30, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 31, 32, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 33, 34, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 35, 36, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 37, 38, 1, 'com_login', 'com_login', '{}'),
(13, 1, 39, 40, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 41, 42, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 43, 44, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 45, 46, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 47, 48, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 49, 50, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 51, 54, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 55, 56, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 57, 58, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 59, 60, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 61, 62, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 63, 66, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 67, 70, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 71, 72, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 29, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 52, 53, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 68, 69, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 64, 65, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 73, 74, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 75, 76, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 27, 19, 20, 3, 'com_content.article.1', 'про geekhab', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(36, 27, 21, 22, 3, 'com_content.article.2', 'головна', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 23, 24, 3, 'com_content.article.3', 'команда', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 27, 25, 26, 3, 'com_content.article.4', 'Зв’язок', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 27, 27, 28, 3, 'com_content.article.5', 'Зв’язокк', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_associations`
--

CREATE TABLE IF NOT EXISTS `ww2lu_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_banners`
--

CREATE TABLE IF NOT EXISTS `ww2lu_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_banner_clients`
--

CREATE TABLE IF NOT EXISTS `ww2lu_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `ww2lu_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_categories`
--

CREATE TABLE IF NOT EXISTS `ww2lu_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `ww2lu_categories`
--

INSERT INTO `ww2lu_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_contact_details`
--

CREATE TABLE IF NOT EXISTS `ww2lu_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_content`
--

CREATE TABLE IF NOT EXISTS `ww2lu_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `ww2lu_content`
--

INSERT INTO `ww2lu_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 35, 'про geekhab', 'pro-geekhab', '<p>{source}<span style="font-family: courier new, courier, monospace;"><br /><span>&lt;</span>div class="about"<span>&gt;</span><br />            <span>&lt;</span>h2<span>&gt;</span>Про GeekHub&lt;/h2<span>&gt;</span><br />            <span>&lt;</span>ul<span>&gt;</span><br />                <span>&lt;</span>li class="imgs"<span>&gt;</span><span>&lt;</span>img alt="img_about" src="/geekhub/templates/protostar/images/about.png"<span>&gt;</span>&lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>GeekHub - це проект, що надає можливість <br />талановитій молоді отримати практичні знання та навички в сфері розробки<br /> програмного забезпечення та IT вцілому. Команда Geekhub — це группа <br />професіоналів в інформаційних технологіях, які готують слухачів курсів <br />до успішної кар’єри в індустрії. Всі члени команди Geekhub працюють у <br />провідних софтверних компаніях, кожного дня оновлюючи свої знання та <br />навички інноваціями в інформаційних технологіях. Саме це дає змогу <br />викладати виключно потрібний матеріал, що знадобиться при роботі в <br />реальних виробничих умовах.&lt;/p<span>&gt;</span>&lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Ми шукаємо мотивованих учнів та студентів, які <br />мріють отримати професію в інформаційних технологіях, для інтенсивного <br />практичного навчання з розробки веб та мобільних додатків. Ми хочемо щоб<br /> молоді таланти теж змогли приєднатись до спільноти професіоналів <br />інформаційних технологій і створювали унікальні інтегровані продукти для<br /> поліпшення умов праці і життя людей навколо нас.&lt;/p<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Ми називаємо Geekhub “Open Source”, тому що саме <br />ця ідеологія керує всією програмою. Все що ми робимо обертається навколо<br /> взаємовідносин між людьми. Курси Geekhub не коштують грошей, все що <br />вимагається — це внутрішня мотивація та багато самостійної роботи.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Якщо ви зацікавлені у співробітництві з GeekHub, або у вас є ідеї щодо того, як зробити GeekHub краще - будь-ласка, <span>&lt;</span>a href="http://geekhub.ck.ua/contacts.html"<span>&gt;</span>зв''яжіться з нами&lt;/a&gt; будь яким зручним для вас шляхом.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />            &lt;/ul<span>&gt;</span><br />        &lt;/div<span>&gt;</span><br /></span>{/source}</p>', '', 1, 2, '2012-11-13 12:59:42', 306, '', '2012-11-13 21:20:08', 306, 0, '0000-00-00 00:00:00', '2012-11-13 12:59:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 4, '', '', 1, 78, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 36, 'головна', 'golovna', '<p>{source}</p>\r\n<p><span style="font-family: courier new, courier, monospace;">&lt;div class="home"&gt;<br /><span>&lt;</span>p class="description"<span>&gt;</span><br />               <span>&lt;</span>strong<span>&gt;</span>GeekHub&lt;/strong&gt; — це проект, що надає можливість<br /> отримати практичні знання та навички в сфері розробки програмного<br />забезпечення. На відміну від традиційної освіти, викладачі GeekHub<br />працюють з новітніми технологіями у провідних софтверних компаніях, тому<br /> слухачі GeekHub отримують тільки актуальні знання. Якщо ти зацікавлений<br /> — запрошуємо ознайомитись з<br />               <span>&lt;</span>a href="http://geekhub.ck.ua/about.html"<span>&gt;</span>деталями проекту&lt;/a<span>&gt;</span>.<br />            &lt;/p<span>&gt;</span><br />            <span>&lt;</span>h2<span>&gt;</span>Наші Курси&lt;/h2<span>&gt;</span><br />            <span>&lt;</span>ul class="types"<span>&gt;</span><br />                <span>&lt;</span>li class="left-col"<span>&gt;</span><br />                    <span>&lt;</span>img src="/geekhub/images/icon_front.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Frontend + CMS&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Цей курс допоможе вам навчитися створювати веб<br />сайти на основі системи керування контентом. Все, від скінування дизайну<br /> до підключення CMS. Цей курс дасть вам чудовий старт для фріланса або<br />роботи в компанії.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                    <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub/</span>images/icon_cms.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Advanced CMS&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Необхідні та поглибленні знання в системах керування<br /> контентом. Якщо ви хочете робити вебсайти як професіонал, цей курс для<br />вас. Особливості різних CMS, використання та написання плагінів та<br />компонентів, інтеграція із соціальними мережами та третьосторонніми<br />сервісами.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li class="left-col"<span>&gt;</span><br />                    <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;">/geekhub/</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">images</span>/icon_adv_php.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Advanced PHP&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Для тих хто хоче розвити свої базові навички в PHP. Курс заглиблюється в вивчення ООП, MVC та фреймворку Symfony.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;">/geekhub/</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">images</span>/icon_java.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Basic Java&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Java -- це основа ентерпрайз технологій. Ви<br />ознайомитесь із мовою, базовою структурю SDK основами технологій на<br />Java. Курс вимагає підвищеного рівня самостійної роботи але отриманні<br />знання приносять особливу винагороду в роботі.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li class="left-col"<span>&gt;</span><br />                <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;">/geekhub/</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">images</span>/icon_android.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Java for Android&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Розробка під мобільні технології все більше набирає<br />популярності. GeekHub починає із найпопулярнішої відкритої платформи<br />Android.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;">/geekhub/</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">images</span>/icon_pm.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Project Management &lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Щоб стати досвідченим менеджером проектів потрібні<br />роки спроб та помилок. Geekhub дає вам можливість набути практичних<br />навичок та уникнути неприємних ситуацій в реальній роботі. Ми навчимо<br />вас розуміти бізнес, відносини із клієнтами і девелоперами і звичайно<br />методології ведення проектів.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li class="left-col"<span>&gt;</span><br />                <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;">/geekhub/</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">images</span>/icon_qa.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Quality Assurance&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Контроль якості проектів -- важлива частина процесу<br />розробки. Цей курс навчить вас систематизувати та автоматизувати процес<br />тестування, підвищити якість та швидкість виконання проектів в компанії.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub/</span>images</span>/icon_english.png"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Technical English&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>p<span>&gt;</span>Нинішні ринкові умови вимагають робочого знання<br />англійської мови і вільним використанням технічних термінів. Немає<br />кращого місця щоб підтягнути ці навички, ніж курс Techical English на<br />GeekHub! Курс викладає Tim Phipps, англієць із науковим ступенем у<br />англійскій літературі.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />            &lt;/ul<span>&gt;</span></span></p>\r\n<p><span style="font-family: courier new, courier, monospace;">&lt;/div&gt;<br /></span>{/source}</p>', '', 1, 2, '2012-11-13 19:48:40', 306, '', '2012-11-18 17:39:14', 306, 0, '0000-00-00 00:00:00', '2012-11-13 19:48:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 3, '', '', 1, 168, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 37, 'команда', 'komanda', '<p>{source}<span style="font-family: courier new, courier, monospace;"><br /><span>&lt;</span>div class="team"<span>&gt;</span><br />            <span>&lt;</span>h2<span>&gt;</span>Команда GeekHub&lt;/h2<span>&gt;</span><br />            <span>&lt;</span>ul<span>&gt;</span><br />                <span>&lt;</span>li class="odd"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Євген “Jack” Григор’єв <span>&lt;</span>span<span>&gt;</span>Старший девелопер PHP <span>&lt;</span>br /&gt;в Мaster of Code&lt;/span<span>&gt;</span>&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/jack.png" /&gt;<br />                    <span>&lt;</span>p<span>&gt;</span>Працює з рядом технологій, включаючи Symfony, Drupal, jQuery, Compass CSS, HAML, etc.<br />                        Майстерність Євгена стоїть за такими проектами як <span>&lt;</span>a href="http://www.belvilla.nl/"<span>&gt;</span>Belvilla&lt;/a<span>&gt;</span>, <span>&lt;</span>a href="http://yesorno.ch/"<span>&gt;</span>Yes or No&lt;/a<span>&gt;</span>, <span>&lt;</span>a href="http://www.webshop.jongenvrij.nl/"<span>&gt;</span>Jongenvrij webshop&lt;/a<span>&gt;</span>, <span>&lt;</span>a href="http://usgovernmentauctions.net/"<span>&gt;</span>USGA&lt;/a&gt; та багато інших. У Geekhub Євген викладає Advanced CMS.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Тимофій “Common” Козак <span>&lt;</span>span<span>&gt;</span>iPhone developer <span>&lt;</span>br /&gt;в Master of Code. &lt;/span<span>&gt;</span>&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>img src="/geekhub/images/cmn.png" /&gt;<br />                    <span>&lt;</span>p<span>&gt;</span>Тимофій розвиває індустрію мобільних додатків. На його рахунку такі проекти як KandleFly, SecondChance, Yak Messenger, <span>&lt;</span>a href="http://geekhub.ck.ua/"<span>&gt;</span>GeekHub&lt;/a<span>&gt;</span>, <span>&lt;</span>a href="http://www.maximsoftware.com/"<span>&gt;</span>MaximSoftware&lt;/a<span>&gt;</span>, <span>&lt;</span>a href="http://mclean-design.com/"<span>&gt;</span>MClean-design&lt;/a<span>&gt;</span>, <span>&lt;</span>a href="http://m2m.org.ua"<span>&gt;</span>M2M&lt;/a&gt; та інші. В Geekhub Тимофій викладає Frontend + CMS.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />    <span>&lt;</span>li class="odd"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Максим Сторчовий <span>&lt;</span>span<span>&gt;</span>Старший девелопер PHP <span>&lt;</span>br /&gt;в Master of Code. &lt;/span<span>&gt;</span>&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/user.png" /&gt;<br />                    <span>&lt;</span>p<span>&gt;</span>У GeekHub викладає Advanced PHP.&lt;/p<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />    <span>&lt;</span>li<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Сергій Босовський <span>&lt;</span>span<span>&gt;</span>Старший Android developer <span>&lt;</span>br /&gt;в Master of Code. &lt;/span<span>&gt;</span>&lt;/h3<span>&gt;</span><br />                    <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/boss.png" /&gt;<br />                    <span>&lt;</span>p<span>&gt;</span>Сергій займається питаннями інтерфейсів і обробки контенту, кастомними компонентами UI та інтеграцією андроїд аппів із зовнішніми сервісами. Сергій працював над такими проектами як <span>&lt;</span>a href="https://market.android.com/details?id=com.sandsmedia.apps.mobile.android.jtj"<span>&gt;</span>Java Tech Journal&lt;/a<span>&gt;</span>, <span>&lt;</span>a href="https://market.android.com/details?id=com.sirma.mobile.bible.android"<span>&gt;</span>LifeChurch Android app&lt;/a&gt; та <span>&lt;</span>a href="https://market.android.com/details?id=com.masterofcode.android.yakchat"<span>&gt;</span>Yak messenger&lt;/a<span>&gt;</span>. У GeekHub Сергій викладає Java for Android.&lt;/p<span>&gt;</span><br />                &lt;/li&gt;<br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Іван Хижняк &lt;span&gt;Старший девелопер PHP. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub/</span>images/user.png" /&gt;<br />                    &lt;p&gt;У GeekHub викладає Advanced PHP.&lt;/p&gt;<br />                &lt;/li&gt;<br />                &lt;li&gt;<br />                    &lt;h3&gt;Нік Курат &lt;span&gt;Управляючий партнер&lt;br /&gt;в Master of Code&lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub/</span>images/neek.png" /&gt;<br />                    &lt;p&gt;Нік займається розвитком бізнесу компанії Master of Code LLC. У складі Geekhub Нік викладає Project Management та працює над брендінгом та маркетингом проекту.&lt;/p&gt;<br />                &lt;/li&gt;<br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Валентин Ярмолатій &lt;span&gt;Логістичний менеджер &lt;br /&gt;в Master of Code&lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/val.png" /&gt;<br />                    &lt;p&gt;Валентин займається питаннями технічного забезпечення Geekhub.&lt;/p&gt;<br />                &lt;/li&gt;<br />                &lt;li&gt;<br />                    &lt;h3&gt;Олег Зінченко &lt;span&gt;TeamLead &lt;br /&gt;в  &lt;a href="http://exercise.com"&gt;Exercise.com&lt;/a&gt;, Inc. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/oleg_zinchenko.png" /&gt;<br />                    &lt;p&gt;Олег професiйно займаеться розробкою веб додаткiв на PHP з використанням сучасних фреймфоркiв. Адепт Symfony2. У GeekHub Олег викладає Advanced PHP.&lt;/p&gt;<br />                &lt;/li&gt;                <br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Tim Phipps &lt;span&gt;English Language Tutor&lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/tim_phipps.png" /&gt;<br />                    &lt;p&gt;Since gaining his CELTA teaching qualification, Tim has specialised in private English lessons, meeting a wide range of student needs. He now teaches at the ''Yazlingo'' language school. At Geekhub Tim leads the Technical English course.&lt;/p&gt;<br />                &lt;/li&gt;<br />                &lt;li&gt;<br />                    &lt;h3&gt;Юрій Курат &lt;span&gt;CTO в Martell &lt;br /&gt;Marketing Group&lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/jurii_kurat.png" /&gt;<br />                    &lt;p&gt;Юрій працює із командою розробників веб та кросс-платформових мобільних технологій. Його нещодавні проекти включають у себе &lt;a href="http://stickyalbums.com"&gt;stickyalbums.com&lt;/a&gt;, &lt;a href="http://chewy.com"&gt;chewy.com&lt;/a&gt;. У GeekHub Юрій займається організацією та розвитком проекту.&lt;/p&gt;<br />                &lt;/li&gt;<br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Дмитро Луханін &lt;span&gt;Менеджер проектів &lt;br /&gt;в Master of Code. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/user.png" /&gt;<br />                    &lt;p&gt;В Geekhub Дмитро викладає Frontend + CMS.&lt;/p&gt;<br />                &lt;/li&gt;<br />                &lt;li&gt;<br />                    &lt;h3&gt;Олена Перекопська &lt;span&gt;Менеджер проектів &lt;br /&gt;в Master of Code. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/olena_perekopska.png" /&gt;<br />                    &lt;p&gt;У GeekHub викладає Quality Assurance.&lt;/p&gt;<br />                &lt;/li&gt;                <br /><br /><br /><br /><br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Володимир Білоус &lt;span&gt;Java EE/ Android developer &lt;br /&gt;в SPD Ukraine.&lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/volodymyr_bilous.png" /&gt;<br />                    &lt;p&gt;Володимир є Java та Android розробником у SPD Ukraine. Його основний проект -- &lt;a href="http://nimblecommerce.com"&gt;nimblecommerce.com&lt;/a&gt; У GeekHub Володимир викладає Java for Web.&lt;/p&gt;<br />                &lt;/li&gt;                <br />                &lt;li&gt;<br />                    &lt;h3&gt;Валерій Олексієнко &lt;span&gt;Веб-розробник &lt;br /&gt;в SPD-Ukraine.&lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/valerii_oleksienko.png" /&gt;<br />                    &lt;p&gt;Back-end та front-end веб-розробник. Основні технології, з якими працює: Spring (MVC, Security), Hibernate, mySql, MongoDB, jQuery, Ext.js Хоббі включають сноуборд, музика, mobile development. У GeekHub Валерій викладає Java for Web.&lt;/p&gt;<br />                &lt;/li&gt;                <br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Богдан Халяпін &lt;span&gt;Директор &lt;br /&gt;в SPD-Ukraine. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/bogdan_haliapin.png" /&gt;<br />                    &lt;p&gt;Богдан керує компанією SPD-Ukraine та займається її розвитком. Має більше ніж 10 років досвіду з Java. У складі GeekHub Богдан є викладачем та координатором групи Basic Java / Java for Web.&lt;/p&gt;<br />                &lt;/li&gt;                <br /><br /><br />                &lt;li&gt;<br />                    &lt;h3&gt;Володимир Овчаренко &lt;span&gt;PHP and Ruby Програміст &lt;br /&gt;в Master of Code. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/volodymyr_ovcharenko.png" /&gt;<br />                    &lt;p&gt;Володимир є старшим front-end та CMS розробником. Наразі працює із проектом &lt;a href="http://sellanapp.com"&gt;SellanApp&lt;/a&gt;. У GeekHub викладає Advanced CMS. &lt;/p&gt;<br />                &lt;/li&gt;                <br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Альона Лісіцина &lt;span&gt;Менеджер проектів &lt;br /&gt;в Master of Code. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/alona_lisicina.png" /&gt;<br />                    &lt;p&gt;Альона працює менеджером проектів у компанії Master of Code LLC. У Geekhub Альона викладає Project Management. &lt;/p&gt;<br />                &lt;/li&gt;                <br />                &lt;li&gt;<br />                    &lt;h3&gt;Дмитро Таряник &lt;span&gt;Android developer &lt;br /&gt;в Master of Code. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/dmytro_tarianyk.png" /&gt;<br />                    &lt;p&gt;Дмитро працює над проектом &lt;a href="https://market.android.com/details?id=com.sirma.mobile.bible.android"&gt;LifeChurch Android app&lt;/a&gt;. У GeekHub викладає Java for Android.&lt;/p&gt;<br />                &lt;/li&gt;                <br /><br /><br />                &lt;li class="odd"&gt;<br />                    &lt;h3&gt;Сергій Гичка &lt;span&gt;Back-end developer &lt;br /&gt;в Master of Code. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/sergii_gychka.png" /&gt;<br />                    &lt;p&gt;Сергій працює з такими технологіями як Symfony, Drupal, JS, Zend Framework, CodeIgniter. Його проекти включають InnoLaunch Platform, &lt;a href="http://www.thevx.com/"&gt;The VX&lt;/a&gt;, &lt;a href="http://fundforgenderequality.unwomen.org/"&gt;Fund for Gender Equality&lt;/a&gt;, &lt;a href="http://untf.unwomen.org/"&gt;UN Trust Fund to End Violence Against Women&lt;/a&gt;. У GeekHub Сергій викладає Advanced CMS.&lt;/p&gt;<br />                &lt;/li&gt;                <br />                &lt;li&gt;<br />                    &lt;h3&gt;Юра Батора &lt;span&gt;Team Leader &lt;br /&gt;в SPD-Ukraine. &lt;/span&gt;&lt;/h3&gt;<br />                    &lt;img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/jura_batora.png" /&gt;<br />                    &lt;p&gt;Юра займається розробкою комерційних проектів на Java зі складною клієнт-серверною архітектурою. У GeekHub викладає Java for Web.&lt;/p&gt;<br />                &lt;/li&gt;                <br />            &lt;/ul&gt;<br /><br />            <br />        &lt;/div&gt;<br /><br /> <br /></span>{/source}</p>', '', 1, 2, '2012-11-13 21:59:18', 306, '', '2012-11-18 17:33:26', 306, 0, '0000-00-00 00:00:00', '2012-11-13 21:59:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 2, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 38, 'Зв’язок', 'zv-yazok', '<p><strong> </strong></p>\r\n<p>{source}<span style="font-family: courier new, courier, monospace;"><br />&lt;!-- You can place html anywhere within the source tags --&gt;<br /><br />  <span>&lt;</span>div id="content"<span>&gt;</span><br />        <span>&lt;</span>div class="contacts"<span>&gt;</span><br />            <span>&lt;</span>h2<span>&gt;</span>Зв’язок&lt;/h2<span>&gt;</span><br />            <span>&lt;</span>dl<span>&gt;</span><br />                <span>&lt;</span>dt class="map"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Заходьте&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd class="map"<span>&gt;</span><span>&lt;</span>div id="map" style="width:382px; height:287px"<span>&gt;</span></span></p>\r\n<p><span style="font-family: courier new, courier, monospace;"><strong>{mosmap width=’500′|height=’400′|lat=’ 56.3333|lon=’44.0′|zoom=’10′| zoomType=’Large’|zoomNew=’1′|mapType=’Normal’| showMaptype=’1′|overview=’0′|text=’Нижний Новгород’|lang=»}</strong></span></p>\r\n<p><span style="font-family: courier new, courier, monospace;">&lt;/div<span>&gt;</span>&lt;/dd<span>&gt;</span><br />                <span>&lt;</span>dt<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Звоніть&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd<span>&gt;</span><span>&lt;</span>img src="/geekhub/images/phone.png" alt="phone" /&gt;&lt;/dd<span>&gt;</span><br />                <span>&lt;</span>dt<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Пишіть&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd<span>&gt;</span><br />                    <span>&lt;</span>img src="</span><span style="font-family: courier new, courier, monospace;"><span style="font-family: courier new, courier, monospace;">/geekhub</span>/images/email.png" alt="email"/&gt;<br />                &lt;/dd<span>&gt;</span><br />                <span>&lt;</span>dt<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Слідкуйте&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd<span>&gt;</span><br />                    <span>&lt;</span>ul<span>&gt;</span><br />                        <span>&lt;</span>li class="fb"<span>&gt;</span><span>&lt;</span>a href="http://www.facebook.com/pages/GeekHub/158983477520070"<span>&gt;</span>facebook&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="vk"<span>&gt;</span><span>&lt;</span>a href="http://vkontakte.ru/geekhub"<span>&gt;</span>vkontakte&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="tw"<span>&gt;</span><span>&lt;</span>a href="http://twitter.com/#!/geek_hub"<span>&gt;</span>twitter&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                    &lt;/ul<span>&gt;</span><br />                &lt;/dd<span>&gt;</span><br /><br />            &lt;/dl<span>&gt;</span><br />        &lt;/div<span>&gt;</span><br /></span>{/source}</p>', '', 1, 2, '2012-11-14 12:25:17', 306, '', '2012-11-18 17:12:34', 306, 0, '0000-00-00 00:00:00', '2012-11-14 12:25:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 1, '', '', 1, 34, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 39, 'Зв’язокк', 'zv-yazokk', '<p>{source}<span style="font-family: courier new, courier, monospace;"><br />&lt;!-- You can place html anywhere within the source tags --&gt;<br /><br /><br />    <span>&lt;</span>script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"<span>&gt;</span>&lt;/script<span>&gt;</span><br />    <span>&lt;</span>script type="text/javascript"<span>&gt;</span><br />      function initialize() {<br />        var latlng = new google.maps.LatLng(49.42608363349172,32.09461569786072);<br />        var myOptions = {<br />          zoom: 15,<br />          center: latlng,<br />            panControl: true,<br />            zoomControl: true,<br />            mapTypeControl: true,<br />            scaleControl: false,<br />            streetViewControl: false,<br />            overviewMapControl: false,<br />          mapTypeId: google.maps.MapTypeId.ROADMAP<br />        };<br />        var map = new google.maps.Map(document.getElementById("map"), myOptions);<br />        var marker = new google.maps.Marker({<br />            position: latlng,<br />            title:"Дім Євангелія, вул. Горького 60"<br />        });<br /><br />        var infowindow = new google.maps.InfoWindow({<br />            content: marker.title<br />        });<br />        google.maps.event.addListener(marker, ''click'', function() {<br />            infowindow.open(map,marker);<br />        });<br /><br />        marker.setMap(map);<br />      }<br /><br />    &lt;/script<span>&gt;</span><br />  <span>&lt;</span>script type="text/javascript"<span>&gt;</span><br /><br />  var _gaq = _gaq || [];<br />  _gaq.push([''_setAccount'', ''UA-27082120-1'']);<br />  _gaq.push([''_trackPageview'']);<br /><br />  (function() {<br />    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;<br />    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';<br />    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);<br />  })();<br /><br />  &lt;/script&gt;<br />&lt;!-- Yandex.Metrika counter --&gt;<br />&lt;script type="text/javascript"&gt;<br />(function (d, w, c) {<br />    (w[c] = w[c] || []).push(function() {<br />        try {<br />            w.yaCounter17027506 = new Ya.Metrika({id:17027506, enableAll: true, webvisor:true});<br />        } catch(e) { }<br />    });<br />    <br />    var n = d.getElementsByTagName("script")[0],<br />        s = d.createElement("script"),<br />        f = function () { n.parentNode.insertBefore(s, n); };<br />    s.type = "text/javascript";<br />    s.async = true;<br />    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";<br /><br />    if (w.opera == "[object Opera]") {<br />        d.addEventListener("DOMContentLoaded", f);<br />    } else { f(); }<br />})(document, window, "yandex_metrika_callbacks");<br />&lt;/script&gt;<br />&lt;noscript&gt;&lt;div&gt;&lt;img src="//mc.yandex.ru/watch/17027506" style="position:absolute; left:-9999px;" alt="" /&gt;&lt;/div&gt;&lt;/noscript&gt;<br />  <span>&lt;</span>div id="content"<span>&gt;</span><br />        <span>&lt;</span>div class="contacts"<span>&gt;</span><br />            <span>&lt;</span>h2<span>&gt;</span>Зв’язок&lt;/h2<span>&gt;</span><br />            <span>&lt;</span>dl<span>&gt;</span><br />                <span>&lt;</span>dt class="map"<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Заходьте&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd class="map"<span>&gt;</span><span>&lt;</span>div id="map" style="width:382px; height:287px"<span>&gt;</span>&lt;/div<span>&gt;</span>&lt;/dd<span>&gt;</span><br />                <span>&lt;</span>dt<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Звоніть&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd<span>&gt;</span><span>&lt;</span>img src="/images/phone.png" alt="phone" /&gt;&lt;/dd<span>&gt;</span><br />                <span>&lt;</span>dt<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Пишіть&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd<span>&gt;</span><br />                    <span>&lt;</span>img src="/images/email.png" alt="email"/&gt;<br />                &lt;/dd<span>&gt;</span><br />                <span>&lt;</span>dt<span>&gt;</span><br />                    <span>&lt;</span>h3<span>&gt;</span>Слідкуйте&lt;/h3<span>&gt;</span><br />                &lt;/dt<span>&gt;</span><br />                <span>&lt;</span>dd<span>&gt;</span><br />                    <span>&lt;</span>ul<span>&gt;</span><br />                        <span>&lt;</span>li class="fb"<span>&gt;</span><span>&lt;</span>a href="http://www.facebook.com/pages/GeekHub/158983477520070"<span>&gt;</span>facebook&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="vk"<span>&gt;</span><span>&lt;</span>a href="http://vkontakte.ru/geekhub"<span>&gt;</span>vkontakte&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="tw"<span>&gt;</span><span>&lt;</span>a href="http://twitter.com/#!/geek_hub"<span>&gt;</span>twitter&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                    &lt;/ul<span>&gt;</span><br />                &lt;/dd<span>&gt;</span><br /><br />            &lt;/dl<span>&gt;</span><br />        &lt;/div<span>&gt;</span><br /></span>{/source}</p>', '', 1, 2, '2012-11-14 12:26:38', 306, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-14 12:26:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `ww2lu_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_content_rating`
--

CREATE TABLE IF NOT EXISTS `ww2lu_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `ww2lu_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_extensions`
--

CREATE TABLE IF NOT EXISTS `ww2lu_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10006 ;

--
-- Дамп данных таблицы `ww2lu_extensions`
--

INSERT INTO `ww2lu_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2012, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2.1","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"12.2","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"3.0.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `ww2lu_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.0.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2012-10-01","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.0.0.1","description":"Russian language pack (administrator) for Joomla! 3.0","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'PLG_SYSTEM_SOURCERER', 'plugin', 'sourcerer', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_SOURCERER","type":"plugin","creationDate":"November 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"4.0.1FREE","description":"PLG_SYSTEM_SOURCERER_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Button - Sourcerer', 'plugin', 'sourcerer', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - Sourcerer","type":"plugin","creationDate":"November 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"4.0.1FREE","description":"PLG_EDITORS-XTD_SOURCERER_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'PLG_SYSTEM_NNFRAMEWORK', 'plugin', 'nnframework', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_NNFRAMEWORK","type":"plugin","creationDate":"November 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"12.11.6","description":"PLG_SYSTEM_NNFRAMEWORK_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'MOD_JLVKGROUP', 'module', 'mod_jlvkgroup', '', 0, 1, 0, 0, '{"name":"MOD_JLVKGROUP","type":"module","creationDate":"2010-09-23","author":"JoomLine","copyright":"Copyright 2010 JoomLine.net All rights reserved!","authorEmail":"anton@joomline.ru","authorUrl":"http:\\/\\/www.joomline.net","version":"2.3","description":"MOD_JLVKGROUP_XML_DESCRIPTION","group":""}', '{"group_id":"17291036","width":"200","height":"290","mode":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Google Maps', 'plugin', 'plugin_googlemap2', 'system', 0, 1, 1, 0, '{"name":"Google Maps","type":"plugin","creationDate":"June 2012","author":"Mike Reumer","copyright":"(C) 2012 Reumer","authorEmail":"tech@reumer.net","authorUrl":"tech.reumer.net","version":"2.18","description":"PLUGIN_GOOGLE_MAPS_INSTALLATION","group":""}', '{"publ":"1","debug":"0","plugincode":"mosmap","brackets":"{","Google_API_version":"3.x","show":"1","mapclass":"","mapcss":"\\/* For img in the map remove borders, shadow, no margin and no max-width\\r\\n*\\/\\r\\n.map img {\\r\\n    border: 0px;\\r\\n    box-shadow: 0px;\\r\\n    margin: 0px;\\r\\n    max-width: none !important;\\r\\n}\\r\\n\\r\\n\\/* Make sure the directions are below the map\\r\\n*\\/\\r\\n.directions {\\r\\n    clear: left;\\r\\n}\\r\\n\\r\\n\\/* Solve problems in chrome with the show of the direction steps in full width\\r\\n*\\/\\r\\n.adp-placemark {\\r\\n    width : 100%\\r\\n}","loadmootools":"1","timeinterval":"500","Google_API_key":"","Google_Multi_API_key":"","urlsetting":"http_host","googlewebsite":"maps.google.com","googleindexing":"1","styledmap":"","align":"none","langtype":"site","lang":"\\u0423\\u0443\\u0443","width":"382","height":"287","effect":"none","lat":"49.426091","lon":"32.09469","centerlat":"","centerlon":"","address":"","latitudeid":"","latitudedesc":"1","latitudecoord":"0","latitudeform":"0","controltype":"UI","zoomType":"3D-large","svcontrol":"1","zoom":"17","corzoom":"0","minzoom":"0","maxzoom":"19","rotation":"1","zoomnew":"0","zoomWheel":"0","keyboard":"0","mapType":"Normal","showmaptype":"1","showNormalMaptype":"1","showSatelliteMaptype":"1","showHybridMaptype":"1","showTerrainMaptype":"1","showEarthMaptype":"1","showscale":"0","overview":"0","ovzoom":"-3","navlabel":"0","dragging":"1","marker":"1","icon":"","iconwidth":"","iconheight":"","iconanchorx":"","iconanchory":"","iconshadow":"","iconshadowwidth":"","iconshadowheight":"","iconinfoanchorx":"","iconinfoanchory":"","icontransparent":"","iconimagemap":"","traffic":"0","transit":"0","bicycle":"0","panoramio":"none","panotype":"none","panoorder":"popularity","panomax":"50","youtube":"none","wiki":"none","adsmanager":"0","maxads":"3","localsearch":"0","adsense":"","channel":"","googlebar":"0","searchlist":"inline","searchtarget":"_blank","searchzoompan":"1","weather":"0","weathercloud":"0","weatherinfo":"1","weathertempunit":"celsius","weatherwindunit":"km","dir":"0","dirtype":"D","avoidhighways":"0","diroptimize":"0","diralternatives":"0","showdir":"1","animdir":"0","animspeed":"1","animautostart":"0","animunit":"kilometers","formspeed":"0","formdirtype":"0","formaddress":"0","formdir":"0","autocompl":"both","langanim":"en;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow","txtdir":"Directions: ","txtgetdir":"Get Directions","txtfrom":"From here","txtto":"To here","txtdiraddr":"Address: ","txt_driving":"","txt_avhighways":"","txt_walking":"","txt_bicycle":"","txt_transit":"","txt_optimize":"","txt_alternatives":"","dirdefault":"0","gotoaddr":"0","gotoaddrzoom":"0","txtaddr":"Address: ##","erraddr":"Address ## not found!","clientgeotype":"google","lightbox":"0","txtlightbox":"Open lightbox","lbxcaption":"","lbxwidth":"500","lbxheight":"700","lbxcenterlat":"","lbxcenterlon":"","lbxzoom":"","sv":"none","svwidth":"100%","svheight":"300","svyaw":"0","svpitch":"0","svzoom":"","svautorotate":"0","svaddress":"1","earthtimeout":"100","earthborders":"1","earthbuildings":"0","earthroads":"0","earthterrain":"0","kmlrenderer":"google","kmlsidebar":"none","kmlsbwidth":"200","kmlfoldersopen":"0","kmlhide":"0","kmlscale":"0","kmlopenmethod":"click","kmlsbsort":"none","kmllightbox":"0","kmlmessshow":"0","kmlclickablemarkers":"1","kmlzoommarkers":"0","kmlopendivmarkers":"","kmlcontentlinkmarkers":"0","kmllinkablemarkers":"0","kmllinktarget":"_self","kmllinkmethod":"dblclick","kmlmarkerlabel":"100","kmlmarkerlabelclass":"","kmlpolylabel":"100","kmlpolylabelclass":"","proxy":"1","maxcluster":"","gridsize":"","minmarkerscluster":"","maxlinesinfocluster":"","clusterinfowindow":"click","clusterzoom":"dblclick","clustermarkerzoom":"16","tilelayer":"","tilemethod":"","tileopacity":"1","tilebounds":"","tileminzoom":"0","tilemaxzoom":"19","imageurl":"","imagex":"","imagey":"","imagexyunits":"pixels","imagewidth":"","imageheight":"","imageanchorx":"","imageanchory":"","imageanchorunits":"pixels","twittername":"","twittertweets":"15","twittericon":"\\/media\\/plugin_googlemap2\\/site\\/Twitter\\/twitter_map_icon.png","twitterline":"#ff0000ff","twitterlinewidth":"4","twitterstartloc":"0,0,0"}', '', '', 306, '2012-11-18 00:09:18', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_filters`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ww2lu_finder_taxonomy`
--

INSERT INTO `ww2lu_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_terms`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ww2lu_finder_terms_common`
--

INSERT INTO `ww2lu_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_finder_types`
--

CREATE TABLE IF NOT EXISTS `ww2lu_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_languages`
--

CREATE TABLE IF NOT EXISTS `ww2lu_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ww2lu_languages`
--

INSERT INTO `ww2lu_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_menu`
--

CREATE TABLE IF NOT EXISTS `ww2lu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- Дамп данных таблицы `ww2lu_menu`
--

INSERT INTO `ww2lu_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 65, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 3, 12, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 4, 5, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 6, 7, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 8, 9, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 10, 11, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 13, 18, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 14, 15, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 16, 17, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 19, 24, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 20, 21, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 22, 23, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 25, 30, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 26, 27, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 28, 29, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'головна', 'golov', '', 'golov', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(102, 'mainmenu', 'про geekhab', 'pro-geekhab', '', 'pro-geekhab', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(103, 'mainmenu', 'команда', 'komanda', '', 'komanda', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(104, 'mainmenu', 'ыаываы', 'vyfvfy', '', 'vyfvfy', 'index.php?option=com_finder&view=search&q=&f=', 'component', -2, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_date_filters":"","show_advanced":"","expand_advanced":"","show_description":"","description_length":255,"show_url":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","allow_empty_query":"0","sort_order":"","sort_direction":"","show_feed":"0","show_feed_text":"0","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(107, 'main-menu', 'facebook', '2012-11-13-18-30-45', '', '2012-11-13-18-30-45', 'http://www.facebook.com/pages/GeekHub/158983477520070', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"fb","menu_image":"","menu_text":1}', 53, 54, 0, '*', 0),
(108, 'main-menu', 'вконтакте', '2012-11-13-18-31-38', '', '2012-11-13-18-31-38', 'http://vkontakte.ru/geekhub', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"vk","menu_image":"","menu_text":1}', 55, 56, 0, '*', 0),
(109, 'main-menu', 'твиттер', '2012-11-13-18-32-23', '', '2012-11-13-18-32-23', 'http://twitter.com/#!/geek_hub', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"tw","menu_image":"","menu_text":1}', 57, 58, 0, '*', 0),
(110, 'main-menu', 'Ютуб', '2012-11-13-18-33-18', '', '2012-11-13-18-33-18', 'http://www.youtube.com/user/GeekHubchannel', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"yb","menu_image":"","menu_text":1}', 59, 60, 0, '*', 0),
(111, 'main-menu', 'вимео', '2012-11-13-18-34-06', '', '2012-11-13-18-34-06', 'http://vimeo.com/user8452244', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"v","menu_image":"","menu_text":1}', 61, 62, 0, '*', 0),
(112, 'mainmenu', 'Зв’язок', 'zv-yazok', '', 'zv-yazok', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_menu_types`
--

CREATE TABLE IF NOT EXISTS `ww2lu_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `ww2lu_menu_types`
--

INSERT INTO `ww2lu_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(3, 'main-menu', 'links', 'links');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_messages`
--

CREATE TABLE IF NOT EXISTS `ww2lu_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `ww2lu_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_modules`
--

CREATE TABLE IF NOT EXISTS `ww2lu_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Дамп данных таблицы `ww2lu_modules`
--

INSERT INTO `ww2lu_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Верхнее меню', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"nav","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"zzz","style":"0"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'ссылки', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"main-menu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"links","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 'Нижнее', '', '', 0, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"footer","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 'Мы вконтакте', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_jlvkgroup', 1, 1, '{"group_id":"5525046","width":"200","height":"290","mode":"0","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 'head', '', '<p>{source}<span style="font-family: courier new, courier, monospace;"><br />                <span>&lt;</span>span class="line"<span>&gt;</span>&lt;/span<span>&gt;</span><br />                <span>&lt;</span>h4 class="registration"<span>&gt;</span>Нажаль, реєстрацію на другий сезон вже зачинено. Чекаємо на Вас наступного року!&lt;/h4<span>&gt;</span><br />                <span>&lt;</span>img alt="splash" src="/geekhub/images/splash.png"<span>&gt;</span><br /></span>{/source}</p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 'social', '', '<p>{source}<span style="font-family: courier new, courier, monospace;"><br /><span>&lt;</span>ul class="social_share"<span>&gt;</span></span></p>\r\n<p><span style="font-family: courier new, courier, monospace;">                <span>&lt;</span>li id="vk"<span>&gt;</span></span></p>\r\n<p>   </p>\r\n<pre id="line1"><span>&lt;<span class="start-tag">script</span> <span class="attribute-name">type</span>="<a class="attribute-value">text/javascript</a>"&gt;</span><span>\r\n<span id="line153"></span>                        VK.Widgets.Group("vk", {mode: 0, width: "276", height: "240"}, 30111409);\r\n<span id="line154"></span>                    </span><span>&lt;/<span class="end-tag">script</span>&gt;</span></pre>\r\n<p><span style="font-family: courier new, courier, monospace;">                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li class="sertificates_list"<span>&gt;</span><br />                  <span>&lt;</span>h4<span>&gt;</span><span>&lt;</span>a href="/certified-professionals.html"<span>&gt;</span>Сертифiкованi професiонали&lt;/a<span>&gt;</span>&lt;/h4<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />                <span>&lt;</span>li<span>&gt;</span><br />                    <span>&lt;</span>h4<span>&gt;</span>Наші Спонсори&lt;/h4<span>&gt;</span><br />                    <span>&lt;</span>ul<span>&gt;</span><br />                        <span>&lt;</span>li class="de"<span>&gt;</span><span>&lt;</span>a href="http://povnahata.com"<span>&gt;</span>Дім Євангелія&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="moc"<span>&gt;</span><span>&lt;</span>a href="http://masterofcode.com"<span>&gt;</span>Masterofcode LTD&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="sergium"<span>&gt;</span><span>&lt;</span>a href="http://sergium.net"<span>&gt;</span>SerGium.net&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="clear left stuff"<span>&gt;</span><span>&lt;</span>a href="http://val.co.ua/"<span>&gt;</span>val.co.ua/&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                        <span>&lt;</span>li class="youthog"<span>&gt;</span><span>&lt;</span>a href="http://yothog.com"<span>&gt;</span>Youthog.com&lt;/a<span>&gt;</span>&lt;/li<span>&gt;</span><br />                    &lt;/ul<span>&gt;</span><br />                &lt;/li<span>&gt;</span><br />            &lt;/ul<span>&gt;</span><br /></span>{/source}</p>', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_modules_menu`
--

CREATE TABLE IF NOT EXISTS `ww2lu_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ww2lu_modules_menu`
--

INSERT INTO `ww2lu_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 101),
(91, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `ww2lu_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_overrider`
--

CREATE TABLE IF NOT EXISTS `ww2lu_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_redirect_links`
--

CREATE TABLE IF NOT EXISTS `ww2lu_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `ww2lu_redirect_links`
--

INSERT INTO `ww2lu_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/geekhub/index.php/var/geekhub/images/about.png', '', 'http://localhost/geekhub/index.php/pro-geekhab', '', 1, 0, '2012-11-13 21:12:56', '0000-00-00 00:00:00'),
(2, 'http://localhost/geekhub/index.php/va/geekhub/images/about.png', '', 'http://localhost/geekhub/index.php/pro-geekhab', '', 1, 0, '2012-11-13 21:12:56', '0000-00-00 00:00:00'),
(3, 'http://localhost/geekhub/index.php/var/www/geekhub/templates/protostar/images/about.png', '', 'http://localhost/geekhub/index.php/pro-geekhab', '', 1, 0, '2012-11-13 21:15:08', '0000-00-00 00:00:00'),
(4, 'http://localhost/geekhub/index.php/va/www/geekhub/templates/protostar/images/about.png', '', 'http://localhost/geekhub/index.php/pro-geekhab', '', 1, 0, '2012-11-13 21:15:08', '0000-00-00 00:00:00'),
(5, 'http://localhost/geekhub/index.php/templates/protostar/images/about.png', '', 'http://localhost/geekhub/index.php/pro-geekhab', '', 1, 0, '2012-11-13 21:16:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_schemas`
--

CREATE TABLE IF NOT EXISTS `ww2lu_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ww2lu_schemas`
--

INSERT INTO `ww2lu_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_session`
--

CREATE TABLE IF NOT EXISTS `ww2lu_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ww2lu_session`
--

INSERT INTO `ww2lu_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('6b6mgpbu055uri1pc95nf4qp12', 1, 0, '1353411170', '__default|a:8:{s:15:"session.counter";i:10;s:19:"session.timer.start";i:1353410621;s:18:"session.timer.last";i:1353411163;s:17:"session.timer.now";i:1353411168;s:22:"session.client.browser";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:16.0) Gecko/20100101 Firefox/16.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_templates";O:8:"stdClass":1:{s:6:"styles";O:8:"stdClass":4:{s:10:"limitstart";i:0;s:6:"filter";O:8:"stdClass":3:{s:6:"search";s:0:"";s:8:"template";s:0:"";s:9:"client_id";s:0:"";}s:8:"ordercol";s:10:"a.template";s:9:"orderdirn";s:4:"desc";}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:8:"mainmenu";}s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:2:"id";a:1:{i:0;i:101;}s:4:"data";N;s:4:"type";N;s:4:"link";N;}}}}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"306";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:15:"vaaadik@mail.ru";s:8:"password";s:65:"91cc6228542c3c40e6655d4ed18702b3:0WwdOP2UGIQSfEIhQuu7rj5V4m3LKWWE";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2012-11-11 15:56:44";s:13:"lastvisitDate";s:19:"2012-11-20 11:22:12";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"453d1a614e43e3366ba1a31e80506ca3";}', 306, 'admin'),
('skmb10vl0lgd5sp1vpbmg62qu4', 0, 0, '1353411239', '__default|a:7:{s:15:"session.counter";i:5;s:19:"session.timer.start";i:1353410530;s:18:"session.timer.last";i:1353411219;s:17:"session.timer.now";i:1353411238;s:22:"session.client.browser";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:16.0) Gecko/20100101 Firefox/16.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"306";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:15:"vaaadik@mail.ru";s:8:"password";s:65:"91cc6228542c3c40e6655d4ed18702b3:0WwdOP2UGIQSfEIhQuu7rj5V4m3LKWWE";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2012-11-11 15:56:44";s:13:"lastvisitDate";s:19:"2012-11-19 22:40:00";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 306, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_template_styles`
--

CREATE TABLE IF NOT EXISTS `ww2lu_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `ww2lu_template_styles`
--

INSERT INTO `ww2lu_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'protostar', 0, '1', 'geekhab', '{"templateColor":"#08C","templateBackgroundColor":"#F4F6F7","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_updates`
--

CREATE TABLE IF NOT EXISTS `ww2lu_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=69 ;

--
-- Дамп данных таблицы `ww2lu_updates`
--

INSERT INTO `ww2lu_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(2, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(3, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(4, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', ''),
(5, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(6, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(7, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.0.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', ''),
(8, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(9, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(10, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(11, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(12, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(13, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(14, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(15, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(16, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(17, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(18, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(19, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(20, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(21, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(22, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(23, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.0.0.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', ''),
(24, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(25, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', ''),
(26, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(27, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(28, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(29, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(30, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(31, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(32, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(33, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(34, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(35, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(36, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(37, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(38, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(39, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(40, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(41, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(42, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(43, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(44, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(45, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(46, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(47, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(48, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', ''),
(49, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(50, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(51, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(52, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(53, 4, 10001, 'Sourcerer', '', 'sourcerer', 'plugin', 'system', 0, '4.0.2FREE', '', 'http://download.nonumber.nl/updates.php?e=sourcerer&/extension.xml', 'http://www.nonumber.nl/extensions/sourcerer#download'),
(54, 4, 10001, 'Sourcerer', '', 'sourcerer', 'plugin', 'system', 0, '4.0.2FREE', '', 'http://download.nonumber.nl/updates.php?e=sourcerer&/extension.xml', 'http://www.nonumber.nl/extensions/sourcerer#download'),
(55, 5, 0, 'Module JLvkgroup', 'Module JLvkgroup', 'mod_jlvkgroup', 'module', '', 1, '2.5', '', 'http://joomline.ru/update/mod_jlvkgroup/extension.xml', 'http://joomline.ru'),
(56, 6, 0, 'Google Maps', 'Plugin Googlemap for showing Google Maps in your Joomla website', 'plugin_googlemap2', 'plugin', 'system', 1, '2.18', '', 'http://tech.reumer.net/update/plugin_googlemap2/extension.xml', 'http://tech.reumer.net'),
(57, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(58, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(59, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(60, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(61, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(62, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(63, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(64, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(65, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(66, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(67, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(68, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_update_sites`
--

CREATE TABLE IF NOT EXISTS `ww2lu_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `ww2lu_update_sites`
--

INSERT INTO `ww2lu_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1353356977),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1353356978),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1353356978),
(4, 'Sourcerer', 'extension', 'http://download.nonumber.nl/updates.php?e=sourcerer&', 1, 1353356978),
(5, 'Module JLvkgroup Update Site', 'extension', 'http://joomline.ru/update/mod_jlvkgroup/extension.xml', 1, 1353356978),
(6, 'Plugin Googlemap Update Site', 'extension', 'http://tech.reumer.net/update/plugin_googlemap2/extension.xml', 1, 1353356978);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `ww2lu_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `ww2lu_update_sites_extensions`
--

INSERT INTO `ww2lu_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10001),
(4, 10002),
(5, 10004),
(6, 10005);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_usergroups`
--

CREATE TABLE IF NOT EXISTS `ww2lu_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `ww2lu_usergroups`
--

INSERT INTO `ww2lu_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_users`
--

CREATE TABLE IF NOT EXISTS `ww2lu_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=307 ;

--
-- Дамп данных таблицы `ww2lu_users`
--

INSERT INTO `ww2lu_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(306, 'Super User', 'admin', 'vaaadik@mail.ru', '91cc6228542c3c40e6655d4ed18702b3:0WwdOP2UGIQSfEIhQuu7rj5V4m3LKWWE', 0, 1, '2012-11-11 15:56:44', '2012-11-20 11:23:49', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_user_notes`
--

CREATE TABLE IF NOT EXISTS `ww2lu_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_user_profiles`
--

CREATE TABLE IF NOT EXISTS `ww2lu_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `ww2lu_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ww2lu_user_usergroup_map`
--

INSERT INTO `ww2lu_user_usergroup_map` (`user_id`, `group_id`) VALUES
(306, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_viewlevels`
--

CREATE TABLE IF NOT EXISTS `ww2lu_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `ww2lu_viewlevels`
--

INSERT INTO `ww2lu_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Структура таблицы `ww2lu_weblinks`
--

CREATE TABLE IF NOT EXISTS `ww2lu_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
