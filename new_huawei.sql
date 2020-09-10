/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : new_huawei

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-09-09 09:07:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for telephone
-- ----------------------------
DROP TABLE IF EXISTS `telephone`;
CREATE TABLE `telephone` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `mark` varchar(255) DEFAULT NULL COMMENT '描述',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `logo` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='手机表';

-- ----------------------------
-- Records of telephone
-- ----------------------------
INSERT INTO `telephone` VALUES ('1', '荣耀Play4T', '整点购机赠耳机', '1199.00', '../img/middleimg/shou20.png');
INSERT INTO `telephone` VALUES ('2', '华为畅享20 Pro', '赠华为耳机', '1999.00', '../img/middleimg/shou21.png');
INSERT INTO `telephone` VALUES ('3', '荣耀30s 5G', '8G版限量送音箱', '2399.00', '../img/middleimg/shou23.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'text', 'b59c67bf196a4758191e42f76670ceba');
INSERT INTO `user` VALUES ('2', 'text', 'b59c67bf196a4758191e42f76670ceba');
INSERT INTO `user` VALUES ('3', 'qqq', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('4', 'ert', 'e10adc3949ba59abbe56e057f20f883e');
