/*
Navicat MySQL Data Transfer

Source Server         : ll
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : tianchuang

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-08 16:53:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(30) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `remaining` int(10) DEFAULT NULL,
  `bookshelf_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('2', 'tianchuang', '15097', '123456', '20', '16', 'p5');
INSERT INTO `book` VALUES ('3', 'tianchuan', '15', '66998', '20', '17', 'p5');
INSERT INTO `book` VALUES ('5', 'szad', 'sdad', 'sdads', '12', '10', 'dsada');

-- ----------------------------
-- Table structure for book_bao
-- ----------------------------
DROP TABLE IF EXISTS `book_bao`;
CREATE TABLE `book_bao` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `book_id` int(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_bao
-- ----------------------------
INSERT INTO `book_bao` VALUES ('20', '2', '5', '2018-03-07 15:08:45');
INSERT INTO `book_bao` VALUES ('21', '2', '3', '2018-04-08 15:09:24');
INSERT INTO `book_bao` VALUES ('22', '2', '2', '2018-04-08 15:09:28');
INSERT INTO `book_bao` VALUES ('23', '2', '2', '2018-04-08 15:09:34');
INSERT INTO `book_bao` VALUES ('24', '2', '2', '2018-04-08 15:09:40');
INSERT INTO `book_bao` VALUES ('25', '2', '3', '2018-04-08 15:09:44');
INSERT INTO `book_bao` VALUES ('26', '5', '5', '2018-04-08 15:11:29');
INSERT INTO `book_bao` VALUES ('27', '5', '2', '2018-04-08 15:11:34');
INSERT INTO `book_bao` VALUES ('28', '5', '3', '2018-04-08 15:11:38');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2014_04_04_134353_creaet_admins_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),

) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'ttt', '1234@qq.cpm', '$2y$10$13qVuw3rZGKFFfmiYEguJOpSWumtEIbuWvJcZMtDzaxfTjQ5RWd2e', '2BRObyHjYAdApmkQP3KlMuxvsl44tLdx69StxSC7sXpE8XgcI5cJ4X6kbWfe', '1992-04-07', '2018-04-06 09:45:13');
INSERT INTO `users` VALUES ('5', 'yian', 'tianchuang@qq.com', '$2y$10$f1XfmAW5AnMDnwnSuLnPsegav13FLXpsJwPqJLUy8YDeHVj/Fnzli', 'A4C6eGlEyH3SyKaY8OHWU9l3Q16DG5ITKLlBsHsxHT2dRBs65hOAQWryxMZ6', '2015-03-14', '2018-04-07 16:42:40');
INSERT INTO `users` VALUES ('6', 'tianchuang', '1509760688@qq.com', '$2y$10$5O0eT1Ho3gKwN9oDLsJ4VukXNXzrt/QF2hHBQZ53GNdZHOjj3.kze', 'gXflWFWVATf4NJflgLNq0dzlk46AP6JkOktJnK5yTMUT6bUwjLnWlDVX9tNa', '2018-04-07', '2018-04-07 20:23:17');
