/*
 Navicat Premium Data Transfer

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 127.0.0.1:3306
 Source Schema         : api_mis

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 25/06/2021 17:12:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `fileID` int(0) NOT NULL,
  `fromPerson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `toPerson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `fileName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`fileID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (3, '3501400432499', '555,111,101010ee', 'ไม่รู้', NULL, '[\"19.reportnso.doc\"]', '1/', '2021-05-21 07:30:51', '2021-05-21 07:30:51');
INSERT INTO `files` VALUES (4, '3501400432499', '222,555', 'ฟหกดฟหก', 'ฟกหดฟหกดฟดพพพพพพ', '[\"22.jpg\"]', '1/', '2021-05-21 07:34:33', '2021-05-21 07:34:33');
INSERT INTO `files` VALUES (5, '3501400432499', '101010ee,333', 'ฟหกดฟหก', 'ัำัะำีัะำีั', '[\"19.reportnso.doc\",\"26.jpg\"]', '1/', '2021-05-21 07:40:36', '2021-05-21 07:40:36');
INSERT INTO `files` VALUES (6, '3501400432499', '101010', 'ยยยยย', 'ีรรรรรร', '[\"620201012-110351.xls\"]', NULL, '2021-05-31 06:02:54', '2021-05-31 06:02:54');
INSERT INTO `files` VALUES (7, '3501400432499', '3501400432499', 'ดฟเเเำ', 'ฟหดกฟเหฟเ', '[\"7-project-P015.docx\"]', NULL, '2021-05-31 06:08:21', '2021-05-31 06:08:21');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_05_19_040855_create_files_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_06_15_025748_create_sessions_table', 2);

-- ----------------------------
-- Table structure for mis_modules
-- ----------------------------
DROP TABLE IF EXISTS `mis_modules`;
CREATE TABLE `mis_modules`  (
  `moduleID` int(0) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`moduleID`) USING BTREE,
  UNIQUE INDEX `moduleName_UNIQUE`(`moduleName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_modules
-- ----------------------------
INSERT INTO `mis_modules` VALUES (26, '1111', 'a9988', 'N');
INSERT INTO `mis_modules` VALUES (27, '2222', 'b', 'Y');
INSERT INTO `mis_modules` VALUES (28, '3333', 'c', 'Y');
INSERT INTO `mis_modules` VALUES (29, '4444', 'd', 'Y');
INSERT INTO `mis_modules` VALUES (45, 'wqatqa', 'adfsad', 'Y');
INSERT INTO `mis_modules` VALUES (46, 'fgh', 'df', 'Y');
INSERT INTO `mis_modules` VALUES (47, '999', '89989', 'Y');
INSERT INTO `mis_modules` VALUES (48, '86646', 'af', 'Y');

-- ----------------------------
-- Table structure for mis_users
-- ----------------------------
DROP TABLE IF EXISTS `mis_users`;
CREATE TABLE `mis_users`  (
  `personID` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payrollID` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `active` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`personID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_users
-- ----------------------------
INSERT INTO `mis_users` VALUES ('101010', '012044', 'กกกก', 'ขขขข', 'aa55@dd.com', NULL, NULL, 'N');
INSERT INTO `mis_users` VALUES ('10101055', '012043', 'ขขขข', 'คคคค', 'daee@dd.com', NULL, NULL, 'N');
INSERT INTO `mis_users` VALUES ('101010ee', '012041', 'ศราวุธ', 'บุญอิน', 'adsalute@gmail.com', NULL, NULL, 'N');
INSERT INTO `mis_users` VALUES ('111', '012040', 'งงงง', 'ยยยย', '111', NULL, NULL, 'Y');
INSERT INTO `mis_users` VALUES ('333', '012038', 'ออออ', 'บบ', '111', NULL, NULL, 'Y');
INSERT INTO `mis_users` VALUES ('3501400432499', '012039', 'พพพพ', 'หหห', '111', 'bcbe3365e6ac95ea2c0343a2395834dd', NULL, 'N');
INSERT INTO `mis_users` VALUES ('444', '012037', 'ววววว', 'ลลลล', 'asss@ttt.com', NULL, NULL, 'Y');
INSERT INTO `mis_users` VALUES ('555', '012036', 'ยยย', 'ฃฃฃ', '111', NULL, NULL, 'Y');
INSERT INTO `mis_users` VALUES ('55764', '012035', 'ฝฝฝฝฝ', 'บุญอิน', 'adsalute@gmail.com', NULL, NULL, 'Y');

-- ----------------------------
-- Table structure for mis_users_access_modules
-- ----------------------------
DROP TABLE IF EXISTS `mis_users_access_modules`;
CREATE TABLE `mis_users_access_modules`  (
  `moduleID` int(0) NOT NULL,
  `levelAccess` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `personID` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`moduleID`, `personID`, `levelAccess`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(0) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(0) NOT NULL,
  UNIQUE INDEX `sessions_id_unique`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'สามารถ ขาวแสง', 'sss@thik.com', NULL, '$2y$10$rm.UC2.L8QyoyyCNb6qQ4.QdipAp9VMYR5R9GEQnaFmVxqy3E03SW', NULL, '2021-06-02 06:44:25', '2021-06-02 06:44:25');
INSERT INTO `users` VALUES (2, 'ศราวุธ บุญอิน', 'adsalute@gmail.com', NULL, '$2y$10$WjFyqtDMF4C7JxQreVk.MebwN4i7ai04YkVdvxQosVbZXmUrBKshi', 'SzuXE7CqfWwpEiHHQrJUSnwg9LR5mnuLFtMbVqJ1SAimkKDrLCXv0nH4hGDm', '2021-06-25 04:49:04', '2021-06-25 04:49:04');

SET FOREIGN_KEY_CHECKS = 1;
