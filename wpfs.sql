/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50740 (5.7.40)
 Source Host           : localhost:3306
 Source Schema         : wpfs

 Target Server Type    : MySQL
 Target Server Version : 50740 (5.7.40)
 File Encoding         : 65001

 Date: 07/06/2023 17:40:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accuracy_rate
-- ----------------------------
DROP TABLE IF EXISTS `accuracy_rate`;
CREATE TABLE `accuracy_rate`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `collwire_id` int(8) NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `short_rate` float NULL DEFAULT NULL,
  `ultra_rate` float NULL DEFAULT NULL,
  `upload_rate` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accuracy_rate
-- ----------------------------
INSERT INTO `accuracy_rate` VALUES (1, 1, '2023-05-30 00:00:00', 13, 87, 100);
INSERT INTO `accuracy_rate` VALUES (2, 1, '2023-05-30 00:15:00', 81, 2, 100);
INSERT INTO `accuracy_rate` VALUES (3, 1, '2023-05-30 00:30:00', 35, 73, 100);
INSERT INTO `accuracy_rate` VALUES (4, 1, '2023-05-30 00:45:00', 55, 99, 100);
INSERT INTO `accuracy_rate` VALUES (5, 1, '2023-05-30 01:00:00', 25, 4, 100);
INSERT INTO `accuracy_rate` VALUES (6, 1, '2023-05-30 01:15:00', 19, 10, 100);
INSERT INTO `accuracy_rate` VALUES (7, 1, '2023-05-30 01:30:00', 57, 0, 100);
INSERT INTO `accuracy_rate` VALUES (8, 1, '2023-05-30 01:45:00', 10, 94, 100);
INSERT INTO `accuracy_rate` VALUES (9, 1, '2023-05-30 02:00:00', 5, 73, 100);
INSERT INTO `accuracy_rate` VALUES (10, 1, '2023-05-30 02:15:00', 67, 71, 100);
INSERT INTO `accuracy_rate` VALUES (11, 1, '2023-05-30 02:30:00', 36, 3, 100);
INSERT INTO `accuracy_rate` VALUES (12, 1, '2023-05-30 02:45:00', 83, 94, 100);
INSERT INTO `accuracy_rate` VALUES (13, 1, '2023-05-30 03:00:00', 35, 36, 100);
INSERT INTO `accuracy_rate` VALUES (14, 1, '2023-05-30 03:15:00', 77, 26, 100);
INSERT INTO `accuracy_rate` VALUES (15, 1, '2023-05-30 03:30:00', 72, 3, 100);
INSERT INTO `accuracy_rate` VALUES (16, 1, '2023-05-30 03:45:00', 77, 61, 100);
INSERT INTO `accuracy_rate` VALUES (17, 1, '2023-05-30 04:00:00', 14, 86, 100);
INSERT INTO `accuracy_rate` VALUES (18, 1, '2023-05-30 04:15:00', 49, 36, 100);
INSERT INTO `accuracy_rate` VALUES (19, 1, '2023-05-30 04:30:00', 80, 20, 100);
INSERT INTO `accuracy_rate` VALUES (20, 1, '2023-05-30 04:45:00', 28, 24, 100);
INSERT INTO `accuracy_rate` VALUES (21, 1, '2023-05-30 05:00:00', 78, 91, 100);
INSERT INTO `accuracy_rate` VALUES (22, 1, '2023-05-30 05:15:00', 77, 51, 100);
INSERT INTO `accuracy_rate` VALUES (23, 1, '2023-05-30 05:30:00', 47, 86, 100);
INSERT INTO `accuracy_rate` VALUES (24, 1, '2023-05-30 05:45:00', 44, 24, 100);
INSERT INTO `accuracy_rate` VALUES (25, 1, '2023-05-30 06:00:00', 53, 71, 100);
INSERT INTO `accuracy_rate` VALUES (26, 1, '2023-05-30 06:15:00', 81, 91, 100);
INSERT INTO `accuracy_rate` VALUES (27, 1, '2023-05-30 06:30:00', 76, 44, 100);
INSERT INTO `accuracy_rate` VALUES (28, 1, '2023-05-30 06:45:00', 63, 23, 100);
INSERT INTO `accuracy_rate` VALUES (29, 1, '2023-05-30 07:00:00', 42, 76, 100);
INSERT INTO `accuracy_rate` VALUES (30, 1, '2023-05-30 07:15:00', 34, 31, 100);
INSERT INTO `accuracy_rate` VALUES (31, 1, '2023-05-30 07:30:00', 93, 84, 100);
INSERT INTO `accuracy_rate` VALUES (32, 1, '2023-05-30 07:45:00', 34, 27, 100);

-- ----------------------------
-- Table structure for coll_wire_info
-- ----------------------------
DROP TABLE IF EXISTS `coll_wire_info`;
CREATE TABLE `coll_wire_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collwire_No` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_farm_id` int(11) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coll_wire_info
-- ----------------------------
INSERT INTO `coll_wire_info` VALUES (1, 'EEE3801J001', 1, 0);
INSERT INTO `coll_wire_info` VALUES (2, 'EEE3802J001', 2, 0);
INSERT INTO `coll_wire_info` VALUES (3, 'EEE3801J002', 1, 0);
INSERT INTO `coll_wire_info` VALUES (4, 'EEE3801J003', 1, 1);
INSERT INTO `coll_wire_info` VALUES (5, 'EEE3801J004', 1, 2);
INSERT INTO `coll_wire_info` VALUES (6, 'EEE3802J002', 2, 0);
INSERT INTO `coll_wire_info` VALUES (7, 'EEE3802J003', 2, 0);
INSERT INTO `coll_wire_info` VALUES (8, 'EEE3803001', 3, 0);
INSERT INTO `coll_wire_info` VALUES (9, 'EEE3803002', 3, 0);

-- ----------------------------
-- Table structure for fan_info
-- ----------------------------
DROP TABLE IF EXISTS `fan_info`;
CREATE TABLE `fan_info`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `wind_farm_id` int(8) NOT NULL,
  `collwire_id` int(8) NOT NULL,
  `fan_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fan_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coord_x` float NOT NULL,
  `coord_y` float NOT NULL,
  `power` float NOT NULL DEFAULT 2.5,
  `status` int(8) NOT NULL DEFAULT 0,
  `hub_work` float NULL DEFAULT NULL,
  `wind_speed` float NULL DEFAULT NULL,
  `wind_direction` float NULL DEFAULT NULL,
  `hub_height` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `humidity` float NULL DEFAULT NULL,
  `atmosphere` float NULL DEFAULT NULL,
  `is_prototype` smallint(2) NULL DEFAULT NULL,
  `limit_status` smallint(2) NULL DEFAULT NULL,
  `limit_power` smallint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fan_info
-- ----------------------------
INSERT INTO `fan_info` VALUES (1, 1, 1, 'A01', 'A0101', 112.847, 26.6629, 2.5, 0, 350, 7.8, 50.1, 350, 30, 62, 1, 0, 0, 3);
INSERT INTO `fan_info` VALUES (2, 1, 1, 'A02', 'A0101', 111.946, 28.3473, 2.5, 0, 350, 6.5, 50.2, 350, 30, 65, 1, 0, 0, 3);
INSERT INTO `fan_info` VALUES (3, 1, 1, 'A03', 'A0101', 110.852, 29.874, 2.5, 1, 350, 6.5, 50.2, 350, 30, 65, 1, 0, 0, 3);
INSERT INTO `fan_info` VALUES (4, 1, 1, 'A04', 'A0101', 113.271, 27.1353, 2.5, 1, 350, 6.5, 50.2, 350, 30, 65, 1, 0, 0, 3);
INSERT INTO `fan_info` VALUES (5, 1, 1, 'A05', 'A0101', 112.413, 28.9109, 2.5, 0, 350, 7.8, 50.1, 350, 30, 62, 1, 0, 0, 3);
INSERT INTO `fan_info` VALUES (6, 1, 1, 'A06', 'A0101', 113.558, 26.569, 2.5, 3, 350, 6.5, 50.2, 350, 30, 65, 1, 0, 0, 3);
INSERT INTO `fan_info` VALUES (7, 1, 1, 'A07', 'A0101', 110.121, 29.65, 2.5, 4, 350, 6.5, 50.2, 350, 30, 65, 1, 0, 0, 3);
INSERT INTO `fan_info` VALUES (8, 1, 1, 'A08', 'A0101', 111.121, 26.6629, 2.5, 0, 350, 6.5, 50.2, 350, 30, 65, 1, 0, 0, 3);

-- ----------------------------
-- Table structure for power_info
-- ----------------------------
DROP TABLE IF EXISTS `power_info`;
CREATE TABLE `power_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wind_farm_id` int(11) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `short_power` float NULL DEFAULT NULL,
  `ultra_power` float NULL DEFAULT NULL,
  `real_power` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_info
-- ----------------------------
INSERT INTO `power_info` VALUES (1, 1, '2023-05-30 00:00:00', 52.35, 39.8, 33.4);
INSERT INTO `power_info` VALUES (2, 1, '2023-05-30 00:15:00', 53.7, 50.85, 32.5);
INSERT INTO `power_info` VALUES (3, 1, '2023-05-30 00:30:00', 41.1, 52.6, 29.8);
INSERT INTO `power_info` VALUES (4, 1, '2023-05-30 00:45:00', 37.35, 37.65, 29.8);
INSERT INTO `power_info` VALUES (5, 1, '2023-05-30 01:00:00', 44.45, 64.5, 32.5);
INSERT INTO `power_info` VALUES (6, 1, '2023-05-30 01:15:00', 16.2, 36.95, 30.8);
INSERT INTO `power_info` VALUES (7, 1, '2023-05-30 01:30:00', 38.6, 41.35, 35.1);
INSERT INTO `power_info` VALUES (8, 1, '2023-05-30 01:45:00', 58.1, 51, 30.5);
INSERT INTO `power_info` VALUES (9, 1, '2023-05-30 02:00:00', 52.8, 20.95, 30.9);
INSERT INTO `power_info` VALUES (10, 1, '2023-05-30 02:15:00', 63.2, 38.15, 30.6);
INSERT INTO `power_info` VALUES (11, 1, '2023-05-30 02:30:00', 48.5, 43.7, 31.1);
INSERT INTO `power_info` VALUES (12, 1, '2023-05-30 02:45:00', 37.35, 28.4, 36.1);
INSERT INTO `power_info` VALUES (13, 1, '2023-05-30 03:00:00', 54.8, 48.3, 34.6);
INSERT INTO `power_info` VALUES (14, 1, '2023-05-30 03:15:00', 38.7, 28.15, 33.6);
INSERT INTO `power_info` VALUES (15, 1, '2023-05-30 03:30:00', 21.75, 27.8, 30.9);
INSERT INTO `power_info` VALUES (16, 1, '2023-05-30 03:45:00', 32.75, 41.7, 34.6);
INSERT INTO `power_info` VALUES (17, 1, '2023-05-30 04:00:00', 58.25, 26.65, 28.2);
INSERT INTO `power_info` VALUES (18, 1, '2023-05-30 04:15:00', 56.1, 16.65, 33.8);
INSERT INTO `power_info` VALUES (19, 1, '2023-05-30 04:30:00', 62, 32.2, 29.9);
INSERT INTO `power_info` VALUES (20, 1, '2023-05-30 04:45:00', 42.55, 54.15, 30);
INSERT INTO `power_info` VALUES (21, 1, '2023-05-30 05:00:00', 19.75, 62.35, 36.2);
INSERT INTO `power_info` VALUES (22, 1, '2023-05-30 05:15:00', 38.5, 59.15, 32.7);
INSERT INTO `power_info` VALUES (23, 1, '2023-05-30 05:30:00', 25.4, 52.35, 36.3);
INSERT INTO `power_info` VALUES (24, 1, '2023-05-30 05:45:00', 54.35, 53.7, 28.3);
INSERT INTO `power_info` VALUES (25, 1, '2023-05-30 06:00:00', 46.45, 41.1, 32.7);
INSERT INTO `power_info` VALUES (26, 1, '2023-05-30 06:15:00', 18.05, 37.35, 35.5);
INSERT INTO `power_info` VALUES (27, 1, '2023-05-30 06:30:00', 43.65, 44.45, 28.7);
INSERT INTO `power_info` VALUES (28, 1, '2023-05-30 06:45:00', 30.15, 16.2, 35);
INSERT INTO `power_info` VALUES (29, 1, '2023-05-30 07:00:00', 46.85, 38.6, 33.5);
INSERT INTO `power_info` VALUES (30, 1, '2023-05-30 07:15:00', 42.2, 58.1, 34.2);
INSERT INTO `power_info` VALUES (31, 1, '2023-05-30 07:30:00', 29.1, 52.8, 27.7);
INSERT INTO `power_info` VALUES (32, 1, '2023-05-30 07:45:00', 60.45, 63.2, 34.5);
INSERT INTO `power_info` VALUES (33, 1, '2023-05-30 08:00:00', 54.8, 48.5, 34);
INSERT INTO `power_info` VALUES (34, 1, '2023-05-30 08:15:00', 51.65, 37.35, 34.9);
INSERT INTO `power_info` VALUES (35, 1, '2023-05-30 08:30:00', 25.6, 54.8, 34.2);
INSERT INTO `power_info` VALUES (36, 1, '2023-05-30 08:45:00', 55.55, 38.7, 33.7);
INSERT INTO `power_info` VALUES (37, 1, '2023-05-30 09:00:00', 52.4, 21.75, 30.7);
INSERT INTO `power_info` VALUES (38, 1, '2023-05-30 09:15:00', 21.85, 32.75, 27.5);
INSERT INTO `power_info` VALUES (39, 1, '2023-05-30 09:30:00', 54.2, 58.25, 29.5);
INSERT INTO `power_info` VALUES (40, 1, '2023-05-30 09:45:00', 58.5, 56.1, 33.6);
INSERT INTO `power_info` VALUES (41, 1, '2023-05-30 10:00:00', 48.1, 62, 30.1);
INSERT INTO `power_info` VALUES (42, 1, '2023-05-30 10:15:00', 23.95, 42.55, 28.5);
INSERT INTO `power_info` VALUES (43, 1, '2023-05-30 10:30:00', 24, 19.75, 34.7);
INSERT INTO `power_info` VALUES (44, 1, '2023-05-30 10:45:00', 27.15, 38.5, 29.4);
INSERT INTO `power_info` VALUES (45, 1, '2023-05-30 11:00:00', 39.15, 25.4, 28.5);
INSERT INTO `power_info` VALUES (46, 1, '2023-05-30 11:15:00', 30.9, 54.35, 32);
INSERT INTO `power_info` VALUES (47, 1, '2023-05-30 11:30:00', 52.75, 46.45, 28.5);
INSERT INTO `power_info` VALUES (48, 1, '2023-05-30 11:45:00', 38.35, 18.05, 33.3);
INSERT INTO `power_info` VALUES (49, 1, '2023-05-30 12:00:00', 17.05, 43.65, 35.6);
INSERT INTO `power_info` VALUES (50, 1, '2023-05-30 12:15:00', 54.15, 30.15, 35.9);
INSERT INTO `power_info` VALUES (51, 1, '2023-05-30 12:30:00', 34.3, 46.85, 36.7);
INSERT INTO `power_info` VALUES (52, 1, '2023-05-30 12:45:00', 54.6, 42.2, 34);
INSERT INTO `power_info` VALUES (53, 1, '2023-05-30 13:00:00', 18.45, 29.1, 32.2);
INSERT INTO `power_info` VALUES (54, 1, '2023-05-30 13:15:00', 45.1, 60.45, 30.3);
INSERT INTO `power_info` VALUES (55, 1, '2023-05-30 13:30:00', 40.5, 54.8, 33.9);
INSERT INTO `power_info` VALUES (56, 1, '2023-05-30 13:45:00', 50.45, 51.65, NULL);
INSERT INTO `power_info` VALUES (57, 1, '2023-05-30 14:00:00', 35.75, 25.6, NULL);
INSERT INTO `power_info` VALUES (58, 1, '2023-05-30 14:15:00', 59.9, 55.55, NULL);
INSERT INTO `power_info` VALUES (59, 1, '2023-05-30 14:30:00', 34.2, 52.4, NULL);
INSERT INTO `power_info` VALUES (60, 1, '2023-05-30 14:45:00', 38.05, 21.85, NULL);
INSERT INTO `power_info` VALUES (61, 1, '2023-05-30 15:00:00', 36.25, 54.2, NULL);
INSERT INTO `power_info` VALUES (62, 1, '2023-05-30 15:15:00', 61.65, 58.5, NULL);
INSERT INTO `power_info` VALUES (63, 1, '2023-05-30 15:30:00', 46.85, 48.1, NULL);
INSERT INTO `power_info` VALUES (64, 1, '2023-05-30 15:45:00', 31.35, 23.95, NULL);
INSERT INTO `power_info` VALUES (65, 1, '2023-05-30 16:00:00', 18, 24, NULL);
INSERT INTO `power_info` VALUES (66, 1, '2023-05-30 16:15:00', 60.8, 27.15, NULL);
INSERT INTO `power_info` VALUES (67, 1, '2023-05-30 16:30:00', 25.95, 39.15, NULL);
INSERT INTO `power_info` VALUES (68, 1, '2023-05-30 16:45:00', 18.9, 30.9, NULL);
INSERT INTO `power_info` VALUES (69, 1, '2023-05-30 17:00:00', 51.15, 52.75, NULL);
INSERT INTO `power_info` VALUES (70, 1, '2023-05-30 17:15:00', 62, NULL, NULL);
INSERT INTO `power_info` VALUES (71, 1, '2023-05-30 17:30:00', 36.85, NULL, NULL);
INSERT INTO `power_info` VALUES (72, 1, '2023-05-30 17:45:00', 51.3, NULL, NULL);
INSERT INTO `power_info` VALUES (73, 1, '2023-05-30 18:00:00', 20.05, NULL, NULL);
INSERT INTO `power_info` VALUES (74, 1, '2023-05-30 18:15:00', 43.65, NULL, NULL);
INSERT INTO `power_info` VALUES (75, 1, '2023-05-30 18:30:00', 42, NULL, NULL);
INSERT INTO `power_info` VALUES (76, 1, '2023-05-30 18:45:00', 45.3, NULL, NULL);
INSERT INTO `power_info` VALUES (77, 1, '2023-05-30 19:00:00', 28, NULL, NULL);
INSERT INTO `power_info` VALUES (78, 1, '2023-05-30 19:15:00', 29.8, NULL, NULL);
INSERT INTO `power_info` VALUES (79, 1, '2023-05-30 19:30:00', 29.5, NULL, NULL);
INSERT INTO `power_info` VALUES (80, 1, '2023-05-30 19:45:00', 31.1, NULL, NULL);
INSERT INTO `power_info` VALUES (81, 1, '2023-05-30 20:00:00', 27.7, NULL, NULL);
INSERT INTO `power_info` VALUES (82, 1, '2023-05-30 20:15:00', 27.3, NULL, NULL);
INSERT INTO `power_info` VALUES (83, 1, '2023-05-30 20:30:00', 36.8, NULL, NULL);
INSERT INTO `power_info` VALUES (84, 1, '2023-05-30 20:45:00', 27.1, NULL, NULL);
INSERT INTO `power_info` VALUES (85, 1, '2023-05-30 21:00:00', 27.4, NULL, NULL);
INSERT INTO `power_info` VALUES (86, 1, '2023-05-30 21:15:00', 30.7, NULL, NULL);
INSERT INTO `power_info` VALUES (87, 1, '2023-05-30 21:30:00', 31.9, NULL, NULL);
INSERT INTO `power_info` VALUES (88, 1, '2023-05-30 21:45:00', 35.5, NULL, NULL);
INSERT INTO `power_info` VALUES (89, 1, '2023-05-30 22:00:00', 31.9, NULL, NULL);
INSERT INTO `power_info` VALUES (90, 1, '2023-05-30 22:15:00', 33, NULL, NULL);
INSERT INTO `power_info` VALUES (91, 1, '2023-05-30 22:30:00', 31.1, NULL, NULL);
INSERT INTO `power_info` VALUES (92, 1, '2023-05-30 22:45:00', 31.2, NULL, NULL);
INSERT INTO `power_info` VALUES (93, 1, '2023-05-30 23:00:00', 36.5, NULL, NULL);
INSERT INTO `power_info` VALUES (94, 1, '2023-05-30 23:15:00', 28.6, NULL, NULL);
INSERT INTO `power_info` VALUES (95, 1, '2023-05-30 23:30:00', 30.9, NULL, NULL);
INSERT INTO `power_info` VALUES (96, 1, '2023-05-30 23:45:00', 32, NULL, NULL);
INSERT INTO `power_info` VALUES (97, 1, '2023-05-30 00:00:00', 32.9, NULL, NULL);

-- ----------------------------
-- Table structure for power_limit
-- ----------------------------
DROP TABLE IF EXISTS `power_limit`;
CREATE TABLE `power_limit`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_farm_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fan_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `limit_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_limit
-- ----------------------------

-- ----------------------------
-- Table structure for power_plan
-- ----------------------------
DROP TABLE IF EXISTS `power_plan`;
CREATE TABLE `power_plan`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_farm_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_interval` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_plan
-- ----------------------------

-- ----------------------------
-- Table structure for rea_wind_info
-- ----------------------------
DROP TABLE IF EXISTS `rea_wind_info`;
CREATE TABLE `rea_wind_info`  (
  `id` int(11) NOT NULL,
  `wind_farm_id` int(11) NULL DEFAULT NULL,
  `tower_id` int(11) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `wind_speed` float NULL DEFAULT NULL,
  `speed_average` float NULL DEFAULT NULL,
  `wind_direction` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `humidity` float NULL DEFAULT NULL,
  `atmosphere` float NULL DEFAULT NULL,
  `is_fan_wheel_hei` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rea_wind_info
-- ----------------------------
INSERT INTO `rea_wind_info` VALUES (5, 1, 1, '2023-05-30 00:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (6, 1, 1, '2023-05-30 00:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (7, 1, 1, '2023-05-30 00:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (8, 1, 1, '2023-05-30 00:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (9, 1, 1, '2023-05-30 00:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (10, 1, 1, '2023-05-30 00:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (11, 1, 1, '2023-05-30 00:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (12, 1, 1, '2023-05-30 00:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (13, 1, 1, '2023-05-30 00:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (14, 1, 1, '2023-05-30 00:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (15, 1, 1, '2023-05-30 00:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (16, 1, 1, '2023-05-30 00:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (17, 1, 1, '2023-05-30 00:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (18, 1, 1, '2023-05-30 00:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (19, 1, 1, '2023-05-30 00:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (20, 1, 1, '2023-05-30 00:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (21, 1, 1, '2023-05-30 01:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (22, 1, 1, '2023-05-30 01:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (23, 1, 1, '2023-05-30 01:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (24, 1, 1, '2023-05-30 01:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (25, 1, 1, '2023-05-30 01:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (26, 1, 1, '2023-05-30 01:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (27, 1, 1, '2023-05-30 01:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (28, 1, 1, '2023-05-30 01:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (29, 1, 1, '2023-05-30 01:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (30, 1, 1, '2023-05-30 01:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (31, 1, 1, '2023-05-30 01:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (32, 1, 1, '2023-05-30 01:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (33, 1, 1, '2023-05-30 01:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (34, 1, 1, '2023-05-30 01:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (35, 1, 1, '2023-05-30 01:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (36, 1, 1, '2023-05-30 01:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (37, 1, 1, '2023-05-30 02:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (38, 1, 1, '2023-05-30 02:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (39, 1, 1, '2023-05-30 02:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (40, 1, 1, '2023-05-30 02:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (41, 1, 1, '2023-05-30 02:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (42, 1, 1, '2023-05-30 02:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (43, 1, 1, '2023-05-30 02:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (44, 1, 1, '2023-05-30 02:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (45, 1, 1, '2023-05-30 02:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (46, 1, 1, '2023-05-30 02:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (47, 1, 1, '2023-05-30 02:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (48, 1, 1, '2023-05-30 02:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (49, 1, 1, '2023-05-30 02:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (50, 1, 1, '2023-05-30 02:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (51, 1, 1, '2023-05-30 02:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (52, 1, 1, '2023-05-30 02:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (53, 1, 1, '2023-05-30 03:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (54, 1, 1, '2023-05-30 03:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (55, 1, 1, '2023-05-30 03:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (56, 1, 1, '2023-05-30 03:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (57, 1, 1, '2023-05-30 03:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (58, 1, 1, '2023-05-30 03:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (59, 1, 1, '2023-05-30 03:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (60, 1, 1, '2023-05-30 03:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (61, 1, 1, '2023-05-30 03:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (62, 1, 1, '2023-05-30 03:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (63, 1, 1, '2023-05-30 03:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (64, 1, 1, '2023-05-30 03:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (65, 1, 1, '2023-05-30 03:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (66, 1, 1, '2023-05-30 03:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (67, 1, 1, '2023-05-30 03:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (68, 1, 1, '2023-05-30 03:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (69, 1, 1, '2023-05-30 04:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (70, 1, 1, '2023-05-30 04:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (71, 1, 1, '2023-05-30 04:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (72, 1, 1, '2023-05-30 04:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (73, 1, 1, '2023-05-30 04:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (74, 1, 1, '2023-05-30 04:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (75, 1, 1, '2023-05-30 04:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (76, 1, 1, '2023-05-30 04:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (77, 1, 1, '2023-05-30 04:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (78, 1, 1, '2023-05-30 04:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (79, 1, 1, '2023-05-30 04:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (80, 1, 1, '2023-05-30 04:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (81, 1, 1, '2023-05-30 04:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (82, 1, 1, '2023-05-30 04:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (83, 1, 1, '2023-05-30 04:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (84, 1, 1, '2023-05-30 04:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (85, 1, 1, '2023-05-30 05:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (86, 1, 1, '2023-05-30 05:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (87, 1, 1, '2023-05-30 05:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (88, 1, 1, '2023-05-30 05:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (89, 1, 1, '2023-05-30 05:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (90, 1, 1, '2023-05-30 05:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (91, 1, 1, '2023-05-30 05:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (92, 1, 1, '2023-05-30 05:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (93, 1, 1, '2023-05-30 05:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (94, 1, 1, '2023-05-30 05:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (95, 1, 1, '2023-05-30 05:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (96, 1, 1, '2023-05-30 05:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (97, 1, 1, '2023-05-30 05:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (98, 1, 1, '2023-05-30 05:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (99, 1, 1, '2023-05-30 05:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (100, 1, 1, '2023-05-30 05:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (101, 1, 1, '2023-05-30 06:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (102, 1, 1, '2023-05-30 06:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (103, 1, 1, '2023-05-30 06:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (104, 1, 1, '2023-05-30 06:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (105, 1, 1, '2023-05-30 06:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (106, 1, 1, '2023-05-30 06:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (107, 1, 1, '2023-05-30 06:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (108, 1, 1, '2023-05-30 06:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (109, 1, 1, '2023-05-30 06:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (110, 1, 1, '2023-05-30 06:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (111, 1, 1, '2023-05-30 06:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (112, 1, 1, '2023-05-30 06:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (113, 1, 1, '2023-05-30 06:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (114, 1, 1, '2023-05-30 06:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (115, 1, 1, '2023-05-30 06:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (116, 1, 1, '2023-05-30 06:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (117, 1, 1, '2023-05-30 07:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (118, 1, 1, '2023-05-30 07:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (119, 1, 1, '2023-05-30 07:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (120, 1, 1, '2023-05-30 07:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (121, 1, 1, '2023-05-30 07:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (122, 1, 1, '2023-05-30 07:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (123, 1, 1, '2023-05-30 07:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (124, 1, 1, '2023-05-30 07:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (125, 1, 1, '2023-05-30 07:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (126, 1, 1, '2023-05-30 07:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (127, 1, 1, '2023-05-30 07:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (128, 1, 1, '2023-05-30 07:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (129, 1, 1, '2023-05-30 07:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (130, 1, 1, '2023-05-30 07:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (131, 1, 1, '2023-05-30 07:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (132, 1, 1, '2023-05-30 07:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (133, 1, 1, '2023-05-30 08:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (134, 1, 1, '2023-05-30 08:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (135, 1, 1, '2023-05-30 08:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (136, 1, 1, '2023-05-30 08:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (137, 1, 1, '2023-05-30 08:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (138, 1, 1, '2023-05-30 08:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (139, 1, 1, '2023-05-30 08:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (140, 1, 1, '2023-05-30 08:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (141, 1, 1, '2023-05-30 08:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (142, 1, 1, '2023-05-30 08:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (143, 1, 1, '2023-05-30 08:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (144, 1, 1, '2023-05-30 08:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (145, 1, 1, '2023-05-30 08:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (146, 1, 1, '2023-05-30 08:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (147, 1, 1, '2023-05-30 08:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (148, 1, 1, '2023-05-30 08:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (149, 1, 1, '2023-05-30 09:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (150, 1, 1, '2023-05-30 09:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (151, 1, 1, '2023-05-30 09:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (152, 1, 1, '2023-05-30 09:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (153, 1, 1, '2023-05-30 09:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (154, 1, 1, '2023-05-30 09:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (155, 1, 1, '2023-05-30 09:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (156, 1, 1, '2023-05-30 09:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (157, 1, 1, '2023-05-30 09:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (158, 1, 1, '2023-05-30 09:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (159, 1, 1, '2023-05-30 09:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (160, 1, 1, '2023-05-30 09:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (161, 1, 1, '2023-05-30 09:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (162, 1, 1, '2023-05-30 09:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (163, 1, 1, '2023-05-30 09:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (164, 1, 1, '2023-05-30 09:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (165, 1, 1, '2023-05-30 10:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (166, 1, 1, '2023-05-30 10:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (167, 1, 1, '2023-05-30 10:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (168, 1, 1, '2023-05-30 10:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (169, 1, 1, '2023-05-30 10:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (170, 1, 1, '2023-05-30 10:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (171, 1, 1, '2023-05-30 10:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (172, 1, 1, '2023-05-30 10:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (173, 1, 1, '2023-05-30 10:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (174, 1, 1, '2023-05-30 10:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (175, 1, 1, '2023-05-30 10:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (176, 1, 1, '2023-05-30 10:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (177, 1, 1, '2023-05-30 10:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (178, 1, 1, '2023-05-30 10:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (179, 1, 1, '2023-05-30 10:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (180, 1, 1, '2023-05-30 10:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (181, 1, 1, '2023-05-30 11:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (182, 1, 1, '2023-05-30 11:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (183, 1, 1, '2023-05-30 11:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (184, 1, 1, '2023-05-30 11:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (185, 1, 1, '2023-05-30 11:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (186, 1, 1, '2023-05-30 11:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (187, 1, 1, '2023-05-30 11:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (188, 1, 1, '2023-05-30 11:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (189, 1, 1, '2023-05-30 11:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (190, 1, 1, '2023-05-30 11:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (191, 1, 1, '2023-05-30 11:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (192, 1, 1, '2023-05-30 11:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (193, 1, 1, '2023-05-30 11:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (194, 1, 1, '2023-05-30 11:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (195, 1, 1, '2023-05-30 11:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (196, 1, 1, '2023-05-30 11:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (197, 1, 1, '2023-05-30 12:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (198, 1, 1, '2023-05-30 12:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (199, 1, 1, '2023-05-30 12:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (200, 1, 1, '2023-05-30 12:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (201, 1, 1, '2023-05-30 12:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (202, 1, 1, '2023-05-30 12:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (203, 1, 1, '2023-05-30 12:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (204, 1, 1, '2023-05-30 12:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (205, 1, 1, '2023-05-30 12:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (206, 1, 1, '2023-05-30 12:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (207, 1, 1, '2023-05-30 12:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (208, 1, 1, '2023-05-30 12:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (209, 1, 1, '2023-05-30 12:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (210, 1, 1, '2023-05-30 12:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (211, 1, 1, '2023-05-30 12:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (212, 1, 1, '2023-05-30 12:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (213, 1, 1, '2023-05-30 13:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (214, 1, 1, '2023-05-30 13:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (215, 1, 1, '2023-05-30 13:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (216, 1, 1, '2023-05-30 13:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (217, 1, 1, '2023-05-30 13:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (218, 1, 1, '2023-05-30 13:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (219, 1, 1, '2023-05-30 13:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (220, 1, 1, '2023-05-30 13:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (221, 1, 1, '2023-05-30 13:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (222, 1, 1, '2023-05-30 13:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (223, 1, 1, '2023-05-30 13:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (224, 1, 1, '2023-05-30 13:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (225, 1, 1, '2023-05-30 13:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (226, 1, 1, '2023-05-30 13:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (227, 1, 1, '2023-05-30 13:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (228, 1, 1, '2023-05-30 13:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (229, 1, 1, '2023-05-30 14:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (230, 1, 1, '2023-05-30 14:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (231, 1, 1, '2023-05-30 14:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (232, 1, 1, '2023-05-30 14:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (233, 1, 1, '2023-05-30 14:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (234, 1, 1, '2023-05-30 14:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (235, 1, 1, '2023-05-30 14:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (236, 1, 1, '2023-05-30 14:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (237, 1, 1, '2023-05-30 14:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (238, 1, 1, '2023-05-30 14:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (239, 1, 1, '2023-05-30 14:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (240, 1, 1, '2023-05-30 14:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (241, 1, 1, '2023-05-30 14:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (242, 1, 1, '2023-05-30 14:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (243, 1, 1, '2023-05-30 14:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (244, 1, 1, '2023-05-30 14:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (245, 1, 1, '2023-05-30 15:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (246, 1, 1, '2023-05-30 15:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (247, 1, 1, '2023-05-30 15:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (248, 1, 1, '2023-05-30 15:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (249, 1, 1, '2023-05-30 15:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (250, 1, 1, '2023-05-30 15:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (251, 1, 1, '2023-05-30 15:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (252, 1, 1, '2023-05-30 15:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (253, 1, 1, '2023-05-30 15:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (254, 1, 1, '2023-05-30 15:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (255, 1, 1, '2023-05-30 15:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (256, 1, 1, '2023-05-30 15:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (257, 1, 1, '2023-05-30 15:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (258, 1, 1, '2023-05-30 15:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (259, 1, 1, '2023-05-30 15:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (260, 1, 1, '2023-05-30 15:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (261, 1, 1, '2023-05-30 16:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (262, 1, 1, '2023-05-30 16:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (263, 1, 1, '2023-05-30 16:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (264, 1, 1, '2023-05-30 16:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (265, 1, 1, '2023-05-30 16:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (266, 1, 1, '2023-05-30 16:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (267, 1, 1, '2023-05-30 16:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (268, 1, 1, '2023-05-30 16:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (269, 1, 1, '2023-05-30 16:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (270, 1, 1, '2023-05-30 16:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (271, 1, 1, '2023-05-30 16:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (272, 1, 1, '2023-05-30 16:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (273, 1, 1, '2023-05-30 16:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (274, 1, 1, '2023-05-30 16:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (275, 1, 1, '2023-05-30 16:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (276, 1, 1, '2023-05-30 16:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (277, 1, 1, '2023-05-30 17:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (278, 1, 1, '2023-05-30 17:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (279, 1, 1, '2023-05-30 17:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (280, 1, 1, '2023-05-30 17:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (281, 1, 1, '2023-05-30 17:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (282, 1, 1, '2023-05-30 17:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (283, 1, 1, '2023-05-30 17:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (284, 1, 1, '2023-05-30 17:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (285, 1, 1, '2023-05-30 17:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (286, 1, 1, '2023-05-30 17:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (287, 1, 1, '2023-05-30 17:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (288, 1, 1, '2023-05-30 17:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (289, 1, 1, '2023-05-30 17:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (290, 1, 1, '2023-05-30 17:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (291, 1, 1, '2023-05-30 17:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (292, 1, 1, '2023-05-30 17:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (293, 1, 1, '2023-05-30 18:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (294, 1, 1, '2023-05-30 18:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (295, 1, 1, '2023-05-30 18:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (296, 1, 1, '2023-05-30 18:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (297, 1, 1, '2023-05-30 18:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (298, 1, 1, '2023-05-30 18:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (299, 1, 1, '2023-05-30 18:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (300, 1, 1, '2023-05-30 18:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (301, 1, 1, '2023-05-30 18:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (302, 1, 1, '2023-05-30 18:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (303, 1, 1, '2023-05-30 18:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (304, 1, 1, '2023-05-30 18:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (305, 1, 1, '2023-05-30 18:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (306, 1, 1, '2023-05-30 18:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (307, 1, 1, '2023-05-30 18:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (308, 1, 1, '2023-05-30 18:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (309, 1, 1, '2023-05-30 19:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (310, 1, 1, '2023-05-30 19:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (311, 1, 1, '2023-05-30 19:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (312, 1, 1, '2023-05-30 19:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (313, 1, 1, '2023-05-30 19:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (314, 1, 1, '2023-05-30 19:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (315, 1, 1, '2023-05-30 19:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (316, 1, 1, '2023-05-30 19:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (317, 1, 1, '2023-05-30 19:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (318, 1, 1, '2023-05-30 19:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (319, 1, 1, '2023-05-30 19:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (320, 1, 1, '2023-05-30 19:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (321, 1, 1, '2023-05-30 19:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (322, 1, 1, '2023-05-30 19:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (323, 1, 1, '2023-05-30 19:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (324, 1, 1, '2023-05-30 19:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (325, 1, 1, '2023-05-30 20:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (326, 1, 1, '2023-05-30 20:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (327, 1, 1, '2023-05-30 20:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (328, 1, 1, '2023-05-30 20:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (329, 1, 1, '2023-05-30 20:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (330, 1, 1, '2023-05-30 20:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (331, 1, 1, '2023-05-30 20:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (332, 1, 1, '2023-05-30 20:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (333, 1, 1, '2023-05-30 20:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (334, 1, 1, '2023-05-30 20:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (335, 1, 1, '2023-05-30 20:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (336, 1, 1, '2023-05-30 20:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (337, 1, 1, '2023-05-30 20:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (338, 1, 1, '2023-05-30 20:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (339, 1, 1, '2023-05-30 20:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (340, 1, 1, '2023-05-30 20:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (341, 1, 1, '2023-05-30 21:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (342, 1, 1, '2023-05-30 21:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (343, 1, 1, '2023-05-30 21:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (344, 1, 1, '2023-05-30 21:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (345, 1, 1, '2023-05-30 21:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (346, 1, 1, '2023-05-30 21:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (347, 1, 1, '2023-05-30 21:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (348, 1, 1, '2023-05-30 21:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (349, 1, 1, '2023-05-30 21:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (350, 1, 1, '2023-05-30 21:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (351, 1, 1, '2023-05-30 21:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (352, 1, 1, '2023-05-30 21:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (353, 1, 1, '2023-05-30 21:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (354, 1, 1, '2023-05-30 21:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (355, 1, 1, '2023-05-30 21:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (356, 1, 1, '2023-05-30 21:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (357, 1, 1, '2023-05-30 22:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (358, 1, 1, '2023-05-30 22:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (359, 1, 1, '2023-05-30 22:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (360, 1, 1, '2023-05-30 22:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (361, 1, 1, '2023-05-30 22:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (362, 1, 1, '2023-05-30 22:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (363, 1, 1, '2023-05-30 22:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (364, 1, 1, '2023-05-30 22:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (365, 1, 1, '2023-05-30 22:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (366, 1, 1, '2023-05-30 22:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (367, 1, 1, '2023-05-30 22:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (368, 1, 1, '2023-05-30 22:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (369, 1, 1, '2023-05-30 22:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (370, 1, 1, '2023-05-30 22:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (371, 1, 1, '2023-05-30 22:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (372, 1, 1, '2023-05-30 22:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (373, 1, 1, '2023-05-30 23:00:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (374, 1, 1, '2023-05-30 23:00:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (375, 1, 1, '2023-05-30 23:00:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (376, 1, 1, '2023-05-30 23:00:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (377, 1, 1, '2023-05-30 23:15:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (378, 1, 1, '2023-05-30 23:15:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (379, 1, 1, '2023-05-30 23:15:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (380, 1, 1, '2023-05-30 23:15:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (381, 1, 1, '2023-05-30 23:30:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (382, 1, 1, '2023-05-30 23:30:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (383, 1, 1, '2023-05-30 23:30:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (384, 1, 1, '2023-05-30 23:30:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);
INSERT INTO `rea_wind_info` VALUES (385, 1, 1, '2023-05-30 23:45:00', 10, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (386, 1, 1, '2023-05-30 23:45:00', 30, 25.3, 25.3, 230, 25, 65, 1, 0);
INSERT INTO `rea_wind_info` VALUES (387, 1, 1, '2023-05-30 23:45:00', 50, 26.7, 26.7, 230, 23, 60, 1, 0);
INSERT INTO `rea_wind_info` VALUES (388, 1, 1, '2023-05-30 23:45:00', 80, 30.2, 30.2, 230, 23, 60, 1, 1);

-- ----------------------------
-- Table structure for report_info
-- ----------------------------
DROP TABLE IF EXISTS `report_info`;
CREATE TABLE `report_info`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_farm_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collwire_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `section_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `back_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_info
-- ----------------------------
INSERT INTO `report_info` VALUES ('833', '1', '1', '4/8/2021 00:00:00', 'Upload_1', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('834', '1', '1', '4/8/2021 00:00:00', 'Upload_2', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('835', '1', '1', '4/8/2021 00:00:00', 'Upload_3', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('836', '1', '1', '4/8/2021 00:00:00', 'Upload_4', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('837', '1', '1', '4/8/2021 00:15:00', 'Upload_5', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('838', '1', '1', '4/8/2021 00:15:00', 'Upload_6', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('839', '1', '1', '4/8/2021 00:15:00', 'Upload_7', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('840', '1', '1', '4/8/2021 00:15:00', 'Upload_8', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('841', '1', '1', '4/8/2021 00:30:00', 'Upload_9', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('842', '1', '1', '4/8/2021 00:30:00', 'Upload_10', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('843', '1', '1', '4/8/2021 00:30:00', 'Upload_11', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('844', '1', '1', '4/8/2021 00:30:00', 'Upload_12', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('845', '1', '1', '4/8/2021 00:45:00', 'Upload_13', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('846', '1', '1', '4/8/2021 00:45:00', 'Upload_14', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('847', '1', '1', '4/8/2021 00:45:00', 'Upload_15', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('848', '1', '1', '4/8/2021 00:45:00', 'Upload_16', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('849', '1', '1', '4/8/2021 01:00:00', 'Upload_17', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('850', '1', '1', '4/8/2021 01:00:00', 'Upload_18', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('851', '1', '1', '4/8/2021 01:00:00', 'Upload_19', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('852', '1', '1', '4/8/2021 01:00:00', 'Upload_20', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('853', '1', '1', '4/8/2021 01:15:00', 'Upload_21', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('854', '1', '1', '4/8/2021 01:15:00', 'Upload_22', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('855', '1', '1', '4/8/2021 01:15:00', 'Upload_23', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('856', '1', '1', '4/8/2021 01:15:00', 'Upload_24', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('857', '1', '1', '4/8/2021 01:30:00', 'Upload_25', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('858', '1', '1', '4/8/2021 01:30:00', 'Upload_26', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('859', '1', '1', '4/8/2021 01:30:00', 'Upload_27', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('860', '1', '1', '4/8/2021 01:30:00', 'Upload_28', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('861', '1', '1', '4/8/2021 01:45:00', 'Upload_29', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('862', '1', '1', '4/8/2021 01:45:00', 'Upload_30', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('863', '1', '1', '4/8/2021 01:45:00', 'Upload_31', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('864', '1', '1', '4/8/2021 01:45:00', 'Upload_32', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('865', '1', '1', '4/8/2021 02:00:00', 'Upload_33', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('866', '1', '1', '4/8/2021 02:00:00', 'Upload_34', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('867', '1', '1', '4/8/2021 02:00:00', 'Upload_35', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('868', '1', '1', '4/8/2021 02:00:00', 'Upload_36', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('869', '1', '1', '4/8/2021 02:15:00', 'Upload_37', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('870', '1', '1', '4/8/2021 02:15:00', 'Upload_38', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('871', '1', '1', '4/8/2021 02:15:00', 'Upload_39', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('872', '1', '1', '4/8/2021 02:15:00', 'Upload_40', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('873', '1', '1', '4/8/2021 02:30:00', 'Upload_41', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('874', '1', '1', '4/8/2021 02:30:00', 'Upload_42', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('875', '1', '1', '4/8/2021 02:30:00', 'Upload_43', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('876', '1', '1', '4/8/2021 02:30:00', 'Upload_44', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('877', '1', '1', '4/8/2021 02:45:00', 'Upload_45', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('878', '1', '1', '4/8/2021 02:45:00', 'Upload_46', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('879', '1', '1', '4/8/2021 02:45:00', 'Upload_47', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('880', '1', '1', '4/8/2021 02:45:00', 'Upload_48', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('881', '1', '1', '4/8/2021 03:00:00', 'Upload_49', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('882', '1', '1', '4/8/2021 03:00:00', 'Upload_50', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('883', '1', '1', '4/8/2021 03:00:00', 'Upload_51', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('884', '1', '1', '4/8/2021 03:00:00', 'Upload_52', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('885', '1', '1', '4/8/2021 03:15:00', 'Upload_53', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('886', '1', '1', '4/8/2021 03:15:00', 'Upload_54', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('887', '1', '1', '4/8/2021 03:15:00', 'Upload_55', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('888', '1', '1', '4/8/2021 03:15:00', 'Upload_56', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('889', '1', '1', '4/8/2021 03:30:00', 'Upload_57', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('890', '1', '1', '4/8/2021 03:30:00', 'Upload_58', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('891', '1', '1', '4/8/2021 03:30:00', 'Upload_59', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('892', '1', '1', '4/8/2021 03:30:00', 'Upload_60', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('893', '1', '1', '4/8/2021 03:45:00', 'Upload_61', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('894', '1', '1', '4/8/2021 03:45:00', 'Upload_62', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('895', '1', '1', '4/8/2021 03:45:00', 'Upload_63', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('896', '1', '1', '4/8/2021 03:45:00', 'Upload_64', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('897', '1', '1', '4/8/2021 04:00:00', 'Upload_65', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('898', '1', '1', '4/8/2021 04:00:00', 'Upload_66', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('899', '1', '1', '4/8/2021 04:00:00', 'Upload_67', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('900', '1', '1', '4/8/2021 04:00:00', 'Upload_68', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('901', '1', '1', '4/8/2021 04:15:00', 'Upload_69', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('902', '1', '1', '4/8/2021 04:15:00', 'Upload_70', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('903', '1', '1', '4/8/2021 04:15:00', 'Upload_71', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('904', '1', '1', '4/8/2021 04:15:00', 'Upload_72', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('905', '1', '1', '4/8/2021 04:30:00', 'Upload_73', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('906', '1', '1', '4/8/2021 04:30:00', 'Upload_74', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('907', '1', '1', '4/8/2021 04:30:00', 'Upload_75', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('908', '1', '1', '4/8/2021 04:30:00', 'Upload_76', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('909', '1', '1', '4/8/2021 04:45:00', 'Upload_77', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('910', '1', '1', '4/8/2021 04:45:00', 'Upload_78', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('911', '1', '1', '4/8/2021 04:45:00', 'Upload_79', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('912', '1', '1', '4/8/2021 04:45:00', 'Upload_80', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('913', '1', '1', '4/8/2021 05:00:00', 'Upload_81', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('914', '1', '1', '4/8/2021 05:00:00', 'Upload_82', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('915', '1', '1', '4/8/2021 05:00:00', 'Upload_83', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('916', '1', '1', '4/8/2021 05:00:00', 'Upload_84', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('917', '1', '1', '4/8/2021 05:15:00', 'Upload_85', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('918', '1', '1', '4/8/2021 05:15:00', 'Upload_86', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('919', '1', '1', '4/8/2021 05:15:00', 'Upload_87', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('920', '1', '1', '4/8/2021 05:15:00', 'Upload_88', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('921', '1', '1', '4/8/2021 05:30:00', 'Upload_89', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('922', '1', '1', '4/8/2021 05:30:00', 'Upload_90', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('923', '1', '1', '4/8/2021 05:30:00', 'Upload_91', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('924', '1', '1', '4/8/2021 05:30:00', 'Upload_92', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('925', '1', '1', '4/8/2021 05:45:00', 'Upload_93', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('926', '1', '1', '4/8/2021 05:45:00', 'Upload_94', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('927', '1', '1', '4/8/2021 05:45:00', 'Upload_95', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('928', '1', '1', '4/8/2021 05:45:00', 'Upload_96', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('929', '1', '1', '4/8/2021 06:00:00', 'Upload_97', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('930', '1', '1', '4/8/2021 06:00:00', 'Upload_98', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('931', '1', '1', '4/8/2021 06:00:00', 'Upload_99', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('932', '1', '1', '4/8/2021 06:00:00', 'Upload_100', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('933', '1', '1', '4/8/2021 06:15:00', 'Upload_101', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('934', '1', '1', '4/8/2021 06:15:00', 'Upload_102', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('935', '1', '1', '4/8/2021 06:15:00', 'Upload_103', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('936', '1', '1', '4/8/2021 06:15:00', 'Upload_104', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('937', '1', '1', '4/8/2021 06:30:00', 'Upload_105', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('938', '1', '1', '4/8/2021 06:30:00', 'Upload_106', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('939', '1', '1', '4/8/2021 06:30:00', 'Upload_107', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('940', '1', '1', '4/8/2021 06:30:00', 'Upload_108', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('941', '1', '1', '4/8/2021 06:45:00', 'Upload_109', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('942', '1', '1', '4/8/2021 06:45:00', 'Upload_110', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('943', '1', '1', '4/8/2021 06:45:00', 'Upload_111', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('944', '1', '1', '4/8/2021 06:45:00', 'Upload_112', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('945', '1', '1', '4/8/2021 07:00:00', 'Upload_113', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('946', '1', '1', '4/8/2021 07:00:00', 'Upload_114', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('947', '1', '1', '4/8/2021 07:00:00', 'Upload_115', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('948', '1', '1', '4/8/2021 07:00:00', 'Upload_116', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('949', '1', '1', '4/8/2021 07:15:00', 'Upload_117', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('950', '1', '1', '4/8/2021 07:15:00', 'Upload_118', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('951', '1', '1', '4/8/2021 07:15:00', 'Upload_119', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('952', '1', '1', '4/8/2021 07:15:00', 'Upload_120', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('953', '1', '1', '4/8/2021 07:30:00', 'Upload_121', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('954', '1', '1', '4/8/2021 07:30:00', 'Upload_122', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('955', '1', '1', '4/8/2021 07:30:00', 'Upload_123', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('956', '1', '1', '4/8/2021 07:30:00', 'Upload_124', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('957', '1', '1', '4/8/2021 07:45:00', 'Upload_125', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('958', '1', '1', '4/8/2021 07:45:00', 'Upload_126', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('959', '1', '1', '4/8/2021 07:45:00', 'Upload_127', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('960', '1', '1', '4/8/2021 07:45:00', 'Upload_128', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('961', '1', '1', '4/8/2021 08:00:00', 'Upload_129', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('962', '1', '1', '4/8/2021 08:00:00', 'Upload_130', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('963', '1', '1', '4/8/2021 08:00:00', 'Upload_131', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('964', '1', '1', '4/8/2021 08:00:00', 'Upload_132', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('965', '1', '1', '4/8/2021 08:15:00', 'Upload_133', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('966', '1', '1', '4/8/2021 08:15:00', 'Upload_134', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('967', '1', '1', '4/8/2021 08:15:00', 'Upload_135', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('968', '1', '1', '4/8/2021 08:15:00', 'Upload_136', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('969', '1', '1', '4/8/2021 08:30:00', 'Upload_137', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('970', '1', '1', '4/8/2021 08:30:00', 'Upload_138', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('971', '1', '1', '4/8/2021 08:30:00', 'Upload_139', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('972', '1', '1', '4/8/2021 08:30:00', 'Upload_140', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('973', '1', '1', '4/8/2021 08:45:00', 'Upload_141', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('974', '1', '1', '4/8/2021 08:45:00', 'Upload_142', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('975', '1', '1', '4/8/2021 08:45:00', 'Upload_143', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('976', '1', '1', '4/8/2021 08:45:00', 'Upload_144', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('977', '1', '1', '4/8/2021 09:00:00', 'Upload_145', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('978', '1', '1', '4/8/2021 09:00:00', 'Upload_146', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('979', '1', '1', '4/8/2021 09:00:00', 'Upload_147', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('980', '1', '1', '4/8/2021 09:00:00', 'Upload_148', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('981', '1', '1', '4/8/2021 09:15:00', 'Upload_149', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('982', '1', '1', '4/8/2021 09:15:00', 'Upload_150', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('983', '1', '1', '4/8/2021 09:15:00', 'Upload_151', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('984', '1', '1', '4/8/2021 09:15:00', 'Upload_152', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('985', '1', '1', '4/8/2021 09:30:00', 'Upload_153', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('986', '1', '1', '4/8/2021 09:30:00', 'Upload_154', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('987', '1', '1', '4/8/2021 09:30:00', 'Upload_155', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('988', '1', '1', '4/8/2021 09:30:00', 'Upload_156', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('989', '1', '1', '4/8/2021 09:45:00', 'Upload_157', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('990', '1', '1', '4/8/2021 09:45:00', 'Upload_158', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('991', '1', '1', '4/8/2021 09:45:00', 'Upload_159', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('992', '1', '1', '4/8/2021 09:45:00', 'Upload_160', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('993', '1', '1', '4/8/2021 10:00:00', 'Upload_161', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('994', '1', '1', '4/8/2021 10:00:00', 'Upload_162', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('995', '1', '1', '4/8/2021 10:00:00', 'Upload_163', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('996', '1', '1', '4/8/2021 10:00:00', 'Upload_164', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('997', '1', '1', '4/8/2021 10:15:00', 'Upload_165', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('998', '1', '1', '4/8/2021 10:15:00', 'Upload_166', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('999', '1', '1', '4/8/2021 10:15:00', 'Upload_167', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1000', '1', '1', '4/8/2021 10:15:00', 'Upload_168', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1001', '1', '1', '4/8/2021 10:30:00', 'Upload_169', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1002', '1', '1', '4/8/2021 10:30:00', 'Upload_170', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1003', '1', '1', '4/8/2021 10:30:00', 'Upload_171', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1004', '1', '1', '4/8/2021 10:30:00', 'Upload_172', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1005', '1', '1', '4/8/2021 10:45:00', 'Upload_173', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1006', '1', '1', '4/8/2021 10:45:00', 'Upload_174', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1007', '1', '1', '4/8/2021 10:45:00', 'Upload_175', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1008', '1', '1', '4/8/2021 10:45:00', 'Upload_176', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1009', '1', '1', '4/8/2021 11:00:00', 'Upload_177', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1010', '1', '1', '4/8/2021 11:00:00', 'Upload_178', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1011', '1', '1', '4/8/2021 11:00:00', 'Upload_179', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1012', '1', '1', '4/8/2021 11:00:00', 'Upload_180', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1013', '1', '1', '4/8/2021 11:15:00', 'Upload_181', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1014', '1', '1', '4/8/2021 11:15:00', 'Upload_182', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1015', '1', '1', '4/8/2021 11:15:00', 'Upload_183', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1016', '1', '1', '4/8/2021 11:15:00', 'Upload_184', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1017', '1', '1', '4/8/2021 11:30:00', 'Upload_185', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1018', '1', '1', '4/8/2021 11:30:00', 'Upload_186', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1019', '1', '1', '4/8/2021 11:30:00', 'Upload_187', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1020', '1', '1', '4/8/2021 11:30:00', 'Upload_188', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1021', '1', '1', '4/8/2021 11:45:00', 'Upload_189', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1022', '1', '1', '4/8/2021 11:45:00', 'Upload_190', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1023', '1', '1', '4/8/2021 11:45:00', 'Upload_191', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1024', '1', '1', '4/8/2021 11:45:00', 'Upload_192', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1025', '1', '1', '4/8/2021 12:00:00', 'Upload_193', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1026', '1', '1', '4/8/2021 12:00:00', 'Upload_194', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1027', '1', '1', '4/8/2021 12:00:00', 'Upload_195', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1028', '1', '1', '4/8/2021 12:00:00', 'Upload_196', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1029', '1', '1', '4/8/2021 12:15:00', 'Upload_197', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1030', '1', '1', '4/8/2021 12:15:00', 'Upload_198', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1031', '1', '1', '4/8/2021 12:15:00', 'Upload_199', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1032', '1', '1', '4/8/2021 12:15:00', 'Upload_200', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1033', '1', '1', '4/8/2021 12:30:00', 'Upload_201', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1034', '1', '1', '4/8/2021 12:30:00', 'Upload_202', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1035', '1', '1', '4/8/2021 12:30:00', 'Upload_203', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1036', '1', '1', '4/8/2021 12:30:00', 'Upload_204', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1037', '1', '1', '4/8/2021 12:45:00', 'Upload_205', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1038', '1', '1', '4/8/2021 12:45:00', 'Upload_206', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1039', '1', '1', '4/8/2021 12:45:00', 'Upload_207', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1040', '1', '1', '4/8/2021 12:45:00', 'Upload_208', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1041', '1', '1', '4/8/2021 13:00:00', 'Upload_209', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1042', '1', '1', '4/8/2021 13:00:00', 'Upload_210', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1043', '1', '1', '4/8/2021 13:00:00', 'Upload_211', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1044', '1', '1', '4/8/2021 13:00:00', 'Upload_212', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1045', '1', '1', '4/8/2021 13:15:00', 'Upload_213', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1046', '1', '1', '4/8/2021 13:15:00', 'Upload_214', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1047', '1', '1', '4/8/2021 13:15:00', 'Upload_215', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1048', '1', '1', '4/8/2021 13:15:00', 'Upload_216', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1049', '1', '1', '4/8/2021 13:30:00', 'Upload_217', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1050', '1', '1', '4/8/2021 13:30:00', 'Upload_218', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1051', '1', '1', '4/8/2021 13:30:00', 'Upload_219', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1052', '1', '1', '4/8/2021 13:30:00', 'Upload_220', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1053', '1', '1', '4/8/2021 13:45:00', 'Upload_221', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1054', '1', '1', '4/8/2021 13:45:00', 'Upload_222', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1055', '1', '1', '4/8/2021 13:45:00', 'Upload_223', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1056', '1', '1', '4/8/2021 13:45:00', 'Upload_224', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1057', '1', '1', '4/8/2021 14:00:00', 'Upload_225', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1058', '1', '1', '4/8/2021 14:00:00', 'Upload_226', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1059', '1', '1', '4/8/2021 14:00:00', 'Upload_227', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1060', '1', '1', '4/8/2021 14:00:00', 'Upload_228', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1061', '1', '1', '4/8/2021 14:15:00', 'Upload_229', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1062', '1', '1', '4/8/2021 14:15:00', 'Upload_230', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1063', '1', '1', '4/8/2021 14:15:00', 'Upload_231', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1064', '1', '1', '4/8/2021 14:15:00', 'Upload_232', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1065', '1', '1', '4/8/2021 14:30:00', 'Upload_233', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1066', '1', '1', '4/8/2021 14:30:00', 'Upload_234', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1067', '1', '1', '4/8/2021 14:30:00', 'Upload_235', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1068', '1', '1', '4/8/2021 14:30:00', 'Upload_236', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1069', '1', '1', '4/8/2021 14:45:00', 'Upload_237', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1070', '1', '1', '4/8/2021 14:45:00', 'Upload_238', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1071', '1', '1', '4/8/2021 14:45:00', 'Upload_239', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1072', '1', '1', '4/8/2021 14:45:00', 'Upload_240', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1073', '1', '1', '4/8/2021 15:00:00', 'Upload_241', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1074', '1', '1', '4/8/2021 15:00:00', 'Upload_242', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1075', '1', '1', '4/8/2021 15:00:00', 'Upload_243', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1076', '1', '1', '4/8/2021 15:00:00', 'Upload_244', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1077', '1', '1', '4/8/2021 15:15:00', 'Upload_245', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1078', '1', '1', '4/8/2021 15:15:00', 'Upload_246', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1079', '1', '1', '4/8/2021 15:15:00', 'Upload_247', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1080', '1', '1', '4/8/2021 15:15:00', 'Upload_248', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1081', '1', '1', '4/8/2021 15:30:00', 'Upload_249', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1082', '1', '1', '4/8/2021 15:30:00', 'Upload_250', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1083', '1', '1', '4/8/2021 15:30:00', 'Upload_251', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1084', '1', '1', '4/8/2021 15:30:00', 'Upload_252', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1085', '1', '1', '4/8/2021 15:45:00', 'Upload_253', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1086', '1', '1', '4/8/2021 15:45:00', 'Upload_254', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1087', '1', '1', '4/8/2021 15:45:00', 'Upload_255', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1088', '1', '1', '4/8/2021 15:45:00', 'Upload_256', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1089', '1', '1', '4/8/2021 16:00:00', 'Upload_257', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1090', '1', '1', '4/8/2021 16:00:00', 'Upload_258', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1091', '1', '1', '4/8/2021 16:00:00', 'Upload_259', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1092', '1', '1', '4/8/2021 16:00:00', 'Upload_260', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1093', '1', '1', '4/8/2021 16:15:00', 'Upload_261', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1094', '1', '1', '4/8/2021 16:15:00', 'Upload_262', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1095', '1', '1', '4/8/2021 16:15:00', 'Upload_263', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1096', '1', '1', '4/8/2021 16:15:00', 'Upload_264', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1097', '1', '1', '4/8/2021 16:30:00', 'Upload_265', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1098', '1', '1', '4/8/2021 16:30:00', 'Upload_266', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1099', '1', '1', '4/8/2021 16:30:00', 'Upload_267', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1100', '1', '1', '4/8/2021 16:30:00', 'Upload_268', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1101', '1', '1', '4/8/2021 16:45:00', 'Upload_269', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1102', '1', '1', '4/8/2021 16:45:00', 'Upload_270', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1103', '1', '1', '4/8/2021 16:45:00', 'Upload_271', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1104', '1', '1', '4/8/2021 16:45:00', 'Upload_272', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1105', '1', '1', '4/8/2021 17:00:00', 'Upload_273', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1106', '1', '1', '4/8/2021 17:00:00', 'Upload_274', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1107', '1', '1', '4/8/2021 17:00:00', 'Upload_275', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1108', '1', '1', '4/8/2021 17:00:00', 'Upload_276', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1109', '1', '1', '4/8/2021 17:15:00', 'Upload_277', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1110', '1', '1', '4/8/2021 17:15:00', 'Upload_278', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1111', '1', '1', '4/8/2021 17:15:00', 'Upload_279', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1112', '1', '1', '4/8/2021 17:15:00', 'Upload_280', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1113', '1', '1', '4/8/2021 17:30:00', 'Upload_281', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1114', '1', '1', '4/8/2021 17:30:00', 'Upload_282', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1115', '1', '1', '4/8/2021 17:30:00', 'Upload_283', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1116', '1', '1', '4/8/2021 17:30:00', 'Upload_284', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1117', '1', '1', '4/8/2021 17:45:00', 'Upload_285', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1118', '1', '1', '4/8/2021 17:45:00', 'Upload_286', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1119', '1', '1', '4/8/2021 17:45:00', 'Upload_287', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1120', '1', '1', '4/8/2021 17:45:00', 'Upload_288', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1121', '1', '1', '4/8/2021 18:00:00', 'Upload_289', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1122', '1', '1', '4/8/2021 18:00:00', 'Upload_290', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1123', '1', '1', '4/8/2021 18:00:00', 'Upload_291', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1124', '1', '1', '4/8/2021 18:00:00', 'Upload_292', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1125', '1', '1', '4/8/2021 18:15:00', 'Upload_293', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1126', '1', '1', '4/8/2021 18:15:00', 'Upload_294', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1127', '1', '1', '4/8/2021 18:15:00', 'Upload_295', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1128', '1', '1', '4/8/2021 18:15:00', 'Upload_296', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1129', '1', '1', '4/8/2021 18:30:00', 'Upload_297', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1130', '1', '1', '4/8/2021 18:30:00', 'Upload_298', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1131', '1', '1', '4/8/2021 18:30:00', 'Upload_299', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1132', '1', '1', '4/8/2021 18:30:00', 'Upload_300', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1133', '1', '1', '4/8/2021 18:45:00', 'Upload_301', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1134', '1', '1', '4/8/2021 18:45:00', 'Upload_302', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1135', '1', '1', '4/8/2021 18:45:00', 'Upload_303', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1136', '1', '1', '4/8/2021 18:45:00', 'Upload_304', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1137', '1', '1', '4/8/2021 19:00:00', 'Upload_305', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1138', '1', '1', '4/8/2021 19:00:00', 'Upload_306', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1139', '1', '1', '4/8/2021 19:00:00', 'Upload_307', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1140', '1', '1', '4/8/2021 19:00:00', 'Upload_308', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1141', '1', '1', '4/8/2021 19:15:00', 'Upload_309', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1142', '1', '1', '4/8/2021 19:15:00', 'Upload_310', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1143', '1', '1', '4/8/2021 19:15:00', 'Upload_311', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1144', '1', '1', '4/8/2021 19:15:00', 'Upload_312', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1145', '1', '1', '4/8/2021 19:30:00', 'Upload_313', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1146', '1', '1', '4/8/2021 19:30:00', 'Upload_314', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1147', '1', '1', '4/8/2021 19:30:00', 'Upload_315', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1148', '1', '1', '4/8/2021 19:30:00', 'Upload_316', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1149', '1', '1', '4/8/2021 19:45:00', 'Upload_317', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1150', '1', '1', '4/8/2021 19:45:00', 'Upload_318', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1151', '1', '1', '4/8/2021 19:45:00', 'Upload_319', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1152', '1', '1', '4/8/2021 19:45:00', 'Upload_320', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1153', '1', '1', '4/8/2021 20:00:00', 'Upload_321', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1154', '1', '1', '4/8/2021 20:00:00', 'Upload_322', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1155', '1', '1', '4/8/2021 20:00:00', 'Upload_323', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1156', '1', '1', '4/8/2021 20:00:00', 'Upload_324', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1157', '1', '1', '4/8/2021 20:15:00', 'Upload_325', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1158', '1', '1', '4/8/2021 20:15:00', 'Upload_326', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1159', '1', '1', '4/8/2021 20:15:00', 'Upload_327', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1160', '1', '1', '4/8/2021 20:15:00', 'Upload_328', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1161', '1', '1', '4/8/2021 20:30:00', 'Upload_329', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1162', '1', '1', '4/8/2021 20:30:00', 'Upload_330', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1163', '1', '1', '4/8/2021 20:30:00', 'Upload_331', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1164', '1', '1', '4/8/2021 20:30:00', 'Upload_332', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1165', '1', '1', '4/8/2021 20:45:00', 'Upload_333', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1166', '1', '1', '4/8/2021 20:45:00', 'Upload_334', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1167', '1', '1', '4/8/2021 20:45:00', 'Upload_335', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1168', '1', '1', '4/8/2021 20:45:00', 'Upload_336', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1169', '1', '1', '4/8/2021 21:00:00', 'Upload_337', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1170', '1', '1', '4/8/2021 21:00:00', 'Upload_338', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1171', '1', '1', '4/8/2021 21:00:00', 'Upload_339', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1172', '1', '1', '4/8/2021 21:00:00', 'Upload_340', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1173', '1', '1', '4/8/2021 21:15:00', 'Upload_341', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1174', '1', '1', '4/8/2021 21:15:00', 'Upload_342', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1175', '1', '1', '4/8/2021 21:15:00', 'Upload_343', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1176', '1', '1', '4/8/2021 21:15:00', 'Upload_344', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1177', '1', '1', '4/8/2021 21:30:00', 'Upload_345', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1178', '1', '1', '4/8/2021 21:30:00', 'Upload_346', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1179', '1', '1', '4/8/2021 21:30:00', 'Upload_347', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1180', '1', '1', '4/8/2021 21:30:00', 'Upload_348', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1181', '1', '1', '4/8/2021 21:45:00', 'Upload_349', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1182', '1', '1', '4/8/2021 21:45:00', 'Upload_350', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1183', '1', '1', '4/8/2021 21:45:00', 'Upload_351', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1184', '1', '1', '4/8/2021 21:45:00', 'Upload_352', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1185', '1', '1', '4/8/2021 22:00:00', 'Upload_353', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1186', '1', '1', '4/8/2021 22:00:00', 'Upload_354', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1187', '1', '1', '4/8/2021 22:00:00', 'Upload_355', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1188', '1', '1', '4/8/2021 22:00:00', 'Upload_356', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1189', '1', '1', '4/8/2021 22:15:00', 'Upload_357', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1190', '1', '1', '4/8/2021 22:15:00', 'Upload_358', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1191', '1', '1', '4/8/2021 22:15:00', 'Upload_359', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1192', '1', '1', '4/8/2021 22:15:00', 'Upload_360', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1193', '1', '1', '4/8/2021 22:30:00', 'Upload_361', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1194', '1', '1', '4/8/2021 22:30:00', 'Upload_362', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1195', '1', '1', '4/8/2021 22:30:00', 'Upload_363', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1196', '1', '1', '4/8/2021 22:30:00', 'Upload_364', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1197', '1', '1', '4/8/2021 22:45:00', 'Upload_365', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1198', '1', '1', '4/8/2021 22:45:00', 'Upload_366', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1199', '1', '1', '4/8/2021 22:45:00', 'Upload_367', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1200', '1', '1', '4/8/2021 22:45:00', 'Upload_368', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1201', '1', '1', '4/8/2021 23:00:00', 'Upload_369', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1202', '1', '1', '4/8/2021 23:00:00', 'Upload_370', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1203', '1', '1', '4/8/2021 23:00:00', 'Upload_371', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1204', '1', '1', '4/8/2021 23:00:00', 'Upload_372', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1205', '1', '1', '4/8/2021 23:15:00', 'Upload_373', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1206', '1', '1', '4/8/2021 23:15:00', 'Upload_374', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1207', '1', '1', '4/8/2021 23:15:00', 'Upload_375', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1208', '1', '1', '4/8/2021 23:15:00', 'Upload_376', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1209', '1', '1', '4/8/2021 23:30:00', 'Upload_377', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1210', '1', '1', '4/8/2021 23:30:00', 'Upload_378', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1211', '1', '1', '4/8/2021 23:30:00', 'Upload_379', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1212', '1', '1', '4/8/2021 23:30:00', 'Upload_380', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1213', '1', '1', '4/8/2021 23:45:00', 'Upload_381', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1214', '1', '1', '4/8/2021 23:45:00', 'Upload_382', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1215', '1', '1', '4/8/2021 23:45:00', 'Upload_383', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1216', '1', '1', '4/8/2021 23:45:00', 'Upload_384', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1217', '1', '1', '5/8/2021 00:00:00', 'Upload_385', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1218', '1', '1', '5/8/2021 00:00:00', 'Upload_386', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1219', '1', '1', '5/8/2021 00:00:00', 'Upload_387', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1220', '1', '1', '5/8/2021 00:00:00', 'Upload_388', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1221', '1', '1', '5/8/2021 00:15:00', 'Upload_389', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1222', '1', '1', '5/8/2021 00:15:00', 'Upload_390', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1223', '1', '1', '5/8/2021 00:15:00', 'Upload_391', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1224', '1', '1', '5/8/2021 00:15:00', 'Upload_392', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1225', '1', '1', '5/8/2021 00:30:00', 'Upload_393', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1226', '1', '1', '5/8/2021 00:30:00', 'Upload_394', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1227', '1', '1', '5/8/2021 00:30:00', 'Upload_395', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1228', '1', '1', '5/8/2021 00:30:00', 'Upload_396', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1229', '1', '1', '5/8/2021 00:45:00', 'Upload_397', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1230', '1', '1', '5/8/2021 00:45:00', 'Upload_398', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1231', '1', '1', '5/8/2021 00:45:00', 'Upload_399', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1232', '1', '1', '5/8/2021 00:45:00', 'Upload_400', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1233', '1', '1', '5/8/2021 01:00:00', 'Upload_401', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1234', '1', '1', '5/8/2021 01:00:00', 'Upload_402', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1235', '1', '1', '5/8/2021 01:00:00', 'Upload_403', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1236', '1', '1', '5/8/2021 01:00:00', 'Upload_404', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1237', '1', '1', '5/8/2021 01:15:00', 'Upload_405', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1238', '1', '1', '5/8/2021 01:15:00', 'Upload_406', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1239', '1', '1', '5/8/2021 01:15:00', 'Upload_407', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1240', '1', '1', '5/8/2021 01:15:00', 'Upload_408', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1241', '1', '1', '5/8/2021 01:30:00', 'Upload_409', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1242', '1', '1', '5/8/2021 01:30:00', 'Upload_410', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1243', '1', '1', '5/8/2021 01:30:00', 'Upload_411', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1244', '1', '1', '5/8/2021 01:30:00', 'Upload_412', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1245', '1', '1', '5/8/2021 01:45:00', 'Upload_413', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1246', '1', '1', '5/8/2021 01:45:00', 'Upload_414', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1247', '1', '1', '5/8/2021 01:45:00', 'Upload_415', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1248', '1', '1', '5/8/2021 01:45:00', 'Upload_416', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1249', '1', '1', '5/8/2021 02:00:00', 'Upload_417', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1250', '1', '1', '5/8/2021 02:00:00', 'Upload_418', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1251', '1', '1', '5/8/2021 02:00:00', 'Upload_419', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1252', '1', '1', '5/8/2021 02:00:00', 'Upload_420', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1253', '1', '1', '5/8/2021 02:15:00', 'Upload_421', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1254', '1', '1', '5/8/2021 02:15:00', 'Upload_422', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1255', '1', '1', '5/8/2021 02:15:00', 'Upload_423', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1256', '1', '1', '5/8/2021 02:15:00', 'Upload_424', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1257', '1', '1', '5/8/2021 02:30:00', 'Upload_425', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1258', '1', '1', '5/8/2021 02:30:00', 'Upload_426', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1259', '1', '1', '5/8/2021 02:30:00', 'Upload_427', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1260', '1', '1', '5/8/2021 02:30:00', 'Upload_428', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1261', '1', '1', '5/8/2021 02:45:00', 'Upload_429', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1262', '1', '1', '5/8/2021 02:45:00', 'Upload_430', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1263', '1', '1', '5/8/2021 02:45:00', 'Upload_431', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1264', '1', '1', '5/8/2021 02:45:00', 'Upload_432', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1265', '1', '1', '5/8/2021 03:00:00', 'Upload_433', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1266', '1', '1', '5/8/2021 03:00:00', 'Upload_434', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1267', '1', '1', '5/8/2021 03:00:00', 'Upload_435', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1268', '1', '1', '5/8/2021 03:00:00', 'Upload_436', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1269', '1', '1', '5/8/2021 03:15:00', 'Upload_437', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1270', '1', '1', '5/8/2021 03:15:00', 'Upload_438', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1271', '1', '1', '5/8/2021 03:15:00', 'Upload_439', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1272', '1', '1', '5/8/2021 03:15:00', 'Upload_440', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1273', '1', '1', '5/8/2021 03:30:00', 'Upload_441', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1274', '1', '1', '5/8/2021 03:30:00', 'Upload_442', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1275', '1', '1', '5/8/2021 03:30:00', 'Upload_443', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1276', '1', '1', '5/8/2021 03:30:00', 'Upload_444', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1277', '1', '1', '5/8/2021 03:45:00', 'Upload_445', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1278', '1', '1', '5/8/2021 03:45:00', 'Upload_446', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1279', '1', '1', '5/8/2021 03:45:00', 'Upload_447', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1280', '1', '1', '5/8/2021 03:45:00', 'Upload_448', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1281', '1', '1', '5/8/2021 04:00:00', 'Upload_449', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1282', '1', '1', '5/8/2021 04:00:00', 'Upload_450', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1283', '1', '1', '5/8/2021 04:00:00', 'Upload_451', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1284', '1', '1', '5/8/2021 04:00:00', 'Upload_452', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1285', '1', '1', '5/8/2021 04:15:00', 'Upload_453', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1286', '1', '1', '5/8/2021 04:15:00', 'Upload_454', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1287', '1', '1', '5/8/2021 04:15:00', 'Upload_455', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1288', '1', '1', '5/8/2021 04:15:00', 'Upload_456', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1289', '1', '1', '5/8/2021 04:30:00', 'Upload_457', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1290', '1', '1', '5/8/2021 04:30:00', 'Upload_458', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1291', '1', '1', '5/8/2021 04:30:00', 'Upload_459', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1292', '1', '1', '5/8/2021 04:30:00', 'Upload_460', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1293', '1', '1', '5/8/2021 04:45:00', 'Upload_461', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1294', '1', '1', '5/8/2021 04:45:00', 'Upload_462', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1295', '1', '1', '5/8/2021 04:45:00', 'Upload_463', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1296', '1', '1', '5/8/2021 04:45:00', 'Upload_464', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1297', '1', '1', '5/8/2021 05:00:00', 'Upload_465', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1298', '1', '1', '5/8/2021 05:00:00', 'Upload_466', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1299', '1', '1', '5/8/2021 05:00:00', 'Upload_467', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1300', '1', '1', '5/8/2021 05:00:00', 'Upload_468', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1301', '1', '1', '5/8/2021 05:15:00', 'Upload_469', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1302', '1', '1', '5/8/2021 05:15:00', 'Upload_470', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1303', '1', '1', '5/8/2021 05:15:00', 'Upload_471', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1304', '1', '1', '5/8/2021 05:15:00', 'Upload_472', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1305', '1', '1', '5/8/2021 05:30:00', 'Upload_473', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1306', '1', '1', '5/8/2021 05:30:00', 'Upload_474', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1307', '1', '1', '5/8/2021 05:30:00', 'Upload_475', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1308', '1', '1', '5/8/2021 05:30:00', 'Upload_476', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1309', '1', '1', '5/8/2021 05:45:00', 'Upload_477', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1310', '1', '1', '5/8/2021 05:45:00', 'Upload_478', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1311', '1', '1', '5/8/2021 05:45:00', 'Upload_479', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1312', '1', '1', '5/8/2021 05:45:00', 'Upload_480', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1313', '1', '1', '5/8/2021 06:00:00', 'Upload_481', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1314', '1', '1', '5/8/2021 06:00:00', 'Upload_482', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1315', '1', '1', '5/8/2021 06:00:00', 'Upload_483', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1316', '1', '1', '5/8/2021 06:00:00', 'Upload_484', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1317', '1', '1', '5/8/2021 06:15:00', 'Upload_485', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1318', '1', '1', '5/8/2021 06:15:00', 'Upload_486', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1319', '1', '1', '5/8/2021 06:15:00', 'Upload_487', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1320', '1', '1', '5/8/2021 06:15:00', 'Upload_488', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1321', '1', '1', '5/8/2021 06:30:00', 'Upload_489', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1322', '1', '1', '5/8/2021 06:30:00', 'Upload_490', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1323', '1', '1', '5/8/2021 06:30:00', 'Upload_491', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1324', '1', '1', '5/8/2021 06:30:00', 'Upload_492', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1325', '1', '1', '5/8/2021 06:45:00', 'Upload_493', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1326', '1', '1', '5/8/2021 06:45:00', 'Upload_494', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1327', '1', '1', '5/8/2021 06:45:00', 'Upload_495', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1328', '1', '1', '5/8/2021 06:45:00', 'Upload_496', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1329', '1', '1', '5/8/2021 07:00:00', 'Upload_497', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1330', '1', '1', '5/8/2021 07:00:00', 'Upload_498', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1331', '1', '1', '5/8/2021 07:00:00', 'Upload_499', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1332', '1', '1', '5/8/2021 07:00:00', 'Upload_500', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1333', '1', '1', '5/8/2021 07:15:00', 'Upload_501', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1334', '1', '1', '5/8/2021 07:15:00', 'Upload_502', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1335', '1', '1', '5/8/2021 07:15:00', 'Upload_503', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1336', '1', '1', '5/8/2021 07:15:00', 'Upload_504', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1337', '1', '1', '5/8/2021 07:30:00', 'Upload_505', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1338', '1', '1', '5/8/2021 07:30:00', 'Upload_506', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1339', '1', '1', '5/8/2021 07:30:00', 'Upload_507', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1340', '1', '1', '5/8/2021 07:30:00', 'Upload_508', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1341', '1', '1', '5/8/2021 07:45:00', 'Upload_509', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1342', '1', '1', '5/8/2021 07:45:00', 'Upload_510', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1343', '1', '1', '5/8/2021 07:45:00', 'Upload_511', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1344', '1', '1', '5/8/2021 07:45:00', 'Upload_512', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1345', '1', '1', '5/8/2021 08:00:00', 'Upload_513', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1346', '1', '1', '5/8/2021 08:00:00', 'Upload_514', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1347', '1', '1', '5/8/2021 08:00:00', 'Upload_515', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1348', '1', '1', '5/8/2021 08:00:00', 'Upload_516', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1349', '1', '1', '5/8/2021 08:15:00', 'Upload_517', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1350', '1', '1', '5/8/2021 08:15:00', 'Upload_518', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1351', '1', '1', '5/8/2021 08:15:00', 'Upload_519', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1352', '1', '1', '5/8/2021 08:15:00', 'Upload_520', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1353', '1', '1', '5/8/2021 08:30:00', 'Upload_521', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1354', '1', '1', '5/8/2021 08:30:00', 'Upload_522', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1355', '1', '1', '5/8/2021 08:30:00', 'Upload_523', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1356', '1', '1', '5/8/2021 08:30:00', 'Upload_524', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1357', '1', '1', '5/8/2021 08:45:00', 'Upload_525', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1358', '1', '1', '5/8/2021 08:45:00', 'Upload_526', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1359', '1', '1', '5/8/2021 08:45:00', 'Upload_527', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1360', '1', '1', '5/8/2021 08:45:00', 'Upload_528', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1361', '1', '1', '5/8/2021 09:00:00', 'Upload_529', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1362', '1', '1', '5/8/2021 09:00:00', 'Upload_530', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1363', '1', '1', '5/8/2021 09:00:00', 'Upload_531', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1364', '1', '1', '5/8/2021 09:00:00', 'Upload_532', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1365', '1', '1', '5/8/2021 09:15:00', 'Upload_533', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1366', '1', '1', '5/8/2021 09:15:00', 'Upload_534', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1367', '1', '1', '5/8/2021 09:15:00', 'Upload_535', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1368', '1', '1', '5/8/2021 09:15:00', 'Upload_536', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1369', '1', '1', '5/8/2021 09:30:00', 'Upload_537', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1370', '1', '1', '5/8/2021 09:30:00', 'Upload_538', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1371', '1', '1', '5/8/2021 09:30:00', 'Upload_539', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1372', '1', '1', '5/8/2021 09:30:00', 'Upload_540', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1373', '1', '1', '5/8/2021 09:45:00', 'Upload_541', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1374', '1', '1', '5/8/2021 09:45:00', 'Upload_542', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1375', '1', '1', '5/8/2021 09:45:00', 'Upload_543', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1376', '1', '1', '5/8/2021 09:45:00', 'Upload_544', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1377', '1', '1', '5/8/2021 10:00:00', 'Upload_545', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1378', '1', '1', '5/8/2021 10:00:00', 'Upload_546', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1379', '1', '1', '5/8/2021 10:00:00', 'Upload_547', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1380', '1', '1', '5/8/2021 10:00:00', 'Upload_548', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1381', '1', '1', '5/8/2021 10:15:00', 'Upload_549', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1382', '1', '1', '5/8/2021 10:15:00', 'Upload_550', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1383', '1', '1', '5/8/2021 10:15:00', 'Upload_551', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1384', '1', '1', '5/8/2021 10:15:00', 'Upload_552', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1385', '1', '1', '5/8/2021 10:30:00', 'Upload_553', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1386', '1', '1', '5/8/2021 10:30:00', 'Upload_554', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1387', '1', '1', '5/8/2021 10:30:00', 'Upload_555', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1388', '1', '1', '5/8/2021 10:30:00', 'Upload_556', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1389', '1', '1', '5/8/2021 10:45:00', 'Upload_557', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1390', '1', '1', '5/8/2021 10:45:00', 'Upload_558', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1391', '1', '1', '5/8/2021 10:45:00', 'Upload_559', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1392', '1', '1', '5/8/2021 10:45:00', 'Upload_560', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1393', '1', '1', '5/8/2021 11:00:00', 'Upload_561', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1394', '1', '1', '5/8/2021 11:00:00', 'Upload_562', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1395', '1', '1', '5/8/2021 11:00:00', 'Upload_563', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1396', '1', '1', '5/8/2021 11:00:00', 'Upload_564', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1397', '1', '1', '5/8/2021 11:15:00', 'Upload_565', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1398', '1', '1', '5/8/2021 11:15:00', 'Upload_566', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1399', '1', '1', '5/8/2021 11:15:00', 'Upload_567', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1400', '1', '1', '5/8/2021 11:15:00', 'Upload_568', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1401', '1', '1', '5/8/2021 11:30:00', 'Upload_569', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1402', '1', '1', '5/8/2021 11:30:00', 'Upload_570', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1403', '1', '1', '5/8/2021 11:30:00', 'Upload_571', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1404', '1', '1', '5/8/2021 11:30:00', 'Upload_572', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1405', '1', '1', '5/8/2021 11:45:00', 'Upload_573', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1406', '1', '1', '5/8/2021 11:45:00', 'Upload_574', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1407', '1', '1', '5/8/2021 11:45:00', 'Upload_575', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1408', '1', '1', '5/8/2021 11:45:00', 'Upload_576', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1409', '1', '1', '5/8/2021 12:00:00', 'Upload_577', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1410', '1', '1', '5/8/2021 12:00:00', 'Upload_578', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1411', '1', '1', '5/8/2021 12:00:00', 'Upload_579', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1412', '1', '1', '5/8/2021 12:00:00', 'Upload_580', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1413', '1', '1', '5/8/2021 12:15:00', 'Upload_581', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1414', '1', '1', '5/8/2021 12:15:00', 'Upload_582', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1415', '1', '1', '5/8/2021 12:15:00', 'Upload_583', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1416', '1', '1', '5/8/2021 12:15:00', 'Upload_584', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1417', '1', '1', '5/8/2021 12:30:00', 'Upload_585', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1418', '1', '1', '5/8/2021 12:30:00', 'Upload_586', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1419', '1', '1', '5/8/2021 12:30:00', 'Upload_587', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1420', '1', '1', '5/8/2021 12:30:00', 'Upload_588', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1421', '1', '1', '5/8/2021 12:45:00', 'Upload_589', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1422', '1', '1', '5/8/2021 12:45:00', 'Upload_590', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1423', '1', '1', '5/8/2021 12:45:00', 'Upload_591', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1424', '1', '1', '5/8/2021 12:45:00', 'Upload_592', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1425', '1', '1', '5/8/2021 13:00:00', 'Upload_593', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1426', '1', '1', '5/8/2021 13:00:00', 'Upload_594', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1427', '1', '1', '5/8/2021 13:00:00', 'Upload_595', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1428', '1', '1', '5/8/2021 13:00:00', 'Upload_596', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1429', '1', '1', '5/8/2021 13:15:00', 'Upload_597', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1430', '1', '1', '5/8/2021 13:15:00', 'Upload_598', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1431', '1', '1', '5/8/2021 13:15:00', 'Upload_599', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1432', '1', '1', '5/8/2021 13:15:00', 'Upload_600', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1433', '1', '1', '5/8/2021 13:30:00', 'Upload_601', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1434', '1', '1', '5/8/2021 13:30:00', 'Upload_602', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1435', '1', '1', '5/8/2021 13:30:00', 'Upload_603', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1436', '1', '1', '5/8/2021 13:30:00', 'Upload_604', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1437', '1', '1', '5/8/2021 13:45:00', 'Upload_605', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1438', '1', '1', '5/8/2021 13:45:00', 'Upload_606', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1439', '1', '1', '5/8/2021 13:45:00', 'Upload_607', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1440', '1', '1', '5/8/2021 13:45:00', 'Upload_608', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1441', '1', '1', '5/8/2021 14:00:00', 'Upload_609', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1442', '1', '1', '5/8/2021 14:00:00', 'Upload_610', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1443', '1', '1', '5/8/2021 14:00:00', 'Upload_611', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1444', '1', '1', '5/8/2021 14:00:00', 'Upload_612', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1445', '1', '1', '5/8/2021 14:15:00', 'Upload_613', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1446', '1', '1', '5/8/2021 14:15:00', 'Upload_614', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1447', '1', '1', '5/8/2021 14:15:00', 'Upload_615', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1448', '1', '1', '5/8/2021 14:15:00', 'Upload_616', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1449', '1', '1', '5/8/2021 14:30:00', 'Upload_617', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1450', '1', '1', '5/8/2021 14:30:00', 'Upload_618', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1451', '1', '1', '5/8/2021 14:30:00', 'Upload_619', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1452', '1', '1', '5/8/2021 14:30:00', 'Upload_620', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1453', '1', '1', '5/8/2021 14:45:00', 'Upload_621', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1454', '1', '1', '5/8/2021 14:45:00', 'Upload_622', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1455', '1', '1', '5/8/2021 14:45:00', 'Upload_623', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1456', '1', '1', '5/8/2021 14:45:00', 'Upload_624', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1457', '1', '1', '5/8/2021 15:00:00', 'Upload_625', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1458', '1', '1', '5/8/2021 15:00:00', 'Upload_626', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1459', '1', '1', '5/8/2021 15:00:00', 'Upload_627', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1460', '1', '1', '5/8/2021 15:00:00', 'Upload_628', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1461', '1', '1', '5/8/2021 15:15:00', 'Upload_629', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1462', '1', '1', '5/8/2021 15:15:00', 'Upload_630', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1463', '1', '1', '5/8/2021 15:15:00', 'Upload_631', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1464', '1', '1', '5/8/2021 15:15:00', 'Upload_632', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1465', '1', '1', '5/8/2021 15:30:00', 'Upload_633', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1466', '1', '1', '5/8/2021 15:30:00', 'Upload_634', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1467', '1', '1', '5/8/2021 15:30:00', 'Upload_635', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1468', '1', '1', '5/8/2021 15:30:00', 'Upload_636', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1469', '1', '1', '5/8/2021 15:45:00', 'Upload_637', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1470', '1', '1', '5/8/2021 15:45:00', 'Upload_638', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1471', '1', '1', '5/8/2021 15:45:00', 'Upload_639', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1472', '1', '1', '5/8/2021 15:45:00', 'Upload_640', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1473', '1', '1', '5/8/2021 16:00:00', 'Upload_641', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1474', '1', '1', '5/8/2021 16:00:00', 'Upload_642', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1475', '1', '1', '5/8/2021 16:00:00', 'Upload_643', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1476', '1', '1', '5/8/2021 16:00:00', 'Upload_644', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1477', '1', '1', '5/8/2021 16:15:00', 'Upload_645', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1478', '1', '1', '5/8/2021 16:15:00', 'Upload_646', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1479', '1', '1', '5/8/2021 16:15:00', 'Upload_647', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1480', '1', '1', '5/8/2021 16:15:00', 'Upload_648', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1481', '1', '1', '5/8/2021 16:30:00', 'Upload_649', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1482', '1', '1', '5/8/2021 16:30:00', 'Upload_650', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1483', '1', '1', '5/8/2021 16:30:00', 'Upload_651', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1484', '1', '1', '5/8/2021 16:30:00', 'Upload_652', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1485', '1', '1', '5/8/2021 16:45:00', 'Upload_653', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1486', '1', '1', '5/8/2021 16:45:00', 'Upload_654', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1487', '1', '1', '5/8/2021 16:45:00', 'Upload_655', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1488', '1', '1', '5/8/2021 16:45:00', 'Upload_656', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1489', '1', '1', '5/8/2021 17:00:00', 'Upload_657', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1490', '1', '1', '5/8/2021 17:00:00', 'Upload_658', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1491', '1', '1', '5/8/2021 17:00:00', 'Upload_659', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1492', '1', '1', '5/8/2021 17:00:00', 'Upload_660', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1493', '1', '1', '5/8/2021 17:15:00', 'Upload_661', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1494', '1', '1', '5/8/2021 17:15:00', 'Upload_662', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1495', '1', '1', '5/8/2021 17:15:00', 'Upload_663', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1496', '1', '1', '5/8/2021 17:15:00', 'Upload_664', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1497', '1', '1', '5/8/2021 17:30:00', 'Upload_665', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1498', '1', '1', '5/8/2021 17:30:00', 'Upload_666', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1499', '1', '1', '5/8/2021 17:30:00', 'Upload_667', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1500', '1', '1', '5/8/2021 17:30:00', 'Upload_668', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1501', '1', '1', '5/8/2021 17:45:00', 'Upload_669', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1502', '1', '1', '5/8/2021 17:45:00', 'Upload_670', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1503', '1', '1', '5/8/2021 17:45:00', 'Upload_671', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1504', '1', '1', '5/8/2021 17:45:00', 'Upload_672', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1505', '1', '1', '5/8/2021 18:00:00', 'Upload_673', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1506', '1', '1', '5/8/2021 18:00:00', 'Upload_674', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1507', '1', '1', '5/8/2021 18:00:00', 'Upload_675', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1508', '1', '1', '5/8/2021 18:00:00', 'Upload_676', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1509', '1', '1', '5/8/2021 18:15:00', 'Upload_677', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1510', '1', '1', '5/8/2021 18:15:00', 'Upload_678', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1511', '1', '1', '5/8/2021 18:15:00', 'Upload_679', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1512', '1', '1', '5/8/2021 18:15:00', 'Upload_680', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1513', '1', '1', '5/8/2021 18:30:00', 'Upload_681', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1514', '1', '1', '5/8/2021 18:30:00', 'Upload_682', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1515', '1', '1', '5/8/2021 18:30:00', 'Upload_683', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1516', '1', '1', '5/8/2021 18:30:00', 'Upload_684', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1517', '1', '1', '5/8/2021 18:45:00', 'Upload_685', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1518', '1', '1', '5/8/2021 18:45:00', 'Upload_686', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1519', '1', '1', '5/8/2021 18:45:00', 'Upload_687', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1520', '1', '1', '5/8/2021 18:45:00', 'Upload_688', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1521', '1', '1', '5/8/2021 19:00:00', 'Upload_689', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1522', '1', '1', '5/8/2021 19:00:00', 'Upload_690', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1523', '1', '1', '5/8/2021 19:00:00', 'Upload_691', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1524', '1', '1', '5/8/2021 19:00:00', 'Upload_692', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1525', '1', '1', '5/8/2021 19:15:00', 'Upload_693', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1526', '1', '1', '5/8/2021 19:15:00', 'Upload_694', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1527', '1', '1', '5/8/2021 19:15:00', 'Upload_695', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1528', '1', '1', '5/8/2021 19:15:00', 'Upload_696', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1529', '1', '1', '5/8/2021 19:30:00', 'Upload_697', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1530', '1', '1', '5/8/2021 19:30:00', 'Upload_698', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1531', '1', '1', '5/8/2021 19:30:00', 'Upload_699', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1532', '1', '1', '5/8/2021 19:30:00', 'Upload_700', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1533', '1', '1', '5/8/2021 19:45:00', 'Upload_701', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1534', '1', '1', '5/8/2021 19:45:00', 'Upload_702', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1535', '1', '1', '5/8/2021 19:45:00', 'Upload_703', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1536', '1', '1', '5/8/2021 19:45:00', 'Upload_704', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1537', '1', '1', '5/8/2021 20:00:00', 'Upload_705', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1538', '1', '1', '5/8/2021 20:00:00', 'Upload_706', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1539', '1', '1', '5/8/2021 20:00:00', 'Upload_707', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1540', '1', '1', '5/8/2021 20:00:00', 'Upload_708', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1541', '1', '1', '5/8/2021 20:15:00', 'Upload_709', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1542', '1', '1', '5/8/2021 20:15:00', 'Upload_710', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1543', '1', '1', '5/8/2021 20:15:00', 'Upload_711', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1544', '1', '1', '5/8/2021 20:15:00', 'Upload_712', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1545', '1', '1', '5/8/2021 20:30:00', 'Upload_713', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1546', '1', '1', '5/8/2021 20:30:00', 'Upload_714', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1547', '1', '1', '5/8/2021 20:30:00', 'Upload_715', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1548', '1', '1', '5/8/2021 20:30:00', 'Upload_716', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1549', '1', '1', '5/8/2021 20:45:00', 'Upload_717', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1550', '1', '1', '5/8/2021 20:45:00', 'Upload_718', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1551', '1', '1', '5/8/2021 20:45:00', 'Upload_719', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1552', '1', '1', '5/8/2021 20:45:00', 'Upload_720', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1553', '1', '1', '5/8/2021 21:00:00', 'Upload_721', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1554', '1', '1', '5/8/2021 21:00:00', 'Upload_722', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1555', '1', '1', '5/8/2021 21:00:00', 'Upload_723', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1556', '1', '1', '5/8/2021 21:00:00', 'Upload_724', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1557', '1', '1', '5/8/2021 21:15:00', 'Upload_725', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1558', '1', '1', '5/8/2021 21:15:00', 'Upload_726', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1559', '1', '1', '5/8/2021 21:15:00', 'Upload_727', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1560', '1', '1', '5/8/2021 21:15:00', 'Upload_728', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1561', '1', '1', '5/8/2021 21:30:00', 'Upload_729', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1562', '1', '1', '5/8/2021 21:30:00', 'Upload_730', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1563', '1', '1', '5/8/2021 21:30:00', 'Upload_731', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1564', '1', '1', '5/8/2021 21:30:00', 'Upload_732', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1565', '1', '1', '5/8/2021 21:45:00', 'Upload_733', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1566', '1', '1', '5/8/2021 21:45:00', 'Upload_734', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1567', '1', '1', '5/8/2021 21:45:00', 'Upload_735', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1568', '1', '1', '5/8/2021 21:45:00', 'Upload_736', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1569', '1', '1', '5/8/2021 22:00:00', 'Upload_737', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1570', '1', '1', '5/8/2021 22:00:00', 'Upload_738', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1571', '1', '1', '5/8/2021 22:00:00', 'Upload_739', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1572', '1', '1', '5/8/2021 22:00:00', 'Upload_740', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1573', '1', '1', '5/8/2021 22:15:00', 'Upload_741', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1574', '1', '1', '5/8/2021 22:15:00', 'Upload_742', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1575', '1', '1', '5/8/2021 22:15:00', 'Upload_743', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1576', '1', '1', '5/8/2021 22:15:00', 'Upload_744', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1577', '1', '1', '5/8/2021 22:30:00', 'Upload_745', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1578', '1', '1', '5/8/2021 22:30:00', 'Upload_746', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1579', '1', '1', '5/8/2021 22:30:00', 'Upload_747', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1580', '1', '1', '5/8/2021 22:30:00', 'Upload_748', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1581', '1', '1', '5/8/2021 22:45:00', 'Upload_749', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1582', '1', '1', '5/8/2021 22:45:00', 'Upload_750', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1583', '1', '1', '5/8/2021 22:45:00', 'Upload_751', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1584', '1', '1', '5/8/2021 22:45:00', 'Upload_752', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1585', '1', '1', '5/8/2021 23:00:00', 'Upload_753', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1586', '1', '1', '5/8/2021 23:00:00', 'Upload_754', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1587', '1', '1', '5/8/2021 23:00:00', 'Upload_755', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1588', '1', '1', '5/8/2021 23:00:00', 'Upload_756', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1589', '1', '1', '5/8/2021 23:15:00', 'Upload_757', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1590', '1', '1', '5/8/2021 23:15:00', 'Upload_758', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1591', '1', '1', '5/8/2021 23:15:00', 'Upload_759', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1592', '1', '1', '5/8/2021 23:15:00', 'Upload_760', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1593', '1', '1', '5/8/2021 23:30:00', 'Upload_761', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1594', '1', '1', '5/8/2021 23:30:00', 'Upload_762', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1595', '1', '1', '5/8/2021 23:30:00', 'Upload_763', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1596', '1', '1', '5/8/2021 23:30:00', 'Upload_764', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1597', '1', '1', '5/8/2021 23:45:00', 'Upload_765', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1598', '1', '1', '5/8/2021 23:45:00', 'Upload_766', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1599', '1', '1', '5/8/2021 23:45:00', 'Upload_767', '36', 'normalrep', '0', '1', '135.35.12.27');
INSERT INTO `report_info` VALUES ('1600', '1', '1', '5/8/2021 23:45:00', 'Upload_768', '36', 'normalrep', '0', '1', '135.35.12.27');

-- ----------------------------
-- Table structure for stop_plan
-- ----------------------------
DROP TABLE IF EXISTS `stop_plan`;
CREATE TABLE `stop_plan`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_farm_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fan_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stop_plan
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_form_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logged_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'zhangsan', '张三', '123456', '1', '0', './pic/zhangsan.jpg', '14/8/2021 01:55:51');
INSERT INTO `user_info` VALUES ('2', 'lisi', '李四', '123456', '2', '1', './pic/lisi.png', '26/8/2021 01:55:56');
INSERT INTO `user_info` VALUES ('3', 'wangwu', '王五', '123456', '3', '1', './pic/wangwu.gif', '10/8/2021 01:55:59');
INSERT INTO `user_info` VALUES ('4', 'zhaoliu', '赵六', '123456', '2', '2', './pic/zhaoliu.jpg', '3/8/2021 01:56:02');
INSERT INTO `user_info` VALUES ('5', 'admin', 'admin', '123456', '1', '0', NULL, '4/8/2021 01:56:06');

-- ----------------------------
-- Table structure for weather_forecast
-- ----------------------------
DROP TABLE IF EXISTS `weather_forecast`;
CREATE TABLE `weather_forecast`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wind_farm_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `wind_speed` float NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `wind_direction` float NOT NULL,
  `humidity` float NOT NULL,
  `temperature` float NULL DEFAULT NULL,
  `atmosphere` float NULL DEFAULT NULL,
  `air_density` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 769 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weather_forecast
-- ----------------------------
INSERT INTO `weather_forecast` VALUES (1, 1, '2023-05-30 00:00:00', 20.88, 10, 44.28, 39.8, 33.4, 1, 1.0127);
INSERT INTO `weather_forecast` VALUES (2, 1, '2023-05-30 00:00:00', 9.74, 30, 200.88, 45.4, 36.7, 1, 1.0109);
INSERT INTO `weather_forecast` VALUES (3, 1, '2023-05-30 00:00:00', 17.08, 50, 226.44, 16.1, 29.4, 1, 1.01152);
INSERT INTO `weather_forecast` VALUES (4, 1, '2023-05-30 00:00:00', 12.02, 80, 142.92, 39.7, 35.7, 1, 1.00102);
INSERT INTO `weather_forecast` VALUES (5, 1, '2023-05-30 00:15:00', 15.08, 10, 106.56, 50.85, 32.5, 1, 1.01958);
INSERT INTO `weather_forecast` VALUES (6, 1, '2023-05-30 00:15:00', 22.56, 30, 32.76, 50.1, 27.7, 1, 1.00412);
INSERT INTO `weather_forecast` VALUES (7, 1, '2023-05-30 00:15:00', 6.14, 50, 242.28, 16, 28.3, 1, 1.0025);
INSERT INTO `weather_forecast` VALUES (8, 1, '2023-05-30 00:15:00', 24.06, 80, 125.64, 27.9, 33.7, 1, 1.0031);
INSERT INTO `weather_forecast` VALUES (9, 1, '2023-05-30 00:30:00', 7.8, 10, 272.16, 52.6, 29.8, 1, 1.0049);
INSERT INTO `weather_forecast` VALUES (10, 1, '2023-05-30 00:30:00', 5.8, 30, 351.36, 43.6, 31.4, 1, 1.01636);
INSERT INTO `weather_forecast` VALUES (11, 1, '2023-05-30 00:30:00', 7.12, 50, 325.08, 34.9, 33.7, 1, 1.01408);
INSERT INTO `weather_forecast` VALUES (12, 1, '2023-05-30 00:30:00', 11.9, 80, 183.6, 26.25, 35, 1, 1.00188);
INSERT INTO `weather_forecast` VALUES (13, 1, '2023-05-30 00:45:00', 16.24, 10, 47.88, 37.65, 29.8, 1, 1.01468);
INSERT INTO `weather_forecast` VALUES (14, 1, '2023-05-30 00:45:00', 5.34, 30, 93.96, 48.15, 31.6, 1, 1.01046);
INSERT INTO `weather_forecast` VALUES (15, 1, '2023-05-30 00:45:00', 12.1, 50, 323.64, 31.95, 28.6, 1, 1.01412);
INSERT INTO `weather_forecast` VALUES (16, 1, '2023-05-30 00:45:00', 17.5, 80, 151.56, 55.45, 30.1, 1, 1.01574);
INSERT INTO `weather_forecast` VALUES (17, 1, '2023-05-30 01:00:00', 5.84, 10, 75.24, 64.5, 32.5, 1, 1.01232);
INSERT INTO `weather_forecast` VALUES (18, 1, '2023-05-30 01:00:00', 6.84, 30, 348.12, 26.8, 31.4, 1, 1.01256);
INSERT INTO `weather_forecast` VALUES (19, 1, '2023-05-30 01:00:00', 7.4, 50, 134.64, 31.15, 32.3, 1, 1.01732);
INSERT INTO `weather_forecast` VALUES (20, 1, '2023-05-30 01:00:00', 7.08, 80, 168.48, 15.15, 30.4, 1, 1.01072);
INSERT INTO `weather_forecast` VALUES (21, 1, '2023-05-30 01:15:00', 14.88, 10, 172.08, 36.95, 30.8, 1, 1.01128);
INSERT INTO `weather_forecast` VALUES (22, 1, '2023-05-30 01:15:00', 24.06, 30, 252.72, 25.75, 33.2, 1, 1.00894);
INSERT INTO `weather_forecast` VALUES (23, 1, '2023-05-30 01:15:00', 8.36, 50, 349.92, 58.3, 30.6, 1, 1.00412);
INSERT INTO `weather_forecast` VALUES (24, 1, '2023-05-30 01:15:00', 17.44, 80, 84.96, 24.2, 34.4, 1, 1.01154);
INSERT INTO `weather_forecast` VALUES (25, 1, '2023-05-30 01:30:00', 10.42, 10, 137.88, 41.35, 35.1, 1, 1.00358);
INSERT INTO `weather_forecast` VALUES (26, 1, '2023-05-30 01:30:00', 15.7, 30, 341.64, 22, 36.2, 1, 1.00652);
INSERT INTO `weather_forecast` VALUES (27, 1, '2023-05-30 01:30:00', 16.18, 50, 239.04, 18.4, 33.3, 1, 1.01778);
INSERT INTO `weather_forecast` VALUES (28, 1, '2023-05-30 01:30:00', 7.74, 80, 338.04, 33.3, 30.6, 1, 1.00004);
INSERT INTO `weather_forecast` VALUES (29, 1, '2023-05-30 01:45:00', 21.2, 10, 270, 51, 30.5, 1, 1.01356);
INSERT INTO `weather_forecast` VALUES (30, 1, '2023-05-30 01:45:00', 22.08, 30, 187.56, 15.75, 35.7, 1, 1.01828);
INSERT INTO `weather_forecast` VALUES (31, 1, '2023-05-30 01:45:00', 5.86, 50, 146.16, 63.55, 34.2, 1, 1.01822);
INSERT INTO `weather_forecast` VALUES (32, 1, '2023-05-30 01:45:00', 24.32, 80, 156.6, 55.3, 33.8, 1, 1.01172);
INSERT INTO `weather_forecast` VALUES (33, 1, '2023-05-30 02:00:00', 15.56, 10, 164.16, 20.95, 30.9, 1, 1.0106);
INSERT INTO `weather_forecast` VALUES (34, 1, '2023-05-30 02:00:00', 20.52, 30, 158.04, 22.5, 28.7, 1, 1.01152);
INSERT INTO `weather_forecast` VALUES (35, 1, '2023-05-30 02:00:00', 7.2, 50, 95.4, 17.2, 29.1, 1, 1.01248);
INSERT INTO `weather_forecast` VALUES (36, 1, '2023-05-30 02:00:00', 23.02, 80, 119.52, 50.55, 32.4, 1, 1.0109);
INSERT INTO `weather_forecast` VALUES (37, 1, '2023-05-30 02:15:00', 13.14, 10, 258.48, 38.15, 30.6, 1, 1.0144);
INSERT INTO `weather_forecast` VALUES (38, 1, '2023-05-30 02:15:00', 11.4, 30, 321.12, 40.2, 33.4, 1, 1.00646);
INSERT INTO `weather_forecast` VALUES (39, 1, '2023-05-30 02:15:00', 13.68, 50, 86.04, 21.55, 36.9, 1, 1.01754);
INSERT INTO `weather_forecast` VALUES (40, 1, '2023-05-30 02:15:00', 11.08, 80, 352.44, 42.55, 29.7, 1, 1.00976);
INSERT INTO `weather_forecast` VALUES (41, 1, '2023-05-30 02:30:00', 8.26, 10, 202.68, 43.7, 31.1, 1, 1.01976);
INSERT INTO `weather_forecast` VALUES (42, 1, '2023-05-30 02:30:00', 14.82, 30, 78.12, 57.8, 27.7, 1, 1.00478);
INSERT INTO `weather_forecast` VALUES (43, 1, '2023-05-30 02:30:00', 21.64, 50, 270.36, 63.2, 29.9, 1, 1.01074);
INSERT INTO `weather_forecast` VALUES (44, 1, '2023-05-30 02:30:00', 18.38, 80, 322.2, 20.85, 31, 1, 1.00868);
INSERT INTO `weather_forecast` VALUES (45, 1, '2023-05-30 02:45:00', 15.7, 10, 254.88, 28.4, 36.1, 1, 1.01362);
INSERT INTO `weather_forecast` VALUES (46, 1, '2023-05-30 02:45:00', 11.36, 30, 273.96, 25.2, 36.9, 1, 1.01406);
INSERT INTO `weather_forecast` VALUES (47, 1, '2023-05-30 02:45:00', 19.82, 50, 227.88, 63.3, 34.8, 1, 1.01882);
INSERT INTO `weather_forecast` VALUES (48, 1, '2023-05-30 02:45:00', 5.8, 80, 129.96, 42.2, 30.6, 1, 1.0183);
INSERT INTO `weather_forecast` VALUES (49, 1, '2023-05-30 03:00:00', 24.62, 10, 160.2, 48.3, 34.6, 1, 1.01166);
INSERT INTO `weather_forecast` VALUES (50, 1, '2023-05-30 03:00:00', 22.3, 30, 317.52, 19.7, 30.6, 1, 1.01282);
INSERT INTO `weather_forecast` VALUES (51, 1, '2023-05-30 03:00:00', 17.86, 50, 327.24, 41.4, 29.5, 1, 1.00614);
INSERT INTO `weather_forecast` VALUES (52, 1, '2023-05-30 03:00:00', 17.34, 80, 302.4, 58.55, 30.6, 1, 1.01274);
INSERT INTO `weather_forecast` VALUES (53, 1, '2023-05-30 03:15:00', 24.82, 10, 216, 28.15, 33.6, 1, 1.0064);
INSERT INTO `weather_forecast` VALUES (54, 1, '2023-05-30 03:15:00', 23.74, 30, 172.44, 15.65, 29.8, 1, 1.01264);
INSERT INTO `weather_forecast` VALUES (55, 1, '2023-05-30 03:15:00', 15.64, 50, 228.96, 25.75, 34.7, 1, 1.01148);
INSERT INTO `weather_forecast` VALUES (56, 1, '2023-05-30 03:15:00', 7.74, 80, 306.36, 56.95, 29.6, 1, 1.01512);
INSERT INTO `weather_forecast` VALUES (57, 1, '2023-05-30 03:30:00', 16.78, 10, 325.44, 27.8, 30.9, 1, 1.01992);
INSERT INTO `weather_forecast` VALUES (58, 1, '2023-05-30 03:30:00', 23.68, 30, 86.4, 21.45, 30.9, 1, 1.01176);
INSERT INTO `weather_forecast` VALUES (59, 1, '2023-05-30 03:30:00', 6.48, 50, 41.4, 19.95, 27.6, 1, 1.00754);
INSERT INTO `weather_forecast` VALUES (60, 1, '2023-05-30 03:30:00', 14.82, 80, 100.44, 27.55, 34.8, 1, 1.01916);
INSERT INTO `weather_forecast` VALUES (61, 1, '2023-05-30 03:45:00', 23.22, 10, 177.48, 41.7, 34.6, 1, 1.00866);
INSERT INTO `weather_forecast` VALUES (62, 1, '2023-05-30 03:45:00', 21.8, 30, 35.28, 62.65, 27.6, 1, 1.01706);
INSERT INTO `weather_forecast` VALUES (63, 1, '2023-05-30 03:45:00', 12.2, 50, 321.48, 22.65, 28.4, 1, 1.00752);
INSERT INTO `weather_forecast` VALUES (64, 1, '2023-05-30 03:45:00', 22.9, 80, 11.88, 54.4, 33.9, 1, 1.00694);
INSERT INTO `weather_forecast` VALUES (65, 1, '2023-05-30 04:00:00', 9.32, 10, 27, 26.65, 28.2, 1, 1.0097);
INSERT INTO `weather_forecast` VALUES (66, 1, '2023-05-30 04:00:00', 11.46, 30, 68.76, 56.35, 35.9, 1, 1.00636);
INSERT INTO `weather_forecast` VALUES (67, 1, '2023-05-30 04:00:00', 18.28, 50, 295.92, 34.5, 30.2, 1, 1.0052);
INSERT INTO `weather_forecast` VALUES (68, 1, '2023-05-30 04:00:00', 21.34, 80, 26.28, 19.6, 35.1, 1, 1.0081);
INSERT INTO `weather_forecast` VALUES (69, 1, '2023-05-30 04:15:00', 14.4, 10, 324.72, 16.65, 33.8, 1, 1.01896);
INSERT INTO `weather_forecast` VALUES (70, 1, '2023-05-30 04:15:00', 16.42, 30, 30.24, 43.2, 35.6, 1, 1.01446);
INSERT INTO `weather_forecast` VALUES (71, 1, '2023-05-30 04:15:00', 23.52, 50, 327.6, 61.85, 30.6, 1, 1.01322);
INSERT INTO `weather_forecast` VALUES (72, 1, '2023-05-30 04:15:00', 22.44, 80, 305.64, 60.4, 36.4, 1, 1.01956);
INSERT INTO `weather_forecast` VALUES (73, 1, '2023-05-30 04:30:00', 24.02, 10, 147.96, 32.2, 29.9, 1, 1.01814);
INSERT INTO `weather_forecast` VALUES (74, 1, '2023-05-30 04:30:00', 18.74, 30, 47.88, 28.05, 30.9, 1, 1.00944);
INSERT INTO `weather_forecast` VALUES (75, 1, '2023-05-30 04:30:00', 16.88, 50, 108.36, 20.35, 35.5, 1, 1.00384);
INSERT INTO `weather_forecast` VALUES (76, 1, '2023-05-30 04:30:00', 23.4, 80, 69.48, 53.9, 36.9, 1, 1.00502);
INSERT INTO `weather_forecast` VALUES (77, 1, '2023-05-30 04:45:00', 18.46, 10, 287.28, 54.15, 30, 1, 1.01);
INSERT INTO `weather_forecast` VALUES (78, 1, '2023-05-30 04:45:00', 10.82, 30, 105.48, 58.75, 32.6, 1, 1.01936);
INSERT INTO `weather_forecast` VALUES (79, 1, '2023-05-30 04:45:00', 13.54, 50, 74.16, 21.9, 35.7, 1, 1.01134);
INSERT INTO `weather_forecast` VALUES (80, 1, '2023-05-30 04:45:00', 15.38, 80, 257.76, 16.65, 29.1, 1, 1.002);
INSERT INTO `weather_forecast` VALUES (81, 1, '2023-05-30 05:00:00', 10.94, 10, 227.16, 62.35, 36.2, 1, 1.00968);
INSERT INTO `weather_forecast` VALUES (82, 1, '2023-05-30 05:00:00', 12.64, 30, 89.64, 37.05, 30.8, 1, 1.00272);
INSERT INTO `weather_forecast` VALUES (83, 1, '2023-05-30 05:00:00', 14.66, 50, 64.44, 41.25, 35.7, 1, 1.00846);
INSERT INTO `weather_forecast` VALUES (84, 1, '2023-05-30 05:00:00', 21.6, 80, 9, 57.85, 35.9, 1, 1.01048);
INSERT INTO `weather_forecast` VALUES (85, 1, '2023-05-30 05:15:00', 15.4, 10, 29.52, 59.15, 32.7, 1, 1.01048);
INSERT INTO `weather_forecast` VALUES (86, 1, '2023-05-30 05:15:00', 21.76, 30, 112.68, 38.5, 34.7, 1, 1.00302);
INSERT INTO `weather_forecast` VALUES (87, 1, '2023-05-30 05:15:00', 16.86, 50, 16.56, 22.9, 36.6, 1, 1.00558);
INSERT INTO `weather_forecast` VALUES (88, 1, '2023-05-30 05:15:00', 7.52, 80, 57.6, 39, 28.3, 1, 1.01366);
INSERT INTO `weather_forecast` VALUES (89, 1, '2023-05-30 05:30:00', 20.42, 10, 147.24, 52.35, 36.3, 1, 1.00846);
INSERT INTO `weather_forecast` VALUES (90, 1, '2023-05-30 05:30:00', 19.26, 30, 223.56, 16.7, 35, 1, 1.00796);
INSERT INTO `weather_forecast` VALUES (91, 1, '2023-05-30 05:30:00', 20.24, 50, 186.84, 15.95, 27.9, 1, 1.00058);
INSERT INTO `weather_forecast` VALUES (92, 1, '2023-05-30 05:30:00', 19.26, 80, 295.92, 18.7, 34.6, 1, 1.00132);
INSERT INTO `weather_forecast` VALUES (93, 1, '2023-05-30 05:45:00', 17.98, 10, 96.48, 53.7, 28.3, 1, 1.00874);
INSERT INTO `weather_forecast` VALUES (94, 1, '2023-05-30 05:45:00', 13.6, 30, 299.88, 30.9, 36.2, 1, 1.0103);
INSERT INTO `weather_forecast` VALUES (95, 1, '2023-05-30 05:45:00', 10.62, 50, 137.88, 16.65, 27.8, 1, 1.00972);
INSERT INTO `weather_forecast` VALUES (96, 1, '2023-05-30 05:45:00', 23.22, 80, 214.2, 54.35, 27.5, 1, 1.01856);
INSERT INTO `weather_forecast` VALUES (97, 1, '2023-05-30 06:00:00', 22.64, 10, 259.92, 41.1, 32.7, 1, 1.01468);
INSERT INTO `weather_forecast` VALUES (98, 1, '2023-05-30 06:00:00', 20.54, 30, 350.64, 52.75, 34.3, 1, 1.01712);
INSERT INTO `weather_forecast` VALUES (99, 1, '2023-05-30 06:00:00', 6.88, 50, 347.4, 64.45, 34.6, 1, 1.01978);
INSERT INTO `weather_forecast` VALUES (100, 1, '2023-05-30 06:00:00', 13.96, 80, 110.88, 61.3, 28.3, 1, 1.0132);
INSERT INTO `weather_forecast` VALUES (101, 1, '2023-05-30 06:15:00', 7.3, 10, 225, 37.35, 35.5, 1, 1.00708);
INSERT INTO `weather_forecast` VALUES (102, 1, '2023-05-30 06:15:00', 7.22, 30, 233.28, 60.85, 32.2, 1, 1.00994);
INSERT INTO `weather_forecast` VALUES (103, 1, '2023-05-30 06:15:00', 5.48, 50, 341.28, 62.55, 30.2, 1, 1.01086);
INSERT INTO `weather_forecast` VALUES (104, 1, '2023-05-30 06:15:00', 11.06, 80, 110.52, 55.05, 31.5, 1, 1.01964);
INSERT INTO `weather_forecast` VALUES (105, 1, '2023-05-30 06:30:00', 9.8, 10, 37.44, 44.45, 28.7, 1, 1.01086);
INSERT INTO `weather_forecast` VALUES (106, 1, '2023-05-30 06:30:00', 7.04, 30, 356.76, 64.15, 32.2, 1, 1.00338);
INSERT INTO `weather_forecast` VALUES (107, 1, '2023-05-30 06:30:00', 14.6, 50, 288, 47.3, 34.4, 1, 1.01052);
INSERT INTO `weather_forecast` VALUES (108, 1, '2023-05-30 06:30:00', 17.88, 80, 199.08, 54.45, 32.4, 1, 1.00596);
INSERT INTO `weather_forecast` VALUES (109, 1, '2023-05-30 06:45:00', 14.92, 10, 144, 16.2, 35, 1, 1.00868);
INSERT INTO `weather_forecast` VALUES (110, 1, '2023-05-30 06:45:00', 12.68, 30, 273.6, 31.1, 34.1, 1, 1.01858);
INSERT INTO `weather_forecast` VALUES (111, 1, '2023-05-30 06:45:00', 8.66, 50, 269.28, 21.4, 28.5, 1, 1.01764);
INSERT INTO `weather_forecast` VALUES (112, 1, '2023-05-30 06:45:00', 22.18, 80, 178.92, 44.1, 35.2, 1, 1.0053);
INSERT INTO `weather_forecast` VALUES (113, 1, '2023-05-30 07:00:00', 8.3, 10, 320.4, 38.6, 33.5, 1, 1.00422);
INSERT INTO `weather_forecast` VALUES (114, 1, '2023-05-30 07:00:00', 6.84, 30, 58.68, 18.8, 34.4, 1, 1.01172);
INSERT INTO `weather_forecast` VALUES (115, 1, '2023-05-30 07:00:00', 10.06, 50, 85.32, 38.15, 35.8, 1, 1.00202);
INSERT INTO `weather_forecast` VALUES (116, 1, '2023-05-30 07:00:00', 22.6, 80, 83.16, 55.2, 27.9, 1, 1.0134);
INSERT INTO `weather_forecast` VALUES (117, 1, '2023-05-30 07:15:00', 10.38, 10, 313.92, 58.1, 34.2, 1, 1.0189);
INSERT INTO `weather_forecast` VALUES (118, 1, '2023-05-30 07:15:00', 6.64, 30, 278.64, 63.3, 29.1, 1, 1.01224);
INSERT INTO `weather_forecast` VALUES (119, 1, '2023-05-30 07:15:00', 8.54, 50, 314.28, 26.55, 36.6, 1, 1.01816);
INSERT INTO `weather_forecast` VALUES (120, 1, '2023-05-30 07:15:00', 8.58, 80, 140.04, 38.2, 27.4, 1, 1.01884);
INSERT INTO `weather_forecast` VALUES (121, 1, '2023-05-30 07:30:00', 6.96, 10, 109.44, 52.8, 27.7, 1, 1.00144);
INSERT INTO `weather_forecast` VALUES (122, 1, '2023-05-30 07:30:00', 19.72, 30, 296.64, 64, 36.8, 1, 1.015);
INSERT INTO `weather_forecast` VALUES (123, 1, '2023-05-30 07:30:00', 20.28, 50, 89.28, 31.25, 28.5, 1, 1.01446);
INSERT INTO `weather_forecast` VALUES (124, 1, '2023-05-30 07:30:00', 6.86, 80, 218.16, 45.05, 29.3, 1, 1.01548);
INSERT INTO `weather_forecast` VALUES (125, 1, '2023-05-30 07:45:00', 23.46, 10, 136.08, 63.2, 34.5, 1, 1.01832);
INSERT INTO `weather_forecast` VALUES (126, 1, '2023-05-30 07:45:00', 9.28, 30, 249.12, 49.45, 31.4, 1, 1.00758);
INSERT INTO `weather_forecast` VALUES (127, 1, '2023-05-30 07:45:00', 23.18, 50, 168.12, 31.9, 35.3, 1, 1.01148);
INSERT INTO `weather_forecast` VALUES (128, 1, '2023-05-30 07:45:00', 12.5, 80, 252.72, 48.5, 27, 1, 1.01634);
INSERT INTO `weather_forecast` VALUES (129, 1, '2023-05-30 08:00:00', 11.94, 10, 315, 48.5, 34, 1, 1.0061);
INSERT INTO `weather_forecast` VALUES (130, 1, '2023-05-30 08:00:00', 8.2, 30, 167.04, 49.65, 30.2, 1, 1.01404);
INSERT INTO `weather_forecast` VALUES (131, 1, '2023-05-30 08:00:00', 18.06, 50, 241.56, 50.55, 33, 1, 1.00588);
INSERT INTO `weather_forecast` VALUES (132, 1, '2023-05-30 08:00:00', 5.74, 80, 118.08, 23.95, 34, 1, 1.00432);
INSERT INTO `weather_forecast` VALUES (133, 1, '2023-05-30 08:15:00', 21.04, 10, 53.28, 37.35, 34.9, 1, 1.00486);
INSERT INTO `weather_forecast` VALUES (134, 1, '2023-05-30 08:15:00', 16.12, 30, 246.96, 35.35, 31, 1, 1.00264);
INSERT INTO `weather_forecast` VALUES (135, 1, '2023-05-30 08:15:00', 12.92, 50, 171, 53.85, 31.9, 1, 1.0024);
INSERT INTO `weather_forecast` VALUES (136, 1, '2023-05-30 08:15:00', 7.56, 80, 107.28, 46.05, 27.9, 1, 1.01926);
INSERT INTO `weather_forecast` VALUES (137, 1, '2023-05-30 08:30:00', 7, 10, 105.48, 54.8, 34.2, 1, 1.00594);
INSERT INTO `weather_forecast` VALUES (138, 1, '2023-05-30 08:30:00', 17.02, 30, 274.68, 32.8, 29, 1, 1.0122);
INSERT INTO `weather_forecast` VALUES (139, 1, '2023-05-30 08:30:00', 21.86, 50, 166.68, 32.25, 31.2, 1, 1.01682);
INSERT INTO `weather_forecast` VALUES (140, 1, '2023-05-30 08:30:00', 20.04, 80, 292.68, 36.3, 30.5, 1, 1.01612);
INSERT INTO `weather_forecast` VALUES (141, 1, '2023-05-30 08:45:00', 7.52, 10, 322.56, 38.7, 33.7, 1, 1.01498);
INSERT INTO `weather_forecast` VALUES (142, 1, '2023-05-30 08:45:00', 23.7, 30, 125.64, 25.35, 29, 1, 1.0059);
INSERT INTO `weather_forecast` VALUES (143, 1, '2023-05-30 08:45:00', 19.58, 50, 28.08, 26.15, 29.4, 1, 1.00244);
INSERT INTO `weather_forecast` VALUES (144, 1, '2023-05-30 08:45:00', 20.44, 80, 300.6, 62.5, 33.7, 1, 1.0144);
INSERT INTO `weather_forecast` VALUES (145, 1, '2023-05-30 09:00:00', 11.58, 10, 143.28, 21.75, 30.7, 1, 1.0176);
INSERT INTO `weather_forecast` VALUES (146, 1, '2023-05-30 09:00:00', 22.04, 30, 95.76, 45, 28.8, 1, 1.01244);
INSERT INTO `weather_forecast` VALUES (147, 1, '2023-05-30 09:00:00', 11.86, 50, 142.56, 34.65, 27.9, 1, 1.00228);
INSERT INTO `weather_forecast` VALUES (148, 1, '2023-05-30 09:00:00', 11.32, 80, 332.28, 18.8, 34.6, 1, 1.01982);
INSERT INTO `weather_forecast` VALUES (149, 1, '2023-05-30 09:15:00', 23.54, 10, 25.92, 32.75, 27.5, 1, 1.00442);
INSERT INTO `weather_forecast` VALUES (150, 1, '2023-05-30 09:15:00', 17.88, 30, 326.52, 58.05, 35.1, 1, 1.01904);
INSERT INTO `weather_forecast` VALUES (151, 1, '2023-05-30 09:15:00', 19.52, 50, 61.56, 49.1, 29.8, 1, 1.00116);
INSERT INTO `weather_forecast` VALUES (152, 1, '2023-05-30 09:15:00', 15.5, 80, 88.92, 55.4, 32.8, 1, 1.01344);
INSERT INTO `weather_forecast` VALUES (153, 1, '2023-05-30 09:30:00', 11.92, 10, 24.12, 58.25, 29.5, 1, 1.0131);
INSERT INTO `weather_forecast` VALUES (154, 1, '2023-05-30 09:30:00', 18.74, 30, 56.52, 60.35, 28.9, 1, 1.01956);
INSERT INTO `weather_forecast` VALUES (155, 1, '2023-05-30 09:30:00', 15.02, 50, 199.08, 46.5, 30.4, 1, 1.0073);
INSERT INTO `weather_forecast` VALUES (156, 1, '2023-05-30 09:30:00', 13.26, 80, 60.12, 47.3, 28.2, 1, 1.0145);
INSERT INTO `weather_forecast` VALUES (157, 1, '2023-05-30 09:45:00', 20.8, 10, 312.12, 56.1, 33.6, 1, 1.0066);
INSERT INTO `weather_forecast` VALUES (158, 1, '2023-05-30 09:45:00', 10.58, 30, 1.44, 45.25, 35.4, 1, 1.0019);
INSERT INTO `weather_forecast` VALUES (159, 1, '2023-05-30 09:45:00', 14.52, 50, 214.2, 46.9, 33.2, 1, 1.01486);
INSERT INTO `weather_forecast` VALUES (160, 1, '2023-05-30 09:45:00', 13.78, 80, 115.56, 29.95, 27.9, 1, 1.01304);
INSERT INTO `weather_forecast` VALUES (161, 1, '2023-05-30 10:00:00', 20.64, 10, 257.76, 62, 30.1, 1, 1.00294);
INSERT INTO `weather_forecast` VALUES (162, 1, '2023-05-30 10:00:00', 20.68, 30, 116.64, 42.3, 36.7, 1, 1.00882);
INSERT INTO `weather_forecast` VALUES (163, 1, '2023-05-30 10:00:00', 21.92, 50, 243.36, 47.1, 36.3, 1, 1.01858);
INSERT INTO `weather_forecast` VALUES (164, 1, '2023-05-30 10:00:00', 21.8, 80, 293.4, 37.8, 32.7, 1, 1.00126);
INSERT INTO `weather_forecast` VALUES (165, 1, '2023-05-30 10:15:00', 22.44, 10, 164.88, 42.55, 28.5, 1, 1.00218);
INSERT INTO `weather_forecast` VALUES (166, 1, '2023-05-30 10:15:00', 6.64, 30, 9.72, 54.5, 28.8, 1, 1.00668);
INSERT INTO `weather_forecast` VALUES (167, 1, '2023-05-30 10:15:00', 18.8, 50, 108.72, 50.65, 33.5, 1, 1.00172);
INSERT INTO `weather_forecast` VALUES (168, 1, '2023-05-30 10:15:00', 15.64, 80, 64.8, 17.1, 36.3, 1, 1.01094);
INSERT INTO `weather_forecast` VALUES (169, 1, '2023-05-30 10:30:00', 9.2, 10, 240.48, 19.75, 34.7, 1, 1.01344);
INSERT INTO `weather_forecast` VALUES (170, 1, '2023-05-30 10:30:00', 22.26, 30, 14.04, 42.3, 32.8, 1, 1.00382);
INSERT INTO `weather_forecast` VALUES (171, 1, '2023-05-30 10:30:00', 11.5, 50, 161.28, 25, 29.2, 1, 1.01492);
INSERT INTO `weather_forecast` VALUES (172, 1, '2023-05-30 10:30:00', 14.36, 80, 174.24, 41.6, 33.8, 1, 1.01034);
INSERT INTO `weather_forecast` VALUES (173, 1, '2023-05-30 10:45:00', 19.26, 10, 262.08, 38.5, 29.4, 1, 1.00558);
INSERT INTO `weather_forecast` VALUES (174, 1, '2023-05-30 10:45:00', 12.08, 30, 165.6, 19.5, 34.4, 1, 1.00656);
INSERT INTO `weather_forecast` VALUES (175, 1, '2023-05-30 10:45:00', 17.56, 50, 57.24, 22.9, 28.1, 1, 1.0048);
INSERT INTO `weather_forecast` VALUES (176, 1, '2023-05-30 10:45:00', 21.22, 80, 159.84, 35.2, 29.7, 1, 1.01374);
INSERT INTO `weather_forecast` VALUES (177, 1, '2023-05-30 11:00:00', 17.26, 10, 200.52, 25.4, 28.5, 1, 1.01448);
INSERT INTO `weather_forecast` VALUES (178, 1, '2023-05-30 11:00:00', 16.96, 30, 317.52, 25.85, 29.8, 1, 1.00422);
INSERT INTO `weather_forecast` VALUES (179, 1, '2023-05-30 11:00:00', 8.1, 50, 245.88, 52, 30.7, 1, 1.00896);
INSERT INTO `weather_forecast` VALUES (180, 1, '2023-05-30 11:00:00', 16.54, 80, 37.8, 30.55, 29.6, 1, 1.01372);
INSERT INTO `weather_forecast` VALUES (181, 1, '2023-05-30 11:15:00', 20.32, 10, 75.24, 54.35, 32, 1, 1.001);
INSERT INTO `weather_forecast` VALUES (182, 1, '2023-05-30 11:15:00', 8.38, 30, 306.36, 19.1, 34.4, 1, 1.01426);
INSERT INTO `weather_forecast` VALUES (183, 1, '2023-05-30 11:15:00', 7.06, 50, 182.16, 33.4, 34.3, 1, 1.01814);
INSERT INTO `weather_forecast` VALUES (184, 1, '2023-05-30 11:15:00', 10.04, 80, 280.44, 32.7, 31.6, 1, 1.0189);
INSERT INTO `weather_forecast` VALUES (185, 1, '2023-05-30 11:30:00', 6.42, 10, 305.64, 46.45, 28.5, 1, 1.0052);
INSERT INTO `weather_forecast` VALUES (186, 1, '2023-05-30 11:30:00', 22.42, 30, 195.84, 57.9, 27.2, 1, 1.01058);
INSERT INTO `weather_forecast` VALUES (187, 1, '2023-05-30 11:30:00', 10.94, 50, 177.12, 25.2, 28.2, 1, 1.00474);
INSERT INTO `weather_forecast` VALUES (188, 1, '2023-05-30 11:30:00', 8.64, 80, 325.08, 15.25, 30.1, 1, 1.00256);
INSERT INTO `weather_forecast` VALUES (189, 1, '2023-05-30 11:45:00', 18.56, 10, 60.12, 18.05, 33.3, 1, 1.01676);
INSERT INTO `weather_forecast` VALUES (190, 1, '2023-05-30 11:45:00', 9.16, 30, 47.52, 35.9, 31.7, 1, 1.01878);
INSERT INTO `weather_forecast` VALUES (191, 1, '2023-05-30 11:45:00', 20.98, 50, 352.8, 64.4, 32.7, 1, 1.01158);
INSERT INTO `weather_forecast` VALUES (192, 1, '2023-05-30 11:45:00', 21.66, 80, 234.72, 16.45, 29.2, 1, 1.00744);
INSERT INTO `weather_forecast` VALUES (193, 1, '2023-05-30 12:00:00', 7.44, 10, 199.8, 43.65, 35.6, 1, 1.00192);
INSERT INTO `weather_forecast` VALUES (194, 1, '2023-05-30 12:00:00', 7.42, 30, 235.08, 54.25, 34.1, 1, 1.01762);
INSERT INTO `weather_forecast` VALUES (195, 1, '2023-05-30 12:00:00', 14.1, 50, 61.2, 48.95, 27.8, 1, 1.0154);
INSERT INTO `weather_forecast` VALUES (196, 1, '2023-05-30 12:00:00', 14.28, 80, 87.48, 41.15, 29.8, 1, 1.00608);
INSERT INTO `weather_forecast` VALUES (197, 1, '2023-05-30 12:15:00', 14.2, 10, 95.04, 30.15, 35.9, 1, 1.0026);
INSERT INTO `weather_forecast` VALUES (198, 1, '2023-05-30 12:15:00', 7.08, 30, 254.52, 25.4, 35.5, 1, 1.01848);
INSERT INTO `weather_forecast` VALUES (199, 1, '2023-05-30 12:15:00', 14.42, 50, 27, 32.95, 34.5, 1, 1.01822);
INSERT INTO `weather_forecast` VALUES (200, 1, '2023-05-30 12:15:00', 14.68, 80, 298.8, 54.9, 34.3, 1, 1.0167);
INSERT INTO `weather_forecast` VALUES (201, 1, '2023-05-30 12:30:00', 14.54, 10, 179.64, 46.85, 36.7, 1, 1.01276);
INSERT INTO `weather_forecast` VALUES (202, 1, '2023-05-30 12:30:00', 15.46, 30, 73.08, 51, 28.8, 1, 1.00296);
INSERT INTO `weather_forecast` VALUES (203, 1, '2023-05-30 12:30:00', 10.28, 50, 217.8, 34.5, 31.8, 1, 1.01832);
INSERT INTO `weather_forecast` VALUES (204, 1, '2023-05-30 12:30:00', 15.14, 80, 282.96, 55.85, 36, 1, 1.0062);
INSERT INTO `weather_forecast` VALUES (205, 1, '2023-05-30 12:45:00', 14.9, 10, 300.6, 42.2, 34, 1, 1.01194);
INSERT INTO `weather_forecast` VALUES (206, 1, '2023-05-30 12:45:00', 7.2, 30, 311.04, 62.15, 27.7, 1, 1.01026);
INSERT INTO `weather_forecast` VALUES (207, 1, '2023-05-30 12:45:00', 19.08, 50, 167.4, 18.2, 27.4, 1, 1.01928);
INSERT INTO `weather_forecast` VALUES (208, 1, '2023-05-30 12:45:00', 22.82, 80, 5.04, 32.55, 35.3, 1, 1.01708);
INSERT INTO `weather_forecast` VALUES (209, 1, '2023-05-30 13:00:00', 9.88, 10, 25.2, 29.1, 32.2, 1, 1.00386);
INSERT INTO `weather_forecast` VALUES (210, 1, '2023-05-30 13:00:00', 20.16, 30, 180.72, 34.2, 28.9, 1, 1.00436);
INSERT INTO `weather_forecast` VALUES (211, 1, '2023-05-30 13:00:00', 6.66, 50, 311.4, 64.95, 35.3, 1, 1.01332);
INSERT INTO `weather_forecast` VALUES (212, 1, '2023-05-30 13:00:00', 8.14, 80, 177.12, 50.8, 33.5, 1, 1.01876);
INSERT INTO `weather_forecast` VALUES (213, 1, '2023-05-30 13:15:00', 22.78, 10, 63, 60.45, 30.3, 1, 1.0007);
INSERT INTO `weather_forecast` VALUES (214, 1, '2023-05-30 13:15:00', 19.46, 30, 244.44, 63.35, 35.9, 1, 1.01274);
INSERT INTO `weather_forecast` VALUES (215, 1, '2023-05-30 13:15:00', 14.9, 50, 136.8, 58.1, 28, 1, 1.00032);
INSERT INTO `weather_forecast` VALUES (216, 1, '2023-05-30 13:15:00', 18.72, 80, 118.08, 23.5, 34.5, 1, 1.01936);
INSERT INTO `weather_forecast` VALUES (217, 1, '2023-05-30 13:30:00', 17.84, 10, 325.08, 54.8, 33.9, 1, 1.01812);
INSERT INTO `weather_forecast` VALUES (218, 1, '2023-05-30 13:30:00', 5.92, 30, 191.52, 32.4, 31.7, 1, 1.01988);
INSERT INTO `weather_forecast` VALUES (219, 1, '2023-05-30 13:30:00', 7.46, 50, 324.36, 58.05, 35.4, 1, 1.01096);
INSERT INTO `weather_forecast` VALUES (220, 1, '2023-05-30 13:30:00', 16.76, 80, 274.32, 19.4, 28.8, 1, 1.00754);
INSERT INTO `weather_forecast` VALUES (221, 1, '2023-05-30 13:45:00', 21.26, 10, 206.28, 51.65, 33.8, 1, 1.01982);
INSERT INTO `weather_forecast` VALUES (222, 1, '2023-05-30 13:45:00', 6.86, 30, 292.68, 64.9, 31.4, 1, 1.00754);
INSERT INTO `weather_forecast` VALUES (223, 1, '2023-05-30 13:45:00', 17.7, 50, 89.28, 23.65, 29.5, 1, 1.00094);
INSERT INTO `weather_forecast` VALUES (224, 1, '2023-05-30 13:45:00', 12.38, 80, 269.28, 25.6, 34.4, 1, 1.01492);
INSERT INTO `weather_forecast` VALUES (225, 1, '2023-05-30 14:00:00', 9.46, 10, 290.52, 25.6, 35.3, 1, 1.01958);
INSERT INTO `weather_forecast` VALUES (226, 1, '2023-05-30 14:00:00', 20.3, 30, 271.08, 64.45, 30.6, 1, 1.00106);
INSERT INTO `weather_forecast` VALUES (227, 1, '2023-05-30 14:00:00', 17.84, 50, 28.8, 57.75, 36.8, 1, 1.00742);
INSERT INTO `weather_forecast` VALUES (228, 1, '2023-05-30 14:00:00', 23.22, 80, 297, 44.8, 30.7, 1, 1.0171);
INSERT INTO `weather_forecast` VALUES (229, 1, '2023-05-30 14:15:00', 5.54, 10, 52.92, 55.55, 32.9, 1, 1.00808);
INSERT INTO `weather_forecast` VALUES (230, 1, '2023-05-30 14:15:00', 10.56, 30, 2.52, 35.4, 27.5, 1, 1.0195);
INSERT INTO `weather_forecast` VALUES (231, 1, '2023-05-30 14:15:00', 22.46, 50, 228.24, 59.05, 34.1, 1, 1.0085);
INSERT INTO `weather_forecast` VALUES (232, 1, '2023-05-30 14:15:00', 24.68, 80, 1.08, 61.8, 30, 1, 1.01258);
INSERT INTO `weather_forecast` VALUES (233, 1, '2023-05-30 14:30:00', 11, 10, 295.56, 52.4, 35.6, 1, 1.00542);
INSERT INTO `weather_forecast` VALUES (234, 1, '2023-05-30 14:30:00', 15.02, 30, 338.76, 26.8, 35, 1, 1.00532);
INSERT INTO `weather_forecast` VALUES (235, 1, '2023-05-30 14:30:00', 24.36, 50, 12.6, 42.4, 29.7, 1, 1.01592);
INSERT INTO `weather_forecast` VALUES (236, 1, '2023-05-30 14:30:00', 22.54, 80, 237.96, 57.45, 33.5, 1, 1.0011);
INSERT INTO `weather_forecast` VALUES (237, 1, '2023-05-30 14:45:00', 23.04, 10, 32.04, 21.85, 32.6, 1, 1.00264);
INSERT INTO `weather_forecast` VALUES (238, 1, '2023-05-30 14:45:00', 9.64, 30, 118.08, 17.9, 29.6, 1, 1.0081);
INSERT INTO `weather_forecast` VALUES (239, 1, '2023-05-30 14:45:00', 16.74, 50, 43.2, 55.3, 30.7, 1, 1.0165);
INSERT INTO `weather_forecast` VALUES (240, 1, '2023-05-30 14:45:00', 6.72, 80, 150.12, 59.45, 35.8, 1, 1.00928);
INSERT INTO `weather_forecast` VALUES (241, 1, '2023-05-30 15:00:00', 15.64, 10, 221.4, 54.2, 33.6, 1, 1.01582);
INSERT INTO `weather_forecast` VALUES (242, 1, '2023-05-30 15:00:00', 22.1, 30, 249.84, 36.15, 28.7, 1, 1.01616);
INSERT INTO `weather_forecast` VALUES (243, 1, '2023-05-30 15:00:00', 6.4, 50, 33.48, 57.55, 34.8, 1, 1.00466);
INSERT INTO `weather_forecast` VALUES (244, 1, '2023-05-30 15:00:00', 15.8, 80, 59.4, 17.8, 34.4, 1, 1.017);
INSERT INTO `weather_forecast` VALUES (245, 1, '2023-05-30 15:15:00', 24.34, 10, 187.56, 58.5, 34.7, 1, 1.0022);
INSERT INTO `weather_forecast` VALUES (246, 1, '2023-05-30 15:15:00', 11.84, 30, 100.8, 64.65, 35.7, 1, 1.01276);
INSERT INTO `weather_forecast` VALUES (247, 1, '2023-05-30 15:15:00', 19.48, 50, 326.16, 54.5, 35, 1, 1.00468);
INSERT INTO `weather_forecast` VALUES (248, 1, '2023-05-30 15:15:00', 9.24, 80, 7.56, 31.35, 32.5, 1, 1.0155);
INSERT INTO `weather_forecast` VALUES (249, 1, '2023-05-30 15:30:00', 17.52, 10, 250.56, 48.1, 36.5, 1, 1.01956);
INSERT INTO `weather_forecast` VALUES (250, 1, '2023-05-30 15:30:00', 14.7, 30, 1.08, 41.1, 34.8, 1, 1.00884);
INSERT INTO `weather_forecast` VALUES (251, 1, '2023-05-30 15:30:00', 10, 50, 321.48, 28.9, 34.2, 1, 1.009);
INSERT INTO `weather_forecast` VALUES (252, 1, '2023-05-30 15:30:00', 18.76, 80, 248.76, 37.4, 30.2, 1, 1.00622);
INSERT INTO `weather_forecast` VALUES (253, 1, '2023-05-30 15:45:00', 5.7, 10, 196.92, 23.95, 27.5, 1, 1.00684);
INSERT INTO `weather_forecast` VALUES (254, 1, '2023-05-30 15:45:00', 12.92, 30, 306, 35.3, 31.5, 1, 1.00844);
INSERT INTO `weather_forecast` VALUES (255, 1, '2023-05-30 15:45:00', 7.9, 50, 202.68, 48.25, 36.4, 1, 1.0048);
INSERT INTO `weather_forecast` VALUES (256, 1, '2023-05-30 15:45:00', 7.16, 80, 162, 54.5, 36.6, 1, 1.01614);
INSERT INTO `weather_forecast` VALUES (257, 1, '2023-05-30 16:00:00', 12.96, 10, 69.48, 24, 32.2, 1, 1.00346);
INSERT INTO `weather_forecast` VALUES (258, 1, '2023-05-30 16:00:00', 9.26, 30, 147.6, 60.8, 29.6, 1, 1.00562);
INSERT INTO `weather_forecast` VALUES (259, 1, '2023-05-30 16:00:00', 18.1, 50, 202.32, 23.85, 29.3, 1, 1.0041);
INSERT INTO `weather_forecast` VALUES (260, 1, '2023-05-30 16:00:00', 15.96, 80, 320.76, 49.9, 32.4, 1, 1.018);
INSERT INTO `weather_forecast` VALUES (261, 1, '2023-05-30 16:15:00', 24.04, 10, 340.92, 27.15, 30, 1, 1.00224);
INSERT INTO `weather_forecast` VALUES (262, 1, '2023-05-30 16:15:00', 6.88, 30, 13.32, 58.05, 33.6, 1, 1.00534);
INSERT INTO `weather_forecast` VALUES (263, 1, '2023-05-30 16:15:00', 9.82, 50, 232.92, 33.7, 32.1, 1, 1.00054);
INSERT INTO `weather_forecast` VALUES (264, 1, '2023-05-30 16:15:00', 9.78, 80, 336.6, 16, 35.1, 1, 1.00704);
INSERT INTO `weather_forecast` VALUES (265, 1, '2023-05-30 16:30:00', 20.04, 10, 76.32, 39.15, 31, 1, 1.01654);
INSERT INTO `weather_forecast` VALUES (266, 1, '2023-05-30 16:30:00', 24.84, 30, 168.84, 46.7, 33.9, 1, 1.007);
INSERT INTO `weather_forecast` VALUES (267, 1, '2023-05-30 16:30:00', 14.48, 50, 287.64, 57.55, 35.4, 1, 1.01946);
INSERT INTO `weather_forecast` VALUES (268, 1, '2023-05-30 16:30:00', 19.52, 80, 331.2, 19.8, 31.1, 1, 1.01774);
INSERT INTO `weather_forecast` VALUES (269, 1, '2023-05-30 16:45:00', 17.94, 10, 45.36, 30.9, 29.4, 1, 1.01674);
INSERT INTO `weather_forecast` VALUES (270, 1, '2023-05-30 16:45:00', 7.8, 30, 108, 24.4, 29.5, 1, 1.01074);
INSERT INTO `weather_forecast` VALUES (271, 1, '2023-05-30 16:45:00', 24.16, 50, 87.48, 64.5, 34.4, 1, 1.0005);
INSERT INTO `weather_forecast` VALUES (272, 1, '2023-05-30 16:45:00', 14.7, 80, 286.2, 50.55, 27.3, 1, 1.0068);
INSERT INTO `weather_forecast` VALUES (273, 1, '2023-05-30 17:00:00', 9.94, 10, 61.56, 52.75, 31.1, 1, 1.01784);
INSERT INTO `weather_forecast` VALUES (274, 1, '2023-05-30 17:00:00', 6.6, 30, 11.52, 53.15, 30.7, 1, 1.00466);
INSERT INTO `weather_forecast` VALUES (275, 1, '2023-05-30 17:00:00', 14.56, 50, 270.72, 31.05, 35.9, 1, 1.00752);
INSERT INTO `weather_forecast` VALUES (276, 1, '2023-05-30 17:00:00', 6.9, 80, 119.52, 15.55, 33.2, 1, 1.00474);
INSERT INTO `weather_forecast` VALUES (277, 1, '2023-05-30 17:15:00', 18.8, 10, 284.4, 38.35, 33.8, 1, 1.00468);
INSERT INTO `weather_forecast` VALUES (278, 1, '2023-05-30 17:15:00', 9, 30, 12.96, 31, 31.1, 1, 1.01632);
INSERT INTO `weather_forecast` VALUES (279, 1, '2023-05-30 17:15:00', 13.32, 50, 63.72, 18.95, 32.3, 1, 1.0075);
INSERT INTO `weather_forecast` VALUES (280, 1, '2023-05-30 17:15:00', 12.22, 80, 273.6, 15.25, 36.5, 1, 1.0108);
INSERT INTO `weather_forecast` VALUES (281, 1, '2023-05-30 17:30:00', 23.52, 10, 356.04, 17.05, 35.2, 1, 1.0192);
INSERT INTO `weather_forecast` VALUES (282, 1, '2023-05-30 17:30:00', 14.42, 30, 26.28, 37.5, 32.4, 1, 1.00266);
INSERT INTO `weather_forecast` VALUES (283, 1, '2023-05-30 17:30:00', 13.74, 50, 174.6, 44.3, 31, 1, 1.0168);
INSERT INTO `weather_forecast` VALUES (284, 1, '2023-05-30 17:30:00', 17.54, 80, 168.12, 39.7, 28.8, 1, 1.01398);
INSERT INTO `weather_forecast` VALUES (285, 1, '2023-05-30 17:45:00', 23.24, 10, 36.72, 54.15, 28.7, 1, 1.00362);
INSERT INTO `weather_forecast` VALUES (286, 1, '2023-05-30 17:45:00', 17.92, 30, 212.04, 21.1, 36.3, 1, 1.01278);
INSERT INTO `weather_forecast` VALUES (287, 1, '2023-05-30 17:45:00', 7.96, 50, 51.12, 41.25, 29.7, 1, 1.00762);
INSERT INTO `weather_forecast` VALUES (288, 1, '2023-05-30 17:45:00', 7.56, 80, 338.4, 64.5, 28.1, 1, 1.01342);
INSERT INTO `weather_forecast` VALUES (289, 1, '2023-05-30 18:00:00', 24.34, 10, 142.56, 34.3, 30.7, 1, 1.01672);
INSERT INTO `weather_forecast` VALUES (290, 1, '2023-05-30 18:00:00', 8.62, 30, 272.88, 52.2, 35.4, 1, 1.0106);
INSERT INTO `weather_forecast` VALUES (291, 1, '2023-05-30 18:00:00', 22.36, 50, 334.08, 41.9, 29.4, 1, 1.01608);
INSERT INTO `weather_forecast` VALUES (292, 1, '2023-05-30 18:00:00', 23.6, 80, 138.6, 17.45, 36.4, 1, 1.0139);
INSERT INTO `weather_forecast` VALUES (293, 1, '2023-05-30 18:15:00', 13.32, 10, 351.36, 54.6, 28, 1, 1.00322);
INSERT INTO `weather_forecast` VALUES (294, 1, '2023-05-30 18:15:00', 5.22, 30, 238.32, 46.15, 27.1, 1, 1.00904);
INSERT INTO `weather_forecast` VALUES (295, 1, '2023-05-30 18:15:00', 11.32, 50, 15.12, 47, 30.6, 1, 1.00216);
INSERT INTO `weather_forecast` VALUES (296, 1, '2023-05-30 18:15:00', 7.92, 80, 224.64, 23.95, 35.7, 1, 1.01184);
INSERT INTO `weather_forecast` VALUES (297, 1, '2023-05-30 18:30:00', 21.52, 10, 212.04, 18.45, 29.8, 1, 1.0133);
INSERT INTO `weather_forecast` VALUES (298, 1, '2023-05-30 18:30:00', 18.06, 30, 287.28, 58.25, 28.7, 1, 1.00672);
INSERT INTO `weather_forecast` VALUES (299, 1, '2023-05-30 18:30:00', 20.62, 50, 21.24, 62.95, 32.9, 1, 1.00976);
INSERT INTO `weather_forecast` VALUES (300, 1, '2023-05-30 18:30:00', 21.2, 80, 357.12, 63.9, 31.7, 1, 1.00988);
INSERT INTO `weather_forecast` VALUES (301, 1, '2023-05-30 18:45:00', 17.48, 10, 265.68, 45.1, 29.5, 1, 1.0063);
INSERT INTO `weather_forecast` VALUES (302, 1, '2023-05-30 18:45:00', 14.66, 30, 110.88, 20.4, 33, 1, 1.0071);
INSERT INTO `weather_forecast` VALUES (303, 1, '2023-05-30 18:45:00', 7.12, 50, 211.68, 20.15, 34.3, 1, 1.01442);
INSERT INTO `weather_forecast` VALUES (304, 1, '2023-05-30 18:45:00', 22.3, 80, 13.32, 42.1, 36.4, 1, 1.01878);
INSERT INTO `weather_forecast` VALUES (305, 1, '2023-05-30 19:00:00', 19.28, 10, 2.52, 40.5, 31.1, 1, 1.00534);
INSERT INTO `weather_forecast` VALUES (306, 1, '2023-05-30 19:00:00', 23.02, 30, 330.48, 34.55, 34.5, 1, 1.00608);
INSERT INTO `weather_forecast` VALUES (307, 1, '2023-05-30 19:00:00', 13.38, 50, 198.36, 36.95, 36.3, 1, 1.0185);
INSERT INTO `weather_forecast` VALUES (308, 1, '2023-05-30 19:00:00', 12.54, 80, 306.72, 24.15, 28.3, 1, 1.00906);
INSERT INTO `weather_forecast` VALUES (309, 1, '2023-05-30 19:15:00', 5.44, 10, 299.16, 50.45, 27.7, 1, 1.01528);
INSERT INTO `weather_forecast` VALUES (310, 1, '2023-05-30 19:15:00', 17.96, 30, 337.68, 24.6, 31.8, 1, 1.01188);
INSERT INTO `weather_forecast` VALUES (311, 1, '2023-05-30 19:15:00', 6.54, 50, 23.04, 49.2, 27.8, 1, 1.01094);
INSERT INTO `weather_forecast` VALUES (312, 1, '2023-05-30 19:15:00', 17.34, 80, 63.36, 24.3, 31.1, 1, 1.0185);
INSERT INTO `weather_forecast` VALUES (313, 1, '2023-05-30 19:30:00', 6.14, 10, 115.92, 35.75, 27.3, 1, 1.01692);
INSERT INTO `weather_forecast` VALUES (314, 1, '2023-05-30 19:30:00', 23.36, 30, 263.88, 56.7, 36.7, 1, 1.0003);
INSERT INTO `weather_forecast` VALUES (315, 1, '2023-05-30 19:30:00', 6.04, 50, 169.56, 20.3, 27.1, 1, 1.01852);
INSERT INTO `weather_forecast` VALUES (316, 1, '2023-05-30 19:30:00', 13.94, 80, 131.76, 42.75, 36.6, 1, 1.0015);
INSERT INTO `weather_forecast` VALUES (317, 1, '2023-05-30 19:45:00', 22.7, 10, 118.44, 59.9, 36.8, 1, 1.01952);
INSERT INTO `weather_forecast` VALUES (318, 1, '2023-05-30 19:45:00', 17.54, 30, 289.08, 33.3, 30, 1, 1.01272);
INSERT INTO `weather_forecast` VALUES (319, 1, '2023-05-30 19:45:00', 24.26, 50, 318.24, 51.8, 28.1, 1, 1.01062);
INSERT INTO `weather_forecast` VALUES (320, 1, '2023-05-30 19:45:00', 23.02, 80, 83.16, 19.45, 36.8, 1, 1.01594);
INSERT INTO `weather_forecast` VALUES (321, 1, '2023-05-30 20:00:00', 10.64, 10, 86.04, 34.2, 27.1, 1, 1.01274);
INSERT INTO `weather_forecast` VALUES (322, 1, '2023-05-30 20:00:00', 20.38, 30, 277.2, 29.85, 31.9, 1, 1.00368);
INSERT INTO `weather_forecast` VALUES (323, 1, '2023-05-30 20:00:00', 16.1, 50, 123.48, 53.75, 33.8, 1, 1.00786);
INSERT INTO `weather_forecast` VALUES (324, 1, '2023-05-30 20:00:00', 5.3, 80, 191.52, 48.75, 33.2, 1, 1.01088);
INSERT INTO `weather_forecast` VALUES (325, 1, '2023-05-30 20:15:00', 19.74, 10, 287.28, 38.05, 27.4, 1, 1.01326);
INSERT INTO `weather_forecast` VALUES (326, 1, '2023-05-30 20:15:00', 7.7, 30, 356.4, 59.6, 35.4, 1, 1.01704);
INSERT INTO `weather_forecast` VALUES (327, 1, '2023-05-30 20:15:00', 6.08, 50, 255.96, 59.35, 30.5, 1, 1.01214);
INSERT INTO `weather_forecast` VALUES (328, 1, '2023-05-30 20:15:00', 22.7, 80, 134.28, 53.7, 27.7, 1, 1.01528);
INSERT INTO `weather_forecast` VALUES (329, 1, '2023-05-30 20:30:00', 21.16, 10, 332.28, 36.25, 30.7, 1, 1.01512);
INSERT INTO `weather_forecast` VALUES (330, 1, '2023-05-30 20:30:00', 13.42, 30, 174.24, 33.6, 29.4, 1, 1.01922);
INSERT INTO `weather_forecast` VALUES (331, 1, '2023-05-30 20:30:00', 24.62, 50, 32.04, 34, 29.4, 1, 1.0028);
INSERT INTO `weather_forecast` VALUES (332, 1, '2023-05-30 20:30:00', 10.88, 80, 79.92, 16.8, 32.5, 1, 1.00494);
INSERT INTO `weather_forecast` VALUES (333, 1, '2023-05-30 20:45:00', 24.8, 10, 40.68, 61.65, 31.9, 1, 1.00794);
INSERT INTO `weather_forecast` VALUES (334, 1, '2023-05-30 20:45:00', 19.86, 30, 265.68, 41.5, 31.9, 1, 1.0199);
INSERT INTO `weather_forecast` VALUES (335, 1, '2023-05-30 20:45:00', 15.32, 50, 333.36, 53.7, 27.9, 1, 1.01952);
INSERT INTO `weather_forecast` VALUES (336, 1, '2023-05-30 20:45:00', 12, 80, 359.28, 24.4, 31.5, 1, 1.01508);
INSERT INTO `weather_forecast` VALUES (337, 1, '2023-05-30 21:00:00', 20.1, 10, 352.08, 46.85, 35.5, 1, 1.01692);
INSERT INTO `weather_forecast` VALUES (338, 1, '2023-05-30 21:00:00', 17.88, 30, 321.12, 61, 29.3, 1, 1.00128);
INSERT INTO `weather_forecast` VALUES (339, 1, '2023-05-30 21:00:00', 6.98, 50, 262.44, 26.3, 32.7, 1, 1.00812);
INSERT INTO `weather_forecast` VALUES (340, 1, '2023-05-30 21:00:00', 22.24, 80, 33.84, 23.6, 35.2, 1, 1.00402);
INSERT INTO `weather_forecast` VALUES (341, 1, '2023-05-30 21:15:00', 15.88, 10, 105.84, 31.35, 31.9, 1, 1.01472);
INSERT INTO `weather_forecast` VALUES (342, 1, '2023-05-30 21:15:00', 21.06, 30, 218.16, 33.05, 29.2, 1, 1.01856);
INSERT INTO `weather_forecast` VALUES (343, 1, '2023-05-30 21:15:00', 14.82, 50, 332.64, 27.45, 34.3, 1, 1.00418);
INSERT INTO `weather_forecast` VALUES (344, 1, '2023-05-30 21:15:00', 11.36, 80, 141.84, 38.2, 30.6, 1, 1.00032);
INSERT INTO `weather_forecast` VALUES (345, 1, '2023-05-30 21:30:00', 18.1, 10, 17.28, 18, 33, 1, 1.01238);
INSERT INTO `weather_forecast` VALUES (346, 1, '2023-05-30 21:30:00', 18.04, 30, 215.28, 56.3, 28.5, 1, 1.01592);
INSERT INTO `weather_forecast` VALUES (347, 1, '2023-05-30 21:30:00', 21.78, 50, 187.56, 34.1, 30.3, 1, 1.01146);
INSERT INTO `weather_forecast` VALUES (348, 1, '2023-05-30 21:30:00', 14.72, 80, 209.88, 53.75, 36.7, 1, 1.01692);
INSERT INTO `weather_forecast` VALUES (349, 1, '2023-05-30 21:45:00', 17.44, 10, 112.68, 60.8, 31.1, 1, 1.00328);
INSERT INTO `weather_forecast` VALUES (350, 1, '2023-05-30 21:45:00', 5.8, 30, 264.96, 50.85, 32.2, 1, 1.00192);
INSERT INTO `weather_forecast` VALUES (351, 1, '2023-05-30 21:45:00', 21.62, 50, 244.8, 35.45, 33.4, 1, 1.00228);
INSERT INTO `weather_forecast` VALUES (352, 1, '2023-05-30 21:45:00', 14.02, 80, 344.16, 40.6, 32.3, 1, 1.01134);
INSERT INTO `weather_forecast` VALUES (353, 1, '2023-05-30 22:00:00', 19.44, 10, 304.2, 25.95, 31.2, 1, 1.0033);
INSERT INTO `weather_forecast` VALUES (354, 1, '2023-05-30 22:00:00', 14.54, 30, 36.36, 40.75, 31.1, 1, 1.01254);
INSERT INTO `weather_forecast` VALUES (355, 1, '2023-05-30 22:00:00', 7.4, 50, 11.16, 50.1, 30.7, 1, 1.0115);
INSERT INTO `weather_forecast` VALUES (356, 1, '2023-05-30 22:00:00', 18.96, 80, 46.8, 19.05, 34.7, 1, 1.01228);
INSERT INTO `weather_forecast` VALUES (357, 1, '2023-05-30 22:15:00', 6.3, 10, 117, 18.9, 36.5, 1, 1.00928);
INSERT INTO `weather_forecast` VALUES (358, 1, '2023-05-30 22:15:00', 12.4, 30, 201.24, 48.15, 28.4, 1, 1.01012);
INSERT INTO `weather_forecast` VALUES (359, 1, '2023-05-30 22:15:00', 6.72, 50, 181.8, 61.7, 30.4, 1, 1.0016);
INSERT INTO `weather_forecast` VALUES (360, 1, '2023-05-30 22:15:00', 16.1, 80, 2.52, 28.5, 33.9, 1, 1.00408);
INSERT INTO `weather_forecast` VALUES (361, 1, '2023-05-30 22:30:00', 7.02, 10, 203.76, 51.15, 28.6, 1, 1.01292);
INSERT INTO `weather_forecast` VALUES (362, 1, '2023-05-30 22:30:00', 18.3, 30, 300.96, 32, 28.3, 1, 1.0098);
INSERT INTO `weather_forecast` VALUES (363, 1, '2023-05-30 22:30:00', 8.1, 50, 20.88, 37.6, 31.4, 1, 1.00038);
INSERT INTO `weather_forecast` VALUES (364, 1, '2023-05-30 22:30:00', 15.06, 80, 81.72, 55.5, 36.4, 1, 1.00932);
INSERT INTO `weather_forecast` VALUES (365, 1, '2023-05-30 22:45:00', 20.1, 10, 248.76, 62, 30.9, 1, 1.01742);
INSERT INTO `weather_forecast` VALUES (366, 1, '2023-05-30 22:45:00', 19.06, 30, 322.2, 51.1, 31.1, 1, 1.00248);
INSERT INTO `weather_forecast` VALUES (367, 1, '2023-05-30 22:45:00', 16.44, 50, 132.48, 62.15, 32.1, 1, 1.0062);
INSERT INTO `weather_forecast` VALUES (368, 1, '2023-05-30 22:45:00', 12.84, 80, 103.68, 16.95, 35.9, 1, 1.01604);
INSERT INTO `weather_forecast` VALUES (369, 1, '2023-05-30 23:00:00', 12.76, 10, 269.64, 36.85, 32, 1, 1.00634);
INSERT INTO `weather_forecast` VALUES (370, 1, '2023-05-30 23:00:00', 12.66, 30, 312.84, 37.3, 27.2, 1, 1.01874);
INSERT INTO `weather_forecast` VALUES (371, 1, '2023-05-30 23:00:00', 12.12, 50, 276.84, 60.85, 34.7, 1, 1.00116);
INSERT INTO `weather_forecast` VALUES (372, 1, '2023-05-30 23:00:00', 10.58, 80, 132.12, 45.9, 28.9, 1, 1.01304);
INSERT INTO `weather_forecast` VALUES (373, 1, '2023-05-30 23:15:00', 17.08, 10, 104.76, 51.3, 32.9, 1, 1.01266);
INSERT INTO `weather_forecast` VALUES (374, 1, '2023-05-30 23:15:00', 14.86, 30, 260.64, 17.5, 32.3, 1, 1.01878);
INSERT INTO `weather_forecast` VALUES (375, 1, '2023-05-30 23:15:00', 20.56, 50, 352.44, 41.95, 32.6, 1, 1.01072);
INSERT INTO `weather_forecast` VALUES (376, 1, '2023-05-30 23:15:00', 10.86, 80, 76.32, 15.15, 32.1, 1, 1.0171);
INSERT INTO `weather_forecast` VALUES (377, 1, '2023-05-30 23:30:00', 9.62, 10, 223.2, 20.05, 33.4, 1, 1.0014);
INSERT INTO `weather_forecast` VALUES (378, 1, '2023-05-30 23:30:00', 15.12, 30, 209.52, 64.25, 36.9, 1, 1.0113);
INSERT INTO `weather_forecast` VALUES (379, 1, '2023-05-30 23:30:00', 10.52, 50, 315.72, 56.3, 30.7, 1, 1.00392);
INSERT INTO `weather_forecast` VALUES (380, 1, '2023-05-30 23:30:00', 11.16, 80, 340.2, 31.25, 35, 1, 1.00732);
INSERT INTO `weather_forecast` VALUES (381, 1, '2023-05-30 23:45:00', 18.36, 10, 47.16, 43.65, 31.4, 1, 1.00654);
INSERT INTO `weather_forecast` VALUES (382, 1, '2023-05-30 23:45:00', 6.96, 30, 265.68, 51.75, 29.6, 1, 1.0129);
INSERT INTO `weather_forecast` VALUES (383, 1, '2023-05-30 23:45:00', 14.78, 50, 181.44, 40.9, 35.6, 1, 1.01598);
INSERT INTO `weather_forecast` VALUES (384, 1, '2023-05-30 23:45:00', 16.46, 80, 175.68, 51.35, 31.5, 1, 1.01758);
INSERT INTO `weather_forecast` VALUES (385, 1, '2023-05-30 00:00:00', 12.32, 10, 214.2, 42, 29.1, 1, 1.00044);
INSERT INTO `weather_forecast` VALUES (386, 1, '2023-05-30 00:00:00', 15.8, 30, 316.08, 35.5, 29.3, 1, 1.00034);
INSERT INTO `weather_forecast` VALUES (387, 1, '2023-05-30 00:00:00', 5.68, 50, 254.16, 55.55, 29.2, 1, 1.0093);
INSERT INTO `weather_forecast` VALUES (388, 1, '2023-05-30 00:00:00', 5.64, 80, 183.96, 62.7, 30.2, 1, 1.00718);
INSERT INTO `weather_forecast` VALUES (389, 1, '2023-05-30 00:15:00', 12.58, 10, 358.92, 34.65, 30.8, 1, 1.01426);
INSERT INTO `weather_forecast` VALUES (390, 1, '2023-05-30 00:15:00', 14.52, 30, 226.08, 28.55, 36, 1, 1.00098);
INSERT INTO `weather_forecast` VALUES (391, 1, '2023-05-30 00:15:00', 10.98, 50, 7.92, 44.85, 32.5, 1, 1.00736);
INSERT INTO `weather_forecast` VALUES (392, 1, '2023-05-30 00:15:00', 13.5, 80, 90.72, 59.55, 29.8, 1, 1.0025);
INSERT INTO `weather_forecast` VALUES (393, 1, '2023-05-30 00:30:00', 17.68, 10, 142.56, 21.7, 28.9, 1, 1.01524);
INSERT INTO `weather_forecast` VALUES (394, 1, '2023-05-30 00:30:00', 6.82, 30, 40.32, 20.35, 35.1, 1, 1.01658);
INSERT INTO `weather_forecast` VALUES (395, 1, '2023-05-30 00:30:00', 16.5, 50, 135.72, 29.9, 34.1, 1, 1.00516);
INSERT INTO `weather_forecast` VALUES (396, 1, '2023-05-30 00:30:00', 10.78, 80, 90.72, 54.15, 29.2, 1, 1.00656);
INSERT INTO `weather_forecast` VALUES (397, 1, '2023-05-30 00:45:00', 6.14, 10, 123.84, 25.4, 31, 1, 1.01836);
INSERT INTO `weather_forecast` VALUES (398, 1, '2023-05-30 00:45:00', 16.48, 30, 162.72, 44.85, 31.9, 1, 1.01292);
INSERT INTO `weather_forecast` VALUES (399, 1, '2023-05-30 00:45:00', 21.82, 50, 209.52, 37.65, 28.2, 1, 1.0157);
INSERT INTO `weather_forecast` VALUES (400, 1, '2023-05-30 00:45:00', 13.9, 80, 129.6, 60.5, 31.8, 1, 1.00456);
INSERT INTO `weather_forecast` VALUES (401, 1, '2023-05-30 01:00:00', 24.2, 10, 58.32, 42.4, 27.3, 1, 1.00786);
INSERT INTO `weather_forecast` VALUES (402, 1, '2023-05-30 01:00:00', 13.16, 30, 172.44, 53.95, 32.4, 1, 1.01926);
INSERT INTO `weather_forecast` VALUES (403, 1, '2023-05-30 01:00:00', 7.64, 50, 355.68, 37.95, 36.2, 1, 1.00634);
INSERT INTO `weather_forecast` VALUES (404, 1, '2023-05-30 01:00:00', 19.84, 80, 192.96, 19, 28.3, 1, 1.01026);
INSERT INTO `weather_forecast` VALUES (405, 1, '2023-05-30 01:15:00', 23.14, 10, 52.56, 49.65, 36.7, 1, 1.00994);
INSERT INTO `weather_forecast` VALUES (406, 1, '2023-05-30 01:15:00', 6.96, 30, 0.72, 59.15, 29.3, 1, 1.00954);
INSERT INTO `weather_forecast` VALUES (407, 1, '2023-05-30 01:15:00', 8.52, 50, 49.68, 31, 27.6, 1, 1.00204);
INSERT INTO `weather_forecast` VALUES (408, 1, '2023-05-30 01:15:00', 20.66, 80, 77.04, 44.05, 27.9, 1, 1.01028);
INSERT INTO `weather_forecast` VALUES (409, 1, '2023-05-30 01:30:00', 6.28, 10, 232.2, 64.85, 33, 1, 1.00656);
INSERT INTO `weather_forecast` VALUES (410, 1, '2023-05-30 01:30:00', 9.46, 30, 299.52, 15.9, 36.1, 1, 1.01434);
INSERT INTO `weather_forecast` VALUES (411, 1, '2023-05-30 01:30:00', 11.68, 50, 323.64, 53.55, 31.7, 1, 1.00022);
INSERT INTO `weather_forecast` VALUES (412, 1, '2023-05-30 01:30:00', 20.98, 80, 82.44, 41.4, 30.8, 1, 1.0153);
INSERT INTO `weather_forecast` VALUES (413, 1, '2023-05-30 01:45:00', 15, 10, 180.72, 25.9, 35.4, 1, 1.0053);
INSERT INTO `weather_forecast` VALUES (414, 1, '2023-05-30 01:45:00', 24.02, 30, 149.04, 51.65, 28.2, 1, 1.01026);
INSERT INTO `weather_forecast` VALUES (415, 1, '2023-05-30 01:45:00', 9.74, 50, 292.32, 30.3, 35.5, 1, 1.00472);
INSERT INTO `weather_forecast` VALUES (416, 1, '2023-05-30 01:45:00', 18.78, 80, 27, 58.4, 29.5, 1, 1.00474);
INSERT INTO `weather_forecast` VALUES (417, 1, '2023-05-30 02:00:00', 19.92, 10, 197.64, 54.3, 36.1, 1, 1.00204);
INSERT INTO `weather_forecast` VALUES (418, 1, '2023-05-30 02:00:00', 19.22, 30, 282.96, 58.45, 28.8, 1, 1.01032);
INSERT INTO `weather_forecast` VALUES (419, 1, '2023-05-30 02:00:00', 21, 50, 158.4, 22.2, 34.8, 1, 1.00012);
INSERT INTO `weather_forecast` VALUES (420, 1, '2023-05-30 02:00:00', 15.34, 80, 5.04, 57.95, 28.8, 1, 1.00062);
INSERT INTO `weather_forecast` VALUES (421, 1, '2023-05-30 02:15:00', 5.5, 10, 154.08, 57.5, 30.8, 1, 1.00892);
INSERT INTO `weather_forecast` VALUES (422, 1, '2023-05-30 02:15:00', 22.94, 30, 283.68, 42.3, 33.9, 1, 1.01842);
INSERT INTO `weather_forecast` VALUES (423, 1, '2023-05-30 02:15:00', 17.1, 50, 326.52, 55.1, 31.5, 1, 1.0138);
INSERT INTO `weather_forecast` VALUES (424, 1, '2023-05-30 02:15:00', 6.98, 80, 296.64, 46.75, 33.5, 1, 1.00218);
INSERT INTO `weather_forecast` VALUES (425, 1, '2023-05-30 02:30:00', 20.3, 10, 167.4, 33.45, 32.3, 1, 1.01324);
INSERT INTO `weather_forecast` VALUES (426, 1, '2023-05-30 02:30:00', 22.08, 30, 127.44, 59.45, 30.9, 1, 1.01032);
INSERT INTO `weather_forecast` VALUES (427, 1, '2023-05-30 02:30:00', 16.34, 50, 334.44, 62.85, 27, 1, 1.00418);
INSERT INTO `weather_forecast` VALUES (428, 1, '2023-05-30 02:30:00', 18.64, 80, 243.36, 38.95, 32.2, 1, 1.01578);
INSERT INTO `weather_forecast` VALUES (429, 1, '2023-05-30 02:45:00', 18.24, 10, 329.76, 53.55, 34.6, 1, 1.0185);
INSERT INTO `weather_forecast` VALUES (430, 1, '2023-05-30 02:45:00', 6.84, 30, 217.8, 20.05, 31.9, 1, 1.00056);
INSERT INTO `weather_forecast` VALUES (431, 1, '2023-05-30 02:45:00', 9.62, 50, 40.68, 18.65, 36.9, 1, 1.00466);
INSERT INTO `weather_forecast` VALUES (432, 1, '2023-05-30 02:45:00', 21.46, 80, 10.44, 21.4, 36.5, 1, 1.00604);
INSERT INTO `weather_forecast` VALUES (433, 1, '2023-05-30 03:00:00', 6.16, 10, 325.08, 60.35, 33.3, 1, 1.01544);
INSERT INTO `weather_forecast` VALUES (434, 1, '2023-05-30 03:00:00', 21.36, 30, 128.88, 30.95, 34.4, 1, 1.01012);
INSERT INTO `weather_forecast` VALUES (435, 1, '2023-05-30 03:00:00', 10.56, 50, 330.48, 47.95, 30.2, 1, 1.0144);
INSERT INTO `weather_forecast` VALUES (436, 1, '2023-05-30 03:00:00', 9.36, 80, 212.04, 18.1, 29.4, 1, 1.00224);
INSERT INTO `weather_forecast` VALUES (437, 1, '2023-05-30 03:15:00', 12.24, 10, 208.44, 32.5, 30.7, 1, 1.01);
INSERT INTO `weather_forecast` VALUES (438, 1, '2023-05-30 03:15:00', 19.42, 30, 237.6, 24.45, 32, 1, 1.01258);
INSERT INTO `weather_forecast` VALUES (439, 1, '2023-05-30 03:15:00', 14.74, 50, 227.52, 25, 31.3, 1, 1.01704);
INSERT INTO `weather_forecast` VALUES (440, 1, '2023-05-30 03:15:00', 14.04, 80, 253.8, 42.2, 30, 1, 1.0051);
INSERT INTO `weather_forecast` VALUES (441, 1, '2023-05-30 03:30:00', 7.3, 10, 283.68, 49.95, 35.1, 1, 1.01602);
INSERT INTO `weather_forecast` VALUES (442, 1, '2023-05-30 03:30:00', 13.5, 30, 231.48, 24.2, 34.8, 1, 1.0138);
INSERT INTO `weather_forecast` VALUES (443, 1, '2023-05-30 03:30:00', 6.94, 50, 102.6, 39.2, 28.2, 1, 1.00048);
INSERT INTO `weather_forecast` VALUES (444, 1, '2023-05-30 03:30:00', 9.42, 80, 101.88, 56.65, 36.5, 1, 1.00206);
INSERT INTO `weather_forecast` VALUES (445, 1, '2023-05-30 03:45:00', 22.4, 10, 75.96, 42.1, 29.8, 1, 1.00176);
INSERT INTO `weather_forecast` VALUES (446, 1, '2023-05-30 03:45:00', 18.96, 30, 80.64, 34.6, 27.6, 1, 1.00362);
INSERT INTO `weather_forecast` VALUES (447, 1, '2023-05-30 03:45:00', 5.86, 50, 322.2, 46, 29.7, 1, 1.0148);
INSERT INTO `weather_forecast` VALUES (448, 1, '2023-05-30 03:45:00', 20.18, 80, 39.24, 33.15, 27.1, 1, 1.00218);
INSERT INTO `weather_forecast` VALUES (449, 1, '2023-05-30 04:00:00', 15.2, 10, 270.36, 47.65, 31.6, 1, 1.002);
INSERT INTO `weather_forecast` VALUES (450, 1, '2023-05-30 04:00:00', 22.56, 30, 341.64, 44.15, 29.1, 1, 1.00402);
INSERT INTO `weather_forecast` VALUES (451, 1, '2023-05-30 04:00:00', 22.54, 50, 41.4, 21.4, 32.1, 1, 1.01766);
INSERT INTO `weather_forecast` VALUES (452, 1, '2023-05-30 04:00:00', 19.32, 80, 344.16, 58.55, 34.8, 1, 1.00836);
INSERT INTO `weather_forecast` VALUES (453, 1, '2023-05-30 04:15:00', 15.6, 10, 21.96, 47.55, 29.7, 1, 1.00088);
INSERT INTO `weather_forecast` VALUES (454, 1, '2023-05-30 04:15:00', 17.66, 30, 66.24, 44.55, 32.8, 1, 1.00416);
INSERT INTO `weather_forecast` VALUES (455, 1, '2023-05-30 04:15:00', 5.86, 50, 12.6, 63.7, 32.2, 1, 1.00228);
INSERT INTO `weather_forecast` VALUES (456, 1, '2023-05-30 04:15:00', 19.88, 80, 329.76, 24.7, 36.3, 1, 1.01848);
INSERT INTO `weather_forecast` VALUES (457, 1, '2023-05-30 04:30:00', 14.04, 10, 319.68, 15.8, 30, 1, 1.01126);
INSERT INTO `weather_forecast` VALUES (458, 1, '2023-05-30 04:30:00', 20.98, 30, 208.08, 36.7, 29.2, 1, 1.00292);
INSERT INTO `weather_forecast` VALUES (459, 1, '2023-05-30 04:30:00', 21.5, 50, 228.96, 52.8, 30.8, 1, 1.01466);
INSERT INTO `weather_forecast` VALUES (460, 1, '2023-05-30 04:30:00', 20.94, 80, 195.84, 31.4, 29.6, 1, 1.01828);
INSERT INTO `weather_forecast` VALUES (461, 1, '2023-05-30 04:45:00', 23.32, 10, 7.92, 62.85, 30.2, 1, 1.01636);
INSERT INTO `weather_forecast` VALUES (462, 1, '2023-05-30 04:45:00', 22.92, 30, 71.64, 53.3, 35.2, 1, 1.01146);
INSERT INTO `weather_forecast` VALUES (463, 1, '2023-05-30 04:45:00', 11.92, 50, 196.2, 31.4, 33.5, 1, 1.0002);
INSERT INTO `weather_forecast` VALUES (464, 1, '2023-05-30 04:45:00', 6.36, 80, 1.44, 17.15, 31.3, 1, 1.00836);
INSERT INTO `weather_forecast` VALUES (465, 1, '2023-05-30 05:00:00', 14.34, 10, 83.52, 62.5, 35.3, 1, 1.01534);
INSERT INTO `weather_forecast` VALUES (466, 1, '2023-05-30 05:00:00', 8.38, 30, 185.04, 59.65, 35.1, 1, 1.0112);
INSERT INTO `weather_forecast` VALUES (467, 1, '2023-05-30 05:00:00', 6.62, 50, 46.8, 50.55, 32.8, 1, 1.00934);
INSERT INTO `weather_forecast` VALUES (468, 1, '2023-05-30 05:00:00', 9.06, 80, 334.8, 25, 35.2, 1, 1.01094);
INSERT INTO `weather_forecast` VALUES (469, 1, '2023-05-30 05:15:00', 7.46, 10, 237.6, 31.65, 31.8, 1, 1.01396);
INSERT INTO `weather_forecast` VALUES (470, 1, '2023-05-30 05:15:00', 20.28, 30, 37.44, 27.05, 35, 1, 1.00918);
INSERT INTO `weather_forecast` VALUES (471, 1, '2023-05-30 05:15:00', 21.64, 50, 245.16, 16.95, 35.5, 1, 1.01526);
INSERT INTO `weather_forecast` VALUES (472, 1, '2023-05-30 05:15:00', 7.8, 80, 138.6, 18.25, 28.7, 1, 1.01802);
INSERT INTO `weather_forecast` VALUES (473, 1, '2023-05-30 05:30:00', 22.02, 10, 264.6, 52.6, 31, 1, 1.00566);
INSERT INTO `weather_forecast` VALUES (474, 1, '2023-05-30 05:30:00', 19.94, 30, 269.64, 63.45, 28.5, 1, 1.0138);
INSERT INTO `weather_forecast` VALUES (475, 1, '2023-05-30 05:30:00', 24.58, 50, 142.2, 53.65, 29.6, 1, 1.00872);
INSERT INTO `weather_forecast` VALUES (476, 1, '2023-05-30 05:30:00', 20.38, 80, 340.56, 40.65, 30.5, 1, 1.00604);
INSERT INTO `weather_forecast` VALUES (477, 1, '2023-05-30 05:45:00', 11.86, 10, 240.84, 64.5, 28.8, 1, 1.01418);
INSERT INTO `weather_forecast` VALUES (478, 1, '2023-05-30 05:45:00', 11.2, 30, 60.48, 46.55, 34.6, 1, 1.01458);
INSERT INTO `weather_forecast` VALUES (479, 1, '2023-05-30 05:45:00', 17.3, 50, 275.04, 55.6, 35.5, 1, 1.01132);
INSERT INTO `weather_forecast` VALUES (480, 1, '2023-05-30 05:45:00', 13.56, 80, 299.16, 18.85, 30.5, 1, 1.00964);
INSERT INTO `weather_forecast` VALUES (481, 1, '2023-05-30 06:00:00', 17, 10, 267.48, 63.35, 35.1, 1, 1.0016);
INSERT INTO `weather_forecast` VALUES (482, 1, '2023-05-30 06:00:00', 22.66, 30, 237.96, 16.25, 27.6, 1, 1.01212);
INSERT INTO `weather_forecast` VALUES (483, 1, '2023-05-30 06:00:00', 14.52, 50, 262.08, 56.5, 34.4, 1, 1.01874);
INSERT INTO `weather_forecast` VALUES (484, 1, '2023-05-30 06:00:00', 9.4, 80, 211.32, 37.05, 35.3, 1, 1.01282);
INSERT INTO `weather_forecast` VALUES (485, 1, '2023-05-30 06:15:00', 24.12, 10, 32.76, 23.2, 34.1, 1, 1.01716);
INSERT INTO `weather_forecast` VALUES (486, 1, '2023-05-30 06:15:00', 11.38, 30, 285.84, 49.45, 27.8, 1, 1.00966);
INSERT INTO `weather_forecast` VALUES (487, 1, '2023-05-30 06:15:00', 16.7, 50, 3.6, 50, 36.3, 1, 1.01924);
INSERT INTO `weather_forecast` VALUES (488, 1, '2023-05-30 06:15:00', 20.18, 80, 144, 15.15, 27.6, 1, 1.0122);
INSERT INTO `weather_forecast` VALUES (489, 1, '2023-05-30 06:30:00', 18.98, 10, 87.12, 32.2, 36.7, 1, 1.01602);
INSERT INTO `weather_forecast` VALUES (490, 1, '2023-05-30 06:30:00', 21.92, 30, 89.28, 49.6, 29.7, 1, 1.0107);
INSERT INTO `weather_forecast` VALUES (491, 1, '2023-05-30 06:30:00', 18.2, 50, 232.56, 52.3, 30.4, 1, 1.01428);
INSERT INTO `weather_forecast` VALUES (492, 1, '2023-05-30 06:30:00', 20.06, 80, 95.76, 54.75, 28.7, 1, 1.0026);
INSERT INTO `weather_forecast` VALUES (493, 1, '2023-05-30 06:45:00', 20.04, 10, 18, 32.85, 36.3, 1, 1.01164);
INSERT INTO `weather_forecast` VALUES (494, 1, '2023-05-30 06:45:00', 21.18, 30, 255.96, 27.7, 31.8, 1, 1.01744);
INSERT INTO `weather_forecast` VALUES (495, 1, '2023-05-30 06:45:00', 16.12, 50, 179.28, 19.25, 32.3, 1, 1.00726);
INSERT INTO `weather_forecast` VALUES (496, 1, '2023-05-30 06:45:00', 21.44, 80, 186.48, 27.75, 32.5, 1, 1.0027);
INSERT INTO `weather_forecast` VALUES (497, 1, '2023-05-30 07:00:00', 11.58, 10, 75.96, 17.9, 33.2, 1, 1.0173);
INSERT INTO `weather_forecast` VALUES (498, 1, '2023-05-30 07:00:00', 9.64, 30, 117.72, 16.05, 34.2, 1, 1.0033);
INSERT INTO `weather_forecast` VALUES (499, 1, '2023-05-30 07:00:00', 23.8, 50, 272.16, 23.6, 35.4, 1, 1.00746);
INSERT INTO `weather_forecast` VALUES (500, 1, '2023-05-30 07:00:00', 8.38, 80, 357.12, 29.7, 36.3, 1, 1.0043);
INSERT INTO `weather_forecast` VALUES (501, 1, '2023-05-30 07:15:00', 20.14, 10, 208.44, 27.5, 30.9, 1, 1.015);
INSERT INTO `weather_forecast` VALUES (502, 1, '2023-05-30 07:15:00', 7.6, 30, 10.8, 64.7, 27.7, 1, 1.0091);
INSERT INTO `weather_forecast` VALUES (503, 1, '2023-05-30 07:15:00', 7.04, 50, 70.56, 44.05, 32, 1, 1.00024);
INSERT INTO `weather_forecast` VALUES (504, 1, '2023-05-30 07:15:00', 20.1, 80, 50.04, 27.3, 31.1, 1, 1.01554);
INSERT INTO `weather_forecast` VALUES (505, 1, '2023-05-30 07:30:00', 12.94, 10, 262.44, 59.5, 28.1, 1, 1.011);
INSERT INTO `weather_forecast` VALUES (506, 1, '2023-05-30 07:30:00', 19.94, 30, 246.24, 40.15, 27.7, 1, 1.0148);
INSERT INTO `weather_forecast` VALUES (507, 1, '2023-05-30 07:30:00', 22.76, 50, 108.36, 56.5, 29.3, 1, 1.01562);
INSERT INTO `weather_forecast` VALUES (508, 1, '2023-05-30 07:30:00', 22.48, 80, 158.04, 35.65, 31.2, 1, 1.01256);
INSERT INTO `weather_forecast` VALUES (509, 1, '2023-05-30 07:45:00', 19.1, 10, 306.36, 60.35, 31.6, 1, 1.00544);
INSERT INTO `weather_forecast` VALUES (510, 1, '2023-05-30 07:45:00', 21.92, 30, 221.76, 36.85, 30.3, 1, 1.00244);
INSERT INTO `weather_forecast` VALUES (511, 1, '2023-05-30 07:45:00', 5.62, 50, 349.2, 35.75, 27.2, 1, 1.0131);
INSERT INTO `weather_forecast` VALUES (512, 1, '2023-05-30 07:45:00', 15.06, 80, 75.6, 20.05, 27.4, 1, 1.00052);
INSERT INTO `weather_forecast` VALUES (513, 1, '2023-05-30 08:00:00', 9.28, 10, 42.84, 58.3, 31, 1, 1.0035);
INSERT INTO `weather_forecast` VALUES (514, 1, '2023-05-30 08:00:00', 10.34, 30, 121.32, 52.85, 29.4, 1, 1.0102);
INSERT INTO `weather_forecast` VALUES (515, 1, '2023-05-30 08:00:00', 9.68, 50, 107.28, 27.25, 35.3, 1, 1.006);
INSERT INTO `weather_forecast` VALUES (516, 1, '2023-05-30 08:00:00', 9.1, 80, 209.16, 44.15, 34.2, 1, 1.01108);
INSERT INTO `weather_forecast` VALUES (517, 1, '2023-05-30 08:15:00', 12.04, 10, 348.48, 21.3, 30.3, 1, 1.0092);
INSERT INTO `weather_forecast` VALUES (518, 1, '2023-05-30 08:15:00', 16.36, 30, 48.24, 60.55, 27.2, 1, 1.00752);
INSERT INTO `weather_forecast` VALUES (519, 1, '2023-05-30 08:15:00', 17.5, 50, 175.32, 24.1, 27.2, 1, 1.01862);
INSERT INTO `weather_forecast` VALUES (520, 1, '2023-05-30 08:15:00', 7.9, 80, 90.72, 54.25, 30.1, 1, 1.00742);
INSERT INTO `weather_forecast` VALUES (521, 1, '2023-05-30 08:30:00', 20.58, 10, 11.52, 32.3, 29.4, 1, 1.01176);
INSERT INTO `weather_forecast` VALUES (522, 1, '2023-05-30 08:30:00', 9.46, 30, 77.04, 30.3, 33.7, 1, 1.01898);
INSERT INTO `weather_forecast` VALUES (523, 1, '2023-05-30 08:30:00', 17.3, 50, 325.44, 18.8, 33.8, 1, 1.0079);
INSERT INTO `weather_forecast` VALUES (524, 1, '2023-05-30 08:30:00', 13.62, 80, 43.56, 48.2, 27.3, 1, 1.0006);
INSERT INTO `weather_forecast` VALUES (525, 1, '2023-05-30 08:45:00', 16.82, 10, 303.48, 57.1, 33.7, 1, 1.0154);
INSERT INTO `weather_forecast` VALUES (526, 1, '2023-05-30 08:45:00', 8.54, 30, 192.6, 50.55, 28.3, 1, 1.00506);
INSERT INTO `weather_forecast` VALUES (527, 1, '2023-05-30 08:45:00', 11.2, 50, 96.84, 31.9, 33.2, 1, 1.01422);
INSERT INTO `weather_forecast` VALUES (528, 1, '2023-05-30 08:45:00', 5.78, 80, 90.36, 20.65, 32.4, 1, 1.01544);
INSERT INTO `weather_forecast` VALUES (529, 1, '2023-05-30 09:00:00', 6.48, 10, 100.8, 36.6, 30.9, 1, 1.00914);
INSERT INTO `weather_forecast` VALUES (530, 1, '2023-05-30 09:00:00', 11.72, 30, 187.56, 50.35, 32.4, 1, 1.01618);
INSERT INTO `weather_forecast` VALUES (531, 1, '2023-05-30 09:00:00', 7.54, 50, 84.24, 61.75, 34.2, 1, 1.01492);
INSERT INTO `weather_forecast` VALUES (532, 1, '2023-05-30 09:00:00', 11.52, 80, 51.12, 26.7, 29.2, 1, 1.00034);
INSERT INTO `weather_forecast` VALUES (533, 1, '2023-05-30 09:15:00', 13.54, 10, 236.88, 15.3, 36.7, 1, 1.01312);
INSERT INTO `weather_forecast` VALUES (534, 1, '2023-05-30 09:15:00', 24.24, 30, 234, 20.15, 36.3, 1, 1.01198);
INSERT INTO `weather_forecast` VALUES (535, 1, '2023-05-30 09:15:00', 14.74, 50, 244.8, 27.1, 36.3, 1, 1.00416);
INSERT INTO `weather_forecast` VALUES (536, 1, '2023-05-30 09:15:00', 6.92, 80, 215.28, 64.65, 31.7, 1, 1.01018);
INSERT INTO `weather_forecast` VALUES (537, 1, '2023-05-30 09:30:00', 7.78, 10, 29.16, 45.5, 31, 1, 1.0116);
INSERT INTO `weather_forecast` VALUES (538, 1, '2023-05-30 09:30:00', 23.62, 30, 8.28, 47.4, 28, 1, 1.01412);
INSERT INTO `weather_forecast` VALUES (539, 1, '2023-05-30 09:30:00', 17.64, 50, 322.92, 59.9, 30.4, 1, 1.0044);
INSERT INTO `weather_forecast` VALUES (540, 1, '2023-05-30 09:30:00', 15.3, 80, 331.92, 62.05, 27.9, 1, 1);
INSERT INTO `weather_forecast` VALUES (541, 1, '2023-05-30 09:45:00', 7.82, 10, 208.44, 51.1, 28.8, 1, 1.01598);
INSERT INTO `weather_forecast` VALUES (542, 1, '2023-05-30 09:45:00', 12.74, 30, 168.12, 55.25, 36.9, 1, 1.0001);
INSERT INTO `weather_forecast` VALUES (543, 1, '2023-05-30 09:45:00', 17.66, 50, 61.56, 55.1, 27.9, 1, 1.01726);
INSERT INTO `weather_forecast` VALUES (544, 1, '2023-05-30 09:45:00', 12.56, 80, 227.52, 56.55, 32.9, 1, 1.0043);
INSERT INTO `weather_forecast` VALUES (545, 1, '2023-05-30 10:00:00', 18.8, 10, 323.64, 45.45, 29.5, 1, 1.00102);
INSERT INTO `weather_forecast` VALUES (546, 1, '2023-05-30 10:00:00', 14.16, 30, 50.4, 54.45, 29, 1, 1.00672);
INSERT INTO `weather_forecast` VALUES (547, 1, '2023-05-30 10:00:00', 9.84, 50, 79.92, 21.1, 34.8, 1, 1.00628);
INSERT INTO `weather_forecast` VALUES (548, 1, '2023-05-30 10:00:00', 18.18, 80, 111.24, 47.75, 34.6, 1, 1.00378);
INSERT INTO `weather_forecast` VALUES (549, 1, '2023-05-30 10:15:00', 12.76, 10, 29.52, 30.6, 27.6, 1, 1.0197);
INSERT INTO `weather_forecast` VALUES (550, 1, '2023-05-30 10:15:00', 24.56, 30, 25.2, 45.5, 36.4, 1, 1.0103);
INSERT INTO `weather_forecast` VALUES (551, 1, '2023-05-30 10:15:00', 19.98, 50, 150.84, 55.1, 28.1, 1, 1.01676);
INSERT INTO `weather_forecast` VALUES (552, 1, '2023-05-30 10:15:00', 20.72, 80, 83.52, 51.45, 36.6, 1, 1.00194);
INSERT INTO `weather_forecast` VALUES (553, 1, '2023-05-30 10:30:00', 9.22, 10, 155.88, 44.15, 33.7, 1, 1.00744);
INSERT INTO `weather_forecast` VALUES (554, 1, '2023-05-30 10:30:00', 5.92, 30, 83.16, 30.7, 36, 1, 1.00934);
INSERT INTO `weather_forecast` VALUES (555, 1, '2023-05-30 10:30:00', 22.92, 50, 60.48, 60.85, 30.9, 1, 1.01858);
INSERT INTO `weather_forecast` VALUES (556, 1, '2023-05-30 10:30:00', 7.38, 80, 334.44, 44.25, 32.6, 1, 1.01618);
INSERT INTO `weather_forecast` VALUES (557, 1, '2023-05-30 10:45:00', 11.26, 10, 0.36, 55.15, 30.2, 1, 1.0031);
INSERT INTO `weather_forecast` VALUES (558, 1, '2023-05-30 10:45:00', 17, 30, 287.28, 29.45, 31.9, 1, 1.0189);
INSERT INTO `weather_forecast` VALUES (559, 1, '2023-05-30 10:45:00', 20.86, 50, 255.24, 53.2, 31.4, 1, 1.0083);
INSERT INTO `weather_forecast` VALUES (560, 1, '2023-05-30 10:45:00', 7.3, 80, 153.72, 60.25, 30.6, 1, 1.00086);
INSERT INTO `weather_forecast` VALUES (561, 1, '2023-05-30 11:00:00', 9.46, 10, 84.24, 57, 36.7, 1, 1.01082);
INSERT INTO `weather_forecast` VALUES (562, 1, '2023-05-30 11:00:00', 24.12, 30, 96.12, 23.25, 28.5, 1, 1.01402);
INSERT INTO `weather_forecast` VALUES (563, 1, '2023-05-30 11:00:00', 8.62, 50, 20.16, 31.4, 31.8, 1, 1.00038);
INSERT INTO `weather_forecast` VALUES (564, 1, '2023-05-30 11:00:00', 23, 80, 119.16, 58.75, 28.9, 1, 1.0001);
INSERT INTO `weather_forecast` VALUES (565, 1, '2023-05-30 11:15:00', 14.9, 10, 45.72, 54.15, 35.9, 1, 1.00518);
INSERT INTO `weather_forecast` VALUES (566, 1, '2023-05-30 11:15:00', 14, 30, 133.2, 50.85, 33.5, 1, 1.01186);
INSERT INTO `weather_forecast` VALUES (567, 1, '2023-05-30 11:15:00', 20.46, 50, 60.48, 40.75, 36.7, 1, 1.01432);
INSERT INTO `weather_forecast` VALUES (568, 1, '2023-05-30 11:15:00', 17.28, 80, 195.48, 56.55, 35.6, 1, 1.01262);
INSERT INTO `weather_forecast` VALUES (569, 1, '2023-05-30 11:30:00', 11.32, 10, 51.48, 61.65, 32.1, 1, 1.00282);
INSERT INTO `weather_forecast` VALUES (570, 1, '2023-05-30 11:30:00', 23.76, 30, 160.56, 61.1, 35.9, 1, 1.01524);
INSERT INTO `weather_forecast` VALUES (571, 1, '2023-05-30 11:30:00', 11.52, 50, 290.16, 39.8, 34.9, 1, 1.00052);
INSERT INTO `weather_forecast` VALUES (572, 1, '2023-05-30 11:30:00', 18.5, 80, 266.76, 53.35, 29.8, 1, 1.0076);
INSERT INTO `weather_forecast` VALUES (573, 1, '2023-05-30 11:45:00', 23.96, 10, 213.84, 52.4, 28.4, 1, 1.01872);
INSERT INTO `weather_forecast` VALUES (574, 1, '2023-05-30 11:45:00', 20.38, 30, 10.44, 23.15, 27.9, 1, 1.00126);
INSERT INTO `weather_forecast` VALUES (575, 1, '2023-05-30 11:45:00', 18.02, 50, 76.68, 58.4, 34.4, 1, 1.00494);
INSERT INTO `weather_forecast` VALUES (576, 1, '2023-05-30 11:45:00', 12.02, 80, 70.2, 56.85, 32.8, 1, 1.01854);
INSERT INTO `weather_forecast` VALUES (577, 1, '2023-05-30 12:00:00', 17.2, 10, 149.04, 24, 32.3, 1, 1.01792);
INSERT INTO `weather_forecast` VALUES (578, 1, '2023-05-30 12:00:00', 5.3, 30, 58.68, 33.2, 33.3, 1, 1.00786);
INSERT INTO `weather_forecast` VALUES (579, 1, '2023-05-30 12:00:00', 6.4, 50, 261, 34.6, 32.4, 1, 1.0008);
INSERT INTO `weather_forecast` VALUES (580, 1, '2023-05-30 12:00:00', 20.36, 80, 251.28, 48.1, 28.2, 1, 1.01052);
INSERT INTO `weather_forecast` VALUES (581, 1, '2023-05-30 12:15:00', 14.74, 10, 212.4, 43.1, 33.4, 1, 1.01326);
INSERT INTO `weather_forecast` VALUES (582, 1, '2023-05-30 12:15:00', 7.4, 30, 177.12, 58.1, 31.1, 1, 1.01974);
INSERT INTO `weather_forecast` VALUES (583, 1, '2023-05-30 12:15:00', 24.96, 50, 91.44, 61.75, 33.1, 1, 1.0006);
INSERT INTO `weather_forecast` VALUES (584, 1, '2023-05-30 12:15:00', 10.42, 80, 320.76, 33.25, 35.9, 1, 1.01966);
INSERT INTO `weather_forecast` VALUES (585, 1, '2023-05-30 12:30:00', 13.48, 10, 260.64, 38.85, 29.7, 1, 1.0092);
INSERT INTO `weather_forecast` VALUES (586, 1, '2023-05-30 12:30:00', 8.32, 30, 162.72, 23.8, 35.7, 1, 1.00602);
INSERT INTO `weather_forecast` VALUES (587, 1, '2023-05-30 12:30:00', 11.58, 50, 162, 28.45, 27.8, 1, 1.01122);
INSERT INTO `weather_forecast` VALUES (588, 1, '2023-05-30 12:30:00', 10, 80, 339.12, 48.75, 33.9, 1, 1.01628);
INSERT INTO `weather_forecast` VALUES (589, 1, '2023-05-30 12:45:00', 13.1, 10, 175.32, 44.85, 35.6, 1, 1.00908);
INSERT INTO `weather_forecast` VALUES (590, 1, '2023-05-30 12:45:00', 8.08, 30, 316.44, 36, 31.1, 1, 1.00884);
INSERT INTO `weather_forecast` VALUES (591, 1, '2023-05-30 12:45:00', 10.8, 50, 119.52, 49.85, 29.1, 1, 1.00766);
INSERT INTO `weather_forecast` VALUES (592, 1, '2023-05-30 12:45:00', 10.48, 80, 155.88, 22.5, 28.1, 1, 1.00448);
INSERT INTO `weather_forecast` VALUES (593, 1, '2023-05-30 13:00:00', 23.9, 10, 86.4, 41.2, 31.8, 1, 1.0006);
INSERT INTO `weather_forecast` VALUES (594, 1, '2023-05-30 13:00:00', 10.6, 30, 217.44, 15.3, 27.7, 1, 1.0086);
INSERT INTO `weather_forecast` VALUES (595, 1, '2023-05-30 13:00:00', 6.04, 50, 303.48, 15.45, 35.2, 1, 1.01616);
INSERT INTO `weather_forecast` VALUES (596, 1, '2023-05-30 13:00:00', 9.16, 80, 195.12, 38, 29, 1, 1.0064);
INSERT INTO `weather_forecast` VALUES (597, 1, '2023-05-30 13:15:00', 13.92, 10, 50.4, 61.4, 29.8, 1, 1.00822);
INSERT INTO `weather_forecast` VALUES (598, 1, '2023-05-30 13:15:00', 12.62, 30, 129.96, 60.85, 33.5, 1, 1.01944);
INSERT INTO `weather_forecast` VALUES (599, 1, '2023-05-30 13:15:00', 18.78, 50, 4.68, 43.15, 36.6, 1, 1.0083);
INSERT INTO `weather_forecast` VALUES (600, 1, '2023-05-30 13:15:00', 22.52, 80, 247.68, 32.6, 36.4, 1, 1.0154);
INSERT INTO `weather_forecast` VALUES (601, 1, '2023-05-30 13:30:00', 22.06, 10, 278.64, 47.7, 28.8, 1, 1.01646);
INSERT INTO `weather_forecast` VALUES (602, 1, '2023-05-30 13:30:00', 18.16, 30, 111.96, 48.95, 27.8, 1, 1.01706);
INSERT INTO `weather_forecast` VALUES (603, 1, '2023-05-30 13:30:00', 23.1, 50, 33.84, 21.2, 33.6, 1, 1.00536);
INSERT INTO `weather_forecast` VALUES (604, 1, '2023-05-30 13:30:00', 18.48, 80, 206.64, 63.1, 35.4, 1, 1.00712);
INSERT INTO `weather_forecast` VALUES (605, 1, '2023-05-30 13:45:00', 6.66, 10, 352.8, 23.5, 30.2, 1, 1.009);
INSERT INTO `weather_forecast` VALUES (606, 1, '2023-05-30 13:45:00', 17.34, 30, 235.44, 43.35, 32.9, 1, 1.00086);
INSERT INTO `weather_forecast` VALUES (607, 1, '2023-05-30 13:45:00', 9.84, 50, 213.48, 51.7, 30.3, 1, 1.00664);
INSERT INTO `weather_forecast` VALUES (608, 1, '2023-05-30 13:45:00', 8.16, 80, 171, 32.15, 32.4, 1, 1.0011);
INSERT INTO `weather_forecast` VALUES (609, 1, '2023-05-30 14:00:00', 16.66, 10, 262.08, 59.05, 27.2, 1, 1.01946);
INSERT INTO `weather_forecast` VALUES (610, 1, '2023-05-30 14:00:00', 18.66, 30, 278.28, 55.65, 27.4, 1, 1.01854);
INSERT INTO `weather_forecast` VALUES (611, 1, '2023-05-30 14:00:00', 6.78, 50, 338.4, 25.5, 34, 1, 1.00304);
INSERT INTO `weather_forecast` VALUES (612, 1, '2023-05-30 14:00:00', 5.12, 80, 280.44, 30.95, 34.8, 1, 1.0003);
INSERT INTO `weather_forecast` VALUES (613, 1, '2023-05-30 14:15:00', 17.66, 10, 309.24, 58.9, 28.5, 1, 1.00188);
INSERT INTO `weather_forecast` VALUES (614, 1, '2023-05-30 14:15:00', 14.04, 30, 308.16, 56.6, 28.4, 1, 1.00758);
INSERT INTO `weather_forecast` VALUES (615, 1, '2023-05-30 14:15:00', 17.7, 50, 74.88, 19.8, 33, 1, 1.0157);
INSERT INTO `weather_forecast` VALUES (616, 1, '2023-05-30 14:15:00', 24.24, 80, 88.56, 43.65, 27.3, 1, 1.01608);
INSERT INTO `weather_forecast` VALUES (617, 1, '2023-05-30 14:30:00', 20.94, 10, 185.4, 56.25, 28.9, 1, 1.00202);
INSERT INTO `weather_forecast` VALUES (618, 1, '2023-05-30 14:30:00', 22.72, 30, 38.16, 54.45, 33, 1, 1.0043);
INSERT INTO `weather_forecast` VALUES (619, 1, '2023-05-30 14:30:00', 14.34, 50, 29.16, 20.9, 29.9, 1, 1.00172);
INSERT INTO `weather_forecast` VALUES (620, 1, '2023-05-30 14:30:00', 20.54, 80, 268.92, 31.25, 33.6, 1, 1.01904);
INSERT INTO `weather_forecast` VALUES (621, 1, '2023-05-30 14:45:00', 6.46, 10, 162.36, 59.5, 36, 1, 1.0128);
INSERT INTO `weather_forecast` VALUES (622, 1, '2023-05-30 14:45:00', 24.48, 30, 353.16, 57.35, 34.2, 1, 1.00126);
INSERT INTO `weather_forecast` VALUES (623, 1, '2023-05-30 14:45:00', 5.32, 50, 144.72, 29.7, 27.7, 1, 1.00976);
INSERT INTO `weather_forecast` VALUES (624, 1, '2023-05-30 14:45:00', 13.52, 80, 70.56, 52.65, 27.5, 1, 1.0054);
INSERT INTO `weather_forecast` VALUES (625, 1, '2023-05-30 15:00:00', 15.32, 10, 50.04, 46.4, 27.9, 1, 1.01726);
INSERT INTO `weather_forecast` VALUES (626, 1, '2023-05-30 15:00:00', 13.54, 30, 285.84, 52.75, 35.1, 1, 1.01314);
INSERT INTO `weather_forecast` VALUES (627, 1, '2023-05-30 15:00:00', 14.86, 50, 259.56, 59.15, 35.2, 1, 1.01422);
INSERT INTO `weather_forecast` VALUES (628, 1, '2023-05-30 15:00:00', 15.48, 80, 215.28, 21.1, 31.7, 1, 1.0088);
INSERT INTO `weather_forecast` VALUES (629, 1, '2023-05-30 15:15:00', 17.16, 10, 62.28, 25.75, 36.8, 1, 1.01148);
INSERT INTO `weather_forecast` VALUES (630, 1, '2023-05-30 15:15:00', 18.22, 30, 302.76, 49.1, 34.9, 1, 1.01956);
INSERT INTO `weather_forecast` VALUES (631, 1, '2023-05-30 15:15:00', 7.94, 50, 187.2, 55.75, 29, 1, 1.00254);
INSERT INTO `weather_forecast` VALUES (632, 1, '2023-05-30 15:15:00', 15.96, 80, 128.88, 21.9, 29.7, 1, 1.00626);
INSERT INTO `weather_forecast` VALUES (633, 1, '2023-05-30 15:30:00', 9.2, 10, 175.32, 50.9, 33.6, 1, 1.00304);
INSERT INTO `weather_forecast` VALUES (634, 1, '2023-05-30 15:30:00', 19.92, 30, 351.36, 34, 33.6, 1, 1.01658);
INSERT INTO `weather_forecast` VALUES (635, 1, '2023-05-30 15:30:00', 11.92, 50, 99.36, 41.65, 34.7, 1, 1.00828);
INSERT INTO `weather_forecast` VALUES (636, 1, '2023-05-30 15:30:00', 20.44, 80, 330.12, 41, 29.5, 1, 1.00848);
INSERT INTO `weather_forecast` VALUES (637, 1, '2023-05-30 15:45:00', 7.36, 10, 232.2, 34.05, 27.7, 1, 1.01914);
INSERT INTO `weather_forecast` VALUES (638, 1, '2023-05-30 15:45:00', 7.02, 30, 216.36, 36.05, 27.6, 1, 1.0007);
INSERT INTO `weather_forecast` VALUES (639, 1, '2023-05-30 15:45:00', 12, 50, 232.56, 36.15, 30.9, 1, 1.00898);
INSERT INTO `weather_forecast` VALUES (640, 1, '2023-05-30 15:45:00', 10.92, 80, 279.36, 28, 34.3, 1, 1.01944);
INSERT INTO `weather_forecast` VALUES (641, 1, '2023-05-30 16:00:00', 10.3, 10, 338.76, 49.5, 27.4, 1, 1.00868);
INSERT INTO `weather_forecast` VALUES (642, 1, '2023-05-30 16:00:00', 20.62, 30, 115.56, 55.25, 33.1, 1, 1.01364);
INSERT INTO `weather_forecast` VALUES (643, 1, '2023-05-30 16:00:00', 19.36, 50, 60.84, 22.4, 33.9, 1, 1.01506);
INSERT INTO `weather_forecast` VALUES (644, 1, '2023-05-30 16:00:00', 8.1, 80, 338.4, 33.6, 35.1, 1, 1.00638);
INSERT INTO `weather_forecast` VALUES (645, 1, '2023-05-30 16:15:00', 19.28, 10, 156.24, 31.45, 29.6, 1, 1.00206);
INSERT INTO `weather_forecast` VALUES (646, 1, '2023-05-30 16:15:00', 19.98, 30, 256.68, 20.5, 35.3, 1, 1.0153);
INSERT INTO `weather_forecast` VALUES (647, 1, '2023-05-30 16:15:00', 19.48, 50, 294.84, 31.95, 29.4, 1, 1.00552);
INSERT INTO `weather_forecast` VALUES (648, 1, '2023-05-30 16:15:00', 19.52, 80, 191.88, 35.5, 29.7, 1, 1.0091);
INSERT INTO `weather_forecast` VALUES (649, 1, '2023-05-30 16:30:00', 10.84, 10, 209.16, 52.8, 35.8, 1, 1.01358);
INSERT INTO `weather_forecast` VALUES (650, 1, '2023-05-30 16:30:00', 6.12, 30, 148.32, 32.45, 34.6, 1, 1.01642);
INSERT INTO `weather_forecast` VALUES (651, 1, '2023-05-30 16:30:00', 10.38, 50, 88.2, 40.25, 29.3, 1, 1.01542);
INSERT INTO `weather_forecast` VALUES (652, 1, '2023-05-30 16:30:00', 24.1, 80, 334.08, 46.75, 30, 1, 1.0192);
INSERT INTO `weather_forecast` VALUES (653, 1, '2023-05-30 16:45:00', 8.7, 10, 281.88, 60.25, 35.9, 1, 1.00628);
INSERT INTO `weather_forecast` VALUES (654, 1, '2023-05-30 16:45:00', 8.38, 30, 100.8, 32.6, 36.2, 1, 1.01882);
INSERT INTO `weather_forecast` VALUES (655, 1, '2023-05-30 16:45:00', 10.88, 50, 62.64, 47.05, 31.9, 1, 1.01502);
INSERT INTO `weather_forecast` VALUES (656, 1, '2023-05-30 16:45:00', 22.44, 80, 322.2, 55.35, 29, 1, 1.00104);
INSERT INTO `weather_forecast` VALUES (657, 1, '2023-05-30 17:00:00', 15.22, 10, 241.2, 15.3, 36, 1, 1.01108);
INSERT INTO `weather_forecast` VALUES (658, 1, '2023-05-30 17:00:00', 10.62, 30, 69.84, 56.5, 36.5, 1, 1.0154);
INSERT INTO `weather_forecast` VALUES (659, 1, '2023-05-30 17:00:00', 18.56, 50, 251.28, 47.95, 36, 1, 1.01444);
INSERT INTO `weather_forecast` VALUES (660, 1, '2023-05-30 17:00:00', 12.04, 80, 288.72, 64.85, 27.6, 1, 1.01682);
INSERT INTO `weather_forecast` VALUES (661, 1, '2023-05-30 17:15:00', 9.02, 10, 116.28, 22.15, 27.7, 1, 1.0116);
INSERT INTO `weather_forecast` VALUES (662, 1, '2023-05-30 17:15:00', 21.06, 30, 60.48, 30.9, 34.2, 1, 1.0064);
INSERT INTO `weather_forecast` VALUES (663, 1, '2023-05-30 17:15:00', 9.54, 50, 340.56, 23.2, 28.1, 1, 1.01448);
INSERT INTO `weather_forecast` VALUES (664, 1, '2023-05-30 17:15:00', 5.56, 80, 175.32, 46.8, 27.4, 1, 1.006);
INSERT INTO `weather_forecast` VALUES (665, 1, '2023-05-30 17:30:00', 6.92, 10, 132.84, 57.15, 32.5, 1, 1.01908);
INSERT INTO `weather_forecast` VALUES (666, 1, '2023-05-30 17:30:00', 7.66, 30, 168.12, 25.55, 34.6, 1, 1.00412);
INSERT INTO `weather_forecast` VALUES (667, 1, '2023-05-30 17:30:00', 5.64, 50, 161.64, 25.6, 32.3, 1, 1.00172);
INSERT INTO `weather_forecast` VALUES (668, 1, '2023-05-30 17:30:00', 21.98, 80, 259.92, 59.6, 30.2, 1, 1.01678);
INSERT INTO `weather_forecast` VALUES (669, 1, '2023-05-30 17:45:00', 8.3, 10, 68.4, 26.9, 29.1, 1, 1.01932);
INSERT INTO `weather_forecast` VALUES (670, 1, '2023-05-30 17:45:00', 14.18, 30, 127.8, 44.9, 33.4, 1, 1.0055);
INSERT INTO `weather_forecast` VALUES (671, 1, '2023-05-30 17:45:00', 12.82, 50, 123.48, 20.8, 31.4, 1, 1.00832);
INSERT INTO `weather_forecast` VALUES (672, 1, '2023-05-30 17:45:00', 11.06, 80, 190.8, 37.6, 32, 1, 1.01732);
INSERT INTO `weather_forecast` VALUES (673, 1, '2023-05-30 18:00:00', 16.48, 10, 230.76, 59.75, 30.2, 1, 1.01188);
INSERT INTO `weather_forecast` VALUES (674, 1, '2023-05-30 18:00:00', 9.1, 30, 348.84, 25.65, 34.5, 1, 1.00816);
INSERT INTO `weather_forecast` VALUES (675, 1, '2023-05-30 18:00:00', 22.52, 50, 173.16, 22.65, 33, 1, 1.00672);
INSERT INTO `weather_forecast` VALUES (676, 1, '2023-05-30 18:00:00', 20.36, 80, 334.8, 54.15, 29.3, 1, 1.01516);
INSERT INTO `weather_forecast` VALUES (677, 1, '2023-05-30 18:15:00', 12.22, 10, 22.68, 16.55, 28.3, 1, 1.008);
INSERT INTO `weather_forecast` VALUES (678, 1, '2023-05-30 18:15:00', 10.2, 30, 214.92, 24, 30.7, 1, 1.01056);
INSERT INTO `weather_forecast` VALUES (679, 1, '2023-05-30 18:15:00', 17.28, 50, 108, 25.05, 31, 1, 1.01338);
INSERT INTO `weather_forecast` VALUES (680, 1, '2023-05-30 18:15:00', 5.98, 80, 97.56, 62.7, 28.4, 1, 1.01896);
INSERT INTO `weather_forecast` VALUES (681, 1, '2023-05-30 18:30:00', 5.52, 10, 338.76, 42.15, 36.2, 1, 1.00698);
INSERT INTO `weather_forecast` VALUES (682, 1, '2023-05-30 18:30:00', 11.7, 30, 194.76, 25.4, 29, 1, 1.0009);
INSERT INTO `weather_forecast` VALUES (683, 1, '2023-05-30 18:30:00', 22.54, 50, 145.44, 28, 36.3, 1, 1.00168);
INSERT INTO `weather_forecast` VALUES (684, 1, '2023-05-30 18:30:00', 9.76, 80, 32.04, 26.85, 32, 1, 1.0117);
INSERT INTO `weather_forecast` VALUES (685, 1, '2023-05-30 18:45:00', 11.04, 10, 239.4, 40.1, 34, 1, 1.00786);
INSERT INTO `weather_forecast` VALUES (686, 1, '2023-05-30 18:45:00', 24.94, 30, 145.08, 52.15, 34.9, 1, 1.0054);
INSERT INTO `weather_forecast` VALUES (687, 1, '2023-05-30 18:45:00', 10.1, 50, 278.28, 30.75, 34.9, 1, 1.00644);
INSERT INTO `weather_forecast` VALUES (688, 1, '2023-05-30 18:45:00', 15.46, 80, 213.84, 22.7, 31, 1, 1.00114);
INSERT INTO `weather_forecast` VALUES (689, 1, '2023-05-30 19:00:00', 23.54, 10, 48.24, 27, 34.1, 1, 1.00058);
INSERT INTO `weather_forecast` VALUES (690, 1, '2023-05-30 19:00:00', 16.34, 30, 239.4, 30.8, 31.3, 1, 1.00262);
INSERT INTO `weather_forecast` VALUES (691, 1, '2023-05-30 19:00:00', 6.08, 50, 242.64, 17.95, 31.1, 1, 1.00528);
INSERT INTO `weather_forecast` VALUES (692, 1, '2023-05-30 19:00:00', 20.88, 80, 214.2, 43.4, 29.7, 1, 1.00974);
INSERT INTO `weather_forecast` VALUES (693, 1, '2023-05-30 19:15:00', 21.24, 10, 184.32, 28.15, 36.7, 1, 1.0012);
INSERT INTO `weather_forecast` VALUES (694, 1, '2023-05-30 19:15:00', 10.9, 30, 242.64, 64.7, 30.6, 1, 1.01248);
INSERT INTO `weather_forecast` VALUES (695, 1, '2023-05-30 19:15:00', 20.52, 50, 112.32, 32.5, 33.9, 1, 1.00098);
INSERT INTO `weather_forecast` VALUES (696, 1, '2023-05-30 19:15:00', 11.2, 80, 267.12, 20.1, 35.2, 1, 1.01726);
INSERT INTO `weather_forecast` VALUES (697, 1, '2023-05-30 19:30:00', 21.1, 10, 22.68, 51.3, 29, 1, 1.00922);
INSERT INTO `weather_forecast` VALUES (698, 1, '2023-05-30 19:30:00', 22.98, 30, 75.24, 34.15, 34.2, 1, 1.00492);
INSERT INTO `weather_forecast` VALUES (699, 1, '2023-05-30 19:30:00', 10.1, 50, 326.16, 43, 36.8, 1, 1.01358);
INSERT INTO `weather_forecast` VALUES (700, 1, '2023-05-30 19:30:00', 5.76, 80, 357.48, 21.9, 36, 1, 1.01756);
INSERT INTO `weather_forecast` VALUES (701, 1, '2023-05-30 19:45:00', 5.02, 10, 252.72, 48.85, 27.8, 1, 1.01224);
INSERT INTO `weather_forecast` VALUES (702, 1, '2023-05-30 19:45:00', 19.08, 30, 306.36, 31.25, 34.8, 1, 1.01748);
INSERT INTO `weather_forecast` VALUES (703, 1, '2023-05-30 19:45:00', 22.22, 50, 191.52, 50.3, 35.4, 1, 1.01354);
INSERT INTO `weather_forecast` VALUES (704, 1, '2023-05-30 19:45:00', 16.32, 80, 312.48, 48.55, 28.1, 1, 1.01206);
INSERT INTO `weather_forecast` VALUES (705, 1, '2023-05-30 20:00:00', 19.12, 10, 65.52, 64.25, 35, 1, 1.00818);
INSERT INTO `weather_forecast` VALUES (706, 1, '2023-05-30 20:00:00', 23.06, 30, 318.96, 43.2, 28.7, 1, 1.01224);
INSERT INTO `weather_forecast` VALUES (707, 1, '2023-05-30 20:00:00', 8.5, 50, 273.96, 57.8, 29.2, 1, 1.01784);
INSERT INTO `weather_forecast` VALUES (708, 1, '2023-05-30 20:00:00', 14.22, 80, 132.48, 38.2, 36.1, 1, 1.01514);
INSERT INTO `weather_forecast` VALUES (709, 1, '2023-05-30 20:15:00', 12.06, 10, 330.84, 19.15, 27.8, 1, 1.01674);
INSERT INTO `weather_forecast` VALUES (710, 1, '2023-05-30 20:15:00', 12.58, 30, 76.68, 50.45, 31.2, 1, 1.00242);
INSERT INTO `weather_forecast` VALUES (711, 1, '2023-05-30 20:15:00', 6.18, 50, 0.72, 62.7, 32.3, 1, 1.01054);
INSERT INTO `weather_forecast` VALUES (712, 1, '2023-05-30 20:15:00', 21.62, 80, 127.8, 61.7, 33.2, 1, 1.00286);
INSERT INTO `weather_forecast` VALUES (713, 1, '2023-05-30 20:30:00', 18.06, 10, 348.84, 64.05, 29.2, 1, 1.00752);
INSERT INTO `weather_forecast` VALUES (714, 1, '2023-05-30 20:30:00', 21.86, 30, 116.64, 45.4, 27.7, 1, 1.019);
INSERT INTO `weather_forecast` VALUES (715, 1, '2023-05-30 20:30:00', 22.82, 50, 342, 54.25, 31.1, 1, 1.00232);
INSERT INTO `weather_forecast` VALUES (716, 1, '2023-05-30 20:30:00', 6.54, 80, 273.96, 27.7, 35, 1, 1.01662);
INSERT INTO `weather_forecast` VALUES (717, 1, '2023-05-30 20:45:00', 12.98, 10, 25.92, 44.7, 35.2, 1, 1.00314);
INSERT INTO `weather_forecast` VALUES (718, 1, '2023-05-30 20:45:00', 22.78, 30, 45.72, 37.1, 35.7, 1, 1.00904);
INSERT INTO `weather_forecast` VALUES (719, 1, '2023-05-30 20:45:00', 17.94, 50, 183.96, 34.3, 28.9, 1, 1.00996);
INSERT INTO `weather_forecast` VALUES (720, 1, '2023-05-30 20:45:00', 18.8, 80, 286.92, 45.1, 27.2, 1, 1.01034);
INSERT INTO `weather_forecast` VALUES (721, 1, '2023-05-30 21:00:00', 24.98, 10, 306, 30.8, 31, 1, 1.01548);
INSERT INTO `weather_forecast` VALUES (722, 1, '2023-05-30 21:00:00', 5.14, 30, 267.48, 26.55, 34, 1, 1.01298);
INSERT INTO `weather_forecast` VALUES (723, 1, '2023-05-30 21:00:00', 11.06, 50, 99.36, 20.9, 35.7, 1, 1.0107);
INSERT INTO `weather_forecast` VALUES (724, 1, '2023-05-30 21:00:00', 23.22, 80, 17.64, 46.15, 34.7, 1, 1.00118);
INSERT INTO `weather_forecast` VALUES (725, 1, '2023-05-30 21:15:00', 9.84, 10, 267.12, 15.1, 30.3, 1, 1.01254);
INSERT INTO `weather_forecast` VALUES (726, 1, '2023-05-30 21:15:00', 21.2, 30, 209.88, 27.25, 33.1, 1, 1.0016);
INSERT INTO `weather_forecast` VALUES (727, 1, '2023-05-30 21:15:00', 16.94, 50, 126.36, 64.6, 28.8, 1, 1.01622);
INSERT INTO `weather_forecast` VALUES (728, 1, '2023-05-30 21:15:00', 20.7, 80, 240.48, 33.1, 30, 1, 1.00612);
INSERT INTO `weather_forecast` VALUES (729, 1, '2023-05-30 21:30:00', 21.88, 10, 321.12, 59.15, 35.9, 1, 1.00268);
INSERT INTO `weather_forecast` VALUES (730, 1, '2023-05-30 21:30:00', 22.24, 30, 15.12, 30.7, 32.6, 1, 1.00086);
INSERT INTO `weather_forecast` VALUES (731, 1, '2023-05-30 21:30:00', 12.7, 50, 320.76, 23.95, 34.6, 1, 1.00606);
INSERT INTO `weather_forecast` VALUES (732, 1, '2023-05-30 21:30:00', 11.9, 80, 56.16, 24.8, 27.2, 1, 1.01756);
INSERT INTO `weather_forecast` VALUES (733, 1, '2023-05-30 21:45:00', 7.54, 10, 11.16, 25.3, 32, 1, 1.01742);
INSERT INTO `weather_forecast` VALUES (734, 1, '2023-05-30 21:45:00', 10.38, 30, 177.48, 39.1, 27.5, 1, 1.01822);
INSERT INTO `weather_forecast` VALUES (735, 1, '2023-05-30 21:45:00', 14.74, 50, 202.32, 27.95, 36.9, 1, 1.00076);
INSERT INTO `weather_forecast` VALUES (736, 1, '2023-05-30 21:45:00', 12.46, 80, 186.84, 36.9, 35.5, 1, 1.0126);
INSERT INTO `weather_forecast` VALUES (737, 1, '2023-05-30 22:00:00', 5.14, 10, 136.08, 39.95, 36.2, 1, 1.0047);
INSERT INTO `weather_forecast` VALUES (738, 1, '2023-05-30 22:00:00', 15.64, 30, 178.92, 33.3, 29.3, 1, 1.01222);
INSERT INTO `weather_forecast` VALUES (739, 1, '2023-05-30 22:00:00', 23.62, 50, 319.32, 53.3, 27, 1, 1.0026);
INSERT INTO `weather_forecast` VALUES (740, 1, '2023-05-30 22:00:00', 8.7, 80, 178.56, 21.85, 32.5, 1, 1.01626);
INSERT INTO `weather_forecast` VALUES (741, 1, '2023-05-30 22:15:00', 5.82, 10, 327.96, 49.9, 28.7, 1, 1.00898);
INSERT INTO `weather_forecast` VALUES (742, 1, '2023-05-30 22:15:00', 14.56, 30, 49.32, 27.25, 30, 1, 1.01106);
INSERT INTO `weather_forecast` VALUES (743, 1, '2023-05-30 22:15:00', 13.32, 50, 284.04, 63.65, 35.7, 1, 1.00556);
INSERT INTO `weather_forecast` VALUES (744, 1, '2023-05-30 22:15:00', 14, 80, 231.48, 30.7, 36.5, 1, 1.00502);
INSERT INTO `weather_forecast` VALUES (745, 1, '2023-05-30 22:30:00', 6.28, 10, 238.68, 48, 27.7, 1, 1.0008);
INSERT INTO `weather_forecast` VALUES (746, 1, '2023-05-30 22:30:00', 22.74, 30, 199.44, 38.1, 28.4, 1, 1.01956);
INSERT INTO `weather_forecast` VALUES (747, 1, '2023-05-30 22:30:00', 6.66, 50, 8.28, 22, 29.5, 1, 1.01844);
INSERT INTO `weather_forecast` VALUES (748, 1, '2023-05-30 22:30:00', 14.5, 80, 26.28, 58.9, 34.2, 1, 1.0028);
INSERT INTO `weather_forecast` VALUES (749, 1, '2023-05-30 22:45:00', 18.78, 10, 47.16, 36.65, 31.2, 1, 1.00644);
INSERT INTO `weather_forecast` VALUES (750, 1, '2023-05-30 22:45:00', 20.66, 30, 333.72, 27.75, 30.4, 1, 1.01946);
INSERT INTO `weather_forecast` VALUES (751, 1, '2023-05-30 22:45:00', 21.32, 50, 96.48, 28, 31.1, 1, 1.00188);
INSERT INTO `weather_forecast` VALUES (752, 1, '2023-05-30 22:45:00', 20.2, 80, 275.76, 16.5, 27.7, 1, 1.01174);
INSERT INTO `weather_forecast` VALUES (753, 1, '2023-05-30 23:00:00', 23.58, 10, 107.64, 47.75, 34.8, 1, 1.01546);
INSERT INTO `weather_forecast` VALUES (754, 1, '2023-05-30 23:00:00', 23.54, 30, 45.72, 39.7, 34.9, 1, 1.00158);
INSERT INTO `weather_forecast` VALUES (755, 1, '2023-05-30 23:00:00', 17.56, 50, 144, 51.1, 30.2, 1, 1.00598);
INSERT INTO `weather_forecast` VALUES (756, 1, '2023-05-30 23:00:00', 12.4, 80, 248.76, 19.7, 27, 1, 1.01664);
INSERT INTO `weather_forecast` VALUES (757, 1, '2023-05-30 23:15:00', 9.26, 10, 162.72, 33.6, 29.6, 1, 1.00602);
INSERT INTO `weather_forecast` VALUES (758, 1, '2023-05-30 23:15:00', 16.26, 30, 180.72, 28.8, 27.8, 1, 1.00366);
INSERT INTO `weather_forecast` VALUES (759, 1, '2023-05-30 23:15:00', 11.02, 50, 263.16, 40.05, 34.5, 1, 1.00542);
INSERT INTO `weather_forecast` VALUES (760, 1, '2023-05-30 23:15:00', 15.66, 80, 125.28, 37.5, 33.7, 1, 1.0145);
INSERT INTO `weather_forecast` VALUES (761, 1, '2023-05-30 23:30:00', 8.54, 10, 139.68, 19.8, 29.5, 1, 1.01286);
INSERT INTO `weather_forecast` VALUES (762, 1, '2023-05-30 23:30:00', 9.04, 30, 301.32, 16.15, 31.9, 1, 1.01182);
INSERT INTO `weather_forecast` VALUES (763, 1, '2023-05-30 23:30:00', 11.92, 50, 219.96, 28.05, 36, 1, 1.0074);
INSERT INTO `weather_forecast` VALUES (764, 1, '2023-05-30 23:30:00', 6.48, 80, 146.88, 33.3, 32.3, 1, 1.00462);
INSERT INTO `weather_forecast` VALUES (765, 1, '2023-05-30 23:45:00', 20.44, 10, 234.36, 51.3, 30.2, 1, 1.00932);
INSERT INTO `weather_forecast` VALUES (766, 1, '2023-05-30 23:45:00', 18.84, 30, 316.44, 21.15, 27.9, 1, 1.0017);
INSERT INTO `weather_forecast` VALUES (767, 1, '2023-05-30 23:45:00', 18.86, 50, 29.52, 49.6, 36.8, 1, 1.01434);
INSERT INTO `weather_forecast` VALUES (768, 1, '2023-05-30 23:45:00', 9.08, 80, 242.28, 53.45, 30.7, 1, 1.011);

-- ----------------------------
-- Table structure for wind_farm_info
-- ----------------------------
DROP TABLE IF EXISTS `wind_farm_info`;
CREATE TABLE `wind_farm_info`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `farm_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coord_x` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coord_y` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `short_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ultra_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `caretaker` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wind_farm_info
-- ----------------------------
INSERT INTO `wind_farm_info` VALUES ('1', '莲池风电场', 'EEE3801', '120', '30', '82.5', '95.2', '100', '莲池', '123456789', '莲池区');
INSERT INTO `wind_farm_info` VALUES ('2', '竞秀风电场', 'EEE3802', '125', '50', '88.2', '97.2', '100', '竞秀', '123654789', '竞秀区');
INSERT INTO `wind_farm_info` VALUES ('3', '清苑风电场', 'EEE3803\r\n', '100', '38', '84.2', '93.2', '100', '清苑', '255887964', '清苑区');

-- ----------------------------
-- Table structure for wind_tower_info
-- ----------------------------
DROP TABLE IF EXISTS `wind_tower_info`;
CREATE TABLE `wind_tower_info`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tower_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_farm_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wind_tower_info
-- ----------------------------
INSERT INTO `wind_tower_info` VALUES ('1', '莲池1号塔', 'EEE3801C001', '1', '0');
INSERT INTO `wind_tower_info` VALUES ('2', '莲池2号塔', 'EEE3801C002', '1', '2');
INSERT INTO `wind_tower_info` VALUES ('3', '莲池3号塔', 'EEE3801C003', '1', '1');
INSERT INTO `wind_tower_info` VALUES ('4', '竞秀1号塔', 'EEE3802C001', '2', '1');
INSERT INTO `wind_tower_info` VALUES ('5', '清苑1号塔', 'EEE3803C001', '3', '1');
INSERT INTO `wind_tower_info` VALUES ('6', '清苑2号塔', 'EEE3803C002', '3', '2');
INSERT INTO `wind_tower_info` VALUES ('7', '清苑3号塔', 'EEE3803C003', '3', '0');
INSERT INTO `wind_tower_info` VALUES ('8', '清苑4号塔', 'EEE3803C004', '3', '3');

SET FOREIGN_KEY_CHECKS = 1;
