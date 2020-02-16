/*
Navicat MySQL Data Transfer

Source Server         : bookstore
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : bs

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2019-03-25 12:02:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) NOT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('2', '222@qq.com', '周', '二珂', 's', '河南省', '上海', '上海', '上海', '123', '中国', '6788');
INSERT INTO `account` VALUES ('3', '234@qq.com', '陈', '一发', 'a', '上海', '重庆', '武隆', '重庆', '321', '中国', '122314');

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('文学', 'V区V2');
INSERT INTO `bannerdata` VALUES ('杂志', 'Z区Z3');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('10', '励志', '励志');
INSERT INTO `category` VALUES ('11', '漫画', '漫画');
INSERT INTO `category` VALUES ('12', '心理学', '心理学');
INSERT INTO `category` VALUES ('13', '摄影', '摄影');
INSERT INTO `category` VALUES ('2', '文学', '文学');
INSERT INTO `category` VALUES ('3', '杂志', '杂志');
INSERT INTO `category` VALUES ('4', '教育', '教育');
INSERT INTO `category` VALUES ('5', '童书', '童书');
INSERT INTO `category` VALUES ('6', '人文社科', '人文社科');
INSERT INTO `category` VALUES ('7', '生活', '生活');
INSERT INTO `category` VALUES ('8', '科技', '科技');
INSERT INTO `category` VALUES ('9', '青春文学', '青春文学');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('10', '634');
INSERT INTO `inventory` VALUES ('100', '860');
INSERT INTO `inventory` VALUES ('102', '870');
INSERT INTO `inventory` VALUES ('103', '900');
INSERT INTO `inventory` VALUES ('104', '700');
INSERT INTO `inventory` VALUES ('105', '600');
INSERT INTO `inventory` VALUES ('106', '560');
INSERT INTO `inventory` VALUES ('107', '320');
INSERT INTO `inventory` VALUES ('108', '350');
INSERT INTO `inventory` VALUES ('109', '760');
INSERT INTO `inventory` VALUES ('11', '42');
INSERT INTO `inventory` VALUES ('110', '860');
INSERT INTO `inventory` VALUES ('111', '780');
INSERT INTO `inventory` VALUES ('112', '870');
INSERT INTO `inventory` VALUES ('113', '900');
INSERT INTO `inventory` VALUES ('114', '700');
INSERT INTO `inventory` VALUES ('115', '600');
INSERT INTO `inventory` VALUES ('116', '560');
INSERT INTO `inventory` VALUES ('12', '435');
INSERT INTO `inventory` VALUES ('13', '325');
INSERT INTO `inventory` VALUES ('14', '540');
INSERT INTO `inventory` VALUES ('15', '323');
INSERT INTO `inventory` VALUES ('16', '330');
INSERT INTO `inventory` VALUES ('17', '320');
INSERT INTO `inventory` VALUES ('18', '350');
INSERT INTO `inventory` VALUES ('19', '760');
INSERT INTO `inventory` VALUES ('2', '200');
INSERT INTO `inventory` VALUES ('20', '860');
INSERT INTO `inventory` VALUES ('21', '780');
INSERT INTO `inventory` VALUES ('22', '870');
INSERT INTO `inventory` VALUES ('23', '900');
INSERT INTO `inventory` VALUES ('24', '700');
INSERT INTO `inventory` VALUES ('25', '600');
INSERT INTO `inventory` VALUES ('26', '560');
INSERT INTO `inventory` VALUES ('27', '450');
INSERT INTO `inventory` VALUES ('28', '340');
INSERT INTO `inventory` VALUES ('29', '540');
INSERT INTO `inventory` VALUES ('3', '199');
INSERT INTO `inventory` VALUES ('30', '540');
INSERT INTO `inventory` VALUES ('31', '340');
INSERT INTO `inventory` VALUES ('32', '540');
INSERT INTO `inventory` VALUES ('33', '540');
INSERT INTO `inventory` VALUES ('34', '440');
INSERT INTO `inventory` VALUES ('35', '300');
INSERT INTO `inventory` VALUES ('36', '120');
INSERT INTO `inventory` VALUES ('37', '320');
INSERT INTO `inventory` VALUES ('38', '350');
INSERT INTO `inventory` VALUES ('39', '760');
INSERT INTO `inventory` VALUES ('4', '321');
INSERT INTO `inventory` VALUES ('40', '860');
INSERT INTO `inventory` VALUES ('41', '780');
INSERT INTO `inventory` VALUES ('42', '870');
INSERT INTO `inventory` VALUES ('43', '900');
INSERT INTO `inventory` VALUES ('44', '700');
INSERT INTO `inventory` VALUES ('45', '600');
INSERT INTO `inventory` VALUES ('46', '560');
INSERT INTO `inventory` VALUES ('47', '450');
INSERT INTO `inventory` VALUES ('48', '340');
INSERT INTO `inventory` VALUES ('49', '540');
INSERT INTO `inventory` VALUES ('5', '322');
INSERT INTO `inventory` VALUES ('50', '540');
INSERT INTO `inventory` VALUES ('51', '340');
INSERT INTO `inventory` VALUES ('52', '540');
INSERT INTO `inventory` VALUES ('53', '540');
INSERT INTO `inventory` VALUES ('54', '440');
INSERT INTO `inventory` VALUES ('55', '300');
INSERT INTO `inventory` VALUES ('56', '120');
INSERT INTO `inventory` VALUES ('57', '320');
INSERT INTO `inventory` VALUES ('58', '350');
INSERT INTO `inventory` VALUES ('59', '760');
INSERT INTO `inventory` VALUES ('6', '222');
INSERT INTO `inventory` VALUES ('60', '860');
INSERT INTO `inventory` VALUES ('61', '780');
INSERT INTO `inventory` VALUES ('62', '870');
INSERT INTO `inventory` VALUES ('63', '900');
INSERT INTO `inventory` VALUES ('64', '700');
INSERT INTO `inventory` VALUES ('65', '600');
INSERT INTO `inventory` VALUES ('66', '560');
INSERT INTO `inventory` VALUES ('67', '450');
INSERT INTO `inventory` VALUES ('68', '340');
INSERT INTO `inventory` VALUES ('69', '540');
INSERT INTO `inventory` VALUES ('7', '222');
INSERT INTO `inventory` VALUES ('70', '540');
INSERT INTO `inventory` VALUES ('71', '340');
INSERT INTO `inventory` VALUES ('72', '540');
INSERT INTO `inventory` VALUES ('73', '540');
INSERT INTO `inventory` VALUES ('74', '440');
INSERT INTO `inventory` VALUES ('75', '300');
INSERT INTO `inventory` VALUES ('76', '120');
INSERT INTO `inventory` VALUES ('77', '320');
INSERT INTO `inventory` VALUES ('78', '350');
INSERT INTO `inventory` VALUES ('79', '760');
INSERT INTO `inventory` VALUES ('8', '432');
INSERT INTO `inventory` VALUES ('80', '860');
INSERT INTO `inventory` VALUES ('81', '780');
INSERT INTO `inventory` VALUES ('82', '870');
INSERT INTO `inventory` VALUES ('83', '900');
INSERT INTO `inventory` VALUES ('84', '700');
INSERT INTO `inventory` VALUES ('85', '600');
INSERT INTO `inventory` VALUES ('86', '560');
INSERT INTO `inventory` VALUES ('87', '450');
INSERT INTO `inventory` VALUES ('88', '340');
INSERT INTO `inventory` VALUES ('89', '540');
INSERT INTO `inventory` VALUES ('9', '345');
INSERT INTO `inventory` VALUES ('90', '540');
INSERT INTO `inventory` VALUES ('91', '340');
INSERT INTO `inventory` VALUES ('92', '540');
INSERT INTO `inventory` VALUES ('93', '540');
INSERT INTO `inventory` VALUES ('94', '440');
INSERT INTO `inventory` VALUES ('95', '300');
INSERT INTO `inventory` VALUES ('96', '120');
INSERT INTO `inventory` VALUES ('97', '320');
INSERT INTO `inventory` VALUES ('98', '350');
INSERT INTO `inventory` VALUES ('99', '760');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lineitem
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipstate` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) NOT NULL,
  `billzip` varchar(20) NOT NULL,
  `billcountry` varchar(20) NOT NULL,
  `courier` varchar(80) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) NOT NULL,
  `billtolastname` varchar(80) NOT NULL,
  `shiptofirstname` varchar(80) NOT NULL,
  `shiptolastname` varchar(80) NOT NULL,
  `creditcard` varchar(80) NOT NULL,
  `exprdate` varchar(7) NOT NULL,
  `cardtype` varchar(80) NOT NULL,
  `locale` varchar(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('100', '10', '哈佛凌晨四点半', '励志');
INSERT INTO `product` VALUES ('102', '10', '大学不迷茫', '励志');
INSERT INTO `product` VALUES ('103', '10', '把时间当朋友', '励志');
INSERT INTO `product` VALUES ('104', '10', '靠自己去成功', '励志');
INSERT INTO `product` VALUES ('105', '10', '学会自己长大', '励志');
INSERT INTO `product` VALUES ('106', '10', '肯定自己', '励志');
INSERT INTO `product` VALUES ('107', '11', '阿衰', '漫画');
INSERT INTO `product` VALUES ('108', '11', '爆笑校园', '漫画');
INSERT INTO `product` VALUES ('109', '11', '大话降龙', '漫画');
INSERT INTO `product` VALUES ('110', '11', '给我来个和尚', '漫画');
INSERT INTO `product` VALUES ('111', '11', '睡不着', '漫画');
INSERT INTO `product` VALUES ('112', '11', '呆头农场', '漫画');
INSERT INTO `product` VALUES ('113', '11', '大话降龙3', '漫画');
INSERT INTO `product` VALUES ('114', '11', '头条都是他', '漫画');
INSERT INTO `product` VALUES ('115', '11', '射雕英雄传', '漫画');
INSERT INTO `product` VALUES ('116', '11', '星太奇', '漫画');
INSERT INTO `product` VALUES ('13', '2', '西游记', '文学');
INSERT INTO `product` VALUES ('14', '2', '红楼梦', '文学');
INSERT INTO `product` VALUES ('15', '2', '三国演义', '文学');
INSERT INTO `product` VALUES ('16', '2', '水浒传', '文学');
INSERT INTO `product` VALUES ('17', '2', '武林外传', '文学');
INSERT INTO `product` VALUES ('18', '2', '孙子兵法', '文学');
INSERT INTO `product` VALUES ('19', '2', '还珠格格', '文学');
INSERT INTO `product` VALUES ('2', '2', '明朝那些事', '文学类');
INSERT INTO `product` VALUES ('20', '2', '追风筝的人', '文学');
INSERT INTO `product` VALUES ('21', '2', '平凡的人生', '文学');
INSERT INTO `product` VALUES ('22', '3', '装男人', '杂志');
INSERT INTO `product` VALUES ('23', '3', 'Time', '杂志');
INSERT INTO `product` VALUES ('24', '3', '时尚周刊', '杂志');
INSERT INTO `product` VALUES ('25', '3', 'Vista看天下', '杂志');
INSERT INTO `product` VALUES ('26', '3', '青年文摘', '杂志');
INSERT INTO `product` VALUES ('27', '3', '意林', '杂志');
INSERT INTO `product` VALUES ('28', '3', '读者', '杂志');
INSERT INTO `product` VALUES ('29', '3', '维多利亚闺蜜秀', '杂志');
INSERT INTO `product` VALUES ('3', '3', '男人装', '杂志类');
INSERT INTO `product` VALUES ('30', '3', '东方时空', '杂志');
INSERT INTO `product` VALUES ('33', '2', '18岁欠我一个姑娘', '文学');
INSERT INTO `product` VALUES ('34', '2', '春风十里不如你', '文学');
INSERT INTO `product` VALUES ('35', '3', '读天下', '杂志');
INSERT INTO `product` VALUES ('36', '3', '看世界', '杂志');
INSERT INTO `product` VALUES ('37', '4', '逻辑思维-见识', '教育');
INSERT INTO `product` VALUES ('38', '4', '世界百科全书', '教育');
INSERT INTO `product` VALUES ('39', '4', '新东方高中英语', '教育');
INSERT INTO `product` VALUES ('40', '4', '生物-高中知识清单', '教育');
INSERT INTO `product` VALUES ('41', '4', '学霸笔记-数学', '教育');
INSERT INTO `product` VALUES ('42', '4', '高中语文知识手册', '教育');
INSERT INTO `product` VALUES ('43', '4', '衡水中学状元笔记', '教育');
INSERT INTO `product` VALUES ('44', '4', '高校心理学教材', '教育');
INSERT INTO `product` VALUES ('45', '4', '新闻写作教程', '教育');
INSERT INTO `product` VALUES ('46', '4', '社会研究方法', '教育');
INSERT INTO `product` VALUES ('47', '5', '小猪佩奇', '童书');
INSERT INTO `product` VALUES ('48', '5', '风筝', '童书');
INSERT INTO `product` VALUES ('49', '5', '小兔朱丽奥', '童书');
INSERT INTO `product` VALUES ('50', '5', '阿凡提', '童书');
INSERT INTO `product` VALUES ('51', '5', '少年读史记', '童书');
INSERT INTO `product` VALUES ('52', '5', '给孩子读书', '童书');
INSERT INTO `product` VALUES ('53', '5', '淘气包马小跳', '童书');
INSERT INTO `product` VALUES ('54', '5', '少年西游记', '童书');
INSERT INTO `product` VALUES ('55', '5', '舒克贝塔传', '童书');
INSERT INTO `product` VALUES ('56', '5', '阿凡提', '童书');
INSERT INTO `product` VALUES ('57', '6', '这个历史挺靠谱', '人文社科');
INSERT INTO `product` VALUES ('58', '6', '晓说', '人文社科');
INSERT INTO `product` VALUES ('59', '6', '知行合一王明阳', '人文社科');
INSERT INTO `product` VALUES ('60', '6', '曾国潘家书', '人文社科');
INSERT INTO `product` VALUES ('61', '6', '上下五千年', '人文社科');
INSERT INTO `product` VALUES ('62', '6', '习近平谈治国理政', '人文社科');
INSERT INTO `product` VALUES ('63', '6', '邓小平时代', '人文社科');
INSERT INTO `product` VALUES ('64', '6', '共产党宣言', '人文社科');
INSERT INTO `product` VALUES ('65', '6', '家国天下', '人文社科');
INSERT INTO `product` VALUES ('66', '6', '中国的和平发展道路', '人文社科');
INSERT INTO `product` VALUES ('67', '7', '人生导师', '生活');
INSERT INTO `product` VALUES ('68', '7', '如何爱孩子', '生活');
INSERT INTO `product` VALUES ('69', '7', '父母的教养', '生活');
INSERT INTO `product` VALUES ('70', '7', '戒掉孩子的拖延症', '生活');
INSERT INTO `product` VALUES ('71', '7', '从小读到大', '生活');
INSERT INTO `product` VALUES ('72', '7', '教养在生活的细节', '生活');
INSERT INTO `product` VALUES ('73', '7', '好妈妈胜过好老师', '生活');
INSERT INTO `product` VALUES ('74', '7', '儿童行为心理学', '生活');
INSERT INTO `product` VALUES ('75', '7', '游戏力', '生活');
INSERT INTO `product` VALUES ('76', '7', '成长比成功更重要', '生活');
INSERT INTO `product` VALUES ('77', '8', '数学之美', '科技');
INSERT INTO `product` VALUES ('78', '8', '数据结构与算法分析', '科技');
INSERT INTO `product` VALUES ('79', '8', '算法竞赛入门经典', '科技');
INSERT INTO `product` VALUES ('80', '8', '大话数据结构', '科技');
INSERT INTO `product` VALUES ('81', '8', '编译原理', '科技');
INSERT INTO `product` VALUES ('82', '8', '计算机科学导论', '科技');
INSERT INTO `product` VALUES ('83', '8', '信息简史', '科技');
INSERT INTO `product` VALUES ('84', '8', '深入式分布缓存', '科技');
INSERT INTO `product` VALUES ('85', '8', '微服务设计', '科技');
INSERT INTO `product` VALUES ('86', '8', '计算机图形学', '科技');
INSERT INTO `product` VALUES ('87', '9', '你那么懂事，一定很辛苦吧', '青春文学');
INSERT INTO `product` VALUES ('88', '9', '全职高手18', '青春文学');
INSERT INTO `product` VALUES ('89', '9', '国家是这样炼成的', '青春文学');
INSERT INTO `product` VALUES ('90', '9', '再会，骄傲小时光', '青春文学');
INSERT INTO `product` VALUES ('91', '9', '我们的少年时代', '青春文学');
INSERT INTO `product` VALUES ('92', '9', '爱你时有风', '青春文学');
INSERT INTO `product` VALUES ('93', '9', '现在是女生时代', '青春文学');
INSERT INTO `product` VALUES ('94', '9', '世界上所有的童话都是写给大人看的', '青春文学');
INSERT INTO `product` VALUES ('95', '9', '花季？雨季', '青春文学');
INSERT INTO `product` VALUES ('96', '9', '别走，万一好笑呢', '青春文学');
INSERT INTO `product` VALUES ('97', '10', '你的孤独，虽败犹荣', '励志');
INSERT INTO `product` VALUES ('98', '10', '你在为谁读书', '励志');
INSERT INTO `product` VALUES ('99', '10', '新100个基本', '励志');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('2', '汉语', '文学', '123', '123');
INSERT INTO `profile` VALUES ('3', '韩语', '杂志', '123', '123');

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signon
-- ----------------------------

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
