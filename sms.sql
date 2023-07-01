/*
 Navicat Premium Data Transfer

 Source Server         : TANPHAT
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : sms

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 19/12/2022 15:42:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (7, 'sonthuhe@gmail.com', 'son', 'heungmin');
INSERT INTO `students` VALUES (8, 'khaiip11pro@gmail.com', 'khaibeo', 'ip11pro');
INSERT INTO `students` VALUES (9, 'baoheo@gmail.com', 'bao', 'heo');
INSERT INTO `students` VALUES (10, 'votruongvy02@gmail.com', 'vo truong', 'vy');
INSERT INTO `students` VALUES (11, 'caohoanganh@gmail.com', 'cao hoang', 'anh');
INSERT INTO `students` VALUES (12, 'vansanh2002@gmail.com', 'nguyen van', 'sanh');
INSERT INTO `students` VALUES (14, 'tai2004@gmail.com', 'tan', 'tai');

SET FOREIGN_KEY_CHECKS = 1;
