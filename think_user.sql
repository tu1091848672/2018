/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : thinkphp5

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-11-22 11:45:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `think_user`
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_birth` varchar(255) DEFAULT NULL,
  `user_joinTime` varchar(255) DEFAULT NULL,
  `user_passwd` varchar(255) DEFAULT NULL,
  `user_signature` varchar(255) DEFAULT NULL,
  `user_hobby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES ('1', 'thinkphp', '女', '15700000000', 'emial@email.com', '山东省济南市****路', '1111111', '111111', 'qqq', null, null);
INSERT INTO `think_user` VALUES ('2', 'pangPython', '女', '15700000000', 'email@emial.com', '山东省济南市', '201607096', null, '123456', 'nihao', '上速度速度');
INSERT INTO `think_user` VALUES ('3', 'admin', '女', '15700000000', 'emial@email.com', '山东省济南市****路', '1111111', '111111', 'e10adc3949ba59abbe56e057f20f883e', null, null);
