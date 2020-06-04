/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_recommend_project

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-06-04 10:29:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '动作');
INSERT INTO `category` VALUES ('2', '爱情');
INSERT INTO `category` VALUES ('3', '奇幻');
INSERT INTO `category` VALUES ('4', '历史');
INSERT INTO `category` VALUES ('5', '科幻');
INSERT INTO `category` VALUES ('6', '动画');
INSERT INTO `category` VALUES ('7', '喜剧');
INSERT INTO `category` VALUES ('8', '惊悚');
INSERT INTO `category` VALUES ('9', '犯罪');

-- ----------------------------
-- Table structure for `films`
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(64) DEFAULT NULL,
  `likecnt` int(11) DEFAULT NULL,
  `colcnt` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `digest` varchar(1024) DEFAULT NULL,
  `place` varchar(128) DEFAULT NULL,
  `rank` double DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of films
-- ----------------------------
INSERT INTO `films` VALUES ('1', '文牧野', '66', '34', '2018-07-05 00:00:00', '普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围 饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉 饰）和瑞士正牌医药代表（李乃文 饰）也对其虎视眈眈，生意逐渐变成了一场关于救赎的拉锯战。', '中国大陆', '9', '我不是药神', '1', '/home/img/wbsys.jpg');
INSERT INTO `films` VALUES ('2', '弗兰克·德拉邦特', '27', '23', '1994-09-10 00:00:00', '20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步……', '美国', '9.7', '肖申克的救赎 The Shawshank Redemption ', '1', '/home/img/xskjs.jpg');
INSERT INTO `films` VALUES ('3', '饺子', '44', '12', '2019-07-26 00:00:00', '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？', '中国大陆', '8.5', '哪吒之魔童降世', '1', '/home/img/nzzmtjs.jpg');
INSERT INTO `films` VALUES ('4', '宫崎骏', '89', '0', '2001-07-20 00:00:00', '千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。\r\n　　千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消 失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一份工作才能不被魔法变成别的东西。\r\n　　千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。\r\n　　一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。\r\n　　为了救小白，千寻又踏上了她的冒险之旅。', '日本', '9.4', '千与千寻 千と千尋の神隠し', '1', '/home/img/qyqx.jpg');
INSERT INTO `films` VALUES ('5', '曾国祥', '13', '34', '2019-10-25 00:00:00', '陈念（周冬雨 饰）是一名即将参加高考的高三学生，同校女生胡晓蝶（张艺凡 饰）的跳楼自杀让她的生活陷入了困顿之中。胡晓蝶死后，陈念遭到了以魏莱（周也 饰）为首的三人组的霸凌，魏莱虽然表面上看来是乖巧的优等生，实际上却心思毒辣，胡晓蝶的死和她有着千丝万缕的联系。\r\n　　一次偶然中，陈念邂逅了名为小北（易烊千玺 饰）的小混混，随着时间的推移，心心相惜的两人之间产生了真挚的感情。小北答应陈念在暗中保护她免受魏莱的欺凌，没想到这一决定引发了一连串的连锁反应。负责调查胡晓蝶死因的警官郑易（尹昉 饰）隐隐察觉到校园里的古怪气氛，可他的调查却屡屡遭到校方的阻挠。', '中国大陆', '8.4', '少年的你', '1', '/home/img/sndn.jpg');
INSERT INTO `films` VALUES ('6', '吕克·贝松', '68', '24', '1994-09-14 00:00:00', '里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。\r\n　　女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免……', '法国', '9.4', '这个杀手不太冷 Léon', '1', '/home/img/zgssbtl.jpg');
INSERT INTO `films` VALUES ('7', ' 拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什', '46', '24', '2016-03-04 00:00:00', '故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温 Ginnifer Goodwin 配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？\r\n　　近日里，城中接连发生动物失踪案件，就在全部警员都致力于调查案件真相之时，朱迪却被局长（伊德瑞斯·艾尔巴 Idris Elba 配音）发配成为了一名无足轻重的交警。某日，正在执勤的兔子遇见了名为尼克（杰森·贝特曼 Jason Bateman 配音）的狐狸，两人不打不相识，之后又误打误撞的接受了寻找失踪的水獭先生的任务，如果不能在两天之内找到水獭先生，朱迪就必须自愿离开警局。朱迪找到了尼克，两人联手揭露了一个隐藏在疯狂动物城之中的惊天秘密。', '美国', '9.2', '疯狂动物城 Zootopia', '1', '/home/img/fkdwc.jpg');
INSERT INTO `films` VALUES ('8', ' 詹姆斯·卡梅隆', '36', '56', '1997-12-19 00:00:00', '1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。\r\n　　罗丝厌倦了上流社会虚伪的生活，不愿嫁给卡尔，打算投海自尽，被杰克救起。很快，美丽活泼的罗丝与英俊开朗的杰克相爱，杰克带罗丝参加下等舱的舞会、为她画像，二人的感情逐渐升温。\r\n　　1912年4月14日，星期天晚上，一个风平浪静的夜晚。泰坦尼克号撞上了冰山，“永不沉没的”泰坦尼克号面临沉船的命运，罗丝和杰克刚萌芽的爱情也将经历生死的考验。', '美国', '9.3', '泰坦尼克号', '2', '/home/img/tcnkh.jpg');

-- ----------------------------
-- Table structure for `likes`
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '喜欢id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='喜欢项的表(推荐相关)';

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('1', '2', '1');
INSERT INTO `likes` VALUES ('2', '2', '2');
INSERT INTO `likes` VALUES ('3', '1', '2');
INSERT INTO `likes` VALUES ('4', '1', '1');
INSERT INTO `likes` VALUES ('18', '1', '3');
INSERT INTO `likes` VALUES ('19', '1', '4');
INSERT INTO `likes` VALUES ('20', '1', '7');
INSERT INTO `likes` VALUES ('21', '2', '4');
INSERT INTO `likes` VALUES ('22', '2', '6');
INSERT INTO `likes` VALUES ('23', '2', '7');
INSERT INTO `likes` VALUES ('24', '3', '3');
INSERT INTO `likes` VALUES ('25', '3', '6');
INSERT INTO `likes` VALUES ('26', '3', '1');
INSERT INTO `likes` VALUES ('27', '5', '7');
INSERT INTO `likes` VALUES ('28', '5', '2');
INSERT INTO `likes` VALUES ('29', '6', '1');
INSERT INTO `likes` VALUES ('30', '6', '3');
INSERT INTO `likes` VALUES ('31', '6', '2');
INSERT INTO `likes` VALUES ('32', '5', '1');
INSERT INTO `likes` VALUES ('33', '5', '1');
INSERT INTO `likes` VALUES ('34', '5', '1');
INSERT INTO `likes` VALUES ('35', '5', '1');
INSERT INTO `likes` VALUES ('36', '1', '1');
INSERT INTO `likes` VALUES ('37', '5', '1');
INSERT INTO `likes` VALUES ('38', '5', '2');
INSERT INTO `likes` VALUES ('39', '5', '5');
INSERT INTO `likes` VALUES ('40', '5', '8');
INSERT INTO `likes` VALUES ('41', '5', '2');
INSERT INTO `likes` VALUES ('42', '1', '2');
INSERT INTO `likes` VALUES ('43', '1', '4');
INSERT INTO `likes` VALUES ('44', '1', '4');
INSERT INTO `likes` VALUES ('45', '5', '1');
INSERT INTO `likes` VALUES ('46', '4', '2');
INSERT INTO `likes` VALUES ('47', '4', '3');
INSERT INTO `likes` VALUES ('48', '4', '7');
INSERT INTO `likes` VALUES ('49', '1', '4');
INSERT INTO `likes` VALUES ('50', '1', '5');
INSERT INTO `likes` VALUES ('51', '1', '8');
INSERT INTO `likes` VALUES ('52', '1', '8');
INSERT INTO `likes` VALUES ('53', '1', '8');
INSERT INTO `likes` VALUES ('54', '1', '2');
INSERT INTO `likes` VALUES ('55', '1', '2');
INSERT INTO `likes` VALUES ('56', '1', '2');
INSERT INTO `likes` VALUES ('57', '1', '3');
INSERT INTO `likes` VALUES ('58', '1', '6');
INSERT INTO `likes` VALUES ('59', '1', '8');
INSERT INTO `likes` VALUES ('60', '1', '8');
INSERT INTO `likes` VALUES ('61', '1', '8');
INSERT INTO `likes` VALUES ('62', '1', '3');
INSERT INTO `likes` VALUES ('63', '8', '4');
INSERT INTO `likes` VALUES ('64', '5', '6');
INSERT INTO `likes` VALUES ('65', '5', '7');
INSERT INTO `likes` VALUES ('66', '8', '5');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `major` varchar(20) DEFAULT NULL COMMENT '专业',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '123', null, null);
INSERT INTO `users` VALUES ('2', '57820', '5705', null, null);
INSERT INTO `users` VALUES ('3', '442', '35', 'science', 'a15907120@qq.com');
INSERT INTO `users` VALUES ('4', '2047', '40570', 'science', '41075@qq.com');
INSERT INTO `users` VALUES ('5', 'ss', '123', 'economics', 'ss@qq');
INSERT INTO `users` VALUES ('6', 'aa', '123', 'economics', 'ss@qq');
INSERT INTO `users` VALUES ('7', '15465', '56465', 'economics', '156@qq');
INSERT INTO `users` VALUES ('8', 'zhangli', '123', '信息管理与信息系统', '651297062@qq.com');
INSERT INTO `users` VALUES ('9', 'qwe', '123', '信息管理与信息系统', '651297062@qq.com');
INSERT INTO `users` VALUES ('10', 'zl', '1234567', '信息管理与信息系统', '651297062@qq.com');
