/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.6.10 : Database - tmall-shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tmall-shopping` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tmall-shopping`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地址信息表';

/*Data for the table `address` */

insert  into `address`(`id`,`user_id`,`username`,`useraddress`,`phone`) values 
(1,7,'孙宇波','吉林省长春市朝阳区前进大街2699号','15049328940'),
(2,8,'小明','美国加利福尼亚州','15233695423');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`name`,`avatar`,`role`,`phone`,`email`) values 
(1,'admin','admin','1号管理员','http://localhost:9090/files/1728374050199-admin1.png','ADMIN','15676543780','admin1@admin.sys.ai.cn');

/*Table structure for table `business` */

DROP TABLE IF EXISTS `business`;

CREATE TABLE `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店铺名',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商家介绍',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商家信息表';

/*Data for the table `business` */

insert  into `business`(`id`,`username`,`password`,`name`,`avatar`,`role`,`phone`,`email`,`description`,`status`) values 
(5,'seller1','123456','JLU书店','http://localhost:9090/files/1728373810913-书店.png','BUSINESS','14678659083','book@mails.jlu.edu.cn','本书店是JLU旗下唯一授权的书店，让你畅游在知识的海洋中。','审核通过'),
(6,'seller2','123456','电脑专卖店','http://localhost:9090/files/1728374666481-电脑.png','BUSINESS','14678690086','14678690086@163.com','本店铺经营各种电脑设备，可以在本店内选择大量新款电脑，与时代同步！','审核通过'),
(7,'seller3','123456','智能手机旗舰店','http://localhost:9090/files/1728375772598-手机店.png','BUSINESS','16789605667','phone@gmail.com','本店营销各大品牌手机，同时兼顾智能手机的科技研发','审核通过'),
(8,'seller4','123456','海澜之家—男人的衣柜','http://localhost:9090/files/1728376061653-男装.png','BUSINESS','0472-6758955','manclothes@yiles.us','本店主打高端男士品牌，高端奢侈品！','审核通过'),
(9,'seller5','123456','日用百货店','http://localhost:9090/files/1728376190765-日用品.png','BUSINESS','15567748977','267965503@qq.com','本店销售日用品，常用生活玩具等，为您带来生活体验！','审核通过'),
(10,'seller6','123456','智能家电','http://localhost:9090/files/1728376360638-家电.png','BUSINESS','0991-7866598','intelliJ_house@outlook.com','本店经营热销家电，智能家居的发展','审核通过'),
(11,'seller7','123456','豪车JLU专营店','http://localhost:9090/files/1728376500220-奔驰.png','BUSINESS','16788906755','car_selling@mails.jlu.edu.cn','本店是全球范围豪车JLU营销旗舰店，免费赠送JLU学子人手一辆','审核通过'),
(12,'seller8','123456','时尚女装','http://localhost:9090/files/1728376607608-paris.png','BUSINESS','15676783567','29088973546@qq,com','本店经营时尚女装，可定制特定服饰，让你引领时尚！','审核通过'),
(13,'seller9','123456','携程2.0旅游售票','http://localhost:9090/files/1728376715636-旅游.png','BUSINESS','19089876675','23409876795@qq.com','本店营销各类旅游景区门票，不用忍受黄牛高额票价','审核通过'),
(14,'seller10','123456','懒羊羊美食店','http://localhost:9090/files/1728376823802-美食.png','BUSINESS','16678546739','16678546739@163.com','本店售卖各类零食，可定制各类宴席食物。','审核通过'),
(15,'seller11','123456','修猫修狗之窝','http://localhost:9090/files/1728376932919-宠物.png','BUSINESS','13356647890','1555678456@qq.com','本店提供各类猫狗的栖息场所，爱心志愿服务。','审核通过'),
(16,'seller12','123456','全国酒店分销商','http://localhost:9090/files/1728377028341-酒店.png','BUSINESS','16789905632','16789905632@163.com','本店提供全国各大酒店的入住服务，一站式服务。','审核通过');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `business_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`user_id`,`goods_id`,`business_id`,`num`) values 
(1,7,17,8,1),
(2,8,5,5,1),
(3,8,13,7,1),
(4,7,3,5,1);

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `business_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏信息表';

/*Data for the table `collect` */

insert  into `collect`(`id`,`user_id`,`goods_id`,`business_id`) values 
(1,7,10,6),
(2,7,40,12),
(3,8,26,9),
(4,8,59,16),
(5,8,57,16);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `business_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='评论信息表';

/*Data for the table `comment` */

insert  into `comment`(`id`,`user_id`,`goods_id`,`business_id`,`content`,`time`) values 
(1,7,3,5,'经典算法书籍，能够很快入门各类算法','2024-10-10 15:32:09'),
(2,8,52,15,'狗很好，已培养去上小学','2024-10-11 13:22:39');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品主图',
  `description` longtext COLLATE utf8mb4_unicode_ci COMMENT '商品介绍',
  `price` double(10,2) DEFAULT NULL COMMENT '商品价格',
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '计件单位',
  `count` int(11) DEFAULT '0' COMMENT '商品销量',
  `type_id` int(11) DEFAULT NULL COMMENT '分类ID',
  `business_id` int(11) DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品信息表';

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`img`,`description`,`price`,`unit`,`count`,`type_id`,`business_id`) values 
(2,'计算机组成原理—第三版','http://localhost:9090/files/1728373072586-计组.png','<p>《计算机组成原理》是一本经典的计算机科学教材，通常由著名学者如David Patterson和John Hennessy等人撰写。该书系统地介绍了计算机的基本组成部分，包括处理器架构、存储系统、输入输出设备及其相互作用。书中深入探讨了计算机的工作原理、性能优化及设计理念，通过实例和图示帮助读者理解复杂的概念。它不仅适合计算机专业的学生，也为从事计算机硬件和系统设计的工程师提供了重要参考。</p>',70.00,'本',0,10,5),
(3,'算法导论','http://localhost:9090/files/1728373342401-算法导论.png','<p>《算法导论》是一本经典的计算机科学教材，由Thomas H. Cormen、Charles E. Leiserson、Ronald L. Rivest和Clifford Stein合著。该书全面系统地介绍了算法的设计与分析，包括排序、查找、图算法、动态规划等多种重要主题。它不仅详细讲解了算法的基本原理和实现，还强调了算法效率的评估和优化方法。书中配有丰富的例题和练习，适合计算机专业的学生以及希望深入了解算法基础的工程师和研究者，是学习和参考算法的重要资料。<br/></p>',129.00,'本',0,10,5),
(4,'呼啸山庄','http://localhost:9090/files/1728373410593-呼啸山庄.png','<p>《呼啸山庄》是英国作家艾米莉·布朗特的唯一一部小说，首次出版于1847年。这部作品通过复杂的叙事结构和深刻的人物刻画，讲述了在荒凉的约克郡乡村，两个家族之间的爱恨纠葛与复仇故事。小说的主要人物希斯克利夫是一个充满激情与痛苦的角色，他对凯瑟琳的执着爱恋以及随之而来的悲剧，深刻探讨了人性、社会阶级和自然力量等主题。《呼啸山庄》以其独特的氛围和深邃的情感，成为了经典文学作品，并广受赞誉。<br/></p>',66.00,'本',0,10,5),
(5,'活着','http://localhost:9090/files/1728373500628-活着.png','<p>《活着》是中国作家余华创作的一部小说，讲述了主人公福贵的悲惨人生和坚韧不拔的生存意志。故事通过福贵从富裕到贫困的转变，描绘了战乱、饥荒和社会动荡对个人命运的影响，以及人们在苦难中仍然顽强求生的精神。小说以简练而有力的语言展现了生命的无常与珍贵，探讨了家庭、爱与失去等深刻主题。《活着》不仅是一部感人至深的作品，也引发了对人生意义的深思，成为现代文学的重要代表作。<br/></p>',30.00,'本',0,10,5),
(6,'安徒生童话','http://localhost:9090/files/1728373599572-安徒生.png','<p>《安徒生童话》是丹麦作家汉斯·克里斯蒂安·安徒生创作的一系列经典童话故事的总称。这些故事首次出版于19世纪，涵盖了丰富的主题和深刻的情感，如友谊、爱情、勇气和牺牲。著名的故事包括《小美人鱼》、《皇帝的新装》和《丑小鸭》，它们以生动的想象力和细腻的描写吸引了无数读者。安徒生通过简单而富有寓意的故事，探索了人性与社会，展现了对儿童天真烂漫的理解和对生活真谛的思考，成为世界文学中的瑰宝。<br/></p>',90.00,'本',0,10,5),
(7,'联想拯救者Y7000','http://localhost:9090/files/1728374791063-拯救者.png','<p>联想拯救者Y7000是一款专为游戏和高性能计算设计的笔记本电脑，搭载了强劲的处理器和高效的显卡，确保流畅运行各种大型游戏和多任务处理。它配备了高清显示屏和出色的音效系统，为用户提供沉浸式的游戏体验。此外，Y7000还具备良好的散热系统和舒适的人体工程学设计，适合长时间使用。凭借其强大的性能和时尚的外观，联想拯救者Y7000成为游戏玩家和创作者的理想选择。<br/></p>',6999.00,'台',0,1,6),
(8,'联想小新Think','http://localhost:9090/files/1728374874618-小新.png','<p>联想小新是一系列专注于轻薄便携的笔记本电脑，旨在满足日常办公、学习及娱乐需求。该系列产品通常配备高性能处理器和充足的内存，提供流畅的多任务处理和良好的图形表现。小新系列以其时尚的设计、长效的电池续航和出色的性价比而受到年轻用户的青睐。无论是学生、职场人士还是普通家庭用户，联想小新都能提供理想的使用体验，成为日常生活中可靠的伴侣。<br/></p>',4000.00,'台',0,1,6),
(9,'华硕天选2','http://localhost:9090/files/1728374927840-天选2.png','<p>华硕天选 2是一款专为游戏爱好者设计的高性能笔记本电脑，采用强劲的处理器和高效的显卡，能够流畅运行各种大型游戏和复杂应用。它配备了高刷新率的显示屏，提供出色的画面表现和细腻的视觉体验。此外，天选 2还具备优秀的散热系统和多样化的接口，方便用户连接外部设备。凭借其时尚的外观和卓越的性能，华硕天选 2成为了追求高品质游戏体验玩家的热门选择。<br/></p>',5600.00,'台',0,1,6),
(10,'华为Mate Book X Pro','http://localhost:9090/files/1728375022068-matebook.png','<p>华为MateBook X Pro是一款高端轻薄笔记本电脑，凭借其精致的设计和强大的性能而备受瞩目。它配备了高分辨率的全高清触摸屏，提供出色的视觉体验，并采用第十代或第十一代英特尔处理器，确保流畅的多任务处理和高效的工作效率。此外，该机型还拥有长达15小时的电池续航和快速充电功能，适合移动办公需求。MateBook X Pro的优雅外观与强大性能相结合，成为商务人士和创意工作者的理想选择。<br/></p>',9000.00,'台',0,1,6),
(11,'戴尔G系列','http://localhost:9090/files/1728375142117-Dell.png','<p>戴尔G系列是一款专为游戏玩家打造的高性能笔记本电脑系列，兼具强大的硬件配置与时尚的设计。该系列通常配备最新的处理器和显卡，能够流畅运行各种大型游戏，同时提供出色的图形表现和快速的响应速度。戴尔G系列还注重散热系统，确保在长时间游戏过程中保持稳定性能。此外，它的多种接口和升级选项使得用户可以根据个人需求进行定制，是追求高性价比游戏体验的玩家的理想选择。<br/></p>',8699.00,'台',0,1,6),
(12,'华为Mate 60 Pro','http://localhost:9090/files/1728449111906-华为.png','<p>华为Mate 60 Pro是一款高端智能手机，搭载最新的麒麟芯片，具备强大的性能和出色的摄影能力。其设计优雅，配备大屏幕和高分辨率显示，支持多种先进技术，如5G连接和快速充电。此外，Mate 60 Pro在续航和系统优化方面表现优异，提供流畅的用户体验，是追求性能与美观用户的理想选择。<br/></p>',6999.00,'台',0,2,7),
(13,'Vivo X30 Pro','http://localhost:9090/files/1728449169604-vivo.png','<p>vivo X30是一款兼具时尚设计和强大性能的智能手机，搭载Exynos 980处理器，支持5G网络。其配备了高分辨率的AMOLED显示屏，带来出色的视觉体验。拍照方面，vivo X30拥有专业级的后置摄像头系统，支持多种拍摄模式，能够满足用户对摄影的需求。此外，手机还具备快速充电和良好的续航能力，是一款适合日常使用和娱乐的全面型设备。<br/></p>',7999.00,'台',0,2,7),
(14,'Oppo K1','http://localhost:9090/files/1728449241689-oppo.png','<p>OPPO K1是一款性价比极高的智能手机，搭载高效的处理器，配备6.4英寸AMOLED显示屏，提供鲜艳的色彩和清晰的视觉体验。其后置双摄像头系统支持多种拍摄模式，能够拍摄出优秀的照片。同时，OPPO K1还具备较大的电池容量和快速充电功能，确保用户在日常使用中享有良好的续航表现。整体设计时尚，适合追求性能与美观的年轻用户。<br/></p>',3000.00,'台',0,2,7),
(15,'iPhone 16 Pro Max','http://localhost:9090/files/1728449336855-iphone.png','<p>iPhone 16 Pro Max是一款苹果最新推出的高端智能手机，搭载强大的A17芯片，提供卓越的性能和流畅的用户体验。其6.7英寸Super Retina XDR显示屏拥有出色的色彩和对比度，适合观看各种内容。相机系统经过升级，支持更高质量的拍摄和多种摄影模式，使得夜景和人像效果更为出色。此外，iPhone 16 Pro Max还具备长效续航和快速充电功能，配合iOS系统，为用户提供了全面而优质的使用体验。<br/></p>',10999.00,'台',0,2,7),
(16,'三星Galaxy S20 Ultra','http://localhost:9090/files/1728449446474-三星.png','<p>三星Galaxy S20 Ultra是一款旗舰智能手机，配备6.9英寸动态AMOLED显示屏，支持120Hz刷新率，带来流畅的视觉体验。它搭载高性能的Exynos或Snapdragon处理器，以及强大的后置摄像头系统，主摄像头高达108MP，支持100倍变焦，使得拍照效果极为出色。此外，S20 Ultra还具备大容量电池，支持快速充电和无线充电功能，是一款兼具摄影、性能与续航的全面型设备，适合追求高端科技体验的用户。<br/></p>',9000.00,'台',0,2,7),
(17,'SCOFIELD 20 AW 英伦风','http://localhost:9090/files/1728449564159-英伦风.png','<p>SCOFIELD 20 AW 英伦风系列是一款融合经典与现代设计的时尚服饰，灵感来源于英国传统风格。该系列注重细节，以高品质面料和精致剪裁为特色，展现出优雅与个性。无论是修身西装、简约外套还是别致衬衫，都体现了英伦风的独特魅力，适合各种场合穿着。SCOFIELD 20 AW 英伦风系列致力于为追求品质与时尚的消费者提供多样化的选择，展现自信与品位。<br/></p>',1000.00,'件',0,4,8),
(18,'Yohji Yamamoto 2019秋冬男装','http://localhost:9090/files/1728449659167-Yohji.png','<p>Yohji Yamamoto 2019秋冬男装系列以其独特的剪裁和前卫的设计再次彰显了品牌的经典风格。该系列融合了大胆的轮廓与精致的细节，展现出一种优雅而叛逆的气息。深色调和丰富的面料选择相结合，呈现出强烈的视觉冲击力，同时也注重穿着的舒适性与实用性。整体设计体现了Yamamoto对结构与流动性的探索，既保留了日本传统的美学，又融入了现代都市的元素，为时尚界带来了新的视角与灵感。<br/></p>',600.00,'件',0,4,8),
(19,'Gucci2015春夏男装发布秀','http://localhost:9090/files/1728449778146-Gucci.png','<p>Gucci 2015春夏男装发布秀在米兰时装周上引起广泛关注，展现了创意总监亚历桑德罗·米凯尔（Alessandro Michele）对品牌传统的现代诠释。秀场上，设计师通过丰富的色彩、独特的印花和精致的细节，呈现出一种复古与前卫相结合的风格。服装包括宽松的剪裁、层叠的搭配以及大胆的配饰，彰显出男性优雅与个性的多样性。整体系列不仅重塑了Gucci的形象，也为男士时尚带来了新的活力与创意。<br/></p>',5000.00,'件',0,4,8),
(20,'MECITY男装2019夏季新款印花短袖衬衫','http://localhost:9090/files/1728449862894-mecity.png','<p>MECITY男装2019夏季新款印花短袖衬衫以清新的设计和轻盈的面料为特点，完美契合夏季的时尚需求。采用独特的印花图案，增添了活力与个性，使整体造型更加生动。宽松的剪裁设计不仅提供舒适的穿着体验，还能轻松搭配多种休闲风格，既适合日常出行，也可用于轻松的社交场合。无论是搭配短裤还是休闲裤，这款短袖衬衫都能带来清爽的夏日风情。<br/></p>',900.00,'件',0,4,8),
(21,'Dior Homme 2016春夏男装发布秀','http://localhost:9090/files/1728449952227-dior.png','<p>Dior Homme 2016春夏男装发布秀在巴黎时装周上引发热烈反响，展示了创意总监克里斯汀·迪奥（Kris Van Assche）对现代男性优雅的深刻理解。秀场通过简约而富有结构感的设计，结合了精致的面料与独特的剪裁，展现出一种干练与随性的平衡。色调上，黑色、白色和中性色彩交替使用，带来强烈的视觉冲击。整体系列不仅强调了个性化的风格，还融合了运动元素，展现出当代都市男性的多样魅力与自信气质。<br/></p>',3000.00,'件',0,4,8),
(22,'大理石桌','http://localhost:9090/files/1728545801349-桌子.png','<p>大理石桌以其优雅的外观和独特的纹理而受到广泛欢迎，常用于家庭和商业空间的装饰。它们通常由天然大理石制成，具有耐磨、耐热的特性，既美观又实用。大理石桌可用于餐厅、咖啡厅或办公室，不同颜色和花纹的选择，使其能够与各种室内风格完美融合，增添一份奢华感。<br/></p>',9999.00,'张',0,9,9),
(23,'原木高端衣架','http://localhost:9090/files/1728545856005-衣架.png','<p>衣架是一种常见的家居用品，主要用于悬挂和整理衣物，以保持衣物的形状和避免皱折。它们通常由木材、塑料或金属制成，设计多样，可以适应不同类型的衣物，如上衣、裤子和裙子等。衣架不仅方便实用，还能帮助提升衣柜的整洁度，是每个家庭中不可或缺的收纳工具。<br/></p>',69.00,'个',0,9,9),
(24,'流彩花盆','http://localhost:9090/files/1728545931072-花盆.png','<p>花盆是一种用于栽培植物的容器，通常由陶瓷、塑料、木材或金属等材料制成。它们具有多种形状和尺寸，能够满足不同植物的生长需求。花盆不仅提供植物所需的土壤和水分，还能美化家居环境，增添自然气息。无论是室内绿植还是户外花卉，合适的花盆都能提升植物的观赏价值，成为家居装饰的重要元素。<br/></p>',299.00,'个',0,9,9),
(25,'纯羊毛棉毯','http://localhost:9090/files/1728546059770-毛毯.png','<p>毛毯是一种柔软而温暖的织物，通常由羊毛、聚酯或其他纤维制成，广泛用于保暖和装饰。它们具有良好的热绝缘性，适合在寒冷的天气中使用，同时也可以用作床上用品、沙发盖或户外野营的装备。毛毯的设计多样，从简约到花纹丰富，能够与各种室内风格搭配，为空间增添温馨感和舒适氛围。<br/></p>',699.00,'条',0,9,9),
(26,'红太狼的平底锅','http://localhost:9090/files/1728546129205-平底锅.png','<p>平底锅是一种常见的烹饪工具，通常由不粘涂层、铸铁或不锈钢等材料制成，具有宽阔的平面和低边缘，便于翻炒和煎炸各种食材。它适合制作煎蛋、煎肉、炒菜等多种料理，热导性良好，可以均匀加热，确保食物熟透且外焦里嫩。平底锅的设计简单实用，是厨房中不可或缺的基本器具之一，既方便清洗，又能满足日常烹饪的需求。<br/></p>',1999.00,'个',0,9,9),
(27,'智能洗衣机','http://localhost:9090/files/1728620802579-洗衣机.png','<p>智能洗衣机是一种现代化的家电，结合了先进的技术和智能化功能，旨在提高洗衣效率和用户体验。它通常配备Wi-Fi连接、手机应用控制和自诊断系统，用户可以远程监控和管理洗衣过程。智能洗衣机提供多种洗涤模式，能够根据衣物类型和污渍程度自动调整洗涤时间和水量，节能环保。此外，一些型号还具备蒸汽清洗和消毒功能，有效去除细菌和异味，使衣物更加洁净卫生。<br/></p>',6999.00,'台',0,3,10),
(28,'智能电冰箱','http://localhost:9090/files/1728620864749-电冰箱.png','<p>智能电冰箱是一种高科技家用电器，具备连接互联网和智能化管理功能。它通过内置传感器和摄像头，能够实时监测食物储存状态，并向用户发送过期提醒或库存更新通知。一些智能冰箱还支持手机应用控制，让用户能够远程调整温度、查看内部食材情况或进行购物清单管理。此外，它们通常配备节能技术，优化能耗，同时提供多样化的存储空间和智能分类设计，以提高食品保存的效率和便利性。<br/></p>',16999.00,'台',0,3,10),
(29,'智能空调','http://localhost:9090/files/1728620934839-空调.png','<p>智能空调是一种先进的空调设备，结合了智能控制技术和节能设计，旨在提升用户的舒适体验和能源效率。它通常配备Wi-Fi连接和手机应用，使用户可以远程调节温度、湿度和风速，甚至设置定时开关机。此外，智能空调通过内置传感器能够自动检测房间温度和空气质量，智能调整运行模式，以实现最佳的室内环境。同时，一些型号还具备自我清洁功能和智能故障诊断，确保设备长期高效运行<br/></p>',5399.00,'台',0,3,10),
(30,'智能微波炉','http://localhost:9090/files/1728621001319-微波炉.png','<p>智能微波炉是一种现代化的厨房电器，结合了微波加热技术和智能控制功能，旨在提升烹饪效率和便利性。它通常配备Wi-Fi连接，用户可以通过手机应用进行远程操作，设置加热时间和模式，甚至获取食谱建议。智能微波炉还具备自动传感器，可以根据食物的重量和类型自动调整加热时间，确保食物均匀加热。此外，一些型号还支持语音控制和一键清洁功能，让烹饪过程更加简单和高效。<br/></p>',3000.00,'台',0,3,10),
(31,'智能电风扇','http://localhost:9090/files/1728621081622-电风扇.png','<p>智能电风扇是一种融合了现代科技和便捷控制的家用电器，旨在提供更加舒适的室内环境。它通常配备Wi-Fi连接和手机应用，让用户可以远程调节风速、定时开关和摆动角度。此外，许多智能电风扇还具备智能语音控制功能，兼容各大智能助手，方便用户通过语音指令进行操作。部分型号还配有空气质量传感器，能够自动调节风速以优化室内空气流通，提升居住舒适度。<br/></p>',7899.00,'台',0,3,10),
(32,'奔驰梅赛德斯','http://localhost:9090/files/1728621357036-奔驰.png','<p>奔驰梅赛德斯（Mercedes-Benz）是全球知名的豪华汽车品牌，以其卓越的工艺、创新技术和卓越的性能而闻名。成立于1886年的奔驰是汽车工业的先驱之一，致力于生产高品质的轿车、SUV和跑车。品牌以安全性和驾驶体验为核心，不断推出先进的驾驶辅助系统和智能互联技术。奔驰梅赛德斯不仅代表着奢华与舒适，更在电动化和可持续发展方面积极布局，致力于打造未来出行的全新体验。<br/></p>',725000.00,'辆',0,7,11),
(33,'宝马6系','http://localhost:9090/files/1728621431394-宝马.png','<p>宝马6系是一款豪华的轿跑车型，以其动感的设计和卓越的驾驶性能而受到广泛欢迎。该系列融合了优雅的外观、精致的内饰和强劲的动力，提供出色的操控体验。宝马6系通常装备高效的发动机，具备先进的悬挂系统和智能驾驶辅助技术，确保驾驶者享受极致的乐趣与舒适。无论是在城市道路还是高速公路上，6系都展现出卓越的动态表现，成为追求豪华和运动性能消费者的理想选择。<br/></p>',980000.00,'辆',0,7,11),
(34,'劳斯莱斯','http://localhost:9090/files/1728621532254-劳斯莱斯.png','<p>劳斯莱斯（Rolls-Royce）是世界顶级的豪华汽车品牌，以其卓越的工艺、奢华的设计和无与伦比的个性化定制服务而闻名。成立于1904年的劳斯莱斯，凭借其精湛的技术和高品质的材料，为客户提供独特的驾驶体验。每一辆劳斯莱斯汽车都是手工制造，注重细节，展现出无与伦比的奢华与优雅。品牌不仅象征着财富与地位，更代表着一种追求完美的精神，成为许多名流和收藏家的梦想之车。<br/></p>',1500000.00,'辆',0,7,11),
(35,'布加迪威龙','http://localhost:9090/files/1728621601744-布加迪.png','<p>布加迪威龙（Bugatti Veyron）是一款极具传奇色彩的超级跑车，以其卓越的性能和奢华的设计而闻名。搭载一台8.0升W16发动机，威龙的动力输出超过1000马力，使其能够在短短2.5秒内完成0到100公里的加速，最高时速可超过400公里每小时。该车不仅在速度上创造了多项世界纪录，还以精湛的工艺和豪华内饰吸引了无数车迷。布加迪威龙代表了极致的工程技术和超凡的驾驶体验，是汽车界的巅峰之作。<br/></p>',3600000.00,'辆',0,7,11),
(36,'凯迪拉克','http://localhost:9090/files/1728621699170-凯迪拉克.png','<p>凯迪拉克（Cadillac）是美国豪华汽车品牌，以其创新技术、豪华设计和卓越性能而闻名。成立于1902年的凯迪拉克，是全球首个大规模生产汽车的品牌之一，推动了汽车工业的发展。品牌车型结合了先进的工程技术与优雅的外观，提供舒适的驾驶体验和丰富的科技配置。凯迪拉克在豪华SUV和轿车市场中占据重要地位，致力于为消费者提供高品质的汽车选择，象征着美国汽车文化的经典与魅力。<br/></p>',600000.00,'辆',0,7,11),
(37,'巴黎世家之包','http://localhost:9090/files/1728621837927-巴黎世家包.png','<p>巴黎世家（Balenciaga）是以其前卫设计和大胆风格而闻名的奢侈品牌，其包袋系列在时尚界备受瞩目。品牌创立于1917年，以创新的剪裁和独特的材料运用著称，包袋常常融合了现代艺术与街头文化的元素。巴黎世家的包款，如经典的“City”包和“Hourglass”包，不仅展现出极高的工艺水平，还体现了个性化与时尚感，吸引了众多时尚爱好者和明星的青睐。无论是日常佩戴还是特别场合，巴黎世家的包都成为了表达个性与品位的重要配饰。<br/></p>',60000.00,'个',0,5,12),
(38,'民国古风旗袍','http://localhost:9090/files/1728621916200-旗袍.png','<p>民国古风旗袍是一种独特的中国传统服饰，深受20世纪初至中期的女性喜爱。旗袍以其简洁的线条和贴身的剪裁，优雅地勾勒出女性的曲线，展现出古典美与现代感的融合。通常采用丝绸、绣花布等高级面料，装饰以精美的刺绣和盘扣，色彩丰富多样，从而体现出个性与品位。旗袍不仅是时尚的象征，更承载了民国时代的文化记忆，成为展示中国女性柔美与智慧的重要服装。如今，旗袍在现代时尚中依然焕发着迷人的光彩，受到越来越多人的追捧。<br/></p>',9000.00,'件',0,5,12),
(39,'奢华高端连衣裙','http://localhost:9090/files/1728621986252-连衣裙.png','<p>奢华高端连衣裙是一种结合精致工艺与优雅设计的时尚单品，通常采用高品质的面料，如丝绸、蕾丝或绒布，并配以精美的细节装饰。设计师通过独特的剪裁和细致的手工艺，使连衣裙不仅展现出女性的曲线美，也传达出一种独特的气质和风格。这类连衣裙常用于特殊场合，如红毯活动、晚宴或婚礼，成为彰显高贵气质与个人品位的重要选择。随着时尚潮流的发展，奢华高端连衣裙不断融合现代元素，吸引了越来越多追求个性与品质的消费者。<br/></p>',900.00,'件',0,5,12),
(40,'破洞无瑕牛仔裤','http://localhost:9090/files/1728622071313-牛仔裤.png','<p>破洞无瑕牛仔裤是一种时尚潮流单品，结合了经典牛仔布的耐磨性与现代设计的个性化。其特色在于随意的破洞细节，赋予整体造型一种不拘一格的街头风格，同时保持裤子的完美剪裁与合身效果。这种牛仔裤通常采用高品质的面料，确保舒适性与耐穿性，适合多种场合，无论是休闲搭配还是更为前卫的造型，都能显示出穿着者的独特品味。随着时尚的演变，破洞无瑕牛仔裤已成为年轻人衣橱中必不可少的单品，展现出个性与自信。<br/></p>',200.00,'条',0,5,12),
(41,'粉色520卫衣','http://localhost:9090/files/1728622171062-卫衣.png','<p>粉色520卫衣是一款融合了舒适与时尚的潮流单品，以其独特的设计和柔和的粉色调，展现出年轻与活力。这款卫衣通常采用高品质的棉料，确保穿着的舒适感，同时细致的剪裁与宽松的版型，使其既适合日常休闲，又能轻松搭配各种风格。卫衣上可能印有品牌标志或创意图案，增添了个性化的元素，成为时尚爱好者们喜爱的选择，体现了巴黎世家的前卫设计理念与优雅气质<br/></p>',3800.00,'件',0,5,12),
(42,'长城学生票','http://localhost:9090/files/1728622271548-长城.png','<p>长城学生票是专为在校学生设计的优惠票种，旨在鼓励年轻人体验和探索中国悠久的历史与文化。凭借学生证件，持票者可以以较低的价格进入长城这一重要的文化遗址，享受其壮丽的自然风光和丰富的历史。此票种不仅促进了学生的文化交流与学习，也使得更多年轻人在游览名胜古迹的过程中，感受到传统文化的魅力和国家的自豪感。<br/></p>',300.00,'张',0,13,13),
(43,'故宫成人票','http://localhost:9090/files/1728622348765-故宫.png','<p>故宫成人票是游客参观这一世界著名文化遗址的必备票种，允许持票者进入故宫博物院，探索其丰富的历史和艺术藏品。作为中国古代皇宫的代表，故宫以其宏伟的建筑、精美的文物和深厚的文化底蕴吸引着无数游客。成人票通常涵盖了多个展馆，使游客能够全方位了解明清历史，欣赏珍贵的文物艺术作品，体验古代皇室的生活氛围。此票种为成年人提供了一个深入了解中国传统文化与历史的绝佳机会。<br/></p>',68.00,'张',0,13,13),
(44,'南京博物馆参观票','http://localhost:9090/files/1728622422955-南博.png','<p>南京博物馆参观票是游客进入这一重要文化机构的凭证，允许他们探索丰富的历史藏品和艺术作品。作为中国最大的博物馆之一，南京博物馆展示了从古代文物到现代艺术的多样展览，涵盖了南京及其周边地区的悠久历史与文化。购票后，游客可以在宽敞的展厅中欣赏到各类珍贵文物、传统艺术和地方特色展览，体验深厚的文化底蕴和独特的历史韵味。参观南京博物馆不仅是了解历史的机会，也是感受文化魅力的绝佳选择。<br/></p>',80.00,'张',0,13,13),
(45,'布达拉宫儿童票','http://localhost:9090/files/1728622483775-布达拉宫.png','<p>布达拉宫儿童票是专为儿童设计的优惠票种，旨在让年轻游客以更实惠的价格参观这一世界文化遗产。作为西藏的标志性建筑，布达拉宫以其壮丽的建筑风格和丰富的历史文化吸引着无数游客。儿童票通常适用于一定年龄段的孩子，持票者可以在家长陪同下，探索宫殿内的珍贵文物、壁画和藏传佛教艺术，感受浓厚的宗教与历史氛围。这不仅为儿童提供了一个学习与发现的机会，也帮助他们从小培养对文化遗产的认知与热爱。<br/></p>',50.00,'张',0,13,13),
(46,'西湖军人票','http://localhost:9090/files/1728622543567-西湖.png','<p>西湖军人票是专为现役军人及退伍军人提供的优惠票种，旨在鼓励他们在休闲时光中欣赏杭州著名的西湖风景。持有此票的军人可以在景区内畅游，领略湖光山色、古典园林和历史遗迹的美丽，享受独特的自然与人文景观。西湖以其优雅的自然风光和丰富的文化底蕴，被誉为“人间天堂”，军人票的设立不仅体现了对军人群体的尊重和关怀，也为他们提供了一个放松身心、亲近自然的好机会。<br/></p>',70.00,'张',0,13,13),
(47,'上好佳薯片','http://localhost:9090/files/1728622712619-上好佳.png','<p>上好佳薯片是一款广受欢迎的休闲零食，以其独特的口感和丰富的风味著称。每一片薯片都选用优质马铃薯，经过精心的炸制工艺，使其外脆内酥，保持了薯片的鲜美与香气。上好佳提供多种口味选择，如原味、酸奶洋葱和海苔等，满足不同消费者的口味需求。无论是聚会、旅行还是日常零食，上好佳薯片都是一种理想的选择，让人愉悦享受每一口的美味。<br/></p>',20.00,'包',0,6,14),
(48,'小当家干脆面','http://localhost:9090/files/1728622790721-小当家.png','<p>小当家干脆面是一款深受消费者喜爱的休闲零食，以其独特的口感和丰富的风味而著称。每一包干脆面都经过精心炸制，外酥内脆，口感极佳，适合随时享用。小当家提供多种口味选择，如经典的原味、浓郁的牛肉味和香辣口味等，满足不同人的喜好。无论是作为零食还是配餐，小当家干脆面都能为你带来美味的享受，是放松时刻的理想伴侣。<br/></p>',10.00,'包',0,6,14),
(49,'好丽友虾条','http://localhost:9090/files/1728622851226-好丽友.png','<p>好丽友虾条是一款风味独特的休闲零食，以其鲜美的虾味和酥脆的口感而受到广大消费者的喜爱。每根虾条选用优质原料，经过精心调味和炸制，带来浓郁的海鲜风味，既可以单独享用，也可以搭配其他零食一起分享。无论是休闲时刻、聚会还是旅行，好丽友虾条都是一种理想的小吃选择，让每一口都充满满足感。<br/></p>',30.00,'包',0,6,14),
(50,'达利园派','http://localhost:9090/files/1728622907321-达利园.png','<p>达利园派是一款备受喜爱的休闲食品，以其松软的口感和丰富的馅料而闻名。每一块派都采用优质原料制作，外皮金黄酥脆，内馅则有多种风味选择，如经典的水果、香浓的巧克力和奶油等，满足不同消费者的口味需求。无论是作为早餐、下午茶点心，还是随时的小零食，达利园派都能为你带来美味的享受，成为生活中的小确幸。<br/></p>',26.00,'包',0,6,14),
(51,'猪肉批发','http://localhost:9090/files/1728622968173-猪肉.png','<p>猪肉批发是指将猪肉以大宗形式销售给餐饮企业、超市和其他零售商的业务。批发商通常会从屠宰场或养殖场采购新鲜的猪肉，经过加工和分割后，以合理的价格提供给下游客户。这种方式不仅能满足市场对猪肉的需求，还能保证供应链的高效运作。通过批发，商家能够获得更具竞争力的价格，同时保证产品的新鲜度和品质，确保消费者获得美味的猪肉产品<br/></p>',90.00,'斤',0,6,14),
(52,'比你聪明的边牧','http://localhost:9090/files/1728623054166-边牧.png','<p>边牧，全名边境牧羊犬，是一种聪明、灵活且活泼的犬种，原产于英国，以其卓越的工作能力和极高的智力而闻名。边牧通常被用作牧羊犬，能够快速学习指令，并具备出色的驱赶和控制能力。它们拥有中等体型，毛发浓密，外形优雅，性格友好且忠诚，非常适合与人类家庭生活。由于需要大量的运动和精神刺激，边牧非常适合积极的主人，能成为优秀的伴侣犬和工作犬。<br/></p>',9000.00,'只',0,8,15),
(53,'掉一堆毛的金毛','http://localhost:9090/files/1728623132998-金毛.png','<p>金毛是一种性格温和、聪明且友好的犬种，因其金色的被毛而得名。起源于19世纪的苏格兰，金毛最初被培育用于猎鸟和寻回猎物，具有出色的嗅觉和追踪能力。它们通常性格开朗、乐于助人，非常适合家庭生活，善于与儿童相处。金毛寻回犬也因其高智商和易训练而广泛应用于服务犬、疗愈犬等领域，是深受人们喜爱的伴侣犬之一。<br/></p>',5000.00,'只',0,8,15),
(54,'睿智的哈士奇','http://localhost:9090/files/1728623190963-哈士奇.png','<p>哈士奇（Siberian Husky）是一种中型犬，原产于西伯利亚，以其独特的外貌和活泼的性格而闻名。它们拥有浓密的双层被毛，通常呈现出多种颜色，眼睛可以是蓝色、棕色或异色。哈士奇最初是由楚科奇人饲养，用于拉雪橇和放牧，因而具有很强的耐力和工作能力。它们性格友好、好动且富有玩耍精神，常被认为是出色的家庭伴侣。然而，哈士奇需要大量的运动和精神刺激，因此适合活跃的主人。<br/></p>',3000.00,'只',0,8,15),
(55,'日本进口柴犬','http://localhost:9090/files/1728623257724-柴犬.png','<p>柴犬是一种源自日本的小型犬种，以其独特的外形和活泼的性格而受到喜爱。它们通常拥有紧凑的身体、卷曲的尾巴和直立的耳朵，毛色多样，包括红色、黑色和芝麻色等。柴犬聪明、独立且具有强烈的领地意识，既忠诚又警觉，常被视为家庭的守护者。尽管性格顽皮，但它们也非常温暖，与主人关系密切。柴犬需要适度的锻炼和良好的社交训练，才能健康快乐地成长。<br/></p>',7000.00,'只',0,8,15),
(56,'长腿柯基','http://localhost:9090/files/1728623321965-柯基.png','<p>柯基犬是一种小型犬，起源于威尔士，以其短腿和长身的独特外形而闻名。它们通常有两种品种：威尔士柯基犬（包括卡迪根和彭布罗克），性格活泼、友好且聪明。柯基犬以其社交能力强和对家庭成员的忠诚而受到喜爱，适合与儿童和其他宠物相处。它们需要适量的运动和训练，以保持身体健康和心理愉悦。柯基还以其可爱的外表和俏皮的个性赢得了众多爱犬人士的心。<br/></p>',6000.00,'只',0,8,15),
(57,'如家酒店JLU分店','http://localhost:9090/files/1728623410017-如家.png','<p>如家酒店是一家在中国广受欢迎的经济型连锁酒店，成立于2002年。它以提供舒适、安全和便捷的住宿环境而闻名，致力于为商务旅行者和休闲游客提供优质的服务。酒店的客房设计简约、现代，配备基本设施，满足旅客的需求。如家酒店遍布全国各大城市，凭借良好的性价比和便利的地理位置，成为许多游客的首选住宿品牌。<br/></p>',600.00,'晚',0,14,16),
(58,'汉庭酒店THU分店','http://localhost:9090/files/1728623474325-汉庭.png','<p>汉庭酒店是一家知名的经济型连锁酒店，成立于2005年，致力于为商务和休闲旅客提供舒适、便捷的住宿体验。酒店以简约现代的设计风格和温馨的服务著称，房间内配备基本设施，旨在满足不同客人的需求。汉庭酒店在全国范围内拥有广泛的网络，地理位置优越，方便旅客出行，是许多游客和商务人士的理想选择。<br/></p>',800.00,'晚',0,14,16),
(59,'希尔顿大酒店','http://localhost:9090/files/1728623537207-希尔顿.png','<p>希尔顿大酒店是一家全球知名的奢华酒店品牌，成立于1919年，以其卓越的服务和高端设施而闻名。希尔顿大酒店提供多样化的住宿选择，从豪华客房到套房，满足不同旅客的需求。酒店通常拥有一流的餐饮服务、健身中心、水疗设施以及会议和活动场地，适合商务和休闲旅行者。凭借其优质的客户体验和全球网络，希尔顿大酒店成为许多游客的首选豪华住宿地。<br/></p>',5000.00,'晚',0,14,16),
(60,'悉尼歌剧院酒店','http://localhost:9090/files/1728623618028-悉尼.png','<p>悉尼歌剧院酒店是一家极具标志性的豪华酒店，坐落于澳大利亚悉尼的著名地标——悉尼歌剧院附近。酒店以其独特的设计和壮观的海港景观而闻名，为客人提供舒适、精致的住宿体验。酒店内设有多间高档餐厅、酒吧和水疗中心，满足不同旅客的需求。此外，酒店的位置便利，使客人能够轻松访问悉尼的文化、艺术和娱乐活动，是探索这座城市的理想基地。<br/></p>',900000.00,'晚',0,14,16),
(61,'JLU酒店','http://localhost:9090/files/1728623696990-JLU.png','<p>JLU酒店位于吉林大学校园内，旨在为师生及广大游客提供舒适便捷的住宿服务。酒店环境优雅，设施齐全，客房设计现代，配备了基本的生活设施，适合学术交流和休闲旅游的需求。酒店周边绿意盎然，交通便利，方便游客探索吉林大学及其周边的文化和自然景点，是学术活动和旅行的理想选择。<br/></p>',20.00,'晚',0,14,16);

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告信息表';

/*Data for the table `notice` */

insert  into `notice`(`id`,`title`,`content`,`time`,`user`) values 
(1,'双11市场整改','各位商户朋友，由于临近双11，物流压力倍增，市场决定对电商平台进行整改，细则稍后发布，请各商家严格遵守规定！','2024-10-08','admin');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `business_id` int(11) DEFAULT NULL COMMENT '商家ID',
  `num` int(11) DEFAULT NULL COMMENT '商品数量',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `price` double(10,2) DEFAULT NULL COMMENT '订单价格',
  `address_id` int(11) DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单信息表';

/*Data for the table `orders` */

insert  into `orders`(`id`,`order_id`,`goods_id`,`business_id`,`num`,`user_id`,`price`,`address_id`,`status`) values 
(1,'20241010153003',3,5,1,7,129.00,1,'已评价'),
(2,'20241011132044',52,15,1,8,9000.00,2,'已评价');

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品分类表';

/*Data for the table `type` */

insert  into `type`(`id`,`name`,`description`,`img`) values 
(1,'电脑','各种电脑产品，包括各种品牌，如联想，华硕，华为，戴尔等。','http://localhost:9090/files/1728365433245-电脑.png'),
(2,'手机','这里有各种新款手机，包括各大厂商，如华为，Apple，Vivo，Oppo，三星等。任你挑选，价格实惠。','http://localhost:9090/files/1728365542805-手机.png'),
(3,'家电','这是家庭电器，包括洗衣机，电视，冰箱等常见家电，还有互联网+电器的创新组合。','http://localhost:9090/files/1728371075452-家电.png'),
(4,'男装','这里是男装，西服，领带，皮鞋，海澜之家旗下品牌，任你挑选！','http://localhost:9090/files/1728371177796-男装.png'),
(5,'女装','这里是女装，裙子，短裤，旗袍，巴黎世家旗下著名品牌，任你挑选。','http://localhost:9090/files/1728371264011-女装.png'),
(6,'美食','智购品牌美食，涵盖上好佳，达利园等诸多品牌，应有尽有，面包，香肠，蛋糕，饮料，泡面等，等你来选！','http://localhost:9090/files/1728371411889-美食.png'),
(7,'汽车','这里是全国最大的汽车销量市场，宝马，奔驰，劳斯莱斯，布加迪，特斯拉等指明品牌直销。','http://localhost:9090/files/1728371647206-汽车.png'),
(8,'宠物','有修猫，修狗，修猪，修松鼠。纯正牌，不掉毛。','http://localhost:9090/files/1728371784198-宠物.png'),
(9,'日用品','这里有生活常见品，洗碗机，擦玻璃机，拖布等，让你的生活更加便捷。','http://localhost:9090/files/1728371887942-日用品.png'),
(10,'书籍','这里有全国最大的网上书店，各种类型的书籍，冒险，角色，情感，让你沉浸在知识的海洋中。','http://localhost:9090/files/1728371980061-书籍.png'),
(13,'旅游','本平台提供全国各大景点的门票旅游服务，可以在网上直接下单预订！','http://localhost:9090/files/1728372696647-旅游.png'),
(14,'酒店','本平台直接与世界各大酒店合作，不用上携程等第三方软件抢票，直接拎包入住！','http://localhost:9090/files/1728372765757-酒店.png');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`name`,`avatar`,`role`,`phone`,`email`) values 
(7,'user1','123','user1','http://localhost:9090/files/1728372797200-头像.jpg','USER','15049328940','2969688707@qq.com'),
(8,'user2','123','user2','http://localhost:9090/files/1728623928923-user2.png','USER','15696886325','26788907654@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
