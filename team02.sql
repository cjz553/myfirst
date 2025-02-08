/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 80039
Source Host           : localhost:3306
Source Database       : team02

Target Server Type    : MYSQL
Target Server Version : 80039
File Encoding         : 65001

Date: 2025-01-06 08:43:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area_car
-- ----------------------------
DROP TABLE IF EXISTS `area_car`;
CREATE TABLE `area_car` (
  `cph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `la` varchar(255) NOT NULL,
  `lo` varchar(255) NOT NULL,
  `wt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `car_area_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of area_car
-- ----------------------------
INSERT INTO `area_car` VALUES ('上街10000', '26.0330315898883', '119.19590950012207', '违规停车', '未在车辆存放地内', '2025-01-01 21:32:03', '2025-01-02 10:15:43', '15280129722');
INSERT INTO `area_car` VALUES ('上街10001', '26.032723099853147', '119.19573783874512', '违规停车', '未在车辆存放地内', '2025-01-01 21:36:00', '2025-01-02 09:38:25', '15280129722');
INSERT INTO `area_car` VALUES ('上街10002', '26.034641509094406', '119.19752955436707', '违规停车', '未在车辆存放地内', '2025-01-01 21:36:13', '2025-01-02 10:15:44', '15280129722');
INSERT INTO `area_car` VALUES ('上街10003', '26.035364519511774', '119.19651567935944', '违规停车', '未在车辆存放地内', '2025-01-01 21:36:18', '2025-01-02 10:00:32', '15280129722');
INSERT INTO `area_car` VALUES ('上街10004', '26.033976335574224', '119.19857025146484', '违规停车', '未在车辆存放地内', '2025-01-02 08:59:55', '2025-01-02 10:15:19', '15280129722');
INSERT INTO `area_car` VALUES ('上街10000', '26.034458345747797', '119.19633865356445', '违规停车', '未在车辆存放地内', '2025-01-02 10:17:39', '2025-01-02 10:28:25', '15280129722');
INSERT INTO `area_car` VALUES ('上街00098', '26.034786111534423', '119.19830203056335', '违规停车', '未在车辆存放地内', '2025-01-02 10:17:57', '2025-01-03 20:18:14', '15280129722');
INSERT INTO `area_car` VALUES ('上街00007', '26.03429446251101', '119.19581294059753', '违规停车', '未在车辆存放地内', '2025-01-02 10:28:46', '2025-01-05 17:23:56', '15280129722');
INSERT INTO `area_car` VALUES ('上街00014', '26.034357123775646', '119.19674634933472', '违规停车', '未在车辆存放地内', '2025-01-02 10:54:43', '2025-01-02 11:13:27', '15280129722');
INSERT INTO `area_car` VALUES ('222', '26.034593308241448', '119.19799625873566', '违规停车', '未在车辆存放地内', '2025-01-02 11:02:23', '2025-01-02 11:50:13', '15280129722');
INSERT INTO `area_car` VALUES ('2', '26.0354030799422', '119.1972827911377', '违规停车', '未在车辆存放地内', '2025-01-02 11:06:43', '2025-01-03 20:17:02', '15280129722');
INSERT INTO `area_car` VALUES ('3', '26.03439086444274', '119.19891357421875', '违规停车', '未在车辆存放地内', '2025-01-02 11:08:56', '2025-01-03 20:16:57', '15280129722');
INSERT INTO `area_car` VALUES ('4', '26.035157256981154', '119.1967248916626', '违规停车', '未在车辆存放地内', '2025-01-02 11:08:59', '2025-01-02 11:32:10', '15280129722');
INSERT INTO `area_car` VALUES ('7', '26.03465114926262', '119.19758319854736', '违规停车', '未在车辆存放地内', '2025-01-02 11:10:31', '2025-01-03 20:18:23', '15280129722');
INSERT INTO `area_car` VALUES ('8', '26.034925893723646', '119.19574320316315', '违规停车', '未在车辆存放地内', '2025-01-02 11:14:04', '2025-01-03 20:33:56', '15280129722');
INSERT INTO `area_car` VALUES ('00', '26.034819852078112', '119.19705748558044', '违规停车', '未在车辆存放地内', '2025-01-02 11:15:43', '2025-01-02 11:49:31', '15280129722');
INSERT INTO `area_car` VALUES ('666', '26.035113876405124', '119.19755637645721', '违规停车', '未在车辆存放地内', '2025-01-02 11:21:35', '2025-01-03 20:18:16', '15280129722');
INSERT INTO `area_car` VALUES ('77777', '26.034545107368697', '119.19714868068695', '正常停车', 'FGS01', '2025-01-02 11:29:20', '2025-01-02 11:30:41', '15280129722');
INSERT INTO `area_car` VALUES ('88', '26.03454992745685', '119.19707357883453', '正常停车', 'FGS01', '2025-01-02 11:30:36', '2025-01-02 11:30:44', '15280129722');
INSERT INTO `area_car` VALUES ('23', '26.034540287280315', '119.19714331626892', '正常停车', 'FGS01', '2025-01-02 11:34:25', '2025-01-02 11:34:27', '15280129722');
INSERT INTO `area_car` VALUES ('76', '26.034535467191755', '119.19701993465424', '正常停车', 'FGS01', '2025-01-02 11:36:30', '2025-01-02 11:37:21', '15280129722');
INSERT INTO `area_car` VALUES ('54', '26.03456920780753', '119.19724524021149', '正常停车', 'FGS01', '2025-01-02 11:36:35', '2025-01-02 11:37:47', '15280129722');
INSERT INTO `area_car` VALUES ('111111', '26.03452582701405', '119.19710576534271', '正常停车', 'FGS01', '2025-01-02 11:40:22', '2025-01-02 11:40:57', '15280129722');
INSERT INTO `area_car` VALUES ('5665', '26.034588488155052', '119.19709503650665', '正常停车', 'FGS01', '2025-01-02 11:49:10', '2025-01-02 11:49:14', '15280129722');
INSERT INTO `area_car` VALUES ('66666', '26.035070495813063', '119.19704675674438', '违规停车', '未在车辆存放地内', '2025-01-02 11:50:08', '2025-01-03 11:18:19', '15280129722');
INSERT INTO `area_car` VALUES ('5', '26.03456920780753', '119.19728815555573', '正常停车', 'FGS01', '2025-01-03 09:39:04', '2025-01-03 20:18:20', '15280129722');
INSERT INTO `area_car` VALUES ('55', '26.034598128327644', '119.19682681560516', '违规停车', '未在车辆存放地内', '2025-01-03 11:18:15', '2025-01-03 20:18:18', '15280129722');
INSERT INTO `area_car` VALUES ('5', '26.032067555834693', '119.19642448425293', '违规停车', '未在车辆存放地内', '2025-01-03 13:23:36', '2025-01-03 20:18:20', '15280129722');
INSERT INTO `area_car` VALUES ('上街30000', '26.034024536680707', '119.1965103149414', '违规停车', '未在车辆存放地内', '2025-01-03 13:23:51', '2025-01-05 17:38:37', '15280129722');
INSERT INTO `area_car` VALUES ('87', '26.036376726608637', '119.19609189033508', '违规停车', '未在车辆存放地内', '2025-01-03 13:24:02', '2025-01-05 17:48:34', '15280129722');
INSERT INTO `area_car` VALUES ('上街30000', '26.034636689009993', '119.19542670249939', '违规停车', '未在车辆存放地内', '2025-01-03 13:24:13', '2025-01-05 17:38:37', '15280129722');
INSERT INTO `area_car` VALUES ('1', '26.033099071975364', '119.1965639591217', '违规停车', '未在车辆存放地内', '2025-01-03 16:52:59', '2025-01-05 17:23:48', '15280129722');
INSERT INTO `area_car` VALUES ('上街20000', '26.034154679569294', '119.19881701469421', '正常停车', 'FGW02', '2025-01-03 20:17:22', '2025-01-03 20:18:09', '15280129722');
INSERT INTO `area_car` VALUES ('上街00097', '26.034087198089537', '119.19870972633362', '正常停车', 'FGW02', '2025-01-03 20:18:02', '2025-01-05 17:23:52', '15280129722');
INSERT INTO `area_car` VALUES ('1', '26.03505603561216', '119.19783532619476', '违规停车', '未在车辆存放地内', '2025-01-03 20:18:27', '2025-01-05 17:23:48', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.03462704884061', '119.1971755027771', '正常停车', 'FGS01', '2025-01-03 20:30:53', '2025-01-05 17:23:44', '15280129722');
INSERT INTO `area_car` VALUES ('5', '26.035383799728564', '119.1970145702362', '违规停车', '未在车辆存放地内', '2025-01-05 17:24:00', '2025-01-05 17:38:11', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.034328203196146', '119.19713795185089', '违规停车', '未在车辆存放地内', '2025-01-05 17:24:31', '2025-01-05 17:24:34', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.034631868925402', '119.19792115688324', '违规停车', '未在车辆存放地内', '2025-01-05 17:38:06', '2025-01-05 17:38:18', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.035475380715045', '119.1971218585968', '违规停车', '未在车辆存放地内', '2025-01-05 17:38:14', '2025-01-05 17:38:18', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.034149859464883', '119.19872045516968', '正常停车', 'FGW02', '2025-01-05 17:38:28', '2025-01-05 17:38:31', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.034680069762505', '119.19801235198975', '违规停车', '未在车辆存放地内', '2025-01-05 17:52:32', '2025-01-05 17:52:34', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.034612588585002', '119.19721305370331', '正常停车', 'FGS01', '2025-01-05 17:58:55', '2025-01-05 18:00:31', '15280129722');
INSERT INTO `area_car` VALUES ('上街30000', '26.034819852078112', '119.19792115688324', '违规停车', '未在车辆存放地内', '2025-01-05 17:59:31', '2025-01-05 17:59:58', '15280129722');
INSERT INTO `area_car` VALUES ('上街30000', '26.035104236274947', '119.19638156890869', '正常停车', 'FGW01', '2025-01-05 18:01:36', '2025-01-05 18:01:39', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.032294104549432', '119.19546961784363', '正常停车', 'FGW03', '2025-01-05 18:39:06', '2025-01-05 18:45:19', '15280129722');
INSERT INTO `area_car` VALUES ('上街40000', '26.03469935009181', '119.19801235198975', '违规停车', '未在车辆存放地内', '2025-01-05 18:39:30', '2025-01-05 18:45:19', '15280129722');
INSERT INTO `area_car` VALUES ('上街30000', '26.034843952460506', '119.19776558876038', '违规停车', '未在车辆存放地内', '2025-01-05 18:39:42', '2025-01-05 18:45:21', '15280129722');
INSERT INTO `area_car` VALUES ('上街20000', '26.034159499673503', '119.19880092144012', '正常停车', 'FGW02', '2025-01-05 18:41:15', '2025-01-05 18:45:23', '15280129722');
INSERT INTO `area_car` VALUES ('上街20000', '26.034583668068475', '119.19714331626892', '正常停车', 'FGS01', '2025-01-05 18:41:33', '2025-01-05 18:45:23', '15280129722');
INSERT INTO `area_car` VALUES ('上街30000', '26.034815032001028', '119.19786214828491', '违规停车', '未在车辆存放地内', '2025-01-05 18:46:27', null, '15280129722');
INSERT INTO `area_car` VALUES ('上街20000', '26.03232784580994', '119.19586658477783', '正常停车', 'FGW03', '2025-01-05 18:46:45', null, '15280129722');
INSERT INTO `area_car` VALUES ('1123', '26.034516186835532', '119.19448256492615', '正常停车', 'FGS02', '2025-01-05 18:57:35', null, '15280129722');

-- ----------------------------
-- Table structure for area_car2
-- ----------------------------
DROP TABLE IF EXISTS `area_car2`;
CREATE TABLE `area_car2` (
  `car_area_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cf_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `la` varchar(255) DEFAULT NULL,
  `lo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `zt` varchar(255) DEFAULT 'ok'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of area_car2
-- ----------------------------
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街10000', '2025-01-01 21:32:03', '26.0330315898883', '119.19590950012207', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街10001', '2025-01-01 21:36:00', '26.032723099853147', '119.19573783874512', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街10002', '2025-01-01 21:36:13', '26.034641509094406', '119.19752955436707', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街10003', '2025-01-01 21:36:18', '26.035364519511774', '119.19651567935944', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街10004', '2025-01-02 08:59:55', '26.033976335574224', '119.19857025146484', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街10000', '2025-01-02 10:17:39', '26.034458345747797', '119.19633865356445', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街00098', '2025-01-02 10:17:57', '26.034786111534423', '119.19830203056335', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街00007', '2025-01-02 10:28:46', '26.03429446251101', '119.19581294059753', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街00014', '2025-01-02 10:54:43', '26.034357123775646', '119.19674634933472', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '222', '2025-01-02 11:02:23', '26.034593308241448', '119.19799625873566', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '2', '2025-01-02 11:06:43', '26.0354030799422', '119.1972827911377', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '3', '2025-01-02 11:08:56', '26.03439086444274', '119.19891357421875', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '4', '2025-01-02 11:08:59', '26.035157256981154', '119.1967248916626', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '7', '2025-01-02 11:10:31', '26.03465114926262', '119.19758319854736', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '8', '2025-01-02 11:14:04', '26.034925893723646', '119.19574320316315', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '00', '2025-01-02 11:15:43', '26.034819852078112', '119.19705748558044', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '666', '2025-01-02 11:21:35', '26.035113876405124', '119.19755637645721', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '77777', '2025-01-02 11:29:20', '26.034545107368697', '119.19714868068695', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '88', '2025-01-02 11:30:36', '26.03454992745685', '119.19707357883453', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '23', '2025-01-02 11:34:25', '26.034540287280315', '119.19714331626892', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '76', '2025-01-02 11:36:30', '26.034535467191755', '119.19701993465424', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '54', '2025-01-02 11:36:35', '26.03456920780753', '119.19724524021149', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '111111', '2025-01-02 11:40:22', '26.03452582701405', '119.19710576534271', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '5665', '2025-01-02 11:49:10', '26.034588488155052', '119.19709503650665', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '66666', '2025-01-02 11:50:08', '26.035070495813063', '119.19704675674438', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '5', '2025-01-03 09:39:04', '26.03456920780753', '119.19728815555573', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '55', '2025-01-03 11:18:15', '26.034598128327644', '119.19682681560516', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '5', '2025-01-03 13:23:36', '26.032067555834693', '119.19642448425293', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街30000', '2025-01-03 13:23:51', '26.034024536680707', '119.1965103149414', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '87', '2025-01-03 13:24:02', '26.036376726608637', '119.19609189033508', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街30000', '2025-01-03 13:24:13', '26.034636689009993', '119.19542670249939', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '1', '2025-01-03 16:52:59', '26.033099071975364', '119.1965639591217', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGW02', '上街20000', '2025-01-03 20:17:22', '26.034154679569294', '119.19881701469421', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGW02', '上街00097', '2025-01-03 20:18:02', '26.034087198089537', '119.19870972633362', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '1', '2025-01-03 20:18:27', '26.03505603561216', '119.19783532619476', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '上街40000', '2025-01-03 20:30:53', '26.03462704884061', '119.1971755027771', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '5', '2025-01-05 17:24:00', '26.035383799728564', '119.1970145702362', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街40000', '2025-01-05 17:24:31', '26.034328203196146', '119.19713795185089', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街40000', '2025-01-05 17:38:06', '26.034631868925402', '119.19792115688324', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街40000', '2025-01-05 17:38:14', '26.035475380715045', '119.1971218585968', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGW02', '上街40000', '2025-01-05 17:38:28', '26.034149859464883', '119.19872045516968', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街40000', '2025-01-05 17:52:32', '26.034680069762505', '119.19801235198975', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '上街40000', '2025-01-05 17:58:55', '26.034612588585002', '119.19721305370331', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街30000', '2025-01-05 17:59:31', '26.034819852078112', '119.19792115688324', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGW01', '上街30000', '2025-01-05 18:01:36', '26.035104236274947', '119.19638156890869', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGW03', '上街40000', '2025-01-05 18:39:06', '26.032294104549432', '119.19546961784363', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街40000', '2025-01-05 18:39:30', '26.03469935009181', '119.19801235198975', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街30000', '2025-01-05 18:39:42', '26.034843952460506', '119.19776558876038', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGW02', '上街20000', '2025-01-05 18:41:15', '26.034159499673503', '119.19880092144012', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('FGS01', '上街20000', '2025-01-05 18:41:33', '26.034583668068475', '119.19714331626892', '15280129722', 'deleted');
INSERT INTO `area_car2` VALUES ('未在车辆存放地内', '上街30000', '2025-01-05 18:46:27', '26.034815032001028', '119.19786214828491', '15280129722', 'ok');
INSERT INTO `area_car2` VALUES ('FGW03', '上街20000', '2025-01-05 18:46:45', '26.03232784580994', '119.19586658477783', '15280129722', 'ok');
INSERT INTO `area_car2` VALUES ('FGS02', '1123', '2025-01-05 18:57:35', '26.034516186835532', '119.19448256492615', '15280129722', 'ok');

-- ----------------------------
-- Table structure for area_cdz
-- ----------------------------
DROP TABLE IF EXISTS `area_cdz`;
CREATE TABLE `area_cdz` (
  `car_area_id` char(5) NOT NULL,
  `cdz_id` char(5) NOT NULL,
  PRIMARY KEY (`car_area_id`,`cdz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of area_cdz
-- ----------------------------
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA076');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA077');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA078');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA079');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA080');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA081');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA082');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA083');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA084');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA085');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA086');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA087');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA088');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA089');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA090');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA091');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA092');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA093');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA094');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA095');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA096');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA097');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA098');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA099');
INSERT INTO `area_cdz` VALUES ('FGS01', 'CA100');
INSERT INTO `area_cdz` VALUES ('FGS02', 'CA102');
INSERT INTO `area_cdz` VALUES ('FGS02', 'CA103');
INSERT INTO `area_cdz` VALUES ('FGS02', 'CA106');
INSERT INTO `area_cdz` VALUES ('FGS03', 'CA101');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA001');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA002');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA003');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA004');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA005');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA006');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA007');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA008');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA009');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA010');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA011');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA012');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA013');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA014');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA015');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA016');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA017');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA018');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA019');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA020');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA021');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA022');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA023');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA024');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA025');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA026');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA027');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA028');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA029');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA030');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA031');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA032');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA033');
INSERT INTO `area_cdz` VALUES ('FGW01', 'CA034');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA035');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA036');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA037');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA038');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA039');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA040');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA041');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA042');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA043');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA044');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA045');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA046');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA047');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA048');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA049');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA050');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA051');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA052');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA053');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA054');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA055');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA056');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA057');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA058');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA059');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA060');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA061');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA062');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA063');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA064');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA065');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA066');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA067');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA068');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA069');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA070');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA071');
INSERT INTO `area_cdz` VALUES ('FGW02', 'CA072');
INSERT INTO `area_cdz` VALUES ('FGW03', 'CA104');
INSERT INTO `area_cdz` VALUES ('FGW03', 'CA105');

-- ----------------------------
-- Table structure for battery
-- ----------------------------
DROP TABLE IF EXISTS `battery`;
CREATE TABLE `battery` (
  `battery_id` char(5) NOT NULL,
  `battery_model` varchar(7) NOT NULL,
  `battery_pp` text NOT NULL,
  `battery_capacity` text NOT NULL,
  `battery_s` text NOT NULL,
  `safety` char(3) DEFAULT NULL,
  `battery_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_repair_battery` timestamp NULL DEFAULT NULL,
  `last_time` timestamp NULL DEFAULT NULL,
  `repair_frequency` int DEFAULT '0',
  PRIMARY KEY (`battery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of battery
-- ----------------------------
INSERT INTO `battery` VALUES ('BA001', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-24 00:00:00', null, '2025-01-03 17:12:56', '0');
INSERT INTO `battery` VALUES ('BA003', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA004', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA005', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-25 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA006', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-26 00:00:00', null, '2025-01-03 17:28:05', '0');
INSERT INTO `battery` VALUES ('BA007', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-27 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA008', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-28 00:00:00', null, '2024-12-31 21:49:29', '0');
INSERT INTO `battery` VALUES ('BA009', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-29 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA010', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-30 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA011', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-10-31 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA012', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-01 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA013', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-02 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA014', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-03 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA015', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-04 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA016', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-05 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA017', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-06 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA018', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-07 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA019', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-08 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA020', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-09 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA021', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-10 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA022', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-11 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA023', '48V12Ah', '天能电池', '12Ah', '50公里', '高', '2021-11-12 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA024', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-13 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA025', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-14 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA026', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-15 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA027', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-16 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA028', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-17 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA029', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-18 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA030', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-19 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA031', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-20 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA032', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-21 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA033', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-22 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA034', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-23 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA035', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA036', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-25 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA037', '48V12Ah', '超威电池', '12Ah', '50公里', '高', '2021-11-26 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA038', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-11-27 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA039', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-11-28 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA040', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-11-29 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA041', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-11-30 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA042', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-01 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA043', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-02 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA044', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-03 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA045', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-04 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA046', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-05 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA047', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-06 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA048', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-07 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA049', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-08 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA050', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-09 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA051', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-10 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA052', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-11 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA053', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-12 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA054', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-13 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA055', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-14 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA056', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-15 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA057', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-16 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA058', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-17 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA059', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-18 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA060', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-19 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA061', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-20 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA062', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-21 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA063', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-22 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA064', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-23 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA065', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA066', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-25 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA067', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-26 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA068', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-27 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA069', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-28 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA070', '60V20Ah', '超威电池', '20Ah', '70公里', '高', '2021-12-29 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA071', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA072', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA073', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA074', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA075', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA076', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA077', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA078', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA079', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA080', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA081', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA082', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA083', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA084', '60V20Ah', '星恒电池', '20Ah', '70公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA085', '72V20Ah', '星恒电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA086', '72V20Ah', '星恒电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA087', '72V20Ah', '星恒电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA088', '72V20Ah', '星恒电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA089', '72V20Ah', '星恒电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA090', '72V20Ah', '星恒电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA091', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA092', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA093', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA094', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA095', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA096', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA097', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA098', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA099', '72V20Ah', '海宝电池', '32Ah', '100公里', '高', '2021-10-24 00:00:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA100', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 16:34:47', null, null, '0');
INSERT INTO `battery` VALUES ('BA101', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 16:40:00', null, null, '0');
INSERT INTO `battery` VALUES ('BA102', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 16:52:05', null, null, '0');
INSERT INTO `battery` VALUES ('BA103', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 16:57:01', null, null, '0');
INSERT INTO `battery` VALUES ('BA104', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 17:03:36', null, null, '0');
INSERT INTO `battery` VALUES ('BA105', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 17:05:35', null, null, '0');
INSERT INTO `battery` VALUES ('BA106', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 17:07:13', null, null, '0');
INSERT INTO `battery` VALUES ('BA107', '72V20Ah', '海宝电池', '32Ah', '100公里', '中', '2025-01-04 17:19:23', null, null, '0');

-- ----------------------------
-- Table structure for battery_cupboard
-- ----------------------------
DROP TABLE IF EXISTS `battery_cupboard`;
CREATE TABLE `battery_cupboard` (
  `cupboard_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `battery_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of battery_cupboard
-- ----------------------------
INSERT INTO `battery_cupboard` VALUES ('DA005', 'BA005');
INSERT INTO `battery_cupboard` VALUES ('DA007', 'BA007');
INSERT INTO `battery_cupboard` VALUES ('DA009', 'BA009');
INSERT INTO `battery_cupboard` VALUES ('DA010', 'BA010');
INSERT INTO `battery_cupboard` VALUES ('DA011', 'BA011');
INSERT INTO `battery_cupboard` VALUES ('DA012', 'BA012');
INSERT INTO `battery_cupboard` VALUES ('DA013', 'BA013');
INSERT INTO `battery_cupboard` VALUES ('DA014', 'BA014');
INSERT INTO `battery_cupboard` VALUES ('DA015', 'BA015');
INSERT INTO `battery_cupboard` VALUES ('DA016', 'BA016');
INSERT INTO `battery_cupboard` VALUES ('DA017', 'BA017');
INSERT INTO `battery_cupboard` VALUES ('DA018', 'BA018');
INSERT INTO `battery_cupboard` VALUES ('DA019', 'BA019');
INSERT INTO `battery_cupboard` VALUES ('DA020', 'BA020');
INSERT INTO `battery_cupboard` VALUES ('DA021', 'BA021');
INSERT INTO `battery_cupboard` VALUES ('DA022', 'BA022');
INSERT INTO `battery_cupboard` VALUES ('DA023', 'BA023');
INSERT INTO `battery_cupboard` VALUES ('DA024', 'BA024');
INSERT INTO `battery_cupboard` VALUES ('DA025', 'BA025');
INSERT INTO `battery_cupboard` VALUES ('DA026', 'BA026');
INSERT INTO `battery_cupboard` VALUES ('DA027', 'BA027');
INSERT INTO `battery_cupboard` VALUES ('DA028', 'BA028');
INSERT INTO `battery_cupboard` VALUES ('DA029', 'BA029');
INSERT INTO `battery_cupboard` VALUES ('DA030', 'BA030');
INSERT INTO `battery_cupboard` VALUES ('DA031', 'BA031');
INSERT INTO `battery_cupboard` VALUES ('DA032', 'BA032');
INSERT INTO `battery_cupboard` VALUES ('DA033', 'BA033');
INSERT INTO `battery_cupboard` VALUES ('DA034', 'BA034');
INSERT INTO `battery_cupboard` VALUES ('DA035', 'BA035');
INSERT INTO `battery_cupboard` VALUES ('DA036', 'BA036');
INSERT INTO `battery_cupboard` VALUES ('DA037', 'BA037');
INSERT INTO `battery_cupboard` VALUES ('DA038', 'BA038');
INSERT INTO `battery_cupboard` VALUES ('DA039', 'BA039');
INSERT INTO `battery_cupboard` VALUES ('DA040', 'BA040');
INSERT INTO `battery_cupboard` VALUES ('DA041', 'BA041');
INSERT INTO `battery_cupboard` VALUES ('DA042', 'BA042');
INSERT INTO `battery_cupboard` VALUES ('DA043', 'BA043');
INSERT INTO `battery_cupboard` VALUES ('DA044', 'BA044');
INSERT INTO `battery_cupboard` VALUES ('DA045', 'BA045');
INSERT INTO `battery_cupboard` VALUES ('DA046', 'BA046');
INSERT INTO `battery_cupboard` VALUES ('DA047', 'BA047');
INSERT INTO `battery_cupboard` VALUES ('DA048', 'BA048');
INSERT INTO `battery_cupboard` VALUES ('DA049', 'BA049');
INSERT INTO `battery_cupboard` VALUES ('DA050', 'BA050');
INSERT INTO `battery_cupboard` VALUES ('DA051', 'BA051');
INSERT INTO `battery_cupboard` VALUES ('DA052', 'BA052');
INSERT INTO `battery_cupboard` VALUES ('DA053', 'BA053');
INSERT INTO `battery_cupboard` VALUES ('DA054', 'BA054');
INSERT INTO `battery_cupboard` VALUES ('DA055', 'BA055');
INSERT INTO `battery_cupboard` VALUES ('DA056', 'BA056');
INSERT INTO `battery_cupboard` VALUES ('DA057', 'BA057');
INSERT INTO `battery_cupboard` VALUES ('DA058', 'BA058');
INSERT INTO `battery_cupboard` VALUES ('DA059', 'BA059');
INSERT INTO `battery_cupboard` VALUES ('DA060', 'BA060');
INSERT INTO `battery_cupboard` VALUES ('DA061', 'BA061');
INSERT INTO `battery_cupboard` VALUES ('DA062', 'BA062');
INSERT INTO `battery_cupboard` VALUES ('DA063', 'BA063');
INSERT INTO `battery_cupboard` VALUES ('DA064', 'BA064');
INSERT INTO `battery_cupboard` VALUES ('DA065', 'BA065');
INSERT INTO `battery_cupboard` VALUES ('DA066', 'BA066');
INSERT INTO `battery_cupboard` VALUES ('DA067', 'BA067');
INSERT INTO `battery_cupboard` VALUES ('DA068', 'BA068');
INSERT INTO `battery_cupboard` VALUES ('DA069', 'BA069');
INSERT INTO `battery_cupboard` VALUES ('DA070', 'BA070');
INSERT INTO `battery_cupboard` VALUES ('DA071', 'BA071');
INSERT INTO `battery_cupboard` VALUES ('DA072', 'BA072');
INSERT INTO `battery_cupboard` VALUES ('DA073', 'BA073');
INSERT INTO `battery_cupboard` VALUES ('DA074', 'BA074');
INSERT INTO `battery_cupboard` VALUES ('DA075', 'BA075');
INSERT INTO `battery_cupboard` VALUES ('DA076', 'BA076');
INSERT INTO `battery_cupboard` VALUES ('DA077', 'BA077');
INSERT INTO `battery_cupboard` VALUES ('DA078', 'BA078');
INSERT INTO `battery_cupboard` VALUES ('DA079', 'BA079');
INSERT INTO `battery_cupboard` VALUES ('DA080', 'BA080');
INSERT INTO `battery_cupboard` VALUES ('DA081', 'BA081');
INSERT INTO `battery_cupboard` VALUES ('DA082', 'BA082');
INSERT INTO `battery_cupboard` VALUES ('DA083', 'BA083');
INSERT INTO `battery_cupboard` VALUES ('DA084', 'BA084');
INSERT INTO `battery_cupboard` VALUES ('DA085', 'BA085');
INSERT INTO `battery_cupboard` VALUES ('DA086', 'BA086');
INSERT INTO `battery_cupboard` VALUES ('DA087', 'BA087');
INSERT INTO `battery_cupboard` VALUES ('DA088', 'BA088');
INSERT INTO `battery_cupboard` VALUES ('DA089', 'BA089');
INSERT INTO `battery_cupboard` VALUES ('DA090', 'BA090');
INSERT INTO `battery_cupboard` VALUES ('DA091', 'BA091');
INSERT INTO `battery_cupboard` VALUES ('DA092', 'BA092');
INSERT INTO `battery_cupboard` VALUES ('DA093', 'BA093');
INSERT INTO `battery_cupboard` VALUES ('DA094', 'BA094');
INSERT INTO `battery_cupboard` VALUES ('DA095', 'BA095');
INSERT INTO `battery_cupboard` VALUES ('DA096', 'BA096');
INSERT INTO `battery_cupboard` VALUES ('DA097', 'BA097');
INSERT INTO `battery_cupboard` VALUES ('DA098', 'BA098');
INSERT INTO `battery_cupboard` VALUES ('DA099', 'BA099');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA008');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA001');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA006');
INSERT INTO `battery_cupboard` VALUES ('DA002', 'BA006');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA100');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA101');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA102');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA103');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA104');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA105');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA106');
INSERT INTO `battery_cupboard` VALUES ('DA004', 'BA107');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `cph` char(11) NOT NULL,
  `pp` text NOT NULL,
  `cjh` text NOT NULL,
  `cx` char(9) NOT NULL,
  `zzl` text NOT NULL,
  `czrs` text NOT NULL,
  `xh` varchar(8) NOT NULL,
  `changes` text NOT NULL,
  `change_time` timestamp NULL DEFAULT NULL,
  `car_gistration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `begin_id` text NOT NULL,
  `baofei` varchar(10) NOT NULL DEFAULT '否',
  PRIMARY KEY (`cph`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1123', '奥迪', '150*60*140cm', '小型48V', '75kg', '2', '48V12Ah', '是', '2025-01-14 00:00:00', '2025-01-03 16:15:04', 'BA007', '否');
INSERT INTO `car` VALUES ('上街00001', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-24 00:00:00', 'AA001', '是');
INSERT INTO `car` VALUES ('上街00002', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-24 00:00:00', 'AA002', '否');
INSERT INTO `car` VALUES ('上街00003', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-24 00:00:00', 'AA003', '否');
INSERT INTO `car` VALUES ('上街00004', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-24 00:00:00', 'AA004', '否');
INSERT INTO `car` VALUES ('上街00005', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-25 00:00:00', 'AA005', '否');
INSERT INTO `car` VALUES ('上街00006', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-26 00:00:00', 'AA006', '否');
INSERT INTO `car` VALUES ('上街00007', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-27 00:00:00', 'AA007', '否');
INSERT INTO `car` VALUES ('上街00008', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-28 00:00:00', 'AA008', '否');
INSERT INTO `car` VALUES ('上街00009', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-29 00:00:00', 'AA009', '否');
INSERT INTO `car` VALUES ('上街00010', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-30 00:00:00', 'AA010', '否');
INSERT INTO `car` VALUES ('上街00011', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-10-31 00:00:00', 'AA011', '否');
INSERT INTO `car` VALUES ('上街00012', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-01 00:00:00', 'AA012', '否');
INSERT INTO `car` VALUES ('上街00013', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-02 00:00:00', 'AA013', '否');
INSERT INTO `car` VALUES ('上街00014', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-03 00:00:00', 'AA014', '否');
INSERT INTO `car` VALUES ('上街00015', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-04 00:00:00', 'AA015', '否');
INSERT INTO `car` VALUES ('上街00016', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-05 00:00:00', 'AA016', '否');
INSERT INTO `car` VALUES ('上街00017', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-06 00:00:00', 'AA017', '否');
INSERT INTO `car` VALUES ('上街00018', '雅迪', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-07 00:00:00', 'AA018', '否');
INSERT INTO `car` VALUES ('上街00019', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-08 00:00:00', 'AA019', '否');
INSERT INTO `car` VALUES ('上街00020', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-09 00:00:00', 'AA020', '否');
INSERT INTO `car` VALUES ('上街00021', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-10 00:00:00', 'AA021', '否');
INSERT INTO `car` VALUES ('上街00022', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-11 00:00:00', 'AA022', '否');
INSERT INTO `car` VALUES ('上街00023', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-12 00:00:00', 'AA023', '否');
INSERT INTO `car` VALUES ('上街00024', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-13 00:00:00', 'AA024', '否');
INSERT INTO `car` VALUES ('上街00025', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-14 00:00:00', 'AA025', '否');
INSERT INTO `car` VALUES ('上街00026', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-15 00:00:00', 'AA026', '否');
INSERT INTO `car` VALUES ('上街00027', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-16 00:00:00', 'AA027', '否');
INSERT INTO `car` VALUES ('上街00028', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-17 00:00:00', 'AA028', '否');
INSERT INTO `car` VALUES ('上街00029', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-18 00:00:00', 'AA029', '否');
INSERT INTO `car` VALUES ('上街00030', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-19 00:00:00', 'AA030', '否');
INSERT INTO `car` VALUES ('上街00031', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-20 00:00:00', 'AA031', '否');
INSERT INTO `car` VALUES ('上街00032', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-21 00:00:00', 'AA032', '否');
INSERT INTO `car` VALUES ('上街00033', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-22 00:00:00', 'AA033', '否');
INSERT INTO `car` VALUES ('上街00034', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-23 00:00:00', 'AA034', '否');
INSERT INTO `car` VALUES ('上街00035', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-24 00:00:00', 'AA035', '否');
INSERT INTO `car` VALUES ('上街00036', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-25 00:00:00', 'AA036', '否');
INSERT INTO `car` VALUES ('上街00037', '爱玛', '150*60*140cm', '小型48V', '75kg', '乘载一人', '48V12Ah', '否', null, '2021-11-26 00:00:00', 'AA037', '否');
INSERT INTO `car` VALUES ('上街00038', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-11-27 00:00:00', 'AA038', '否');
INSERT INTO `car` VALUES ('上街00039', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-11-28 00:00:00', 'AA039', '否');
INSERT INTO `car` VALUES ('上街00040', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-11-29 00:00:00', 'AA040', '否');
INSERT INTO `car` VALUES ('上街00041', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-11-30 00:00:00', 'AA041', '否');
INSERT INTO `car` VALUES ('上街00042', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-01 00:00:00', 'AA042', '否');
INSERT INTO `car` VALUES ('上街00043', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-02 00:00:00', 'AA043', '否');
INSERT INTO `car` VALUES ('上街00044', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-03 00:00:00', 'AA044', '否');
INSERT INTO `car` VALUES ('上街00045', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-04 00:00:00', 'AA045', '否');
INSERT INTO `car` VALUES ('上街00046', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-05 00:00:00', 'AA046', '否');
INSERT INTO `car` VALUES ('上街00047', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-06 00:00:00', 'AA047', '否');
INSERT INTO `car` VALUES ('上街00048', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-07 00:00:00', 'AA048', '否');
INSERT INTO `car` VALUES ('上街00049', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-08 00:00:00', 'AA049', '否');
INSERT INTO `car` VALUES ('上街00050', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-09 00:00:00', 'AA050', '否');
INSERT INTO `car` VALUES ('上街00051', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-10 00:00:00', 'AA051', '否');
INSERT INTO `car` VALUES ('上街00052', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-11 00:00:00', 'AA052', '否');
INSERT INTO `car` VALUES ('上街00053', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-12 00:00:00', 'AA053', '否');
INSERT INTO `car` VALUES ('上街00054', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-13 00:00:00', 'AA054', '否');
INSERT INTO `car` VALUES ('上街00055', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-14 00:00:00', 'AA055', '否');
INSERT INTO `car` VALUES ('上街00056', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-15 00:00:00', 'AA056', '否');
INSERT INTO `car` VALUES ('上街00057', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-16 00:00:00', 'AA057', '否');
INSERT INTO `car` VALUES ('上街00058', '爱玛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-17 00:00:00', 'AA058', '否');
INSERT INTO `car` VALUES ('上街00059', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-18 00:00:00', 'AA059', '否');
INSERT INTO `car` VALUES ('上街00060', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-19 00:00:00', 'AA060', '否');
INSERT INTO `car` VALUES ('上街00061', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-20 00:00:00', 'AA061', '否');
INSERT INTO `car` VALUES ('上街00062', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-21 00:00:00', 'AA062', '否');
INSERT INTO `car` VALUES ('上街00063', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-22 00:00:00', 'AA063', '否');
INSERT INTO `car` VALUES ('上街00064', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-23 00:00:00', 'AA064', '否');
INSERT INTO `car` VALUES ('上街00065', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-24 00:00:00', 'AA065', '否');
INSERT INTO `car` VALUES ('上街00066', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-25 00:00:00', 'AA066', '否');
INSERT INTO `car` VALUES ('上街00067', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-26 00:00:00', 'AA067', '否');
INSERT INTO `car` VALUES ('上街00068', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-27 00:00:00', 'AA068', '否');
INSERT INTO `car` VALUES ('上街00069', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-28 00:00:00', 'AA069', '否');
INSERT INTO `car` VALUES ('上街00070', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-12-29 00:00:00', 'AA070', '否');
INSERT INTO `car` VALUES ('上街00071', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA071', '否');
INSERT INTO `car` VALUES ('上街00072', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA072', '否');
INSERT INTO `car` VALUES ('上街00073', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA073', '否');
INSERT INTO `car` VALUES ('上街00074', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA074', '否');
INSERT INTO `car` VALUES ('上街00075', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA075', '否');
INSERT INTO `car` VALUES ('上街00076', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA076', '否');
INSERT INTO `car` VALUES ('上街00077', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA077', '否');
INSERT INTO `car` VALUES ('上街00078', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA078', '否');
INSERT INTO `car` VALUES ('上街00079', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA079', '否');
INSERT INTO `car` VALUES ('上街00080', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA080', '否');
INSERT INTO `car` VALUES ('上街00081', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA081', '否');
INSERT INTO `car` VALUES ('上街00082', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA082', '否');
INSERT INTO `car` VALUES ('上街00083', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA083', '否');
INSERT INTO `car` VALUES ('上街00084', '小牛', '200*70*150cm', '中型60V', '150kg', '乘载两人', '60V20Ah', '否', null, '2021-10-24 00:00:00', 'AA084', '否');
INSERT INTO `car` VALUES ('上街00085', '小牛', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-22 00:00:00', '2021-10-24 00:00:00', 'AA085', '否');
INSERT INTO `car` VALUES ('上街00086', '小牛', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-23 00:00:00', '2021-10-24 00:00:00', 'AA086', '否');
INSERT INTO `car` VALUES ('上街00087', '小牛', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-24 00:00:00', '2021-10-24 00:00:00', 'AA087', '否');
INSERT INTO `car` VALUES ('上街00088', '小牛', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-25 00:00:00', '2021-10-24 00:00:00', 'AA088', '否');
INSERT INTO `car` VALUES ('上街00089', '小牛', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-26 00:00:00', '2021-10-24 00:00:00', 'AA089', '否');
INSERT INTO `car` VALUES ('上街00090', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-27 00:00:00', '2021-10-24 00:00:00', 'AA090', '否');
INSERT INTO `car` VALUES ('上街00091', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-28 00:00:00', '2021-10-24 00:00:00', 'AA091', '否');
INSERT INTO `car` VALUES ('上街00092', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-29 00:00:00', '2021-10-24 00:00:00', 'AA092', '否');
INSERT INTO `car` VALUES ('上街00093', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-30 00:00:00', '2021-10-24 00:00:00', 'AA093', '否');
INSERT INTO `car` VALUES ('上街00094', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-10-31 00:00:00', '2021-10-24 00:00:00', 'AA094', '否');
INSERT INTO `car` VALUES ('上街00095', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-11-01 00:00:00', '2021-10-24 00:00:00', 'AA095', '否');
INSERT INTO `car` VALUES ('上街00096', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-11-02 00:00:00', '2021-10-24 00:00:00', 'AA096', '否');
INSERT INTO `car` VALUES ('上街00097', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-11-03 00:00:00', '2021-10-24 00:00:00', 'AA097', '否');
INSERT INTO `car` VALUES ('上街00098', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-11-04 00:00:00', '2021-10-24 00:00:00', 'AA098', '否');
INSERT INTO `car` VALUES ('上街00099', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-11-05 00:00:00', '2021-10-24 00:00:00', 'AA099', '否');
INSERT INTO `car` VALUES ('上街00100', '台铃', '250*100*170cm', '大型72V', '200kg', '乘载三人', '72V20Ah', '是', '2022-11-06 00:00:00', '2021-10-24 00:00:00', 'AA100', '否');
INSERT INTO `car` VALUES ('上街10000', '奥迪', '150*60*140cm', '小型48V', '75kg', '2', '48V12Ah', '是', '2024-12-20 00:00:00', '2024-12-30 21:08:54', 'AA100', '是');
INSERT INTO `car` VALUES ('上街20000', '奥迪', '150*60*140cm', '小型48V', '75kg', '2', '48V12Ah', '是', '2025-01-09 00:00:00', '2025-01-03 11:29:29', '20000', '否');
INSERT INTO `car` VALUES ('上街30000', '奥迪', '150*60*140cm', '小型48V', '75kg', '2', '48V12Ah', '是', '2025-01-24 00:00:00', '2025-01-03 11:29:59', '30000', '否');
INSERT INTO `car` VALUES ('上街40000', '奥迪', '150*60*140cm', '小型48V', '75kg', '2', '48V12Ah', '否', null, '2025-01-03 20:29:51', 'CC000', '否');

-- ----------------------------
-- Table structure for car_area
-- ----------------------------
DROP TABLE IF EXISTS `car_area`;
CREATE TABLE `car_area` (
  `car_area_id` char(5) NOT NULL,
  `car_area_name` char(14) NOT NULL,
  `begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `audit` text NOT NULL,
  `certificate` char(6) NOT NULL,
  `remain` int NOT NULL,
  `range_sw_lon` varchar(255) NOT NULL,
  `range_sw_lat` varchar(255) NOT NULL,
  `range_ne_lon` varchar(255) NOT NULL,
  `range_ne_lat` varchar(255) NOT NULL,
  `syzt` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`car_area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of car_area
-- ----------------------------
INSERT INTO `car_area` VALUES ('FGS01', '福工南区01', '2020-10-22 00:00:00', '刘备', '123458', '62', '119.196966', '26.034511', '119.197385', '26.034699', '启用');
INSERT INTO `car_area` VALUES ('FGS02', '福工南区02', '2025-01-05 18:52:32', '孙七', '222222', '49', '119.194225', '26.034333', '119.194772', '26.034666', '启用');
INSERT INTO `car_area` VALUES ('FGW01', '福工北区01', '2020-10-22 00:00:00', '张居正', '123456', '60', '119.196242', '26.035061', '119.196607', '26.035172', '启用');
INSERT INTO `car_area` VALUES ('FGW02', '福工北区02', '2020-10-22 00:00:00', '陈戴玮', '123457', '64', '119.198592', '26.034053', '119.199005', '26.034256', '启用');
INSERT INTO `car_area` VALUES ('FGW03', '福工北区03', '2025-01-05 18:15:47', '陈戴玮', '111111', '48', '119.195062', '26.031778', '119.196467', '26.032704', '启用');

-- ----------------------------
-- Table structure for car_battery1
-- ----------------------------
DROP TABLE IF EXISTS `car_battery1`;
CREATE TABLE `car_battery1` (
  `cph` char(11) NOT NULL,
  `battery_id` char(5) NOT NULL,
  `carry_begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cph`,`battery_id`,`carry_begin_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of car_battery1
-- ----------------------------
INSERT INTO `car_battery1` VALUES ('上街10000', 'BA003', '2024-12-31 17:29:46');

-- ----------------------------
-- Table structure for car_battery2
-- ----------------------------
DROP TABLE IF EXISTS `car_battery2`;
CREATE TABLE `car_battery2` (
  `cph` char(11) NOT NULL,
  `battery_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `change_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `back_time` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cph`,`change_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of car_battery2
-- ----------------------------
INSERT INTO `car_battery2` VALUES ('上街10000', 'BA008', '2024-12-31 17:28:21', '2024-12-31 21:49:29', '15280129722');
INSERT INTO `car_battery2` VALUES ('上街10000', 'BA006', '2024-12-31 17:29:33', '2025-01-03 17:28:05', '15280129722');
INSERT INTO `car_battery2` VALUES ('上街10000', 'BA003', '2024-12-31 17:29:46', null, '15280129722');
INSERT INTO `car_battery2` VALUES ('上街10000', 'BA001', '2024-12-31 18:59:44', '2024-12-31 20:32:05', '15280129722');
INSERT INTO `car_battery2` VALUES ('上街10000', 'BA001', '2024-12-31 21:41:26', '2025-01-04 17:17:34', '15280129722');
INSERT INTO `car_battery2` VALUES ('上街10000', 'BA004', '2025-01-03 17:09:21', '2025-01-22 17:22:32', '15280129722');

-- ----------------------------
-- Table structure for car_cdz
-- ----------------------------
DROP TABLE IF EXISTS `car_cdz`;
CREATE TABLE `car_cdz` (
  `cdz_id` char(5) NOT NULL,
  `cph` char(11) NOT NULL,
  `begin_cd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_cd_time` timestamp NULL DEFAULT NULL,
  `cd_times` float DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cdz_id`,`cph`,`begin_cd_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of car_cdz
-- ----------------------------
INSERT INTO `car_cdz` VALUES ('CA001', '上街02200', '2025-01-02 21:14:36', '2025-01-02 21:15:29', '0', '15280129722');
INSERT INTO `car_cdz` VALUES ('CA003', '上街10000', '2025-01-02 19:30:32', '2025-01-02 19:30:51', '0', '15280129722');
INSERT INTO `car_cdz` VALUES ('CA036', '上街10000', '2025-01-02 16:20:58', '2025-01-02 19:09:47', '168', '15280129722');
INSERT INTO `car_cdz` VALUES ('CA036', '上街20000', '2025-01-03 13:28:59', '2025-01-05 17:04:52', '3095', '15280129722');
INSERT INTO `car_cdz` VALUES ('CA073', '上街10000', '2025-01-02 16:15:47', '2025-01-02 19:12:38', '176', '15280129722');
INSERT INTO `car_cdz` VALUES ('CA073', '上街10200', '2025-01-02 19:19:45', '2025-01-02 19:22:42', '2', '15280129722');

-- ----------------------------
-- Table structure for car_people
-- ----------------------------
DROP TABLE IF EXISTS `car_people`;
CREATE TABLE `car_people` (
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `begin_have_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of car_people
-- ----------------------------
INSERT INTO `car_people` VALUES ('15280129746', '上街00002', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129747', '上街00003', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129748', '上街00004', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129749', '上街00005', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129750', '上街00006', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129751', '上街00007', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129752', '上街00008', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129753', '上街00009', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129754', '上街00010', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129755', '上街00011', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129756', '上街00012', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129757', '上街00013', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129758', '上街00014', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129759', '上街00015', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129760', '上街00016', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129761', '上街00017', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129762', '上街00018', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129763', '上街00019', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129764', '上街00020', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129765', '上街00021', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129766', '上街00022', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129767', '上街00023', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129768', '上街00024', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129769', '上街00025', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129770', '上街00026', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129771', '上街00027', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129772', '上街00028', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129773', '上街00029', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129774', '上街00030', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129775', '上街00031', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129776', '上街00032', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129777', '上街00033', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129778', '上街00034', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129779', '上街00035', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129780', '上街00036', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129781', '上街00037', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129782', '上街00038', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129783', '上街00039', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129784', '上街00040', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129785', '上街00041', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129786', '上街00042', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129787', '上街00043', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129788', '上街00044', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129789', '上街00045', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129790', '上街00046', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129791', '上街00047', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129792', '上街00048', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129793', '上街00049', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129794', '上街00050', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129795', '上街00051', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129796', '上街00052', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129797', '上街00053', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129798', '上街00054', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129799', '上街00055', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129800', '上街00056', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129801', '上街00057', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129802', '上街00058', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129803', '上街00059', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129804', '上街00060', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129805', '上街00061', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129806', '上街00062', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129807', '上街00063', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129808', '上街00064', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129809', '上街00065', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129810', '上街00066', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129811', '上街00067', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129812', '上街00068', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129813', '上街00069', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129814', '上街00070', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129815', '上街00071', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129816', '上街00072', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129817', '上街00073', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129818', '上街00074', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129819', '上街00075', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129820', '上街00076', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129821', '上街00077', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129822', '上街00078', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129823', '上街00079', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129824', '上街00080', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129825', '上街00081', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129826', '上街00082', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129827', '上街00083', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129828', '上街00084', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129829', '上街00085', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129830', '上街00086', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129831', '上街00087', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129832', '上街00088', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129833', '上街00089', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129834', '上街00090', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129835', '上街00091', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129836', '上街00092', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129837', '上街00093', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129838', '上街00094', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129839', '上街00095', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129840', '上街00096', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129841', '上街00097', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129842', '上街00098', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129843', '上街00099', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129844', '上街00100', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129728', '上街00001', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129746', '上街00002', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129747', '上街00003', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129748', '上街00004', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129749', '上街00005', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129750', '上街00006', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129751', '上街00007', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129752', '上街00008', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129753', '上街00009', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129754', '上街00010', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129755', '上街00011', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129756', '上街00012', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129757', '上街00013', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129758', '上街00014', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129759', '上街00015', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129760', '上街00016', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129761', '上街00017', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129762', '上街00018', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129763', '上街00019', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129764', '上街00020', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129765', '上街00021', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129766', '上街00022', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129767', '上街00023', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129768', '上街00024', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129769', '上街00025', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129770', '上街00026', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129771', '上街00027', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129772', '上街00028', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129773', '上街00029', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129774', '上街00030', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129775', '上街00031', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129776', '上街00032', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129777', '上街00033', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129778', '上街00034', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129779', '上街00035', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129780', '上街00036', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129781', '上街00037', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129782', '上街00038', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129783', '上街00039', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129784', '上街00040', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129785', '上街00041', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129786', '上街00042', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129787', '上街00043', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129788', '上街00044', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129789', '上街00045', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129790', '上街00046', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129791', '上街00047', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129792', '上街00048', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129793', '上街00049', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129794', '上街00050', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129795', '上街00051', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129796', '上街00052', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129797', '上街00053', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129798', '上街00054', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129799', '上街00055', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129800', '上街00056', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129801', '上街00057', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129802', '上街00058', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129803', '上街00059', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129804', '上街00060', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129805', '上街00061', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129806', '上街00062', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129807', '上街00063', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129808', '上街00064', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129809', '上街00065', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129810', '上街00066', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129811', '上街00067', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129812', '上街00068', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129813', '上街00069', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129814', '上街00070', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129815', '上街00071', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129816', '上街00072', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129817', '上街00073', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129818', '上街00074', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129819', '上街00075', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129820', '上街00076', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129821', '上街00077', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129822', '上街00078', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129823', '上街00079', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129824', '上街00080', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129825', '上街00081', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129826', '上街00082', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129827', '上街00083', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129828', '上街00084', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129829', '上街00085', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129830', '上街00086', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129831', '上街00087', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129832', '上街00088', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129833', '上街00089', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129834', '上街00090', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129835', '上街00091', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129836', '上街00092', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129837', '上街00093', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129838', '上街00094', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129839', '上街00095', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129840', '上街00096', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129841', '上街00097', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129842', '上街00098', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129843', '上街00099', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('15280129844', '上街00100', '2022-01-01 00:00:00');
INSERT INTO `car_people` VALUES ('13055534441', '上街00000', '2024-12-30 19:50:35');
INSERT INTO `car_people` VALUES ('15280129722', '上街10000', '2024-12-30 21:08:54');
INSERT INTO `car_people` VALUES ('15280129722', '上街20000', '2025-01-03 11:29:29');
INSERT INTO `car_people` VALUES ('15280129722', '上街30000', '2025-01-03 11:29:59');
INSERT INTO `car_people` VALUES ('15280129722', '1123', '2025-01-03 16:15:04');
INSERT INTO `car_people` VALUES ('15280129722', '上街40000', '2025-01-03 20:29:51');

-- ----------------------------
-- Table structure for cdz
-- ----------------------------
DROP TABLE IF EXISTS `cdz`;
CREATE TABLE `cdz` (
  `cdz_id` char(5) NOT NULL,
  `rate` text NOT NULL,
  `last_repair_pile` timestamp NULL DEFAULT NULL,
  `pile_repair_frequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pile_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '空闲',
  PRIMARY KEY (`cdz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cdz
-- ----------------------------
INSERT INTO `cdz` VALUES ('CA001', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA002', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA003', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA004', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA005', '30度/时', null, '0', '2021-10-25 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA006', '30度/时', null, '0', '2021-10-26 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA007', '30度/时', null, '0', '2021-10-27 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA008', '30度/时', null, '0', '2021-10-28 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA009', '30度/时', null, '0', '2021-10-29 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA010', '30度/时', null, '0', '2021-10-30 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA011', '30度/时', null, '0', '2021-10-31 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA012', '30度/时', null, '0', '2021-11-01 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA013', '30度/时', null, '0', '2021-11-02 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA014', '30度/时', null, '0', '2021-11-03 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA015', '30度/时', null, '0', '2021-11-04 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA016', '30度/时', null, '0', '2021-11-05 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA017', '30度/时', null, '0', '2021-11-06 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA018', '30度/时', null, '0', '2021-11-07 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA019', '30度/时', null, '0', '2021-11-08 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA020', '30度/时', null, '0', '2021-11-09 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA021', '30度/时', null, '0', '2021-11-10 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA022', '30度/时', null, '0', '2021-11-11 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA023', '30度/时', null, '0', '2021-11-12 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA024', '30度/时', null, '0', '2021-11-13 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA025', '30度/时', null, '0', '2021-11-14 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA026', '30度/时', null, '0', '2021-11-15 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA027', '30度/时', null, '0', '2021-11-16 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA028', '30度/时', null, '0', '2021-11-17 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA029', '30度/时', null, '0', '2021-11-18 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA030', '30度/时', null, '0', '2021-11-19 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA031', '30度/时', null, '0', '2021-11-20 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA032', '30度/时', null, '0', '2021-11-21 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA033', '30度/时', null, '0', '2021-11-22 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA034', '30度/时', null, '0', '2021-11-23 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA035', '30度/时', null, '0', '2021-11-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA036', '30度/时', null, '0', '2021-11-25 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA037', '30度/时', null, '0', '2021-11-26 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA038', '30度/时', null, '0', '2021-11-27 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA039', '30度/时', null, '0', '2021-11-28 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA040', '30度/时', null, '0', '2021-11-29 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA041', '30度/时', null, '0', '2021-11-30 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA042', '30度/时', null, '0', '2021-12-01 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA043', '30度/时', null, '0', '2021-12-02 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA044', '30度/时', null, '0', '2021-12-03 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA045', '30度/时', null, '0', '2021-12-04 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA046', '30度/时', null, '0', '2021-12-05 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA047', '30度/时', null, '0', '2021-12-06 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA048', '30度/时', null, '0', '2021-12-07 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA049', '30度/时', null, '0', '2021-12-08 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA050', '30度/时', null, '0', '2021-12-09 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA051', '30度/时', null, '0', '2021-12-10 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA052', '30度/时', null, '0', '2021-12-11 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA053', '30度/时', null, '0', '2021-12-12 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA054', '30度/时', null, '0', '2021-12-13 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA055', '30度/时', null, '0', '2021-12-14 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA056', '30度/时', null, '0', '2021-12-15 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA057', '30度/时', null, '0', '2021-12-16 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA058', '30度/时', null, '0', '2021-12-17 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA059', '30度/时', null, '0', '2021-12-18 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA060', '30度/时', null, '0', '2021-12-19 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA061', '30度/时', null, '0', '2021-12-20 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA062', '30度/时', null, '0', '2021-12-21 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA063', '30度/时', null, '0', '2021-12-22 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA064', '30度/时', null, '0', '2021-12-23 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA065', '30度/时', null, '0', '2021-12-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA066', '30度/时', null, '0', '2021-12-25 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA067', '30度/时', null, '0', '2021-12-26 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA068', '30度/时', null, '0', '2021-12-27 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA069', '30度/时', null, '0', '2021-12-28 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA070', '30度/时', null, '0', '2021-12-29 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA071', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA072', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA076', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA077', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA078', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA079', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA080', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA081', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA082', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA083', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA084', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA085', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA086', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA087', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA088', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA089', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA090', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA091', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA092', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA093', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA094', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA095', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA096', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA097', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA098', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA099', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA100', '30度/时', null, '0', '2021-10-24 00:00:00', '空闲');
INSERT INTO `cdz` VALUES ('CA101', '30度/时', null, '0', '2025-01-04 21:06:59', '空闲');
INSERT INTO `cdz` VALUES ('CA102', '30度/时', null, '0', '2025-01-05 18:36:21', '空闲');
INSERT INTO `cdz` VALUES ('CA103', '30度/时', null, '0', '2025-01-05 18:36:58', '空闲');
INSERT INTO `cdz` VALUES ('CA104', '30', null, '0', '2025-01-05 18:37:19', '空闲');
INSERT INTO `cdz` VALUES ('CA105', '30度/时', null, '0', '2025-01-05 18:37:37', '空闲');
INSERT INTO `cdz` VALUES ('CA106', '30', null, '0', '2025-01-05 18:54:37', '空闲');

-- ----------------------------
-- Table structure for cupboard
-- ----------------------------
DROP TABLE IF EXISTS `cupboard`;
CREATE TABLE `cupboard` (
  `cupboard_id` char(5) NOT NULL,
  `cupboard_frequency` char(3) NOT NULL,
  `last_repair_cupboard` timestamp NULL DEFAULT NULL,
  `cupboard_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cupboard_hold` int NOT NULL,
  `lo` varchar(255) DEFAULT NULL,
  `la` varchar(255) DEFAULT NULL,
  `count` int DEFAULT '0',
  PRIMARY KEY (`cupboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cupboard
-- ----------------------------
INSERT INTO `cupboard` VALUES ('DA001', '0', null, '2021-10-24 00:00:00', '10', '26.028770', '119.194247', '0');
INSERT INTO `cupboard` VALUES ('DA002', '0', null, '2021-10-24 00:00:00', '10', '26.029050', '119.196028', '0');
INSERT INTO `cupboard` VALUES ('DA003', '0', null, '2021-10-24 00:00:00', '1', '26.029609', '119.200255', '0');
INSERT INTO `cupboard` VALUES ('DA004', '0', null, '2021-10-24 00:00:00', '11', '26.026833', '119.201467', '11');
INSERT INTO `cupboard` VALUES ('DA005', '0', null, '2021-10-25 00:00:00', '1', '26.026167', '119.200190', '1');
INSERT INTO `cupboard` VALUES ('DA006', '0', null, '2021-10-26 00:00:00', '10', '26.025223', '119.200201', '0');
INSERT INTO `cupboard` VALUES ('DA007', '0', null, '2021-10-27 00:00:00', '20', '26.026196', '119.196800', '1');
INSERT INTO `cupboard` VALUES ('DA008', '0', null, '2021-10-28 00:00:00', '1', '26.024355', '119.198313', '0');
INSERT INTO `cupboard` VALUES ('DA009', '0', null, '2021-10-29 00:00:00', '10', '26.024366', '119.198333', '1');
INSERT INTO `cupboard` VALUES ('DA010', '0', null, '2021-10-30 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA011', '0', null, '2021-10-31 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA012', '0', null, '2021-11-01 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA013', '0', null, '2021-11-02 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA014', '0', null, '2021-11-03 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA015', '0', null, '2021-11-04 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA016', '0', null, '2021-11-05 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA017', '0', null, '2021-11-06 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA018', '0', null, '2021-11-07 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA019', '0', null, '2021-11-08 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA020', '0', null, '2021-11-09 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA021', '0', null, '2021-11-10 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA022', '0', null, '2021-11-11 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA023', '0', null, '2021-11-12 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA024', '0', null, '2021-11-13 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA025', '0', null, '2021-11-14 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA026', '0', null, '2021-11-15 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA027', '0', null, '2021-11-16 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA028', '0', null, '2021-11-17 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA029', '0', null, '2021-11-18 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA030', '0', null, '2021-11-19 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA031', '0', null, '2021-11-20 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA032', '0', null, '2021-11-21 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA033', '0', null, '2021-11-22 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA034', '0', null, '2021-11-23 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA035', '0', null, '2021-11-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA036', '0', null, '2021-11-25 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA037', '0', null, '2021-11-26 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA038', '0', null, '2021-11-27 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA039', '0', null, '2021-11-28 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA040', '0', null, '2021-11-29 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA041', '0', null, '2021-11-30 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA042', '0', null, '2021-12-01 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA043', '0', null, '2021-12-02 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA044', '0', null, '2021-12-03 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA045', '0', null, '2021-12-04 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA046', '0', null, '2021-12-05 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA047', '0', null, '2021-12-06 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA048', '0', null, '2021-12-07 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA049', '0', null, '2021-12-08 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA050', '0', null, '2021-12-09 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA051', '0', null, '2021-12-10 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA052', '0', null, '2021-12-11 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA053', '0', null, '2021-12-12 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA054', '0', null, '2021-12-13 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA055', '0', null, '2021-12-14 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA056', '0', null, '2021-12-15 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA057', '0', null, '2021-12-16 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA058', '0', null, '2021-12-17 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA059', '0', null, '2021-12-18 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA060', '0', null, '2021-12-19 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA061', '0', null, '2021-12-20 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA062', '0', null, '2021-12-21 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA063', '0', null, '2021-12-22 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA064', '0', null, '2021-12-23 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA065', '0', null, '2021-12-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA066', '0', null, '2021-12-25 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA067', '0', null, '2021-12-26 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA068', '0', null, '2021-12-27 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA069', '0', null, '2021-12-28 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA070', '0', null, '2021-12-29 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA071', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA072', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA073', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA074', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA075', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA076', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA077', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA078', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA079', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA080', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA081', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA082', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA083', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA084', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA085', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA086', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA087', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA088', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA089', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA090', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA091', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA092', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA093', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA094', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA095', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA096', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA097', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA098', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA099', '0', null, '2021-10-24 00:00:00', '10', null, null, '1');
INSERT INTO `cupboard` VALUES ('DA101', '1', '2025-01-22 00:00:00', '2025-01-04 13:38:14', '30', '26.028999', '119.194999', '0');
INSERT INTO `cupboard` VALUES ('DA102', '0', null, '2025-01-04 13:40:54', '30', '26.029999', '119.194888', '0');

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` varchar(18) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone` text NOT NULL,
  `people_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `student_id` text NOT NULL,
  `grade` varchar(6) NOT NULL,
  `profession` varchar(27) NOT NULL,
  `school` varchar(18) NOT NULL,
  `accounts` float DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'USER',
  `zt` varchar(255) DEFAULT '正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES ('111555828546985478', '张美琴', '13055534441', '2024-12-30 19:48:25', '2356987456', '24级', '信息管理与信息系统', '福建理工大学', '0', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031080', '顾九十四', '15280129815', '2021-10-24 00:00:00', '3221806195', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031081', '孟九十五', '15280129816', '2021-10-24 00:00:00', '3221806196', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031082', '平九十六', '15280129817', '2021-10-24 00:00:00', '3221806197', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031083', '黄九十七', '15280129818', '2021-10-24 00:00:00', '3221806198', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031084', '和九十八', '15280129819', '2021-10-24 00:00:00', '3221806199', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031085', '穆九十九', '15280129820', '2021-10-24 00:00:00', '3221806200', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031086', '萧一百', '15280129821', '2021-10-24 00:00:00', '3221806201', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031087', '尹一百零一', '15280129822', '2021-10-24 00:00:00', '3221806202', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031088', '麻一百零三', '15280129823', '2021-10-24 00:00:00', '3221806203', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031089', '季一百零四', '15280129824', '2021-10-24 00:00:00', '3221806204', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031090', '孟一百零五', '15280129825', '2021-10-24 00:00:00', '3221806205', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031091', '平一百零六', '15280129826', '2021-10-24 00:00:00', '3221806206', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031092', '黄一百零七', '15280129827', '2021-10-24 00:00:00', '3221806207', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031093', '林一百零八', '15280129828', '2021-10-24 00:00:00', '3221806208', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031094', '阮一百零九', '15280129829', '2021-10-24 00:00:00', '3221806209', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031095', '葛一百一十', '15280129830', '2021-10-24 00:00:00', '3221806210', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031096', '韩一百一十一', '15280129831', '2021-10-24 00:00:00', '3221806211', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031097', '蒋一百一十二', '15280129832', '2021-10-24 00:00:00', '3221806212', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031098', '唐一百一十三', '15280129833', '2021-10-24 00:00:00', '3221806213', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031099', '余一百一十四', '15280129834', '2021-10-24 00:00:00', '3221806214', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031100', '曹一百一十五', '15280129835', '2021-10-24 00:00:00', '3221806215', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031101', '何一百一十六', '15280129836', '2021-10-24 00:00:00', '3221806216', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031102', '高一百一十七', '15280129837', '2021-10-24 00:00:00', '3221806217', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031103', '郭一百一十八', '15280129838', '2021-10-24 00:00:00', '3221806218', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031104', '梁一百一十九', '15280129839', '2021-10-24 00:00:00', '3221806219', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031105', '罗一百二十', '15280129840', '2021-10-24 00:00:00', '3221806220', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031106', '陈戴玮', '15280129841', '2021-10-24 00:00:00', '3221806221', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031107', '郭子亿', '15280129842', '2021-10-24 00:00:00', '3221806222', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031108', '黄玮玮', '15280129843', '2021-10-24 00:00:00', '3221806223', '21级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220031109', '刘师傅', '15280129844', '2021-10-24 00:00:00', '3221806224', '21级', '法学', '福建理工大学', '100', '123', 'USER', '黑名单');
INSERT INTO `people` VALUES ('35018220040817153X', '陈戴玮', '15280129722', '2024-12-30 18:39:15', '3221806104', '23级', '信息管理与信息系统', '福建理工大学', '201.1', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041011', '张二十五', '15280129746', '2021-10-24 00:00:00', '3221806126', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041012', '孔二十六', '15280129747', '2021-10-24 00:00:00', '3221806127', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041013', '曹二十七', '15280129748', '2021-10-24 00:00:00', '3221806128', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041014', '严二十八', '15280129749', '2021-10-25 00:00:00', '3221806129', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041015', '华二十九', '15280129750', '2021-10-26 00:00:00', '3221806130', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041016', '金三十', '15280129751', '2021-10-27 00:00:00', '3221806131', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041017', '魏三十一', '15280129752', '2021-10-28 00:00:00', '3221806132', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041018', '陶三十二', '15280129753', '2021-10-29 00:00:00', '3221806133', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041019', '姜三十三', '15280129754', '2021-10-30 00:00:00', '3221806134', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041020', '戚三十四', '15280129755', '2021-10-31 00:00:00', '3221806135', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041021', '谢三十五', '15280129756', '2021-11-01 00:00:00', '3221806136', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041022', '邹三十六', '15280129757', '2021-11-02 00:00:00', '3221806137', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041023', '喻三十七', '15280129758', '2021-11-03 00:00:00', '3221806138', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041024', '柏三十八', '15280129759', '2021-11-04 00:00:00', '3221806139', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041025', '水三十九', '15280129760', '2021-11-05 00:00:00', '3221806140', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041026', '窦四十', '15280129761', '2021-11-06 00:00:00', '3221806141', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041027', '章四十一', '15280129762', '2021-11-07 00:00:00', '3221806142', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041028', '云四十二', '15280129763', '2021-11-08 00:00:00', '3221806143', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041029', '苏四十三', '15280129764', '2021-11-09 00:00:00', '3221806144', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041030', '潘四十四', '15280129765', '2021-11-10 00:00:00', '3221806145', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041031', '葛四十五', '15280129766', '2021-11-11 00:00:00', '3221806146', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041032', '奚四十六', '15280129767', '2021-11-12 00:00:00', '3221806147', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041033', '范四十七', '15280129768', '2021-11-13 00:00:00', '3221806148', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041034', '彭四十八', '15280129769', '2021-11-14 00:00:00', '3221806149', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041035', '郎四十九', '15280129770', '2021-11-15 00:00:00', '3221806150', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041036', '鲁五十', '15280129771', '2021-11-16 00:00:00', '3221806151', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041037', '韦五十一', '15280129772', '2021-11-17 00:00:00', '3221806152', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041038', '昌五十二', '15280129773', '2021-11-18 00:00:00', '3221806153', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041039', '马五十三', '15280129774', '2021-11-19 00:00:00', '3221806154', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041040', '苗五十四', '15280129775', '2021-11-20 00:00:00', '3221806155', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041041', '凤五十五', '15280129776', '2021-11-21 00:00:00', '3221806156', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041042', '花五十六', '15280129777', '2021-11-22 00:00:00', '3221806157', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041043', '方五十七', '15280129778', '2021-11-23 00:00:00', '3221806158', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041044', '俞五十八', '15280129779', '2021-11-24 00:00:00', '3221806159', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041045', '任五十九', '15280129780', '2021-11-25 00:00:00', '3221806160', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041046', '袁六十', '15280129781', '2021-11-26 00:00:00', '3221806161', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041047', '柳六十一', '15280129782', '2021-11-27 00:00:00', '3221806162', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041048', '酆六十二', '15280129783', '2021-11-28 00:00:00', '3221806163', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041049', '鲍六十三', '15280129784', '2021-11-29 00:00:00', '3221806164', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041050', '史六十四', '15280129785', '2021-11-30 00:00:00', '3221806165', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041051', '唐六十五', '15280129786', '2021-12-01 00:00:00', '3221806166', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041052', '费六十六', '15280129787', '2021-12-02 00:00:00', '3221806167', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041053', '廉六十七', '15280129788', '2021-12-03 00:00:00', '3221806168', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041054', '岑六十八', '15280129789', '2021-12-04 00:00:00', '3221806169', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041055', '薛六十九', '15280129790', '2021-12-05 00:00:00', '3221806170', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041056', '雷七十', '15280129791', '2021-12-06 00:00:00', '3221806171', '22级', '物流管理', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041057', '贺七十一', '15280129792', '2021-12-07 00:00:00', '3221806172', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041058', '倪七十二', '15280129793', '2021-12-08 00:00:00', '3221806173', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041059', '汤七十三', '15280129794', '2021-12-09 00:00:00', '3221806174', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041060', '滕七十四', '15280129795', '2021-12-10 00:00:00', '3221806175', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041061', '殷七十五', '15280129796', '2021-12-11 00:00:00', '3221806176', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041062', '罗七十六', '15280129797', '2021-12-12 00:00:00', '3221806177', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041063', '毕七十七', '15280129798', '2021-12-13 00:00:00', '3221806178', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041064', '郝七十八', '15280129799', '2021-12-14 00:00:00', '3221806179', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041065', '邬七十九', '15280129800', '2021-12-15 00:00:00', '3221806180', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041066', '安八十', '15280129801', '2021-12-16 00:00:00', '3221806181', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041067', '常八十一', '15280129802', '2021-12-17 00:00:00', '3221806182', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041068', '乐八十二', '15280129803', '2021-12-18 00:00:00', '3221806183', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041069', '于八十三', '15280129804', '2021-12-19 00:00:00', '3221806184', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041070', '时八十四', '15280129805', '2021-12-20 00:00:00', '3221806185', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041071', '傅八十五', '15280129806', '2021-12-21 00:00:00', '3221806186', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041072', '皮八十六', '15280129807', '2021-12-22 00:00:00', '3221806187', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041073', '卞八十七', '15280129808', '2021-12-23 00:00:00', '3221806188', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041074', '齐八十八', '15280129809', '2021-12-24 00:00:00', '3221806189', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041075', '康八十九', '15280129810', '2021-12-25 00:00:00', '3221806190', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041076', '伍九十', '15280129811', '2021-12-26 00:00:00', '3221806191', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041077', '余九十一', '15280129812', '2021-12-27 00:00:00', '3221806192', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041078', '元九十二', '15280129813', '2021-12-28 00:00:00', '3221806193', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220041079', '卜九十三', '15280129814', '2021-12-29 00:00:00', '3221806194', '22级', '法学', '福建理工大学', '100', '123', 'USER', '正常');
INSERT INTO `people` VALUES ('35018220051010', '孙七', '15280129728', '2021-10-24 00:00:00', '3221806108', '23级', '信息管理与信息系统', '福建理工大学', '100', '123', 'ADMIN', '正常');

-- ----------------------------
-- Table structure for people_battery
-- ----------------------------
DROP TABLE IF EXISTS `people_battery`;
CREATE TABLE `people_battery` (
  `battery_id` char(5) NOT NULL,
  `phone` char(11) NOT NULL,
  `pay_battery_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `battery_fy` float NOT NULL,
  `battery_pay_zt` char(9) NOT NULL,
  `finish` timestamp NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of people_battery
-- ----------------------------
INSERT INTO `people_battery` VALUES ('BA001', '15280129722', '2024-12-31 18:59:44', '3', '已支付', '2025-01-01 11:50:21', '1');
INSERT INTO `people_battery` VALUES ('BA001', '15280129722', '2024-12-31 21:41:26', '3', '已支付', '2025-01-02 21:11:54', '2');
INSERT INTO `people_battery` VALUES ('BA003', '15280129722', '2024-12-31 17:29:46', '3', '已支付', '2025-01-02 21:12:15', '3');
INSERT INTO `people_battery` VALUES ('BA006', '15280129722', '2024-12-31 17:29:33', '3', '已支付', '2025-01-02 21:12:20', '4');
INSERT INTO `people_battery` VALUES ('BA008', '15280129722', '2024-12-31 17:28:21', '3', '已支付', '2025-01-02 21:12:18', '5');
INSERT INTO `people_battery` VALUES ('BA004', '15280129722', '2025-01-03 17:09:21', '3', '待支付', null, '6');
INSERT INTO `people_battery` VALUES ('BA004', '15280129722', '2025-01-03 17:09:50', '3', '待支付', null, '7');
INSERT INTO `people_battery` VALUES ('BA004', '15280129722', '2025-01-03 17:09:56', '3', '待支付', null, '8');
INSERT INTO `people_battery` VALUES ('BA004', '15280129722', '2025-01-03 17:09:59', '3', '待支付', null, '9');

-- ----------------------------
-- Table structure for people_cdz
-- ----------------------------
DROP TABLE IF EXISTS `people_cdz`;
CREATE TABLE `people_cdz` (
  `cdz_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pay_cdz_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cdz_fy` float DEFAULT NULL,
  `cdz_pay_zt` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `finish` timestamp NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of people_cdz
-- ----------------------------
INSERT INTO `people_cdz` VALUES ('CA073', '15280129722', '2025-01-02 16:15:47', '9.3', '已支付', '2025-01-02 20:19:44', '1');
INSERT INTO `people_cdz` VALUES ('CA036', '15280129722', '2025-01-02 16:20:58', '8.6', '已支付', '2025-01-02 20:19:50', '2');
INSERT INTO `people_cdz` VALUES ('CA003', '15280129722', '2025-01-02 19:30:32', '0', '已支付', '2025-01-02 20:19:51', '6');
INSERT INTO `people_cdz` VALUES ('CA001', '15280129722', '2025-01-02 21:14:36', '0', '已支付', '2025-01-02 21:16:34', '7');
INSERT INTO `people_cdz` VALUES ('CA036', '15280129722', '2025-01-03 13:28:59', '154.75', '未支付', null, '8');
