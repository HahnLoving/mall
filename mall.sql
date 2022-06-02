/*
 Navicat Premium Data Transfer

 Source Server         : 本地docker
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 02/06/2022 13:29:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_time` datetime(3) NOT NULL,
  `end_time` datetime(3) NOT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `remark` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `online` tinyint unsigned DEFAULT '1',
  `entrance_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `internal_top_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of activity
-- ----------------------------
BEGIN;
INSERT INTO `activity` VALUES (1, '好礼送不停', '好礼送不停', '2022-06-01 00:00:00.000', '2031-07-31 00:00:00.000', '2022-06-02 11:21:45.794', '2022-06-02 11:21:45.794', NULL, '全场', 1, 'http://file.hahnlis.top/42954c8d4db048d09bde0d54f89f00ce.jpeg', 'http://file.hahnlis.top/42954c8d4db048d09bde0d54f89f00ce.jpeg', 'a-2');
COMMIT;

-- ----------------------------
-- Table structure for activity_category
-- ----------------------------
DROP TABLE IF EXISTS `activity_category`;
CREATE TABLE `activity_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `activity_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of activity_category
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for activity_coupon
-- ----------------------------
DROP TABLE IF EXISTS `activity_coupon`;
CREATE TABLE `activity_coupon` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int unsigned NOT NULL,
  `activity_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of activity_coupon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for activity_spu
-- ----------------------------
DROP TABLE IF EXISTS `activity_spu`;
CREATE TABLE `activity_spu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int unsigned NOT NULL,
  `spu_id` int unsigned NOT NULL,
  `participation` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of activity_spu
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部分banner可能有标题图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES (1, 'b-1', '首页顶部主banner', '2022-06-02 11:36:31.064', '2022-06-02 11:36:31.064', NULL, '首页顶部主banner', 'http://file.hahnlis.top/9e27aa7654584854b8abd3963a6bd549.jpeg');
INSERT INTO `banner` VALUES (2, 'b-2', '热销商品banner', '2022-06-02 11:46:11.360', '2022-06-02 11:46:11.360', NULL, '女装', 'http://file.hahnlis.top/895a75e04c794b119b9c2c51b1aa06df.png');
COMMIT;

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keyword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` smallint unsigned NOT NULL DEFAULT '0',
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `banner_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `spu_id` int DEFAULT NULL,
  `spu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_id` int DEFAULT NULL,
  `theme_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of banner_item
-- ----------------------------
BEGIN;
INSERT INTO `banner_item` VALUES (1, 'http://file.hahnlis.top/9e27aa7654584854b8abd3963a6bd549.jpeg', '', 3, '2022-06-02 11:42:18.582', '2022-06-02 11:42:18.582', NULL, 1, 'banner1', NULL, '', 1, 't-1');
INSERT INTO `banner_item` VALUES (2, 'http://file.hahnlis.top/956519737be64874a2982fdb3b05e58c.jpeg', '', 2, '2022-06-02 11:42:57.316', '2022-06-02 11:42:57.316', NULL, 1, 'banner2', 7, '夏季新款女装时尚气质收腰显瘦夏天短袖流行裙子', NULL, '');
INSERT INTO `banner_item` VALUES (3, 'http://file.hahnlis.top/5715f54a59594dcfbb89f9610ffacff3.png', '', 2, '2022-06-02 11:47:26.353', '2022-06-02 11:47:26.353', NULL, 2, 'left', 6, '春季新款风衣外套女士', NULL, '');
INSERT INTO `banner_item` VALUES (4, 'http://file.hahnlis.top/c193c213505e42149fcb7ae079311aca.png', '', 2, '2022-06-02 11:47:53.281', '2022-06-02 11:47:53.281', NULL, 2, 'right-top', 6, '春季新款风衣外套女士', NULL, '');
INSERT INTO `banner_item` VALUES (5, 'http://file.hahnlis.top/254a11da431e44a8884ec0b50192ce56.png', '', 2, '2022-06-02 11:48:15.910', '2022-06-02 11:48:15.910', NULL, 2, 'right-bottom', 2, '麻布手包', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of brand
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `is_root` tinyint unsigned NOT NULL DEFAULT '0',
  `parent_id` int unsigned DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `index` int unsigned DEFAULT NULL,
  `online` int unsigned DEFAULT '1',
  `level` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, '鞋', '鞋', '2022-06-02 08:59:51.934', '2022-06-02 08:59:51.934', NULL, 1, NULL, 'http://file.hahnlis.top/af4b9c40cac841d88d2c3df2ef19c85f.png', 1, 1, NULL);
INSERT INTO `category` VALUES (2, '服装', '服装', '2022-06-02 09:01:37.813', '2022-06-02 09:01:37.813', NULL, 1, NULL, 'http://file.hahnlis.top/7932b4b4c3b54cada79a3322ba24d668.jpeg', 2, 1, NULL);
INSERT INTO `category` VALUES (3, '包包', '包包', '2022-06-02 09:01:59.569', '2022-06-02 09:01:59.569', NULL, 1, NULL, 'http://file.hahnlis.top/6c853f0dd1944e91946aa65b66ce63d0.png', 3, 1, NULL);
INSERT INTO `category` VALUES (4, '居家', '居家', '2022-06-02 09:02:28.741', '2022-06-02 09:02:28.741', NULL, 1, NULL, 'http://file.hahnlis.top/49e648b98b8b4388a77931689c85802d.png', 4, 1, NULL);
INSERT INTO `category` VALUES (5, '饰品', '饰品', '2022-06-02 09:02:55.648', '2022-06-02 09:02:55.648', NULL, 1, NULL, 'http://file.hahnlis.top/d18f05b66a444536856fa20f57aa3a64.png', 5, 1, NULL);
INSERT INTO `category` VALUES (6, '个性', '个性', '2022-06-02 09:03:30.064', '2022-06-02 09:03:30.064', NULL, 1, NULL, 'http://file.hahnlis.top/e5cacfdad2aa46f9b674e045218bad99.png', 6, 1, NULL);
INSERT INTO `category` VALUES (7, 'test', 'test', '2022-06-02 09:05:28.617', '2022-06-02 09:05:28.617', NULL, 1, NULL, 'http://file.hahnlis.top/a0db22deadc14d7fba2396127196cac9.jpeg', 1, 0, NULL);
INSERT INTO `category` VALUES (8, 'test1', 'test1', '2022-06-02 09:10:33.156', '2022-06-02 09:10:33.156', NULL, 0, 7, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 1, 1, NULL);
INSERT INTO `category` VALUES (9, 'test2', 'test2', '2022-06-02 09:10:49.598', '2022-06-02 09:10:49.598', NULL, 0, 7, 'http://file.hahnlis.top/a0db22deadc14d7fba2396127196cac9.jpeg', 2, 1, NULL);
INSERT INTO `category` VALUES (10, 'test3', 'test3', '2022-06-02 09:11:04.469', '2022-06-02 09:11:04.469', NULL, 0, 7, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 3, 0, NULL);
INSERT INTO `category` VALUES (11, 'test4', 'test4', '2022-06-02 09:11:17.177', '2022-06-02 09:12:09.751', '2022-06-02 09:12:09.000', 0, 7, 'http://file.hahnlis.top/a0db22deadc14d7fba2396127196cac9.jpeg', 4, 1, NULL);
INSERT INTO `category` VALUES (12, 'testtest', 'testtest', '2022-06-02 09:12:43.347', '2022-06-02 09:12:52.795', '2022-06-02 09:12:52.000', 1, NULL, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 8, 1, NULL);
INSERT INTO `category` VALUES (13, '平底鞋', '平底鞋', '2022-06-02 09:30:08.729', '2022-06-02 09:30:08.729', NULL, 0, 1, 'http://file.hahnlis.top/daee333d92814534a39f4c95a34dc420.png', 1, 1, NULL);
INSERT INTO `category` VALUES (14, '凉鞋', '凉鞋', '2022-06-02 09:30:28.203', '2022-06-02 09:30:28.203', NULL, 0, 1, 'http://file.hahnlis.top/823ddcb8c9ce409f8aa7ca60aec3173d.png', 2, 1, NULL);
INSERT INTO `category` VALUES (15, '拖鞋', '拖鞋', '2022-06-02 09:30:40.393', '2022-06-02 09:30:40.393', NULL, 0, 1, 'http://file.hahnlis.top/987e5950f4d14fdea217777ea934c383.png', 3, 1, NULL);
INSERT INTO `category` VALUES (16, '运动鞋', '运动鞋', '2022-06-02 09:31:01.261', '2022-06-02 09:31:01.261', NULL, 0, 1, 'http://file.hahnlis.top/2b23c5b3e0854cfb9605a602a0f64929.png', 4, 1, NULL);
INSERT INTO `category` VALUES (17, '高跟鞋', '	\n高跟鞋', '2022-06-02 09:31:16.897', '2022-06-02 09:31:16.897', NULL, 0, 1, 'http://file.hahnlis.top/9a858358277a449fbf75ae308594dce4.png', 5, 1, NULL);
INSERT INTO `category` VALUES (18, '衬衫', '衬衫', '2022-06-02 09:32:33.554', '2022-06-02 09:32:33.554', NULL, 0, 2, 'http://file.hahnlis.top/cf1eda3f328144aa9b222e8f45ff5fb5.png', 1, 1, NULL);
INSERT INTO `category` VALUES (19, 'T恤', 'T恤', '2022-06-02 09:32:57.261', '2022-06-02 09:32:57.261', NULL, 0, 2, 'http://file.hahnlis.top/4764cabdf9a744719848d7c820bfac8f.png', 2, 1, NULL);
INSERT INTO `category` VALUES (20, '牛仔裤', '牛仔裤', '2022-06-02 09:33:09.765', '2022-06-02 09:33:09.765', NULL, 0, 2, 'http://file.hahnlis.top/82d3e30d05d5414192e4bf2230ec282b.png', 3, 1, NULL);
INSERT INTO `category` VALUES (21, '连衣裙', '连衣裙', '2022-06-02 09:33:22.532', '2022-06-02 09:33:22.532', NULL, 0, 2, 'http://file.hahnlis.top/2e3b8626dc6e4a269daa8963677cd9b0.jpeg', 4, 1, NULL);
INSERT INTO `category` VALUES (22, '风衣', '风衣', '2022-06-02 09:33:45.826', '2022-06-02 09:33:45.826', NULL, 0, 2, 'http://file.hahnlis.top/60588027b64e40e78cb967361ed2facd.png', 5, 1, NULL);
INSERT INTO `category` VALUES (23, '手包', '手包', '2022-06-02 09:35:10.052', '2022-06-02 09:35:10.052', NULL, 0, 3, 'http://file.hahnlis.top/dac9546470af408680c0377b30b035d7.png', 1, 1, NULL);
INSERT INTO `category` VALUES (24, '旅行包', '旅行包', '2022-06-02 09:35:22.164', '2022-06-02 09:35:22.164', NULL, 0, 3, 'http://file.hahnlis.top/309f86ca80b34d6cb628feec753b5cee.jpeg', 2, 1, NULL);
INSERT INTO `category` VALUES (25, '单肩包', '3', '2022-06-02 09:35:42.027', '2022-06-02 09:35:42.027', NULL, 0, 3, 'http://file.hahnlis.top/0be674d3c60548c08fe3e53e7ae25cc1.png', 3, 1, NULL);
INSERT INTO `category` VALUES (26, '收纳', '收纳', '2022-06-02 09:36:19.888', '2022-06-02 09:36:19.888', NULL, 0, 4, 'http://file.hahnlis.top/f4d9d5f93b0d45ceb4d6cc0a5211dc0c.png', 1, 1, NULL);
INSERT INTO `category` VALUES (27, '毛巾', '毛巾', '2022-06-02 09:37:17.754', '2022-06-02 09:37:17.754', NULL, 0, 4, 'http://file.hahnlis.top/eeb3cc186000476e8c87ffc287586180.png', 2, 1, NULL);
INSERT INTO `category` VALUES (28, '台灯', '台灯', '2022-06-02 09:37:31.210', '2022-06-02 09:37:31.210', NULL, 0, 4, 'http://file.hahnlis.top/57b435b34ae24e37b6f361fff2905443.png', 3, 1, NULL);
INSERT INTO `category` VALUES (29, '家具', '家具', '2022-06-02 09:37:42.821', '2022-06-02 09:37:42.821', NULL, 0, 4, 'http://file.hahnlis.top/f5305b4e40c14522a1fb816d39a317b6.png', 4, 1, NULL);
INSERT INTO `category` VALUES (30, '手表', '手表', '2022-06-02 09:39:41.028', '2022-06-02 09:39:41.028', NULL, 0, 5, 'http://file.hahnlis.top/327044737acc4f41aa35e05ba0e48112.png', 1, 1, NULL);
INSERT INTO `category` VALUES (31, '腰带', '腰带', '2022-06-02 09:40:47.104', '2022-06-02 09:40:47.104', NULL, 0, 5, 'http://file.hahnlis.top/9e7a99514e8a48bbb811251485149df0.png', 2, 1, NULL);
INSERT INTO `category` VALUES (32, '文具', '文具', '2022-06-02 09:41:15.893', '2022-06-02 09:41:15.893', NULL, 0, 6, 'http://file.hahnlis.top/5957c3069e1347c892de722936b15b9d.png', NULL, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `full_money` decimal(10,2) DEFAULT NULL,
  `minus` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `type` smallint NOT NULL COMMENT '1. 满减券 2.折扣券 3.无门槛券 4.满金额折扣券',
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `activity_id` int unsigned DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whole_store` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of coupon
-- ----------------------------
BEGIN;
INSERT INTO `coupon` VALUES (1, '满1000-100', '2022-06-02 00:00:00', '2030-07-31 00:00:00', '满1000-100', 1000.00, 100.00, NULL, 1, '2022-06-02 11:22:10.368', '2022-06-02 11:22:10.368', NULL, 1, '全场无门槛立减', 1);
INSERT INTO `coupon` VALUES (2, '9折券', '2022-06-01 00:00:00', '2030-07-31 00:00:00', '9折券', NULL, NULL, 0.90, 2, '2022-06-02 11:22:24.624', '2022-06-02 11:22:24.624', NULL, 1, '全场无门槛立减', 1);
INSERT INTO `coupon` VALUES (3, '无门槛-10', '2022-06-01 00:00:00', '2030-07-31 00:00:00', '无门槛-10', NULL, 10.00, NULL, 3, '2022-06-02 11:22:38.105', '2022-06-02 11:22:38.105', NULL, 1, '全场无门槛立减', 1);
INSERT INTO `coupon` VALUES (4, '满10000打8.5折', '2022-06-01 00:00:00', '2030-07-31 00:00:00', '满10000打8.5折', 10000.00, NULL, 0.85, 4, '2022-06-02 11:22:51.978', '2022-06-02 11:22:51.978', NULL, 1, '全场无门槛立减', 1);
COMMIT;

-- ----------------------------
-- Table structure for coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `coupon_category`;
CREATE TABLE `coupon_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `coupon_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of coupon_category
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for coupon_template
-- ----------------------------
DROP TABLE IF EXISTS `coupon_template`;
CREATE TABLE `coupon_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `full_money` decimal(10,2) DEFAULT NULL,
  `minus` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `type` smallint NOT NULL COMMENT '1. 满减券 2.折扣券 3.无门槛券 4.满金额折扣券',
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of coupon_template
-- ----------------------------
BEGIN;
INSERT INTO `coupon_template` VALUES (1, '满1000-100', '100', 1000.00, 100.00, NULL, 1, '2022-06-02 11:18:46.737', '2022-06-02 11:18:46.737', NULL);
INSERT INTO `coupon_template` VALUES (2, '9折券', '9折券', NULL, NULL, 0.90, 2, '2022-06-02 11:19:44.005', '2022-06-02 11:19:51.000', NULL);
INSERT INTO `coupon_template` VALUES (3, '无门槛-10', '无门槛-10', NULL, 10.00, NULL, 3, '2022-06-02 11:20:12.503', '2022-06-02 11:20:12.503', NULL);
INSERT INTO `coupon_template` VALUES (4, '满10000打8.5折', '满10000打8.5折', 10000.00, NULL, 0.85, 4, '2022-06-02 11:20:49.397', '2022-06-02 11:20:49.397', NULL);
COMMIT;

-- ----------------------------
-- Table structure for coupon_type
-- ----------------------------
DROP TABLE IF EXISTS `coupon_type`;
CREATE TABLE `coupon_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of coupon_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for grid_category
-- ----------------------------
DROP TABLE IF EXISTS `grid_category`;
CREATE TABLE `grid_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `root_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of grid_category
-- ----------------------------
BEGIN;
INSERT INTO `grid_category` VALUES (1, '服装', 'http://file.hahnlis.top/6654434e12514bd6b3607b82528c058a.png', '服装', '2022-06-02 09:49:43.132', '2022-06-02 09:49:43.132', NULL, 22, 2);
INSERT INTO `grid_category` VALUES (2, '包包', 'http://file.hahnlis.top/a0bf5615abb84da0bdcdd3f444343f85.png', '包包', '2022-06-02 09:57:03.382', '2022-06-02 09:57:03.382', NULL, 23, 3);
INSERT INTO `grid_category` VALUES (3, '鞋', 'http://file.hahnlis.top/2f3a29ffb75c49ed98448c41ac35dfff.png', '鞋', '2022-06-02 09:58:21.875', '2022-06-02 09:58:21.875', NULL, 13, 1);
INSERT INTO `grid_category` VALUES (4, '饰品', 'http://file.hahnlis.top/a38c9f133c924e01adb0587fa01d5e14.png', '饰品', '2022-06-02 09:58:56.330', '2022-06-02 09:58:56.330', NULL, 31, 5);
INSERT INTO `grid_category` VALUES (5, '居家', 'http://file.hahnlis.top/af8b6c2e5469404dbde9502caf5274a7.png', '居家', '2022-06-02 10:00:16.503', '2022-06-02 10:00:16.503', NULL, 28, 4);
INSERT INTO `grid_category` VALUES (6, '个性', 'http://file.hahnlis.top/8bb8be92d8954dd6a81d54b395c9f12f.png', '个性', '2022-06-02 10:00:37.908', '2022-06-02 10:00:37.908', NULL, 30, 5);
COMMIT;

-- ----------------------------
-- Table structure for lin_file
-- ----------------------------
DROP TABLE IF EXISTS `lin_file`;
CREATE TABLE `lin_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'LOCAL' COMMENT 'LOCAL 本地，REMOTE 远程',
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` int DEFAULT NULL,
  `md5` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'md5值，防止上传重复文件',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5_del` (`md5`,`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_file
-- ----------------------------
BEGIN;
INSERT INTO `lin_file` VALUES (1, 'http://file.hahnlis.top/af4b9c40cac841d88d2c3df2ef19c85f.png', 'REMOTE', 'af4b9c40cac841d88d2c3df2ef19c85f.png', '.png', 120843, '51d1ddf357eaddce31914600177b3a37', '2022-06-02 08:59:48.409', '2022-06-02 08:59:48.409', NULL);
INSERT INTO `lin_file` VALUES (2, 'http://file.hahnlis.top/7932b4b4c3b54cada79a3322ba24d668.jpeg', 'REMOTE', '7932b4b4c3b54cada79a3322ba24d668.jpeg', '.jpeg', 68761, '684b944f44767392cbeaeed93355e7aa', '2022-06-02 09:01:34.853', '2022-06-02 09:01:34.853', NULL);
INSERT INTO `lin_file` VALUES (3, 'http://file.hahnlis.top/6c853f0dd1944e91946aa65b66ce63d0.png', 'REMOTE', '6c853f0dd1944e91946aa65b66ce63d0.png', '.png', 92216, '287a822592405e7bd3ca6f15709c68eb', '2022-06-02 09:01:55.613', '2022-06-02 09:01:55.613', NULL);
INSERT INTO `lin_file` VALUES (4, 'http://file.hahnlis.top/49e648b98b8b4388a77931689c85802d.png', 'REMOTE', '49e648b98b8b4388a77931689c85802d.png', '.png', 121046, 'b85c61f11dd4cf16cda13e403f864d68', '2022-06-02 09:02:26.241', '2022-06-02 09:02:26.241', NULL);
INSERT INTO `lin_file` VALUES (5, 'http://file.hahnlis.top/d18f05b66a444536856fa20f57aa3a64.png', 'REMOTE', 'd18f05b66a444536856fa20f57aa3a64.png', '.png', 94643, '45719639c1aa5ea0a633d73e5facc2e6', '2022-06-02 09:02:53.965', '2022-06-02 09:02:53.965', NULL);
INSERT INTO `lin_file` VALUES (6, 'http://file.hahnlis.top/e5cacfdad2aa46f9b674e045218bad99.png', 'REMOTE', 'e5cacfdad2aa46f9b674e045218bad99.png', '.png', 95653, '4dab9517e7c864115db3afa42b0e20b4', '2022-06-02 09:03:27.875', '2022-06-02 09:03:27.875', NULL);
INSERT INTO `lin_file` VALUES (7, 'http://file.hahnlis.top/a0db22deadc14d7fba2396127196cac9.jpeg', 'REMOTE', 'a0db22deadc14d7fba2396127196cac9.jpeg', '.jpeg', 159063, '0fa3f6fae6e532bc1ac17147ca9190e5', '2022-06-02 09:05:25.205', '2022-06-02 09:05:25.205', NULL);
INSERT INTO `lin_file` VALUES (8, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 'REMOTE', 'cae8d24b21964a10bbe88f804e267414.png', '.png', 42390, '76eb9ca29a420b89bdc62a872b7b2970', '2022-06-02 09:10:31.261', '2022-06-02 09:10:31.261', NULL);
INSERT INTO `lin_file` VALUES (9, 'http://file.hahnlis.top/daee333d92814534a39f4c95a34dc420.png', 'REMOTE', 'daee333d92814534a39f4c95a34dc420.png', '.png', 127333, '0ea26c2181e113707de666bf29e898b9', '2022-06-02 09:30:05.772', '2022-06-02 09:30:05.772', NULL);
INSERT INTO `lin_file` VALUES (10, 'http://file.hahnlis.top/823ddcb8c9ce409f8aa7ca60aec3173d.png', 'REMOTE', '823ddcb8c9ce409f8aa7ca60aec3173d.png', '.png', 142112, 'ebbd88c9fdf7e362c388d9fce96b7103', '2022-06-02 09:30:26.499', '2022-06-02 09:30:26.499', NULL);
INSERT INTO `lin_file` VALUES (11, 'http://file.hahnlis.top/987e5950f4d14fdea217777ea934c383.png', 'REMOTE', '987e5950f4d14fdea217777ea934c383.png', '.png', 249079, '485ad7149dbc849b3847c07a8bf30663', '2022-06-02 09:30:38.646', '2022-06-02 09:30:38.646', NULL);
INSERT INTO `lin_file` VALUES (12, 'http://file.hahnlis.top/2b23c5b3e0854cfb9605a602a0f64929.png', 'REMOTE', '2b23c5b3e0854cfb9605a602a0f64929.png', '.png', 130033, 'b59335e6a8779b6ea539c2c1f23b0109', '2022-06-02 09:30:59.682', '2022-06-02 09:30:59.682', NULL);
INSERT INTO `lin_file` VALUES (13, 'http://file.hahnlis.top/9a858358277a449fbf75ae308594dce4.png', 'REMOTE', '9a858358277a449fbf75ae308594dce4.png', '.png', 157563, '97f729871ec7a75f9c8326ec5d646213', '2022-06-02 09:31:15.653', '2022-06-02 09:31:15.653', NULL);
INSERT INTO `lin_file` VALUES (14, 'http://file.hahnlis.top/cf1eda3f328144aa9b222e8f45ff5fb5.png', 'REMOTE', 'cf1eda3f328144aa9b222e8f45ff5fb5.png', '.png', 62918, '86addb091bdd14e9ff37abfa8655010f', '2022-06-02 09:32:32.784', '2022-06-02 09:32:32.784', NULL);
INSERT INTO `lin_file` VALUES (15, 'http://file.hahnlis.top/4764cabdf9a744719848d7c820bfac8f.png', 'REMOTE', '4764cabdf9a744719848d7c820bfac8f.png', '.png', 15220, 'c447f17cc8522a9678ca2c07df10e034', '2022-06-02 09:32:56.211', '2022-06-02 09:32:56.211', NULL);
INSERT INTO `lin_file` VALUES (16, 'http://file.hahnlis.top/82d3e30d05d5414192e4bf2230ec282b.png', 'REMOTE', '82d3e30d05d5414192e4bf2230ec282b.png', '.png', 243925, 'b9769b51d0c7f85f518d5fd10e6b651e', '2022-06-02 09:33:08.737', '2022-06-02 09:33:08.737', NULL);
INSERT INTO `lin_file` VALUES (17, 'http://file.hahnlis.top/2e3b8626dc6e4a269daa8963677cd9b0.jpeg', 'REMOTE', '2e3b8626dc6e4a269daa8963677cd9b0.jpeg', '.jpeg', 36526, '3908be61ebffc2b6106c6457870441a7', '2022-06-02 09:33:21.553', '2022-06-02 09:33:21.553', NULL);
INSERT INTO `lin_file` VALUES (18, 'http://file.hahnlis.top/60588027b64e40e78cb967361ed2facd.png', 'REMOTE', '60588027b64e40e78cb967361ed2facd.png', '.png', 164885, '92683ca70188ed219a996423941c98fd', '2022-06-02 09:33:45.158', '2022-06-02 09:33:45.158', NULL);
INSERT INTO `lin_file` VALUES (19, 'http://file.hahnlis.top/dac9546470af408680c0377b30b035d7.png', 'REMOTE', 'dac9546470af408680c0377b30b035d7.png', '.png', 124792, '18cdf06f862f70139064add4edc7165f', '2022-06-02 09:35:08.429', '2022-06-02 09:35:08.429', NULL);
INSERT INTO `lin_file` VALUES (20, 'http://file.hahnlis.top/309f86ca80b34d6cb628feec753b5cee.jpeg', 'REMOTE', '309f86ca80b34d6cb628feec753b5cee.jpeg', '.jpeg', 39973, '9a5c1abebff79af608f1cf0dfaba904e', '2022-06-02 09:35:20.862', '2022-06-02 09:35:20.862', NULL);
INSERT INTO `lin_file` VALUES (21, 'http://file.hahnlis.top/0be674d3c60548c08fe3e53e7ae25cc1.png', 'REMOTE', '0be674d3c60548c08fe3e53e7ae25cc1.png', '.png', 118034, '9348a255d420297de66bfa01d98c14fa', '2022-06-02 09:35:40.867', '2022-06-02 09:35:40.867', NULL);
INSERT INTO `lin_file` VALUES (22, 'http://file.hahnlis.top/f4d9d5f93b0d45ceb4d6cc0a5211dc0c.png', 'REMOTE', 'f4d9d5f93b0d45ceb4d6cc0a5211dc0c.png', '.png', 675227, 'dde88a01fbabe67b4b698f57468d5e4e', '2022-06-02 09:36:18.366', '2022-06-02 09:36:18.366', NULL);
INSERT INTO `lin_file` VALUES (23, 'http://file.hahnlis.top/eeb3cc186000476e8c87ffc287586180.png', 'REMOTE', 'eeb3cc186000476e8c87ffc287586180.png', '.png', 470015, '7cc829cd9b687f323a47cfc0ff215dc6', '2022-06-02 09:37:16.960', '2022-06-02 09:37:16.960', NULL);
INSERT INTO `lin_file` VALUES (24, 'http://file.hahnlis.top/57b435b34ae24e37b6f361fff2905443.png', 'REMOTE', '57b435b34ae24e37b6f361fff2905443.png', '.png', 176476, '6fdd804b433d005eb7aa3ce51f76fb70', '2022-06-02 09:37:30.206', '2022-06-02 09:37:30.206', NULL);
INSERT INTO `lin_file` VALUES (25, 'http://file.hahnlis.top/f5305b4e40c14522a1fb816d39a317b6.png', 'REMOTE', 'f5305b4e40c14522a1fb816d39a317b6.png', '.png', 415957, '5070d3041b394a15785367b7101532ce', '2022-06-02 09:37:41.342', '2022-06-02 09:37:41.342', NULL);
INSERT INTO `lin_file` VALUES (26, 'http://file.hahnlis.top/327044737acc4f41aa35e05ba0e48112.png', 'REMOTE', '327044737acc4f41aa35e05ba0e48112.png', '.png', 241552, '0add92afa45a49a1da1027c1c618005c', '2022-06-02 09:39:38.773', '2022-06-02 09:39:38.773', NULL);
INSERT INTO `lin_file` VALUES (27, 'http://file.hahnlis.top/9e7a99514e8a48bbb811251485149df0.png', 'REMOTE', '9e7a99514e8a48bbb811251485149df0.png', '.png', 560479, '28a09d2eb89d6386bd5fcc83a431665b', '2022-06-02 09:40:45.654', '2022-06-02 09:40:45.654', NULL);
INSERT INTO `lin_file` VALUES (28, 'http://file.hahnlis.top/5957c3069e1347c892de722936b15b9d.png', 'REMOTE', '5957c3069e1347c892de722936b15b9d.png', '.png', 267660, 'df3566899eadefa365badc08ef2383ca', '2022-06-02 09:41:14.748', '2022-06-02 09:41:14.748', NULL);
INSERT INTO `lin_file` VALUES (29, 'http://file.hahnlis.top/f457703c5aff4e82b24655cde6839de5.png', 'REMOTE', 'f457703c5aff4e82b24655cde6839de5.png', '.png', 9072, '32c228fe87109d14566f7aacfd139fe8', '2022-06-02 09:47:25.426', '2022-06-02 09:47:25.426', NULL);
INSERT INTO `lin_file` VALUES (30, 'http://file.hahnlis.top/b76629c8f1694076abab325b02f14597.png', 'REMOTE', 'b76629c8f1694076abab325b02f14597.png', '.png', 10325, '382f1dc0bb4471ccf525aa225859f815', '2022-06-02 09:47:35.911', '2022-06-02 09:47:35.911', NULL);
INSERT INTO `lin_file` VALUES (31, 'http://file.hahnlis.top/a992e9604fcb4cb68274b4d8c41572a9.png', 'REMOTE', 'a992e9604fcb4cb68274b4d8c41572a9.png', '.png', 10677, '7d803def2eddbb2be5228457e9f7b232', '2022-06-02 09:49:27.308', '2022-06-02 09:49:27.308', NULL);
INSERT INTO `lin_file` VALUES (32, 'http://file.hahnlis.top/14488cfb7cc34205a4666b7e4ca8a138.png', 'REMOTE', '14488cfb7cc34205a4666b7e4ca8a138.png', '.png', 8547, '02a5ab945af14988acb769368fc8b13c', '2022-06-02 09:49:49.761', '2022-06-02 09:49:49.761', NULL);
INSERT INTO `lin_file` VALUES (33, 'http://file.hahnlis.top/c8a379f6c0784725aae24be49a7c1755.png', 'REMOTE', 'c8a379f6c0784725aae24be49a7c1755.png', '.png', 9573, 'f769902b25084b538a8f1ce4c1bb9337', '2022-06-02 09:50:32.486', '2022-06-02 09:50:32.486', NULL);
INSERT INTO `lin_file` VALUES (34, 'http://file.hahnlis.top/6654434e12514bd6b3607b82528c058a.png', 'REMOTE', '6654434e12514bd6b3607b82528c058a.png', '.png', 10884, 'b3ef6bee5ffce7f0340277c737716712', '2022-06-02 09:55:05.151', '2022-06-02 09:55:05.151', NULL);
INSERT INTO `lin_file` VALUES (35, 'http://file.hahnlis.top/a0bf5615abb84da0bdcdd3f444343f85.png', 'REMOTE', 'a0bf5615abb84da0bdcdd3f444343f85.png', '.png', 8706, '2ad1b94281702a53b4f5e3bed96975b8', '2022-06-02 09:57:02.116', '2022-06-02 09:57:02.116', NULL);
INSERT INTO `lin_file` VALUES (36, 'http://file.hahnlis.top/2f3a29ffb75c49ed98448c41ac35dfff.png', 'REMOTE', '2f3a29ffb75c49ed98448c41ac35dfff.png', '.png', 9732, '4eb8fa27e01dfa6166dfc4f1422f1b40', '2022-06-02 09:58:17.726', '2022-06-02 09:58:17.726', NULL);
INSERT INTO `lin_file` VALUES (37, 'http://file.hahnlis.top/6d104a82020a4b96a1f052f0bba61d7c.png', 'REMOTE', '6d104a82020a4b96a1f052f0bba61d7c.png', '.png', 13211, '9427fb0e415650e8e5c28cd299603afa', '2022-06-02 09:58:43.052', '2022-06-02 09:58:43.052', NULL);
INSERT INTO `lin_file` VALUES (38, 'http://file.hahnlis.top/a38c9f133c924e01adb0587fa01d5e14.png', 'REMOTE', 'a38c9f133c924e01adb0587fa01d5e14.png', '.png', 13211, 'd23a73fa0a20921965c945d81e6fc664', '2022-06-02 09:59:31.769', '2022-06-02 09:59:31.769', NULL);
INSERT INTO `lin_file` VALUES (39, 'http://file.hahnlis.top/af8b6c2e5469404dbde9502caf5274a7.png', 'REMOTE', 'af8b6c2e5469404dbde9502caf5274a7.png', '.png', 9231, 'f6ae05a9920f397bbca512042b874474', '2022-06-02 09:59:59.757', '2022-06-02 09:59:59.757', NULL);
INSERT INTO `lin_file` VALUES (40, 'http://file.hahnlis.top/8bb8be92d8954dd6a81d54b395c9f12f.png', 'REMOTE', '8bb8be92d8954dd6a81d54b395c9f12f.png', '.png', 9866, '08fdbc5e02bf29ddc9ebdfd7ed64e530', '2022-06-02 10:00:35.231', '2022-06-02 10:00:35.231', NULL);
INSERT INTO `lin_file` VALUES (41, 'http://file.hahnlis.top/7f1eb433ce1e494ea62d6d61a9dbfd41.png', 'REMOTE', '7f1eb433ce1e494ea62d6d61a9dbfd41.png', '.png', 375812, '3b84b7692941865ca2a9c039d288cb12', '2022-06-02 10:27:16.876', '2022-06-02 10:27:16.876', NULL);
INSERT INTO `lin_file` VALUES (42, 'http://file.hahnlis.top/fe24da267064402eb3928b8dc7960794.png', 'REMOTE', 'fe24da267064402eb3928b8dc7960794.png', '.png', 663250, '69e73d9fa9636897064cc7bacb33c4f4', '2022-06-02 10:27:26.629', '2022-06-02 10:27:26.629', NULL);
INSERT INTO `lin_file` VALUES (43, 'http://file.hahnlis.top/ac21b38bd3d34bf8bf8753e474a5e01c.png', 'REMOTE', 'ac21b38bd3d34bf8bf8753e474a5e01c.png', '.png', 255956, '44612d9a3eb34b8bbc41b6101442839c', '2022-06-02 10:27:29.203', '2022-06-02 10:27:29.203', NULL);
INSERT INTO `lin_file` VALUES (44, 'http://file.hahnlis.top/803a6876a14f4295954d1af0ef0c08a3.jpeg', 'REMOTE', '803a6876a14f4295954d1af0ef0c08a3.jpeg', '.jpeg', 111399, 'abc9f6b95559d6b2f392a042222b8e63', '2022-06-02 10:28:05.730', '2022-06-02 10:28:05.730', NULL);
INSERT INTO `lin_file` VALUES (45, 'http://file.hahnlis.top/048c3ac40707486e87e62ba46054255d.jpeg', 'REMOTE', '048c3ac40707486e87e62ba46054255d.jpeg', '.jpeg', 315044, '8c18e3aa79516751bf588867e68611a9', '2022-06-02 10:28:05.886', '2022-06-02 10:28:05.886', NULL);
INSERT INTO `lin_file` VALUES (46, 'http://file.hahnlis.top/533198b005a945cb92bfd6721277d7b1.jpeg', 'REMOTE', '533198b005a945cb92bfd6721277d7b1.jpeg', '.jpeg', 268108, '68e51716095d57b47e4c6c705ea20aa8', '2022-06-02 10:28:06.128', '2022-06-02 10:28:06.128', NULL);
INSERT INTO `lin_file` VALUES (47, 'http://file.hahnlis.top/d7d3f141bd95423dbd6723ea1b12b9fe.jpg', 'REMOTE', 'd7d3f141bd95423dbd6723ea1b12b9fe.jpg', '.jpg', 116856, 'bc1f0ea600450daf1221343474e94741', '2022-06-02 10:37:19.395', '2022-06-02 10:37:19.395', NULL);
INSERT INTO `lin_file` VALUES (48, 'http://file.hahnlis.top/3477259db80a4de4b22e6234f6b3cf81.jpg', 'REMOTE', '3477259db80a4de4b22e6234f6b3cf81.jpg', '.jpg', 120962, 'd26bfbf2302bc72a7e44a1290784ba07', '2022-06-02 10:37:28.439', '2022-06-02 10:37:28.439', NULL);
INSERT INTO `lin_file` VALUES (49, 'http://file.hahnlis.top/94855ee99b5748b8917bf4a833efabca.jpg', 'REMOTE', '94855ee99b5748b8917bf4a833efabca.jpg', '.jpg', 102593, '48daea6c64593476cbcdd3c49d41c7f6', '2022-06-02 10:37:36.566', '2022-06-02 10:37:36.566', NULL);
INSERT INTO `lin_file` VALUES (50, 'http://file.hahnlis.top/f555cd4646f74c7b9c395daa37bc1958.jpg', 'REMOTE', 'f555cd4646f74c7b9c395daa37bc1958.jpg', '.jpg', 52864, '446961e1bea246017a06144227335cc0', '2022-06-02 10:37:36.798', '2022-06-02 10:37:36.798', NULL);
INSERT INTO `lin_file` VALUES (51, 'http://file.hahnlis.top/f307235dd9bc4318b2f8f3b5a0f75e8c.jpg', 'REMOTE', 'f307235dd9bc4318b2f8f3b5a0f75e8c.jpg', '.jpg', 150886, 'b758175fbd5b82db584a159ae843fb0b', '2022-06-02 10:40:16.203', '2022-06-02 10:40:16.203', NULL);
INSERT INTO `lin_file` VALUES (52, 'http://file.hahnlis.top/973dac7c752b47e18da2c14aba3cc977.jpg', 'REMOTE', '973dac7c752b47e18da2c14aba3cc977.jpg', '.jpg', 166879, '0c5dc0739a5187f7fa0b9c5786836183', '2022-06-02 10:40:44.758', '2022-06-02 10:40:44.758', NULL);
INSERT INTO `lin_file` VALUES (53, 'http://file.hahnlis.top/1131520f69f24e3fade29033ed1035ff.png', 'REMOTE', '1131520f69f24e3fade29033ed1035ff.png', '.png', 395190, 'cf3e5226d9dbbc10aca084b990f797f9', '2022-06-02 10:42:10.934', '2022-06-02 10:42:10.934', NULL);
INSERT INTO `lin_file` VALUES (54, 'http://file.hahnlis.top/378f2b97032c4daf8d2a1b6cc345bc2e.png', 'REMOTE', '378f2b97032c4daf8d2a1b6cc345bc2e.png', '.png', 371232, '78d714f647d2b020cff90c88256ef65d', '2022-06-02 10:42:40.167', '2022-06-02 10:42:40.167', NULL);
INSERT INTO `lin_file` VALUES (55, 'http://file.hahnlis.top/5f219b9857ac40cb849f08bcd1034751.jpg', 'REMOTE', '5f219b9857ac40cb849f08bcd1034751.jpg', '.jpg', 63478, 'd54a0c65b0bf562b67246e39a4e65caa', '2022-06-02 10:48:00.466', '2022-06-02 10:48:00.466', NULL);
INSERT INTO `lin_file` VALUES (56, 'http://file.hahnlis.top/15bddba309044fcf9743f2f15f3c6c97.jpg', 'REMOTE', '15bddba309044fcf9743f2f15f3c6c97.jpg', '.jpg', 25285, 'fe5f4d1083c91f6c1e646c8d1bceac3f', '2022-06-02 10:48:46.616', '2022-06-02 10:48:46.616', NULL);
INSERT INTO `lin_file` VALUES (57, 'http://file.hahnlis.top/9b6c8a8398d94cc79da9ae6787a51629.jpg', 'REMOTE', '9b6c8a8398d94cc79da9ae6787a51629.jpg', '.jpg', 23192, 'd9baabb53b60fa3d846f15f29fb87d22', '2022-06-02 10:48:46.784', '2022-06-02 10:48:46.784', NULL);
INSERT INTO `lin_file` VALUES (58, 'http://file.hahnlis.top/6f8f83028eb04dd1a85764b837c7ae72.jpg', 'REMOTE', '6f8f83028eb04dd1a85764b837c7ae72.jpg', '.jpg', 30376, '40b3a5d0128dda5bd07145520337c8cd', '2022-06-02 10:48:55.445', '2022-06-02 10:48:55.445', NULL);
INSERT INTO `lin_file` VALUES (59, 'http://file.hahnlis.top/90e2e37b49bd46789a9c08a9c183b2dd.jpg', 'REMOTE', '90e2e37b49bd46789a9c08a9c183b2dd.jpg', '.jpg', 27368, '30471b842611aa45263769499619b207', '2022-06-02 10:49:01.077', '2022-06-02 10:49:01.077', NULL);
INSERT INTO `lin_file` VALUES (60, 'http://file.hahnlis.top/deaf2cf043cf4eb0b7158d463e402d89.png', 'REMOTE', 'deaf2cf043cf4eb0b7158d463e402d89.png', '.png', 399004, 'f3d2443b6b827d32a24aac93509727fb', '2022-06-02 10:49:35.141', '2022-06-02 10:49:35.141', NULL);
INSERT INTO `lin_file` VALUES (61, 'http://file.hahnlis.top/cc8fc0882abd412688a6e7dc4a4d2cca.png', 'REMOTE', 'cc8fc0882abd412688a6e7dc4a4d2cca.png', '.png', 23009, '8733abf384c71f54ca18847f739df65d', '2022-06-02 10:49:56.530', '2022-06-02 10:49:56.530', NULL);
INSERT INTO `lin_file` VALUES (62, 'http://file.hahnlis.top/e106a8dff70341b8a487ee41a4df7f0b.jpeg', 'REMOTE', 'e106a8dff70341b8a487ee41a4df7f0b.jpeg', '.jpeg', 141453, 'f520c95297d34ceb44c6b88bbc281694', '2022-06-02 10:53:45.832', '2022-06-02 10:53:45.832', NULL);
INSERT INTO `lin_file` VALUES (63, 'http://file.hahnlis.top/ef5bc9f1a4784fcba6d770771dc4657a.jpeg', 'REMOTE', 'ef5bc9f1a4784fcba6d770771dc4657a.jpeg', '.jpeg', 350597, '864ac26afe3446e9924f5f5bd72e429b', '2022-06-02 10:54:03.848', '2022-06-02 10:54:03.848', NULL);
INSERT INTO `lin_file` VALUES (64, 'http://file.hahnlis.top/c7cf4a3e84144158b033baec8a07357a.jpeg', 'REMOTE', 'c7cf4a3e84144158b033baec8a07357a.jpeg', '.jpeg', 129686, '8ab0d71bbbfac9cadfd2b3078748cbad', '2022-06-02 10:54:04.128', '2022-06-02 10:54:04.128', NULL);
INSERT INTO `lin_file` VALUES (65, 'http://file.hahnlis.top/d0e84e64b7ac414881edfbca1dcb82d6.jpeg', 'REMOTE', 'd0e84e64b7ac414881edfbca1dcb82d6.jpeg', '.jpeg', 289133, 'c5eab86c2d089d5e1d09e9aca88ae687', '2022-06-02 10:54:04.328', '2022-06-02 10:54:04.328', NULL);
INSERT INTO `lin_file` VALUES (66, 'http://file.hahnlis.top/a73f5da97e6b4e01942a2c96b3a1f186.jpeg', 'REMOTE', 'a73f5da97e6b4e01942a2c96b3a1f186.jpeg', '.jpeg', 298964, '78b69736f70e5709d426080c8ed9e3c0', '2022-06-02 10:54:04.585', '2022-06-02 10:54:04.585', NULL);
INSERT INTO `lin_file` VALUES (67, 'http://file.hahnlis.top/61b8a00da6864d0eb592f87143fb9936.jpeg', 'REMOTE', '61b8a00da6864d0eb592f87143fb9936.jpeg', '.jpeg', 137923, '2369c05af0017058b39f6ea42d9b0f0e', '2022-06-02 10:54:39.691', '2022-06-02 10:54:39.691', NULL);
INSERT INTO `lin_file` VALUES (68, 'http://file.hahnlis.top/0b18b58be7914a7f89e68ce820405924.jpeg', 'REMOTE', '0b18b58be7914a7f89e68ce820405924.jpeg', '.jpeg', 156845, '4ed996966f70c740c628ef98ad4e3849', '2022-06-02 10:54:59.179', '2022-06-02 10:54:59.179', NULL);
INSERT INTO `lin_file` VALUES (69, 'http://file.hahnlis.top/304379fb89504d32990422eb6fb89c10.jpeg', 'REMOTE', '304379fb89504d32990422eb6fb89c10.jpeg', '.jpeg', 26137, 'c9adfede5d330446d2f18d5727a05741', '2022-06-02 10:59:37.049', '2022-06-02 10:59:37.049', NULL);
INSERT INTO `lin_file` VALUES (70, 'http://file.hahnlis.top/19578237262049a1a9daa5b449ef93ec.jpeg', 'REMOTE', '19578237262049a1a9daa5b449ef93ec.jpeg', '.jpeg', 582390, 'c1d441637b924d8fbf941aba593b358a', '2022-06-02 11:02:04.481', '2022-06-02 11:02:04.481', NULL);
INSERT INTO `lin_file` VALUES (71, 'http://file.hahnlis.top/d9c37be65d2944f8a2de268c54e6de1d.jpeg', 'REMOTE', 'd9c37be65d2944f8a2de268c54e6de1d.jpeg', '.jpeg', 101792, '88f31de6266829402ba2210ffe39ab07', '2022-06-02 11:02:15.784', '2022-06-02 11:02:15.784', NULL);
INSERT INTO `lin_file` VALUES (72, 'http://file.hahnlis.top/f2d97b06cfbc4409b03d5b8b23e54574.jpeg', 'REMOTE', 'f2d97b06cfbc4409b03d5b8b23e54574.jpeg', '.jpeg', 299490, '5f2a7e73aafe780faf1ab33314790039', '2022-06-02 11:02:19.082', '2022-06-02 11:02:19.082', NULL);
INSERT INTO `lin_file` VALUES (73, 'http://file.hahnlis.top/945adf38619c42d3ab0d4ddbdf8e534d.jpeg', 'REMOTE', '945adf38619c42d3ab0d4ddbdf8e534d.jpeg', '.jpeg', 178613, '5706f09bd04d5e6f9f4450ade49c1b2a', '2022-06-02 11:02:19.287', '2022-06-02 11:02:19.287', NULL);
INSERT INTO `lin_file` VALUES (74, 'http://file.hahnlis.top/9aac9f67f16d4ff49fbd8f740bb66814.jpeg', 'REMOTE', '9aac9f67f16d4ff49fbd8f740bb66814.jpeg', '.jpeg', 26260, '00c9c49fe1e8b8fc6a587e65b8fb666e', '2022-06-02 11:06:42.925', '2022-06-02 11:06:42.925', NULL);
INSERT INTO `lin_file` VALUES (75, 'http://file.hahnlis.top/6a82059977044f048178edf0556640fe.jpeg', 'REMOTE', '6a82059977044f048178edf0556640fe.jpeg', '.jpeg', 216961, 'b0a1cc421de462177e2c65fd91a3c607', '2022-06-02 11:06:53.069', '2022-06-02 11:06:53.069', NULL);
INSERT INTO `lin_file` VALUES (76, 'http://file.hahnlis.top/45305377dcb84c1ea5e0ecb597eb05a7.jpeg', 'REMOTE', '45305377dcb84c1ea5e0ecb597eb05a7.jpeg', '.jpeg', 296600, '35edfb28c14cf5ca8e383bcd36e33f27', '2022-06-02 11:06:53.348', '2022-06-02 11:06:53.348', NULL);
INSERT INTO `lin_file` VALUES (77, 'http://file.hahnlis.top/e2ca05215e0f4a6da31833bd0d0d727e.jpeg', 'REMOTE', 'e2ca05215e0f4a6da31833bd0d0d727e.jpeg', '.jpeg', 294361, '256755c3f9546b7e5f77ec532fb33451', '2022-06-02 11:06:53.604', '2022-06-02 11:06:53.604', NULL);
INSERT INTO `lin_file` VALUES (78, 'http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg', 'REMOTE', '1542ad44d04f49b6a137ede42a74d3e4.jpeg', '.jpeg', 19955, 'e02f01f6c729fb8acab2d06127866a59', '2022-06-02 11:08:30.444', '2022-06-02 11:08:30.444', NULL);
INSERT INTO `lin_file` VALUES (79, 'http://file.hahnlis.top/813a136260504b729f4e057a9a30bb69.jpeg', 'REMOTE', '813a136260504b729f4e057a9a30bb69.jpeg', '.jpeg', 484292, 'cda040ff60ae31140e9c8f9557f14783', '2022-06-02 11:08:40.115', '2022-06-02 11:08:40.115', NULL);
INSERT INTO `lin_file` VALUES (80, 'http://file.hahnlis.top/439a1c9c850a476a9158b39c56827d2f.jpeg', 'REMOTE', '439a1c9c850a476a9158b39c56827d2f.jpeg', '.jpeg', 39796, '82289dc6b645ce28c61f8cf88b809d08', '2022-06-02 11:12:56.562', '2022-06-02 11:12:56.562', NULL);
INSERT INTO `lin_file` VALUES (81, 'http://file.hahnlis.top/f4a78692dd5c4098b0af43d23fd77ac6.jpeg', 'REMOTE', 'f4a78692dd5c4098b0af43d23fd77ac6.jpeg', '.jpeg', 27187, 'f6ee80760f8bc2b7f935a61e6d768bbe', '2022-06-02 11:13:00.635', '2022-06-02 11:13:00.635', NULL);
INSERT INTO `lin_file` VALUES (82, 'http://file.hahnlis.top/42954c8d4db048d09bde0d54f89f00ce.jpeg', 'REMOTE', '42954c8d4db048d09bde0d54f89f00ce.jpeg', '.jpeg', 825313, '827cd2ef979a8cf111f66baf3f50fba7', '2022-06-02 11:21:42.099', '2022-06-02 11:21:42.099', NULL);
INSERT INTO `lin_file` VALUES (83, 'http://file.hahnlis.top/7c87b39ae817477590c52a9b37e7cebc.png', 'REMOTE', '7c87b39ae817477590c52a9b37e7cebc.png', '.png', 125769, '15da4fe04b805a8c0a4c6085fa522bf7', '2022-06-02 11:26:49.391', '2022-06-02 11:26:49.391', NULL);
INSERT INTO `lin_file` VALUES (84, 'http://file.hahnlis.top/87a5de48a1584780bd0d8e91bbf917ab.jpeg', 'REMOTE', '87a5de48a1584780bd0d8e91bbf917ab.jpeg', '.jpeg', 156743, '274a2e033fb4fae69a123c42b96412e1', '2022-06-02 11:26:58.399', '2022-06-02 11:26:58.399', NULL);
INSERT INTO `lin_file` VALUES (85, 'http://file.hahnlis.top/71159816690a4947a0f02ff8854c8ee1.png', 'REMOTE', '71159816690a4947a0f02ff8854c8ee1.png', '.png', 5858, 'e349b039fade55ce32af3b141cbeea15', '2022-06-02 11:28:11.143', '2022-06-02 11:28:11.143', NULL);
INSERT INTO `lin_file` VALUES (86, 'http://file.hahnlis.top/a6546840dae94753bc4ce345a583fb30.png', 'REMOTE', 'a6546840dae94753bc4ce345a583fb30.png', '.png', 1431220, '5bea5c8f76582f1aaf54936b9f6277f4', '2022-06-02 11:28:18.019', '2022-06-02 11:28:18.019', NULL);
INSERT INTO `lin_file` VALUES (87, 'http://file.hahnlis.top/66dcfc2a58dd4b508c4ad5a00ccbc378.png', 'REMOTE', '66dcfc2a58dd4b508c4ad5a00ccbc378.png', '.png', 370551, 'd21911aea18764a93fd7ae2bae88ed29', '2022-06-02 11:29:14.742', '2022-06-02 11:29:14.742', NULL);
INSERT INTO `lin_file` VALUES (88, 'http://file.hahnlis.top/2cae0d1e72b343e1ae5bbe327888b8e6.png', 'REMOTE', '2cae0d1e72b343e1ae5bbe327888b8e6.png', '.png', 612578, '52ea552e3d95c8d88a64dab222541c59', '2022-06-02 11:29:21.631', '2022-06-02 11:29:21.631', NULL);
INSERT INTO `lin_file` VALUES (89, 'http://file.hahnlis.top/c073af1e4f4443bc9a49f92aaffb5792.png', 'REMOTE', 'c073af1e4f4443bc9a49f92aaffb5792.png', '.png', 202903, 'f0a9ec3962779b1aa7a1ce878ae48412', '2022-06-02 11:30:11.806', '2022-06-02 11:30:11.806', NULL);
INSERT INTO `lin_file` VALUES (90, 'http://file.hahnlis.top/2b3d6f96103d47ab93c040ef3194b8a9.jpeg', 'REMOTE', '2b3d6f96103d47ab93c040ef3194b8a9.jpeg', '.jpeg', 1129319, '4fdf4826f386177a1fe8e2eb39c37be1', '2022-06-02 11:30:19.034', '2022-06-02 11:30:19.034', NULL);
INSERT INTO `lin_file` VALUES (91, 'http://file.hahnlis.top/9e199084ff7949fd91fab2554a43e8b8.png', 'REMOTE', '9e199084ff7949fd91fab2554a43e8b8.png', '.png', 1384669, 'cff4dc49b9d628f750eb350ad70907fd', '2022-06-02 11:31:05.034', '2022-06-02 11:31:05.034', NULL);
INSERT INTO `lin_file` VALUES (92, 'http://file.hahnlis.top/9e27aa7654584854b8abd3963a6bd549.jpeg', 'REMOTE', '9e27aa7654584854b8abd3963a6bd549.jpeg', '.jpeg', 164788, '943b6b75c9a3943664d8d64a9e44cc71', '2022-06-02 11:36:30.084', '2022-06-02 11:36:30.084', NULL);
INSERT INTO `lin_file` VALUES (93, 'http://file.hahnlis.top/956519737be64874a2982fdb3b05e58c.jpeg', 'REMOTE', '956519737be64874a2982fdb3b05e58c.jpeg', '.jpeg', 335026, '6ec6e882a1d7c2dfd8ded81f6b6f79e6', '2022-06-02 11:42:55.234', '2022-06-02 11:42:55.234', NULL);
INSERT INTO `lin_file` VALUES (94, 'http://file.hahnlis.top/895a75e04c794b119b9c2c51b1aa06df.png', 'REMOTE', '895a75e04c794b119b9c2c51b1aa06df.png', '.png', 8807, 'a1e5f47b5d25d703ffd906b7227e7bd4', '2022-06-02 11:46:04.572', '2022-06-02 11:46:04.572', NULL);
INSERT INTO `lin_file` VALUES (95, 'http://file.hahnlis.top/5715f54a59594dcfbb89f9610ffacff3.png', 'REMOTE', '5715f54a59594dcfbb89f9610ffacff3.png', '.png', 150656, '35c65ff1eaea5684ae9236fc75d6322a', '2022-06-02 11:47:25.374', '2022-06-02 11:47:25.374', NULL);
INSERT INTO `lin_file` VALUES (96, 'http://file.hahnlis.top/c193c213505e42149fcb7ae079311aca.png', 'REMOTE', 'c193c213505e42149fcb7ae079311aca.png', '.png', 106999, '0f643e21bfd3c0e8a20fc31b839917f5', '2022-06-02 11:47:52.013', '2022-06-02 11:47:52.013', NULL);
INSERT INTO `lin_file` VALUES (97, 'http://file.hahnlis.top/254a11da431e44a8884ec0b50192ce56.png', 'REMOTE', '254a11da431e44a8884ec0b50192ce56.png', '.png', 70916, '422ccae44322b385004da5b6c3acd626', '2022-06-02 11:48:12.842', '2022-06-02 11:48:12.842', NULL);
COMMIT;

-- ----------------------------
-- Table structure for lin_group
-- ----------------------------
DROP TABLE IF EXISTS `lin_group`;
CREATE TABLE `lin_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_general_ci NOT NULL COMMENT '分组名称，例如：搬砖者',
  `info` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分组信息：例如：搬砖的人',
  `level` enum('root','guest','user') COLLATE utf8mb4_general_ci DEFAULT 'user' COMMENT '分组级别（root、guest分组只能存在一个）',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_del` (`name`,`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_group
-- ----------------------------
BEGIN;
INSERT INTO `lin_group` VALUES (1, 'root', '超级用户组', 'root', '2022-06-02 08:50:01.254', '2022-06-02 08:50:01.254', NULL);
INSERT INTO `lin_group` VALUES (2, 'guest', '游客组', 'guest', '2022-06-02 08:50:01.255', '2022-06-02 08:50:01.255', NULL);
INSERT INTO `lin_group` VALUES (3, '管理', '管理', 'user', '2022-06-02 11:15:44.414', '2022-06-02 11:15:44.414', NULL);
COMMIT;

-- ----------------------------
-- Table structure for lin_group_permission
-- ----------------------------
DROP TABLE IF EXISTS `lin_group_permission`;
CREATE TABLE `lin_group_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int unsigned NOT NULL COMMENT '分组id',
  `permission_id` int unsigned NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`) USING BTREE COMMENT '联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_group_permission
-- ----------------------------
BEGIN;
INSERT INTO `lin_group_permission` VALUES (9, 3, 1);
INSERT INTO `lin_group_permission` VALUES (12, 3, 2);
INSERT INTO `lin_group_permission` VALUES (19, 3, 3);
INSERT INTO `lin_group_permission` VALUES (17, 3, 4);
INSERT INTO `lin_group_permission` VALUES (37, 3, 5);
INSERT INTO `lin_group_permission` VALUES (23, 3, 6);
INSERT INTO `lin_group_permission` VALUES (34, 3, 7);
INSERT INTO `lin_group_permission` VALUES (35, 3, 8);
INSERT INTO `lin_group_permission` VALUES (13, 3, 9);
INSERT INTO `lin_group_permission` VALUES (4, 3, 10);
INSERT INTO `lin_group_permission` VALUES (29, 3, 11);
INSERT INTO `lin_group_permission` VALUES (5, 3, 12);
INSERT INTO `lin_group_permission` VALUES (6, 3, 13);
INSERT INTO `lin_group_permission` VALUES (26, 3, 14);
INSERT INTO `lin_group_permission` VALUES (30, 3, 15);
INSERT INTO `lin_group_permission` VALUES (40, 3, 16);
INSERT INTO `lin_group_permission` VALUES (41, 3, 17);
INSERT INTO `lin_group_permission` VALUES (20, 3, 18);
INSERT INTO `lin_group_permission` VALUES (27, 3, 19);
INSERT INTO `lin_group_permission` VALUES (14, 3, 20);
INSERT INTO `lin_group_permission` VALUES (31, 3, 21);
INSERT INTO `lin_group_permission` VALUES (18, 3, 22);
INSERT INTO `lin_group_permission` VALUES (21, 3, 23);
INSERT INTO `lin_group_permission` VALUES (32, 3, 24);
INSERT INTO `lin_group_permission` VALUES (1, 3, 25);
INSERT INTO `lin_group_permission` VALUES (15, 3, 26);
INSERT INTO `lin_group_permission` VALUES (8, 3, 27);
INSERT INTO `lin_group_permission` VALUES (33, 3, 28);
INSERT INTO `lin_group_permission` VALUES (7, 3, 29);
INSERT INTO `lin_group_permission` VALUES (28, 3, 30);
INSERT INTO `lin_group_permission` VALUES (24, 3, 31);
INSERT INTO `lin_group_permission` VALUES (16, 3, 32);
INSERT INTO `lin_group_permission` VALUES (38, 3, 33);
INSERT INTO `lin_group_permission` VALUES (10, 3, 34);
INSERT INTO `lin_group_permission` VALUES (42, 3, 35);
INSERT INTO `lin_group_permission` VALUES (2, 3, 36);
INSERT INTO `lin_group_permission` VALUES (11, 3, 37);
INSERT INTO `lin_group_permission` VALUES (3, 3, 38);
INSERT INTO `lin_group_permission` VALUES (39, 3, 39);
INSERT INTO `lin_group_permission` VALUES (36, 3, 40);
INSERT INTO `lin_group_permission` VALUES (22, 3, 41);
INSERT INTO `lin_group_permission` VALUES (25, 3, 42);
COMMIT;

-- ----------------------------
-- Table structure for lin_log
-- ----------------------------
DROP TABLE IF EXISTS `lin_log`;
CREATE TABLE `lin_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(450) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `username` varchar(24) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_code` int DEFAULT NULL,
  `method` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `permission` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_log
-- ----------------------------
BEGIN;
INSERT INTO `lin_log` VALUES (1, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2022-06-02 11:40:04.893', '2022-06-02 11:40:04.893', NULL);
INSERT INTO `lin_log` VALUES (2, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2022-06-02 11:42:18.729', '2022-06-02 11:42:18.729', NULL);
INSERT INTO `lin_log` VALUES (3, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2022-06-02 11:42:23.672', '2022-06-02 11:42:23.672', NULL);
INSERT INTO `lin_log` VALUES (4, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2022-06-02 11:42:57.430', '2022-06-02 11:42:57.430', NULL);
INSERT INTO `lin_log` VALUES (5, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2022-06-02 11:46:14.806', '2022-06-02 11:46:14.806', NULL);
INSERT INTO `lin_log` VALUES (6, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2022-06-02 11:47:26.478', '2022-06-02 11:47:26.478', NULL);
INSERT INTO `lin_log` VALUES (7, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2022-06-02 11:47:53.449', '2022-06-02 11:47:53.449', NULL);
INSERT INTO `lin_log` VALUES (8, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2022-06-02 11:48:16.031', '2022-06-02 11:48:16.031', NULL);
COMMIT;

-- ----------------------------
-- Table structure for lin_permission
-- ----------------------------
DROP TABLE IF EXISTS `lin_permission`;
CREATE TABLE `lin_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限名称，例如：访问首页',
  `module` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限所属模块，例如：人员管理',
  `mount` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0：关闭 1：开启',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_permission
-- ----------------------------
BEGIN;
INSERT INTO `lin_permission` VALUES (1, '删除六宫格', '六宫格', 1, '2022-06-02 08:53:25.145', '2022-06-02 08:53:25.145', NULL);
INSERT INTO `lin_permission` VALUES (2, '删除优惠券', '优惠券', 1, '2022-06-02 08:53:25.176', '2022-06-02 08:53:25.176', NULL);
INSERT INTO `lin_permission` VALUES (3, '创建Banner', 'Banner', 1, '2022-06-02 08:53:25.188', '2022-06-02 08:53:25.188', NULL);
INSERT INTO `lin_permission` VALUES (4, '测试日志记录', '信息', 1, '2022-06-02 08:53:25.209', '2022-06-02 08:53:25.209', NULL);
INSERT INTO `lin_permission` VALUES (5, '更新SKU', 'SKU', 1, '2022-06-02 08:53:25.231', '2022-06-02 08:53:25.231', NULL);
INSERT INTO `lin_permission` VALUES (6, '更新规格名', '规格名', 1, '2022-06-02 08:53:25.245', '2022-06-02 08:53:25.245', NULL);
INSERT INTO `lin_permission` VALUES (7, '更新SPU', 'SPU', 1, '2022-06-02 08:53:25.257', '2022-06-02 08:53:25.257', NULL);
INSERT INTO `lin_permission` VALUES (8, '删除SPU', 'SPU', 1, '2022-06-02 08:53:25.273', '2022-06-02 08:53:25.273', NULL);
INSERT INTO `lin_permission` VALUES (9, '更新优惠券', '优惠券', 1, '2022-06-02 08:53:25.286', '2022-06-02 08:53:25.286', NULL);
INSERT INTO `lin_permission` VALUES (10, '创建Banner item', 'Banner item', 1, '2022-06-02 08:53:25.300', '2022-06-02 08:53:25.300', NULL);
INSERT INTO `lin_permission` VALUES (11, '更新主题', '主题', 1, '2022-06-02 08:53:25.313', '2022-06-02 08:53:25.313', NULL);
INSERT INTO `lin_permission` VALUES (12, '更新Banner item', 'Banner item', 1, '2022-06-02 08:53:25.324', '2022-06-02 08:53:25.324', NULL);
INSERT INTO `lin_permission` VALUES (13, '删除Banner item', 'Banner item', 1, '2022-06-02 08:53:25.340', '2022-06-02 08:53:25.340', NULL);
INSERT INTO `lin_permission` VALUES (14, '删除规格值', '规格值', 1, '2022-06-02 08:53:25.351', '2022-06-02 08:53:25.351', NULL);
INSERT INTO `lin_permission` VALUES (15, '删除专题下的spu', '主题', 1, '2022-06-02 08:53:25.367', '2022-06-02 08:53:25.367', NULL);
INSERT INTO `lin_permission` VALUES (16, '删除分类', '分类', 1, '2022-06-02 08:53:25.381', '2022-06-02 08:53:25.381', NULL);
INSERT INTO `lin_permission` VALUES (17, '更新分类', '分类', 1, '2022-06-02 08:53:25.401', '2022-06-02 08:53:25.401', NULL);
INSERT INTO `lin_permission` VALUES (18, '查询Banner', 'Banner', 1, '2022-06-02 08:53:25.411', '2022-06-02 08:53:25.411', NULL);
INSERT INTO `lin_permission` VALUES (19, '更新规格值', '规格值', 1, '2022-06-02 08:53:25.433', '2022-06-02 08:53:25.433', NULL);
INSERT INTO `lin_permission` VALUES (20, '创建优惠券模板', '优惠券', 1, '2022-06-02 08:53:25.442', '2022-06-02 08:53:25.442', NULL);
INSERT INTO `lin_permission` VALUES (21, '删除主题', '主题', 1, '2022-06-02 08:53:25.452', '2022-06-02 08:53:25.452', NULL);
INSERT INTO `lin_permission` VALUES (22, '查看lin的信息', '信息', 1, '2022-06-02 08:53:25.466', '2022-06-02 08:53:25.466', NULL);
INSERT INTO `lin_permission` VALUES (23, '删除Banner', 'Banner', 1, '2022-06-02 08:53:25.479', '2022-06-02 08:53:25.479', NULL);
INSERT INTO `lin_permission` VALUES (24, '创建专题下的spu', '主题', 1, '2022-06-02 08:53:25.497', '2022-06-02 08:53:25.497', NULL);
INSERT INTO `lin_permission` VALUES (25, '删除活动', '活动', 1, '2022-06-02 08:53:25.510', '2022-06-02 08:53:25.510', NULL);
INSERT INTO `lin_permission` VALUES (26, '更新优惠券模板', '优惠券', 1, '2022-06-02 08:53:25.532', '2022-06-02 08:53:25.532', NULL);
INSERT INTO `lin_permission` VALUES (27, '修改订单状态', '订单', 1, '2022-06-02 08:53:25.547', '2022-06-02 08:53:25.547', NULL);
INSERT INTO `lin_permission` VALUES (28, '创建主题', '主题', 1, '2022-06-02 08:53:25.572', '2022-06-02 08:53:25.572', NULL);
INSERT INTO `lin_permission` VALUES (29, '查询Banner item', 'Banner item', 1, '2022-06-02 08:53:25.587', '2022-06-02 08:53:25.587', NULL);
INSERT INTO `lin_permission` VALUES (30, '创建规格值', '规格值', 1, '2022-06-02 08:53:25.604', '2022-06-02 08:53:25.604', NULL);
INSERT INTO `lin_permission` VALUES (31, '删除规格名', '规格名', 1, '2022-06-02 08:53:25.613', '2022-06-02 08:53:25.613', NULL);
INSERT INTO `lin_permission` VALUES (32, '创建优惠券', '优惠券', 1, '2022-06-02 08:53:25.619', '2022-06-02 08:53:25.619', NULL);
INSERT INTO `lin_permission` VALUES (33, '删除SKU', 'SKU', 1, '2022-06-02 08:53:25.629', '2022-06-02 08:53:25.629', NULL);
INSERT INTO `lin_permission` VALUES (34, '更新六宫格', '六宫格', 1, '2022-06-02 08:53:25.639', '2022-06-02 08:53:25.639', NULL);
INSERT INTO `lin_permission` VALUES (35, '创建分类', '分类', 1, '2022-06-02 08:53:25.665', '2022-06-02 08:53:25.665', NULL);
INSERT INTO `lin_permission` VALUES (36, '创建活动', '活动', 1, '2022-06-02 08:53:25.709', '2022-06-02 08:53:25.709', NULL);
INSERT INTO `lin_permission` VALUES (37, '创建六宫格', '六宫格', 1, '2022-06-02 08:53:25.717', '2022-06-02 08:53:25.717', NULL);
INSERT INTO `lin_permission` VALUES (38, '更新活动', '活动', 1, '2022-06-02 08:53:25.738', '2022-06-02 08:53:25.738', NULL);
INSERT INTO `lin_permission` VALUES (39, '创建SKU', 'SKU', 1, '2022-06-02 08:53:25.752', '2022-06-02 08:53:25.752', NULL);
INSERT INTO `lin_permission` VALUES (40, '创建SPU', 'SPU', 1, '2022-06-02 08:53:25.762', '2022-06-02 08:53:25.762', NULL);
INSERT INTO `lin_permission` VALUES (41, '更新Banner', 'Banner', 1, '2022-06-02 08:53:25.782', '2022-06-02 08:53:25.782', NULL);
INSERT INTO `lin_permission` VALUES (42, '创建规格名', '规格名', 1, '2022-06-02 08:53:25.804', '2022-06-02 08:53:25.804', NULL);
COMMIT;

-- ----------------------------
-- Table structure for lin_user
-- ----------------------------
DROP TABLE IF EXISTS `lin_user`;
CREATE TABLE `lin_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(24) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名，唯一',
  `nickname` varchar(24) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像url',
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_del` (`username`,`delete_time`),
  UNIQUE KEY `email_del` (`email`,`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_user
-- ----------------------------
BEGIN;
INSERT INTO `lin_user` VALUES (1, 'root', 'root', NULL, NULL, '2022-06-02 08:50:01.253', '2022-06-02 08:50:01.253', NULL);
INSERT INTO `lin_user` VALUES (2, 'hahn', NULL, NULL, '253154650@qq.com', '2022-06-02 11:16:02.811', '2022-06-02 11:16:02.811', NULL);
COMMIT;

-- ----------------------------
-- Table structure for lin_user_group
-- ----------------------------
DROP TABLE IF EXISTS `lin_user_group`;
CREATE TABLE `lin_user_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL COMMENT '用户id',
  `group_id` int unsigned NOT NULL COMMENT '分组id',
  PRIMARY KEY (`id`),
  KEY `user_id_group_id` (`user_id`,`group_id`) USING BTREE COMMENT '联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_user_group
-- ----------------------------
BEGIN;
INSERT INTO `lin_user_group` VALUES (1, 1, 1);
INSERT INTO `lin_user_group` VALUES (2, 2, 3);
COMMIT;

-- ----------------------------
-- Table structure for lin_user_identity
-- ----------------------------
DROP TABLE IF EXISTS `lin_user_identity`;
CREATE TABLE `lin_user_identity` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL COMMENT '用户id',
  `identity_type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `credential` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lin_user_identity
-- ----------------------------
BEGIN;
INSERT INTO `lin_user_identity` VALUES (1, 1, 'USERNAME_PASSWORD', 'root', 'pbkdf2sha256:64000:18:24:n:yUnDokcNRbwILZllmUOItIyo9MnI00QW:6ZcPf+sfzyoygOU8h/GSoirF', '2022-06-02 08:50:01.254', '2022-06-02 08:50:01.254', NULL);
INSERT INTO `lin_user_identity` VALUES (2, 2, 'USERNAME_PASSWORD', 'hahn', 'pbkdf2sha256:64000:18:24:n:/q0+iAr1GAnICwxBwXzzfXfNw1emV/Wx:ixP8rAe9YvkWITb5AuU9Sek0', '2022-06-02 11:16:03.067', '2022-06-02 11:16:03.067', NULL);
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL COMMENT 'user表外键',
  `total_price` decimal(10,2) DEFAULT '0.00',
  `total_count` int unsigned DEFAULT '0',
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `expired_time` datetime(3) DEFAULT NULL,
  `placed_time` datetime(3) DEFAULT NULL,
  `snap_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `snap_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `snap_items` json DEFAULT NULL,
  `snap_address` json DEFAULT NULL,
  `prepay_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `final_total_price` decimal(10,2) DEFAULT NULL,
  `status` tinyint unsigned DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_order_no` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES (1, '2022627411111718', 1, 399.90, 1, '2022-06-02 12:54:34.149', NULL, '2022-06-02 12:54:35.443', '2022-06-02 13:54:34.119', '2022-06-02 12:54:34.119', 'http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg', '百搭女鞋子-黑36', '[{\"id\": 20, \"img\": \"http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg\", \"count\": 1, \"title\": \"百搭女鞋子-黑36\", \"spu_id\": 8, \"final_price\": 399.9, \"spec_values\": [\"36\"], \"single_price\": 399.9}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', 'wx021254353066581e1b0864e6a1a63a0000', 399.90, 1);
INSERT INTO `order` VALUES (2, '2022621321521652', 1, 0.01, 1, '2022-06-02 13:23:33.244', NULL, '2022-06-02 13:23:33.970', '2022-06-02 14:23:33.218', '2022-06-02 13:23:33.218', 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 'test', '[{\"id\": 24, \"img\": \"http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png\", \"count\": 1, \"title\": \"test\", \"spu_id\": 10, \"final_price\": 0.01, \"spec_values\": [], \"single_price\": 0.01}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', 'wx021323338660730bb9e4e3f547e6140000', 0.01, 1);
INSERT INTO `order` VALUES (3, '2022627105606128', 1, 0.01, 1, '2022-06-02 13:26:11.094', NULL, '2022-06-02 13:26:20.288', '2022-06-02 14:26:11.061', '2022-06-02 13:26:11.061', 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 'test', '[{\"id\": 24, \"img\": \"http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png\", \"count\": 1, \"title\": \"test\", \"spu_id\": 10, \"final_price\": 0.01, \"spec_values\": [], \"single_price\": 0.01}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', 'wx0213261178452418bae318a1299aab0000', 0.01, 2);
COMMIT;

-- ----------------------------
-- Table structure for sale_explain
-- ----------------------------
DROP TABLE IF EXISTS `sale_explain`;
CREATE TABLE `sale_explain` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fixed` tinyint unsigned DEFAULT '0',
  `text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `spu_id` int DEFAULT NULL,
  `index` int unsigned DEFAULT NULL,
  `replace_id` int unsigned DEFAULT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sale_explain
-- ----------------------------
BEGIN;
INSERT INTO `sale_explain` VALUES (1, 1, '发货地：上海', NULL, 1, NULL, '2019-08-17 04:59:44.000', NULL, '2019-08-17 04:59:44.000');
INSERT INTO `sale_explain` VALUES (2, 1, '物流：顺丰', NULL, 2, NULL, '2019-08-17 04:59:44.000', NULL, '2019-08-17 05:00:27.000');
INSERT INTO `sale_explain` VALUES (3, 1, '发货时间：七个工作日', NULL, 3, NULL, '2019-08-17 04:59:44.000', NULL, '2019-08-17 05:00:29.000');
INSERT INTO `sale_explain` VALUES (4, 1, '售后：不支持7天无理由退货', NULL, 4, NULL, '2019-08-17 04:59:44.000', NULL, '2019-09-10 12:17:04.000');
COMMIT;

-- ----------------------------
-- Table structure for sku
-- ----------------------------
DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) unsigned NOT NULL,
  `rate_price` decimal(10,2) unsigned DEFAULT NULL,
  `online` tinyint unsigned NOT NULL DEFAULT '1',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `spu_id` int unsigned NOT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `specs` json DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stock` int unsigned NOT NULL DEFAULT '0',
  `category_id` int unsigned DEFAULT NULL,
  `root_category_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sku
-- ----------------------------
BEGIN;
INSERT INTO `sku` VALUES (1, 19.90, 15.90, 1, 'http://file.hahnlis.top/d7d3f141bd95423dbd6723ea1b12b9fe.jpg', '麻布手包-女孩', 2, '2022-06-02 10:39:44.879', '2022-06-02 10:39:44.879', NULL, '[{\"key\": \"包包分类\", \"value\": \"女孩\", \"key_id\": 3, \"value_id\": 20}]', '2$3-20', 999999, 23, 3);
INSERT INTO `sku` VALUES (2, 19.90, NULL, 1, 'http://file.hahnlis.top/f307235dd9bc4318b2f8f3b5a0f75e8c.jpg', '麻布手包-草莓', 2, '2022-06-02 10:40:18.571', '2022-06-02 10:40:18.571', NULL, '[{\"key\": \"包包分类\", \"value\": \"草莓\", \"key_id\": 3, \"value_id\": 21}]', '2$3-21', 999999, 23, 3);
INSERT INTO `sku` VALUES (3, 19.90, NULL, 1, 'http://file.hahnlis.top/973dac7c752b47e18da2c14aba3cc977.jpg', '麻布手包-鸟', 2, '2022-06-02 10:40:47.774', '2022-06-02 10:40:47.774', NULL, '[{\"key\": \"包包分类\", \"value\": \"鸟\", \"key_id\": 3, \"value_id\": 22}]', '2$3-22', 9999999, 23, 3);
INSERT INTO `sku` VALUES (4, 79.90, 71.91, 1, 'http://file.hahnlis.top/7f1eb433ce1e494ea62d6d61a9dbfd41.png', '小熊手包-蓝色', 1, '2022-06-02 10:41:41.144', '2022-06-02 10:41:41.144', NULL, '[{\"key\": \"颜色\", \"value\": \"蓝色\", \"key_id\": 1, \"value_id\": 1}]', '1$1-1', 9999999, 23, 3);
INSERT INTO `sku` VALUES (5, 79.99, NULL, 1, 'http://file.hahnlis.top/1131520f69f24e3fade29033ed1035ff.png', '小熊手包-红色', 1, '2022-06-02 10:42:13.035', '2022-06-02 10:42:13.035', NULL, '[{\"key\": \"颜色\", \"value\": \"红色\", \"key_id\": 1, \"value_id\": 2}]', '1$1-2', 99999999, 23, 3);
INSERT INTO `sku` VALUES (6, 79.90, NULL, 1, 'http://file.hahnlis.top/378f2b97032c4daf8d2a1b6cc345bc2e.png', '小熊手包-黑色', 1, '2022-06-02 10:42:42.883', '2022-06-02 10:42:42.883', NULL, '[{\"key\": \"颜色\", \"value\": \"黑色\", \"key_id\": 1, \"value_id\": 3}]', '1$1-3', 99999999, 23, 3);
INSERT INTO `sku` VALUES (7, 279.90, NULL, 1, 'http://file.hahnlis.top/9b6c8a8398d94cc79da9ae6787a51629.jpg', '便携旅行包-黑色', 3, '2022-06-02 10:50:55.126', '2022-06-02 10:50:55.126', NULL, '[{\"key\": \"颜色\", \"value\": \"黑色\", \"key_id\": 1, \"value_id\": 3}]', '3$1-3', 999999999, 24, 3);
INSERT INTO `sku` VALUES (8, 279.90, NULL, 1, 'http://file.hahnlis.top/90e2e37b49bd46789a9c08a9c183b2dd.jpg', '便携旅行包-青色', 3, '2022-06-02 10:51:28.438', '2022-06-02 10:51:28.438', NULL, '[{\"key\": \"颜色\", \"value\": \"青色\", \"key_id\": 1, \"value_id\": 24}]', '3$1-24', 9999999, 24, 3);
INSERT INTO `sku` VALUES (9, 279.90, NULL, 1, 'http://file.hahnlis.top/6f8f83028eb04dd1a85764b837c7ae72.jpg', '便携旅行包-金色', 3, '2022-06-02 10:51:56.773', '2022-06-02 10:51:56.773', NULL, '[{\"key\": \"颜色\", \"value\": \"金色\", \"key_id\": 1, \"value_id\": 23}]', '3$1-23', 999999999, 24, 3);
INSERT INTO `sku` VALUES (10, 279.90, NULL, 1, 'http://file.hahnlis.top/15bddba309044fcf9743f2f15f3c6c97.jpg', '便携旅行包-米白色', 3, '2022-06-02 10:52:28.825', '2022-06-02 10:52:28.825', NULL, '[{\"key\": \"颜色\", \"value\": \"米白色\", \"key_id\": 1, \"value_id\": 7}]', '3$1-7', 999999, 24, 3);
INSERT INTO `sku` VALUES (11, 49.99, NULL, 1, 'http://file.hahnlis.top/e106a8dff70341b8a487ee41a4df7f0b.jpeg', '网红小包包-老花色', 4, '2022-06-02 10:57:02.410', '2022-06-02 10:57:02.410', NULL, '[{\"key\": \"颜色\", \"value\": \"老花色\", \"key_id\": 1, \"value_id\": 4}]', '4$1-4', 996996, 25, 3);
INSERT INTO `sku` VALUES (12, 49.99, NULL, 1, 'http://file.hahnlis.top/c7cf4a3e84144158b033baec8a07357a.jpeg', '网红小包包-米奇色', 4, '2022-06-02 10:57:31.995', '2022-06-02 10:57:31.995', NULL, '[{\"key\": \"颜色\", \"value\": \"米奇色\", \"key_id\": 1, \"value_id\": 5}]', '4$1-5', 999999, 25, 3);
INSERT INTO `sku` VALUES (13, 49.99, 39.90, 1, 'http://file.hahnlis.top/61b8a00da6864d0eb592f87143fb9936.jpeg', '网红小包包-黄色', 4, '2022-06-02 10:58:57.165', '2022-06-02 10:58:57.165', NULL, '[{\"key\": \"颜色\", \"value\": \"黄色\", \"key_id\": 1, \"value_id\": 6}]', '4$1-6', 9999999, 25, 3);
INSERT INTO `sku` VALUES (14, 3.99, NULL, 1, 'http://file.hahnlis.top/304379fb89504d32990422eb6fb89c10.jpeg', '圆珠笔', 5, '2022-06-02 11:00:44.978', '2022-06-02 11:00:44.978', NULL, '[]', '5$', 99999, 32, 6);
INSERT INTO `sku` VALUES (15, 1999.90, NULL, 1, 'http://file.hahnlis.top/d9c37be65d2944f8a2de268c54e6de1d.jpeg', '春季新款风衣外套女士-米白S', 6, '2022-06-02 11:03:27.731', '2022-06-02 11:03:27.731', NULL, '[{\"key\": \"尺寸\", \"value\": \"S\", \"key_id\": 2, \"value_id\": 9}, {\"key\": \"颜色\", \"value\": \"米白色\", \"key_id\": 1, \"value_id\": 7}]', '6$1-7#2-9', 999999999, 22, 2);
INSERT INTO `sku` VALUES (16, 1999.90, NULL, 1, 'http://file.hahnlis.top/d9c37be65d2944f8a2de268c54e6de1d.jpeg', '春季新款风衣外套女士-米白M', 6, '2022-06-02 11:03:56.321', '2022-06-02 11:03:56.321', NULL, '[{\"key\": \"尺寸\", \"value\": \"M\", \"key_id\": 2, \"value_id\": 10}, {\"key\": \"颜色\", \"value\": \"米白色\", \"key_id\": 1, \"value_id\": 7}]', '6$1-7#2-10', 999999, 22, 2);
INSERT INTO `sku` VALUES (17, 1999.90, NULL, 1, 'http://file.hahnlis.top/f2d97b06cfbc4409b03d5b8b23e54574.jpeg', '春季新款风衣外套女士-米白L', 6, '2022-06-02 11:04:26.089', '2022-06-02 11:04:26.089', NULL, '[{\"key\": \"尺寸\", \"value\": \"L\", \"key_id\": 2, \"value_id\": 11}, {\"key\": \"颜色\", \"value\": \"米白色\", \"key_id\": 1, \"value_id\": 7}]', '6$1-7#2-11', 999999, 22, 2);
INSERT INTO `sku` VALUES (18, 1999.90, NULL, 1, 'http://file.hahnlis.top/19578237262049a1a9daa5b449ef93ec.jpeg', '春季新款风衣外套女士-粉红色L', 6, '2022-06-02 11:04:59.486', '2022-06-02 11:04:59.486', NULL, '[{\"key\": \"尺寸\", \"value\": \"L\", \"key_id\": 2, \"value_id\": 11}, {\"key\": \"颜色\", \"value\": \"粉红色\", \"key_id\": 1, \"value_id\": 8}]', '6$1-8#2-11', 10, 22, 2);
INSERT INTO `sku` VALUES (19, 299.90, NULL, 1, 'http://file.hahnlis.top/9aac9f67f16d4ff49fbd8f740bb66814.jpeg', '夏季新款女装时尚气质收腰显瘦夏天短袖流行裙子', 7, '2022-06-02 11:07:43.195', '2022-06-02 11:07:43.195', NULL, '[]', '7$', 9999999, 21, 2);
INSERT INTO `sku` VALUES (20, 399.90, NULL, 1, 'http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg', '百搭女鞋子-黑36', 8, '2022-06-02 11:10:12.957', '2022-06-02 12:54:34.176', NULL, '[{\"key\": \"尺寸\", \"value\": \"36\", \"key_id\": 2, \"value_id\": 12}]', '8$2-12', 9999998, 13, 1);
INSERT INTO `sku` VALUES (21, 399.90, NULL, 1, 'http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg', '百搭女鞋子-黑37', 8, '2022-06-02 11:11:16.293', '2022-06-02 11:11:16.293', NULL, '[{\"key\": \"尺寸\", \"value\": \"37\", \"key_id\": 2, \"value_id\": 14}]', '8$2-14', 9999999, 13, 1);
INSERT INTO `sku` VALUES (22, 199.90, NULL, 1, 'http://file.hahnlis.top/439a1c9c850a476a9158b39c56827d2f.jpeg', '中跟女鞋-M', 9, '2022-06-02 11:14:11.373', '2022-06-02 11:14:11.373', NULL, '[{\"key\": \"尺寸\", \"value\": \"M\", \"key_id\": 2, \"value_id\": 10}]', '9$2-10', 999999, 13, 1);
INSERT INTO `sku` VALUES (23, 199.90, NULL, 1, 'http://file.hahnlis.top/439a1c9c850a476a9158b39c56827d2f.jpeg', '中跟女鞋-L', 9, '2022-06-02 11:14:29.924', '2022-06-02 11:14:29.924', NULL, '[{\"key\": \"尺寸\", \"value\": \"L\", \"key_id\": 2, \"value_id\": 11}]', '9$2-11', 99999, 13, 1);
INSERT INTO `sku` VALUES (24, 0.01, NULL, 1, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 'test', 10, '2022-06-02 13:23:10.603', '2022-06-02 13:26:11.115', NULL, '[]', '10$', 10000099, 8, 7);
COMMIT;

-- ----------------------------
-- Table structure for sku_spec
-- ----------------------------
DROP TABLE IF EXISTS `sku_spec`;
CREATE TABLE `sku_spec` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int unsigned NOT NULL,
  `sku_id` int unsigned NOT NULL,
  `key_id` int unsigned NOT NULL,
  `value_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sku_spec
-- ----------------------------
BEGIN;
INSERT INTO `sku_spec` VALUES (1, 2, 1, 3, 20);
INSERT INTO `sku_spec` VALUES (2, 2, 2, 3, 21);
INSERT INTO `sku_spec` VALUES (3, 2, 3, 3, 22);
INSERT INTO `sku_spec` VALUES (4, 1, 4, 1, 1);
INSERT INTO `sku_spec` VALUES (5, 1, 5, 1, 2);
INSERT INTO `sku_spec` VALUES (6, 1, 6, 1, 3);
INSERT INTO `sku_spec` VALUES (7, 3, 7, 1, 3);
INSERT INTO `sku_spec` VALUES (8, 3, 8, 1, 24);
INSERT INTO `sku_spec` VALUES (9, 3, 9, 1, 23);
INSERT INTO `sku_spec` VALUES (10, 3, 10, 1, 7);
INSERT INTO `sku_spec` VALUES (11, 4, 11, 1, 4);
INSERT INTO `sku_spec` VALUES (12, 4, 12, 1, 5);
INSERT INTO `sku_spec` VALUES (13, 4, 13, 1, 6);
INSERT INTO `sku_spec` VALUES (14, 6, 15, 2, 9);
INSERT INTO `sku_spec` VALUES (15, 6, 15, 1, 7);
INSERT INTO `sku_spec` VALUES (16, 6, 16, 2, 10);
INSERT INTO `sku_spec` VALUES (17, 6, 16, 1, 7);
INSERT INTO `sku_spec` VALUES (18, 6, 17, 2, 11);
INSERT INTO `sku_spec` VALUES (19, 6, 17, 1, 7);
INSERT INTO `sku_spec` VALUES (20, 6, 18, 2, 11);
INSERT INTO `sku_spec` VALUES (21, 6, 18, 1, 8);
INSERT INTO `sku_spec` VALUES (22, 8, 20, 2, 12);
INSERT INTO `sku_spec` VALUES (23, 8, 21, 2, 14);
INSERT INTO `sku_spec` VALUES (24, 9, 22, 2, 10);
INSERT INTO `sku_spec` VALUES (25, 9, 23, 2, 11);
COMMIT;

-- ----------------------------
-- Table structure for spec_key
-- ----------------------------
DROP TABLE IF EXISTS `spec_key`;
CREATE TABLE `spec_key` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unit` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `standard` tinyint unsigned NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` datetime DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spec_key
-- ----------------------------
BEGIN;
INSERT INTO `spec_key` VALUES (1, '颜色', '色', 1, '2022-06-02 10:07:22', '2022-06-02 10:07:22', NULL, '颜色');
INSERT INTO `spec_key` VALUES (2, '尺寸', '码', 1, '2022-06-02 10:07:44', '2022-06-02 10:07:44', NULL, '尺寸');
INSERT INTO `spec_key` VALUES (3, '包包分类', '类', 1, '2022-06-02 10:33:45', '2022-06-02 10:33:45', NULL, '包包分类');
COMMIT;

-- ----------------------------
-- Table structure for spec_value
-- ----------------------------
DROP TABLE IF EXISTS `spec_value`;
CREATE TABLE `spec_value` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `spec_id` int unsigned NOT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spec_value
-- ----------------------------
BEGIN;
INSERT INTO `spec_value` VALUES (1, '蓝色', 1, '2022-06-02 10:08:51.991', '2022-06-02 10:08:51.991', NULL, '蓝色');
INSERT INTO `spec_value` VALUES (2, '红色', 1, '2022-06-02 10:08:57.779', '2022-06-02 10:08:57.779', NULL, '红色');
INSERT INTO `spec_value` VALUES (3, '黑色', 1, '2022-06-02 10:09:03.036', '2022-06-02 10:09:03.036', NULL, '黑色');
INSERT INTO `spec_value` VALUES (4, '老花色', 1, '2022-06-02 10:09:08.627', '2022-06-02 10:09:08.627', NULL, '老花色');
INSERT INTO `spec_value` VALUES (5, '米奇色', 1, '2022-06-02 10:09:14.399', '2022-06-02 10:09:14.399', NULL, '米奇色');
INSERT INTO `spec_value` VALUES (6, '黄色', 1, '2022-06-02 10:09:21.237', '2022-06-02 10:09:21.237', NULL, '黄色');
INSERT INTO `spec_value` VALUES (7, '米白色', 1, '2022-06-02 10:09:27.140', '2022-06-02 10:09:27.140', NULL, '米白色');
INSERT INTO `spec_value` VALUES (8, '粉红色', 1, '2022-06-02 10:09:33.229', '2022-06-02 10:09:33.229', NULL, '粉红色');
INSERT INTO `spec_value` VALUES (9, 'S', 2, '2022-06-02 10:11:15.922', '2022-06-02 10:11:15.922', NULL, 'S');
INSERT INTO `spec_value` VALUES (10, 'M', 2, '2022-06-02 10:11:22.579', '2022-06-02 10:11:22.579', NULL, 'M');
INSERT INTO `spec_value` VALUES (11, 'L', 2, '2022-06-02 10:11:27.139', '2022-06-02 10:11:27.139', NULL, 'L');
INSERT INTO `spec_value` VALUES (12, '36', 2, '2022-06-02 10:12:11.683', '2022-06-02 10:12:11.683', NULL, '36');
INSERT INTO `spec_value` VALUES (13, 'XS', 2, '2022-06-02 10:12:17.034', '2022-06-02 10:12:19.919', '2022-06-02 10:12:19.000', 'XS');
INSERT INTO `spec_value` VALUES (14, '37', 2, '2022-06-02 10:12:26.040', '2022-06-02 10:12:26.040', NULL, '37');
INSERT INTO `spec_value` VALUES (15, '38', 2, '2022-06-02 10:12:30.433', '2022-06-02 10:12:30.433', NULL, '38');
INSERT INTO `spec_value` VALUES (16, '39', 2, '2022-06-02 10:12:33.974', '2022-06-02 10:12:33.974', NULL, '39');
INSERT INTO `spec_value` VALUES (17, '40', 2, '2022-06-02 10:12:38.656', '2022-06-02 10:12:38.656', NULL, '40');
INSERT INTO `spec_value` VALUES (18, '41', 2, '2022-06-02 10:12:42.207', '2022-06-02 10:12:42.207', NULL, '41');
INSERT INTO `spec_value` VALUES (19, '42', 2, '2022-06-02 10:12:47.707', '2022-06-02 10:12:47.707', NULL, '42');
INSERT INTO `spec_value` VALUES (20, '女孩', 3, '2022-06-02 10:33:57.054', '2022-06-02 10:33:57.054', NULL, '女孩');
INSERT INTO `spec_value` VALUES (21, '草莓', 3, '2022-06-02 10:34:03.988', '2022-06-02 10:34:03.988', NULL, '草莓');
INSERT INTO `spec_value` VALUES (22, '鸟', 3, '2022-06-02 10:35:55.472', '2022-06-02 10:35:55.472', NULL, '鸟');
INSERT INTO `spec_value` VALUES (23, '金色', 1, '2022-06-02 10:47:09.892', '2022-06-02 10:47:09.892', NULL, '金色');
INSERT INTO `spec_value` VALUES (24, '青色', 1, '2022-06-02 10:47:18.847', '2022-06-02 10:47:18.847', NULL, '青色');
COMMIT;

-- ----------------------------
-- Table structure for spu
-- ----------------------------
DROP TABLE IF EXISTS `spu`;
CREATE TABLE `spu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subtitle` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_id` int unsigned NOT NULL,
  `root_category_id` int DEFAULT NULL,
  `online` tinyint unsigned NOT NULL DEFAULT '1',
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `price` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文本型价格，有时候SPU需要展示的是一个范围，或者自定义平均价格',
  `sketch_spec_id` int unsigned DEFAULT NULL COMMENT '某种规格可以直接附加单品图片',
  `default_sku_id` int DEFAULT NULL COMMENT '默认选中的sku',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rate_price` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tags` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_test` tinyint unsigned DEFAULT '0',
  `spu_theme_img` json DEFAULT NULL,
  `for_theme_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spu
-- ----------------------------
BEGIN;
INSERT INTO `spu` VALUES (1, '小熊手包', '小熊依恋女士钱包个性萌趣手拿包化妆包时尚多功能手机小零钱包帆布手包钥匙', 23, 3, 1, '2022-06-02 10:29:37.125', '2022-06-02 10:29:37.125', NULL, '99.99', NULL, NULL, 'http://file.hahnlis.top/7f1eb433ce1e494ea62d6d61a9dbfd41.png', '79.9', '小熊依恋女士钱包个性萌趣手拿包化妆包时尚多功能手机小零钱包帆布手包钥匙', '手包$包', 0, NULL, 'http://file.hahnlis.top/7f1eb433ce1e494ea62d6d61a9dbfd41.png');
INSERT INTO `spu` VALUES (2, '麻布手包', '麻布手包', 23, 3, 1, '2022-06-02 10:37:57.035', '2022-06-02 10:37:57.035', NULL, '29.9', NULL, NULL, 'http://file.hahnlis.top/d7d3f141bd95423dbd6723ea1b12b9fe.jpg', '19.9', '麻布手包', '包$单肩包$手包', 0, NULL, 'http://file.hahnlis.top/d7d3f141bd95423dbd6723ea1b12b9fe.jpg');
INSERT INTO `spu` VALUES (3, '便携旅行包', '便携旅行包', 24, 3, 1, '2022-06-02 10:50:19.021', '2022-06-02 10:50:19.021', NULL, '299.9', NULL, NULL, 'http://file.hahnlis.top/5f219b9857ac40cb849f08bcd1034751.jpg', '279.9', '便携旅行包', '包$旅行包', 0, NULL, 'http://file.hahnlis.top/5f219b9857ac40cb849f08bcd1034751.jpg');
INSERT INTO `spu` VALUES (4, '网红小包包', '网红小包包女新款韩版时尚手机包ins超火百搭链条单肩斜挎包', 25, 3, 1, '2022-06-02 10:55:47.916', '2022-06-02 10:55:47.916', NULL, '59.99', NULL, NULL, 'http://file.hahnlis.top/e106a8dff70341b8a487ee41a4df7f0b.jpeg', '49.99', '网红小包包女新款韩版时尚手机包ins超火百搭链条单肩斜挎包', '单肩包$包', 0, NULL, 'http://file.hahnlis.top/e106a8dff70341b8a487ee41a4df7f0b.jpeg');
INSERT INTO `spu` VALUES (5, '圆珠笔', '圆珠笔', 32, 6, 1, '2022-06-02 11:00:12.350', '2022-06-02 11:00:12.350', NULL, '4.99', NULL, NULL, 'http://file.hahnlis.top/304379fb89504d32990422eb6fb89c10.jpeg', '3.99', '圆珠笔', '圆珠笔$文具', 0, NULL, 'http://file.hahnlis.top/304379fb89504d32990422eb6fb89c10.jpeg');
INSERT INTO `spu` VALUES (6, '春季新款风衣外套女士', '春季新款风衣外套女士修身收腰中长款过膝小个子时尚气质大衣', 22, 2, 1, '2022-06-02 11:02:44.544', '2022-06-02 11:02:44.544', NULL, '1999.9', NULL, NULL, 'http://file.hahnlis.top/19578237262049a1a9daa5b449ef93ec.jpeg', NULL, '春季新款风衣外套女士', '风衣$衣服', 0, NULL, 'http://file.hahnlis.top/19578237262049a1a9daa5b449ef93ec.jpeg');
INSERT INTO `spu` VALUES (7, '夏季新款女装时尚气质收腰显瘦夏天短袖流行裙子', '夏季新款女装时尚气质收腰显瘦夏天短袖流行裙子', 21, 2, 1, '2022-06-02 11:07:04.503', '2022-06-02 11:07:04.503', NULL, '299.9', NULL, NULL, 'http://file.hahnlis.top/9aac9f67f16d4ff49fbd8f740bb66814.jpeg', NULL, '夏季新款女装时尚气质收腰显瘦夏天短袖流行裙子', '连衣裙', 0, NULL, 'http://file.hahnlis.top/9aac9f67f16d4ff49fbd8f740bb66814.jpeg');
INSERT INTO `spu` VALUES (8, '百搭女鞋子', '尖头单鞋春季新款韩版百搭女鞋子 时尚舒适', 13, 1, 1, '2022-06-02 11:08:56.557', '2022-06-02 11:08:56.557', NULL, '399.9', NULL, NULL, 'http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg', NULL, '尖头单鞋春季新款韩版百搭女鞋子 时尚舒适', '鞋', 0, NULL, 'http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg');
INSERT INTO `spu` VALUES (9, '中跟女鞋', '复古飞织中跟女鞋夏新款浅口高跟鞋粗跟豆豆鞋', 13, 1, 1, '2022-06-02 11:13:28.137', '2022-06-02 11:13:28.137', NULL, '199.9', NULL, NULL, 'http://file.hahnlis.top/439a1c9c850a476a9158b39c56827d2f.jpeg', NULL, NULL, '鞋', 0, NULL, 'http://file.hahnlis.top/f4a78692dd5c4098b0af43d23fd77ac6.jpeg');
INSERT INTO `spu` VALUES (10, 'test', 'test', 8, 7, 1, '2022-06-02 13:22:45.268', '2022-06-02 13:22:45.268', NULL, '0.01', NULL, NULL, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', NULL, NULL, 'test', 0, NULL, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png');
COMMIT;

-- ----------------------------
-- Table structure for spu_detail_img
-- ----------------------------
DROP TABLE IF EXISTS `spu_detail_img`;
CREATE TABLE `spu_detail_img` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `spu_id` int unsigned DEFAULT NULL,
  `index` int unsigned NOT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spu_detail_img
-- ----------------------------
BEGIN;
INSERT INTO `spu_detail_img` VALUES (1, 'http://file.hahnlis.top/803a6876a14f4295954d1af0ef0c08a3.jpeg', 1, 0, '2022-06-02 10:29:37.226', '2022-06-02 10:29:37.226', NULL);
INSERT INTO `spu_detail_img` VALUES (2, 'http://file.hahnlis.top/533198b005a945cb92bfd6721277d7b1.jpeg', 1, 1, '2022-06-02 10:29:37.231', '2022-06-02 10:29:37.231', NULL);
INSERT INTO `spu_detail_img` VALUES (3, 'http://file.hahnlis.top/048c3ac40707486e87e62ba46054255d.jpeg', 1, 2, '2022-06-02 10:29:37.233', '2022-06-02 10:29:37.233', NULL);
INSERT INTO `spu_detail_img` VALUES (6, 'http://file.hahnlis.top/94855ee99b5748b8917bf4a833efabca.jpg', 2, 0, '2022-06-02 10:38:52.882', '2022-06-02 10:38:52.882', NULL);
INSERT INTO `spu_detail_img` VALUES (7, 'http://file.hahnlis.top/f555cd4646f74c7b9c395daa37bc1958.jpg', 2, 1, '2022-06-02 10:38:52.883', '2022-06-02 10:38:52.883', NULL);
INSERT INTO `spu_detail_img` VALUES (8, 'http://file.hahnlis.top/deaf2cf043cf4eb0b7158d463e402d89.png', 3, 0, '2022-06-02 10:50:19.068', '2022-06-02 10:50:19.068', NULL);
INSERT INTO `spu_detail_img` VALUES (9, 'http://file.hahnlis.top/cc8fc0882abd412688a6e7dc4a4d2cca.png', 3, 1, '2022-06-02 10:50:19.070', '2022-06-02 10:50:19.070', NULL);
INSERT INTO `spu_detail_img` VALUES (10, 'http://file.hahnlis.top/ef5bc9f1a4784fcba6d770771dc4657a.jpeg', 4, 0, '2022-06-02 10:55:48.015', '2022-06-02 10:55:48.015', NULL);
INSERT INTO `spu_detail_img` VALUES (11, 'http://file.hahnlis.top/d0e84e64b7ac414881edfbca1dcb82d6.jpeg', 4, 1, '2022-06-02 10:55:48.020', '2022-06-02 10:55:48.020', NULL);
INSERT INTO `spu_detail_img` VALUES (12, 'http://file.hahnlis.top/a73f5da97e6b4e01942a2c96b3a1f186.jpeg', 4, 2, '2022-06-02 10:55:48.052', '2022-06-02 10:55:48.052', NULL);
INSERT INTO `spu_detail_img` VALUES (13, 'http://file.hahnlis.top/0b18b58be7914a7f89e68ce820405924.jpeg', 4, 3, '2022-06-02 10:55:48.054', '2022-06-02 10:55:48.054', NULL);
INSERT INTO `spu_detail_img` VALUES (14, 'http://file.hahnlis.top/304379fb89504d32990422eb6fb89c10.jpeg', 5, 0, '2022-06-02 11:00:12.376', '2022-06-02 11:00:12.376', NULL);
INSERT INTO `spu_detail_img` VALUES (15, 'http://file.hahnlis.top/f2d97b06cfbc4409b03d5b8b23e54574.jpeg', 6, 0, '2022-06-02 11:02:44.591', '2022-06-02 11:02:44.591', NULL);
INSERT INTO `spu_detail_img` VALUES (16, 'http://file.hahnlis.top/945adf38619c42d3ab0d4ddbdf8e534d.jpeg', 6, 1, '2022-06-02 11:02:44.592', '2022-06-02 11:02:44.592', NULL);
INSERT INTO `spu_detail_img` VALUES (17, 'http://file.hahnlis.top/6a82059977044f048178edf0556640fe.jpeg', 7, 0, '2022-06-02 11:07:04.519', '2022-06-02 11:07:04.519', NULL);
INSERT INTO `spu_detail_img` VALUES (18, 'http://file.hahnlis.top/45305377dcb84c1ea5e0ecb597eb05a7.jpeg', 7, 1, '2022-06-02 11:07:04.522', '2022-06-02 11:07:04.522', NULL);
INSERT INTO `spu_detail_img` VALUES (19, 'http://file.hahnlis.top/e2ca05215e0f4a6da31833bd0d0d727e.jpeg', 7, 2, '2022-06-02 11:07:04.531', '2022-06-02 11:07:04.531', NULL);
INSERT INTO `spu_detail_img` VALUES (20, 'http://file.hahnlis.top/813a136260504b729f4e057a9a30bb69.jpeg', 8, 0, '2022-06-02 11:08:56.575', '2022-06-02 11:08:56.575', NULL);
INSERT INTO `spu_detail_img` VALUES (21, 'http://file.hahnlis.top/f4a78692dd5c4098b0af43d23fd77ac6.jpeg', 9, 0, '2022-06-02 11:13:28.167', '2022-06-02 11:13:28.167', NULL);
INSERT INTO `spu_detail_img` VALUES (22, 'http://file.hahnlis.top/439a1c9c850a476a9158b39c56827d2f.jpeg', 9, 1, '2022-06-02 11:13:28.171', '2022-06-02 11:13:28.171', NULL);
INSERT INTO `spu_detail_img` VALUES (23, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 10, 0, '2022-06-02 13:22:45.312', '2022-06-02 13:22:45.312', NULL);
COMMIT;

-- ----------------------------
-- Table structure for spu_img
-- ----------------------------
DROP TABLE IF EXISTS `spu_img`;
CREATE TABLE `spu_img` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `spu_id` int unsigned DEFAULT NULL,
  `delete_time` datetime(3) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spu_img
-- ----------------------------
BEGIN;
INSERT INTO `spu_img` VALUES (1, 'http://file.hahnlis.top/7f1eb433ce1e494ea62d6d61a9dbfd41.png', 1, NULL, '2022-06-02 10:29:37.187', '2022-06-02 10:29:37.187');
INSERT INTO `spu_img` VALUES (2, 'http://file.hahnlis.top/fe24da267064402eb3928b8dc7960794.png', 1, NULL, '2022-06-02 10:29:37.193', '2022-06-02 10:29:37.193');
INSERT INTO `spu_img` VALUES (3, 'http://file.hahnlis.top/ac21b38bd3d34bf8bf8753e474a5e01c.png', 1, NULL, '2022-06-02 10:29:37.195', '2022-06-02 10:29:37.195');
INSERT INTO `spu_img` VALUES (6, 'http://file.hahnlis.top/d7d3f141bd95423dbd6723ea1b12b9fe.jpg', 2, NULL, '2022-06-02 10:38:52.874', '2022-06-02 10:38:52.874');
INSERT INTO `spu_img` VALUES (7, 'http://file.hahnlis.top/3477259db80a4de4b22e6234f6b3cf81.jpg', 2, NULL, '2022-06-02 10:38:52.876', '2022-06-02 10:38:52.876');
INSERT INTO `spu_img` VALUES (8, 'http://file.hahnlis.top/deaf2cf043cf4eb0b7158d463e402d89.png', 3, NULL, '2022-06-02 10:50:19.042', '2022-06-02 10:50:19.042');
INSERT INTO `spu_img` VALUES (9, 'http://file.hahnlis.top/15bddba309044fcf9743f2f15f3c6c97.jpg', 3, NULL, '2022-06-02 10:50:19.048', '2022-06-02 10:50:19.048');
INSERT INTO `spu_img` VALUES (10, 'http://file.hahnlis.top/9b6c8a8398d94cc79da9ae6787a51629.jpg', 3, NULL, '2022-06-02 10:50:19.054', '2022-06-02 10:50:19.054');
INSERT INTO `spu_img` VALUES (11, 'http://file.hahnlis.top/6f8f83028eb04dd1a85764b837c7ae72.jpg', 3, NULL, '2022-06-02 10:50:19.058', '2022-06-02 10:50:19.058');
INSERT INTO `spu_img` VALUES (12, 'http://file.hahnlis.top/90e2e37b49bd46789a9c08a9c183b2dd.jpg', 3, NULL, '2022-06-02 10:50:19.062', '2022-06-02 10:50:19.062');
INSERT INTO `spu_img` VALUES (13, 'http://file.hahnlis.top/e106a8dff70341b8a487ee41a4df7f0b.jpeg', 4, NULL, '2022-06-02 10:55:47.954', '2022-06-02 10:55:47.954');
INSERT INTO `spu_img` VALUES (14, 'http://file.hahnlis.top/c7cf4a3e84144158b033baec8a07357a.jpeg', 4, NULL, '2022-06-02 10:55:48.004', '2022-06-02 10:55:48.004');
INSERT INTO `spu_img` VALUES (15, 'http://file.hahnlis.top/61b8a00da6864d0eb592f87143fb9936.jpeg', 4, NULL, '2022-06-02 10:55:48.006', '2022-06-02 10:55:48.006');
INSERT INTO `spu_img` VALUES (16, 'http://file.hahnlis.top/304379fb89504d32990422eb6fb89c10.jpeg', 5, NULL, '2022-06-02 11:00:12.363', '2022-06-02 11:00:12.363');
INSERT INTO `spu_img` VALUES (17, 'http://file.hahnlis.top/19578237262049a1a9daa5b449ef93ec.jpeg', 6, NULL, '2022-06-02 11:02:44.561', '2022-06-02 11:02:44.561');
INSERT INTO `spu_img` VALUES (18, 'http://file.hahnlis.top/d9c37be65d2944f8a2de268c54e6de1d.jpeg', 6, NULL, '2022-06-02 11:02:44.565', '2022-06-02 11:02:44.565');
INSERT INTO `spu_img` VALUES (19, 'http://file.hahnlis.top/9aac9f67f16d4ff49fbd8f740bb66814.jpeg', 7, NULL, '2022-06-02 11:07:04.513', '2022-06-02 11:07:04.513');
INSERT INTO `spu_img` VALUES (20, 'http://file.hahnlis.top/1542ad44d04f49b6a137ede42a74d3e4.jpeg', 8, NULL, '2022-06-02 11:08:56.568', '2022-06-02 11:08:56.568');
INSERT INTO `spu_img` VALUES (21, 'http://file.hahnlis.top/f4a78692dd5c4098b0af43d23fd77ac6.jpeg', 9, NULL, '2022-06-02 11:13:28.151', '2022-06-02 11:13:28.151');
INSERT INTO `spu_img` VALUES (22, 'http://file.hahnlis.top/cae8d24b21964a10bbe88f804e267414.png', 10, NULL, '2022-06-02 13:22:45.305', '2022-06-02 13:22:45.305');
COMMIT;

-- ----------------------------
-- Table structure for spu_key
-- ----------------------------
DROP TABLE IF EXISTS `spu_key`;
CREATE TABLE `spu_key` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int unsigned NOT NULL,
  `spec_key_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spu_key
-- ----------------------------
BEGIN;
INSERT INTO `spu_key` VALUES (1, 1, 1);
INSERT INTO `spu_key` VALUES (3, 2, 3);
INSERT INTO `spu_key` VALUES (4, 3, 1);
INSERT INTO `spu_key` VALUES (5, 4, 1);
INSERT INTO `spu_key` VALUES (6, 6, 2);
INSERT INTO `spu_key` VALUES (7, 6, 1);
INSERT INTO `spu_key` VALUES (8, 8, 2);
INSERT INTO `spu_key` VALUES (9, 9, 2);
COMMIT;

-- ----------------------------
-- Table structure for spu_tag
-- ----------------------------
DROP TABLE IF EXISTS `spu_tag`;
CREATE TABLE `spu_tag` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spu_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中文限制6个，英文限制12个，由逻辑层控制',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `highlight` tinyint unsigned DEFAULT '0',
  `type` tinyint unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tag
-- ----------------------------
BEGIN;
INSERT INTO `tag` VALUES (1, '包', '包', '2022-06-02 10:28:59.554', NULL, '2022-06-02 10:28:59.554', 1, 1);
INSERT INTO `tag` VALUES (2, '文具', '文具', '2022-06-02 10:29:10.796', NULL, '2022-06-02 10:29:10.796', 1, 1);
INSERT INTO `tag` VALUES (3, '手包', '手包', '2022-06-02 10:29:19.829', NULL, '2022-06-02 10:29:19.829', 0, 1);
INSERT INTO `tag` VALUES (4, '单肩包', '单肩包', '2022-06-02 10:36:33.974', NULL, '2022-06-02 10:36:33.974', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `tpl_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `entrance_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `internal_top_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `online` tinyint unsigned DEFAULT '1',
  `spu_id` int DEFAULT NULL,
  `spu_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_id` int DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of theme
-- ----------------------------
BEGIN;
INSERT INTO `theme` VALUES (1, '上新', '春天是播种希望的季节,一颗颗破土而出的种子,正预示着新生命的到来。', 't-1', '2022-06-02 11:26:59.609', 'type-4', '2022-06-02 11:26:59.609', NULL, 'http://file.hahnlis.top/7c87b39ae817477590c52a9b37e7cebc.png', NULL, 'http://file.hahnlis.top/87a5de48a1584780bd0d8e91bbf917ab.jpeg', 'http://file.hahnlis.top/7c87b39ae817477590c52a9b37e7cebc.png', 1, NULL, NULL, NULL, NULL);
INSERT INTO `theme` VALUES (2, '每周上新', '`每周上新`活动#每周都有一款折扣商品，每周都有适合你的唯一专属；每周来逛逛，找到你所喜爱的东西', 't-2', '2022-06-02 11:28:19.421', 'type-3', '2022-06-02 11:28:19.421', NULL, 'http://file.hahnlis.top/71159816690a4947a0f02ff8854c8ee1.png', NULL, 'http://file.hahnlis.top/a6546840dae94753bc4ce345a583fb30.png', 'http://file.hahnlis.top/71159816690a4947a0f02ff8854c8ee1.png', 1, NULL, NULL, NULL, NULL);
INSERT INTO `theme` VALUES (3, '甄选', '甄选', 't-3', '2022-06-02 11:29:23.372', 'type-1', '2022-06-02 11:29:23.372', NULL, 'http://file.hahnlis.top/66dcfc2a58dd4b508c4ad5a00ccbc378.png', NULL, 'http://file.hahnlis.top/2cae0d1e72b343e1ae5bbe327888b8e6.png', 'http://file.hahnlis.top/66dcfc2a58dd4b508c4ad5a00ccbc378.png', 1, NULL, NULL, NULL, NULL);
INSERT INTO `theme` VALUES (4, '时尚穿搭', '帅点才有女朋友', 't-4', '2022-06-02 11:30:20.218', 'type-2', '2022-06-02 11:30:20.218', NULL, 'http://file.hahnlis.top/c073af1e4f4443bc9a49f92aaffb5792.png', NULL, 'http://file.hahnlis.top/2b3d6f96103d47ab93c040ef3194b8a9.jpeg', 'http://file.hahnlis.top/c073af1e4f4443bc9a49f92aaffb5792.png', 1, NULL, NULL, NULL, NULL);
INSERT INTO `theme` VALUES (5, '热卖好评', '热卖好评', 't-5', '2022-06-02 11:31:23.964', 'type-3', '2022-06-02 11:31:23.964', NULL, 'http://file.hahnlis.top/9e199084ff7949fd91fab2554a43e8b8.png', NULL, 'http://file.hahnlis.top/9e199084ff7949fd91fab2554a43e8b8.png', 'http://file.hahnlis.top/9e199084ff7949fd91fab2554a43e8b8.png', 1, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for theme_spu
-- ----------------------------
DROP TABLE IF EXISTS `theme_spu`;
CREATE TABLE `theme_spu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int unsigned NOT NULL,
  `spu_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of theme_spu
-- ----------------------------
BEGIN;
INSERT INTO `theme_spu` VALUES (1, 1, 2);
INSERT INTO `theme_spu` VALUES (2, 1, 1);
INSERT INTO `theme_spu` VALUES (4, 1, 4);
INSERT INTO `theme_spu` VALUES (5, 1, 6);
INSERT INTO `theme_spu` VALUES (6, 1, 7);
INSERT INTO `theme_spu` VALUES (7, 2, 8);
INSERT INTO `theme_spu` VALUES (8, 2, 9);
INSERT INTO `theme_spu` VALUES (9, 3, 6);
INSERT INTO `theme_spu` VALUES (10, 3, 7);
INSERT INTO `theme_spu` VALUES (11, 3, 4);
INSERT INTO `theme_spu` VALUES (12, 3, 2);
INSERT INTO `theme_spu` VALUES (13, 4, 2);
INSERT INTO `theme_spu` VALUES (14, 4, 1);
INSERT INTO `theme_spu` VALUES (15, 4, 8);
INSERT INTO `theme_spu` VALUES (16, 5, 5);
INSERT INTO `theme_spu` VALUES (17, 5, 7);
INSERT INTO `theme_spu` VALUES (18, 5, 8);
INSERT INTO `theme_spu` VALUES (19, 5, 2);
INSERT INTO `theme_spu` VALUES (20, 5, 1);
INSERT INTO `theme_spu` VALUES (21, 5, 9);
INSERT INTO `theme_spu` VALUES (22, 2, 2);
INSERT INTO `theme_spu` VALUES (23, 2, 1);
INSERT INTO `theme_spu` VALUES (24, 2, 3);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nickname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unify_uid` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wx_profile` json DEFAULT NULL,
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_openid` (`openid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'ovC784qaS-IWGr30pVM_XZHuZ0Cc', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 09:05:06.764', '2022-06-02 09:05:06.764', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE `user_coupon` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `coupon_id` int unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1:未使用，2：已使用， 3：已过期',
  `create_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `order_id` int unsigned DEFAULT NULL,
  `update_time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_user_coupon` (`user_id`,`coupon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user_coupon
-- ----------------------------
BEGIN;
INSERT INTO `user_coupon` VALUES (1, 1, 1, 1, '2022-06-02 11:57:32.024', NULL, '2022-06-02 11:57:32.068');
INSERT INTO `user_coupon` VALUES (2, 1, 2, 1, '2022-06-02 11:59:01.980', NULL, '2022-06-02 11:59:02.004');
INSERT INTO `user_coupon` VALUES (3, 1, 3, 1, '2022-06-02 11:59:02.787', NULL, '2022-06-02 11:59:02.806');
INSERT INTO `user_coupon` VALUES (4, 1, 4, 1, '2022-06-02 11:59:03.338', NULL, '2022-06-02 11:59:03.358');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
