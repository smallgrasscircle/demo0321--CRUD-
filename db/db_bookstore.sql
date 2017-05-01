/*
Navicat MySQL Data Transfer

Source Server         : zlhdb
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : db_bookstore

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2017-03-21 13:23:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_book`
-- ----------------------------
DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(50) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `pubdate` varchar(50) DEFAULT NULL,
  `yprice` double DEFAULT NULL,
  `tprice` double DEFAULT NULL,
  `tupian` varchar(50) DEFAULT NULL,
  `pingjia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_book
-- ----------------------------
INSERT INTO `tb_book` VALUES ('1', 'Java编程思想（第4版）', '（美）Stanley B. Lippman ，等 著，李师贤，等 译\r\n', '人民邮电出版社  ', '2006年03月', '99', '75.2', '1.jpg', '好');
INSERT INTO `tb_book` VALUES ('2', 'JAVA从入门到精通', '（美）埃克尔 著，陈昊鹏 译    ', '机械工业出版社    ', '2007年06月', '108', '86.4', '2.jpg', '很好');
INSERT INTO `tb_book` VALUES ('3', 'Java核心技术1', '（美）内格尔，（美）埃夫琴，等,黄静，审校 著，李铭 译    ', '清华大学出版社  ', '2010年11月', '140', '112', '3.jpg', '好');
INSERT INTO `tb_book` VALUES ('4', '疯狂Java讲义', '（美）内格尔，（美）埃夫琴，等,黄静，审校 著，李铭 译    ', '清华大学出版社  ', '2010年11月', '140', '112', '4.jpg', '好');
INSERT INTO `tb_book` VALUES ('5', 'Java入门经典', '（美）内格尔，（美）埃夫琴，等,黄静，审校 著，李铭 译    ', '清华大学出版社  ', '2010年11月', '140', '112', '5.jpg', '好');
INSERT INTO `tb_book` VALUES ('6', 'Java核心技术2', '（美）内格尔，（美）埃夫琴，等,黄静，审校 著，李铭 译    ', '清华大学出版社  ', '2010年11月', '140', '112', '6.jpg', '好');
INSERT INTO `tb_book` VALUES ('7', 'Java开发编程实践', '（美）内格尔，（美）埃夫琴，等,黄静，审校 著，李铭 译    ', '清华大学出版社  ', '2010年11月', '140', '112', '7.jpg', '好');
INSERT INTO `tb_book` VALUES ('8', 'efficetive Java中文版', '（美）内格尔，（美）埃夫琴，等,黄静，审校 著，李铭 译    ', '清华大学出版社  ', '2010年11月', '140', '112', '8.jpg', '好');
INSERT INTO `tb_book` VALUES ('9', 'Head First Java', '（美）内格尔，（美）埃夫琴，等,黄静，审校 著，李铭 译    ', '清华大学出版社  ', '2010年11月', '140', '112', '9.jpg', '好');
INSERT INTO `tb_book` VALUES ('10', '深入理解Java虚拟机', '方法', '机械出版社', '2009年3月', '98', '86.4', '10.jpg', null);
INSERT INTO `tb_book` VALUES ('11', 'Java2', '张孝详', '清华大学出版社', null, '33', '25.4', '11.jpg', null);

-- ----------------------------
-- Table structure for `tb_student`
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) DEFAULT NULL,
  `sno` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `myclass` varchar(255) DEFAULT NULL,
  `shengfen` varchar(255) DEFAULT NULL,
  `instesting` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('1', 'zzz', '1437264', '男', '123', '软件学院', '软件151', '浙江', '篮球;足球;羽毛球', '1998-1-1', 'ffffffffffff');
INSERT INTO `tb_student` VALUES ('2', 'aaa', '234', '男', '234234', '3', '9', '安徽', '运动, 阅读', '2017-03-06T00:00:00+08:00', '王二伟');
INSERT INTO `tb_student` VALUES ('3', 'dd ', '45435', '男', '3534', '3', '9', '浙江', '旅游, 运动', '2017-02-26T00:00:00+08:00', 'rtert ');

-- ----------------------------
-- Table structure for `tb_users`
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `myright` int(11) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('1', '张小五', '123', '2', '123456789', 'zs@sina.com', '学生');
INSERT INTO `tb_users` VALUES ('2', 'admin', 'admin', '0', '123456789', 'admin@sian.com', '管理员');
INSERT INTO `tb_users` VALUES ('3', '李四', '123', '1', '123456789', 'ls@sina.com', '教师');
INSERT INTO `tb_users` VALUES ('4', '王五', '123', '2', '123456789', 'ww@sina.com', '学生');
INSERT INTO `tb_users` VALUES ('5', '张丽', '123', '2', '123456789', 'zl@sina.com', '学生');
INSERT INTO `tb_users` VALUES ('6', '老张', '123', '0', '123456789', 'lz@ccit.js.cn', '管理员');
INSERT INTO `tb_users` VALUES ('7', '张三', '123', '1', '123456789', 'zs@sina.com', '教师');
INSERT INTO `tb_users` VALUES ('8', '张四', '123', '2', '123456789', 'zs@sina.com', '学生');
INSERT INTO `tb_users` VALUES ('9', '张武', '123', '2', '123456789', 'zw@sina.com', '学生');
INSERT INTO `tb_users` VALUES ('10', '张小二', '123', '2', '123456789', 'zl@sina.com', '学生');
