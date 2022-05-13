/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : db_company_mki

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 24/03/2022 16:33:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_history
-- ----------------------------
DROP TABLE IF EXISTS `log_history`;
CREATE TABLE `log_history`  (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `login` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `logout` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_history
-- ----------------------------
INSERT INTO `log_history` VALUES (167, 'admin', 'logout', '2020-10-24 20:46:13', '2020-10-24 20:51:21');
INSERT INTO `log_history` VALUES (168, 'superadmin', 'logout', '2020-10-24 20:52:27', '2020-10-24 20:52:54');
INSERT INTO `log_history` VALUES (169, 'superadmin', 'logout', '2020-10-26 01:09:09', '2020-10-26 01:10:03');
INSERT INTO `log_history` VALUES (170, 'admin', 'login', '2020-10-26 01:10:34', '2020-10-26 01:10:34');

-- ----------------------------
-- Table structure for tbl_activity
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity`  (
  `id` int(11) NOT NULL,
  `id_activity` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posted_by` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_status` int(1) NOT NULL,
  `post_time` datetime(0) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_activity`(`id_activity`) USING BTREE,
  INDEX `posted_by`(`posted_by`) USING BTREE,
  CONSTRAINT `tbl_activity_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_all_team
-- ----------------------------
DROP TABLE IF EXISTS `tbl_all_team`;
CREATE TABLE `tbl_all_team`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posted_by` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_time` datetime(0) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posted_by`(`posted_by`) USING BTREE,
  CONSTRAINT `tbl_all_team_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_download
-- ----------------------------
DROP TABLE IF EXISTS `tbl_download`;
CREATE TABLE `tbl_download`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_download` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posted_by` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_time` datetime(0) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_download`(`id_download`) USING BTREE,
  INDEX `posted_by`(`posted_by`) USING BTREE,
  CONSTRAINT `tbl_download_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_kategori` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kategori`(`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (1, 'KTG-0001', 'Application', 'application system, website, mobile', '2020-10-24 21:48:01', '2020-10-24 21:48:01');
INSERT INTO `tbl_kategori` VALUES (2, 'KTG-0002', 'UI / UX', 'UI / UX Design', '2020-10-24 21:48:31', '2020-10-24 21:48:31');
INSERT INTO `tbl_kategori` VALUES (3, 'KTG-0003', 'Mockup', 'Mockup design', '2020-10-24 21:48:51', '2020-10-24 21:48:51');
INSERT INTO `tbl_kategori` VALUES (4, 'KTG-0004', 'Photography', 'All about photos', '2020-10-24 22:01:26', '2020-10-24 22:01:26');
INSERT INTO `tbl_kategori` VALUES (5, 'KTG-0005', 'Cartoon Ilustration', 'Cartoon ilustration design', '2020-10-24 22:02:20', '2020-10-24 22:02:20');

-- ----------------------------
-- Table structure for tbl_level
-- ----------------------------
DROP TABLE IF EXISTS `tbl_level`;
CREATE TABLE `tbl_level`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_level` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name_level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_level`(`id_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_level
-- ----------------------------
INSERT INTO `tbl_level` VALUES (1, 'LVL-0001', 'superadmin', 'highest level of admin', '2020-10-24 19:44:38', '2020-10-24 19:45:32');
INSERT INTO `tbl_level` VALUES (2, 'LVL-0002', 'admin', 'general admin', '2020-10-24 19:45:20', '2020-10-24 19:45:20');

-- ----------------------------
-- Table structure for tbl_portofolio
-- ----------------------------
DROP TABLE IF EXISTS `tbl_portofolio`;
CREATE TABLE `tbl_portofolio`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_portofolio` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kategori` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posted_by` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_status` int(1) NOT NULL,
  `post_time` datetime(0) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_portofolio`(`id_portofolio`) USING BTREE,
  INDEX `id_kategori`(`id_kategori`) USING BTREE,
  INDEX `posted_by`(`posted_by`) USING BTREE,
  CONSTRAINT `tbl_portofolio_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_portofolio_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_produk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE `tbl_produk`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_produk` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posted_by` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_status` int(1) NOT NULL,
  `post_time` datetime(0) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posted_by`(`posted_by`) USING BTREE,
  INDEX `id_produk`(`id_produk`) USING BTREE,
  CONSTRAINT `tbl_produk_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_produk
-- ----------------------------
INSERT INTO `tbl_produk` VALUES (3, 'PRD-20201024-0000001', 'ATLANKLIK', 'ATLANKLIK merupakan Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ', 'https://www.atlanklik.com', 'assets/img/produk/ATLANKLIK_20201024.jpg', 'USER02', 1, '2020-10-24 22:15:23', '2020-10-24 22:15:42', '2020-10-25 00:41:56');
INSERT INTO `tbl_produk` VALUES (7, 'PRD-20201024-0000002', 'KLIKKANTIN', 'KLIKKANTIN merupakan Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ', 'https://www.klikkantin.com', 'assets/img/produk/KLIKKANTIN_20201024.jpg', 'USER02', 1, '2020-10-24 23:10:55', '2020-10-24 23:10:34', '2020-10-25 00:41:59');

-- ----------------------------
-- Table structure for tbl_team
-- ----------------------------
DROP TABLE IF EXISTS `tbl_team`;
CREATE TABLE `tbl_team`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_team` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jabatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deksripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_team`(`id_team`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_level` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link_after_login` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `id_level`(`id_level`) USING BTREE,
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tbl_level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (2, 'USER01', 'Top Leader', 'superadmin', 'superadmin@multikreatifindonesia.com', 'ac497cfaba23c4184cb03b97e8c51e0a', 'LVL-0001', 'superadmin/Main_superadmin/index', '2020-10-24 19:47:05', '2020-10-24 20:44:08');
INSERT INTO `tbl_user` VALUES (3, 'USER02', 'Top Management', 'admin', 'admin@multikreatifindonesia.com', '0192023a7bbd73250516f069df18b500', 'LVL-0002', 'admin/Main_admin/index', '2020-10-24 19:50:16', '2020-10-24 20:43:49');

SET FOREIGN_KEY_CHECKS = 1;
