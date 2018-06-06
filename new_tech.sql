/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : new_tech

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-06 11:48:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill_table
-- ----------------------------
DROP TABLE IF EXISTS `bill_table`;
CREATE TABLE `bill_table` (
  `book_id` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bill_num` varchar(255) NOT NULL,
  PRIMARY KEY (`bill_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_table
-- ----------------------------
INSERT INTO `bill_table` VALUES ('1', '2018-06-06 10:24:02', '58.00', '4', '1528251831000');
INSERT INTO `bill_table` VALUES ('1', '2018-06-06 10:25:14', '58.00', '4', '1528251910000');
INSERT INTO `bill_table` VALUES ('2', '2018-06-06 10:27:04', '39.80', '3', '1528252016000');

-- ----------------------------
-- Table structure for book_details
-- ----------------------------
DROP TABLE IF EXISTS `book_details`;
CREATE TABLE `book_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_details
-- ----------------------------
INSERT INTO `book_details` VALUES ('1', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '周志明', '机械工业出版社', '9787111421900', '58.00', '学习jvm', '计算机');
INSERT INTO `book_details` VALUES ('2', '计算机绘图', '王亮申', '机械工业出版社', '9787111586838', '39.80', '计算机绘图基础性教材', '计算机');
INSERT INTO `book_details` VALUES ('3', 'Android移动应用基础教程', '传智播客高教产品研发部编', '中国铁道出版社', '9787113196202', '29.90', 'Android初学者入门指南', '计算机');
INSERT INTO `book_details` VALUES ('4', 'C Primer Plus', '史蒂芬·普拉达', '人民邮电出版社', '9787115390592', '89.00', 'c语言程序设计现代方法书籍教程C语言从入门到精通', '计算机');
INSERT INTO `book_details` VALUES ('5', 'PHP从入门到精通', '明日科技', ' 清华大学出版社', '9787302457220', '79.80', 'PHP视频自学教程正版书籍程序开发设计环境核心技术基础教程实战 网站编程语言案例分析PHP书籍', '计算机');
INSERT INTO `book_details` VALUES ('6', '帝国的终结', '易中天', '浙江文艺出版社', '9787533940478', '139.00', '中国古代政治制度批判', '政治');
INSERT INTO `book_details` VALUES ('7', '自由与繁荣的国度', '路德维希·冯·米瑟斯', '中国社会科学出版社', '9787500416494', '32.00', '本书为奥地利有名经济学家米瑟斯的代表作之一，反映了作者一贯的基本思想及理论主张。作者坚决反对计划经济，认为计划经济的致命弱点是不能进行成本核算；同时，作者还就他所竭力捍卫的自由主义市场经济的基石——自由主义进行了系统论述，尤其是有关自由主义原则、目的及自由主义的政治、经济政策等多有精辟阐释。', '政治');
INSERT INTO `book_details` VALUES ('8', '旧制度与大革命论', '托克维尔|译者:雅瑟', '中国社会科学出版社', '9787511516411', '58.00', '《旧制度与大革命(论美国的民主插图全译本托克维尔文集)》是托克维尔两本世界性政治学巨著《旧制度与大革命》《论美国的民主》的合集。将托克维尔作品以结集的形式出版，这在中国出版史上还是***。\r\n这本《旧制度与大革命(论美国的民主插图全译本托克维尔文集)》话题性、时政性更强，关心中国命运和前途的人都应该读一读', '政治');
INSERT INTO `book_details` VALUES ('9', '古代人的自由与现代人的自由', '邦雅曼·贡斯当', '上海人民出版社', '9787208135307', '59.00', '对自由的阐释（古代人的自由与现代人的自由），对法国大革命反思（革命的两个阶段），和对极权主义的预见（对卢梭的反对），这是本书极为重要、影响极为深远的三方面内容。', '政治');
INSERT INTO `book_details` VALUES ('10', '中国官僚政治研究', '王亚南', '商务印书馆', '9787100129114', '64.00', '本书作者王亚南先生从经济学的角度来研究中国官僚政治的，经济结构是其研究的逻辑起点。同时，他的视角延伸到社会科学的诸多领域，其整个理论框架，涵盖了政治、经济和文化三大领域，实际上，他把三者作为一个有机联系的整体加以系统的、全面的考察，是融会贯通政治史、经济史和文化史的一次尝试。', '政治');
INSERT INTO `book_details` VALUES ('11', '呼啸山庄', '艾米莉 勃朗特', '译林出版社', '9787544711630', '18.00', '小说描写吉卜赛弃儿希斯克利夫被山庄老主人收养后，因受辱和恋爱不遂．外出致富。回来后对与其女友凯瑟琳结婚的地主林顿及其子女进行报复的故事。全篇充满强烈的反压迫、争幸福的斗争精神，又始终笼罩着离奇、紧张的浪漫气氛。此作品多次被改编成电影作品。', '文学');
INSERT INTO `book_details` VALUES ('12', '复活', '托尔斯泰', '中国文联出版社', '9787519004712', '16.00', '《复活》是托尔斯泰最后一部长篇小说，是作家一生探索和思想的总结，被誉为俄国批判现实主义发展的高峰。', '文学');
INSERT INTO `book_details` VALUES ('13', '老人与海', '海明威', '知识出版社', '9787501592401', '16.00', '该作围绕一位老年古巴渔夫，与一条巨大的马林鱼在离岸很远的湾流中搏斗而展开故事的讲述。它奠定了海明威在世界文学中的突出地位，这篇小说相继获得了1953年美国普利策奖和1954年诺贝尔文学奖。', '文学');
INSERT INTO `book_details` VALUES ('14', '茶花女', '小仲马', '广西师范大学出版社', '9787549597611', '39.80', '《茶花女》是法国作家亚历山大·小仲马创作的长篇小说，也是其代表作。故事讲述了一个青年人与巴黎上流社会一位交际花曲折凄婉的爱情故事。 [1] \r\n作品通过一个妓女的爱情悲剧，揭露了法国七月王朝上流社会的糜烂生活。对贵族资产阶级的虚伪道德提出了血泪控诉。在法国文学史上，这是第一次把妓女作为主角的作品。', '文学');
INSERT INTO `book_details` VALUES ('15', '围城', '钱钟书', '人民文学出版社', '9787020090006', '21.00', '《围城》是钱钟书所著的长篇小说，是中国现代文学史上一部风格独特的讽刺小说。被誉为“新儒林外史”。第一版于1947年由上海晨光出版公司出版。故事主要写抗战初期知识分子的群相。', '文学');
INSERT INTO `book_details` VALUES ('16', '中华成语故事', '李亭', '武汉出版社', '9787558203138', '9.00', '一个成语浓缩一段历史，一个故事演绎一种智慧', '少儿');
INSERT INTO `book_details` VALUES ('17', '十万个为什么', '风车文化', '新世纪出版社', '9787553429847', '18.80', '科学严谨的分类，用贴近孩子心里语言的表达方式为孩子树立一个全方位的知识结构', '少儿');
INSERT INTO `book_details` VALUES ('18', '格林童话', '雅可布·格林和威廉·格林', '上海文化出版社', '9787513120487', '35.00', '它是世界童话的经典之作，自问世以来，在世界各地影响十分广泛。格林兄弟以其丰富的想象、优美的语言给孩子们讲述了一个个神奇而又浪漫的童话故事。在国内，日本，中国台湾也有根据《格林童话》创作的故事集。', '少儿');
INSERT INTO `book_details` VALUES ('19', '安徒生童话', '安徒生', ' 北京联合出版公司', '9787550253360', '16.00', '《安徒生童话》是丹麦作家安徒生创作的童话集，共由166篇故事组成。该作爱憎分明，热情歌颂劳动人民、赞美他们的善良和纯洁的优秀品德；无情地揭露和批判王公贵族们的愚蠢、无能、贪婪和残暴。其中较为闻名的故事有：《小人鱼》、《丑小鸭》、《卖火柴的小女孩》、《拇指姑娘》等。  \r\n《安徒生童话》已经被译为150多种语言出版发行。他的童话故事还激发了大量电影、芭蕾舞剧、舞台剧以及电影动画的制作。 ', '少儿');
INSERT INTO `book_details` VALUES ('20', '希利尔讲艺术史', '希利尔', '上海人民出版社', '9787545600841', '30.00', '本书分为绘画、雕塑和建筑三部分。他不是简单介绍那些赫赫有名的艺术家和他们流传千古的作品，而是通过一个个生活中的小故事，讲述作品诞生的过程——伟大艺术品和伟大的艺术家皆有赖于专注力、热情、天赋和机会，他们背后是一个崇拜艺术、欣赏美的时代。', '少儿');
INSERT INTO `book_details` VALUES ('21', '精神分析引论', '弗洛伊德', '武汉出版社', '9787543082670', '36.00', '《精神分析引论》是奥地利心理学家西格蒙德·弗洛伊德创作的心理学著作，首次出版于1917年。全书共计28讲，对精神分析理论具有全面且系统的概括性论述。', '生活');
INSERT INTO `book_details` VALUES ('22', '心理学与生活', '理查德·格里格 菲利普·津巴多', '人民邮电出版社', '9787115409362', '128.00', '《心理学与生活》是由人民邮电出版社于2003年10月出版的一本教科书，《心理学与生活》一书的作者是理查德·格里格和菲利普·津巴多。  《心理学与生活》是教育部心理指导委员会推荐用书。', '生活');
INSERT INTO `book_details` VALUES ('23', '普通心理学', '彭聃龄', '北京师范大学出版社', ' 9787303002252', '69.00', '这本由孟昭兰主编的教材自1994年第一版问世后，迄今已多次印刷，是深受欢迎的国内普通心理学教材之一', '生活');
INSERT INTO `book_details` VALUES ('24', '自卑与超越', '阿尔弗雷德阿德勒', '民主与建设出版社', '9787513917117', '30.00', '《自卑与超越》是现代社会人类必读的个体心理学经典。 作者阿尔弗雷德·阿德勒通过深入剖析与研究每个人生命中的一系列自卑、不足情结，提供了克服自卑心理，从而化自卑为动力、不断超越自己、追求优越、实现个人与社会和谐发展的有效途径。', '生活');
INSERT INTO `book_details` VALUES ('25', '梦的解析 ', '弗洛依德', '浙江文艺出版社', '9787533945251', '68.00', '梦的解析》（德语：Die Traumdeutung 英文：The Interpretation of Dreams），是奥地利心理学家西格蒙得·弗洛伊德创作的心理学理论著作，又译做《解梦》。\r\n该书开创了弗洛伊德的“梦的解析”理论，被作者本人描述为“理解潜意识心理过程”的捷径。该书引入了本我概念，描述了弗洛伊德的潜意识理论，是用于解析梦，引申到心理学，解读人们的潜意识在梦中的表象。', '生活');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `bill_num` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `credit_card_type` varchar(50) NOT NULL,
  `credit_card_num` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL,
  PRIMARY KEY (`bill_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('1528249122000', '1', '农业银行', 'saasdas', '232');
INSERT INTO `payment` VALUES ('1528249217000', '1', '农业银行', 'asdsa', '232');
INSERT INTO `payment` VALUES ('1528249414000', '1', '农业银行', 'asdas', '232');
INSERT INTO `payment` VALUES ('1528249553000', '1', '农业银行', 'asdas', '232');
INSERT INTO `payment` VALUES ('1528251094000', '1', '农业银行', 'asdas', '232');
INSERT INTO `payment` VALUES ('1528251831000', '1', '农业银行', 'dasdaddasdadasdasas', '232');
INSERT INTO `payment` VALUES ('1528251910000', '1', '农业银行', 'sadasda', '232');
INSERT INTO `payment` VALUES ('1528252016000', '1', '农业银行', 'sadas', '117');

-- ----------------------------
-- Table structure for user_profile
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `user_profile` VALUES ('152210702116', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `user_profile` VALUES ('156', '1', '156', '156', '156', '1', '1', '1', 'nihaoshen@163.com', '18852897377', '1');
INSERT INTO `user_profile` VALUES ('hello', 'nihaoshen', 'ni', 'hao', 'shen', '1', '1', '1', '1563597994@qq.com', '18852861545', '1');
INSERT INTO `user_profile` VALUES ('helloni', '11', '1', '1', '1', '1', '1', '1', 'asdfasdf@163.com', '1231231231', '1');
INSERT INTO `user_profile` VALUES ('pxc', 'pxc', 'sada', 'asdas', 'asdas', 'asdas', 'asdsa', '11', 'sada', 'asda', 'asdsa');
INSERT INTO `user_profile` VALUES ('qwe', 'q', 'qwe', 'qweqwe', 'qweqweqw', 'sa', '1a', '1', '1563597994@qq.com', '1', 'ss');
INSERT INTO `user_profile` VALUES ('re', 'q', 're', 're', 'er', 'q', 'q', '2', '1563597994@qq.com', '18852861545', 'q');
