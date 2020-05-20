/*
Navicat MySQL Data Transfer

Source Server         : Work_eight
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : my_exam_test

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2020-05-20 19:27:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(128) DEFAULT NULL COMMENT '试卷名',
  `exam_start_date` datetime DEFAULT NULL COMMENT '考试开始时间',
  `exam_last_time` bigint(20) DEFAULT NULL COMMENT '考试持续的时间，单位为分钟',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `reviewer_id` int(20) DEFAULT NULL,
  `score` double(20,0) DEFAULT NULL,
  `subid` varchar(20) DEFAULT NULL,
  `subname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='试卷表';

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('11', '测试试卷5号', '2020-05-19 21:42:10', '60', null, '2019-05-09 00:06:06', null, '2020-05-19 21:49:04', null, null, '1', 'Java');
INSERT INTO `exam` VALUES ('14', 'java期末考试', '2020-05-20 00:33:26', '60', null, '2020-05-20 00:33:27', null, null, '25', '25', '1', null);

-- ----------------------------
-- Table structure for exam_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `eq_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) DEFAULT NULL COMMENT '试卷的id',
  `question_id` int(11) DEFAULT NULL COMMENT '问题的id',
  PRIMARY KEY (`eq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COMMENT='试卷和问题的关联表';

-- ----------------------------
-- Records of exam_question
-- ----------------------------
INSERT INTO `exam_question` VALUES ('222', '12', '55');
INSERT INTO `exam_question` VALUES ('223', '12', '56');
INSERT INTO `exam_question` VALUES ('224', '13', '55');
INSERT INTO `exam_question` VALUES ('225', '13', '56');
INSERT INTO `exam_question` VALUES ('226', '13', '29');
INSERT INTO `exam_question` VALUES ('227', '13', '30');
INSERT INTO `exam_question` VALUES ('228', '13', '25');
INSERT INTO `exam_question` VALUES ('229', '13', '22');
INSERT INTO `exam_question` VALUES ('230', '13', '23');
INSERT INTO `exam_question` VALUES ('231', '13', '24');
INSERT INTO `exam_question` VALUES ('232', '13', '31');
INSERT INTO `exam_question` VALUES ('233', '13', '32');
INSERT INTO `exam_question` VALUES ('234', '13', '33');
INSERT INTO `exam_question` VALUES ('235', '13', '34');
INSERT INTO `exam_question` VALUES ('236', '13', '35');
INSERT INTO `exam_question` VALUES ('237', '13', '36');
INSERT INTO `exam_question` VALUES ('238', '13', '37');
INSERT INTO `exam_question` VALUES ('239', '13', '38');
INSERT INTO `exam_question` VALUES ('240', '13', '39');
INSERT INTO `exam_question` VALUES ('241', '13', '40');
INSERT INTO `exam_question` VALUES ('242', '13', '41');
INSERT INTO `exam_question` VALUES ('243', '13', '42');
INSERT INTO `exam_question` VALUES ('244', '13', '43');
INSERT INTO `exam_question` VALUES ('245', '13', '44');
INSERT INTO `exam_question` VALUES ('246', '13', '45');
INSERT INTO `exam_question` VALUES ('247', '13', '46');
INSERT INTO `exam_question` VALUES ('248', '13', '47');
INSERT INTO `exam_question` VALUES ('249', '13', '48');
INSERT INTO `exam_question` VALUES ('250', '13', '49');
INSERT INTO `exam_question` VALUES ('251', '13', '50');
INSERT INTO `exam_question` VALUES ('252', '13', '51');
INSERT INTO `exam_question` VALUES ('253', '13', '52');
INSERT INTO `exam_question` VALUES ('254', '13', '53');
INSERT INTO `exam_question` VALUES ('255', '13', '54');
INSERT INTO `exam_question` VALUES ('260', '11', '25');
INSERT INTO `exam_question` VALUES ('261', '11', '29');
INSERT INTO `exam_question` VALUES ('262', '11', '31');
INSERT INTO `exam_question` VALUES ('263', '14', '22');
INSERT INTO `exam_question` VALUES ('264', '14', '23');
INSERT INTO `exam_question` VALUES ('265', '14', '24');
INSERT INTO `exam_question` VALUES ('266', '14', '25');
INSERT INTO `exam_question` VALUES ('267', '14', '29');

-- ----------------------------
-- Table structure for exam_record
-- ----------------------------
DROP TABLE IF EXISTS `exam_record`;
CREATE TABLE `exam_record` (
  `exam_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text,
  `final_score` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`exam_id`,`stu_id`,`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录';

-- ----------------------------
-- Records of exam_record
-- ----------------------------
INSERT INTO `exam_record` VALUES ('11', '22', '25', 'A', '5');
INSERT INTO `exam_record` VALUES ('11', '22', '29', 'A', '5');
INSERT INTO `exam_record` VALUES ('11', '22', '30', 'B', null);
INSERT INTO `exam_record` VALUES ('11', '22', '31', 'B', '0');
INSERT INTO `exam_record` VALUES ('11', '23', '45', '123', null);
INSERT INTO `exam_record` VALUES ('11', '23', '46', '123', null);
INSERT INTO `exam_record` VALUES ('11', '23', '47', '123', null);
INSERT INTO `exam_record` VALUES ('11', '23', '48', '123', null);
INSERT INTO `exam_record` VALUES ('11', '23', '49', '1', null);
INSERT INTO `exam_record` VALUES ('11', '23', '50', '1', null);
INSERT INTO `exam_record` VALUES ('11', '23', '51', '1', null);
INSERT INTO `exam_record` VALUES ('11', '23', '52', '1', null);
INSERT INTO `exam_record` VALUES ('11', '23', '53', '1', null);
INSERT INTO `exam_record` VALUES ('11', '23', '54', '1', null);
INSERT INTO `exam_record` VALUES ('12', '22', '55', '1', null);
INSERT INTO `exam_record` VALUES ('12', '22', '56', '1', null);
INSERT INTO `exam_record` VALUES ('12', '23', '55', '1', null);
INSERT INTO `exam_record` VALUES ('12', '23', '56', '1', null);
INSERT INTO `exam_record` VALUES ('12', '24', '55', '0', null);
INSERT INTO `exam_record` VALUES ('12', '24', '56', '1', null);
INSERT INTO `exam_record` VALUES ('13', '22', '22', 'B', null);
INSERT INTO `exam_record` VALUES ('13', '22', '23', 'D', null);
INSERT INTO `exam_record` VALUES ('13', '22', '24', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '22', '25', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '22', '29', 'A', null);
INSERT INTO `exam_record` VALUES ('13', '22', '30', 'B', null);
INSERT INTO `exam_record` VALUES ('13', '22', '31', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '22', '32', 'A', null);
INSERT INTO `exam_record` VALUES ('13', '22', '33', 'B', null);
INSERT INTO `exam_record` VALUES ('13', '22', '34', 'B,C,D', null);
INSERT INTO `exam_record` VALUES ('13', '22', '35', 'B,C,D', null);
INSERT INTO `exam_record` VALUES ('13', '22', '36', 'B,C', null);
INSERT INTO `exam_record` VALUES ('13', '22', '37', 'B,C', null);
INSERT INTO `exam_record` VALUES ('13', '22', '38', 'B,D', null);
INSERT INTO `exam_record` VALUES ('13', '22', '39', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '40', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '41', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '42', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '43', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '44', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '45', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '46', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '47', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '48', '123', null);
INSERT INTO `exam_record` VALUES ('13', '22', '49', '0', null);
INSERT INTO `exam_record` VALUES ('13', '22', '50', '1', null);
INSERT INTO `exam_record` VALUES ('13', '22', '51', '1', null);
INSERT INTO `exam_record` VALUES ('13', '22', '52', '1', null);
INSERT INTO `exam_record` VALUES ('13', '22', '53', '0', null);
INSERT INTO `exam_record` VALUES ('13', '22', '54', '1', null);
INSERT INTO `exam_record` VALUES ('13', '22', '55', '1', null);
INSERT INTO `exam_record` VALUES ('13', '22', '56', '1', null);
INSERT INTO `exam_record` VALUES ('13', '24', '22', 'D', null);
INSERT INTO `exam_record` VALUES ('13', '24', '23', 'B', null);
INSERT INTO `exam_record` VALUES ('13', '24', '24', 'D', null);
INSERT INTO `exam_record` VALUES ('13', '24', '25', 'B', null);
INSERT INTO `exam_record` VALUES ('13', '24', '29', 'A', null);
INSERT INTO `exam_record` VALUES ('13', '24', '30', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '24', '31', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '24', '32', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '24', '33', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '24', '34', 'D', null);
INSERT INTO `exam_record` VALUES ('13', '24', '35', 'D', null);
INSERT INTO `exam_record` VALUES ('13', '24', '36', 'B', null);
INSERT INTO `exam_record` VALUES ('13', '24', '37', 'C', null);
INSERT INTO `exam_record` VALUES ('13', '24', '38', '', null);
INSERT INTO `exam_record` VALUES ('13', '24', '39', '11111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '40', '111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '41', '1111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '42', '11111111111111111111111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '43', '111111111111111111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '44', '1111111111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '45', '111111111111111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '46', '1111111111111111111', null);
INSERT INTO `exam_record` VALUES ('13', '24', '47', '', null);
INSERT INTO `exam_record` VALUES ('13', '24', '48', '', null);
INSERT INTO `exam_record` VALUES ('13', '24', '49', '0', null);
INSERT INTO `exam_record` VALUES ('13', '24', '50', '0', null);
INSERT INTO `exam_record` VALUES ('13', '24', '51', '0', null);
INSERT INTO `exam_record` VALUES ('13', '24', '52', '0', null);
INSERT INTO `exam_record` VALUES ('13', '24', '53', '0', null);
INSERT INTO `exam_record` VALUES ('13', '24', '54', '0', null);
INSERT INTO `exam_record` VALUES ('13', '24', '55', '0', null);
INSERT INTO `exam_record` VALUES ('13', '24', '56', '0', null);

-- ----------------------------
-- Table structure for exam_student
-- ----------------------------
DROP TABLE IF EXISTS `exam_student`;
CREATE TABLE `exam_student` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL COMMENT '学生的id',
  `exam_id` int(11) DEFAULT NULL COMMENT '试卷的id',
  `status` varchar(2) DEFAULT NULL,
  `total_score` double(2,0) DEFAULT NULL,
  `reading` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`es_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='试卷和学生的关联表';

-- ----------------------------
-- Records of exam_student
-- ----------------------------
INSERT INTO `exam_student` VALUES ('60', '22', '12', null, null, null);
INSERT INTO `exam_student` VALUES ('61', '23', '12', null, null, null);
INSERT INTO `exam_student` VALUES ('62', '24', '12', null, null, null);
INSERT INTO `exam_student` VALUES ('63', '22', '13', null, null, null);
INSERT INTO `exam_student` VALUES ('64', '23', '13', null, null, null);
INSERT INTO `exam_student` VALUES ('65', '24', '13', null, null, null);
INSERT INTO `exam_student` VALUES ('74', '22', '11', '1', '10', '0');
INSERT INTO `exam_student` VALUES ('75', '29', '11', null, null, null);
INSERT INTO `exam_student` VALUES ('76', '23', '14', null, null, null);
INSERT INTO `exam_student` VALUES ('77', '24', '14', null, null, null);
INSERT INTO `exam_student` VALUES ('78', '29', '14', null, null, null);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告的id',
  `title` varchar(128) DEFAULT NULL COMMENT '公告的标题',
  `content` varchar(1024) DEFAULT NULL COMMENT '公告的内容',
  `type` char(1) DEFAULT NULL COMMENT '公告的类型：1表示需要弹框提示2表示页面提示',
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='公告管理';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('6', '考试通知', '5.20考试', '1', null, '2020-05-19 21:49:41', null, null);
INSERT INTO `notice` VALUES ('7', '期末考试', '6月1号有一场考试', '2', null, '2020-05-20 18:40:25', null, null);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(1) DEFAULT NULL COMMENT '问题类型：1表示单选，2表示多选，3表示天空，4表示判断，5表示问答',
  `title` text COMMENT '题干',
  `option_a` varchar(5120) DEFAULT NULL COMMENT 'A选项答案',
  `option_b` varchar(5120) DEFAULT NULL COMMENT 'B选项答案',
  `option_c` varchar(5120) DEFAULT NULL COMMENT 'C选项答案',
  `option_d` varchar(5120) DEFAULT NULL COMMENT 'D选项答案',
  `answer` text COMMENT '答案',
  `analyse` text COMMENT '解析',
  `score` decimal(10,0) DEFAULT NULL COMMENT '该题的分数',
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `subid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='问题表';

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('22', '1', '关于sleep()和wait()，以下描述错误的一项是？', 'sleep是线程类（Thread）的方法，wait是Object类的方法； ', 'sleep不释放对象锁，wait放弃对象锁； ', 'sleep暂停线程、但监控状态仍然保持，结束后会自动恢复；', 'wait后进入等待锁定池，只有针对此对象发出notify方法后获得对象锁进入运行状态。', 'C', 'Notify后是进入对象锁定池，准备获得锁，而不是立即获得。', '5', null, '2019-05-08 23:39:53', null, '2020-04-23 00:40:56', '1');
INSERT INTO `question` VALUES ('23', '1', '提供Java存取数据库能力的包是？', 'java.sql ', 'java.awt ', 'java.lang ', 'java.swing', 'A', null, '5', null, '2019-05-08 23:40:28', null, null, '1');
INSERT INTO `question` VALUES ('24', '1', '方法resume()负责恢复哪些线程的执行？', '通过调用stop()方法而停止的线程。 ', '通过调用sleep()方法而停止的线程。', '通过调用wait()方法而停止的线程。 ', '通过调用suspend()方法而停止的线程。', 'D', null, '5', null, '2019-05-08 23:41:03', null, null, '1');
INSERT INTO `question` VALUES ('25', '1', 'Java I/O程序设计中，下列描述正确的是', 'OutputStream用于写操作 ', 'InputStream用于写操作 ', 'I/O库不支持对文件可读可写API', '以上都对', 'A', null, '5', null, '2019-05-08 23:41:54', null, null, '1');
INSERT INTO `question` VALUES ('29', '1', '分析选项中关于Java中this关键字的说法正确的是', 'this关键字是在对象内部指代自身的引用 ', ' this关键字可以在类中的任何位置使用 ', 'this关键字和类关联，而不是和特定的对象关联 ', '同一个类的不同对象共用一个this', 'A', null, '5', null, '2019-05-08 23:44:20', null, null, '1');
INSERT INTO `question` VALUES ('30', '1', '在JAVA中，LinkedList类和ArrayList类同属于集合框架类，下列（ ）选项中的方法是LinkedList类有而ArrayList类没有的。', ' add(Object o) ', ' add(int index，Object o) ', ' remove(Object o) ', 'removeLast()', 'D', null, '5', null, '2019-05-08 23:46:28', null, null, '1');
INSERT INTO `question` VALUES ('31', '1', '在JAVA中ArrayList类实现了可变大小的数组，便于遍历元素和随机访问元素，已知 获得了ArrayList类的对象bookTypeList，则下列语句中能够实现判断列表中是否存在字符串“小说”的', '基本数据类型和String相加结果一定是字符串型 ', 'char类型和int类型相加结果一定是字符 ', 'double类型可以自动转换为int ', ' char + int + double +”” 结果一定是double', 'A', null, '5', null, '2019-05-08 23:47:20', null, null, '1');
INSERT INTO `question` VALUES ('32', '1', '对象的特征在类中表示为变量，称为类的', '对象 ', '属性', '方法 ', '数据类型', 'B', null, '5', null, '2019-05-08 23:47:58', null, '2019-05-08 23:48:24', '1');
INSERT INTO `question` VALUES ('33', '1', '在Java中,关于构造方法，下列说法错误的是', '构造方法的名称必须与类名相同 ', ' 构造方法可以带参数 ', '构造方法不可以重载 ', '构造方法绝对不能有返回值', 'C', null, '5', null, '2019-05-08 23:48:52', null, null, '1');
INSERT INTO `question` VALUES ('34', '2', '下面哪几个函数是public void example(){…}的重载函数（  ），选两项', 'public void example( int m){…}', 'public int example(){…}', 'public void example2(){…}', 'public int example ( int m, float f){…}', 'A,D,', '方法名一定相同，参数签名（参数数量，类型，顺序）一定不同。', '10', null, '2019-05-08 23:49:38', null, null, '1');
INSERT INTO `question` VALUES ('35', '2', '已知如下定义：String s = “story”; 下面哪个表达式是合法的（ ），选两项', ' s += “books”', 'char c = s[1];', 'int len = s.length;', 'String t = s.toLowerCase();', 'A,D,', 'String类型没有length属性，这个专属于数组。', '10', null, '2019-05-08 23:51:36', null, null, '1');
INSERT INTO `question` VALUES ('36', '2', ' 如下哪些字串是Java中的标识符（ ），选两项', 'fieldname', 'super', '#number', '$number', 'A,C,', '标识符以￥$_或者字母开头，不能用关键字。', '10', null, '2019-05-08 23:52:12', null, null, '1');
INSERT INTO `question` VALUES ('37', '2', '如下哪些是Java中有效的关键字（ ）', ' const', 'false', 'this', 'native', 'A,B,C,D,', null, '10', null, '2019-05-08 23:52:58', null, null, '1');
INSERT INTO `question` VALUES ('38', '2', '如下哪些是Java中正确的整数表示', '22', '0x22', '022', '22H', 'A,B,C,', '从上到下依次十进制，八进制，十六进制。', '10', null, '2019-05-08 23:53:40', null, null, '1');
INSERT INTO `question` VALUES ('39', '5', '父类的静态方法能否被子类重写', null, null, null, null, '不能。重写只适用于实例方法,不能用于静态方法，而子类当中含有和父类相同签名的静态方法，我们一般称之为隐藏。', null, '20', null, '2019-05-08 23:55:26', null, null, '1');
INSERT INTO `question` VALUES ('40', '5', 'java 创建对象的几种方式', null, null, null, null, '采用new\n\n通过反射\n\n采用clone\n\n通过序列化机制', null, '20', null, '2019-05-08 23:55:56', null, null, '1');
INSERT INTO `question` VALUES ('41', '5', 'String s1=”ab”, String s2=”a”+”b”, String s3=”a”, String s4=”b”, s5=s3+s4请问s5==s2返回什么？', null, null, null, null, '返回false。在编译过程中，编译器会将s2直接优化为”ab”，会将其放置在常量池当中，s5则是被创建在堆区，相当于s5=new String(“ab”);', null, '20', null, '2019-05-08 23:56:05', null, null, '2');
INSERT INTO `question` VALUES ('42', '5', 'java当中的四种引用', null, null, null, null, '强引用，软引用，弱引用，虚引用。不同的引用类型主要体现在GC上:\n\n强引用：如果一个对象具有强引用，它就不会被垃圾回收器回收。即使当前内存空间不足，JVM也不会回收它，而是抛出 OutOfMemoryError 错误，使程序异常终止。如果想中断强引用和某个对象之间的关联，可以显式地将引用赋值为null，这样一来的话，JVM在合适的时间就会回收该对象。\n\n软引用：在使用软引用时，如果内存的空间足够，软引用就能继续被使用，而不会被垃圾回收器回收，只有在内存不足时，软引用才会被垃圾回收器回收。\n\n弱引用：具有弱引用的对象拥有的生命周期更短暂。因为当 JVM 进行垃圾回收，一旦发现弱引用对象，无论当前内存空间是否充足，都会将弱引用回收。不过由于垃圾回收器是一个优先级较低的线程，所以并不一定能迅速发现弱引用对象。\n\n虚引用：顾名思义，就是形同虚设，如果一个对象仅持有虚引用，那么它相当于没有引用，在任何时候都可能被垃圾回收器回收。\n\n ', null, '20', null, '2019-05-08 23:56:21', null, null, '2');
INSERT INTO `question` VALUES ('43', '5', '有没有可能两个不相等的对象有相同的hashcode', null, null, null, null, '有可能，两个不相等的对象可能会有相同的 hashcode 值，这就是为什么在 hashmap 中会有冲突。如果两个对象相等，必须有相同的hashcode 值，反之不成立。', null, '20', null, '2019-05-08 23:56:40', null, null, '2');
INSERT INTO `question` VALUES ('44', '5', '内部类的作用', null, null, null, null, '内部类可以有多个实例，每个实例都有自己的状态信息，并且与其他外围对象的信息相互独立.在单个外围类当中，可以让多个内部类以不同的方式实现同一接口，或者继承同一个类.创建内部类对象的时刻不依赖于外部类对象的创建。内部类并没有令人疑惑的”is-a”管系，它就像是一个独立的实体。\n\n内部类提供了更好的封装，除了该外围类，其他类都不能访问。', null, '20', null, '2019-05-08 23:56:56', null, null, '2');
INSERT INTO `question` VALUES ('45', '5', 'final有哪些用法', null, null, null, null, 'final也是很多面试喜欢问的地方，能回答下以下三点就不错了：\n1.被final修饰的类不可以被继承 \n2.被final修饰的方法不可以被重写 \n3.被final修饰的变量不可以被改变。如果修饰引用，那么表示引用不可变，引用指向的内容可变。\n4.被final修饰的方法，JVM会尝试将其内联，以提高运行效率 \n5.被final修饰的常量，在编译阶段会存入常量池中。\n\n回答出编译器对final域要遵守的两个重排序规则更好：\n1.在构造函数内对一个final域的写入，与随后把这个被构造对象的引用赋值给一个引用变量,这两个操作之间不能重排序。\n2.初次读一个包含final域的对象的引用，与随后初次读这个final域,这两个操作之间不能重排序。', null, '20', null, '2019-05-08 23:57:11', null, null, '2');
INSERT INTO `question` VALUES ('46', '5', '64位的JVM当中,int的长度是多少?', null, null, null, null, 'Java 中，int 类型变量的长度是一个固定值，与平台无关，都是 32 位。意思就是说，在 32 位 和 64 位 的Java 虚拟机中，int 类型的长度是相同的。', null, '20', null, '2019-05-08 23:57:26', null, null, '2');
INSERT INTO `question` VALUES ('47', '5', 'String和StringBuffer', null, null, null, null, 'String和StringBuffer主要区别是性能：String是不可变对象，每次对String类型进行操作都等同于产生了一个新的String对象，然后指向新的String对象。所以尽量不在对String进行大量的拼接操作，否则会产生很多临时对象，导致GC开始工作，影响系统性能。\n\nStringBuffer是对对象本身操作，而不是产生新的对象，因此在有大量拼接的情况下，我们建议使用StringBuffer。\n\n但是需要注意现在JVM会对String拼接做一定的优化：\nString s=“This is only ”+”simple”+”test”会被虚拟机直接优化成String s=“This is only simple test”，此时就不存在拼接过程。', null, '20', null, '2019-05-08 23:57:40', null, null, '2');
INSERT INTO `question` VALUES ('48', '5', '你知道哪些垃圾回收算法?', null, null, null, null, '垃圾回收从理论上非常容易理解,具体的方法有以下几种: \n1. 标记-清除 \n2. 标记-复制 \n3. 标记-整理 \n4. 分代回收 ', null, '20', null, '2019-05-08 23:58:01', null, null, '2');
INSERT INTO `question` VALUES ('49', '4', '覆盖的同名方法中，子类方法不能比父类方法的访问权限低', null, null, null, null, '1', null, '3', null, '2019-05-08 23:58:51', null, null, '2');
INSERT INTO `question` VALUES ('50', '4', '接口是特殊的类，所以接口也可以继承，子接口将继承父接口的所有常量和抽象方法。', null, null, null, null, '1', null, '3', null, '2019-05-08 23:59:05', null, null, '2');
INSERT INTO `question` VALUES ('51', '4', 'Java支持多重继承。', null, null, null, null, '0', null, '3', null, '2019-05-08 23:59:16', null, null, '2');
INSERT INTO `question` VALUES ('52', '4', '抽象方法没有方法体。', null, null, null, null, '0', null, '3', null, '2019-05-08 23:59:28', null, null, '2');
INSERT INTO `question` VALUES ('53', '4', '一个Java类可以有一个直接父类，并可以实现多个接口。', null, null, null, null, '1', null, '3', null, '2019-05-08 23:59:44', null, null, '2');
INSERT INTO `question` VALUES ('54', '4', 'final类中的属性和方法都必须是final的。', null, null, null, null, '1', null, '3', null, '2019-05-08 23:59:58', null, null, '2');
INSERT INTO `question` VALUES ('55', '4', '一个类中含有几个构造方法，称为构造方法的重载。对于重载的方法，其参数列表可以相同。', null, null, null, null, '1', null, '3', null, '2019-05-09 00:00:13', null, null, '2');
INSERT INTO `question` VALUES ('56', '4', '成员变量的值会因为对象的不同而不同。', null, null, null, null, '1', null, '3', null, '2019-05-09 00:00:29', null, null, '2');
INSERT INTO `question` VALUES ('58', '1', 'balal', 'A', 'B', 'C', 'D', 'C', 'balalal', '5', null, '2020-05-19 21:22:14', null, '2020-05-19 21:23:08', '2');
INSERT INTO `question` VALUES ('59', '3', 'babas', null, null, null, null, '121212', '12', '12', null, '2020-05-19 21:27:05', null, null, '2');
INSERT INTO `question` VALUES ('60', '4', '112', null, null, null, null, '1', '12', '12', null, '2020-05-19 21:27:30', null, null, '2');
INSERT INTO `question` VALUES ('61', '5', '12', null, null, null, null, '12', '12', '12', null, '2020-05-19 21:27:45', null, null, '2');
INSERT INTO `question` VALUES ('83', '1', 'lalala', 'as', 's', 'd', 'f', 'C', null, '5', null, '2020-05-20 00:11:32', null, null, '1');
INSERT INTO `question` VALUES ('84', '4', '对吗', null, null, null, null, '1', null, '4', null, '2020-05-20 00:16:42', null, null, '1');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subid` varchar(50) NOT NULL,
  `subname` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`subid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', 'Java', '1');
INSERT INTO `subject` VALUES ('2', 'web', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '请求类型',
  `title` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '日志标题',
  `remote_addr` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作IP地址',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作用户昵称',
  `request_uri` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请求URI',
  `http_method` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '操作方式',
  `class_method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请求类型.方法',
  `data` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '操作提交的数据',
  `session_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'sessionId',
  `response` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '返回内容',
  `use_time` bigint(11) DEFAULT NULL COMMENT '方法执行时间',
  `browser` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '浏览器信息',
  `area` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '地区',
  `province` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '省',
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '市',
  `isp` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '网络服务提供商',
  `exception` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '异常信息',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`) USING BTREE,
  KEY `sys_log_request_uri` (`request_uri`) USING BTREE,
  KEY `sys_log_type` (`type`) USING BTREE,
  KEY `sys_log_create_date` (`create_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('245', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '5CAEB9A5D87F7BF38A71D805559AA017', '\"index\"', '3116', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 20:11:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('246', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '5CAEB9A5D87F7BF38A71D805559AA017', '\"index\"', '2978', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 20:11:28', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('247', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '46DC0FA83818FCE8BACAFDAB7FB2D784', '\"index\"', '346', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:11:28', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('248', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', '374', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:13:35', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('249', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:16:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('250', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:20:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('251', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:21:24', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('252', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:21:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('253', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:30:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('254', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', '1', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:34:53', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('255', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:35:07', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('256', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '77234EF345D3E4EAB1E47CC4F5E636C0', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:39:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('257', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0867AC5AAC20935470EC1C142FC06434', '\"index\"', '351', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:44:32', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('258', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0867AC5AAC20935470EC1C142FC06434', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:53:58', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('259', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0867AC5AAC20935470EC1C142FC06434', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:53:58', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('260', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'A80444B3D83F9C74364699C205F9C0F3', '\"index\"', '364', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:55:42', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('261', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '717D53CBC56E6E928F22773B0CF13138', '\"index\"', '362', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:57:28', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('262', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '717D53CBC56E6E928F22773B0CF13138', '\"index\"', '1', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:57:47', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('263', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '717D53CBC56E6E928F22773B0CF13138', '\"index\"', null, 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:59:05', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('264', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '717D53CBC56E6E928F22773B0CF13138', '\"index\"', '1', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 22:59:10', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('265', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@270f5b56\"]', 'B0A82583066CCEDAC2EC985B48E3B8B9', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '2370', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 23:04:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('266', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B0A82583066CCEDAC2EC985B48E3B8B9', '\"index\"', '14', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 23:04:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('267', 'Ajax请求', '删除日志', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/log', 'DELETE', 'com.dimple.controller.SysLogController.delete', '[\"257,258,259,260,261,262,263,264,265,266\"]', 'B0A82583066CCEDAC2EC985B48E3B8B9', '{\"msg\":\"操作成功\",\"code\":0}', '3886', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 23:04:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('268', 'Ajax请求', '删除日志', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/log', 'DELETE', 'com.dimple.controller.SysLogController.delete', '[\"267\"]', 'B0A82583066CCEDAC2EC985B48E3B8B9', '{\"msg\":\"操作成功\",\"code\":0}', '190', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 23:18:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('269', 'Ajax请求', '删除日志', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/log', 'DELETE', 'com.dimple.controller.SysLogController.delete', '[\"268\"]', 'B0A82583066CCEDAC2EC985B48E3B8B9', '{\"msg\":\"操作成功\",\"code\":0}', '141', 'Windows-Chrome-74.0.3729.108', null, null, null, null, null, null, '2019-05-10 23:18:23', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('270', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@6598cf35\"]', 'B11278A93F69E1AF4EEFA09EF4DA0B02', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '2385', 'Windows-Chrome-74.0.3729.131', null, null, null, null, null, null, '2019-05-12 00:11:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('271', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B11278A93F69E1AF4EEFA09EF4DA0B02', '\"index\"', '11', 'Windows-Chrome-74.0.3729.131', null, null, null, null, null, null, '2019-05-12 00:11:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('272', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B11278A93F69E1AF4EEFA09EF4DA0B02', '\"index\"', '1', 'Windows-Chrome-74.0.3729.131', null, null, null, null, null, null, '2019-05-12 00:11:34', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('273', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生3号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student3\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@3e50bd9b\"]', '00A4C23A8618BA7CC46B113BE5EA1D0D', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '199', 'Windows-Chrome-74.0.3729.131', null, null, null, null, null, null, '2019-05-12 00:14:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('274', '普通请求', '', '127.0.0.1', '测试学生3号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '00A4C23A8618BA7CC46B113BE5EA1D0D', '\"index\"', null, 'Windows-Chrome-74.0.3729.131', null, null, null, null, null, null, '2019-05-12 00:14:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('275', '普通请求', '开始考试', '127.0.0.1', '测试学生3号', 'http://localhost:8080/exam/student/13', 'GET', 'com.dimple.controller.StudentExamController.startExam', '[13,{}]', '00A4C23A8618BA7CC46B113BE5EA1D0D', '\"exam/makeExam\"', '6384', 'Windows-Chrome-74.0.3729.131', null, null, null, null, null, null, '2019-05-12 00:14:34', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('276', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@5f8dbe4b\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '797', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:45:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('277', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '\"index\"', '15', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:45:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('278', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@336a60ff\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"验证码错误\"}', '1', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:51:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('279', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e93aea\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"登录密码错误.\"}', '6', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:52:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('280', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"0\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@41560391\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"登录密码错误.\"}', '3', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:52:13', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('281', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"0\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4518ecb3\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"登录密码错误.\"}', '5', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:52:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('282', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"0\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@8103451\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"登录密码错误.\"}', '3', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:53:11', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('283', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7389e8fd\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '12', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:53:25', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('284', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '\"index\"', null, 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:53:25', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('285', 'Ajax请求', '添加用户', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/user/add', 'POST', 'com.dimple.controller.SysUserController.addSave', '[{\"email\":\"23232@qq.com\",\"loginName\":\"student4\",\"nickName\":\"测试学生3号\",\"params\":{},\"password\":\"123456\",\"remark\":\"\",\"studentCheckFlag\":false,\"tel\":\"12312312312\",\"userType\":\"3\"}]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"msg\":\"操作成功\",\"code\":0}', '121', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:54:36', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('286', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"student4\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@191cfec8\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"验证码错误\"}', null, 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:55:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('287', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"student4\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@10562dc9\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"登录密码错误.\"}', '5', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:55:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('288', 'Ajax请求', '删除用户', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/user', 'DELETE', 'com.dimple.controller.SysUserController.delete', '[\"28\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"msg\":\"操作成功\",\"code\":0}', '18', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:55:25', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('289', 'Ajax请求', '添加用户', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/user/add', 'POST', 'com.dimple.controller.SysUserController.addSave', '[{\"email\":\"12312312@qq.com\",\"loginName\":\"student4\",\"nickName\":\"测试学生4\",\"params\":{},\"password\":\"123123\",\"remark\":\"无备注\",\"studentCheckFlag\":false,\"tel\":\"12312312312\",\"userType\":\"3\"}]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"msg\":\"操作成功\",\"code\":0}', '11', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:56:25', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('290', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"student4\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@507439c9\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"success\":false,\"message\":\"验证码错误\"}', null, 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:56:48', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('291', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生4', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"student4\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@60947165\"]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '14', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:56:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('292', '普通请求', '', '127.0.0.1', '测试学生4', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '\"index\"', null, 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:56:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('293', '普通请求', '获取用户信息', '127.0.0.1', '测试学生4', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '732AD8E5B6EFEE29297DD7BFBBE3BE78', '\"index/userInfo\"', '14', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-10 19:57:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('294', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@684359a9\"]', '8C3F3837DB8EFB0C896CF0A1F88C5DA9', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '920', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-19 11:11:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('295', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '8C3F3837DB8EFB0C896CF0A1F88C5DA9', '\"index\"', '20', 'Windows-Firefox-74.0', null, null, null, null, null, null, '2020-04-19 11:11:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('296', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2c60bc2b\"]', 'F25D14E9D51BB035499AA66C54528132', '{\"success\":false,\"message\":\"验证码错误\"}', '186', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-22 16:50:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('297', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@b1fc5b9\"]', 'F25D14E9D51BB035499AA66C54528132', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '96', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-22 16:50:47', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('298', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'F25D14E9D51BB035499AA66C54528132', '\"index\"', '13', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-22 16:50:47', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('299', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@26dfad28\"]', '6A09E1C2B5EAB1570223FC3C27F6F6C7', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '890', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:28:39', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('300', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '6A09E1C2B5EAB1570223FC3C27F6F6C7', '\"index\"', '20', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:28:39', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('301', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@1bebbbb3\"]', 'B5F1AB12BFC951F856F83CB3712CE461', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '15', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:35:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('302', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B5F1AB12BFC951F856F83CB3712CE461', '\"index\"', null, 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:35:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('303', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', 'B5F1AB12BFC951F856F83CB3712CE461', '\"index/userInfo\"', '16', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:37:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('304', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B5F1AB12BFC951F856F83CB3712CE461', '\"index\"', null, 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:37:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('305', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@34ddcb21\"]', '1F7C8119E4F03FDC27871B29B1D8EB7E', '{\"success\":false,\"message\":\"帐号不存在\"}', '3', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:39:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('306', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@61686535\"]', '1F7C8119E4F03FDC27871B29B1D8EB7E', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '16', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:39:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('307', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '1F7C8119E4F03FDC27871B29B1D8EB7E', '\"index\"', '1', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:39:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('308', 'Ajax请求', '添加试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/add', 'POST', 'com.dimple.controller.QuestionController.addSave', '[{\"analyse\":\"\",\"answer\":\"\",\"params\":{},\"title\":\"\",\"type\":\"3\"}]', '1F7C8119E4F03FDC27871B29B1D8EB7E', '{\"msg\":\"操作成功\",\"code\":0}', '113', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:40:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('309', 'Ajax请求', '修改试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/update', 'PUT', 'com.dimple.controller.QuestionController.updateSave', '[{\"analyse\":\"Notify后是进入对象锁定池，准备获得锁，而不是立即获得。\",\"answer\":\"C\",\"id\":22,\"optionA\":\"sleep是线程类（Thread）的方法，wait是Object类的方法； \",\"optionB\":\"sleep不释放对象锁，wait放弃对象锁； \",\"optionC\":\"sleep暂停线程、但监控状态仍然保持，结束后会自动恢复；\",\"optionD\":\"wait后进入等待锁定池，只有针对此对象发出notify方法后获得对象锁进入运行状态。\",\"params\":{},\"score\":5.0,\"title\":\"关于sleep()和wait()，以下描述错误的一项是？\",\"type\":\"1\"}]', '1F7C8119E4F03FDC27871B29B1D8EB7E', '{\"msg\":\"操作成功\",\"code\":0}', '11', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 00:40:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('310', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@35f62047\"]', '4657863C7674C7BDC460E194F44C34D4', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '805', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 11:42:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('311', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '4657863C7674C7BDC460E194F44C34D4', '\"index\"', '13', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-23 11:42:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('312', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@15e0ca0f\"]', '9E51AA8324908433278722A745BD9D7C', '{\"success\":false,\"message\":\"验证码错误\"}', '408', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-30 21:13:48', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('313', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7595e097\"]', '9E51AA8324908433278722A745BD9D7C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '214', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-30 21:13:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('314', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '9E51AA8324908433278722A745BD9D7C', '\"index\"', '22', 'Windows-Firefox-75.0', null, null, null, null, null, null, '2020-04-30 21:13:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('315', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@3e6e7705\"]', '15E70206E9A045CCC0A5252061E7093E', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '913', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 12:14:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('316', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '15E70206E9A045CCC0A5252061E7093E', '\"index\"', '13', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 12:14:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('317', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4ac4c5ee\"]', '47A46A57F1660E6EF5645028C86EA39F', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '835', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 19:17:36', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('318', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '47A46A57F1660E6EF5645028C86EA39F', '\"index\"', '12', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 19:17:36', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('319', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7714d03f\"]', '4C83BC653D9EA0F9014FBA2231905348', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '1199444', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 20:03:13', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('320', '普通请求', '登陆系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@bb22d6c\"]', '74C8E2FB6D72195C1D5E1BA9CD04C23C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '336', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 21:56:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('321', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@26825040\"]', 'A64D9A1DD1C0629C203B5B0645AF01C1', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '467', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:04:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('322', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@14e686d1\"]', 'CC4A019327FA29E89852FB03866356D5', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '370', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:10:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('323', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@61b53f9e\"]', '017A76E630A37F8D2CBEADE86488BE9C', '{\"success\":false,\"message\":\"登录密码错误.\"}', '353', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:21:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('324', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@687cd9b8\"]', '017A76E630A37F8D2CBEADE86488BE9C', '{\"success\":false,\"message\":\"登录密码错误.\"}', '4', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:21:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('325', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@505b891d\"]', 'FDC1C490C6B5654DCED7EB13C1B2F1F2', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '367', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:22:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('326', '普通请求', '', '127.0.0.1', null, 'http://localhost:8080/index', 'GET', 'com.nenu.controller.IndexController.index', '[]', 'FDC1C490C6B5654DCED7EB13C1B2F1F2', '\"index\"', '5', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:23:02', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('327', '普通请求', '获取用户信息', '127.0.0.1', null, 'http://localhost:8080/userInfo', 'GET', 'com.nenu.controller.IndexController.userInfo', '[{}]', 'FDC1C490C6B5654DCED7EB13C1B2F1F2', '\"index/userInfo\"', '5', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:23:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('328', '普通请求', '查看Druid数据', '127.0.0.1', null, 'http://localhost:8080/druid/index', 'GET', 'com.nenu.controller.DruidController.index', '[]', 'FDC1C490C6B5654DCED7EB13C1B2F1F2', '\"druid/index\"', '3', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 22:23:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('329', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2abb7ee5\"]', '7F3ECD2C38B0D692949E7A9C8639F7CB', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '462', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:09:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('330', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8088/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",null,\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@6b6e3c1e\"]', '097453BE665F825591BE1EE904603580', '{\"success\":false,\"message\":\"记住我不能为空\"}', '75', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:20:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('331', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8088/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@1b384947\"]', '097453BE665F825591BE1EE904603580', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '58', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:20:49', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('332', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"false\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4221026\"]', '83272D933FCA70D7A2464D5BA3DB0568', '{\"success\":false,\"message\":\"获取验证码超时\"}', '189', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:21:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('333', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"false\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@626a80de\"]', '83272D933FCA70D7A2464D5BA3DB0568', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '92', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:21:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('334', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '83272D933FCA70D7A2464D5BA3DB0568', '\"index\"', '19', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:21:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('335', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8088/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@52fd8b4e\"]', 'EDD2F9CDE2AD10464CBFC81FA2D99A7C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '10', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:22:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('336', '普通请求', '', '127.0.0.1', null, 'http://localhost:8088/index', 'GET', 'com.nenu.controller.IndexController.index', '[]', 'EDD2F9CDE2AD10464CBFC81FA2D99A7C', '\"index\"', '7', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:22:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('337', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"false\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@795ed9ee\"]', 'CC29A572A7FBC19D5B5C654EC1F39E4E', '{\"success\":false,\"message\":\"获取验证码超时\"}', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:24:11', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('338', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"false\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@31d92a2e\"]', 'CC29A572A7FBC19D5B5C654EC1F39E4E', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '20', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:24:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('339', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'CC29A572A7FBC19D5B5C654EC1F39E4E', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-11 23:24:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('340', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8088/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@18a39f4f\"]', '22B98911FCDE01F9F713DA9A01D1A783', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '468', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 00:16:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('341', '普通请求', '', '127.0.0.1', null, 'http://localhost:8088/index', 'GET', 'com.nenu.controller.IndexController.index', '[]', '22B98911FCDE01F9F713DA9A01D1A783', '\"index\"', '4', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 00:16:23', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('342', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4fe0e36f\"]', '591F1CBB9877FE98225FE0173C48C170', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '412', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 00:25:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('343', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.nenu.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7de0d67\"]', '8C70334FA560C0FE389301303110BED4', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '332', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 00:36:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('344', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@613869f3\"]', '59F9EBDE5003C44693C4C00395660B63', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '190279', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 00:52:11', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('345', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@6719e56f\"]', '2EA4744082087D83352CE5A0D4F8C0DD', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '878', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 00:58:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('346', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '2EA4744082087D83352CE5A0D4F8C0DD', '\"index\"', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 00:58:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('347', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@5370363f\"]', '3CA0104B934744B9FF3DDA5137805BC0', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '22', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 01:01:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('348', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '3CA0104B934744B9FF3DDA5137805BC0', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-12 01:01:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('349', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@436f291a\"]', '660576CBFC2106431D46EF28CF672E06', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '911', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:25:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('350', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '660576CBFC2106431D46EF28CF672E06', '\"index\"', '17', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:25:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('351', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@24ed3530\"]', 'B34A129C3D24D44502A90F8E20C912D3', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '24', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:28:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('352', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B34A129C3D24D44502A90F8E20C912D3', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:28:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('353', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', 'B34A129C3D24D44502A90F8E20C912D3', '\"index/userInfo\"', '19', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:30:28', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('354', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7d0817d0\"]', 'BFC4D5BE4F7B675236D0E1BB09662161', '{\"success\":false,\"message\":\"登录密码错误.\"}', '5', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:32:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('355', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@6c1aaeae\"]', 'BFC4D5BE4F7B675236D0E1BB09662161', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '28', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:33:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('356', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'BFC4D5BE4F7B675236D0E1BB09662161', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:33:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('357', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2dd46cb\"]', '05C76E0120900677E2B24072F8347B6C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '16', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:33:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('358', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '05C76E0120900677E2B24072F8347B6C', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:33:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('359', 'Ajax请求', '修改试卷', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/exam/update', 'PUT', 'com.dimple.controller.ExamController.updateSave', '[{\"examId\":11,\"examLastTime\":60,\"examName\":\"Java试卷1号\",\"examStartDate\":1557590400000,\"ids\":[],\"params\":{},\"reviewerId\":25,\"studentIds\":[22,23,24]}]', '05C76E0120900677E2B24072F8347B6C', '{\"msg\":\"操作成功\",\"code\":0}', '161', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:34:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('360', '普通请求', '获取用户信息', '127.0.0.1', '测试教师1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '05C76E0120900677E2B24072F8347B6C', '\"index/userInfo\"', '4', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:37:37', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('361', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@9198eb7\"]', '05C76E0120900677E2B24072F8347B6C', '{\"success\":false,\"message\":\"验证码错误\"}', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:38:37', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('362', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4ec71109\"]', '05C76E0120900677E2B24072F8347B6C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '15', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:38:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('363', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '05C76E0120900677E2B24072F8347B6C', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 16:38:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('364', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@444bcbcd\"]', 'F1FEE85F996555B3EEC7AF20CD4D7D08', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '857', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 18:14:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('365', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'F1FEE85F996555B3EEC7AF20CD4D7D08', '\"index\"', '13', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 18:14:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('366', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@5a3c4aef\"]', '2177188F9DBF0106C12638AAE0C0C5F1', '{\"success\":false,\"message\":\"获取验证码超时\"}', '11', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 19:16:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('367', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@6d0e1079\"]', '2177188F9DBF0106C12638AAE0C0C5F1', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '27', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 19:16:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('368', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '2177188F9DBF0106C12638AAE0C0C5F1', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-18 19:16:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('369', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@18542f79\"]', 'B998C0D8AF332D40406F670CF000DF65', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '1006', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 15:58:59', null, null, null, null);
INSERT INTO `sys_log` VALUES ('370', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B998C0D8AF332D40406F670CF000DF65', '\"index\"', '15', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 15:58:59', null, null, null, null);
INSERT INTO `sys_log` VALUES ('371', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4dd1db19\"]', '3395888C64616C4A6B6E8BD9733EC11A', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '919', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 19:06:14', null, null, null, null);
INSERT INTO `sys_log` VALUES ('372', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '3395888C64616C4A6B6E8BD9733EC11A', '\"index\"', '12', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 19:06:14', null, null, null, null);
INSERT INTO `sys_log` VALUES ('373', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@28cc7547\"]', 'EE72B0AD859EFA9F55CFB3F80411435F', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '2268', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:17:05', null, null, null, null);
INSERT INTO `sys_log` VALUES ('374', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'EE72B0AD859EFA9F55CFB3F80411435F', '\"index\"', '33', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:17:06', null, null, null, null);
INSERT INTO `sys_log` VALUES ('375', '普通请求', '开始考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/11', 'GET', 'com.dimple.controller.StudentExamController.startExam', '[11,{}]', 'EE72B0AD859EFA9F55CFB3F80411435F', '\"exam/makeExam\"', '28', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:17:18', null, null, null, null);
INSERT INTO `sys_log` VALUES ('376', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', 'EE72B0AD859EFA9F55CFB3F80411435F', '\"index/userInfo\"', '7', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:18:26', null, null, null, null);
INSERT INTO `sys_log` VALUES ('377', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@415e2722\"]', '0656F371EA8CAC5221CE2BED00054F38', '{\"success\":false,\"message\":\"登录密码错误.\"}', '21', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:19:33', null, null, null, null);
INSERT INTO `sys_log` VALUES ('378', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@6051a637\"]', '0656F371EA8CAC5221CE2BED00054F38', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '30', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:19:55', null, null, null, null);
INSERT INTO `sys_log` VALUES ('379', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0656F371EA8CAC5221CE2BED00054F38', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:19:55', null, null, null, null);
INSERT INTO `sys_log` VALUES ('380', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@49cb46dd\"]', '0656F371EA8CAC5221CE2BED00054F38', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '26', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:20:50', null, null, null, null);
INSERT INTO `sys_log` VALUES ('381', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0656F371EA8CAC5221CE2BED00054F38', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:20:50', null, null, null, null);
INSERT INTO `sys_log` VALUES ('382', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@5e6b55df\"]', 'F27082E029F16D926FE04952E5237805', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '47', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:24:48', null, null, null, null);
INSERT INTO `sys_log` VALUES ('383', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'F27082E029F16D926FE04952E5237805', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 20:24:48', null, null, null, null);
INSERT INTO `sys_log` VALUES ('384', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@62a9389b\"]', '0CC166943C1FF8CBC6D646443A41CE27', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '1331', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:19:26', null, null, null, null);
INSERT INTO `sys_log` VALUES ('385', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0CC166943C1FF8CBC6D646443A41CE27', '\"index\"', '30', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:19:26', null, null, null, null);
INSERT INTO `sys_log` VALUES ('386', '普通请求', '开始考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/11', 'GET', 'com.dimple.controller.StudentExamController.startExam', '[11,{}]', '0CC166943C1FF8CBC6D646443A41CE27', '\"exam/makeExam\"', '29', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:19:55', null, null, null, null);
INSERT INTO `sys_log` VALUES ('387', 'Ajax请求', '结束考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/finish', 'POST', 'com.dimple.controller.StudentExamController.finish', '[11]', '0CC166943C1FF8CBC6D646443A41CE27', '{\"msg\":\"操作成功\",\"code\":0}', '60', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:20:03', null, null, null, null);
INSERT INTO `sys_log` VALUES ('388', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0CC166943C1FF8CBC6D646443A41CE27', '\"index\"', '2', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:20:03', null, null, null, null);
INSERT INTO `sys_log` VALUES ('389', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@712169bf\"]', '48DAD95A175132C208D986C09364B718', '{\"success\":false,\"message\":\"验证码错误\"}', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:21:00', null, null, null, null);
INSERT INTO `sys_log` VALUES ('390', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@27b16186\"]', '48DAD95A175132C208D986C09364B718', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '30', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:21:08', null, null, null, null);
INSERT INTO `sys_log` VALUES ('391', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '48DAD95A175132C208D986C09364B718', '\"index\"', '3', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:21:08', null, null, null, null);
INSERT INTO `sys_log` VALUES ('392', 'Ajax请求', '添加试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/add', 'POST', 'com.dimple.controller.QuestionController.addSave', '[{\"analyse\":\"balalal\",\"answer\":\"D\",\"optionA\":\"A\",\"optionB\":\"B\",\"optionC\":\"C\",\"optionD\":\"D\",\"params\":{},\"score\":5.0,\"title\":\"balala\",\"type\":\"1\"}]', '48DAD95A175132C208D986C09364B718', '{\"msg\":\"操作成功\",\"code\":0}', '167', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:22:14', null, null, null, null);
INSERT INTO `sys_log` VALUES ('393', 'Ajax请求', '修改试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/update', 'PUT', 'com.dimple.controller.QuestionController.updateSave', '[{\"analyse\":\"balalal\",\"answer\":\"C\",\"id\":58,\"optionA\":\"A\",\"optionB\":\"B\",\"optionC\":\"C\",\"optionD\":\"D\",\"params\":{},\"score\":5.0,\"title\":\"balal\",\"type\":\"1\"}]', '48DAD95A175132C208D986C09364B718', '{\"msg\":\"操作成功\",\"code\":0}', '30', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:23:08', null, null, null, null);
INSERT INTO `sys_log` VALUES ('394', 'Ajax请求', '删除试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question', 'DELETE', 'com.dimple.controller.QuestionController.delete', '[\"57\"]', '48DAD95A175132C208D986C09364B718', '{\"msg\":\"操作成功\",\"code\":0}', '27', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:23:19', null, null, null, null);
INSERT INTO `sys_log` VALUES ('395', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2225ed7e\"]', '48DAD95A175132C208D986C09364B718', '{\"success\":false,\"message\":\"验证码错误\"}', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:25:26', null, null, null, null);
INSERT INTO `sys_log` VALUES ('396', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@47557383\"]', '48DAD95A175132C208D986C09364B718', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '16', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:25:35', null, null, null, null);
INSERT INTO `sys_log` VALUES ('397', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '48DAD95A175132C208D986C09364B718', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:25:35', null, null, null, null);
INSERT INTO `sys_log` VALUES ('398', 'Ajax请求', '添加试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/add', 'POST', 'com.dimple.controller.QuestionController.addSave', '[{\"analyse\":\"12\",\"answer\":\"121212\",\"params\":{},\"score\":12.0,\"title\":\"babas\",\"type\":\"3\"}]', '48DAD95A175132C208D986C09364B718', '{\"msg\":\"操作成功\",\"code\":0}', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:27:05', null, null, null, null);
INSERT INTO `sys_log` VALUES ('399', 'Ajax请求', '添加试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/add', 'POST', 'com.dimple.controller.QuestionController.addSave', '[{\"analyse\":\"12\",\"answer\":\"1\",\"params\":{},\"score\":12.0,\"title\":\"112\",\"type\":\"4\"}]', '48DAD95A175132C208D986C09364B718', '{\"msg\":\"操作成功\",\"code\":0}', '6', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:27:30', null, null, null, null);
INSERT INTO `sys_log` VALUES ('400', 'Ajax请求', '添加试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/add', 'POST', 'com.dimple.controller.QuestionController.addSave', '[{\"analyse\":\"12\",\"answer\":\"12\",\"params\":{},\"score\":12.0,\"title\":\"12\",\"type\":\"5\"}]', '48DAD95A175132C208D986C09364B718', '{\"msg\":\"操作成功\",\"code\":0}', '6', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:27:45', null, null, null, null);
INSERT INTO `sys_log` VALUES ('401', 'Ajax请求', '修改试卷', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/exam/update', 'PUT', 'com.dimple.controller.ExamController.updateSave', '[{\"examId\":11,\"examLastTime\":60,\"examName\":\"测试试卷5号\",\"examStartDate\":1589895730000,\"ids\":[25,29,30,31],\"params\":{},\"reviewerId\":25,\"studentIds\":[22,29]}]', '48DAD95A175132C208D986C09364B718', '{\"msg\":\"操作成功\",\"code\":0}', '194', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:42:19', null, null, null, null);
INSERT INTO `sys_log` VALUES ('402', '普通请求', '获取用户信息', '127.0.0.1', '测试教师1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '48DAD95A175132C208D986C09364B718', '\"index/userInfo\"', '3', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:44:07', null, null, null, null);
INSERT INTO `sys_log` VALUES ('403', '普通请求', '获取用户信息', '127.0.0.1', '测试教师1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '48DAD95A175132C208D986C09364B718', '\"index/userInfo\"', '4', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:44:23', null, null, null, null);
INSERT INTO `sys_log` VALUES ('404', '普通请求', '获取用户信息', '127.0.0.1', '测试教师1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '48DAD95A175132C208D986C09364B718', '\"index/userInfo\"', '5', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:44:37', null, null, null, null);
INSERT INTO `sys_log` VALUES ('405', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2e4f768c\"]', '909B78D4F84F22207168F8727CF8E913', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '15', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:45:47', null, null, null, null);
INSERT INTO `sys_log` VALUES ('406', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '909B78D4F84F22207168F8727CF8E913', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:45:47', null, null, null, null);
INSERT INTO `sys_log` VALUES ('407', '普通请求', '开始考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/11', 'GET', 'com.dimple.controller.StudentExamController.startExam', '[11,{}]', '909B78D4F84F22207168F8727CF8E913', '\"exam/makeExam\"', '96', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:46:29', null, null, null, null);
INSERT INTO `sys_log` VALUES ('408', 'Ajax请求', '结束考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/finish', 'POST', 'com.dimple.controller.StudentExamController.finish', '[11]', '909B78D4F84F22207168F8727CF8E913', '{\"msg\":\"操作成功\",\"code\":0}', '104', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:46:45', null, null, null, null);
INSERT INTO `sys_log` VALUES ('409', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '909B78D4F84F22207168F8727CF8E913', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:46:45', null, null, null, null);
INSERT INTO `sys_log` VALUES ('410', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '909B78D4F84F22207168F8727CF8E913', '\"index/userInfo\"', '4', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:47:36', null, null, null, null);
INSERT INTO `sys_log` VALUES ('411', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '909B78D4F84F22207168F8727CF8E913', '\"index/userInfo\"', '6', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:47:41', null, null, null, null);
INSERT INTO `sys_log` VALUES ('412', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@ed18619\"]', '213D9F7EF2DAB2F099189A91D7C560A0', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '19', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:48:03', null, null, null, null);
INSERT INTO `sys_log` VALUES ('413', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '213D9F7EF2DAB2F099189A91D7C560A0', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:48:03', null, null, null, null);
INSERT INTO `sys_log` VALUES ('414', 'Ajax请求', '修改试卷', '127.0.0.1', '超级管理员', 'http://localhost:8080/onlineExam/exam/update', 'PUT', 'com.dimple.controller.ExamController.updateSave', '[{\"examId\":11,\"examLastTime\":60,\"examName\":\"测试试卷5号\",\"examStartDate\":1589895730000,\"ids\":[25,29,31],\"params\":{},\"reviewerId\":25,\"studentIds\":[22,29]}]', '213D9F7EF2DAB2F099189A91D7C560A0', '{\"msg\":\"操作成功\",\"code\":0}', '81', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:49:04', null, null, null, null);
INSERT INTO `sys_log` VALUES ('415', 'Ajax请求', '添加公告', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/notice/add', 'POST', 'com.dimple.controller.NoticeController.addSave', '[{\"content\":\"5.20考试\",\"params\":{},\"title\":\"考试通知\",\"type\":\"1\"}]', '213D9F7EF2DAB2F099189A91D7C560A0', '{\"msg\":\"操作成功\",\"code\":0}', '31', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:49:41', null, null, null, null);
INSERT INTO `sys_log` VALUES ('416', '普通请求', '获取用户信息', '127.0.0.1', '超级管理员', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '213D9F7EF2DAB2F099189A91D7C560A0', '\"index/userInfo\"', '3', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:50:20', null, null, null, null);
INSERT INTO `sys_log` VALUES ('417', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@5bef99af\"]', 'C1E540154E0C105BE2BC8C57A6F57DA1', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '17', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:52:24', null, null, null, null);
INSERT INTO `sys_log` VALUES ('418', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'C1E540154E0C105BE2BC8C57A6F57DA1', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:52:24', null, null, null, null);
INSERT INTO `sys_log` VALUES ('419', '普通请求', '开始考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/11', 'GET', 'com.dimple.controller.StudentExamController.startExam', '[11,{}]', 'C1E540154E0C105BE2BC8C57A6F57DA1', '\"exam/makeExam\"', '86', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 21:52:28', null, null, null, null);
INSERT INTO `sys_log` VALUES ('420', 'Ajax请求', '学生注册', '127.0.0.1', null, 'http://localhost:8080/register', 'POST', 'com.dimple.controller.LoginController.register', '[{\"email\":\"12361237@qq.com\",\"loginName\":\"2018012696\",\"nickName\":\"小明\",\"params\":{},\"password\":\"123456\",\"studentCheckFlag\":false,\"tel\":\"12313123123\"},\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@24e2f45c\"]', '5334879977DE0DF51D6CDBEA78D7A4A7', '{\"msg\":\"注册成功\",\"success\":true}', '995', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:36:00', null, null, null, null);
INSERT INTO `sys_log` VALUES ('421', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"测试学生1号\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@77186808\"]', '5334879977DE0DF51D6CDBEA78D7A4A7', '{\"success\":false,\"message\":\"帐号不存在\"}', '22', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:36:14', null, null, null, null);
INSERT INTO `sys_log` VALUES ('422', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"2018012696\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@373271ea\"]', '5334879977DE0DF51D6CDBEA78D7A4A7', '{\"success\":false,\"message\":\"登录密码错误.\"}', '33', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:36:35', null, null, null, null);
INSERT INTO `sys_log` VALUES ('423', 'Ajax请求', '登录系统', '127.0.0.1', '小明', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"2018012696\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@140103bd\"]', '5334879977DE0DF51D6CDBEA78D7A4A7', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '25', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:36:48', null, null, null, null);
INSERT INTO `sys_log` VALUES ('424', '普通请求', '', '127.0.0.1', '小明', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '5334879977DE0DF51D6CDBEA78D7A4A7', '\"index\"', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:36:48', null, null, null, null);
INSERT INTO `sys_log` VALUES ('425', '普通请求', '', '127.0.0.1', '小明', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '5334879977DE0DF51D6CDBEA78D7A4A7', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:37:01', null, null, null, null);
INSERT INTO `sys_log` VALUES ('426', 'Ajax请求', '登录系统', '127.0.0.1', '小明', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"2018012696\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7f2a74e7\"]', '73B685C306A2E06A7865413698867D24', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '18', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:37:52', null, null, null, null);
INSERT INTO `sys_log` VALUES ('427', '普通请求', '', '127.0.0.1', '小明', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '73B685C306A2E06A7865413698867D24', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:37:53', null, null, null, null);
INSERT INTO `sys_log` VALUES ('428', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"2018012696\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@362fedd7\"]', 'A8A22EF933105F6309EDC339824520A3', '{\"success\":false,\"message\":\"登录密码错误.\"}', '4', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:38:33', null, null, null, null);
INSERT INTO `sys_log` VALUES ('429', 'Ajax请求', '登录系统', '127.0.0.1', '小明', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"2018012696\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@110d8162\"]', 'A8A22EF933105F6309EDC339824520A3', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '20', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:38:46', null, null, null, null);
INSERT INTO `sys_log` VALUES ('430', '普通请求', '', '127.0.0.1', '小明', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'A8A22EF933105F6309EDC339824520A3', '\"index\"', '2', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:38:46', null, null, null, null);
INSERT INTO `sys_log` VALUES ('431', '普通请求', '获取用户信息', '127.0.0.1', '小明', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', 'A8A22EF933105F6309EDC339824520A3', '\"index/userInfo\"', '16', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:38:49', null, null, null, null);
INSERT INTO `sys_log` VALUES ('432', '普通请求', '获取用户信息', '127.0.0.1', '小明', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', 'A8A22EF933105F6309EDC339824520A3', '\"index/userInfo\"', '6', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:38:53', null, null, null, null);
INSERT INTO `sys_log` VALUES ('433', '普通请求', '', '127.0.0.1', '小明', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'A8A22EF933105F6309EDC339824520A3', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:38:57', null, null, null, null);
INSERT INTO `sys_log` VALUES ('434', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@ca444d3\"]', '156F7AC116B3627813A456BF25FFE23F', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '19', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:42:32', null, null, null, null);
INSERT INTO `sys_log` VALUES ('435', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '156F7AC116B3627813A456BF25FFE23F', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:42:32', null, null, null, null);
INSERT INTO `sys_log` VALUES ('436', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@3c818274\"]', '156F7AC116B3627813A456BF25FFE23F', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '20', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:43:19', null, null, null, null);
INSERT INTO `sys_log` VALUES ('437', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '156F7AC116B3627813A456BF25FFE23F', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-19 22:43:20', null, null, null, null);
INSERT INTO `sys_log` VALUES ('438', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"test1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2dd3070\"]', '6FC2B720C73D09B8268F2290327BE74C', '{\"success\":false,\"message\":\"帐号不存在\"}', '774', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:05:20', null, null, null, null);
INSERT INTO `sys_log` VALUES ('439', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@441b064d\"]', '6FC2B720C73D09B8268F2290327BE74C', '{\"success\":false,\"message\":\"验证码错误\"}', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:05:27', null, null, null, null);
INSERT INTO `sys_log` VALUES ('440', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@cd1c8f7\"]', '6FC2B720C73D09B8268F2290327BE74C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '84', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:05:35', null, null, null, null);
INSERT INTO `sys_log` VALUES ('441', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '6FC2B720C73D09B8268F2290327BE74C', '\"index\"', '11', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:05:35', null, null, null, null);
INSERT INTO `sys_log` VALUES ('442', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@6c11d4fb\"]', '2D43083ADD3106395684023C241DAA64', '{\"success\":false,\"message\":\"验证码错误\"}', '3', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:06:17', null, null, null, null);
INSERT INTO `sys_log` VALUES ('443', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2dddc8e\"]', '2D43083ADD3106395684023C241DAA64', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '23', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:06:24', null, null, null, null);
INSERT INTO `sys_log` VALUES ('444', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '2D43083ADD3106395684023C241DAA64', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:06:24', null, null, null, null);
INSERT INTO `sys_log` VALUES ('445', 'Ajax请求', '添加试题', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/question/add', 'POST', 'com.dimple.controller.QuestionController.addSave', '[{\"analyse\":\"\",\"answer\":\"C\",\"optionA\":\"as\",\"optionB\":\"s\",\"optionC\":\"d\",\"optionD\":\"f\",\"params\":{},\"score\":5.0,\"subid\":\"1\",\"title\":\"lalala\",\"type\":\"1\"}]', '2D43083ADD3106395684023C241DAA64', '{\"msg\":\"操作成功\",\"code\":0}', '40', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:11:32', null, null, null, null);
INSERT INTO `sys_log` VALUES ('446', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e658523\"]', '31E7CC93778AE2662506C84F08E04B5C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '19', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:13:16', null, null, null, null);
INSERT INTO `sys_log` VALUES ('447', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '31E7CC93778AE2662506C84F08E04B5C', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:13:16', null, null, null, null);
INSERT INTO `sys_log` VALUES ('448', 'Ajax请求', '修改用户', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/user/update', 'PUT', 'com.dimple.controller.SysUserController.updateSave', '[{\"email\":\"test@test.com\",\"id\":22,\"nickName\":\"测试学生1号\",\"params\":{},\"remark\":\"\",\"studentCheckFlag\":false,\"tel\":\"1369905812\",\"userType\":\"3\"}]', '31E7CC93778AE2662506C84F08E04B5C', '{\"msg\":\"操作成功\",\"code\":0}', '19', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:14:26', null, null, null, null);
INSERT INTO `sys_log` VALUES ('449', 'Ajax请求', '删除用户', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/user', 'DELETE', 'com.dimple.controller.SysUserController.delete', '[\"30\"]', '31E7CC93778AE2662506C84F08E04B5C', '{\"msg\":\"操作成功\",\"code\":0}', '19', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:14:40', null, null, null, null);
INSERT INTO `sys_log` VALUES ('450', 'Ajax请求', '添加试题', '127.0.0.1', '超级管理员', 'http://localhost:8080/onlineExam/question/add', 'POST', 'com.dimple.controller.QuestionController.addSave', '[{\"analyse\":\"\",\"answer\":\"1\",\"params\":{},\"score\":4.0,\"subid\":\"1\",\"title\":\"对吗\",\"type\":\"4\"}]', '31E7CC93778AE2662506C84F08E04B5C', '{\"msg\":\"操作成功\",\"code\":0}', '8', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:16:42', null, null, null, null);
INSERT INTO `sys_log` VALUES ('451', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@b998844\"]', '4EB215F875E632B7D4250259F74EFE11', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '903', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:32:32', null, null, null, null);
INSERT INTO `sys_log` VALUES ('452', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '4EB215F875E632B7D4250259F74EFE11', '\"index\"', '13', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:32:33', null, null, null, null);
INSERT INTO `sys_log` VALUES ('453', 'Ajax请求', '添加试卷', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/exam/add', 'POST', 'com.dimple.controller.ExamController.addSave', '[{\"examLastTime\":60,\"examName\":\"java期末考试\",\"examStartDate\":1589906006000,\"ids\":[22,23,24,25,29],\"params\":{},\"reviewerId\":25,\"studentIds\":[23,24,29],\"subid\":\"1\"}]', '4EB215F875E632B7D4250259F74EFE11', '{\"msg\":\"操作成功\",\"code\":0}', '238', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:33:27', null, null, null, null);
INSERT INTO `sys_log` VALUES ('454', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"test1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4c9fee29\"]', '69C30C5C3C43EFAA64D9BAC6B40FD9A0', '{\"success\":false,\"message\":\"帐号不存在\"}', '723', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:52:09', null, null, null, null);
INSERT INTO `sys_log` VALUES ('455', 'Ajax请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@722edd8c\"]', '69C30C5C3C43EFAA64D9BAC6B40FD9A0', '{\"success\":false,\"message\":\"登录密码错误.\"}', '52', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:52:26', null, null, null, null);
INSERT INTO `sys_log` VALUES ('456', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@20564a99\"]', '69C30C5C3C43EFAA64D9BAC6B40FD9A0', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '35', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:52:47', null, null, null, null);
INSERT INTO `sys_log` VALUES ('457', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '69C30C5C3C43EFAA64D9BAC6B40FD9A0', '\"index\"', '15', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 00:52:47', null, null, null, null);
INSERT INTO `sys_log` VALUES ('458', '普通请求', '登录系统', '127.0.0.1', null, 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123123\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@1b39faa3\"]', 'A930612891BB3B6F8579EA1ED750B6FE', '{\"success\":false,\"message\":\"验证码不能为空\"}', '172', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 01:13:41', null, null, null, null);
INSERT INTO `sys_log` VALUES ('459', '普通请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@2df75237\"]', 'A930612891BB3B6F8579EA1ED750B6FE', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '154', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 01:14:19', null, null, null, null);
INSERT INTO `sys_log` VALUES ('460', '普通请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@7ae9b86e\"]', '9230CE39B017248DC95E3EF2FE163721', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '919', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 01:19:51', null, null, null, null);
INSERT INTO `sys_log` VALUES ('461', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@5ea19279\"]', '176205A05772A13C371AD013B88DE785', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '818', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 01:22:11', null, null, null, null);
INSERT INTO `sys_log` VALUES ('462', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '176205A05772A13C371AD013B88DE785', '\"index\"', '12', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 01:22:11', null, null, null, null);
INSERT INTO `sys_log` VALUES ('463', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@20574817\"]', '656C7AA081943C4D10B7ED917C135D6E', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '845', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:23:27', null, null, null, null);
INSERT INTO `sys_log` VALUES ('464', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '656C7AA081943C4D10B7ED917C135D6E', '\"index\"', '10', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:23:27', null, null, null, null);
INSERT INTO `sys_log` VALUES ('465', 'Ajax请求', '登录系统', '127.0.0.1', '测试学生1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"student1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@29634003\"]', '6E90AF7548642674075F7FC91A479E03', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '751', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:28:13', null, null, null, null);
INSERT INTO `sys_log` VALUES ('466', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '6E90AF7548642674075F7FC91A479E03', '\"index\"', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:28:13', null, null, null, null);
INSERT INTO `sys_log` VALUES ('467', '普通请求', '开始考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/11', 'GET', 'com.dimple.controller.StudentExamController.startExam', '[11,{}]', '6E90AF7548642674075F7FC91A479E03', '\"exam/makeExam\"', '94', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:28:20', null, null, null, null);
INSERT INTO `sys_log` VALUES ('468', 'Ajax请求', '结束考试', '127.0.0.1', '测试学生1号', 'http://localhost:8080/exam/student/finish', 'POST', 'com.dimple.controller.StudentExamController.finish', '[11]', '6E90AF7548642674075F7FC91A479E03', '{\"msg\":\"操作成功\",\"code\":0}', '84', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:28:33', null, null, null, null);
INSERT INTO `sys_log` VALUES ('469', '普通请求', '', '127.0.0.1', '测试学生1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '6E90AF7548642674075F7FC91A479E03', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:28:33', null, null, null, null);
INSERT INTO `sys_log` VALUES ('470', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '6E90AF7548642674075F7FC91A479E03', '\"index/userInfo\"', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:30:15', null, null, null, null);
INSERT INTO `sys_log` VALUES ('471', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '6E90AF7548642674075F7FC91A479E03', '\"index/userInfo\"', '4', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:30:29', null, null, null, null);
INSERT INTO `sys_log` VALUES ('472', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '6E90AF7548642674075F7FC91A479E03', '\"index/userInfo\"', '6', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:30:32', null, null, null, null);
INSERT INTO `sys_log` VALUES ('473', '普通请求', '获取用户信息', '127.0.0.1', '测试学生1号', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', '6E90AF7548642674075F7FC91A479E03', '\"index/userInfo\"', '5', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:31:46', null, null, null, null);
INSERT INTO `sys_log` VALUES ('474', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@24a585c7\"]', '47DF429D9D2D56EF2E460A3A33EFD5B0', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '34', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:33:35', null, null, null, null);
INSERT INTO `sys_log` VALUES ('475', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '47DF429D9D2D56EF2E460A3A33EFD5B0', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:33:35', null, null, null, null);
INSERT INTO `sys_log` VALUES ('476', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@d12c0c8\"]', '0101207177A90C1CE5271D8E6F84E97C', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '13', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:37:25', null, null, null, null);
INSERT INTO `sys_log` VALUES ('477', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '0101207177A90C1CE5271D8E6F84E97C', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:37:25', null, null, null, null);
INSERT INTO `sys_log` VALUES ('478', 'Ajax请求', '删除公告', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/notice', 'DELETE', 'com.dimple.controller.NoticeController.delete', '[\"5\"]', '0101207177A90C1CE5271D8E6F84E97C', '{\"msg\":\"操作成功\",\"code\":0}', '13', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:38:09', null, null, null, null);
INSERT INTO `sys_log` VALUES ('479', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@67ef4424\"]', 'B13FE9D04457400303C4C7E82489D7F7', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '14', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:38:40', null, null, null, null);
INSERT INTO `sys_log` VALUES ('480', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B13FE9D04457400303C4C7E82489D7F7', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:38:40', null, null, null, null);
INSERT INTO `sys_log` VALUES ('481', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B13FE9D04457400303C4C7E82489D7F7', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:38:52', null, null, null, null);
INSERT INTO `sys_log` VALUES ('482', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@4a19109c\"]', 'B13FE9D04457400303C4C7E82489D7F7', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:39:23', null, null, null, null);
INSERT INTO `sys_log` VALUES ('483', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'B13FE9D04457400303C4C7E82489D7F7', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:39:23', null, null, null, null);
INSERT INTO `sys_log` VALUES ('484', 'Ajax请求', '添加公告', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/notice/add', 'POST', 'com.dimple.controller.NoticeController.addSave', '[{\"content\":\"6月1号有一场考试\",\"params\":{},\"title\":\"期末考试\",\"type\":\"2\"}]', 'B13FE9D04457400303C4C7E82489D7F7', '{\"msg\":\"操作成功\",\"code\":0}', '96', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:40:25', null, null, null, null);
INSERT INTO `sys_log` VALUES ('485', 'Ajax请求', '登录系统', '127.0.0.1', '测试教师1号', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"123456\",\"teacher1\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@75a22fe5\"]', '90E985B48FB6CCF778DDCABF5E26DF92', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:40:52', null, null, null, null);
INSERT INTO `sys_log` VALUES ('486', '普通请求', '', '127.0.0.1', '测试教师1号', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', '90E985B48FB6CCF778DDCABF5E26DF92', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:40:52', null, null, null, null);
INSERT INTO `sys_log` VALUES ('487', 'Ajax请求', '删除试卷', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/exam', 'DELETE', 'com.dimple.controller.ExamController.delete', '[\"13\"]', '90E985B48FB6CCF778DDCABF5E26DF92', '{\"msg\":\"操作成功\",\"code\":0}', '9', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:41:22', null, null, null, null);
INSERT INTO `sys_log` VALUES ('488', 'Ajax请求', '删除试卷', '127.0.0.1', '测试教师1号', 'http://localhost:8080/onlineExam/exam', 'DELETE', 'com.dimple.controller.ExamController.delete', '[\"12\"]', '90E985B48FB6CCF778DDCABF5E26DF92', '{\"msg\":\"操作成功\",\"code\":0}', '5', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:41:26', null, null, null, null);
INSERT INTO `sys_log` VALUES ('489', 'Ajax请求', '登录系统', '127.0.0.1', '超级管理员', 'http://localhost:8080/login', 'POST', 'com.dimple.controller.LoginController.login', '[\"1\",\"test\",\"true\",\"org.apache.shiro.web.servlet.ShiroHttpServletRequest@1697eeb9\"]', 'E6C1DC5C6F80444238690F39FA1C3673', '{\"data\":{\"url\":\"index\"},\"success\":true,\"message\":\"登录成功\"}', '18', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:43:14', null, null, null, null);
INSERT INTO `sys_log` VALUES ('490', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'E6C1DC5C6F80444238690F39FA1C3673', '\"index\"', null, 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:43:14', null, null, null, null);
INSERT INTO `sys_log` VALUES ('491', '普通请求', '获取用户信息', '127.0.0.1', '超级管理员', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', 'E6C1DC5C6F80444238690F39FA1C3673', '\"index/userInfo\"', '3', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:44:08', null, null, null, null);
INSERT INTO `sys_log` VALUES ('492', '普通请求', '获取用户信息', '127.0.0.1', '超级管理员', 'http://localhost:8080/userInfo', 'GET', 'com.dimple.controller.IndexController.userInfo', '[{}]', 'E6C1DC5C6F80444238690F39FA1C3673', '\"index/userInfo\"', '3', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:44:13', null, null, null, null);
INSERT INTO `sys_log` VALUES ('493', '普通请求', '', '127.0.0.1', '超级管理员', 'http://localhost:8080/index', 'GET', 'com.dimple.controller.IndexController.index', '[]', 'E6C1DC5C6F80444238690F39FA1C3673', '\"index\"', '1', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:44:22', null, null, null, null);
INSERT INTO `sys_log` VALUES ('494', 'Ajax请求', '删除日志', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/log', 'DELETE', 'com.dimple.controller.SysLogController.delete', '[\"319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368\"]', 'E6C1DC5C6F80444238690F39FA1C3673', '{\"msg\":\"操作成功\",\"code\":0}', '12', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:45:05', null, null, null, null);
INSERT INTO `sys_log` VALUES ('495', 'Ajax请求', '删除日志', '127.0.0.1', '超级管理员', 'http://localhost:8080/system/log', 'DELETE', 'com.dimple.controller.SysLogController.delete', '[\"269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318\"]', 'E6C1DC5C6F80444238690F39FA1C3673', '{\"msg\":\"操作成功\",\"code\":0}', '10', 'Windows-Firefox-76.0', null, null, null, null, null, null, '2020-05-20 18:45:17', null, null, null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(36) DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(40) DEFAULT NULL COMMENT '昵称',
  `icon` varchar(2000) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) DEFAULT NULL COMMENT 'shiro加密盐',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱地址',
  `locked` tinyint(2) DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT NULL,
  `user_type` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'test', '超级管理员', 'https://static.mysiteforme.com/3c5b69f4-2e39-4f88-b302-a6eb48e4c43a.jpg', '810339f5426fe2dcaf92c5cac718acc6471a034b', '3fb62b5aeede1bbf', '13699058124', 'b@qq.com', '0', '2017-11-27 22:19:39', '1', '2019-05-04 14:26:56', '1', '', '0', '1');
INSERT INTO `sys_user` VALUES ('22', 'student1', '测试学生1号', null, '7c3180072403723fa1e113ebb4bc0ba60da99dc8', '6fd6764aacc60a45', '1369905812', 'test@test.com', null, '2019-05-09 00:01:13', '1', '2020-05-20 00:14:26', null, null, null, '3');
INSERT INTO `sys_user` VALUES ('23', 'student2', '测试学生2号', null, 'c4429996c153fb21ab84dd5479d97944139283f0', '6e2768cb76c1d32b', '13699058124', 'test@test.com', null, '2019-05-09 00:01:48', '1', null, null, null, null, '3');
INSERT INTO `sys_user` VALUES ('24', 'student3', '测试学生3号', null, 'dff7b08a6322affdcc93f87acc5735e956ac59f8', '58892915c95376dd', '13699058124', 'test@test.com', null, '2019-05-09 00:02:25', '1', null, null, null, null, '3');
INSERT INTO `sys_user` VALUES ('25', 'teacher1', '测试教师1号', null, '7fdec6502fdfca5612c2fb4be2c912e540513146', '61893829523e58b7', '13699058124', 'test@test.com', null, '2019-05-09 00:02:51', '1', null, null, null, null, '2');
INSERT INTO `sys_user` VALUES ('26', 'teacher2', '测试教师2号', null, '5a7a8ada80488f7bea72e02170c4326f6c39ea23', 'b82517efc4f7241c', '13699058124', 'test@test.com', null, '2019-05-09 00:03:18', '1', '2019-05-09 00:03:28', null, null, null, '2');
INSERT INTO `sys_user` VALUES ('27', 'teacher3', '测试教师3号', null, '2fd9a93a91e905979b629c230e8c508006230c26', '689e881f3d45e06e', '13699058124', 'test@test.com', null, '2019-05-09 00:04:02', '1', null, null, null, null, '2');
INSERT INTO `sys_user` VALUES ('29', 'student4', '测试学生4', null, '8c2b153a66004e123c73ede8c085b0012c6cc443', '474b59bff54b771f', '12312312312', '12312312@qq.com', null, '2020-04-10 19:56:25', '1', null, null, '无备注', null, '3');
