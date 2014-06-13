-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Ven 13 Juin 2014 à 16:08
-- Version du serveur :  5.5.34
-- Version de PHP :  5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `trace`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1402267097'),
(3, 2, '_wp_trash_meta_status', '1'),
(4, 2, '_wp_trash_meta_time', '1402268665'),
(5, 3, '_wp_trash_meta_status', '1'),
(6, 3, '_wp_trash_meta_time', '1402354190');

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 7, 'admin', 'eliececiora@gmail.com', '', '127.0.0.1', '2014-06-08 22:38:00', '2014-06-08 22:38:00', 'Hello', 0, 'trash', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', '', 0, 1),
(2, 7, 'admin', 'eliececiora@gmail.com', '', '127.0.0.1', '2014-06-08 22:43:10', '2014-06-08 22:43:10', 'hallo', 0, 'trash', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', '', 0, 1),
(3, 32, 'admin', 'eliececiora@gmail.com', '', '127.0.0.1', '2014-06-09 22:49:31', '2014-06-09 22:49:31', 'Hello you', 0, 'trash', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=353 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://trace.dev/wordpress', 'yes'),
(2, 'blogname', 'Trace', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '1', 'yes'),
(5, 'admin_email', 'eliececiora@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'comment_moderation', '1', 'yes'),
(26, 'moderation_notify', '1', 'yes'),
(27, 'permalink_structure', '/%postname%/', 'yes'),
(28, 'gzipcompression', '0', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:6:{i:0;s:41:"comment-attachment/comment-attachment.php";i:2;s:28:"private-only/disablefeed.php";i:3;s:28:"private-only/privateonly.php";i:4;s:25:"profile-builder/index.php";i:5;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:6;s:14:"types/wpcf.php";}', 'yes'),
(33, 'home', 'http://trace.dev', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:88:"/Users/eliececiora/Sites/Trace/wordpress/wp-content/plugins/comment-attachment/check.php";i:1;s:101:"/Users/eliececiora/Sites/Trace/wordpress/wp-content/plugins/comment-attachment/comment-attachment.php";i:2;s:87:"/Users/eliececiora/Sites/Trace/wordpress/wp-content/plugins/front-end-editor/readme.txt";i:3;s:97:"/Users/eliececiora/Sites/Trace/wordpress/wp-content/plugins/front-end-editor/front-end-editor.php";i:4;s:106:"/Users/eliececiora/Sites/Trace/wordpress/wp-content/plugins/comment-attachment/comment-attachment-init.php";}', 'no'),
(41, 'template', 'trace', 'yes'),
(42, 'stylesheet', 'trace', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '1', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'administrator', 'yes'),
(49, 'db_version', '27916', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '1024', 'yes'),
(60, 'thumbnail_size_h', '450', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '2048', 'yes'),
(66, 'large_size_h', '900', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:37:"front-end-editor/front-end-editor.php";s:14:"__return_false";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '8', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '27916', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1402686829;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1402686856;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1402687080;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1402688579;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1402665805;s:15:"version_checked";s:5:"3.9.1";s:12:"translations";a:0:{}}', 'yes'),
(99, '_transient_random_seed', '5beb1f7ff3722cb1007de55856fc2eed', 'yes'),
(100, 'auth_key', ']`|L{0BC(!*7!<Yvg~Sm;9tD48/( @=V=/6QV5w1;c=>MhtW}yQEBo<|EU|KbCd.', 'yes'),
(101, 'auth_salt', 'gm%igOGU <mv3LZRb3[_U>)?Bef[R*FC=Mx2l%@b>qFV0~Eax#@oO)G?}o:CG8T4', 'yes'),
(102, 'logged_in_key', '6 q-L,r%&O2oBOA,BYQ:.x>i00Ep8bB[u*YBB-fLk~G+6k<R:Cl%!00Yh[v+It%o', 'yes'),
(103, 'logged_in_salt', 'SbcpN)H^+B-Vh<IiRtWxg^A`G*LH*|Xs//U2AbU<r,Vf.(|6;Ca.`8{XG8q~SKwJ', 'yes'),
(104, 'nonce_key', '_.]sWR&K1]iF2RB|b63bOwjJiLYym ;K&922k;j:Q!v3WDin Tm_nOt?M5UQ1!br', 'yes'),
(105, 'nonce_salt', '0Me/Vu4/_gLs3jEZF<0n$f.M Nj?:<g[]F~8T~)Ktr(n)`&5lTq(!d)(hsn;I3h ', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1402665817;s:7:"checked";a:3:{s:14:"twentyfourteen";s:3:"1.1";s:14:"twentythirteen";s:3:"1.2";s:12:"twentytwelve";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(111, '_site_transient_timeout_browser_0556f062a9c5e5cf244de1ef1c3cc993', '1402600443', 'yes'),
(112, '_site_transient_browser_0556f062a9c5e5cf244de1ef1c3cc993', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:5:"7.0.4";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(113, 'can_compress_scripts', '1', 'yes'),
(140, 'wppb_version', '1.3.13', 'yes'),
(141, 'profile_builder_version', '1.1.62', 'yes'),
(142, 'wppb_default_settings', 'a:24:{s:8:"username";s:4:"show";s:16:"usernameRequired";s:3:"yes";s:9:"firstname";s:4:"show";s:17:"firstnameRequired";s:2:"no";s:8:"lastname";s:4:"show";s:16:"lastnameRequired";s:2:"no";s:8:"nickname";s:4:"hide";s:16:"nicknameRequired";s:2:"no";s:8:"dispname";s:4:"hide";s:16:"dispnameRequired";s:2:"no";s:5:"email";s:4:"show";s:13:"emailRequired";s:3:"yes";s:7:"website";s:4:"show";s:15:"websiteRequired";s:2:"no";s:3:"aim";s:4:"hide";s:11:"aimRequired";s:2:"no";s:5:"yahoo";s:4:"hide";s:13:"yahooRequired";s:2:"no";s:6:"jabber";s:4:"hide";s:14:"jabberRequired";s:2:"no";s:3:"bio";s:4:"hide";s:11:"bioRequired";s:2:"no";s:8:"password";s:4:"show";s:16:"passwordRequired";s:3:"yes";}', 'yes'),
(143, 'wppb_general_settings', 'a:4:{s:17:"extraFieldsLayout";s:3:"yes";s:17:"emailConfirmation";s:3:"yes";s:21:"activationLandingPage";s:2:"13";s:9:"loginWith";s:8:"username";}', 'yes'),
(144, 'wppb_display_admin_settings', 'a:5:{s:13:"Administrator";s:4:"show";s:6:"Editor";s:4:"show";s:6:"Author";s:4:"show";s:11:"Contributor";s:4:"show";s:10:"Subscriber";s:4:"show";}', 'yes'),
(145, 'recently_activated', 'a:2:{s:37:"front-end-editor/front-end-editor.php";i:1402488567;s:31:"wp-google-maps/wpGoogleMaps.php";i:1402420419;}', 'yes'),
(146, 'profile_builder_activation', 'set', 'yes'),
(148, 'commentAttachment', 'a:13:{s:25:"commentAttachmentPosition";s:6:"before";s:22:"commentAttachmentTitle";s:17:"Upload Attachment";s:24:"commentAttachmentMaxSize";s:2:"32";s:21:"commentAttachmentBind";s:1:"1";s:27:"commentAttachmentThumbTitle";s:11:"Attachment:";s:26:"commentAttachmentAPosition";s:6:"before";s:22:"commentAttachmentThumb";s:1:"1";s:26:"commentAttachmentThumbSize";s:9:"thumbnail";s:23:"commentAttachmentPlayer";s:1:"1";s:23:"commentAttachmentDelete";s:1:"1";s:20:"commentAttachmentJPG";s:1:"1";s:20:"commentAttachmentGIF";s:1:"1";s:20:"commentAttachmentPNG";s:1:"1";}', 'yes'),
(151, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(152, 'wpcf-custom-types', 'a:1:{s:5:"event";a:20:{s:14:"wpcf-post-type";s:5:"event";s:6:"labels";a:12:{s:4:"name";s:6:"Events";s:13:"singular_name";s:5:"Event";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:5:"event";s:11:"description";s:0:"";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:10:"taxonomies";a:1:{s:8:"category";s:1:"1";}s:8:"supports";a:5:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:8:"comments";s:1:"1";s:6:"author";s:1:"1";s:9:"thumbnail";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}}', 'yes'),
(153, 'wpcf_post_relationship', 'a:0:{}', 'yes'),
(155, 'wpcf-fields', 'a:5:{s:9:"from-date";a:8:{s:2:"id";s:9:"from-date";s:4:"slug";s:9:"from-date";s:4:"type";s:4:"date";s:4:"name";s:9:"From date";s:11:"description";s:0:"";s:4:"data";a:5:{s:13:"date_and_time";s:8:"and_time";s:10:"repetitive";s:1:"0";s:8:"validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:14:"wpcf-from-date";s:9:"meta_type";s:8:"postmeta";}s:7:"to-date";a:8:{s:2:"id";s:7:"to-date";s:4:"slug";s:7:"to-date";s:4:"type";s:4:"date";s:4:"name";s:7:"To date";s:11:"description";s:0:"";s:4:"data";a:5:{s:13:"date_and_time";s:8:"and_time";s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:12:"wpcf-to-date";s:9:"meta_type";s:8:"postmeta";}s:7:"address";a:8:{s:2:"id";s:7:"address";s:4:"slug";s:7:"address";s:4:"type";s:8:"textarea";s:4:"name";s:7:"Address";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:12:"wpcf-address";s:9:"meta_type";s:8:"postmeta";}s:3:"url";a:8:{s:2:"id";s:3:"url";s:4:"slug";s:3:"url";s:4:"type";s:3:"url";s:4:"name";s:3:"URL";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:3:"url";a:2:{s:6:"active";s:1:"1";s:7:"message";s:32:"Please enter a valid URL address";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:8:"wpcf-url";s:9:"meta_type";s:8:"postmeta";}s:5:"price";a:8:{s:2:"id";s:5:"price";s:4:"slug";s:5:"price";s:4:"type";s:7:"numeric";s:4:"name";s:5:"Price";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:6:"number";a:2:{s:6:"active";s:1:"1";s:7:"message";s:25:"Please enter numeric data";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:10:"wpcf-price";s:9:"meta_type";s:8:"postmeta";}}', 'yes'),
(157, '_wpcf_promo_tabs', 'a:2:{s:8:"selected";i:3;s:4:"time";i:1402665854;}', 'yes'),
(162, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1401998281;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(163, 'current_theme', 'Trace', 'yes'),
(164, 'theme_mods_trace', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"main_nav";i:2;s:12:"footer_links";i:0;}}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(192, '_transient_timeout_plugin_slugs', '1402752241', 'no'),
(193, '_transient_plugin_slugs', 'a:10:{i:0;s:19:"akismet/akismet.php";i:1;s:41:"comment-attachment/comment-attachment.php";i:2;s:37:"front-end-editor/front-end-editor.php";i:3;s:9:"hello.php";i:4;s:28:"private-only/privateonly.php";i:5;s:28:"private-only/disablefeed.php";i:6;s:25:"profile-builder/index.php";i:7;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:8;s:14:"types/wpcf.php";i:9;s:31:"wp-google-maps/wpGoogleMaps.php";}', 'no'),
(196, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(208, 'wpgmza_xml_location', '/Users/eliececiora/Sites/Trace/wordpress/wp-content/uploads/wp-google-maps/', 'yes'),
(209, 'wpgmza_xml_url', 'http://trace.dev/wordpress/wp-content/uploads/wp-google-maps/', 'yes'),
(210, 'wpgmza_db_version', '6.0.18', 'yes'),
(211, 'wpgmaps_current_version', '6.0.18', 'yes'),
(213, 'WPGMZA_FIRST_TIME', '6.0.18', 'yes'),
(214, '_site_transient_timeout_browser_cb03b8b2180710a944792958eff84f1d', '1402876367', 'yes'),
(215, '_site_transient_browser_cb03b8b2180710a944792958eff84f1d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"35.0.1916.114";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(244, 'WPGMZA_SETTINGS', 'a:9:{s:24:"map_default_starting_lat";s:17:"49.85302160013893";s:24:"map_default_starting_lng";s:19:"0.45006454687495534";s:18:"map_default_height";s:3:"300";s:17:"map_default_width";s:3:"100";s:16:"map_default_zoom";i:5;s:16:"map_default_type";i:1;s:21:"map_default_alignment";i:2;s:22:"map_default_width_type";s:2:"\\%";s:23:"map_default_height_type";s:2:"px";}', 'yes'),
(276, 'wpcf-custom-taxonomies', 'a:0:{}', 'yes'),
(278, 'rewrite_rules', 'a:117:{s:8:"event/?$";s:25:"index.php?post_type=event";s:38:"event/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:33:"event/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:25:"event/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:42:"wp-types-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"wp-types-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"wp-types-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)/trackback/?$";s:41:"index.php?wp-types-group=$matches[1]&tb=1";s:43:"wp-types-group/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&paged=$matches[2]";s:50:"wp-types-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?wp-types-group=$matches[1]&page=$matches[2]";s:31:"wp-types-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"wp-types-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"wp-types-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"wp-types-user-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"wp-types-user-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"wp-types-user-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)/trackback/?$";s:46:"index.php?wp-types-user-group=$matches[1]&tb=1";s:48:"wp-types-user-group/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&paged=$matches[2]";s:55:"wp-types-user-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?wp-types-user-group=$matches[1]&page=$matches[2]";s:36:"wp-types-user-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"wp-types-user-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"wp-types-user-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"event/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"event/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"event/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:46:"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:41:"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:34:"event/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:41:"event/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:26:"event/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:22:"event/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"event/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(305, 'po_login_settings', 'a:8:{s:7:"po_logo";s:0:"";s:14:"po_logo_height";s:0:"";s:11:"use_wp_logo";s:0:"";s:8:"logo_url";s:0:"";s:12:"public_pages";s:0:"";s:14:"use_custom_css";s:0:"";s:20:"remove_lost_password";s:0:"";s:17:"remove_backtoblog";s:0:"";}', 'yes'),
(306, 'category_children', 'a:0:{}', 'yes'),
(311, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1402498960', 'yes'),
(312, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4463";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2778";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2683";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2196";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2110";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1756";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1553";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1513";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1465";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1449";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1401";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1340";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1308";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1157";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1116";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1096";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"999";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"955";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"955";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"789";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"782";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"781";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"769";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"766";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"703";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"678";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"662";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"651";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"619";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"610";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"592";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"583";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"579";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"579";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"568";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"532";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"525";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"524";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"510";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"507";}}', 'yes'),
(316, 'front-end-editor', 'a:4:{s:8:"disabled";a:3:{i:0;s:8:"the_tags";i:1;s:9:"the_terms";i:2;s:8:"bloginfo";}s:4:"rich";b:1;s:10:"group_post";b:0;s:11:"taxonomy_ui";s:10:"termselect";}', 'yes'),
(317, '_site_transient_timeout_browser_415432f8a69810436cc04440121d795d', '1403098691', 'yes'),
(318, '_site_transient_browser_415432f8a69810436cc04440121d795d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"35.0.1916.153";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(340, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1402595235', 'no'),
(341, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Couldn''t resolve host ''wordpress.org''</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Couldn''t resolve host ''planet.wordpress.org''</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(348, '_site_transient_timeout_theme_roots', '1402667607', 'yes'),
(349, '_site_transient_theme_roots', 'a:4:{s:5:"trace";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(352, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1402665826;s:7:"checked";a:10:{s:19:"akismet/akismet.php";s:5:"3.0.0";s:41:"comment-attachment/comment-attachment.php";s:5:"1.3.5";s:37:"front-end-editor/front-end-editor.php";s:5:"2.3.1";s:9:"hello.php";s:3:"1.6";s:28:"private-only/privateonly.php";s:3:"3.5";s:28:"private-only/disablefeed.php";s:3:"3.5";s:25:"profile-builder/index.php";s:6:"1.1.62";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"2.2.4";s:14:"types/wpcf.php";s:5:"1.5.7";s:31:"wp-google-maps/wpGoogleMaps.php";s:6:"6.0.18";}s:8:"response";a:2:{s:28:"private-only/privateonly.php";O:8:"stdClass":6:{s:2:"id";s:4:"4227";s:4:"slug";s:12:"private-only";s:6:"plugin";s:28:"private-only/privateonly.php";s:11:"new_version";s:5:"3.5.1";s:3:"url";s:43:"https://wordpress.org/plugins/private-only/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/private-only.zip";}s:28:"private-only/disablefeed.php";O:8:"stdClass":6:{s:2:"id";s:4:"4227";s:4:"slug";s:12:"private-only";s:6:"plugin";s:28:"private-only/disablefeed.php";s:11:"new_version";s:5:"3.5.1";s:3:"url";s:43:"https://wordpress.org/plugins/private-only/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/private-only.zip";}}s:12:"translations";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=526 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 5, '_wp_types_group_filters_association', 'any'),
(3, 5, '_wp_types_group_fields', ',from-date,to-date,address,url,price,'),
(4, 5, '_wp_types_group_post_types', ',event,'),
(5, 5, '_wp_types_group_terms', 'all'),
(6, 5, '_wp_types_group_admin_styles', ''),
(7, 5, '_wp_types_group_templates', 'all'),
(8, 5, '_wpcf_conditional_display', 'a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(9, 5, 'wpcf-invalid-fields', 'a:2:{s:9:"from-date";a:15:{s:5:"#type";s:9:"textfield";s:3:"#id";s:65:"wpcf-date-from-date-datepicker-5c1b3ad8f5b1dbff93c73f2f0a2c356b-1";s:6:"#title";s:20:"&nbsp;From date&#42;";s:5:"#name";s:27:"wpcf[from-date][datepicker]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:9:"from-date";s:9:"wpcf-slug";s:9:"from-date";s:9:"wpcf-type";s:4:"date";s:11:"#attributes";a:2:{s:5:"class";s:15:"wpcf-datepicker";s:5:"style";s:12:"width:150px;";}s:6:"#after";s:0:"";s:15:"#_validate_this";b:1;s:12:"#description";s:0:"";s:9:"#validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:9:"from-date";s:4:"slug";s:9:"from-date";s:4:"type";s:4:"date";s:4:"name";s:9:"From date";s:11:"description";s:0:"";s:4:"data";a:5:{s:13:"date_and_time";s:4:"date";s:10:"repetitive";s:1:"0";s:8:"validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:14:"wpcf-from-date";s:9:"meta_type";s:8:"postmeta";s:5:"value";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}}s:6:"fields";N;s:4:"meta";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}s:6:"config";O:8:"stdClass":8:{s:2:"id";s:9:"wpcf-date";s:5:"title";s:4:"Date";s:11:"description";s:4:"Date";s:8:"validate";a:2:{i:0;s:8:"required";i:1;s:4:"date";}s:11:"meta_box_js";a:3:{s:23:"wpcf-jquery-fields-date";a:2:{s:3:"src";s:101:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/js/jquery.ui.datepicker.min.js";s:4:"deps";a:1:{i:0;s:14:"jquery-ui-core";}}s:30:"wpcf-jquery-fields-date-inline";a:1:{s:6:"inline";s:35:"wpcf_fields_date_meta_box_js_inline";}s:36:"wpcf-jquery-fields-date-localization";a:0:{}}s:12:"meta_box_css";a:1:{s:14:"wpcf-jquery-ui";a:1:{s:3:"src";s:115:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/css/jquery-ui/jquery-ui-1.9.2.custom.min.css";}}s:13:"meta_key_type";s:4:"TIME";s:7:"version";s:3:"1.2";}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:14:"wpcf-from-date";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:9:"from-date";s:9:"unique_id";s:34:"17b730a907d895d4213fc805d61df365-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}s:7:"address";a:12:{s:5:"#type";s:8:"textarea";s:3:"#id";s:56:"wpcf-textarea-address-c37ebefcdb6da3d5edf034bf245fc2dd-1";s:6:"#title";s:12:"Address&#42;";s:5:"#name";s:13:"wpcf[address]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:7:"address";s:9:"wpcf-slug";s:7:"address";s:9:"wpcf-type";s:8:"textarea";s:12:"#description";s:0:"";s:9:"#validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:7:"address";s:4:"slug";s:7:"address";s:4:"type";s:8:"textarea";s:4:"name";s:7:"Address";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:12:"wpcf-address";s:9:"meta_type";s:8:"postmeta";s:5:"value";N;}s:6:"fields";N;s:4:"meta";N;s:6:"config";O:8:"stdClass":4:{s:2:"id";s:13:"wpcf-textarea";s:5:"title";s:14:"Multiple lines";s:11:"description";s:8:"Textarea";s:8:"validate";a:1:{i:0;s:8:"required";}}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:12:"wpcf-address";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:7:"address";s:9:"unique_id";s:34:"ace13de8bf7420e2cbf9e00498e0ed39-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}}'),
(11, 6, '_edit_last', '1'),
(13, 6, '_edit_lock', '1402443625:1'),
(28, 7, '_edit_last', '1'),
(30, 7, '_edit_lock', '1402443632:1'),
(35, 8, '_edit_last', '1'),
(36, 8, '_edit_lock', '1402434473:1'),
(37, 8, '_wp_page_template', 'default'),
(51, 13, '_edit_last', '1'),
(52, 13, '_edit_lock', '1401999167:1'),
(53, 15, '_edit_last', '1'),
(54, 15, '_edit_lock', '1402354526:1'),
(55, 17, '_edit_last', '1'),
(56, 17, '_edit_lock', '1401999468:1'),
(78, 20, '_menu_item_type', 'custom'),
(79, 20, '_menu_item_menu_item_parent', '0'),
(80, 20, '_menu_item_object_id', '20'),
(81, 20, '_menu_item_object', 'custom'),
(82, 20, '_menu_item_target', ''),
(83, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 20, '_menu_item_xfn', ''),
(85, 20, '_menu_item_url', '/event'),
(87, 21, '_menu_item_type', 'custom'),
(88, 21, '_menu_item_menu_item_parent', '0'),
(89, 21, '_menu_item_object_id', '21'),
(90, 21, '_menu_item_object', 'custom'),
(91, 21, '_menu_item_target', ''),
(92, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 21, '_menu_item_xfn', ''),
(94, 21, '_menu_item_url', '#'),
(96, 8, 'wpcf-upcoming-events-title', 'Upcoming Events'),
(97, 8, 'wpcf-upcoming-events-body', '<p>Each month, several conferences about our passion are taking place in Belgium, France or the Netherlands… We all know at least one, let’s share them!</p>'),
(98, 8, 'wpcf-create-an-event-body', '<p>It takes only few minutes and it''s simple, make some click and create an new event so everyone can enjoy it.</p>'),
(99, 8, 'wpcf-create-an-event-title', 'Create An Event'),
(100, 8, 'wpcf-event-archive-title', 'Archives'),
(101, 8, 'wpcf-event-archive-body', '<p>Let''s find to every past events, participants impressions, comment, posts and ressources.</p>'),
(102, 25, '_edit_last', '1'),
(103, 25, '_edit_lock', '1402299238:1'),
(104, 28, '_menu_item_type', 'post_type'),
(105, 28, '_menu_item_menu_item_parent', '0'),
(106, 28, '_menu_item_object_id', '25'),
(107, 28, '_menu_item_object', 'page'),
(108, 28, '_menu_item_target', ''),
(109, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 28, '_menu_item_xfn', ''),
(111, 28, '_menu_item_url', ''),
(113, 25, '_wp_page_template', 'upcoming-events-page.php'),
(114, 29, '_menu_item_type', 'post_type'),
(115, 29, '_menu_item_menu_item_parent', '0'),
(116, 29, '_menu_item_object_id', '25'),
(117, 29, '_menu_item_object', 'page'),
(118, 29, '_menu_item_target', ''),
(119, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(120, 29, '_menu_item_xfn', ''),
(121, 29, '_menu_item_url', ''),
(122, 29, '_menu_item_orphaned', '1402258718'),
(123, 30, '_wp_attached_file', '2014/06/inspireconf-e1402261305230.jpg'),
(124, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:540;s:4:"file";s:38:"2014/06/inspireconf-e1402261305230.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"inspireconf-e1402261305230-1000x450.jpg";s:5:"width";i:1000;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"inspireconf-e1402261305230-300x162.jpg";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:38:"inspireconf-e1402261305230-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(125, 30, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:1000;s:6:"height";i:540;s:4:"file";s:15:"inspireconf.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:23:"inspireconf-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:23:"inspireconf-300x162.jpg";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:19:"post-thumbnail-orig";a:4:{s:4:"file";s:23:"inspireconf-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}'),
(144, 32, '_edit_last', '1'),
(146, 32, '_edit_lock', '1402443637:1'),
(148, 33, '_wp_attached_file', '2014/06/reasons.jpg'),
(149, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:19:"2014/06/reasons.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"reasons-1024x450.jpg";s:5:"width";i:1024;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"reasons-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"reasons-1349x900.jpg";s:5:"width";i:1349;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"reasons-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:1.399999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 7D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1378144798;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:4:"6400";s:13:"shutter_speed";s:15:"0.0666666666667";s:5:"title";s:0:"";}}'),
(150, 32, '_thumbnail_id', '33'),
(207, 6, 'wpcf-from-date', '1402392600'),
(208, 6, 'wpcf-to-date', '1402768800'),
(209, 6, 'wpcf-address', '2300 Leiden, The Netherlands'),
(210, 6, 'wpcf-url', 'http://2014.inspireconf.com'),
(211, 6, 'wpcf-price', '250'),
(212, 6, '_thumbnail_id', '30'),
(213, 33, '_edit_lock', '1402327355:1'),
(262, 32, 'wpcf-from-date', '1409565600'),
(263, 32, 'wpcf-to-date', '1409731200'),
(264, 32, 'wpcf-address', 'Brighton Dome\r\nChurch Street\r\nBrighton\r\nBN1 1UG'),
(265, 32, 'wpcf-url', 'http://reasons.to/'),
(266, 32, 'wpcf-price', '79'),
(267, 35, '_wp_attached_file', '2014/06/logo-tagline.png'),
(268, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:457;s:6:"height";i:118;s:4:"file";s:24:"2014/06/logo-tagline.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:23:"logo-tagline-300x77.png";s:5:"width";i:300;s:6:"height";i:77;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"logo-tagline-120x118.png";s:5:"width";i:120;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(269, 8, '_thumbnail_id', '35'),
(270, 17, '_wp_trash_meta_status', 'publish'),
(271, 17, '_wp_trash_meta_time', '1402410530'),
(272, 13, '_wp_trash_meta_status', 'publish'),
(273, 13, '_wp_trash_meta_time', '1402410530'),
(274, 15, '_wp_trash_meta_status', 'publish'),
(275, 15, '_wp_trash_meta_time', '1402410530'),
(279, 36, 'wpcf-invalid-fields', 'a:2:{s:9:"from-date";a:16:{s:5:"#type";s:9:"textfield";s:3:"#id";s:65:"wpcf-date-from-date-datepicker-76bdad199a2f5efb478d6543c7aa26dc-1";s:6:"#title";s:20:"&nbsp;From date&#42;";s:5:"#name";s:27:"wpcf[from-date][datepicker]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:9:"from-date";s:9:"wpcf-slug";s:9:"from-date";s:9:"wpcf-type";s:4:"date";s:11:"#attributes";a:2:{s:5:"class";s:15:"wpcf-datepicker";s:5:"style";s:12:"width:150px;";}s:6:"#after";s:0:"";s:15:"#_validate_this";b:1;s:7:"#inline";b:1;s:12:"#description";s:0:"";s:9:"#validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:9:"from-date";s:4:"slug";s:9:"from-date";s:4:"type";s:4:"date";s:4:"name";s:9:"From date";s:11:"description";s:0:"";s:4:"data";a:5:{s:13:"date_and_time";s:8:"and_time";s:10:"repetitive";s:1:"0";s:8:"validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:14:"wpcf-from-date";s:9:"meta_type";s:8:"postmeta";s:5:"value";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}}s:6:"fields";N;s:4:"meta";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}s:6:"config";O:8:"stdClass":8:{s:2:"id";s:9:"wpcf-date";s:5:"title";s:4:"Date";s:11:"description";s:4:"Date";s:8:"validate";a:2:{i:0;s:8:"required";i:1;s:4:"date";}s:11:"meta_box_js";a:3:{s:23:"wpcf-jquery-fields-date";a:2:{s:3:"src";s:101:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/js/jquery.ui.datepicker.min.js";s:4:"deps";a:1:{i:0;s:14:"jquery-ui-core";}}s:30:"wpcf-jquery-fields-date-inline";a:1:{s:6:"inline";s:35:"wpcf_fields_date_meta_box_js_inline";}s:36:"wpcf-jquery-fields-date-localization";a:0:{}}s:12:"meta_box_css";a:1:{s:14:"wpcf-jquery-ui";a:1:{s:3:"src";s:115:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/css/jquery-ui/jquery-ui-1.9.2.custom.min.css";}}s:13:"meta_key_type";s:4:"TIME";s:7:"version";s:3:"1.2";}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:14:"wpcf-from-date";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:9:"from-date";s:9:"unique_id";s:34:"73d8ece88a1d5bae6e9668f2c77ec738-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}s:7:"address";a:12:{s:5:"#type";s:8:"textarea";s:3:"#id";s:56:"wpcf-textarea-address-b7ccdc373fada6c0fefb782dcf0487c9-1";s:6:"#title";s:12:"Address&#42;";s:5:"#name";s:13:"wpcf[address]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:7:"address";s:9:"wpcf-slug";s:7:"address";s:9:"wpcf-type";s:8:"textarea";s:12:"#description";s:0:"";s:9:"#validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:7:"address";s:4:"slug";s:7:"address";s:4:"type";s:8:"textarea";s:4:"name";s:7:"Address";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:12:"wpcf-address";s:9:"meta_type";s:8:"postmeta";s:5:"value";N;}s:6:"fields";N;s:4:"meta";N;s:6:"config";O:8:"stdClass":4:{s:2:"id";s:13:"wpcf-textarea";s:5:"title";s:14:"Multiple lines";s:11:"description";s:8:"Textarea";s:8:"validate";a:1:{i:0;s:8:"required";}}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:12:"wpcf-address";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:7:"address";s:9:"unique_id";s:34:"702b1fe6f992d2b713da406f204c16e4-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}}'),
(280, 37, 'wpcf-invalid-fields', 'a:2:{s:9:"from-date";a:16:{s:5:"#type";s:9:"textfield";s:3:"#id";s:65:"wpcf-date-from-date-datepicker-34d1245b85b53af881c7ada6a4cbd077-1";s:6:"#title";s:20:"&nbsp;From date&#42;";s:5:"#name";s:27:"wpcf[from-date][datepicker]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:9:"from-date";s:9:"wpcf-slug";s:9:"from-date";s:9:"wpcf-type";s:4:"date";s:11:"#attributes";a:2:{s:5:"class";s:15:"wpcf-datepicker";s:5:"style";s:12:"width:150px;";}s:6:"#after";s:0:"";s:15:"#_validate_this";b:1;s:7:"#inline";b:1;s:12:"#description";s:0:"";s:9:"#validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:9:"from-date";s:4:"slug";s:9:"from-date";s:4:"type";s:4:"date";s:4:"name";s:9:"From date";s:11:"description";s:0:"";s:4:"data";a:5:{s:13:"date_and_time";s:8:"and_time";s:10:"repetitive";s:1:"0";s:8:"validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:14:"wpcf-from-date";s:9:"meta_type";s:8:"postmeta";s:5:"value";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}}s:6:"fields";N;s:4:"meta";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}s:6:"config";O:8:"stdClass":8:{s:2:"id";s:9:"wpcf-date";s:5:"title";s:4:"Date";s:11:"description";s:4:"Date";s:8:"validate";a:2:{i:0;s:8:"required";i:1;s:4:"date";}s:11:"meta_box_js";a:3:{s:23:"wpcf-jquery-fields-date";a:2:{s:3:"src";s:101:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/js/jquery.ui.datepicker.min.js";s:4:"deps";a:1:{i:0;s:14:"jquery-ui-core";}}s:30:"wpcf-jquery-fields-date-inline";a:1:{s:6:"inline";s:35:"wpcf_fields_date_meta_box_js_inline";}s:36:"wpcf-jquery-fields-date-localization";a:0:{}}s:12:"meta_box_css";a:1:{s:14:"wpcf-jquery-ui";a:1:{s:3:"src";s:115:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/css/jquery-ui/jquery-ui-1.9.2.custom.min.css";}}s:13:"meta_key_type";s:4:"TIME";s:7:"version";s:3:"1.2";}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:14:"wpcf-from-date";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:9:"from-date";s:9:"unique_id";s:34:"892341eefc79d6dc03f95cdb3d3fa28e-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}s:7:"address";a:12:{s:5:"#type";s:8:"textarea";s:3:"#id";s:56:"wpcf-textarea-address-0c9cb7a05572ab9e85e37ec28fed6702-1";s:6:"#title";s:12:"Address&#42;";s:5:"#name";s:13:"wpcf[address]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:7:"address";s:9:"wpcf-slug";s:7:"address";s:9:"wpcf-type";s:8:"textarea";s:12:"#description";s:0:"";s:9:"#validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:7:"address";s:4:"slug";s:7:"address";s:4:"type";s:8:"textarea";s:4:"name";s:7:"Address";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:12:"wpcf-address";s:9:"meta_type";s:8:"postmeta";s:5:"value";N;}s:6:"fields";N;s:4:"meta";N;s:6:"config";O:8:"stdClass":4:{s:2:"id";s:13:"wpcf-textarea";s:5:"title";s:14:"Multiple lines";s:11:"description";s:8:"Textarea";s:8:"validate";a:1:{i:0;s:8:"required";}}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:12:"wpcf-address";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:7:"address";s:9:"unique_id";s:34:"22e3d5425735f45280415bb28ab3b756-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}}'),
(282, 38, '_edit_last', '1'),
(284, 38, '_edit_lock', '1402443641:1'),
(312, 40, '_wp_attached_file', '2014/06/iwmw.jpg'),
(313, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2333;s:6:"height";i:1316;s:4:"file";s:16:"2014/06/iwmw.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"iwmw-1024x450.jpg";s:5:"width";i:1024;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"iwmw-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"iwmw-1595x900.jpg";s:5:"width";i:1595;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"iwmw-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:11;s:6:"credit";s:0:"";s:6:"camera";s:22:"Canon EOS 400D DIGITAL";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1206386575;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:2:"13";s:5:"title";s:0:"";}}'),
(314, 38, '_thumbnail_id', '40'),
(395, 38, 'wpcf-from-date', '1405519200'),
(396, 38, 'wpcf-to-date', '1403078400'),
(397, 38, 'wpcf-address', 'Newcastle upon Tyne\r\nNorthumbria University, City Campus.'),
(398, 38, 'wpcf-url', 'http://iwmw.org/iwmw2014/'),
(399, 38, 'wpcf-price', '350'),
(401, 41, '_edit_last', '1'),
(403, 41, '_edit_lock', '1402513874:1'),
(410, 42, '_wp_attached_file', '2014/06/revolution.jpg'),
(411, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:709;s:4:"file";s:22:"2014/06/revolution.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"revolution-1024x450.jpg";s:5:"width";i:1024;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"revolution-300x177.jpg";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"revolution-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:18:"Richard Stonehouse";s:6:"camera";s:10:"NIKON D600";s:7:"caption";s:135:"Dafydd Vaughan speaking at the 2013 Shropgeek Revolution  web conference held at The Shropshire conference centre, Shrewsbury Hospital.";s:17:"created_timestamp";i:1380252393;s:9:"copyright";s:25:"© StonehousePhotographic";s:12:"focal_length";s:2:"17";s:3:"iso";s:4:"2500";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";}}'),
(412, 41, '_thumbnail_id', '42'),
(423, 43, '_wp_attached_file', '2014/06/bt.jpg'),
(424, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1365;s:4:"file";s:14:"2014/06/bt.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"bt-1024x450.jpg";s:5:"width";i:1024;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"bt-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"bt-1350x900.jpg";s:5:"width";i:1350;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"bt-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(431, 44, '_wp_attached_file', '2014/06/mm.jpg'),
(432, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:14:"2014/06/mm.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"mm-1024x450.jpg";s:5:"width";i:1024;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"mm-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"mm-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:1.1999999999999999555910790149937383830547332763671875;s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 7D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1273570026;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(433, 7, '_thumbnail_id', '44'),
(440, 45, '_edit_last', '1'),
(442, 45, '_edit_lock', '1402443666:1'),
(443, 46, '_wp_attached_file', '2014/06/mnf.jpg'),
(444, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:15:"2014/06/mnf.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"mnf-1024x450.jpg";s:5:"width";i:1024;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"mnf-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"mnf-1200x900.jpg";s:5:"width";i:1200;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:15:"mnf-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.29999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:8:"DMC-FS33";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1298766252;s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"5";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:3:"0.2";s:5:"title";s:0:"";}}'),
(445, 45, '_thumbnail_id', '46'),
(467, 48, 'wpcf-invalid-fields', 'a:2:{s:9:"from-date";a:16:{s:5:"#type";s:9:"textfield";s:3:"#id";s:65:"wpcf-date-from-date-datepicker-b1bcf96c42e79278c6b4c8016e6847d4-1";s:6:"#title";s:20:"&nbsp;From date&#42;";s:5:"#name";s:27:"wpcf[from-date][datepicker]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:9:"from-date";s:9:"wpcf-slug";s:9:"from-date";s:9:"wpcf-type";s:4:"date";s:11:"#attributes";a:2:{s:5:"class";s:15:"wpcf-datepicker";s:5:"style";s:12:"width:150px;";}s:6:"#after";s:0:"";s:15:"#_validate_this";b:1;s:7:"#inline";b:1;s:12:"#description";s:0:"";s:9:"#validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:9:"from-date";s:4:"slug";s:9:"from-date";s:4:"type";s:4:"date";s:4:"name";s:9:"From date";s:11:"description";s:0:"";s:4:"data";a:5:{s:13:"date_and_time";s:8:"and_time";s:10:"repetitive";s:1:"0";s:8:"validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}s:4:"date";a:4:{s:6:"active";s:1:"1";s:6:"format";s:3:"mdy";s:7:"pattern";s:12:"check.format";s:7:"message";s:25:"Please enter a valid date";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:14:"wpcf-from-date";s:9:"meta_type";s:8:"postmeta";s:5:"value";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}}s:6:"fields";N;s:4:"meta";a:4:{s:9:"timestamp";N;s:4:"hour";i:8;s:6:"minute";i:0;s:10:"datepicker";s:0:"";}s:6:"config";O:8:"stdClass":8:{s:2:"id";s:9:"wpcf-date";s:5:"title";s:4:"Date";s:11:"description";s:4:"Date";s:8:"validate";a:2:{i:0;s:8:"required";i:1;s:4:"date";}s:11:"meta_box_js";a:3:{s:23:"wpcf-jquery-fields-date";a:2:{s:3:"src";s:101:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/js/jquery.ui.datepicker.min.js";s:4:"deps";a:1:{i:0;s:14:"jquery-ui-core";}}s:30:"wpcf-jquery-fields-date-inline";a:1:{s:6:"inline";s:35:"wpcf_fields_date_meta_box_js_inline";}s:36:"wpcf-jquery-fields-date-localization";a:0:{}}s:12:"meta_box_css";a:1:{s:14:"wpcf-jquery-ui";a:1:{s:3:"src";s:115:"http://trace.dev/wordpress/wp-content/plugins/types/embedded/resources/css/jquery-ui/jquery-ui-1.9.2.custom.min.css";}}s:13:"meta_key_type";s:4:"TIME";s:7:"version";s:3:"1.2";}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:14:"wpcf-from-date";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:9:"from-date";s:9:"unique_id";s:34:"5371606b3adc7904a3cef2d4be90cfa3-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}s:7:"address";a:12:{s:5:"#type";s:8:"textarea";s:3:"#id";s:56:"wpcf-textarea-address-4bfa09fa2d07a214bb24ab25f214bae4-1";s:6:"#title";s:12:"Address&#42;";s:5:"#name";s:13:"wpcf[address]";s:6:"#value";s:0:"";s:7:"wpcf-id";s:7:"address";s:9:"wpcf-slug";s:7:"address";s:9:"wpcf-type";s:8:"textarea";s:12:"#description";s:0:"";s:9:"#validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:6:"#error";s:22:"This Field is required";s:6:"_field";O:10:"WPCF_Field":16:{s:2:"cf";a:9:{s:2:"id";s:7:"address";s:4:"slug";s:7:"address";s:4:"type";s:8:"textarea";s:4:"name";s:7:"Address";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:22:"This Field is required";}}s:19:"conditional_display";a:2:{s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:12:"wpcf-address";s:9:"meta_type";s:8:"postmeta";s:5:"value";N;}s:6:"fields";N;s:4:"meta";N;s:6:"config";O:8:"stdClass":4:{s:2:"id";s:13:"wpcf-textarea";s:5:"title";s:14:"Multiple lines";s:11:"description";s:8:"Textarea";s:8:"validate";a:1:{i:0;s:8:"required";}}s:4:"form";a:0:{}s:4:"post";O:8:"stdClass":1:{s:2:"ID";i:0;}s:4:"slug";s:12:"wpcf-address";s:9:"use_cache";b:1;s:5:"cache";a:0:{}s:13:"add_to_editor";b:1;s:7:"context";s:5:"group";s:14:"invalid_fields";a:0:{}s:2:"ID";s:7:"address";s:9:"unique_id";s:34:"de03e302d304b5ef689a95f9aa21c57f-1";s:11:"meta_object";O:8:"stdClass":3:{s:7:"meta_id";N;s:8:"meta_key";N;s:10:"meta_value";N;}s:6:"__meta";N;}}}'),
(468, 7, 'wpcf-from-date', '1400491800'),
(469, 7, 'wpcf-to-date', '1400608800'),
(470, 7, 'wpcf-address', 'Kortrijk Xpo Meeting Center\r\nDoorniksesteenweg 216\r\n8500 Kortrijk, Belgium'),
(471, 7, 'wpcf-url', 'http://multi-mania.be/'),
(472, 7, 'wpcf-price', ''),
(474, 49, '_edit_last', '1'),
(476, 49, '_edit_lock', '1402552531:1'),
(477, 50, '_wp_attached_file', '2014/06/cm.jpg'),
(478, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:14:"2014/06/cm.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"cm-1000x450.jpg";s:5:"width";i:1000;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"cm-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"cm-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(479, 49, '_thumbnail_id', '50'),
(500, 49, 'wpcf-from-date', '1398412800'),
(501, 49, 'wpcf-to-date', ''),
(502, 49, 'wpcf-address', 'Parc D''Avroy, 4000 Liège'),
(503, 49, 'wpcf-url', 'http://creativemornings.com/cities/lg'),
(504, 49, 'wpcf-price', '0'),
(510, 45, 'wpcf-from-date', '1393095600'),
(511, 45, 'wpcf-to-date', '1393117200'),
(512, 45, 'wpcf-address', 'Musée des Sciences Naturelles\r\nRue Vautier 29, 1000 Bruxelles'),
(513, 45, 'wpcf-url', 'http://www.brusselsmuseums.be'),
(514, 45, 'wpcf-price', '14'),
(515, 41, '_user_liked', 'a:0:{}'),
(516, 41, '_post_like_count', '0'),
(517, 38, '_user_liked', 'a:0:{}'),
(518, 38, '_post_like_count', '0'),
(519, 52, '_edit_last', '1'),
(520, 52, '_edit_lock', '1402488369:1'),
(521, 41, 'wpcf-from-date', '1411632000'),
(522, 41, 'wpcf-to-date', ''),
(523, 41, 'wpcf-address', 'Shropshire Conference Centre\r\nRoyal Shrewsbury Hospital\r\nMytton Oak Road\r\nShrewsbury Shropshire\r\nSY3 8XQ'),
(524, 41, 'wpcf-url', 'http://2014.shropgeek-revolution.co.uk/index.html'),
(525, 41, 'wpcf-price', '0');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2014-06-05 19:45:51', '2014-06-05 19:45:51', '', 'Event Informations', '', 'publish', 'open', 'open', '', 'event-informations', '', '', '2014-06-09 22:48:29', '2014-06-09 22:48:29', '', 0, 'http://trace.dev/?wp-types-group=event-informations', 0, 'wp-types-group', '', 0),
(6, 1, '2014-06-05 19:49:18', '2014-06-05 19:49:18', '<h2><span class="title">Description</span></h2>\r\nReady to Inspire is back. On June, 10th - 12th the conference about the craft of web design will be held in Leiden, The Netherlands. Presenting an exciting lineup of todays craftspeople and mind blowing new faces. <a href="http://bencallahan.com/">Ben Callahan</a> (Sparkbox), <a href="http://capwatkins.com/">Cap Watkins</a> (Etsy), <a href="http://vasilis.nl/">Vasilis van Gemert</a>, <a href="http://danrubin.is/">Dan Rubin</a>, <a href="http://v1.jontangerine.com/">Jon Tangerine</a>, <a href="http://about.me/johannakoll/">Johanna Kollmann</a>, <a href="http://about.me/elleluna/">Elle Luna</a> and <a href="http://theheadsofstate.com/">The Heads of State</a> to name a few. It has workshops, live music, meetups and parties. Want to see what we did last year? <a href="http://vimeo.com/channels/inspireconf">Check our video page</a>.', 'Inspire', '', 'publish', 'closed', 'closed', '', 'inspire', '', '', '2014-06-10 15:16:30', '2014-06-10 15:16:30', '', 0, 'http://trace.dev/?post_type=event&#038;p=6', 0, 'event', '', 0),
(7, 1, '2014-06-05 19:52:27', '2014-06-05 19:52:27', '<h2><span class="title">Description</span></h2>\r\nThe Multi-Mania conference has become the annual event that brings together designers, developers, entrepreneurs and creative new media students. The enthusiasm surrounding this event is exciting and inspiring. Each year the conference grows a little bigger and each year the experience gets a little better.', 'Multi-Mania', '', 'publish', 'open', 'closed', '', 'multi-mania', '', '', '2014-06-10 23:19:48', '2014-06-10 23:19:48', '', 0, 'http://trace.dev/?post_type=event&#038;p=7', 0, 'event', '', 0),
(8, 1, '2014-06-05 19:53:07', '2014-06-05 19:53:07', '<p class="lead">Join Trace and keep you informed of all events related to the web and graphic design. But most importantly, share them.</p>', 'Trace', '', 'publish', 'open', 'open', '', 'trace', '', '', '2014-06-08 18:45:00', '2014-06-08 18:45:00', '', 0, 'http://trace.dev/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-06-05 19:53:07', '2014-06-05 19:53:07', '<p class="caps" style="color: #272222;">This is the AK-47 assault rifle, the preferred weapon of your enemy and it makes a distinctive sound when fired at you, so remember it. You see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. You dig. You want a guarantee, buy a toaster.</p>\r\n<p class="caps" style="color: #272222;">Ever notice how sometimes you come across somebody you shouldn’t have f**ked with? Well, I’m that guy. When a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, I figure he’s not out collecting for the red cross. Man’s gotta know his limitations.</p>', 'Trace', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-05 19:53:07', '2014-06-05 19:53:07', '', 8, 'http://trace.dev/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2014-06-05 20:04:25', '2014-06-05 20:04:25', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 'Trace', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-05 20:04:25', '2014-06-05 20:04:25', '', 8, 'http://trace.dev/8-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2014-06-05 20:15:08', '2014-06-05 20:15:08', '[wppb-login]', 'Sign in', '', 'trash', 'open', 'open', '', 'sign-in', '', '', '2014-06-10 14:28:50', '2014-06-10 14:28:50', '', 0, 'http://trace.dev/?page_id=13', 0, 'page', '', 0),
(14, 1, '2014-06-05 20:15:08', '2014-06-05 20:15:08', '[wppb-login]', 'Sign in', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-06-05 20:15:08', '2014-06-05 20:15:08', '', 13, 'http://trace.dev/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2014-06-05 20:15:36', '2014-06-05 20:15:36', '[wppb-register]', 'Sign up', '', 'trash', 'open', 'open', '', 'sign-up', '', '', '2014-06-10 14:28:50', '2014-06-10 14:28:50', '', 0, 'http://trace.dev/?page_id=15', 0, 'page', '', 0),
(16, 1, '2014-06-05 20:15:36', '2014-06-05 20:15:36', '[wppb-register]', 'Sign up', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-06-05 20:15:36', '2014-06-05 20:15:36', '', 15, 'http://trace.dev/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2014-06-05 20:16:02', '2014-06-05 20:16:02', '[wppb-recover-password]', 'Forgot password', '', 'trash', 'open', 'open', '', 'forgot-password', '', '', '2014-06-10 14:28:50', '2014-06-10 14:28:50', '', 0, 'http://trace.dev/?page_id=17', 0, 'page', '', 0),
(18, 1, '2014-06-05 20:16:02', '2014-06-05 20:16:02', '[wppb-recover-password]', 'Forgot password', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-05 20:16:02', '2014-06-05 20:16:02', '', 17, 'http://trace.dev/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2014-06-08 08:27:52', '2014-06-08 08:27:52', '', 'Archives', '', 'publish', 'open', 'open', '', 'archives', '', '', '2014-06-08 23:25:03', '2014-06-08 23:25:03', '', 0, 'http://trace.dev/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2014-06-08 08:28:42', '2014-06-08 08:28:42', '', 'User', '', 'publish', 'open', 'open', '', 'user', '', '', '2014-06-08 23:25:03', '2014-06-08 23:25:03', '', 0, 'http://trace.dev/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2014-06-08 13:09:25', '2014-06-08 13:09:25', 'Join Trace and keep you informed of all events related to the web and graphic design. But most importantly, share them.', 'Trace', '', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2014-06-08 13:09:25', '2014-06-08 13:09:25', '', 8, 'http://trace.dev/8-autosave-v1/', 0, 'revision', '', 0),
(23, 1, '2014-06-08 13:11:25', '2014-06-08 13:11:25', 'Join Trace and keep you informed of all events related to the web and graphic design. But most importantly, share them.', 'Trace', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-08 13:11:25', '2014-06-08 13:11:25', '', 8, 'http://trace.dev/8-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2014-06-08 18:45:00', '2014-06-08 18:45:00', '<p class="lead">Join Trace and keep you informed of all events related to the web and graphic design. But most importantly, share them.</p>', 'Trace', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-08 18:45:00', '2014-06-08 18:45:00', '', 8, 'http://trace.dev/8-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2014-06-08 18:54:13', '2014-06-08 18:54:13', '', 'Upcoming Events', '', 'publish', 'open', 'open', '', 'upcoming-events', '', '', '2014-06-08 18:59:57', '2014-06-08 18:59:57', '', 0, 'http://trace.dev/?page_id=25', 0, 'page', '', 0),
(26, 1, '2014-06-08 18:54:13', '2014-06-08 18:54:13', '', 'Upcoming Events', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-06-08 18:54:13', '2014-06-08 18:54:13', '', 25, 'http://trace.dev/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2014-06-08 18:54:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-06-08 18:54:19', '0000-00-00 00:00:00', '', 0, 'http://trace.dev/?page_id=27', 0, 'page', '', 0),
(28, 1, '2014-06-08 18:55:18', '2014-06-08 18:55:18', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2014-06-08 23:25:03', '2014-06-08 23:25:03', '', 0, 'http://trace.dev/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2014-06-08 20:18:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-08 20:18:38', '0000-00-00 00:00:00', '', 0, 'http://trace.dev/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2014-06-08 21:01:08', '2014-06-08 21:01:08', '', 'inspireconf', '', 'inherit', 'open', 'open', '', 'inspireconf', '', '', '2014-06-08 21:01:08', '2014-06-08 21:01:08', '', 7, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/inspireconf.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2014-06-09 07:28:15', '2014-06-09 07:28:15', '<h2><span class="title">Description</span></h2>\r\n<p style="color: #626361;">If you are passionate about the craft that goes into your work, then this conference is for you. Bringing you the world''s most talented designers, coders, creatives, film makers, animators, installation builders, illustrators, and artists presenting 3 tracks over 3 full days. Make no mistake, this is an event that you will walk away from inspired, enlightened, and with a bigger network than when you arrived.</p>\r\n<p style="color: #626361;">Reasons to be Creative is a conference for web designers, coders, &amp; anyone with a creative mind. It takes place in Brighton, UK, and is always on the first Monday, Tuesday &amp; Wednesday of September every year. Reasons brings together the best in art, design, code, &amp; inspiration, and is a fantastic 3 days of education and inspiration</p>\r\n<h2><span class="title">Who''s concern ?</span></h2>\r\nIf you are a designer, developer, coder, manager, game developer, artist, animator or a newbie, then you should not miss this event! If you are the type of person who agonises over the details, care about your craft, and you choose to surround yourself with the best in design, code and inspiration, then you should attend.\r\nFor the 8th year in a row, we have another phenomenal line up of speakers. This is your chance to see over 35+ of the best minds in art, design and code, delivering 3 full days of awe-inspiring sessions, plus workshops that will give you in-depth training from the worlds best speakers! Do not miss out! Obvs!\r\nIf you are only interested in how to build a widget, or a snippet of code, then go get some training. If you want to get your fix of inspiration, motivation, AND those code snippets, then this is the event for you!\r\nReasons is guaranteed to reach your ''wow-receptors''. You will leave pumped with ideas, a bigger network, and eager to create great work!', 'Reasons To Be Creative', '', 'publish', 'closed', 'closed', '', 'reasons-to-be-creative', '', '', '2014-06-10 15:16:22', '2014-06-10 15:16:22', '', 0, 'http://trace.dev/?post_type=event&#038;p=32', 0, 'event', '', 0),
(33, 1, '2014-06-09 07:14:45', '2014-06-09 07:14:45', '', 'reasons', '', 'inherit', 'open', 'open', '', 'reasons', '', '', '2014-06-09 07:14:45', '2014-06-09 07:14:45', '', 32, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/reasons.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2014-06-09 08:14:53', '2014-06-09 08:14:53', '<h2>Description</h2>\n<p style="color: #626361;">If you are passionate about the craft that goes into your work, then this conference is for you. Bringing you the world''s most talented designers, coders, creatives, film makers, animators, installation builders, illustrators, and artists presenting 3 tracks over 3 full days. Make no mistake, this is an event that you will walk away from inspired, enlightened, and with a bigger network than when you arrived.</p>\n<p style="color: #626361;">Reasons to be Creative is a conference for web designers, coders, &amp; anyone with a creative mind. It takes place in Brighton, UK, and is always on the first Monday, Tuesday &amp; Wednesday of September every year. Reasons brings together the best in art, design, code, &amp; inspiration, and is a fantastic 3 days of education and inspiration</p>\n<h2>Wh</h2>', 'Reasons To Be Creative', '', 'inherit', 'open', 'open', '', '32-autosave-v1', '', '', '2014-06-09 08:14:53', '2014-06-09 08:14:53', '', 32, 'http://trace.dev/32-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2014-06-10 13:07:18', '2014-06-10 13:07:18', '', 'logo-tagline', '', 'inherit', 'open', 'open', '', 'logo-tagline', '', '', '2014-06-10 13:07:18', '2014-06-10 13:07:18', '', 8, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/logo-tagline.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2014-06-10 16:06:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-06-10 16:06:21', '0000-00-00 00:00:00', '', 0, 'http://trace.dev/?post_type=event&p=36', 0, 'event', '', 0),
(37, 1, '2014-06-10 16:08:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-06-10 16:08:06', '0000-00-00 00:00:00', '', 0, 'http://trace.dev/?post_type=event&p=37', 0, 'event', '', 0),
(38, 1, '2014-06-10 16:27:55', '2014-06-10 16:27:55', '<h2><span class="title">Description</span></h2>\r\nIn its 17 years, IWMW has grown into a unique forum to share best practice, hear about new developments and discuss their relevance with peers.\r\nEach year, we bring together a vibrant community of people responsible for institutional web services across the UK education sector.\r\nThrough plenary sessions and practical workshops, attendees will have a chance to update their skills and develop their professional networks.\r\n<h2><span class="title">Speakers</span></h2>\r\nBrian Kelly - Tracy Playle - Paul Boag - Ranjit Sidhu - Sharif Salah - Ross Ferguson - Neil Allison\r\n<h2><span class="title">Favourite Speaker</span></h2>\r\n[caption width="256" align="alignleft"]<img src="http://smashingconf.com/oxford-2014/content/02-speakers/00-paul-boag/paul-boag.jpg" width="256" height="256" alt="Paul Boag Image" class /><h3 style="margin-top:0;">Paul Boag</h3><br />Paul Boag has been working with the web since 1994. He is now co-founder of the digital agency Headscape, where he works closely with clients to establish their web strategy.<br /><a href="https://twitter.com/Boagworld" title="@boagworld" target="_blank">@boagworld</a><br /><a href="www.headscape.co.uk/people/paul-boag.html" title="www.headscape.co.uk/people/paul-boag.html" target="_blank">www.headscape.co.uk/people/paul-boag.html</a>[/caption]', 'IWMW 2.014', '', 'publish', 'closed', 'closed', '', 'iwmw-2-014', '', '', '2014-06-10 18:23:00', '2014-06-10 18:23:00', '', 0, 'http://trace.dev/?post_type=event&#038;p=38', 0, 'event', '', 0),
(39, 1, '2014-06-10 17:37:59', '2014-06-10 17:37:59', '<h2><span class="title">Description</span></h2>\r\nIn its 17 years, IWMW has grown into a unique forum to share best practice, hear about new developments and discuss their relevance with peers.\r\nEach year, we bring together a vibrant community of people responsible for institutional web services across the UK education sector.\r\nThrough plenary sessions and practical workshops, attendees will have a chance to update their skills and develop their professional networks.\r\n<h2><span class="title">Speakers</span></h2>\r\nBrian Kelly - Tracy Playle - Paul Boag - Ranjit Sidhu - Sharif Salah - Ross Ferguson - Neil Allison\r\n<h2><span class="title">Favourite Speaker</span></h2>\r\n[caption width="256" align="alignleft"]<img src="http://smashingconf.com/oxford-2014/content/02-speakers/00-paul-boag/paul-boag.jpg" width="256" height="256" alt="Paul Boag Image" class /><h3>Paul Boag</h3><br />Paul Boag has been working with the web since 1994. He is now co-founder of the digital agency Headscape, where he works closely with clients to establish their web strategy.<br /><a href="https://twitter.com/Boagworld" title="@boagworld" target="_blank">@boagworld</a><br /><a href="www.headscape.co.uk/people/paul-boag.html" title="www.headscape.co.uk/people/paul-boag.html" target="_blank">www.headscape.co.uk/people/paul-boag.html</a>[/caption]', 'IWMW 2.014', '', 'inherit', 'open', 'open', '', '38-autosave-v1', '', '', '2014-06-10 17:37:59', '2014-06-10 17:37:59', '', 38, 'http://trace.dev/38-autosave-v1/', 0, 'revision', '', 0),
(40, 1, '2014-06-10 17:03:36', '2014-06-10 17:03:36', '', 'iwmw', '', 'inherit', 'open', 'open', '', 'iwmw', '', '', '2014-06-10 17:03:36', '2014-06-10 17:03:36', '', 38, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/iwmw.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2014-06-10 18:45:59', '2014-06-10 18:45:59', '<h2><span class="title">Description</span></h2>\r\nAfter 3 years as an evening event, 2013 saw (R)Evolution evolve into a full day, single-track web conference. It was so awesome we are doing it all again!\r\n\r\nOnce again, we have 8 of the web''s most revolutionary thinkers and space for 200 attendees. So whether you''re a web industry veteran or just starting your career, you won''t want to miss out on the chance to be part of one of the friendliest web conferences in the UK.', '(R)evolution', '', 'publish', 'open', 'closed', '', 'revolution', '', '', '2014-06-11 18:03:10', '2014-06-11 18:03:10', '', 0, 'http://trace.dev/?post_type=event&#038;p=41', 0, 'event', '', 0),
(42, 1, '2014-06-10 18:46:09', '2014-06-10 18:46:09', 'Dafydd Vaughan speaking at the 2013 Shropgeek Revolution  web conference held at The Shropshire conference centre, Shrewsbury Hospital.', 'revolution', '', 'inherit', 'open', 'open', '', 'revolution-2', '', '', '2014-06-10 18:46:09', '2014-06-10 18:46:09', '', 41, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/revolution.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2014-06-10 22:54:19', '2014-06-10 22:54:19', '', 'bt', '', 'inherit', 'open', 'open', '', 'bt', '', '', '2014-06-10 22:54:19', '2014-06-10 22:54:19', '', 7, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/bt.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2014-06-10 22:55:34', '2014-06-10 22:55:34', '', 'mm', '', 'inherit', 'open', 'open', '', 'mm', '', '', '2014-06-10 22:55:34', '2014-06-10 22:55:34', '', 7, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/mm.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2014-06-10 23:01:44', '2014-06-10 23:01:44', '<h2><span class="title">Description</span></h2>\r\nBody painting, projections, live painting, photographie, videomapping, présentation d’œuvres graphiques et concerts auront lieu tout au long de la soirée au Muséum des Sciences naturelles. L’asbl MacSwell et le musée ont invité plus de 40 artistes à se produire, un projet unique préparé pendant plusieurs mois. Ils vous proposent un voyage visuel dans une nature entièrement revisitée. Le Muséum comme vous ne l’avez jamais vu !\r\n\r\n<h2><span class="title">Unique</span></h2>\r\nCe soir, vous avez rendez-vous avec un gigantesque T. rex, un diplodocus, une famille d’iguanodons, un immense squelette de baleine, des animaux naturalisés du monde entier, d’incroyables minéraux, etc. sans oublier les sujets de la biodiversité et l’évolution de la vie.', 'Museum Night Fever', '', 'publish', 'open', 'open', '', 'museum-night-fever', '', '', '2014-06-10 23:43:26', '2014-06-10 23:43:26', '', 0, 'http://trace.dev/?post_type=event&#038;p=45', 0, 'event', '', 0),
(46, 1, '2014-06-10 22:56:43', '2014-06-10 22:56:43', '', 'mnf', '', 'inherit', 'open', 'open', '', 'mnf', '', '', '2014-06-10 22:56:43', '2014-06-10 22:56:43', '', 45, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/mnf.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2014-06-10 23:02:45', '2014-06-10 23:02:45', 'Body painting, projections, live painting, photographie, videomapping, présentation d’œuvres graphiques et concerts auront lieu tout au long de la soirée au Muséum des Sciences naturelles. L’asbl MacSwell et le musée ont invité plus de 40 artistes à se produire, un projet unique préparé pendant plusieurs mois. Ils vous proposent un voyage visuel dans une nature entièrement revisitée. Le Muséum comme vous ne l’avez jamais vu !', 'Museum Night Fever', '', 'inherit', 'open', 'open', '', '45-autosave-v1', '', '', '2014-06-10 23:02:45', '2014-06-10 23:02:45', '', 45, 'http://trace.dev/45-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2014-06-10 23:19:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-06-10 23:19:27', '0000-00-00 00:00:00', '', 0, 'http://trace.dev/?post_type=event&p=48', 0, 'event', '', 0),
(49, 1, '2014-06-10 23:36:53', '2014-06-10 23:36:53', '<h2><span class="title">Description</span></h2>\r\nEn 2008, Tina Roth Eisenberg (SwissMiss) a commencé CreativeMornings d''un désir pour un événement accessible en cours pour la communauté créative de New York. Le concept était simple: le petit déjeuner et une courte conversation, un vendredi matin par mois. Chaque événement serait gratuit et ouvert à tous.\r\n\r\nAujourd''hui, les participants se rassemblent dans les villes du monde entier pour profiter du café frais, des gens sympathiques, et un tableau international des aliments du petit déjeuner. Hôtes bénévoles et membres de leur équipe organisent des sections locales qui non seulement célèbrent le talent créatif d''une ville, mais aussi à promouvoir un espace ouvert pour se connecter avec des personnes partageant les mêmes idées.\r\n\r\n<h2><span class="title">Kroll</span></h2>\r\nAujourd’hui caricaturiste connu et reconnu, Pierre Kroll est né en République Démocratique du Congo, du temps du Congo belge. Il a étudié l’architecture et travaillé quelques temps dans ce domaine avant de bifurquer, milieu des années 80, vers le dessin, travaillant depuis lors, peu ou prou pour l’ensemble des titres de la presse belge. Pierre Kroll est aussi habitué des plateaux télé et radio. Ses travaux font l’objet d’expositions, de prix, de mise en valeur à l’étranger.', 'Creative Morning', '', 'publish', 'open', 'closed', '', 'creative-morning', '', '', '2014-06-10 23:42:26', '2014-06-10 23:42:26', '', 0, 'http://trace.dev/?post_type=event&#038;p=49', 0, 'event', '', 0),
(50, 1, '2014-06-10 23:36:30', '2014-06-10 23:36:30', '', 'cm', '', 'inherit', 'open', 'open', '', 'cm', '', '', '2014-06-10 23:36:30', '2014-06-10 23:36:30', '', 49, 'http://trace.dev/wordpress/wp-content/uploads/2014/06/cm.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2014-06-10 23:40:36', '2014-06-10 23:40:36', 'En 2008, Tina Roth Eisenberg (SwissMiss) a commencé CreativeMornings d''un désir pour un événement accessible en cours pour la communauté créative de New York. Le concept était simple: le petit déjeuner et une courte conversation, un vendredi matin par mois. Chaque événement serait gratuit et ouvert à tous.\n\nAujourd''hui, les participants se rassemblent dans les villes du monde entier pour profiter du café frais, des gens sympathiques, et un tableau international des aliments du petit déjeuner. hôtes bénévoles et les membres de leur équipe organisent des sections locales qui non seulement célèbrent le talent créatif d''une ville, mais aussi à promouvoir un espace ouvert pour se connecter avec des personnes partageant les mêmes idées.\n\nAujourd’hui caricaturiste connu et reconnu, Pierre Kroll est né en République Démocratique du Congo, du temps du Congo belge. Il a étudié l’architecture et travaillé quelques temps dans ce domaine avant de bifurquer, milieu des années 80, vers le dessin, travaillant depuis lors, peu ou prou pour l’ensemble des titres de la presse belge. Pierre Kroll est aussi habitué des plateaux télé et radio. Ses travaux font l’objet d’expositions, de prix, de mise en valeur à l’étranger.', 'Creative Morning', '', 'inherit', 'open', 'open', '', '49-autosave-v1', '', '', '2014-06-10 23:40:36', '2014-06-10 23:40:36', '', 49, 'http://trace.dev/49-autosave-v1/', 0, 'revision', '', 0),
(52, 1, '2014-06-11 12:06:09', '0000-00-00 00:00:00', '', 'Share An Event', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-11 12:06:09', '2014-06-11 12:06:09', '', 0, 'http://trace.dev/?page_id=52', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `title` longtext NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) NOT NULL DEFAULT '',
  `meta` longtext,
  KEY `activation_key` (`activation_key`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Nav', 'main-nav', 0),
(3, 'Festival', 'festival', 0),
(4, 'Conference', 'conference', 0),
(5, 'Exhibitions', 'exhibitions', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 4, 0),
(7, 3, 0),
(20, 2, 0),
(21, 2, 0),
(28, 2, 0),
(32, 3, 0),
(38, 3, 0),
(41, 4, 0),
(45, 5, 0),
(49, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'wpcf-group-form-toggle', 'a:1:{i:5;a:10:{s:16:"fieldset-to-date";i:1;s:18:"fieldset-from-date";i:1;s:12:"fieldset-url";i:1;s:24:"fieldset-image-718780627";i:1;s:35:"image-718780627_conditional_display";i:1;s:20:"fieldset-cover-event";i:1;s:16:"fieldset-address";i:1;s:38:"numeric-1948810980_conditional_display";i:1;s:26:"fieldset-wysiwyg-204032117";i:1;s:19:"fieldset-google-map";i:1;}}'),
(16, 1, 'closedpostboxes_event', 'a:1:{i:0;s:14:"wpcf-marketing";}'),
(17, 1, 'metaboxhidden_event', 'a:2:{i:0;s:14:"wpcf-marketing";i:1;s:7:"slugdiv";}'),
(18, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&hidetb=0&wplink=0'),
(19, 1, 'wp_user-settings-time', '1402421814'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(22, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(26, 1, 'wp__liked_posts', 'a:0:{}'),
(27, 1, 'wp__user_like_count', '0'),
(28, 1, 'closedpostboxes_settings_page_front-end-editor', 'a:0:{}'),
(29, 1, 'metaboxhidden_settings_page_front-end-editor', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BfJtuD3nTEHyO5Ytyn02po2EVv9NOG.', 'admin', 'eliececiora@gmail.com', '', '2014-06-05 19:13:47', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`) VALUES
(2, 1, 'Brighton Dome Church Street Brighton BN1 1UG', '', '', '', '', '50.8237068', '-0.13907689999996364', '0', '', '0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(50) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Reasons', '100', '300', '49.853022', '0.450065', '49.85302160013893,0.45006454687495534', 5, '0', 1, 2, 1, 0, '', 0, '', 2, 2, 1, '250', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:6:{s:21:"store_locator_enabled";i:2;s:22:"store_locator_distance";i:2;s:13:"weather_layer";i:2;s:23:"weather_layer_temp_type";i:1;s:11:"cloud_layer";i:2;s:15:"transport_layer";i:2;}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
