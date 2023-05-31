/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : mixed

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2017-05-13 21:26:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_category
-- ----------------------------
DROP TABLE IF EXISTS `m_category`;
CREATE TABLE `m_category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(100) default NULL,
  `cate_pic` varchar(50) default NULL,
  PRIMARY KEY  (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_category
-- ----------------------------
INSERT INTO `m_category` VALUES ('2', '拿铁1', '/images/cate/c2.jpg');
INSERT INTO `m_category` VALUES ('1', '蓝山', '/images/cate/c1.jpg');
INSERT INTO `m_category` VALUES ('3', '卡布奇诺', '/images/cate/c3.jpg');
INSERT INTO `m_category` VALUES ('5', '白咖啡', '/images/cate/c5.jpg');
INSERT INTO `m_category` VALUES ('4', '玛奇朵', '/images/cate/c4.jpg');
INSERT INTO `m_category` VALUES ('6', '美式', '/images/cate/c6.jpg');

-- ----------------------------
-- Table structure for m_coffee
-- ----------------------------
DROP TABLE IF EXISTS `m_coffee`;
CREATE TABLE `m_coffee` (
  `coffee_id` int(11) NOT NULL,
  `cate_id` int(11) default NULL,
  `coffee_name` varchar(50) default NULL,
  `coffee_disc` text,
  `coffee_pic` varchar(50) default NULL,
  `coffee_date` date default NULL,
  PRIMARY KEY  (`coffee_id`),
  KEY `FK_Relationship_5` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_coffee
-- ----------------------------
INSERT INTO `m_coffee` VALUES ('3', '3', '焦糖玛奇朵', '焦糖玛奇朵(英文:Caramel Macchiato)是在香浓热牛奶上加入浓缩咖啡、香草，再淋上纯正焦糖而制成的饮品，融合三种不同口味。Macchiato意大利文，意思是\"烙印\"和\"印染\"，中文音译\"玛奇朵\"。\"Caramel\"意思是焦糖。焦糖玛琪朵，寓意\"甜蜜的印记\"。', '/images/coffee/w3.jpg', '2017-05-09');
INSERT INTO `m_coffee` VALUES ('4', '4', '美式', '\"美式咖啡\"(英文:Americano，意大利语:Caffè Americano)咖啡的一种，是最普通的咖啡。是使用滴滤式咖啡壶所制作出的黑咖啡，又或者是意式浓缩中加入大量的水制成。口味比较淡。因为一般的萃取时间相对较长(大概四五分钟)，所以咖啡因含量较高。', '/images/coffee/w4.jpg', '2017-05-04');
INSERT INTO `m_coffee` VALUES ('5', '1', '白咖啡', '白咖啡是马来西亚的土特产，约有100多年的历史。白咖啡并不是指咖啡的颜色是白色的，而是采用特等Liberica 、Arabica和 Robusta咖啡豆及特级的脱脂奶精原料，经中轻度低温烘培及特殊工艺加工后大量去除咖啡碱，去除高温碳烤所产生的焦苦与酸涩味，将咖啡的苦酸味、咖啡因含量降到最低，不加入任何添加剂来加强味道，甘醇芳香不伤肠胃，保留咖啡原有的色泽和香味，口感爽滑，纯正，颜色比普通咖啡更清淡柔和，淡淡的奶金黄色，味道纯正，故得名为白咖啡。', '/images/coffee/w5.jpg', '2017-05-03');
INSERT INTO `m_coffee` VALUES ('6', '1', '法式', '法式咖啡实际上并没有这样的，或者说是正式的说法，但的确存在，法式咖啡，它是指咖啡一个壶，牛奶一个壶，然后以1：1的比例，同时倒入同一个器具。这个，是法国咖啡的特别之处，你可以将它理解为法式咖啡。', '/images/coffee/w6.jpg', '2017-05-04');
INSERT INTO `m_coffee` VALUES ('7', '2', '卡布奇诺', '卡布奇诺（Cappuccino）——20世纪初，意大利人阿奇加夏发明蒸汽压力咖啡机的同时，也发展出了卡布奇诺咖啡。卡布奇诺是在偏浓的咖啡上，倒入以蒸汽发泡的牛奶。此时咖啡的颜色，就象卡布奇诺教会的修士在深褐色的外衣上覆上一条头巾一样，咖啡因此而得名。传统的卡布奇诺咖啡是三分之一浓缩咖啡，三分之一蒸汽牛奶和三分之一泡沫牛奶，并在上面撒上小颗粒的肉桂粉末。卡布奇诺咖啡的味道很好，但它的名称来历却更有学问，一直是欧美研究文字变迁的最佳体材。Cappuccino此字的历史，足以说明一个字常常会因为看来像某样东西，最后被引申成其它字义，远远超出造字者原先用意。', '/images/coffee/w7.jpg', '2017-05-02');
INSERT INTO `m_coffee` VALUES ('8', '2', '爱尔兰咖啡', '​严谨地说，爱尔兰咖啡是一种含有酒精的咖啡，于1940年由Joseph Sheridan发明。传统上，爱尔兰咖啡是由热咖啡、爱尔兰威士忌、奶油、糖混合搅拌而成。', '/images/coffee/w8.jpg', '2017-05-09');
INSERT INTO `m_coffee` VALUES ('9', '3', '玛莎克兰咖啡', '又称“玛莎克兰咖啡”，酸、甜、苦……诸味俱陈，适合心情特殊的日子或失恋时独自品味……。', '/images/coffee/w9.jpg', '2017-05-03');
INSERT INTO `m_coffee` VALUES ('10', '5', '贵妇人咖啡', '贵妇人咖啡是法国贵妇人最喜欢的早餐饮料。号称能使人“晨起一杯，快乐一整天”，是营养与美味兼而有之的饮料，能使人精力充沛。', '/images/coffee/w10.jpg', '2017-05-02');
INSERT INTO `m_coffee` VALUES ('11', '6', '皇家咖啡', '皇家咖啡，法国皇帝拿破仑最喜欢的咖啡，故以“Royal”为名。上桌时在方糖上淋下白兰地，再点上一朵火苗，华丽幽雅，酒香四溢，确有皇家风范。特色：具有高贵而浪漫的情调，白兰地醇醇的酒香四溢，十分迷人。诀窍：用皇家咖啡钩匙横放杯口，上放方糖，以白兰地淋湿方糖后点火即可饮用。味道：甘、醇、具有白兰地醇美的酒香。', '/images/coffee/w11.jpg', '2017-05-01');
INSERT INTO `m_coffee` VALUES ('12', '4', '维也纳咖啡', '维也纳咖啡(Viennese)乃奥地利最著名的咖啡，是一个名叫爱因·舒伯纳的马车夫发明的，也许是由于这个原因，今天，人们偶尔也会称维也纳咖啡为\"单头马车\"。以浓浓的鲜奶油和巧克力的甜美风味迷倒全球人士。雪白的鲜奶油上，洒落五色缤纷七彩米，扮相非常漂亮;隔着甜甜的巧克力糖浆、冰凉的鲜奶油啜饮滚烫的热咖啡，更是别有风味。', '/images/coffee/w12.jpg', '2017-05-04');
INSERT INTO `m_coffee` VALUES ('1', '1', '卡布奇诺', '卡布奇诺是一种加入以同量的意大利特浓咖啡和蒸汽泡沫牛奶相混合的意大利咖啡。此时咖啡的颜色，就像卡布奇诺教会的修士在深褐色的外衣上覆上一条头巾一样，咖啡因此得名。传统的卡布奇诺咖啡是三分之一浓缩咖啡，三分之一蒸汽牛奶和三分之一泡沫牛奶，并在上面撒上小颗粒的肉桂粉末。', '/images/coffee/w1.jpg', '2017-05-10');
INSERT INTO `m_coffee` VALUES ('2', '2', '猫屎咖啡', '麝香猫咖啡（猫屎咖啡），产于印度尼西亚。是世界上最贵的咖啡之一，每磅的价格高达几百美元，它是由麝香猫的粪便中提取出来后加工完成，麝香猫吃下成熟的咖啡果实，经过消化系统排出体外后，由于经过胃的发酵，产出的咖啡别有一番滋味，成为国际市场上的抢手货。', '/images/coffee/w2.jpg', '2017-05-11');

-- ----------------------------
-- Table structure for m_collection
-- ----------------------------
DROP TABLE IF EXISTS `m_collection`;
CREATE TABLE `m_collection` (
  `coffee_id` char(11) NOT NULL,
  `typ_id` char(10) NOT NULL,
  `cate_id` char(10) NOT NULL,
  `user_id` char(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_collection
-- ----------------------------
INSERT INTO `m_collection` VALUES ('5', '0', '1', '36');
INSERT INTO `m_collection` VALUES ('7', '0', '2', '1');

-- ----------------------------
-- Table structure for m_comment
-- ----------------------------
DROP TABLE IF EXISTS `m_comment`;
CREATE TABLE `m_comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `video_id` int(11) default NULL,
  `comment_content` varchar(200) default NULL,
  `comment_date` date default NULL,
  PRIMARY KEY  (`comment_id`),
  KEY `FK_Relationship_10` (`video_id`),
  KEY `FK_Relationship_11` (`user_id`),
  CONSTRAINT `FK_Relationship_10` FOREIGN KEY (`video_id`) REFERENCES `m_video` (`video_id`),
  CONSTRAINT `FK_Relationship_11` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_comment
-- ----------------------------

-- ----------------------------
-- Table structure for m_information
-- ----------------------------
DROP TABLE IF EXISTS `m_information`;
CREATE TABLE `m_information` (
  `information_id` int(10) default NULL,
  `information_name` varchar(255) default NULL,
  `information_content` varchar(255) default NULL,
  `information_date` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_information
-- ----------------------------
INSERT INTO `m_information` VALUES ('1', '咖啡简介', '咖啡是用经过烘焙的咖啡豆制作出来的饮料，与可可、茶同为流行于世界的主要饮品。', '2017-05-01');
INSERT INTO `m_information` VALUES ('2', '咖啡品种', '咖啡店供应的许多品种咖啡有各种各样的添加调味剂，如巧克力、酒、薄荷、丁香、柠檬汁、奶油等，各民族的人喝咖啡的口味也不同。', '2017-05-02');
INSERT INTO `m_information` VALUES ('3', '咖啡的营养成分', '咖啡含有一定的营养成分。咖啡的烟碱酸含有维他命B，烘焙后的咖啡豆含量更高。并且有游离脂肪酸、咖啡因、单宁酸等。', '2017-05-02');
INSERT INTO `m_information` VALUES ('4', '咖啡的好处', '咖啡对皮肤有益处。咖啡可以促进代谢机能，活络消化器官，对便秘有很大功效。使用咖啡粉洗澡是一种温热疗法，有减肥的作用。饭后喝一杯咖啡还有助于消化。', '2017-05-03');
INSERT INTO `m_information` VALUES ('5', '咖啡的好处', '常喝咖啡可防止放射线伤害。放射线伤害尤其是电器的辐射已成为目前较突出的一种污染。印度笆巴原子研究人员在老鼠实验中得到这一结论，并表示可以应用到人类。', '2017-05-04');
INSERT INTO `m_information` VALUES ('6', '努瓦克咖啡', '努瓦克咖啡是尚存品种中最稀有的咖啡，产于印度尼西亚的苏门答，处理过程是棕榈猫消化等。', '2017-05-04');
INSERT INTO `m_information` VALUES ('7', '猫屎咖啡介绍', '猫屎即猫的粪便。印尼野生麝香猫的粪便，它们只会挑最熟最甜的咖啡豆食用，这本身就是一种自然筛选，其次，当地人发现这些豆子经过猫咪胃的发酵，产出的咖啡比普通的更好喝了。香醇可口的猫屎咖啡渐渐声名远扬，成为国际市场上的抢手货。由于这种咖啡豆在麝香猫的胃酸作用下经过发酵，产出的咖啡豆质地平滑，没有任何苦涩的味道，所以成为国际市场上的抢手货。', '2017-05-04');
INSERT INTO `m_information` VALUES ('8', '象屎咖啡', '象屎咖啡，被称为“黑色象牙”的咖啡豆，是经亚洲象“自然提炼”出来的，咖啡果是在大象肠胃的消化过程中，酶化作用分解了咖啡豆中的蛋白质，因此这种大象便便咖啡口感不苦，具有牛奶巧克力、坚果、以及红浆果和少许香料的芳香。', '2017-05-04');
INSERT INTO `m_information` VALUES ('9', '死亡之愿咖啡', '死亡之愿咖啡（Death Wish Coffee），是美国纽约一家咖啡生产商生产的一种世界上最猛的咖啡，之所以称它“最猛”，是因为其咖啡因含量是普通咖啡豆的四倍。来自美国纽约的咖啡店主布朗研发出一种名为“死亡之愿”(DeathWish)的咖啡，包装印有骷髅头，号称“全球最提神”。它的咖啡因含量是一般咖啡的4倍，更附有健康警告称每天最多喝两杯', '2017-05-04');
INSERT INTO `m_information` VALUES ('10', '拿铁', '拿铁咖啡是意大利浓缩咖啡(Espresso)与牛奶的经典混合，意大利人也很喜欢把拿铁作为早餐的饮料。意大利人早晨的厨房里，照得到阳光的炉子上通常会同时煮着咖啡和牛奶。喝拿铁的意大利人，与其说他们喜欢意大利浓缩咖啡，不如说他们喜欢牛奶，也只有Espresso才能给普普通通的牛奶带来让人难以忘怀的味道。\r\n中文名 拿铁咖啡 外文名 Coffee latte 主要原料 咖啡豆，鲜奶 主要营养成分碳水化合物，蛋白质', '2017-05-04');
INSERT INTO `m_information` VALUES ('11', '土耳其咖啡配制方法', '在奶盆里倒入研细的深煎炒咖啡和肉桂等香料，搅拌均匀，然后倒入锅里，加些水煮沸3次，从火上拿下。待粉末沉淀后，将清澈的液体倒入杯中，这时慢慢加入橙汁和蜂蜜即成。', '2017-05-04');
INSERT INTO `m_information` VALUES ('12', '冰奶油块咖啡配制方法', '在玻璃杯中加入咖啡制成的冰块，倒入加糖煮沸的牛奶，从上面慢慢注入冰冻咖啡，这时牛奶和咖啡分成两层。牛奶泡沫在最上层，撒一些肉桂粉作装饰。', '2017-05-04');
INSERT INTO `m_information` VALUES ('13', '软摩加糖霜咖啡配制方法', '在搅拌器里倒入冰块、冰冻咖啡、巧克力糖浆20毫升、摩加冰激凌充分搅拌混合，但要注意不能混合过头。在玻璃杯边缘涂上巧克力糖浆，看出流痕时，将搅拌器中的混合物倒入，最后在上面装饰一些巧克力屑即成。', '2017-05-04');
INSERT INTO `m_information` VALUES ('14', '摩加冰冻咖啡配制方法', '在搅拌器里放入冰块、冰冻咖啡、巧克力糖浆，加以搅拌，要注意不能搅拌过头。在玻璃杯边缘涂上巧克力糖浆，做出流淌花纹，然后将搅拌器中搅拌好的材料注入，最后削一些巧克力屑作装饰。', '2017-05-04');
INSERT INTO `m_information` VALUES ('15', '蜂蜜冰冻咖啡配制方法', '玻璃杯中放入小碎块冰，倒入冰冻咖啡，在上面浮上奶油，周边撒一些肉桂粉，最后加上蜂蜜。[NextPage]', '2017-05-05');

-- ----------------------------
-- Table structure for m_message
-- ----------------------------
DROP TABLE IF EXISTS `m_message`;
CREATE TABLE `m_message` (
  `message_id` int(10) NOT NULL auto_increment,
  `message_content` varchar(100) NOT NULL,
  `message_userName` varchar(11) NOT NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_message
-- ----------------------------
INSERT INTO `m_message` VALUES ('1', '00', '00');
INSERT INTO `m_message` VALUES ('2', '12', '34');
INSERT INTO `m_message` VALUES ('3', '00', '8');
INSERT INTO `m_message` VALUES ('4', 'asf', '11');
INSERT INTO `m_message` VALUES ('5', '12', '11');
INSERT INTO `m_message` VALUES ('6', '今天是晴天', '11');
INSERT INTO `m_message` VALUES ('7', '哈哈哈哈哈哈', '11');
INSERT INTO `m_message` VALUES ('8', '123', '11');
INSERT INTO `m_message` VALUES ('9', '444', '11');

-- ----------------------------
-- Table structure for m_order
-- ----------------------------
DROP TABLE IF EXISTS `m_order`;
CREATE TABLE `m_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `order_code` varchar(50) default NULL,
  `order_status` int(11) default NULL,
  `order_address` varchar(200) default NULL,
  `order_date` date default NULL,
  `order_postcode` varchar(50) default NULL,
  `order_postname` varchar(50) default NULL,
  PRIMARY KEY  (`order_id`),
  KEY `FK_Relationship_3` (`user_id`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_order
-- ----------------------------

-- ----------------------------
-- Table structure for m_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `m_orderdetail`;
CREATE TABLE `m_orderdetail` (
  `odetail_id` int(11) NOT NULL,
  `wine_id` int(11) default NULL,
  `order_id` int(11) default NULL,
  `tool_id` int(11) default NULL,
  `odetail_name` varchar(100) default NULL,
  `odetail_price` float default NULL,
  `odetail_num` int(11) default NULL,
  `odetail_pic` varchar(50) default NULL,
  PRIMARY KEY  (`odetail_id`),
  KEY `FK_Relationship_14` (`tool_id`),
  KEY `FK_Relationship_4` (`order_id`),
  KEY `FK_Relationship_9` (`wine_id`),
  CONSTRAINT `FK_Relationship_14` FOREIGN KEY (`tool_id`) REFERENCES `m_tool` (`tool_id`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`order_id`) REFERENCES `m_order` (`order_id`),
  CONSTRAINT `FK_Relationship_9` FOREIGN KEY (`wine_id`) REFERENCES `m_wine` (`wine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for m_pic
-- ----------------------------
DROP TABLE IF EXISTS `m_pic`;
CREATE TABLE `m_pic` (
  `pic_id` int(11) NOT NULL,
  `coffee_id` int(11) default NULL,
  `pic_url` varchar(50) default NULL,
  PRIMARY KEY  (`pic_id`),
  KEY `FK_Relationship_6` (`coffee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_pic
-- ----------------------------
INSERT INTO `m_pic` VALUES ('1', '1', '/images/coffee/w1.jpg');
INSERT INTO `m_pic` VALUES ('2', '2', '/images/coffee/w2.jpg');
INSERT INTO `m_pic` VALUES ('3', '3', '/images/coffee/w3.jpg');
INSERT INTO `m_pic` VALUES ('4', '4', '/images/coffee/w4.jpg');
INSERT INTO `m_pic` VALUES ('5', '5', '/images/coffee/w5.jpg');
INSERT INTO `m_pic` VALUES ('6', '6', '/images/coffee/w6.jpg');
INSERT INTO `m_pic` VALUES ('7', '7', '/images/coffee/w7.jpg');
INSERT INTO `m_pic` VALUES ('8', '8', '/images/coffee/w8.jpg');
INSERT INTO `m_pic` VALUES ('9', '9', '/images/coffee/w9.jpg');
INSERT INTO `m_pic` VALUES ('10', '10', '/images/coffee/w10.jpg');
INSERT INTO `m_pic` VALUES ('11', '11', '/images/coffee/w11.jpg');
INSERT INTO `m_pic` VALUES ('12', '12', '/images/coffee/w12.jpg');

-- ----------------------------
-- Table structure for m_tool
-- ----------------------------
DROP TABLE IF EXISTS `m_tool`;
CREATE TABLE `m_tool` (
  `tool_id` int(11) NOT NULL,
  `tool_name` varchar(50) default NULL,
  `tool_price` float default NULL,
  `tool_pic` varchar(50) default NULL,
  PRIMARY KEY  (`tool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_tool
-- ----------------------------

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(20) default NULL,
  `user_pass` varchar(20) default NULL,
  `user_age` varchar(255) default NULL,
  `user_sex` varchar(255) default NULL,
  `usere_email` varchar(255) default NULL,
  `user_rank` tinyint(4) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'admin', 'admin', '22', '0', '123@qq.com', '1');
INSERT INTO `m_user` VALUES ('3', '222', '33', '21', '0', '22', '0');
INSERT INTO `m_user` VALUES ('14', '44', '11', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('15', '55', '11', '21', '0', '22', '0');
INSERT INTO `m_user` VALUES ('35', '00', '00', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('36', '90', '90', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('37', '78', '78', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('38', 'qwe', 'qwe', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('39', 'qq', '11', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('40', '$$$', '11', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('41', '@21weqw14wq', '11', '21', '0', '22', '0');
INSERT INTO `m_user` VALUES ('42', '112312', '@@@', '23', '0', '22', '0');
INSERT INTO `m_user` VALUES ('43', '233', '333', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('44', '1111', '11', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('47', '456', '456', '22', '0', '22', '0');
INSERT INTO `m_user` VALUES ('48', '789', '789', '22', '0', '22', '0');

-- ----------------------------
-- Table structure for m_video
-- ----------------------------
DROP TABLE IF EXISTS `m_video`;
CREATE TABLE `m_video` (
  `video_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `video_content` varchar(200) default NULL,
  `video_disc` text,
  `video_date` date default NULL,
  `video_pic` varchar(200) default NULL,
  `video_name` varchar(200) default NULL,
  `video_user` varchar(300) default NULL,
  `video_descrip` text,
  PRIMARY KEY  (`video_id`),
  KEY `FK_Relationship_2` (`user_id`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_video
-- ----------------------------
INSERT INTO `m_video` VALUES ('1', null, '/images/video/1.mp4', '1', '2017-05-01', '/images/video/video1p.jpg', '', 'David', '');
INSERT INTO `m_video` VALUES ('2', null, '/images/video/2.mp4', '1', '2017-05-02', '/images/video/video2p.png', '', 'David', '');
INSERT INTO `m_video` VALUES ('3', null, '/images/video/3.mp4', '1', '2017-05-05', '/images/video/video3p.png', '', 'Marry', '');
INSERT INTO `m_video` VALUES ('4', null, '/images/video/4.mp4', '1', '2017-05-06', '/images/video/video4p.png', '', 'Jue', '');
INSERT INTO `m_video` VALUES ('5', null, '/images/video/5.mp4', '1', '2017-05-07', '/images/video/video5p.png', '', null, null);
INSERT INTO `m_video` VALUES ('6', null, '/images/video/6.mp4', '1', '2017-05-09', '/images/video/video6p.jpg', '', null, null);
