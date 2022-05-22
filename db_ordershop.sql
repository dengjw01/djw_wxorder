/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : db_ordershop

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2022-05-22 15:21:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_bigtype
-- ----------------------------
DROP TABLE IF EXISTS `t_bigtype`;
CREATE TABLE `t_bigtype` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_bigtype
-- ----------------------------
INSERT INTO `t_bigtype` VALUES ('1', '特色美食', '特色美食描述', '1.jpg');
INSERT INTO `t_bigtype` VALUES ('2', '主食', null, '2.jpg');
INSERT INTO `t_bigtype` VALUES ('3', '饮料', null, '3.jpg');
INSERT INTO `t_bigtype` VALUES ('4', '小吃', null, '4.jpg');
INSERT INTO `t_bigtype` VALUES ('5', '套餐', null, '5.jpg');
INSERT INTO `t_bigtype` VALUES ('6', '热门', null, '6.jpg');
INSERT INTO `t_bigtype` VALUES ('7', '清淡', null, '7.jpg');
INSERT INTO `t_bigtype` VALUES ('8', '重口', null, '8.jpg');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(300) DEFAULT NULL,
  `userId` varchar(600) DEFAULT NULL,
  `totalPrice` decimal(10,0) DEFAULT NULL,
  `address` varchar(900) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `telNumber` varchar(60) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('10', 'djw20220503050116000000255', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '70', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-03 17:01:16', null, '1');
INSERT INTO `t_order` VALUES ('11', 'djw20220503050348000000288', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '18', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-03 17:03:48', '2022-05-03 17:04:22', '2');
INSERT INTO `t_order` VALUES ('12', 'djw20220503050506000000699', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '43', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-03 17:05:07', '2022-05-03 17:05:34', '3');
INSERT INTO `t_order` VALUES ('13', 'djw20220503101826000000416', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '18', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-03 22:18:26', '2022-05-05 21:22:07', '1');
INSERT INTO `t_order` VALUES ('14', 'djw20220506065901000000831', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '45', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-06 18:59:02', '2022-05-06 21:22:13', '2');
INSERT INTO `t_order` VALUES ('15', 'djw20220506092042000000249', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '60', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-06 21:20:42', '2022-05-06 21:22:20', '4');
INSERT INTO `t_order` VALUES ('16', 'djw20220513084340000000976', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '45', '北京市北京市东城区东华门街道测试', '测试', '111111111', '2022-05-13 20:43:41', null, '1');
INSERT INTO `t_order` VALUES ('17', 'djw20220513085604000000133', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '36', '北京市北京市东城区东华门街道测试', '测试', '111111111', '2022-05-13 20:56:04', null, '1');
INSERT INTO `t_order` VALUES ('18', 'djw20220518115211000000004', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '45', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-18 11:52:11', null, '1');
INSERT INTO `t_order` VALUES ('19', 'djw20220518065243000000733', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '63', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-18 18:52:44', null, '1');
INSERT INTO `t_order` VALUES ('20', 'djw20220518065732000000097', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '36', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-18 18:57:32', null, '1');
INSERT INTO `t_order` VALUES ('21', 'djw20220518070343000000599', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '36', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-18 19:03:44', null, '1');
INSERT INTO `t_order` VALUES ('22', 'djw20220519105707000000417', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '45', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-19 10:57:07', null, '1');
INSERT INTO `t_order` VALUES ('23', 'djw20220519113722000000190', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '90', '广东省广州市海珠区新港中路397号', '张三', '020-81167888', '2022-05-19 11:37:22', null, '1');

-- ----------------------------
-- Table structure for t_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_order_detail`;
CREATE TABLE `t_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mId` int(11) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `goodsNumber` int(11) DEFAULT NULL,
  `goodsPrice` decimal(10,0) DEFAULT NULL,
  `goodsName` varchar(300) DEFAULT NULL,
  `goodsPic` varchar(765) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_order_detail
-- ----------------------------
INSERT INTO `t_order_detail` VALUES ('10', '10', '2', '2', '35', '酸甜排骨', '2.jpg');
INSERT INTO `t_order_detail` VALUES ('11', '11', '4', '1', '18', '菠萝青柠茶', '4.jpg');
INSERT INTO `t_order_detail` VALUES ('12', '12', '4', '1', '18', '菠萝青柠茶', '4.jpg');
INSERT INTO `t_order_detail` VALUES ('13', '12', '3', '1', '25', '麻婆豆腐', '3.jpg');
INSERT INTO `t_order_detail` VALUES ('14', '13', '4', '1', '18', '菠萝青柠茶', '4.jpg');
INSERT INTO `t_order_detail` VALUES ('15', '14', '1', '1', '45', '鱼香肉丝', '1.jpg');
INSERT INTO `t_order_detail` VALUES ('16', '15', '2', '1', '35', '酸甜排骨', '2.jpg');
INSERT INTO `t_order_detail` VALUES ('17', '15', '3', '1', '25', '麻婆豆腐', '3.jpg');
INSERT INTO `t_order_detail` VALUES ('18', '16', '1', '1', '45', '鱼香肉丝', '1.jpg');
INSERT INTO `t_order_detail` VALUES ('19', '17', '4', '2', '18', '菠萝青柠茶', '4.jpg');
INSERT INTO `t_order_detail` VALUES ('20', '18', '1', '1', '45', '鱼香肉丝', '1.jpg');
INSERT INTO `t_order_detail` VALUES ('21', '19', '1', '1', '45', '鱼香肉丝', '1.jpg');
INSERT INTO `t_order_detail` VALUES ('22', '19', '4', '1', '18', '菠萝青柠茶', '4.jpg');
INSERT INTO `t_order_detail` VALUES ('23', '20', '4', '2', '18', '菠萝青柠茶', '4.jpg');
INSERT INTO `t_order_detail` VALUES ('24', '21', '4', '2', '18', '菠萝青柠茶', '4.jpg');
INSERT INTO `t_order_detail` VALUES ('25', '22', '1', '1', '45', '鱼香肉丝', '1.jpg');
INSERT INTO `t_order_detail` VALUES ('26', '23', '1', '2', '45', '鱼香肉丝', '1.jpg');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(128) DEFAULT NULL,
  `proPic` varchar(512) DEFAULT NULL,
  `isHot` bit(1) DEFAULT NULL,
  `isSwiper` bit(1) DEFAULT NULL,
  `swiperPic` varchar(512) DEFAULT NULL,
  `swiperSort` int(16) DEFAULT NULL,
  `typeId` int(16) NOT NULL,
  `hotDateTime` datetime DEFAULT NULL,
  `productIntroImgs` varchar(5000) DEFAULT NULL,
  `productParaImgs` varchar(5000) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '鱼香肉丝', '45.00', '23', '1.jpg', '', '\0', '', null, '1', '2022-04-24 14:50:15', '<img width=\'100%\' src=\'http://192.168.230.1:8080/image/productIntroImgs/1.jpg\'>', null, '本商品由秘制调料制成，美味鲜香');
INSERT INTO `t_product` VALUES ('2', '酸甜排骨', '35.00', '33', '2.jpg', '', '', '2.jpg', '1', '1', '2022-04-24 14:50:21', '<img width=\'100%\' src=\'http://localhost:8080/image/productIntroImgs/2.jpg\'>', null, '酸酸甜甜非常开胃，和夏天很搭哦~');
INSERT INTO `t_product` VALUES ('3', '麻婆豆腐', '25.00', '10', '3.jpg', '', '\0', null, null, '2', '2022-04-26 21:47:02', '<img width=\'100%\' src=\'http://localhost:8080/image/productIntroImgs/3.jpg\'>', null, '材料：豆腐（250克）、牛肉（75克）、花椒粉（3克）等');
INSERT INTO `t_product` VALUES ('4', '菠萝青柠茶', '18.00', '38', '4.jpg', '', '', '1.jpg', '1', '3', '2022-04-26 22:20:32', '<img width=\'100%\' src=\'http://localhost:8080/image/productIntroImgs/4.jpg\'><img width=\'100%\' src=\'http://192.168.230.1:8080/image/productIntroImgs/4.jpg\'>', null, '清爽style~');

-- ----------------------------
-- Table structure for t_product_swiper_image
-- ----------------------------
DROP TABLE IF EXISTS `t_product_swiper_image`;
CREATE TABLE `t_product_swiper_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(765) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_product_swiper_image
-- ----------------------------
INSERT INTO `t_product_swiper_image` VALUES ('1', '1.jpg', '1', '1');
INSERT INTO `t_product_swiper_image` VALUES ('2', '2.jpg', '2', '1');
INSERT INTO `t_product_swiper_image` VALUES ('3', '3.jpg', '1', '3');
INSERT INTO `t_product_swiper_image` VALUES ('4', '4.jpg', '1', '4');
INSERT INTO `t_product_swiper_image` VALUES ('5', '4.jpg', '2', '4');

-- ----------------------------
-- Table structure for t_smalltype
-- ----------------------------
DROP TABLE IF EXISTS `t_smalltype`;
CREATE TABLE `t_smalltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `remark` varchar(765) DEFAULT NULL,
  `bigTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_smalltype
-- ----------------------------
INSERT INTO `t_smalltype` VALUES ('1', '粤菜', '粤菜描述', '1');
INSERT INTO `t_smalltype` VALUES ('2', '川菜', '川菜描述', '1');
INSERT INTO `t_smalltype` VALUES ('3', '果茶', '果茶描述', '3');

-- ----------------------------
-- Table structure for t_wxuserinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_wxuserinfo`;
CREATE TABLE `t_wxuserinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(90) DEFAULT NULL,
  `nickName` varchar(150) DEFAULT NULL,
  `avatarUrl` varchar(600) DEFAULT NULL,
  `registerDate` datetime DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_wxuserinfo
-- ----------------------------
INSERT INTO `t_wxuserinfo` VALUES ('1', 'oKHsy5VuBJlvi2OWMbeZC7nHdbJk', '啾', 'https://thirdwx.qlogo.cn/mmopen/vi_32/cXVvCwiaQ8IO550LjNphKAPHAnuasReqZtp8zTCX00cHXwzbBicmQ1yH0WKiaXuzbibuSE0I5eztQo5xcPKJENHpeQ/132', '2022-04-26 15:14:08', '2022-05-19 11:37:22');
