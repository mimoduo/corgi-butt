# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.25)
# Database: corgi_butt
# Generation Time: 2019-05-05 19:21:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bigtree_404s
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_404s`;

CREATE TABLE `bigtree_404s` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `broken_url` varchar(255) NOT NULL DEFAULT '',
  `get_vars` varchar(255) NOT NULL,
  `redirect_url` varchar(255) NOT NULL DEFAULT '',
  `requests` int(11) unsigned NOT NULL DEFAULT '0',
  `ignored` char(2) NOT NULL DEFAULT '',
  `site_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `broken_url` (`broken_url`),
  KEY `requests` (`requests`),
  KEY `ignored` (`ignored`),
  KEY `site_key` (`site_key`),
  KEY `get_vars` (`get_vars`),
  KEY `redirect_url` (`redirect_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_404s` WRITE;
/*!40000 ALTER TABLE `bigtree_404s` DISABLE KEYS */;

INSERT INTO `bigtree_404s` (`id`, `broken_url`, `get_vars`, `redirect_url`, `requests`, `ignored`, `site_key`)
VALUES
	(1,'favicons/favicon.ico','','',34,'',NULL),
	(2,'favicons/site.webmanifest','','',102,'',NULL),
	(3,'favicons/favicon-32x32.png','','',34,'',NULL),
	(4,'favicons/favicon-16x16.png','','',33,'',NULL),
	(5,'files/callouts/wide-lrg-dsc00133.jpg','','',1,'',NULL);

/*!40000 ALTER TABLE `bigtree_404s` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_audit_trail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_audit_trail`;

CREATE TABLE `bigtree_audit_trail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned NOT NULL,
  `table` varchar(255) NOT NULL,
  `entry` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `table` (`table`),
  KEY `entry` (`entry`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_audit_trail` WRITE;
/*!40000 ALTER TABLE `bigtree_audit_trail` DISABLE KEYS */;

INSERT INTO `bigtree_audit_trail` (`id`, `user`, `table`, `entry`, `type`, `date`)
VALUES
	(1,1,'jsondb -&gt; modules','modules-15c0eddf61d911','deleted','2019-04-04 16:15:06'),
	(2,1,'jsondb -&gt; modules','modules-15c0edde04cdec','deleted','2019-04-04 16:15:08'),
	(3,1,'jsondb -&gt; modules','modules-15c0edde04d8fa','deleted','2019-04-04 16:15:10'),
	(4,1,'jsondb -&gt; modules','modules-15c0edde04e4e5','deleted','2019-04-04 16:15:12'),
	(5,1,'jsondb -&gt; module-groups','module-groups-15c0edde04ae22','deleted','2019-04-04 16:15:17'),
	(6,1,'jsondb -&gt; callouts','facts-stats','deleted','2019-04-04 16:15:25'),
	(7,1,'jsondb -&gt; callouts','flexible-callout','deleted','2019-04-04 16:15:28'),
	(8,1,'jsondb -&gt; callouts','home-feature','deleted','2019-04-04 16:15:30'),
	(9,1,'jsondb -&gt; callouts','testimonial','deleted','2019-04-04 16:15:35'),
	(10,1,'jsondb -&gt; callouts','topic-row','deleted','2019-04-04 16:15:37'),
	(11,1,'jsondb -&gt; callouts','topic-rows','deleted','2019-04-04 16:15:39'),
	(12,1,'jsondb -&gt; callouts','contact-info','deleted','2019-04-04 16:15:41'),
	(13,1,'jsondb -&gt; callouts','link-list','deleted','2019-04-04 16:15:43'),
	(14,1,'jsondb -&gt; callouts','media-gallery','deleted','2019-04-04 16:15:45'),
	(15,1,'jsondb -&gt; callouts','wysiwyg','deleted','2019-04-04 16:15:46'),
	(16,1,'bigtree_pages','1','created','2019-04-04 16:41:00'),
	(17,1,'bigtree_pages','2','created','2019-04-04 16:41:09'),
	(18,1,'bigtree_pages','3','created','2019-04-04 16:41:49'),
	(19,1,'bigtree_pages','1','updated','2019-04-04 16:56:40'),
	(20,1,'jsondb -&gt; templates','content','updated','2019-04-04 16:58:12'),
	(21,1,'bigtree_pages','1','updated','2019-04-04 16:58:31'),
	(22,1,'jsondb -&gt; templates','content','updated','2019-04-04 16:58:44'),
	(23,1,'jsondb -&gt; callouts','directory','created','2019-04-08 15:15:34'),
	(24,1,'jsondb -&gt; callout-groups','1','updated','2019-04-08 15:19:09'),
	(25,1,'bigtree_resources','1','created','2019-04-08 15:19:45'),
	(26,1,'bigtree_resources','2','created','2019-04-08 15:19:45'),
	(27,1,'bigtree_resources','3','created','2019-04-08 15:19:49'),
	(28,1,'bigtree_pages','1','updated','2019-04-08 15:23:22'),
	(29,1,'jsondb -&gt; callouts','timeline','created','2019-04-08 15:54:53'),
	(30,1,'jsondb -&gt; templates','home','updated','2019-04-09 16:11:36'),
	(31,1,'jsondb -&gt; callout-groups','4','deleted','2019-04-09 16:11:47'),
	(32,1,'jsondb -&gt; callout-groups','3','deleted','2019-04-09 16:11:50'),
	(33,1,'jsondb -&gt; callout-groups','1','updated','2019-04-09 16:11:53'),
	(34,1,'bigtree_pages','0','updated','2019-04-09 16:14:18'),
	(35,1,'jsondb -&gt; callouts','spotlight','created','2019-04-09 16:21:37'),
	(36,1,'jsondb -&gt; callouts','spotlight','updated','2019-04-09 16:24:42'),
	(37,1,'jsondb -&gt; templates','home','updated','2019-04-09 16:27:52'),
	(38,1,'jsondb -&gt; callout-groups','1','updated','2019-04-09 16:28:09'),
	(39,1,'bigtree_pages','0','updated','2019-04-09 16:36:22'),
	(40,1,'bigtree_pages','0','updated','2019-04-09 16:38:15'),
	(41,1,'btx_form_builder_forms','1','deleted','2019-04-09 16:46:30'),
	(42,1,'jsondb -&gt; settings','com.fastspot.form-builder*settings','created','2019-04-09 16:46:31'),
	(43,1,'btx_form_builder_forms','2','created','2019-04-09 16:52:41'),
	(44,1,'btx_form_builder_fields','13','created','2019-04-09 16:52:41'),
	(45,1,'btx_form_builder_fields','14','created','2019-04-09 16:52:41'),
	(46,1,'btx_form_builder_fields','15','created','2019-04-09 16:52:41'),
	(47,1,'bigtree_pages','3','updated','2019-04-09 16:54:37'),
	(48,1,'bigtree_pages','3','updated','2019-04-09 16:55:15'),
	(49,1,'bigtree_pages','3','updated','2019-04-09 16:55:24'),
	(50,1,'jsondb -&gt; callouts','button','created','2019-04-09 17:00:09'),
	(51,1,'jsondb -&gt; callout-groups','2','updated','2019-04-09 17:00:16'),
	(52,1,'bigtree_pages','2','updated','2019-04-09 17:03:21'),
	(53,1,'bigtree_pages','2','updated','2019-04-09 17:06:35'),
	(54,1,'jsondb -&gt; callouts','button','updated','2019-04-09 17:06:44'),
	(55,1,'bigtree_pages','2','updated','2019-04-10 16:28:48'),
	(56,1,'jsondb -&gt; callouts','calculator','created','2019-04-10 16:32:12'),
	(57,1,'jsondb -&gt; callout-groups','1','updated','2019-04-10 16:32:20'),
	(58,1,'bigtree_pages','2','updated','2019-04-10 16:33:11'),
	(59,1,'jsondb -&gt; callouts','calculator','updated','2019-04-10 16:33:56'),
	(60,1,'bigtree_pages','2','updated','2019-04-10 16:36:00'),
	(61,1,'bigtree_pages','1','updated','2019-04-10 16:41:32'),
	(62,1,'jsondb -&gt; callouts','directory','updated','2019-04-10 16:42:06'),
	(63,1,'btx_form_builder_forms','2','updated','2019-04-10 16:45:52'),
	(64,1,'jsondb -&gt; callouts','calculator','updated','2019-04-12 15:19:20'),
	(65,1,'bigtree_pages','2','updated','2019-04-12 15:31:30'),
	(66,1,'bigtree_pages','2','updated','2019-04-12 15:39:58'),
	(67,1,'bigtree_pages','2','updated','2019-04-12 15:55:51'),
	(68,1,'bigtree_pages','2','updated','2019-04-12 16:01:53'),
	(69,1,'bigtree_pages','2','updated','2019-04-12 16:05:13'),
	(70,1,'bigtree_pages','2','updated','2019-04-12 16:12:22'),
	(71,1,'bigtree_pages','2','updated','2019-04-12 16:26:42'),
	(72,1,'bigtree_pages','2','updated','2019-04-12 16:38:45'),
	(73,1,'bigtree_pages','2','updated','2019-04-12 16:45:20'),
	(74,1,'bigtree_pages','2','updated','2019-04-12 16:53:52'),
	(75,1,'bigtree_pages','2','updated','2019-04-12 17:03:06'),
	(76,1,'bigtree_pages','2','updated','2019-04-12 17:03:37'),
	(77,1,'bigtree_pages','2','updated','2019-04-12 17:56:46'),
	(78,1,'bigtree_pages','2','updated','2019-04-12 18:03:15'),
	(79,1,'bigtree_pages','0','updated','2019-04-12 20:04:43'),
	(80,1,'bigtree_pages','0','updated','2019-04-12 20:04:59'),
	(81,1,'bigtree_pages','0','updated','2019-04-29 23:47:38'),
	(82,1,'bigtree_pages','0','updated','2019-04-29 23:47:52'),
	(83,1,'bigtree_pages','1','updated','2019-04-29 23:54:13');

/*!40000 ALTER TABLE `bigtree_audit_trail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_caches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_caches`;

CREATE TABLE `bigtree_caches` (
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `key` varchar(10000) NOT NULL DEFAULT '',
  `value` longtext,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `identifier` (`identifier`),
  KEY `key` (`key`(1024)),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_locks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_locks`;

CREATE TABLE `bigtree_locks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned NOT NULL,
  `table` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `last_accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `table` (`table`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `bigtree_locks_ibfk_1` FOREIGN KEY (`user`) REFERENCES `bigtree_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_locks` WRITE;
/*!40000 ALTER TABLE `bigtree_locks` DISABLE KEYS */;

INSERT INTO `bigtree_locks` (`id`, `user`, `table`, `item_id`, `last_accessed`, `title`)
VALUES
	(11,1,'bigtree_pages','3','2019-04-10 16:45:28','Page');

/*!40000 ALTER TABLE `bigtree_locks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_login_attempts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_login_attempts`;

CREATE TABLE `bigtree_login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_login_bans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_login_bans`;

CREATE TABLE `bigtree_login_bans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_messages`;

CREATE TABLE `bigtree_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(11) unsigned NOT NULL,
  `recipients` text NOT NULL,
  `read_by` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `response_to` int(11) unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  CONSTRAINT `bigtree_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `bigtree_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_module_view_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_module_view_cache`;

CREATE TABLE `bigtree_module_view_cache` (
  `view` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `gbp_field` text NOT NULL,
  `published_gbp_field` text NOT NULL,
  `group_field` text NOT NULL,
  `sort_field` varchar(255) NOT NULL,
  `group_sort_field` text NOT NULL,
  `position` int(11) NOT NULL,
  `approved` char(2) NOT NULL,
  `archived` char(2) NOT NULL,
  `featured` char(2) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '',
  `pending_owner` int(11) unsigned NOT NULL,
  `column1` text NOT NULL,
  `column2` text NOT NULL,
  `column3` text NOT NULL,
  `column4` text NOT NULL,
  `column5` text NOT NULL,
  `column6` text NOT NULL,
  KEY `view` (`view`),
  KEY `group_field` (`group_field`(200)),
  KEY `group_sort_field` (`group_sort_field`(200)),
  KEY `id` (`id`),
  KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_module_view_cache` WRITE;
/*!40000 ALTER TABLE `bigtree_module_view_cache` DISABLE KEYS */;

INSERT INTO `bigtree_module_view_cache` (`view`, `id`, `gbp_field`, `published_gbp_field`, `group_field`, `sort_field`, `group_sort_field`, `position`, `approved`, `archived`, `featured`, `status`, `pending_owner`, `column1`, `column2`, `column3`, `column4`, `column5`, `column6`)
VALUES
	('views-15c0edde04c043','2','','','','','',0,'','','','l',0,'Contact Us','0','','','','');

/*!40000 ALTER TABLE `bigtree_module_view_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_open_graph
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_open_graph`;

CREATE TABLE `bigtree_open_graph` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table` varchar(255) NOT NULL DEFAULT '',
  `entry` int(11) unsigned NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_open_graph` WRITE;
/*!40000 ALTER TABLE `bigtree_open_graph` DISABLE KEYS */;

INSERT INTO `bigtree_open_graph` (`id`, `table`, `entry`, `type`, `title`, `description`, `image`)
VALUES
	(11,'btx_form_builder_fields',13,'','','',''),
	(12,'btx_form_builder_fields',14,'','','',''),
	(13,'btx_form_builder_fields',15,'','','',''),
	(16,'bigtree_pages',3,'','','',''),
	(23,'btx_form_builder_forms',2,'','','',''),
	(37,'bigtree_pages',2,'','','',''),
	(41,'bigtree_pages',0,'website','','',''),
	(42,'bigtree_pages',1,'','','','');

/*!40000 ALTER TABLE `bigtree_open_graph` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_page_revisions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_page_revisions`;

CREATE TABLE `bigtree_page_revisions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '',
  `external` varchar(255) NOT NULL DEFAULT '',
  `new_window` varchar(5) NOT NULL DEFAULT '',
  `resources` longtext NOT NULL,
  `author` int(11) unsigned NOT NULL,
  `saved` char(2) NOT NULL,
  `saved_description` text NOT NULL,
  `resource_allocation` text NOT NULL,
  `has_deleted_resources` char(2) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `page` (`page`),
  KEY `saved` (`saved`),
  CONSTRAINT `bigtree_page_revisions_ibfk_1` FOREIGN KEY (`page`) REFERENCES `bigtree_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_page_revisions` WRITE;
/*!40000 ALTER TABLE `bigtree_page_revisions` DISABLE KEYS */;

INSERT INTO `bigtree_page_revisions` (`id`, `page`, `title`, `meta_description`, `template`, `external`, `new_window`, `resources`, `author`, `saved`, `saved_description`, `resource_allocation`, `has_deleted_resources`, `updated_at`)
VALUES
	(1,1,'About','','content','','','{\n    \"page_header\": \"\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"sidebar_callouts\": [],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-04 16:41:00'),
	(2,1,'About','','content','','','{\n    \"page_header\": \"A Strong Team\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"sidebar_callouts\": [],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-04 16:56:40'),
	(3,1,'About','','content','','','{\n    \"page_header\": \"A Strong Team\",\n    \"page_intro\": \"<p>We\'re a small team of two dedicated to making the Maryland website landscape a rewarding place for our community and an engaging environment for our clients.</p>\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"sidebar_callouts\": [],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-04 16:58:31'),
	(4,0,'BigTree Site','','home','','','{}',0,'','','[]','','2019-04-04 16:11:39'),
	(5,0,'BigTree Site','','home','','','{\n    \"page_feature\": [],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"timeline\",\n            \"display_title\": \"How We Work With You\",\n            \"title\": \"How We Work With You\",\n            \"caption\": \"<p>Creating a website is a big undertaking and often misunderstood being. To make it less daunting, we work with you, step by step, for us to roll forward with a website you can be proud of.</p>\",\n            \"label\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"We Chat\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Chat\",\n                    \"caption\": \"The first step is getting to know you and us! During our chat, we\'ll listen to your ideas and turn them into an actionable plan - whether that\'s a simple design refresh or a completely new site.\"\n                },\n                {\n                    \"__internal-title\": \"We Design\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Design\",\n                    \"caption\": \"With a project plan on paper, we design a website that captures the best parts of your brand and embodies a thoughtful approach to user interfaces. We live in a digital age so feel free to suggest some tweaks here!\"\n                },\n                {\n                    \"__internal-title\": \"We Develop\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Develop\",\n                    \"caption\": \"We tailor every inch of your new design for any screen imaginable across the web. We consider smooth performance, usability, accessibility, and search engine optimization to be the paramount of web development and user engagement.\"\n                },\n                {\n                    \"__internal-title\": \"We Integrate\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Integrate\",\n                    \"caption\": \"A completely optional step but a wise one if you want to be able to manage your own content. We hop to it and integrate your website into Bigtree Content Management System, an easy to use powerhouse of a CMS.\"\n                },\n                {\n                    \"__internal-title\": \"We Host\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Host\",\n                    \"caption\": \"Your site has to live somewhere, right? Whether you\'re currently hosting your website or have yet to host a website, we\'ll work with you to get your site up and running.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-09 16:14:18'),
	(6,0,'BigTree Site','','home','','','{\n    \"full_width_callouts\": [\n        {\n            \"type\": \"spotlight\",\n            \"display_title\": \"\",\n            \"title\": \"We Build Websites\",\n            \"description\": \"Corgi Butt is a small team of two focused on building stronger Maryland websites through our client\'s engagement, well structured designs, and leading class development practices.\",\n            \"image\": \"\",\n            \"video\": \"https://www.youtube.com/watch?v=2S24-y0Ij3Y\"\n        },\n        {\n            \"type\": \"timeline\",\n            \"display_title\": \"How We Work With You\",\n            \"title\": \"How We Work With You\",\n            \"caption\": \"<p>Creating a website is a big undertaking and often misunderstood being. To make it less daunting, we work with you, step by step, for us to roll forward with a website you can be proud of.</p>\",\n            \"label\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"We Chat\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Chat\",\n                    \"caption\": \"The first step is getting to know you and us! During our chat, we\'ll listen to your ideas and turn them into an actionable plan - whether that\'s a simple design refresh or a completely new site.\"\n                },\n                {\n                    \"__internal-title\": \"We Design\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Design\",\n                    \"caption\": \"With a project plan on paper, we design a website that captures the best parts of your brand and embodies a thoughtful approach to user interfaces. We live in a digital age so feel free to suggest some tweaks here!\"\n                },\n                {\n                    \"__internal-title\": \"We Develop\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Develop\",\n                    \"caption\": \"We tailor every inch of your new design for any screen imaginable across the web. We consider smooth performance, usability, accessibility, and search engine optimization to be the paramount of web development and user engagement.\"\n                },\n                {\n                    \"__internal-title\": \"We Integrate\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Integrate\",\n                    \"caption\": \"A completely optional step but a wise one if you want to be able to manage your own content. We hop to it and integrate your website into Bigtree Content Management System, an easy to use powerhouse of a CMS.\"\n                },\n                {\n                    \"__internal-title\": \"We Host\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Host\",\n                    \"caption\": \"Your site has to live somewhere, right? Whether you\'re currently hosting your website or have yet to host a website, we\'ll work with you to get your site up and running.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-09 16:36:22'),
	(7,3,'Contact','','content','','','{\n    \"page_header\": \"\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"sidebar_callouts\": [],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-04 16:41:49'),
	(8,3,'Contact','','com.fastspot.form-builder*btx-form-builder','','','{\n    \"page_header\": \"Contact Us\",\n    \"page_content\": \"\",\n    \"form\": {\n        \"form\": \"2\",\n        \"email_field\": \"Email Address\",\n        \"email_subject\": \"\",\n        \"email_template\": \"\"\n    },\n    \"emails\": \"mimoduo@gmail.com\",\n    \"thank_you_page_header\": \"\",\n    \"thank_you_page_content\": \"\"\n}',1,'','','[]','','2019-04-09 16:54:37'),
	(9,3,'Contact','','com.fastspot.form-builder*btx-form-builder','','','{\n    \"page_header\": \"\",\n    \"page_content\": \"\",\n    \"form\": {\n        \"form\": \"2\",\n        \"email_field\": \"Email Address\",\n        \"email_subject\": \"\",\n        \"email_template\": \"\"\n    },\n    \"emails\": \"mimoduo@gmail.com\",\n    \"thank_you_page_header\": \"\",\n    \"thank_you_page_content\": \"\"\n}',1,'','','[]','','2019-04-09 16:55:15'),
	(10,2,'Pricing','','content','','','{\n    \"page_header\": \"\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"sidebar_callouts\": [],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-04 16:41:09'),
	(11,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"<p>Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-09 17:03:21'),
	(12,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"<p>Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-09 17:06:35'),
	(13,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": []\n}',1,'','','[]','','2019-04-10 16:28:48'),
	(14,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-10 16:33:11'),
	(15,1,'About','','content','','','{\n    \"page_header\": \"A Strong Team\",\n    \"page_intro\": \"<p>We\'re a small team of two dedicated to making the Maryland website landscape a rewarding place for our community and an engaging environment for our clients.</p>\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"directory\",\n            \"display_title\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/monsterhunterrath.jpg\",\n                    \"name\": \"Bryan Stoner\",\n                    \"title\": \"Founder, Designer, Developer\",\n                    \"description\": \"Ever since I was a kid I drew crazy monsters, robot fortresses, and comic book characters. I\'d even get myself into some sweet lego, kinect, and gundam model kits. Building websites stuck like crazy, just as my pasttimes did, when I started my career 7 years ago.\"\n                },\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"name\": \"Brandon Choi\",\n                    \"title\": \"Developer\",\n                    \"description\": \"Ever since I was a kid i was into martial arts, videogames, and superheroes. I received my black belt in Taekwondo during high school and my black belt in Jujitsu in college. I graduated from UMBC in mechanical engineering and I\'ve been studying web development for the past couple of years.\"\n                },\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/monsterhunter.jpeg\",\n                    \"name\": \"Curry\",\n                    \"title\": \"Champion Corgi\",\n                    \"description\": \"I am the ruler of all the fur in the world. Fluff master at heart, goofball deep down. I like to eat Bryan\'s socks, run around in circles, and swipe any popcorn that hits the floor.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-08 15:23:22'),
	(16,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-10 16:36:00'),
	(17,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/media-gallery.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 15:31:30'),
	(18,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 15:39:58'),
	(19,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/topic-row.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 15:55:51'),
	(20,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/topic-row-2.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 16:01:53'),
	(21,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 16:05:13'),
	(22,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 16:12:22'),
	(23,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 16:26:42'),
	(24,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/event-list.png\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 16:38:45'),
	(25,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/event-list.png\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/facts-stats.png\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 16:45:20'),
	(26,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/event-list.png\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/facts-stats.png\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/google-search.png\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 16:53:52'),
	(27,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/event-list.png\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/facts-stats.png\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/google-search.png\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/media-callout.png\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 17:03:06'),
	(28,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/event-list.png\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/facts-stats.png\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/google-search.png\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"3\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-callout.png\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"3\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 17:03:37'),
	(29,2,'Pricing','','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/event-list.png\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/facts-stats.png\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/google-search.png\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"3\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-callout.png\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"3\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/tabs.png\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 17:56:46'),
	(30,0,'BigTree Site','','home','','','{\n    \"full_width_callouts\": [\n        {\n            \"type\": \"spotlight\",\n            \"display_title\": \"\",\n            \"title\": \"We Build Websites\",\n            \"description\": \"Corgi Butt is a small team of two focused on building stronger Maryland websites through our client\'s engagement, well structured designs, and leading class development practices.\",\n            \"image\": \"{staticroot}files/callouts/dsc00133.jpg\",\n            \"video\": \"https://www.youtube.com/watch?v=2S24-y0Ij3Y\"\n        },\n        {\n            \"type\": \"timeline\",\n            \"display_title\": \"How We Work With You\",\n            \"title\": \"How We Work With You\",\n            \"caption\": \"<p>Creating a website is a big undertaking and often misunderstood being. To make it less daunting, we work with you, step by step, for us to roll forward with a website you can be proud of.</p>\",\n            \"label\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"We Chat\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Chat\",\n                    \"caption\": \"The first step is getting to know you and us! During our chat, we\'ll listen to your ideas and turn them into an actionable plan - whether that\'s a simple design refresh or a completely new site.\"\n                },\n                {\n                    \"__internal-title\": \"We Design\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Design\",\n                    \"caption\": \"With a project plan on paper, we design a website that captures the best parts of your brand and embodies a thoughtful approach to user interfaces. We live in a digital age so feel free to suggest some tweaks here!\"\n                },\n                {\n                    \"__internal-title\": \"We Develop\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Develop\",\n                    \"caption\": \"We tailor every inch of your new design for any screen imaginable across the web. We consider smooth performance, usability, accessibility, and search engine optimization to be the paramount of web development and user engagement.\"\n                },\n                {\n                    \"__internal-title\": \"We Integrate\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Integrate\",\n                    \"caption\": \"A completely optional step but a wise one if you want to be able to manage your own content. We hop to it and integrate your website into Bigtree Content Management System, an easy to use powerhouse of a CMS.\"\n                },\n                {\n                    \"__internal-title\": \"We Host\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Host\",\n                    \"caption\": \"Your site has to live somewhere, right? Whether you\'re currently hosting your website or have yet to host a website, we\'ll work with you to get your site up and running.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-09 16:38:15'),
	(31,0,'BigTree Site','','home','','','{\n    \"full_width_callouts\": [\n        {\n            \"type\": \"spotlight\",\n            \"display_title\": \"\",\n            \"title\": \"We Build Family\",\n            \"description\": \"Corgi Butt is a small team of two focused on building stronger Maryland websites through our client\'s engagement, well structured designs, and leading class development practices.\",\n            \"image\": \"{wwwroot}files/callouts/dsc00133.jpg\",\n            \"video\": \"https://www.youtube.com/watch?v=2S24-y0Ij3Y\"\n        },\n        {\n            \"type\": \"timeline\",\n            \"display_title\": \"How We Work With You\",\n            \"title\": \"How We Work With You\",\n            \"caption\": \"<p>Creating a website is a big undertaking and often misunderstood being. To make it less daunting, we work with you, step by step, for us to roll forward with a website you can be proud of.</p>\",\n            \"label\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"We Chat\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Chat\",\n                    \"caption\": \"The first step is getting to know you and us! During our chat, we\'ll listen to your ideas and turn them into an actionable plan - whether that\'s a simple design refresh or a completely new site.\"\n                },\n                {\n                    \"__internal-title\": \"We Design\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Design\",\n                    \"caption\": \"With a project plan on paper, we design a website that captures the best parts of your brand and embodies a thoughtful approach to user interfaces. We live in a digital age so feel free to suggest some tweaks here!\"\n                },\n                {\n                    \"__internal-title\": \"We Develop\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Develop\",\n                    \"caption\": \"We tailor every inch of your new design for any screen imaginable across the web. We consider smooth performance, usability, accessibility, and search engine optimization to be the paramount of web development and user engagement.\"\n                },\n                {\n                    \"__internal-title\": \"We Integrate\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Integrate\",\n                    \"caption\": \"A completely optional step but a wise one if you want to be able to manage your own content. We hop to it and integrate your website into Bigtree Content Management System, an easy to use powerhouse of a CMS.\"\n                },\n                {\n                    \"__internal-title\": \"We Host\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Host\",\n                    \"caption\": \"Your site has to live somewhere, right? Whether you\'re currently hosting your website or have yet to host a website, we\'ll work with you to get your site up and running.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 20:04:43'),
	(32,0,'BigTree Site','','home','','','{\n    \"full_width_callouts\": [\n        {\n            \"type\": \"spotlight\",\n            \"display_title\": \"\",\n            \"title\": \"We Build Websites\",\n            \"description\": \"Corgi Butt is a small team of two focused on building stronger Maryland websites through our client\'s engagement, well structured designs, and leading class development practices.\",\n            \"image\": \"{wwwroot}files/callouts/dsc00133.jpg\",\n            \"video\": \"https://www.youtube.com/watch?v=2S24-y0Ij3Y\"\n        },\n        {\n            \"type\": \"timeline\",\n            \"display_title\": \"How We Work With You\",\n            \"title\": \"How We Work With You\",\n            \"caption\": \"<p>Creating a website is a big undertaking and often misunderstood being. To make it less daunting, we work with you, step by step, for us to roll forward with a website you can be proud of.</p>\",\n            \"label\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"We Chat\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Chat\",\n                    \"caption\": \"The first step is getting to know you and us! During our chat, we\'ll listen to your ideas and turn them into an actionable plan - whether that\'s a simple design refresh or a completely new site.\"\n                },\n                {\n                    \"__internal-title\": \"We Design\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Design\",\n                    \"caption\": \"With a project plan on paper, we design a website that captures the best parts of your brand and embodies a thoughtful approach to user interfaces. We live in a digital age so feel free to suggest some tweaks here!\"\n                },\n                {\n                    \"__internal-title\": \"We Develop\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Develop\",\n                    \"caption\": \"We tailor every inch of your new design for any screen imaginable across the web. We consider smooth performance, usability, accessibility, and search engine optimization to be the paramount of web development and user engagement.\"\n                },\n                {\n                    \"__internal-title\": \"We Integrate\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Integrate\",\n                    \"caption\": \"A completely optional step but a wise one if you want to be able to manage your own content. We hop to it and integrate your website into Bigtree Content Management System, an easy to use powerhouse of a CMS.\"\n                },\n                {\n                    \"__internal-title\": \"We Host\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Host\",\n                    \"caption\": \"Your site has to live somewhere, right? Whether you\'re currently hosting your website or have yet to host a website, we\'ll work with you to get your site up and running.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-12 20:04:59'),
	(33,0,'BigTree Site','','home','','','{\n    \"full_width_callouts\": [\n        {\n            \"type\": \"spotlight\",\n            \"display_title\": \"\",\n            \"title\": \"We Build Websites\",\n            \"description\": \"Corgi Butt is a small team of two focused on building stronger Maryland websites through our client\'s engagement, well structured designs, and leading class development practices.\",\n            \"image\": \"{wwwroot}files/callouts/dsc00133.jpg\",\n            \"video\": \"\"\n        },\n        {\n            \"type\": \"timeline\",\n            \"display_title\": \"How We Work With You\",\n            \"title\": \"How We Work With You\",\n            \"caption\": \"<p>Creating a website is a big undertaking and often misunderstood being. To make it less daunting, we work with you, step by step, for us to roll forward with a website you can be proud of.</p>\",\n            \"label\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"We Chat\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Chat\",\n                    \"caption\": \"The first step is getting to know you and us! During our chat, we\'ll listen to your ideas and turn them into an actionable plan - whether that\'s a simple design refresh or a completely new site.\"\n                },\n                {\n                    \"__internal-title\": \"We Design\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Design\",\n                    \"caption\": \"With a project plan on paper, we design a website that captures the best parts of your brand and embodies a thoughtful approach to user interfaces. We live in a digital age so feel free to suggest some tweaks here!\"\n                },\n                {\n                    \"__internal-title\": \"We Develop\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Develop\",\n                    \"caption\": \"We tailor every inch of your new design for any screen imaginable across the web. We consider smooth performance, usability, accessibility, and search engine optimization to be the paramount of web development and user engagement.\"\n                },\n                {\n                    \"__internal-title\": \"We Integrate\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Integrate\",\n                    \"caption\": \"A completely optional step but a wise one if you want to be able to manage your own content. We hop to it and integrate your website into Bigtree Content Management System, an easy to use powerhouse of a CMS.\"\n                },\n                {\n                    \"__internal-title\": \"We Host\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Host\",\n                    \"caption\": \"Your site has to live somewhere, right? Whether you\'re currently hosting your website or have yet to host a website, we\'ll work with you to get your site up and running.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-29 23:47:38'),
	(34,1,'About','','content','','','{\n    \"page_header\": \"A Strong Team\",\n    \"page_intro\": \"<p>We\'re a small team of two dedicated to making the Maryland website landscape a rewarding place for our community and an engaging environment for our clients.</p>\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"directory\",\n            \"display_title\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/monsterhunterrath.jpg\",\n                    \"name\": \"Bryan Stoner\",\n                    \"title\": \"Founder, Designer, Developer\",\n                    \"description\": \"Ever since I was a kid I drew crazy monsters, robot fortresses, and comic book characters. I\'d even get myself into some sweet lego, kinect, and gundam model kits. Building websites stuck like crazy, just as my pasttimes did, when I started my career 7 years ago.\"\n                },\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"name\": \"Brandon Choi\",\n                    \"title\": \"Developer\",\n                    \"description\": \"Ever since I was a kid i was into martial arts, videogames, and superheroes. I received my black belt in Taekwondo during high school and my black belt in Jujitsu in college. I graduated from UMBC in mechanical engineering and I\'ve been studying web development for the past couple of years.\"\n                },\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/dsc00035.jpg\",\n                    \"name\": \"Curry\",\n                    \"title\": \"Champion Corgi\",\n                    \"description\": \"I am the ruler of all the fur in the world. Fluff master at heart, goofball deep down. I like to eat Bryan\'s socks, run around in circles, and swipe any popcorn that hits the floor.\"\n                }\n            ]\n        }\n    ]\n}',1,'','','[]','','2019-04-10 16:41:32');

/*!40000 ALTER TABLE `bigtree_page_revisions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_pages`;

CREATE TABLE `bigtree_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `trunk` char(2) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `in_nav` varchar(5) NOT NULL,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `route` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `open_graph` longtext,
  `seo_invisible` char(2) NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '',
  `external` varchar(255) NOT NULL DEFAULT '',
  `new_window` varchar(5) NOT NULL DEFAULT '',
  `resources` longtext NOT NULL,
  `archived` char(2) NOT NULL,
  `archived_inherited` char(2) NOT NULL,
  `publish_at` datetime DEFAULT NULL,
  `expire_at` datetime DEFAULT NULL,
  `max_age` int(11) unsigned NOT NULL,
  `last_edited_by` int(11) unsigned NOT NULL,
  `ga_page_views` int(11) unsigned NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `in_nav` (`in_nav`),
  KEY `route` (`route`),
  KEY `path` (`path`(200)),
  KEY `publish_at` (`publish_at`),
  KEY `expire_at` (`expire_at`),
  KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_pages` WRITE;
/*!40000 ALTER TABLE `bigtree_pages` DISABLE KEYS */;

INSERT INTO `bigtree_pages` (`id`, `trunk`, `parent`, `in_nav`, `nav_title`, `route`, `path`, `title`, `meta_keywords`, `meta_description`, `open_graph`, `seo_invisible`, `template`, `external`, `new_window`, `resources`, `archived`, `archived_inherited`, `publish_at`, `expire_at`, `max_age`, `last_edited_by`, `ga_page_views`, `position`, `created_at`, `updated_at`)
VALUES
	(0,'',-1,'on','BigTree Site','','','BigTree Site','','',NULL,'','home','','','{\n    \"full_width_callouts\": [\n        {\n            \"type\": \"spotlight\",\n            \"display_title\": \"\",\n            \"title\": \"We Build Websites\",\n            \"description\": \"Corgi Butt is a small team of two focused on building stronger Maryland websites through our client\'s engagement, well structured designs, and leading class development practices.\",\n            \"image\": \"{wwwroot}files/callouts/dsc00133.jpg\",\n            \"video\": \"\"\n        },\n        {\n            \"type\": \"timeline\",\n            \"display_title\": \"How We Work With You\",\n            \"title\": \"How We Work With You\",\n            \"caption\": \"<p>Creating a website is a big undertaking and often misunderstood being. To make it less daunting, we work with you, step by step, for us to roll forward with a website you can be proud of.</p>\",\n            \"label\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"We Chat\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Chat\",\n                    \"caption\": \"The first step is getting to know you and us! During our chat, we\'ll listen to your ideas and turn them into an actionable plan - whether that\'s a simple design refresh or a completely new site.\"\n                },\n                {\n                    \"__internal-title\": \"We Design\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Design\",\n                    \"caption\": \"With a project plan on paper, we design a website that captures the best parts of your brand and embodies a thoughtful approach to user interfaces. We live in a digital age so feel free to suggest some tweaks here!\"\n                },\n                {\n                    \"__internal-title\": \"We Develop\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Develop\",\n                    \"caption\": \"We tailor every inch of your new design for any screen imaginable across the web. We consider smooth performance, usability, accessibility, and search engine optimization to be the paramount of web development and user engagement.\"\n                },\n                {\n                    \"__internal-title\": \"We Integrate\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Integrate\",\n                    \"caption\": \"A completely optional step but a wise one if you want to be able to manage your own content. We hop to it and integrate your website into Bigtree Content Management System, an easy to use powerhouse of a CMS.\"\n                },\n                {\n                    \"__internal-title\": \"We Host\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"title\": \"We Host\",\n                    \"caption\": \"Your site has to live somewhere, right? Whether you\'re currently hosting your website or have yet to host a website, we\'ll work with you to get your site up and running.\"\n                }\n            ]\n        }\n    ]\n}','','',NULL,NULL,0,1,0,0,'2019-04-04 16:11:39','2019-04-29 23:47:52'),
	(1,'',0,'on','About','about','about','About','','',NULL,'','content','','','{\n    \"page_header\": \"A Strong Team\",\n    \"page_intro\": \"<p>We\'re a small team of two dedicated to making the Maryland website landscape a rewarding place for our community and an engaging environment for our clients.</p>\",\n    \"page_content\": \"\",\n    \"in_content_callouts\": [],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"directory\",\n            \"display_title\": \"\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Bryan Stoner\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/download-20170205-154715.jpg\",\n                    \"name\": \"Bryan Stoner\",\n                    \"title\": \"Founder, Designer, Developer\",\n                    \"description\": \"Ever since I was a kid I drew crazy monsters, robot fortresses, and comic book characters. I\'d even get myself into some sweet lego, kinect, and gundam model kits. Building websites stuck like crazy, just as my pasttimes did, when I started my career 7 years ago.\"\n                },\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"\",\n                    \"name\": \"Brandon Choi\",\n                    \"title\": \"Developer\",\n                    \"description\": \"Ever since I was a kid i was into martial arts, videogames, and superheroes. I received my black belt in Taekwondo during high school and my black belt in Jujitsu in college. I graduated from UMBC in mechanical engineering and I\'ve been studying web development for the past couple of years.\"\n                },\n                {\n                    \"__internal-title\": \"\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/dsc00035.jpg\",\n                    \"name\": \"Curry\",\n                    \"title\": \"Champion Corgi\",\n                    \"description\": \"I am the ruler of all the fur in the world. Fluff master at heart, goofball deep down. I like to eat Bryan\'s socks, run around in circles, and swipe any popcorn that hits the floor.\"\n                }\n            ]\n        }\n    ]\n}','','',NULL,NULL,0,1,0,0,'2019-04-04 16:41:00','2019-04-29 23:54:13'),
	(2,'',0,'on','Pricing','pricing','pricing','Pricing','','',NULL,'','content','','','{\n    \"page_header\": \"Pricing the Easy Way\",\n    \"page_intro\": \"\",\n    \"page_content\": \"<p class=\\\"intro\\\">Picking a website development team is a hard choice to make. Since price may be the ultimate deciding factor, <a href=\\\"#calculator\\\">we\'ve made a calculator</a> to help you estimate how much your site might cost with us.</p>\\r\\n<p>We charge <strong>$80 an hour</strong> with <strong>50% of our personalized estimate for you paid upfront.</strong></p>\",\n    \"in_content_callouts\": [\n        {\n            \"type\": \"button\",\n            \"display_title\": \"\",\n            \"text\": \"Get a Personalized Quote\"\n        }\n    ],\n    \"full_width_callouts\": [\n        {\n            \"type\": \"calculator\",\n            \"display_title\": \"\",\n            \"caption\": \"This estimate begins with a personalized design, leading class development, and simple hosting all bundled into a basic website.\",\n            \"items\": [\n                {\n                    \"__internal-title\": \"Media Gallery\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-gallery-2.png\",\n                    \"label\": \"Media Gallery\",\n                    \"caption\": \"An organized way to display photos &amp; videos - usually arranged within a slideshow. Good for showcasing products, events, stories, etc.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Topic Row\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/topic-row-3.png\",\n                    \"label\": \"Topic Row\",\n                    \"caption\": \"A custom assortment of page introductions listed one after the other.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Link List\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/link-list.png\",\n                    \"label\": \"Link List\",\n                    \"caption\": \"An organized and decorated list of links to help call attention to groups of similar pages.\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"__internal-title\": \"News\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/news-list.png\",\n                    \"label\": \"News\",\n                    \"caption\": \"A listing of important stories &amp; announcements.\",\n                    \"value\": \"4\"\n                },\n                {\n                    \"__internal-title\": \"Events\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/event-list.png\",\n                    \"label\": \"Events\",\n                    \"caption\": \"What\'s coming up? A big list of promoted events.\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"__internal-title\": \"Facts & Stats\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/facts-stats.png\",\n                    \"label\": \"Facts &amp; Stats\",\n                    \"caption\": \"\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Google Search\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/google-search.png\",\n                    \"label\": \"Google Search\",\n                    \"caption\": \"A page dedicated to searching through your site using google\'s custom search engine. Everyone loves to search!\",\n                    \"value\": \"3\"\n                },\n                {\n                    \"__internal-title\": \"Media Callout\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/media-callout.png\",\n                    \"label\": \"Media Callout\",\n                    \"caption\": \"An entire section dedicated to displaying and describing an important idea.\",\n                    \"value\": \"3\"\n                },\n                {\n                    \"__internal-title\": \"Tabs\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{wwwroot}files/pages/tabs.png\",\n                    \"label\": \"Tabs\",\n                    \"caption\": \"Grouped buttons that allow switching between related content.\",\n                    \"value\": \"2\"\n                },\n                {\n                    \"__internal-title\": \"Testimonials\",\n                    \"__internal-subtitle\": \"\",\n                    \"image\": \"{staticroot}files/pages/testimonial.png\",\n                    \"label\": \"Testimonials\",\n                    \"caption\": \"A personalized selection of stories showing the positive relationships between you and your viewers.\",\n                    \"value\": \"2\"\n                }\n            ]\n        }\n    ]\n}','','',NULL,NULL,0,1,0,0,'2019-04-04 16:41:09','2019-04-12 18:03:15'),
	(3,'',0,'on','Contact','contact','contact','Contact','','',NULL,'','com.fastspot.form-builder*btx-form-builder','','','{\n    \"page_header\": \"Contact Us\",\n    \"page_content\": \"\",\n    \"form\": {\n        \"form\": \"2\",\n        \"email_field\": \"Email Address\",\n        \"email_subject\": \"\",\n        \"email_template\": \"\"\n    },\n    \"emails\": \"mimoduo@gmail.com\",\n    \"thank_you_page_header\": \"\",\n    \"thank_you_page_content\": \"\"\n}','','',NULL,NULL,0,1,0,0,'2019-04-04 16:41:49','2019-04-09 16:55:24');

/*!40000 ALTER TABLE `bigtree_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_pending_changes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_pending_changes`;

CREATE TABLE `bigtree_pending_changes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  `changes` longtext NOT NULL,
  `mtm_changes` longtext NOT NULL,
  `tags_changes` longtext NOT NULL,
  `open_graph_changes` longtext NOT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `type` varchar(15) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `pending_page_parent` int(11) unsigned NOT NULL,
  `publish_hook` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `item_id` (`item_id`),
  KEY `table` (`table`),
  KEY `pending_page_parent` (`pending_page_parent`),
  CONSTRAINT `bigtree_pending_changes_ibfk_1` FOREIGN KEY (`user`) REFERENCES `bigtree_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_resource_allocation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_resource_allocation`;

CREATE TABLE `bigtree_resource_allocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL,
  `entry` varchar(255) DEFAULT NULL,
  `resource` int(11) unsigned DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource` (`resource`),
  KEY `updated_at` (`updated_at`),
  CONSTRAINT `bigtree_resource_allocation_ibfk_1` FOREIGN KEY (`resource`) REFERENCES `bigtree_resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_resource_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_resource_folders`;

CREATE TABLE `bigtree_resource_folders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_resources`;

CREATE TABLE `bigtree_resources` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT '',
  `folder` int(11) unsigned DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `md5` varchar(255) DEFAULT '',
  `date` datetime NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `mimetype` varchar(255) DEFAULT '',
  `metadata` longtext NOT NULL,
  `is_image` char(2) NOT NULL DEFAULT '',
  `is_video` char(2) NOT NULL DEFAULT '',
  `height` int(11) unsigned DEFAULT '0',
  `width` int(11) unsigned DEFAULT '0',
  `size` int(11) unsigned DEFAULT NULL,
  `crops` text NOT NULL,
  `thumbs` text NOT NULL,
  `video_data` longtext,
  `last_updated` datetime DEFAULT NULL,
  `file_last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `folder` (`folder`),
  CONSTRAINT `bigtree_resources_ibfk_1` FOREIGN KEY (`folder`) REFERENCES `bigtree_resource_folders` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_resources` WRITE;
/*!40000 ALTER TABLE `bigtree_resources` DISABLE KEYS */;

INSERT INTO `bigtree_resources` (`id`, `location`, `folder`, `file`, `md5`, `date`, `name`, `type`, `mimetype`, `metadata`, `is_image`, `is_video`, `height`, `width`, `size`, `crops`, `thumbs`, `video_data`, `last_updated`, `file_last_updated`)
VALUES
	(1,'local',NULL,'{staticroot}files/resources/monsterhunter.jpeg','b7dc72dc87e28fbfdc571e976fa5da5f','2019-04-08 15:19:45','monsterhunter.jpeg','jpeg','image/jpeg','[]','on','',1080,1920,554588,'{\n    \"ultrawide-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"617\"\n    },\n    \"ultrawide-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"129\"\n    },\n    \"ultrawide-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"214\"\n    },\n    \"ultrawide-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"317\"\n    },\n    \"ultrawide-med-\": {\n        \"width\": \"980\",\n        \"height\": \"420\"\n    },\n    \"ultrawide-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"523\"\n    },\n    \"wide-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"810\"\n    },\n    \"wide-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"169\"\n    },\n    \"wide-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"281\"\n    },\n    \"wide-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"416\"\n    },\n    \"wide-med-\": {\n        \"width\": \"980\",\n        \"height\": \"551\"\n    },\n    \"wide-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"686\"\n    },\n    \"full-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"1080\"\n    },\n    \"full-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"225\"\n    },\n    \"full-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"375\"\n    },\n    \"full-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"555\"\n    },\n    \"full-med-\": {\n        \"width\": \"980\",\n        \"height\": \"735\"\n    },\n    \"full-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"915\"\n    },\n    \"square-med-\": {\n        \"width\": \"980\",\n        \"height\": \"980\"\n    },\n    \"square-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"300\"\n    },\n    \"square-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"500\"\n    },\n    \"square-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"740\"\n    },\n    \"classic-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"960\"\n    },\n    \"classic-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"200\"\n    },\n    \"classic-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"333\"\n    },\n    \"classic-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"493\"\n    },\n    \"classic-med-\": {\n        \"width\": \"980\",\n        \"height\": \"653\"\n    },\n    \"classic-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"813\"\n    },\n    \"portrait-full-med-\": {\n        \"width\": \"735\",\n        \"height\": \"980\"\n    },\n    \"portrait-full-xxsml-\": {\n        \"width\": \"225\",\n        \"height\": \"300\"\n    },\n    \"portrait-full-xsml-\": {\n        \"width\": \"375\",\n        \"height\": \"500\"\n    },\n    \"portrait-full-sml-\": {\n        \"width\": \"555\",\n        \"height\": \"740\"\n    },\n    \"portrait-classic-med-\": {\n        \"width\": \"654\",\n        \"height\": \"980\"\n    },\n    \"portrait-classic-xxsml-\": {\n        \"width\": \"200\",\n        \"height\": \"300\"\n    },\n    \"portrait-classic-xsml-\": {\n        \"width\": \"334\",\n        \"height\": \"500\"\n    },\n    \"portrait-classic-sml-\": {\n        \"width\": \"494\",\n        \"height\": \"740\"\n    }\n}','[]','[]',NULL,NULL),
	(2,'local',NULL,'{staticroot}files/resources/monsterhuntergante.jpg','ceb59de7edbf5d021866ea520b57e9fd','2019-04-08 15:19:45','monsterhuntergante.jpg','jpg','image/jpeg','[]','on','',1080,1920,552297,'{\n    \"ultrawide-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"617\"\n    },\n    \"ultrawide-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"129\"\n    },\n    \"ultrawide-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"214\"\n    },\n    \"ultrawide-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"317\"\n    },\n    \"ultrawide-med-\": {\n        \"width\": \"980\",\n        \"height\": \"420\"\n    },\n    \"ultrawide-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"523\"\n    },\n    \"wide-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"810\"\n    },\n    \"wide-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"169\"\n    },\n    \"wide-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"281\"\n    },\n    \"wide-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"416\"\n    },\n    \"wide-med-\": {\n        \"width\": \"980\",\n        \"height\": \"551\"\n    },\n    \"wide-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"686\"\n    },\n    \"full-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"1080\"\n    },\n    \"full-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"225\"\n    },\n    \"full-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"375\"\n    },\n    \"full-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"555\"\n    },\n    \"full-med-\": {\n        \"width\": \"980\",\n        \"height\": \"735\"\n    },\n    \"full-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"915\"\n    },\n    \"square-med-\": {\n        \"width\": \"980\",\n        \"height\": \"980\"\n    },\n    \"square-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"300\"\n    },\n    \"square-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"500\"\n    },\n    \"square-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"740\"\n    },\n    \"classic-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"960\"\n    },\n    \"classic-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"200\"\n    },\n    \"classic-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"333\"\n    },\n    \"classic-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"493\"\n    },\n    \"classic-med-\": {\n        \"width\": \"980\",\n        \"height\": \"653\"\n    },\n    \"classic-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"813\"\n    },\n    \"portrait-full-med-\": {\n        \"width\": \"735\",\n        \"height\": \"980\"\n    },\n    \"portrait-full-xxsml-\": {\n        \"width\": \"225\",\n        \"height\": \"300\"\n    },\n    \"portrait-full-xsml-\": {\n        \"width\": \"375\",\n        \"height\": \"500\"\n    },\n    \"portrait-full-sml-\": {\n        \"width\": \"555\",\n        \"height\": \"740\"\n    },\n    \"portrait-classic-med-\": {\n        \"width\": \"654\",\n        \"height\": \"980\"\n    },\n    \"portrait-classic-xxsml-\": {\n        \"width\": \"200\",\n        \"height\": \"300\"\n    },\n    \"portrait-classic-xsml-\": {\n        \"width\": \"334\",\n        \"height\": \"500\"\n    },\n    \"portrait-classic-sml-\": {\n        \"width\": \"494\",\n        \"height\": \"740\"\n    }\n}','[]','[]',NULL,NULL),
	(3,'local',NULL,'{staticroot}files/resources/monsterhunterrath.jpg','cb8632cfee4381d53f8f30edda7a17eb','2019-04-08 15:19:49','monsterhunterrath.jpg','jpg','image/jpeg','[]','on','',1688,3000,1324189,'{\n    \"ultrawide-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"617\"\n    },\n    \"ultrawide-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"129\"\n    },\n    \"ultrawide-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"214\"\n    },\n    \"ultrawide-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"317\"\n    },\n    \"ultrawide-med-\": {\n        \"width\": \"980\",\n        \"height\": \"420\"\n    },\n    \"ultrawide-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"523\"\n    },\n    \"wide-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"810\"\n    },\n    \"wide-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"169\"\n    },\n    \"wide-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"281\"\n    },\n    \"wide-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"416\"\n    },\n    \"wide-med-\": {\n        \"width\": \"980\",\n        \"height\": \"551\"\n    },\n    \"wide-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"686\"\n    },\n    \"full-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"1080\"\n    },\n    \"full-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"225\"\n    },\n    \"full-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"375\"\n    },\n    \"full-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"555\"\n    },\n    \"full-med-\": {\n        \"width\": \"980\",\n        \"height\": \"735\"\n    },\n    \"full-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"915\"\n    },\n    \"square-med-\": {\n        \"width\": \"980\",\n        \"height\": \"980\"\n    },\n    \"square-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"300\"\n    },\n    \"square-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"500\"\n    },\n    \"square-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"740\"\n    },\n    \"classic-xlrg-\": {\n        \"width\": \"1440\",\n        \"height\": \"960\"\n    },\n    \"classic-xxsml-\": {\n        \"width\": \"300\",\n        \"height\": \"200\"\n    },\n    \"classic-xsml-\": {\n        \"width\": \"500\",\n        \"height\": \"333\"\n    },\n    \"classic-sml-\": {\n        \"width\": \"740\",\n        \"height\": \"493\"\n    },\n    \"classic-med-\": {\n        \"width\": \"980\",\n        \"height\": \"653\"\n    },\n    \"classic-lrg-\": {\n        \"width\": \"1220\",\n        \"height\": \"813\"\n    },\n    \"portrait-full-med-\": {\n        \"width\": \"735\",\n        \"height\": \"980\"\n    },\n    \"portrait-full-xxsml-\": {\n        \"width\": \"225\",\n        \"height\": \"300\"\n    },\n    \"portrait-full-xsml-\": {\n        \"width\": \"375\",\n        \"height\": \"500\"\n    },\n    \"portrait-full-sml-\": {\n        \"width\": \"555\",\n        \"height\": \"740\"\n    },\n    \"portrait-classic-med-\": {\n        \"width\": \"654\",\n        \"height\": \"980\"\n    },\n    \"portrait-classic-xxsml-\": {\n        \"width\": \"200\",\n        \"height\": \"300\"\n    },\n    \"portrait-classic-xsml-\": {\n        \"width\": \"334\",\n        \"height\": \"500\"\n    },\n    \"portrait-classic-sml-\": {\n        \"width\": \"494\",\n        \"height\": \"740\"\n    }\n}','[]','[]',NULL,NULL);

/*!40000 ALTER TABLE `bigtree_resources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_route_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_route_history`;

CREATE TABLE `bigtree_route_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `old_route` varchar(255) NOT NULL,
  `new_route` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `old_route` (`old_route`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_sessions`;

CREATE TABLE `bigtree_sessions` (
  `id` varchar(32) NOT NULL,
  `last_accessed` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` text NOT NULL,
  `data` longtext,
  `is_login` char(2) NOT NULL DEFAULT '',
  `logged_in_user` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_logged_in_user` (`logged_in_user`),
  CONSTRAINT `fk_logged_in_user` FOREIGN KEY (`logged_in_user`) REFERENCES `bigtree_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_sessions` WRITE;
/*!40000 ALTER TABLE `bigtree_sessions` DISABLE KEYS */;

INSERT INTO `bigtree_sessions` (`id`, `last_accessed`, `ip_address`, `user_agent`, `data`, `is_login`, `logged_in_user`)
VALUES
	('4bpbo30c5oth1hblto5t9hp4oe',1555339681,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','','',NULL),
	('6c9kuqavq2ph7q2ullsj4ldqid',1555339681,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36','','',NULL),
	('7ficntm5t4g5jnthrh7d3dh3su',1556595353,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36','','',NULL),
	('8kcri4492a6irn06bsqn03n8l0',1556596533,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36','bigtree_admin|a:7:{s:2:\"id\";s:1:\"1\";s:5:\"email\";s:17:\"mimoduo@gmail.com\";s:4:\"name\";s:9:\"Developer\";s:5:\"level\";s:1:\"2\";s:10:\"csrf_token\";s:44:\"qYm5EhCOjdYQF9YOdA54lsJmLDpWLrktokth2IB2hBs=\";s:16:\"csrf_token_field\";s:47:\"__csrf_token_1NX6JRWG7YR3XLL14MKAUJURMLKEL41P__\";s:21:\"cropper_previous_page\";s:47:\"http://localhost/corgi-butt/admin/pages/edit/1/\";}','',NULL),
	('od3mkk3gadnlqqqp06vh6u9uv6',1556595353,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36','','',NULL);

/*!40000 ALTER TABLE `bigtree_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_settings`;

CREATE TABLE `bigtree_settings` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `value` longblob NOT NULL,
  `encrypted` char(2) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `extension` (`extension`),
  CONSTRAINT `bigtree_settings_ibfk_1` FOREIGN KEY (`extension`) REFERENCES `bigtree_extensions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_settings` WRITE;
/*!40000 ALTER TABLE `bigtree_settings` DISABLE KEYS */;

INSERT INTO `bigtree_settings` (`id`, `value`, `encrypted`, `extension`)
VALUES
	('bigtree-file-metadata-fields',X'7B7D','',NULL),
	('bigtree-internal-cron-last-run',X'223135353635393630343822','',NULL),
	('bigtree-internal-deleted-users',X'7B7D','',NULL),
	('bigtree-internal-payment-gateway',X'4F99C2C4BB03D24D2A8B1E8A81869CBA27B9848B44C969C33396C2C9BA00589933067B28AEDFA0DFA5976B75D5CF3357','on',NULL),
	('bigtree-internal-per-page',X'3135','',NULL),
	('bigtree-internal-revision',X'343036','',NULL),
	('bigtree-internal-security-policy',X'7B2270617373776F7264223A7B22696E7669746174696F6E73223A20226F6E227D7D','',NULL),
	('bigtree-internal-storage',X'7B2253657276696365223A226C6F63616C227D','',NULL),
	('settings',X'7B0A20202020226163636570745F7061796D656E7473223A2022222C0A20202020226E6F5F637373223A20226F6E222C0A2020202022646F6E745F647261775F706167655F686561646572223A20226F6E222C0A202020202264697361626C655F636F6C756D6E73223A2022222C0A2020202022726563617074636861223A207B0A202020202020202022736974655F6B6579223A2022222C0A2020202020202020227365637265745F6B6579223A2022220A202020207D2C0A2020202022746578745F77726170706572223A2022222C0A2020202022746578745F777261707065725F656E64223A2022222C0A202020202270686F6E655F64656661756C745F636F756E7472795F636F6465223A2022222C0A202020202270686F6E655F64656661756C745F696E746C223A2022220A7D','',NULL);

/*!40000 ALTER TABLE `bigtree_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_tags`;

CREATE TABLE `bigtree_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `metaphone` varchar(255) NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `usage_count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `route` (`route`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_tags_rel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_tags_rel`;

CREATE TABLE `bigtree_tags_rel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table` varchar(255) NOT NULL,
  `tag` int(11) unsigned NOT NULL,
  `entry` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`),
  KEY `entry` (`entry`),
  CONSTRAINT `bigtree_tags_rel_ibfk_1` FOREIGN KEY (`tag`) REFERENCES `bigtree_tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table bigtree_user_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_user_sessions`;

CREATE TABLE `bigtree_user_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `chain` varchar(255) DEFAULT NULL,
  `csrf_token` varchar(255) DEFAULT NULL,
  `csrf_token_field` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `chain` (`chain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_user_sessions` WRITE;
/*!40000 ALTER TABLE `bigtree_user_sessions` DISABLE KEYS */;

INSERT INTO `bigtree_user_sessions` (`id`, `email`, `chain`, `csrf_token`, `csrf_token_field`)
VALUES
	('session-5cc7c299ed2677.53462179','mimoduo@gmail.com','chain-5ca6650c603152.14710228','qYm5EhCOjdYQF9YOdA54lsJmLDpWLrktokth2IB2hBs=','__csrf_token_1NX6JRWG7YR3XLL14MKAUJURMLKEL41P__');

/*!40000 ALTER TABLE `bigtree_user_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bigtree_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bigtree_users`;

CREATE TABLE `bigtree_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `new_hash` char(2) NOT NULL,
  `2fa_secret` varchar(255) NOT NULL,
  `2fa_login_token` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `permissions` text NOT NULL,
  `alerts` text NOT NULL,
  `daily_digest` char(2) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `change_password_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bigtree_users` WRITE;
/*!40000 ALTER TABLE `bigtree_users` DISABLE KEYS */;

INSERT INTO `bigtree_users` (`id`, `email`, `password`, `new_hash`, `2fa_secret`, `2fa_login_token`, `name`, `company`, `level`, `permissions`, `alerts`, `daily_digest`, `timezone`, `change_password_hash`)
VALUES
	(1,'mimoduo@gmail.com','$2y$10$sNKp6iTa9as4qJhDlBJorOoptsCueH5NETPohSLILjU00it1RG9Wa','on','','','Developer','',2,'','','','','');

/*!40000 ALTER TABLE `bigtree_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table btx_form_builder_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `btx_form_builder_fields`;

CREATE TABLE `btx_form_builder_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` int(11) NOT NULL,
  `column` int(11) NOT NULL,
  `alignment` char(5) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form` (`form`),
  KEY `column` (`column`),
  KEY `position` (`position`),
  CONSTRAINT `btx_form_builder_fields_ibfk_1` FOREIGN KEY (`form`) REFERENCES `btx_form_builder_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `btx_form_builder_fields` WRITE;
/*!40000 ALTER TABLE `btx_form_builder_fields` DISABLE KEYS */;

INSERT INTO `btx_form_builder_fields` (`id`, `form`, `column`, `alignment`, `type`, `data`, `position`)
VALUES
	(13,2,0,'','text','{\"label\":\"Name\",\"placeholder\":\"\",\"maxlength\":\"0\",\"name\":\"form_builder_element_0\",\"type\":\"text\",\"id\":\"13\"}',3),
	(14,2,0,'','email','{\"label\":\"Email Address\",\"required\":\"on\",\"name\":\"form_builder_element_1\",\"type\":\"email\",\"id\":\"14\"}',2),
	(15,2,0,'','textarea','{\"label\":\"What Kind of Website Would You Like?\",\"placeholder\":\"\",\"maxlength\":\"0\",\"name\":\"form_builder_element_2\",\"type\":\"textarea\",\"id\":\"15\"}',1);

/*!40000 ALTER TABLE `btx_form_builder_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table btx_form_builder_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `btx_form_builder_forms`;

CREATE TABLE `btx_form_builder_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `paid` char(2) NOT NULL DEFAULT '',
  `base_price` float NOT NULL,
  `early_bird_base_price` float NOT NULL,
  `early_bird_date` datetime DEFAULT NULL,
  `total_collected` float NOT NULL,
  `entries` int(11) NOT NULL,
  `limit_entries` char(2) NOT NULL DEFAULT '',
  `max_entries` int(11) NOT NULL,
  `scheduling` char(2) NOT NULL,
  `scheduling_open_date` datetime DEFAULT NULL,
  `scheduling_close_date` datetime DEFAULT NULL,
  `scheduling_before_message` longtext,
  `scheduling_after_message` longtext,
  `last_entry` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `btx_form_builder_forms` WRITE;
/*!40000 ALTER TABLE `btx_form_builder_forms` DISABLE KEYS */;

INSERT INTO `btx_form_builder_forms` (`id`, `title`, `paid`, `base_price`, `early_bird_base_price`, `early_bird_date`, `total_collected`, `entries`, `limit_entries`, `max_entries`, `scheduling`, `scheduling_open_date`, `scheduling_close_date`, `scheduling_before_message`, `scheduling_after_message`, `last_entry`)
VALUES
	(2,'Contact Us','',0,0,NULL,0,0,'',0,'',NULL,NULL,'','',NULL);

/*!40000 ALTER TABLE `btx_form_builder_forms` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
