/*
 Navicat Premium Data Transfer

 Source Server         : MilkTea
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : milktea

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 03/09/2020 01:34:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_id` int NULL DEFAULT NULL COMMENT 'Video Key Value',
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Chapter Title',
  `ordered` int NULL DEFAULT NULL COMMENT 'Chapter Order',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT 'Create Time',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 716 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES (370, 40, '走进微信小程序的世界', 1, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (371, 40, '开始第一个小程序之旅', 2, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (372, 40, '核⼼知识数据绑定与事件交互', 3, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (373, 40, '⼩程序基础组件及常⽤组件介绍', 4, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (374, 40, '常⽤视图容器及路由跳转', 5, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (375, 40, '构建模板化与模块化小程序', 6, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (376, NULL, NULL, NULL, NULL);
INSERT INTO `chapter` VALUES (385, 41, '搜索引擎之elasticsearch课程介绍', 1, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (386, 41, '你了解搜索引擎吗', 2, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (387, 41, '搜索引擎之elasticsearch的快速搭建', 3, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (388, 41, '搜索引擎之elastic search的快速⼊⻔', 4, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (389, 41, '玩转elastic search的搜索', 5, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (390, 41, '搜索引擎之elastic search的⾼级使⽤', 6, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (391, 41, '仿NBA中国官网之高级实战', 7, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (392, 41, '走入高可用分布式集群世界', 8, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (393, 41, '深入挖掘elasticsearch的原理', 9, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (394, 41, 'elasticsearch的课程总结', 10, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (395, 40, '开始电影资讯小程序实战', 7, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (396, 40, '搜索页面及查询更多的实现', 8, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (397, 40, '电影详情页面构建', 9, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (398, 40, '组件化开发', 10, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (399, 40, 'Weui组件库', 11, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (400, 40, '扩展内容之小程序常用api', 12, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (401, 40, '课程总结', 13, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (450, 42, '课程介绍', 1, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (451, 42, 'Vue全家桶各部分核⼼知识详解', 2, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (452, 42, 'Element常用组件详解', 3, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (453, 42, '实战项⽬之环境准备及配置改装', 4, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (454, 42, '⼩滴课堂后台视频管理系统之公用部分开发', 5, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (455, 42, '⼩D课堂后台视频管理系统之⾸页开发', 6, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (456, 42, '用户管理页及详解权限管理', 7, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (457, 42, '项⽬总结', 8, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (470, 43, '课程简介', 1, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (471, 43, 'Python简介', 2, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (472, 43, 'Python开发环境搭建', 3, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (473, 43, 'Python基础数据类型', 4, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (474, 43, '深入理解Python运算符', 5, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (475, 43, '深入理解流程控制语句', 6, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (476, 43, 'Python核心数据结构', 7, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (477, 43, 'Python高级特性', 8, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (478, 43, '核心基础知识之函数', 9, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (479, 43, '核心基础知识之参数与变量', 10, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (480, 43, '高级知识点之函数式编程', 11, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (481, 43, 'Python中的核心知识点', 12, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (482, 43, '错误的处理', 13, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (483, 43, 'Python进阶之IO操作', 14, '2019-09-05 22:39:59');
INSERT INTO `chapter` VALUES (484, 43, '面向对象编程', 15, NULL);
INSERT INTO `chapter` VALUES (485, 43, '面向对象高级特性', 16, NULL);
INSERT INTO `chapter` VALUES (486, 43, 'Python进阶之网络编程', 17, NULL);
INSERT INTO `chapter` VALUES (510, 44, 'Java高级核⼼玩转JDK8~13新特性课程介绍', 1, NULL);
INSERT INTO `chapter` VALUES (511, 44, 'Java高级核⼼玩转JDK8新特性之接口和日期处理', 2, NULL);
INSERT INTO `chapter` VALUES (512, 44, ' Java高级核心玩转JDK8 Lambda表达式', 3, NULL);
INSERT INTO `chapter` VALUES (513, 44, 'Java高级核心玩转JDK8 函数式编程', 4, NULL);
INSERT INTO `chapter` VALUES (514, 44, 'Java高级核心之玩转 JDK8 集合框架', 5, NULL);
INSERT INTO `chapter` VALUES (515, 44, 'Java高级核心之玩转 JDK8 集合框架进阶', 6, NULL);
INSERT INTO `chapter` VALUES (516, 44, ' Java高级核心之玩转 JDK8 收集器器和集合统计', 7, NULL);
INSERT INTO `chapter` VALUES (517, 44, 'Java高级核⼼之玩转 JDK8 Collection和Lambda实战', 8, NULL);
INSERT INTO `chapter` VALUES (518, 44, 'Java高级核⼼之玩转 JDK8 新的内存空间和异常处理', 9, NULL);
INSERT INTO `chapter` VALUES (519, 44, 'Java高级核⼼之玩转JDK9常见特性讲解', 10, NULL);
INSERT INTO `chapter` VALUES (520, 44, 'Java高级核⼼之玩转JDK9的Stream和集合API', 11, NULL);
INSERT INTO `chapter` VALUES (521, 44, 'Java高级核⼼之玩转JDK10和JDK11常⻅特性', 12, NULL);
INSERT INTO `chapter` VALUES (522, 44, 'Java高级核⼼之大话JDK12和JDK13', 13, NULL);
INSERT INTO `chapter` VALUES (523, 44, 'Java高级核⼼之JDK8~13课程总结', 14, NULL);
INSERT INTO `chapter` VALUES (600, 45, 'Docker容器的介绍与整套课程大纲', 1, NULL);
INSERT INTO `chapter` VALUES (601, 45, 'Docker容器基础入门实战', 2, NULL);
INSERT INTO `chapter` VALUES (602, 45, 'Docker核心必备之自定义镜像实战', 3, NULL);
INSERT INTO `chapter` VALUES (603, 45, 'Docker核心知识之网络模式与特权指令', 4, NULL);
INSERT INTO `chapter` VALUES (604, 45, '实战系列之利用Compose操作容器', 5, NULL);
INSERT INTO `chapter` VALUES (605, 45, 'Docker企业核心知识之镜像仓库实战', 6, NULL);
INSERT INTO `chapter` VALUES (650, 46, '跨平台编程语⾔Java编程史', 1, NULL);
INSERT INTO `chapter` VALUES (651, 46, 'Java开发环境准备和基础语法第⼀季', 2, NULL);
INSERT INTO `chapter` VALUES (652, 46, '集成开发环境IDEA安装使⽤', 3, NULL);
INSERT INTO `chapter` VALUES (653, 46, 'Java开发环境准备和基础语法第⼆季', 4, NULL);
INSERT INTO `chapter` VALUES (654, 46, 'Java基础语法进阶', 5, NULL);
INSERT INTO `chapter` VALUES (655, 46, 'Java ⾯向对象编程OOP', 6, NULL);
INSERT INTO `chapter` VALUES (656, 46, 'Java 异常Exception讲解', 7, NULL);
INSERT INTO `chapter` VALUES (657, 46, 'Java进阶核⼼之集合框架Collection', 8, NULL);
INSERT INTO `chapter` VALUES (658, 46, 'Java进阶核⼼之三⼤集合框架拓展', 9, NULL);
INSERT INTO `chapter` VALUES (659, 46, 'Java进阶核⼼之File⽂件和⽬录', 10, NULL);
INSERT INTO `chapter` VALUES (660, 46, 'Java进阶核⼼之Input、Output Stream流', 11, NULL);
INSERT INTO `chapter` VALUES (661, 46, 'Java进阶核⼼之Reader、Writer字符流', 12, NULL);
INSERT INTO `chapter` VALUES (662, 46, 'Java核⼼之常⻅时间⽇期讲解', 13, NULL);
INSERT INTO `chapter` VALUES (663, 46, 'Java进阶核⼼之常⻅class类讲解', 14, NULL);
INSERT INTO `chapter` VALUES (664, 46, 'Java枚举类Enum', 15, NULL);
INSERT INTO `chapter` VALUES (665, 46, '项⽬实战之开发⼈⼯智能问答机器⼈上', 16, NULL);
INSERT INTO `chapter` VALUES (666, 46, '项⽬实战之开发⼈⼯智能问答机器⼈下', 17, NULL);
INSERT INTO `chapter` VALUES (667, 46, '⼩滴课堂疯狂新版Java系列基础课程总结', 18, NULL);
INSERT INTO `chapter` VALUES (710, 47, '初识NodeJs', 1, NULL);
INSERT INTO `chapter` VALUES (711, 47, 'NodeJs核⼼模块api-基础', 2, NULL);
INSERT INTO `chapter` VALUES (712, 47, 'http全⾯解析', 3, NULL);
INSERT INTO `chapter` VALUES (713, 47, 'Nodejs 核心模块api-路由与接口', 4, NULL);
INSERT INTO `chapter` VALUES (714, 47, 'Nodejs连接Mysql', 5, NULL);
INSERT INTO `chapter` VALUES (715, 47, '分布式文件储存数据库MongoDB', 6, NULL);

-- ----------------------------
-- Table structure for episode
-- ----------------------------
DROP TABLE IF EXISTS `episode`;
CREATE TABLE `episode`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Episode Title',
  `num` int NULL DEFAULT NULL COMMENT 'Episode Order, Global',
  `ordered` int NULL DEFAULT NULL COMMENT 'Order in Chapter',
  `play_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Play Address',
  `chapter_id` int NULL DEFAULT NULL COMMENT 'Episode Key Value ID',
  `free` tinyint NULL DEFAULT 0 COMMENT '0: free, 1: pay',
  `cover_img` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Cover Image',
  `video_id` int NULL DEFAULT NULL COMMENT 'Video ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT 'Creat Time',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12630 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of episode
-- ----------------------------
INSERT INTO `episode` VALUES (11000, '微信小程序课程介绍', 1, 1, 'xdclass.net/aaa.mp4', 370, 0, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11001, '小程序是什么？小程序应用前景', 2, 2, 'xdclass.net/aaa.mp4', 370, 0, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11002, '微信小程序的注册流程', 3, 3, 'xdclass.net/aaa.mp4', 370, 0, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11003, '微信开发者工具安装及使用讲解', 4, 4, 'xdclass.net/aaa.mp4', 370, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11004, '小程序目录结构分析', 5, 5, 'xdclass.net/aaa.mp4', 370, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11005, '小程序配置文件分析', 6, 6, 'xdclass.net/aaa.mp4', 370, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11006, '新建一个小程序及框架组成介绍', 7, 1, 'xdclass.net/aaa.mp4', 371, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11007, '小程序生命周期和页面生命周期讲解', 8, 2, 'xdclass.net/aaa.mp4', 371, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11008, '了解小程序自适应尺寸单位rpx', 9, 3, 'xdclass.net/aaa.mp4', 371, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11009, '如何使用flex弹性布局', 10, 4, 'xdclass.net/aaa.mp4', 371, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11010, '必备知识点之数据绑定的概念和基础', 11, 1, 'xdclass.net/aaa.mp4', 372, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11011, '详细讲解动态数据绑定', 12, 2, 'xdclass.net/aaa.mp4', 372, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11012, '深度了解小程序的条件渲染', 13, 3, 'xdclass.net/aaa.mp4', 372, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11013, '深度了解小程序的列表渲染', 14, 4, 'xdclass.net/aaa.mp4', 372, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11014, '讲解绑定事件与事件交互', 15, 5, 'xdclass.net/aaa.mp4', 372, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11015, '深入了解事件机制--catch与bind', 16, 6, 'xdclass.net/aaa.mp4', 372, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11016, '小程序基础组件介绍', 17, 1, 'xdclass.net/aaa.mp4', 373, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11017, '小程序常用表单组件介绍（一）', 18, 2, 'xdclass.net/aaa.mp4', 373, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11018, '小程序常用表单组件介绍（二）', 19, 3, 'xdclass.net/aaa.mp4', 373, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11019, '小程序媒体组件介绍', 20, 4, 'xdclass.net/aaa.mp4', 373, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11020, '小程序地图组件map', 21, 5, 'xdclass.net/aaa.mp4', 373, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11021, '小程序画布组件canvas', 22, 6, 'xdclass.net/aaa.mp4', 373, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11022, '使用视图容器swiper实现轮播图', 23, 1, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11023, '深度讲解可滚动视图区域scroll-view', 24, 2, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11024, '使用scroll-view实现可滚动导航栏', 25, 3, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11025, 'cover-view及cover-image', 26, 4, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11026, '小程序页面导航组件', 27, 5, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11027, '常用路由跳转方法', 28, 6, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11028, '小程序页面的传参与取参', 29, 7, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11029, '如何实现小程序的底部导航栏', 30, 8, 'xdclass.net/aaa.mp4', 374, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11030, '利用require方法加载js模块文件', 31, 1, 'xdclass.net/aaa.mp4', 375, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11031, 'WXML模板编写与引入精讲', 32, 2, 'xdclass.net/aaa.mp4', 375, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11032, '讲解wxs模块引用', 33, 3, 'xdclass.net/aaa.mp4', 375, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11033, 'wxs案例练习', 34, 4, 'xdclass.net/aaa.mp4', 375, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11600, 'elasticsearch的课程介绍', 1, 1, 'xdclass.net/aaa.mp4', 385, 0, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11601, '什么是全文搜索引擎', 2, 1, 'xdclass.net/aaa.mp4', 386, 0, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11602, '为什么不用mysql做全文搜索', 3, 2, 'xdclass.net/aaa.mp4', 386, 0, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11603, '常见的搜索引擎', 4, 3, 'xdclass.net/aaa.mp4', 386, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11604, 'elasticsearch的快速安装', 5, 1, 'xdclass.net/aaa.mp4', 387, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11605, 'elasticsearch之目录结构介绍', 6, 2, 'xdclass.net/aaa.mp4', 387, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11606, 'elasticsearch核心概念的介绍', 7, 1, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11607, 'RESTful风格的介绍', 8, 2, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11608, '索引的介绍和使用', 9, 3, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11609, '映射的介绍和使用', 10, 4, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11610, '文档的增删改查', 11, 5, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11611, '搜索的简单使用', 12, 6, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11612, '分词器的介绍和使用', 13, 7, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11613, '常见中文分词器的使用', 14, 8, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11614, '常见的字段类型', 15, 9, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11615, 'kibana的安装和使用', 16, 10, 'xdclass.net/aaa.mp4', 388, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11616, 'es之批量导入数据', 17, 1, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11617, 'es之term的多种查询', 18, 2, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11618, '玩转es的范围查询', 19, 3, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11619, '玩转es的布尔查询', 20, 4, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11620, '玩转es的排序', 21, 5, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11621, '玩转es聚合查询之指标聚合', 22, 6, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11622, '玩转es聚合查询之桶聚合', 23, 7, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11623, 'es之query_string查询', 24, 8, 'xdclass.net/aaa.mp4', 389, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11624, 'es之索引别名的使用', 25, 1, 'xdclass.net/aaa.mp4', 390, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11625, 'es之如何重建索引', 26, 2, 'xdclass.net/aaa.mp4', 390, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11626, 'es之refresh操作', 27, 3, 'xdclass.net/aaa.mp4', 390, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11627, 'es之高亮查询', 28, 4, 'xdclass.net/aaa.mp4', 390, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11628, 'es之查询建议', 29, 5, 'xdclass.net/aaa.mp4', 390, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11629, 'NBA搜索实战之设计思路', 30, 1, 'xdclass.net/aaa.mp4', 391, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11630, 'springboot整合elasticsearch和mysql', 31, 2, 'xdclass.net/aaa.mp4', 391, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11631, 'elasticsearch之javaapi的使用', 32, 3, 'xdclass.net/aaa.mp4', 391, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11632, 'NBA搜索实战之导入球员数据', 33, 4, 'xdclass.net/aaa.mp4', 391, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11633, 'NBA搜索实战之通过名字查找球员', 34, 5, 'xdclass.net/aaa.mp4', 391, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11634, 'NBA搜索实战之通过国家或球队查找球员', 35, 6, 'xdclass.net/aaa.mp4', 391, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11635, 'NBA搜索实战之通过字母查找球员', 36, 7, 'xdclass.net/aaa.mp4', 391, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11636, '通往集群世界的大门', 37, 1, 'xdclass.net/aaa.mp4', 392, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11637, 'es集群的基本核心概念', 38, 2, 'xdclass.net/aaa.mp4', 392, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11638, '手把手教你搭建es集群', 39, 3, 'xdclass.net/aaa.mp4', 392, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11639, 'es集群索引分片管理', 40, 4, 'xdclass.net/aaa.mp4', 392, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11640, '玩转es集群健康管理', 41, 5, 'xdclass.net/aaa.mp4', 392, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11641, 'elasticsearch分布式工作原理', 42, 1, 'xdclass.net/aaa.mp4', 393, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11642, 'elasticsearch文档的路由原理', 43, 2, 'xdclass.net/aaa.mp4', 393, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11643, '剖析elasticsearch的乐观锁', 44, 3, 'xdclass.net/aaa.mp4', 393, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11644, '倒排索引到底是什么', 45, 4, 'xdclass.net/aaa.mp4', 393, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11645, '谈谈elasticsearch的分词原理', 46, 5, 'xdclass.net/aaa.mp4', 393, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11646, 'elasticsearch的课程总结', 47, 1, 'xdclass.net/aaa.mp4', 394, 1, NULL, 41, NULL);
INSERT INTO `episode` VALUES (11647, '小程序登录授权以及缓存storage讲解', 35, 1, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11648, '构建个人页面', 36, 2, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11649, '讲解首页搜索框及轮播图布局', 37, 3, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11650, '轮播图高度自适应方案', 38, 4, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11651, '深度讲解小程序request请求', 39, 5, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11652, '构建电影分类专区列表', 40, 6, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11653, '深度讲解电影分类专区模板复用', 41, 7, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11654, '星星评分组件的实现', 42, 8, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11655, '分离业务数据及数据接入', 43, 9, 'xdclass.net/aaa.mp4', 395, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11656, '电影搜索页面构建（上）', 44, 1, 'xdclass.net/aaa.mp4', 396, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11657, '电影搜索页面构建（下）', 45, 2, 'xdclass.net/aaa.mp4', 396, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11658, '动态更换电影分类标题', 46, 3, 'xdclass.net/aaa.mp4', 396, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11659, '构建查看更多页面', 47, 4, 'xdclass.net/aaa.mp4', 396, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11660, '深度讲解上拉加载功能实现', 48, 5, 'xdclass.net/aaa.mp4', 396, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11661, '构建电影详情页面', 49, 1, 'xdclass.net/aaa.mp4', 397, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11662, '电影详情页面数据接入', 50, 2, 'xdclass.net/aaa.mp4', 397, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11663, '小程序的版本上传', 51, 3, 'xdclass.net/aaa.mp4', 397, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11664, '电影实战总结', 52, 4, 'xdclass.net/aaa.mp4', 397, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11665, '手把手教你创建自定义组件', 53, 1, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11666, '必备知识之组件之间引用及slot插槽', 54, 2, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11667, '深度讲解组件的样式隔离', 55, 3, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11668, '深度讲解组件和页面通信', 56, 4, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11669, '组件事件传递数据交互', 57, 5, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11670, '组件tab标签栏实战演练', 58, 6, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11671, '组件对象动态设置组件数据', 59, 7, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11672, '讲解组件的生命周期', 60, 8, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11673, '讲解组件的数据监听器', 61, 9, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11674, '深度讲解组件的代码共享', 62, 10, 'xdclass.net/aaa.mp4', 398, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11675, 'WeUI框架介绍、下载及部署', 63, 1, 'xdclass.net/aaa.mp4', 399, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11676, 'WeUI组件使用介绍', 64, 2, 'xdclass.net/aaa.mp4', 399, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11677, '工具类库computed的使用', 65, 3, 'xdclass.net/aaa.mp4', 399, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11678, '小程序发起微信支付', 66, 1, 'xdclass.net/aaa.mp4', 400, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11679, '小程序获取收获地址', 67, 2, 'xdclass.net/aaa.mp4', 400, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11680, '不可不知的tabbar操作', 68, 3, 'xdclass.net/aaa.mp4', 400, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11681, '小程序图片应用api', 69, 4, 'xdclass.net/aaa.mp4', 400, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11682, '常用功能之小程序分享转发', 70, 5, 'xdclass.net/aaa.mp4', 400, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11683, '课程总结及行业前景展望', 71, 1, 'xdclass.net/aaa.mp4', 401, 1, NULL, 40, NULL);
INSERT INTO `episode` VALUES (11690, '小滴后台管理系统课程介绍', 1, 1, 'xdclass.net/aaa.mp4', 450, 0, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11691, '构建vue项目的利器—脚手架vue-cli3详解', 2, 1, 'xdclass.net/aaa.mp4', 451, 0, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11692, 'vue中组件间传值常用的几种方式(上)', 3, 2, 'xdclass.net/aaa.mp4', 451, 0, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11693, 'vue中组件间传值常用的几种方式(下)', 4, 3, 'xdclass.net/aaa.mp4', 451, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11694, '玩转单页面应用的控制中心—vue-router', 5, 4, 'xdclass.net/aaa.mp4', 451, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11695, '状态管理中心—vuex的基础用法', 6, 5, 'xdclass.net/aaa.mp4', 451, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11696, '状态管理中心—vuex的高级用法', 7, 6, 'xdclass.net/aaa.mp4', 451, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11697, 'Element常用组件布局组件详解', 8, 1, 'xdclass.net/aaa.mp4', 452, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11698, 'Element常用组件之弹出类型组件详解', 9, 2, 'xdclass.net/aaa.mp4', 452, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11699, 'Element常用组件—表格组件详解', 10, 3, 'xdclass.net/aaa.mp4', 452, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11700, 'Element常用组件—表单组件详解', 11, 4, 'xdclass.net/aaa.mp4', 452, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11701, '项目搭建及技术选型', 12, 1, 'xdclass.net/aaa.mp4', 453, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11702, '配置项目的基本环境及项目目录结构总体介绍', 13, 2, 'xdclass.net/aaa.mp4', 453, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11703, '需求分析及模块划分', 14, 1, 'xdclass.net/aaa.mp4', 454, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11704, '路由设计及左侧公用导航菜单开发', 15, 2, 'xdclass.net/aaa.mp4', 454, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11705, '顶部导航菜单及与左侧导航联动的面包屑实现(上)', 16, 3, 'xdclass.net/aaa.mp4', 454, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11706, '顶部导航菜单及与左侧导航联动的面包屑实现(下)', 17, 4, 'xdclass.net/aaa.mp4', 454, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11707, '使用vuex实现切换tab页功能', 18, 5, 'xdclass.net/aaa.mp4', 454, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11708, '构建页面组件，连通公共组件', 19, 6, 'xdclass.net/aaa.mp4', 454, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11709, '页面布局整体样式优化', 20, 7, 'xdclass.net/aaa.mp4', 454, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11710, '介绍mock.js及axios全局配置', 21, 1, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11711, '使用Mock随机返回主页数据', 22, 2, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11712, '使用element布局组件实现首页布局', 23, 3, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11713, '完成首页除图表外的内容', 24, 4, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11714, '完成首页table部分及ECharts介绍', 25, 5, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11715, '谈谈封装一个EChart组件的一些想法', 26, 6, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11716, '上手封装一个EChart组件并处理数据展示图表', 27, 7, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11717, '修改EChart组件样式及自适应图表(上)', 28, 8, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11718, '修改EChart组件样式自适应图表(下)', 29, 9, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11719, 'Echart组件封装总结', 30, 10, 'xdclass.net/aaa.mp4', 455, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11720, '用户管理页介绍及页面实现思路讲解', 31, 1, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11721, '更完善的表单组件封装及思路讲解', 32, 2, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11722, '通用表格组件封装及思路讲解', 33, 3, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11723, '完成表格组件的封装', 34, 4, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11724, '用户管理页页面功能实现(上)', 35, 5, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11725, '用户管理页页面功能实现(下)', 36, 6, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11726, '企业开发之权限管理思路讲解', 37, 7, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11727, '权限管理之动态返回菜单的实现', 38, 8, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11728, '权限管理之路由守卫判断用户登录状态', 39, 9, 'xdclass.net/aaa.mp4', 456, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11729, '小滴后台管理系统项目总结', 40, 1, 'xdclass.net/aaa.mp4', 457, 1, NULL, 42, NULL);
INSERT INTO `episode` VALUES (11801, 'Python的发展史及其特点', 2, 1, 'xdclass.net/aaa.mp4', 471, 0, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11802, 'python的应用及就业场景', 3, 2, 'xdclass.net/aaa.mp4', 471, 0, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11803, 'Windows环境下搭建Python环境', 4, 1, 'xdclass.net/aaa.mp4', 472, 0, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11804, '集成开发环境之PyCharm的安装', 5, 2, 'xdclass.net/aaa.mp4', 472, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11805, '万事开头难之HelloWorld程序', 6, 3, 'xdclass.net/aaa.mp4', 472, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11806, 'Python开发之常用的其他几种方式', 7, 4, 'xdclass.net/aaa.mp4', 472, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11807, 'Python核心基础知识之数字类型', 8, 1, 'xdclass.net/aaa.mp4', 473, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11808, 'Python核心基础知识之神奇的整数之10', 9, 2, 'xdclass.net/aaa.mp4', 473, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11809, 'Python核心基础知识之布尔类型及bool函数', 10, 3, 'xdclass.net/aaa.mp4', 473, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11810, 'Python核心基础知识之字符串及其编码', 11, 4, 'xdclass.net/aaa.mp4', 473, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11811, 'Python核心基础知识之单引号、双引号、三引号与转义字符串', 12, 5, 'xdclass.net/aaa.mp4', 473, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11812, 'Python核心基础知识之字符串常见的操作', 13, 6, 'xdclass.net/aaa.mp4', 473, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11813, 'Python核心基础知识之算术运算符', 14, 1, 'xdclass.net/aaa.mp4', 474, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11814, 'Python核心基础知识之比较运算符', 15, 2, 'xdclass.net/aaa.mp4', 474, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11815, 'Python核心基础知识之赋值运算符', 16, 3, 'xdclass.net/aaa.mp4', 474, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11816, 'Python核心基础知识之位运算符', 17, 4, 'xdclass.net/aaa.mp4', 474, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11817, 'Python核心基础知识之逻辑运算符', 18, 5, 'xdclass.net/aaa.mp4', 474, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11818, 'Python核心基础知识之成员运算符与身份运算符', 19, 6, 'xdclass.net/aaa.mp4', 474, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11819, 'Python核心基础知识之运算符的优先级', 20, 7, 'xdclass.net/aaa.mp4', 474, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11820, 'Python核心基础知识之条件语句', 21, 1, 'xdclass.net/aaa.mp4', 475, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11821, 'Python核心基础知识之for循环语句', 22, 2, 'xdclass.net/aaa.mp4', 475, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11822, 'Python核心基础知识之while循环语句', 23, 3, 'xdclass.net/aaa.mp4', 475, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11823, 'Python核心基础知识之嵌套循环', 24, 4, 'xdclass.net/aaa.mp4', 475, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11824, 'Python核心基础知识之循环退出与continue语句', 25, 5, 'xdclass.net/aaa.mp4', 475, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11825, 'Python核心数据结构之列表（list）', 26, 1, 'xdclass.net/aaa.mp4', 476, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11826, 'Python核心数据结构之集合（set）', 27, 2, 'xdclass.net/aaa.mp4', 476, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11827, 'Python核心数据结构之元组(tuple)', 28, 3, 'xdclass.net/aaa.mp4', 476, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11828, 'Python核心数据结构之字典(dict)', 29, 4, 'xdclass.net/aaa.mp4', 476, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11829, 'Python核心之range类型', 30, 5, 'xdclass.net/aaa.mp4', 476, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11830, '真的不可变？深入理解可变与不可变对象', 31, 6, 'xdclass.net/aaa.mp4', 476, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11831, 'Python高级特性之切片', 32, 1, 'xdclass.net/aaa.mp4', 477, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11832, 'Python高级特性之列表生成式', 33, 2, 'xdclass.net/aaa.mp4', 477, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11833, 'Python高级特性之迭代', 34, 3, 'xdclass.net/aaa.mp4', 477, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11834, 'Python高级特性之生成器', 35, 4, 'xdclass.net/aaa.mp4', 477, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11835, 'Python中的函数及其调用', 36, 1, 'xdclass.net/aaa.mp4', 478, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11836, 'Python中的自定义函数', 37, 2, 'xdclass.net/aaa.mp4', 478, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11837, 'Python特性之让函数返回多个值', 38, 3, 'xdclass.net/aaa.mp4', 478, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11838, '核心基础知识之函数的递归', 39, 4, 'xdclass.net/aaa.mp4', 478, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11839, '课后习题解答', 40, 5, 'xdclass.net/aaa.mp4', 478, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11840, '核心基础知识之形参与实参以及位置参数', 41, 1, 'xdclass.net/aaa.mp4', 479, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11841, '核心基础知识之默认参数', 42, 2, 'xdclass.net/aaa.mp4', 479, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11842, '核心基础知识之可变参数', 43, 3, 'xdclass.net/aaa.mp4', 479, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11843, '核心基础知识之命名关键字参数', 44, 4, 'xdclass.net/aaa.mp4', 479, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11844, '核心基础知识之关键字参数', 45, 5, 'xdclass.net/aaa.mp4', 479, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11845, '高级知识点之匿名函数lambda表达式', 46, 1, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11846, 'Python中的高阶函数之map', 47, 2, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11847, 'Python中的高阶函数之reduce', 48, 3, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11848, 'Python中的高阶函数之filter', 49, 4, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11849, 'Python中的高阶函数之sorted', 50, 5, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11850, '高级知识点之闭包', 51, 6, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11851, '高频面试点之闭包经典问题', 52, 7, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11852, 'Python中的装饰器及其应用', 53, 8, 'xdclass.net/aaa.mp4', 480, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11853, '初识Python工程组织结构之包、模块等核心概念', 54, 1, 'xdclass.net/aaa.mp4', 481, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11854, '核心知识之命名空间', 55, 2, 'xdclass.net/aaa.mp4', 481, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11855, '在Python工程中导入模块', 56, 3, 'xdclass.net/aaa.mp4', 481, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11856, '在Python工程中导入变量', 57, 4, 'xdclass.net/aaa.mp4', 481, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11857, 'python中的导包机制', 58, 5, 'xdclass.net/aaa.mp4', 481, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11858, '高级知识点之__init__.py的作用及用法', 59, 6, 'xdclass.net/aaa.mp4', 481, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11859, '高级知识点之__all__和__name__的作用及其用法', 60, 7, 'xdclass.net/aaa.mp4', 481, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11860, 'Python中异常的捕获与处理', 61, 1, 'xdclass.net/aaa.mp4', 482, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11861, '自定义异常与异常的抛出', 62, 2, 'xdclass.net/aaa.mp4', 482, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11862, '如何通过debug分析问题', 63, 3, 'xdclass.net/aaa.mp4', 482, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11863, '开发必备之为代码编写单元测试', 64, 4, 'xdclass.net/aaa.mp4', 482, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11864, 'IO核心知识之输入输出', 65, 1, 'xdclass.net/aaa.mp4', 483, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11865, 'IO核心知识之文件的读取', 66, 2, 'xdclass.net/aaa.mp4', 483, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (11866, '课程总体介绍', 1, 1, 'xdclass.net/aaa.mp4', 470, 0, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12101, 'Java新特性玩转JDK8~13课程大纲讲解', 1, 1, 'xdclass.net/aaa.mp4', 510, 0, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12102, 'Java新特性之JDK8相关开发环境准备', 2, 2, 'xdclass.net/aaa.mp4', 510, 0, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12103, 'Java新特性玩转JDK8之default关键字', 3, 1, 'xdclass.net/aaa.mp4', 511, 0, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12104, 'Java新特性玩转JDK8之新增base64加解密API', 4, 2, 'xdclass.net/aaa.mp4', 511, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12105, 'Java新特性玩转JDK8之时间日期处理类上集', 5, 3, 'xdclass.net/aaa.mp4', 511, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12106, 'Java新特性玩转JDK8之时间日期处理类下集', 6, 4, 'xdclass.net/aaa.mp4', 511, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12107, 'Java新特性玩转JDK8之Optional类', 7, 5, 'xdclass.net/aaa.mp4', 511, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12108, 'Java高级核心玩转JDK8Lambda表达式', 8, 1, 'xdclass.net/aaa.mp4', 512, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12109, 'Java新特性玩转JDK8之自定义函数式编程实战', 9, 2, 'xdclass.net/aaa.mp4', 512, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12110, 'Java新特性玩转JDK8之函数式编程Function', 10, 1, 'xdclass.net/aaa.mp4', 513, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12111, 'Java新特性玩转JDK8之函数式编程BiFunction', 11, 2, 'xdclass.net/aaa.mp4', 513, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12112, 'Java新特性玩转JDK8之函数式编程Consumer', 12, 3, 'xdclass.net/aaa.mp4', 513, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12113, 'Java新特性玩转JDK8之函数式编程Supplier', 13, 4, 'xdclass.net/aaa.mp4', 513, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12114, 'Java新特性玩转JDK8之函数式编程Predicate', 14, 5, 'xdclass.net/aaa.mp4', 513, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12115, 'Java新特性玩转JDK8之方法与构造函数引用', 15, 6, 'xdclass.net/aaa.mp4', 513, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12116, 'Java新特性玩转JDK8之流Stream实战', 16, 1, 'xdclass.net/aaa.mp4', 514, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12117, 'Java新特性玩转JDK8之流操作map和filter函数', 17, 2, 'xdclass.net/aaa.mp4', 514, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12118, 'Java新特性玩转JDK8之流操作limit和sorted函数', 18, 3, 'xdclass.net/aaa.mp4', 514, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12119, 'Java新特性玩转JDK8之流操作allMatch和anyMatch函数', 19, 4, 'xdclass.net/aaa.mp4', 514, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12120, 'Java新特性玩转JDK8之流操作max和min函数', 20, 5, 'xdclass.net/aaa.mp4', 514, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12121, 'Java新特性玩转JDK8之并行流parallelStream', 21, 1, 'xdclass.net/aaa.mp4', 515, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12122, 'Java新特性玩转JDK8之reduce操作', 22, 2, 'xdclass.net/aaa.mp4', 515, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12123, 'Java新特性玩转JDK8之集合的foreach', 23, 3, 'xdclass.net/aaa.mp4', 515, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12124, 'Java新特性玩转JDK8之collector收集器', 24, 1, 'xdclass.net/aaa.mp4', 516, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12125, 'Java新特性玩转JDK8之joining函数', 25, 2, 'xdclass.net/aaa.mp4', 516, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12126, 'Java新特性玩转JDK8之收集器partitioningBy分组', 26, 3, 'xdclass.net/aaa.mp4', 516, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12127, 'Java新特性玩转JDK8之收集器groupby分组', 27, 4, 'xdclass.net/aaa.mp4', 516, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12128, 'Java新特性玩转JDK8之收集器groupby进阶', 28, 5, 'xdclass.net/aaa.mp4', 516, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12129, 'Java新特性玩转JDK8之summarizing集合统计', 29, 6, 'xdclass.net/aaa.mp4', 516, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12130, 'Collection和Lambda电商数据处理实战需求说明', 30, 1, 'xdclass.net/aaa.mp4', 517, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12131, 'JDK8新特性处理电商订单数据之答案讲解上集', 31, 2, 'xdclass.net/aaa.mp4', 517, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12132, 'JDK8新特性处理电商订单数据之答案讲解下集', 32, 3, 'xdclass.net/aaa.mp4', 517, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12133, 'JDK8新特性之新内存空间Matespace', 33, 1, 'xdclass.net/aaa.mp4', 518, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12134, 'JDK7新特性之try-with-resources', 34, 2, 'xdclass.net/aaa.mp4', 518, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12135, '新版JDK13下载和本章课程说明', 35, 1, 'xdclass.net/aaa.mp4', 519, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12136, 'java高级核心之JDK9常用Jshell实战', 36, 2, 'xdclass.net/aaa.mp4', 519, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12137, '接口方法进阶之JDK9私有方法', 37, 3, 'xdclass.net/aaa.mp4', 519, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12138, 'JDK9新特性之增强try-with-resource', 38, 4, 'xdclass.net/aaa.mp4', 519, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12139, 'JDK9之快速创建只读集合', 39, 1, 'xdclass.net/aaa.mp4', 520, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12140, 'JDK9之新增StreamAPI讲解', 40, 2, 'xdclass.net/aaa.mp4', 520, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12141, 'JDK10之局部变量类型推断var讲解', 41, 1, 'xdclass.net/aaa.mp4', 521, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12142, 'JDK11之新增HttpClient客户端快速入门', 42, 2, 'xdclass.net/aaa.mp4', 521, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12143, 'JDK11之标准HttpClient提交Post和异步请求', 43, 3, 'xdclass.net/aaa.mp4', 521, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12144, 'JDK11之标准HttpClient提交Http2请求', 44, 4, 'xdclass.net/aaa.mp4', 521, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12145, 'JDK11之javac和java命令优化', 45, 5, 'xdclass.net/aaa.mp4', 521, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12146, '大话JDK各个版本常见问题讲解', 46, 1, 'xdclass.net/aaa.mp4', 522, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12147, '玩转JDK13新特性之多行文本块', 47, 2, 'xdclass.net/aaa.mp4', 522, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12148, '玩转JDK13新特性之增强switch表达式', 48, 3, 'xdclass.net/aaa.mp4', 522, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12149, '玩转JDK8~13新特性课程总结和学习路线规划', 49, 1, 'xdclass.net/aaa.mp4', 523, 1, NULL, 44, NULL);
INSERT INTO `episode` VALUES (12250, '课程大纲总览', 1, 1, 'xdclass.net/aaa.mp4', 600, 0, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12251, 'Docker容器化技术的介绍和使用场景', 2, 2, 'xdclass.net/aaa.mp4', 600, 0, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12252, 'Window10环境下安装Docker', 3, 1, 'xdclass.net/aaa.mp4', 601, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12253, 'LinuxCentos7环境下安装Docker', 4, 2, 'xdclass.net/aaa.mp4', 601, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12254, 'Docker镜像的搜索下载以及查看删除实战', 5, 3, 'xdclass.net/aaa.mp4', 601, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12255, 'Docker核心基础之配置阿里云镜像加速', 6, 4, 'xdclass.net/aaa.mp4', 601, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12256, 'Docker的体系结构之镜像与容器', 7, 5, 'xdclass.net/aaa.mp4', 601, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12257, 'Docker核心基础之容器的构建等基本操作', 8, 6, 'xdclass.net/aaa.mp4', 601, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12258, 'Docker核心基础之容器的文件复制与挂载', 9, 7, 'xdclass.net/aaa.mp4', 601, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12259, '构建自定义镜像的意义与应用场景', 10, 1, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12260, 'Commit构建自定义镜像', 11, 2, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12261, '核心必备知识之Dockerfile构建镜像实战', 12, 3, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12262, 'Docker核心知识之镜像分层结构剖析', 13, 4, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12263, '不得不掌握的Dockerfile基础指令', 14, 5, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12264, '实战系列之Dockerfile构建JAVA网站镜像', 15, 6, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12265, '实战系列之Dockerfile构建nginx镜像', 16, 7, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12266, '实战系列之Dockerfile构建redis镜像', 17, 8, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12267, '实战系列之docker快速部署mysql数据库并初始化', 18, 9, 'xdclass.net/aaa.mp4', 602, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12268, 'Docker容器的网络模式介绍', 19, 1, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12269, 'Docker容器的bridge模式实战演练', 20, 2, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12270, 'Docker容器的host模式实战演练', 21, 3, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12271, 'Docker容器的none模式介绍', 22, 4, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12272, 'Docker容器间基于Link实现单向通信', 23, 5, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12273, 'Docker容器间利用brige网桥实现双向通信', 24, 6, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12274, 'Docker容器的特权模式介绍', 25, 7, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12275, 'Docker核心知识之Volume数据共享', 26, 8, 'xdclass.net/aaa.mp4', 603, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12276, '实用工具Docker-Compose的介绍与安装', 27, 1, 'xdclass.net/aaa.mp4', 604, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12277, '实用工具Docker-Compose的快速上手', 28, 2, 'xdclass.net/aaa.mp4', 604, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12278, '实用工具Docker-Compose核实用技能', 29, 3, 'xdclass.net/aaa.mp4', 604, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12279, '实战项目篇之利用Docker-Compose快速搭建个人博客', 30, 4, 'xdclass.net/aaa.mp4', 604, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12280, '实战项目篇之Docker-Compose详细分析', 31, 5, 'xdclass.net/aaa.mp4', 604, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12281, '公司中Docker镜像仓库使用讲解', 32, 1, 'xdclass.net/aaa.mp4', 605, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12282, '阿里云镜像仓库的搭建与使用', 33, 2, 'xdclass.net/aaa.mp4', 605, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12283, '企业核心篇幅之harbor仓库搭建', 34, 3, 'xdclass.net/aaa.mp4', 605, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12284, '企业核心篇幅之harbor仓库配置与使用', 35, 4, 'xdclass.net/aaa.mp4', 605, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12285, '实战系列之本地镜像容器的载入与载出', 36, 5, 'xdclass.net/aaa.mp4', 605, 1, NULL, 45, NULL);
INSERT INTO `episode` VALUES (12350, '茫茫人海中为何选择java这门语言', 1, 1, 'xdclass.net/aaa.mp4', 650, 0, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12351, '新版java8+从入门到告诉高手课程介绍', 2, 2, 'xdclass.net/aaa.mp4', 650, 0, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12352, 'Java语言编程发展历程和JVM概述', 3, 3, 'xdclass.net/aaa.mp4', 650, 0, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12353, '概念理解面向对象编程和特点', 4, 4, 'xdclass.net/aaa.mp4', 650, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12354, 'CMD和Sublime工具安装、环境变量介绍使用', 5, 1, 'xdclass.net/aaa.mp4', 651, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12355, '新版Java环境变量配置', 6, 2, 'xdclass.net/aaa.mp4', 651, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12356, '完成第一个java程序', 7, 3, 'xdclass.net/aaa.mp4', 651, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12357, 'HelloWolrd程序剖析java语法', 8, 4, 'xdclass.net/aaa.mp4', 651, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12358, '什么是集成开发环境和java常见开发工具的介绍', 9, 1, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12359, 'IDEA的社区版本安装和基本配置', 10, 2, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12360, '使用idea创建自己的第一个项目', 11, 3, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12361, '实战idea里面编写和运行代码', 12, 4, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12362, '公司开发必备技能之ideadebug基础调试', 13, 5, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12363, '写代码的小帮手之java注释的介绍', 14, 6, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12364, 'java模块划分和包的使用', 15, 7, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12365, '本章课程作业练习题布置', 16, 8, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12366, '本章课程作业常见问题和答案解析', 17, 9, 'xdclass.net/aaa.mp4', 652, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12367, 'java程序的标识符和关键字', 18, 1, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12368, 'java核心基础知识之修饰符上集', 19, 2, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12369, 'java核心基础知识之修饰符下集', 20, 3, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12370, 'java核心基础之数据类型', 21, 4, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12371, 'java核心基础之数组讲解', 22, 5, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12372, 'java内存空间堆栈讲解', 23, 6, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12373, 'Java核心基础之变量类型', 24, 7, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12374, '方法入参和返回值讲解', 25, 8, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12375, 'java核心运算符上', 26, 9, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12376, 'java核心基础运算符和优先级下集', 27, 10, 'xdclass.net/aaa.mp4', 653, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12377, 'java核心基础之while循环讲解', 28, 1, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12378, 'java核心基础之for循环讲解', 29, 2, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12379, 'java核心基础之循环退出和跳过', 30, 3, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12380, 'java核心基础之ifelse条件语句', 31, 4, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12381, 'java核心基础之switch条件分支语句', 32, 5, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12382, 'static静态代码块和静态方法讲解', 33, 6, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12383, '本章课程作业布置', 34, 7, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12384, '本章课程作业常见问题和答案解析', 35, 8, 'xdclass.net/aaa.mp4', 654, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12385, '什么是面向对象的编程OOP', 36, 1, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12386, 'java面向对象中的构造函数和封装', 37, 2, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12387, 'java面向对象核心关键字this讲解', 38, 3, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12388, 'java面向对象之继承', 39, 4, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12389, 'java面向对象编程之继承的super关键词', 40, 5, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12390, 'java面向对象编程之抽象', 41, 6, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12391, 'java面向对象编程之接口', 42, 7, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12392, 'java面向对象编程之instanceOf关键词和多态', 43, 8, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12393, '本章课程作业练习题之简单计算器编写', 44, 9, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12394, '本章课程作业常见问题和答案解析', 45, 10, 'xdclass.net/aaa.mp4', 655, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12395, 'java异常Exception讲解', 46, 1, 'xdclass.net/aaa.mp4', 656, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12396, 'java內置异常体系分类和核心方法讲解', 47, 2, 'xdclass.net/aaa.mp4', 656, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12397, 'java进阶基础之trycatch异常捕获', 48, 3, 'xdclass.net/aaa.mp4', 656, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12398, 'java异常进阶之finally讲解和多重捕获', 49, 4, 'xdclass.net/aaa.mp4', 656, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12399, 'Java异常处理之throws-throw关键词', 50, 5, 'xdclass.net/aaa.mp4', 656, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12400, 'java进阶基础之自定义异常', 51, 6, 'xdclass.net/aaa.mp4', 656, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12401, '计算机核心基础之大话数据结构', 52, 1, 'xdclass.net/aaa.mp4', 657, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12402, '计算机核心基础之散列表HashTable讲解', 53, 2, 'xdclass.net/aaa.mp4', 657, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12403, 'java进阶核心之Collection集合框架概要', 54, 3, 'xdclass.net/aaa.mp4', 657, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12404, 'java进阶核心之集合框架List介绍', 55, 4, 'xdclass.net/aaa.mp4', 657, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12405, 'Java进阶核心之集合框架Map介绍上集', 56, 5, 'xdclass.net/aaa.mp4', 657, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12406, 'java进阶核心之集合框架Map介绍下集', 57, 6, 'xdclass.net/aaa.mp4', 657, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12407, 'java进阶核心之集合框架set介绍', 58, 7, 'xdclass.net/aaa.mp4', 657, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12408, 'Java集合框架遍历之迭代器(Iterator)', 59, 1, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12409, 'Java迭代器进阶和注意事项', 60, 2, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12410, 'Java集合框架之Collections工具类讲解上集', 61, 3, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12411, 'Java集合框架之Collections工具类讲解下集', 62, 4, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12412, 'Java集合框架元素排序之Comparable排序接口讲解', 63, 5, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12413, '新版JDK之Objects工具类实战', 64, 6, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12414, '新版JDK之重写HashCode和Equals实战', 65, 7, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12415, '本章课程作业练习题布置', 66, 8, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12416, '本章课程作业常见问题和答案解析', 67, 9, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12417, '集合框架Collection初步总结', 68, 10, 'xdclass.net/aaa.mp4', 658, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12418, '计算机文件和路径介绍', 69, 1, 'xdclass.net/aaa.mp4', 659, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12419, 'java核心知识之File类讲解', 70, 2, 'xdclass.net/aaa.mp4', 659, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12420, '本章课程作业练习题布置', 71, 3, 'xdclass.net/aaa.mp4', 659, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12421, '本章课程作业常见问题和答案解析', 72, 4, 'xdclass.net/aaa.mp4', 659, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12422, 'Java核心包java.io包介绍', 73, 1, 'xdclass.net/aaa.mp4', 660, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12423, 'Java输入流InputStream讲解', 74, 2, 'xdclass.net/aaa.mp4', 660, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12424, 'Java输出流OutputStream讲解', 75, 3, 'xdclass.net/aaa.mp4', 660, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12425, 'JavaIO包之缓冲Buffer输入输出流', 76, 4, 'xdclass.net/aaa.mp4', 660, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12426, '缓冲输入输出流之Java文件拷贝实战', 77, 5, 'xdclass.net/aaa.mp4', 660, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12427, '本章课程作业练习题布置', 78, 6, 'xdclass.net/aaa.mp4', 660, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12428, '本章课程作业常见问题和答案解析', 79, 7, 'xdclass.net/aaa.mp4', 660, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12429, 'Java字符输入流Reader讲解', 80, 1, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12430, 'Java字符输出流Writer讲解', 81, 2, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12431, 'Buffered Reader字符输⼊缓冲流实战', 82, 3, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12432, ' BufferedWriter字符输出缓冲流实战', 83, 4, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12433, '字符流和字节流的桥梁InputStreamReader', 84, 5, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12434, '字符流和字节流的桥梁OutputStreamWriter', 85, 6, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12435, ' JavaIO流内部异常处理', 86, 7, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12436, '新版JDK try-with-resource处理IO异常', 87, 8, 'xdclass.net/aaa.mp4', 661, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12437, 'Java日期处理类Date详解', 88, 1, 'xdclass.net/aaa.mp4', 662, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12438, '新版JDK8之时间⽇期处理类', 89, 2, 'xdclass.net/aaa.mp4', 662, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12439, '新版JDK8之时间⽇期格式化', 90, 3, 'xdclass.net/aaa.mp4', 662, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12440, 'Java顶级对象之Object对象-面试题', 91, 1, 'xdclass.net/aaa.mp4', 663, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12441, 'Java基本数学运算之Math类详解', 92, 2, 'xdclass.net/aaa.mp4', 663, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12442, 'Java核心字符串String进阶', 93, 3, 'xdclass.net/aaa.mp4', 663, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12443, 'java系统类之System类讲解', 94, 4, 'xdclass.net/aaa.mp4', 663, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12444, '基本数据类型的包装数据类型讲解-面试题', 95, 5, 'xdclass.net/aaa.mp4', 663, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12445, '什么是枚举类和使用场景', 96, 1, 'xdclass.net/aaa.mp4', 664, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12446, 'Java枚举的常见API的使用', 97, 2, 'xdclass.net/aaa.mp4', 664, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12447, '人工智能问答机器人项目介绍和演示', 98, 1, 'xdclass.net/aaa.mp4', 665, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12448, '网络请求http基础知识讲解', 99, 2, 'xdclass.net/aaa.mp4', 665, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12449, '网络请求核心类URL和URLConnnection', 100, 3, 'xdclass.net/aaa.mp4', 665, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12450, '企业开发主流轻量级的数据交换格式', 101, 4, 'xdclass.net/aaa.mp4', 665, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12451, 'JavaSE整合第三方包和JSON开源库介绍', 102, 5, 'xdclass.net/aaa.mp4', 665, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12452, ' System.in 和 Scanner实时获取⽤户输⼊', 103, 1, 'xdclass.net/aaa.mp4', 666, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12453, '智能问答API平台介绍', 104, 2, 'xdclass.net/aaa.mp4', 666, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12454, '项目基本框架搭建和模块划分', 105, 3, 'xdclass.net/aaa.mp4', 666, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12455, '智能问答机器人项目Http工具类封装', 106, 4, 'xdclass.net/aaa.mp4', 666, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12456, '智能问答机器人项目service层接口定义', 107, 5, 'xdclass.net/aaa.mp4', 666, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12457, '智能问答机器人项目核心入口类实现', 108, 6, 'xdclass.net/aaa.mp4', 666, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12458, '智能问答机器人项目打包和使用《完结》', 109, 7, 'xdclass.net/aaa.mp4', 666, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12459, '小滴课堂疯狂新版Java系列基础课程总结', 110, 1, 'xdclass.net/aaa.mp4', 667, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12460, 'Java高级工程师学习路线', 111, 2, 'xdclass.net/aaa.mp4', 667, 1, NULL, 46, NULL);
INSERT INTO `episode` VALUES (12470, '面向对象及其三大特性', 67, 1, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12471, '揭开面向对象神秘的面纱之类和对象', 68, 2, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12472, '面向对象中类的构造函数', 69, 3, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12473, '面向对象中类变量与实例变量的区别', 70, 4, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12474, '面向对象中实例方法与self关键字', 71, 5, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12475, '面向对象中类方法与静态方法', 72, 6, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12476, 'Python中的访问限制', 73, 7, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12477, '打破Python中的访问限制', 74, 8, 'xdclass.net/aaa.mp4', 484, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12478, 'python中的继承', 75, 1, 'xdclass.net/aaa.mp4', 485, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12479, '高级知识点之super的作用及其用法', 76, 2, 'xdclass.net/aaa.mp4', 485, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12480, '抽象方法与多态', 77, 3, 'xdclass.net/aaa.mp4', 485, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12481, 'Python中的多重继承', 78, 4, 'xdclass.net/aaa.mp4', 485, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12482, '多重继承所带来的问题', 79, 5, 'xdclass.net/aaa.mp4', 485, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12483, '核心知识点之枚举类', 80, 6, 'xdclass.net/aaa.mp4', 485, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12484, '初识socket', 81, 1, 'xdclass.net/aaa.mp4', 486, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12485, '基于UDP实现客户端与服务端通信', 82, 2, 'xdclass.net/aaa.mp4', 486, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12486, '基于TCP实现客户端与服务端通信', 83, 3, 'xdclass.net/aaa.mp4', 486, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12487, '课后作业解答', 84, 4, 'xdclass.net/aaa.mp4', 486, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12488, '使用requests模块发送http请求', 85, 5, 'xdclass.net/aaa.mp4', 486, 1, NULL, 43, NULL);
INSERT INTO `episode` VALUES (12590, 'node.js课程介绍及案例演示', 1, 1, 'xdclass.net/aaa.mp4', 710, 0, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12591, 'nodejs环境安装配置', 2, 2, 'xdclass.net/aaa.mp4', 710, 0, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12592, 'vscode编辑器和插件安装', 3, 3, 'xdclass.net/aaa.mp4', 710, 0, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12593, '初建NodeJs应用及调试', 4, 4, 'xdclass.net/aaa.mp4', 710, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12594, '深入理解commonjs模块规范', 5, 5, 'xdclass.net/aaa.mp4', 710, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12595, 'Buffer缓冲器常用api（一）', 6, 1, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12596, 'Buffer缓冲器常用api（二）', 7, 2, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12597, 'node.js文件系统模块常用api操作', 8, 3, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12598, 'node.js文件系统模块常用api操作', 9, 4, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12599, '核心知识之文件流讲解', 10, 5, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12600, '基础模块path常用api', 11, 6, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12601, '深度讲解node.js事件触发器', 12, 7, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12602, '核心模块util常用工具', 13, 8, 'xdclass.net/aaa.mp4', 711, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12603, 'http的发展历史', 14, 1, 'xdclass.net/aaa.mp4', 712, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12604, '走进http之请求方法和响应头信息', 15, 2, 'xdclass.net/aaa.mp4', 712, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12605, '走进http之状态码和content-type', 16, 3, 'xdclass.net/aaa.mp4', 712, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12606, '搭建自己的第一个http服务器', 17, 4, 'xdclass.net/aaa.mp4', 712, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12607, '实战案例之nodejs简易爬虫', 18, 5, 'xdclass.net/aaa.mp4', 712, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12608, '如何处理客户端getpost请求', 19, 1, 'xdclass.net/aaa.mp4', 713, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12609, 'nodemon自动重启工具安装配置', 20, 2, 'xdclass.net/aaa.mp4', 713, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12610, '讲解初始化路由及接口开发', 21, 3, 'xdclass.net/aaa.mp4', 713, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12611, '案例实战用户列表增删改查', 22, 4, 'xdclass.net/aaa.mp4', 713, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12612, '教你轻松解决接口跨域问题', 23, 5, 'xdclass.net/aaa.mp4', 713, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12613, 'mysql介绍', 24, 1, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12614, '开发前准备之mysql数据库设计', 25, 2, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12615, 'mysql常用数据库操作语句', 26, 3, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12616, 'NodeJs连接mysql数据库讲解', 27, 4, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12617, '深度讲解mysql连接池', 28, 5, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12618, '结合数据库改造用户列表接口（增）', 29, 6, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12619, '结合数据库改造用户列表接口（删改）', 30, 7, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12620, '结合数据库改造用户列表接口（动态查询）', 31, 8, 'xdclass.net/aaa.mp4', 714, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12621, 'MongoDB的介绍及安装', 32, 1, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12622, '玩转MongoDB可视化工具', 33, 2, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12623, '讲解第三方包mongoose的使用', 34, 3, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12624, 'MongoDB常用数据库操作之创建集合、文档', 35, 4, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12625, '讲解MongoDB如何导入文件数据', 36, 5, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12626, 'MongoDB常用数据库操作之查询文档', 37, 6, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12627, 'MongoDB常用数据库操作之更新文档', 38, 7, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12628, 'MongoDB常用数据库操作之删除文档', 39, 8, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);
INSERT INTO `episode` VALUES (12629, '深度讲解MongoDB字段验证', 40, 9, 'xdclass.net/aaa.mp4', 715, 1, NULL, 47, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Nickname',
  `pwd` varchar(124) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Password',
  `head_img` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Profile',
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'Phone Number',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT 'Create Time',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '铁锤', '3243242343', 'https://thirdwx.qlogo.cn/mmopen/vi_32/cer7IibrbEfP3cAJnpe96DDnb5Y82ShLuial2HuQpnUbak7k4G4tT6Wk7A5cmYiclI8iaJia5Aia8UZMWyEgVW3nvjkA/132', '2342452', '2018-06-30 15:15:35');
INSERT INTO `user` VALUES (2, 'coffee', 'werewrew', 'https://thirdwx.qlogo.cn/mmopen/vi_32/cer7IibrbEfP3cAJnpe96DDnb5Y82ShLuial2HuQpnUbak7k4G4tT6Wk7A5cmYiclI8iaJia5Aia8UZMWyEgVW3nvjkA/132', '56453445', '2018-06-30 16:42:30');
INSERT INTO `user` VALUES (3, 'niatouguai', 'werer45423', 'http://thirdwx.qlogo.cn/mmopen/vi_32/WXTcCMevfMa6dpxkWtaaCdDH0TSdwHxNYfFpoRp6aJdnI9sMaWAEOIwia6JlZibntwSypIdicRcnSxqsFWiaEQFR6A/132', '234235', '2018-06-30 18:28:23');
INSERT INTO `user` VALUES (4, '网二', '7D4E6C00198C8BCA9F505C1AD3ADBEE7', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/upload/video/video_cover.png', '435234234', '2018-07-01 00:52:47');
INSERT INTO `user` VALUES (5, '大乔', 'gfwe3f4f3frf', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKFAPgcL5zMhldHKR8fR9TKHjNru8fuTia5dDpiaPvyMlahbsQG4VYh94SCYvupVmdu8sF7ia39bPnicg/132', '65345', '2018-07-01 11:31:36');
INSERT INTO `user` VALUES (6, 'Wiggin', 'df34rg3feqg', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIlPAtqFWzr6zQa33esvNNy1MsNw3Ik4O4nGzzcLSW9y9ia8xticev4RtT4JVK5USjUPQqfJarC3lOQ/132', '234324', '2018-07-01 14:35:37');
INSERT INTO `user` VALUES (7, '天际浮云', 'fr3wt443f3rfref', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLm1cr9F5xkbib3sSWzgic7OQfxkRva6RICTAk7wwVd5BN51oVdbdF0PLtGSzciaZMs4lTgHVSWlzQyA/132', '23423534', '2018-07-01 18:41:39');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Video Title',
  `summary` varchar(1026) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Video Summary',
  `cover_img` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Cover Image',
  `price` int NULL DEFAULT NULL COMMENT 'Price, cent unit',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT 'Create Time',
  `c_id` int NULL DEFAULT NULL COMMENT 'Sub-Category ID',
  `point` double(11, 2) NULL DEFAULT 8.70 COMMENT 'Mark, Default 8.7, Max 10',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (30, '互联网架构之JAVA虚拟机JVM零基础到高级实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/jvm_detail.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/jvm.jpeg', 3980, '2019-06-24 22:14:00', 6, 9.10);
INSERT INTO `video` VALUES (31, '权限框架Shiro+SpringBoot2.x零基础到高级实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/shiro_detail.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/shiro.jpeg', 2980, '2019-06-24 22:14:00', 6, 8.90);
INSERT INTO `video` VALUES (32, '新版Maven3.5+Nexus私服搭建全套核心技术', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/maven_detail.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/maven.png', 1980, '2019-03-04 22:14:00', 6, 8.90);
INSERT INTO `video` VALUES (33, 'JavaScript核心基础到进阶之路', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/js_detail.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/js.png', 2980, '2019-03-04 22:14:00', 16, 8.80);
INSERT INTO `video` VALUES (34, 'HTML5+CSS3前端开发教程flex布局项目实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/html5_detail.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/html5.png', 3980, '2019-07-04 22:14:00', 16, 8.80);
INSERT INTO `video` VALUES (35, 'HTML5+CSS3电商项目综合实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/pc%E5%AE%9E%E6%88%98/pc_detail.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/pc%E5%AE%9E%E6%88%98/pc.png', 3980, '2019-08-04 22:14:00', 16, 8.70);
INSERT INTO `video` VALUES (36, '19年录制ES6教程ES7ES8实战应用', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/es67/es67_detail.png\n', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/es67/es.png\n', 3980, '2019-08-04 22:14:00', 16, 8.70);
INSERT INTO `video` VALUES (37, '19年微服务Dubbo+SpringBoot2.X优惠券项目实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/dubbo_project_new.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/dubbo_project.png', 14880, '2019-08-07 22:14:00', 6, 9.10);
INSERT INTO `video` VALUES (38, '19年Linux/Centos7视频教程零基础入门到高实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/linux_base_detail.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/linux_base.png', 3980, '2019-08-17 22:14:00', 31, 9.10);
INSERT INTO `video` VALUES (39, '19年全新React零基础到单页面项目实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/video/react_detail.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/video/react.png', 6980, '2019-08-17 22:14:00', 16, 9.10);
INSERT INTO `video` VALUES (40, '全新微信小程序零基础到项目实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/%E5%B0%8F%E7%A8%8B%E5%BA%8F/wx_app_detail.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/%E5%B0%8F%E7%A8%8B%E5%BA%8F/wxapp.png', 5980, '2019-08-18 22:14:00', 16, 9.10);
INSERT INTO `video` VALUES (41, '玩转搜索框架ElasticSearch7.x实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/elasticsearch7_detail.jpeg', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/elasticsearch7.png', 4880, '2019-09-10 22:14:00', 6, 8.70);
INSERT INTO `video` VALUES (42, '全新elementUI项目实战教程Vue整合Echarts后台权限', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/element/elementui_detail.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/element/elementui.png', 5980, '2019-10-10 22:14:00', 16, 8.70);
INSERT INTO `video` VALUES (43, '19年Python3.7零基础入门到爬虫实战', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/python/python_detail.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/python/python.png', 3980, '2019-10-10 22:14:00', 7, 8.90);
INSERT INTO `video` VALUES (44, '2020版全新JDK8~JDK13全套新特性教程', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/jdk8/jdk8_detail.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/jdk8/jdk8.png', 3980, '2019-10-10 22:14:00', 6, 9.30);
INSERT INTO `video` VALUES (45, 'Docker实战视频教程入门到高级dockerfile/compose-Harbor', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/video/docker.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/docker/docker.png', 5980, '2019-10-10 22:14:00', 6, 9.30);
INSERT INTO `video` VALUES (46, '新版javase零基础到高级教程小白自学编程', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/javase/javase_detail.png', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/javase/javase.png', 3980, '2019-12-24 22:14:00', 6, 8.80);
INSERT INTO `video` VALUES (47, 'Nodejs教程零基础入门到项目实战前端视频教程', 'https://file.xdclass.net/video/2020/node/node_detail.png', 'https://file.xdclass.net/video/2020/node/node.png', 6980, '2019-12-24 22:14:00', 16, 8.90);

-- ----------------------------
-- Table structure for video_banner
-- ----------------------------
DROP TABLE IF EXISTS `video_banner`;
CREATE TABLE `video_banner`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Jumping URL',
  `img` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Image URL',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `weight` int NULL DEFAULT NULL COMMENT 'The smaller, the more front',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_banner
-- ----------------------------
INSERT INTO `video_banner` VALUES (1, 'https://m.xdclass.net/#/coursedetail?video_id=49', 'https://file.xdclass.net/video/2020/%E9%9D%A2%E8%AF%95%E4%B8%93%E9%A2%98/%E9%9D%A2%E8%AF%95%E4%B8%93%E9%A2%98%E7%AC%AC%E4%B8%80%E5%AD%A3banner.png', NULL, 1);
INSERT INTO `video_banner` VALUES (2, 'https://m.xdclass.net/#/member', 'https://file.xdclass.net/video/%E5%AE%98%E7%BD%91%E8%BD%AE%E6%92%AD%E5%9B%BE/%E8%BD%AE%E6%92%AD%E5%9B%BE-VIP.png', NULL, 2);
INSERT INTO `video_banner` VALUES (3, 'https://m.xdclass.net/#/coursedetail?video_id=48', 'https://file.xdclass.net/video/2020/c%E8%AF%AD%E8%A8%80/WechatIMG5.png', NULL, 3);
INSERT INTO `video_banner` VALUES (4, 'https://m.xdclass.net/#/coursedetail?video_id=47', 'https://file.xdclass.net/video/2020/node/node_banner.png', NULL, 4);

-- ----------------------------
-- Table structure for video_order
-- ----------------------------
DROP TABLE IF EXISTS `video_order`;
CREATE TABLE `video_order`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `out_trade_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Unique Identification of Order',
  `state` int NULL DEFAULT NULL COMMENT '0: processing, 1: paid',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT 'Creat Time of Order',
  `total_fee` int NULL DEFAULT NULL COMMENT 'Payment Amount, cent unit',
  `video_id` int NULL DEFAULT NULL COMMENT 'Video Key Value',
  `video_title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Video Key Value\r\nVideo Title',
  `video_img` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Video Image',
  `user_id` int NULL DEFAULT NULL COMMENT 'User ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_order
-- ----------------------------
INSERT INTO `video_order` VALUES (1, 'werr23', 1, NULL, 32, 47, 'Nodejs教程零基础入门到项目实战前端视频教程', NULL, 5);
INSERT INTO `video_order` VALUES (2, '2342323', 1, NULL, 42, 45, 'Docker实战视频教程入门到高级dockerfile/compose-Harbor', NULL, 6);
INSERT INTO `video_order` VALUES (3, '534332', 1, NULL, 11, 47, 'Nodejs教程零基础入门到项目实战前端视频教程', NULL, 6);
INSERT INTO `video_order` VALUES (4, '2342323', 1, NULL, 42, 17, '互联网架构多线程并发编程高级教程', NULL, 6);
INSERT INTO `video_order` VALUES (5, '3424521', 1, NULL, 32, 45, 'Docker实战视频教程入门到高级dockerfile/compose-Harbor', NULL, 5);
INSERT INTO `video_order` VALUES (6, '23', 1, NULL, 42, 17, '互联网架构多线程并发编程高级教程', NULL, 4);

SET FOREIGN_KEY_CHECKS = 1;
