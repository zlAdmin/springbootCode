/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : apstools

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 05/09/2018 15:32:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bom_bstock
-- ----------------------------
DROP TABLE IF EXISTS `bom_bstock`;
CREATE TABLE `bom_bstock`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpspcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货型号',
  `ccomunitname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主计量单位',
  `quantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '现存数量'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bom_bstock
-- ----------------------------
INSERT INTO `bom_bstock` VALUES ('6fc01793ab6d11e88c5f54e1adaf09dc', '80001101', 'MJ7115.1', '基座部分', '', '个', 15.00);
INSERT INTO `bom_bstock` VALUES ('6fc01a6eab6d11e88c5f54e1adaf09dc', '80001102', 'MJ7115.2', '磨头部分', '', '个', 62.00);
INSERT INTO `bom_bstock` VALUES ('6fc01afaab6d11e88c5f54e1adaf09dc', '80001104', 'MJ7115.4', '电气部分', '', '个', 63.00);
INSERT INTO `bom_bstock` VALUES ('6fc01b37ab6d11e88c5f54e1adaf09dc', '80001106', 'MJ7115.F', '附件部分', '', '个', 33.00);
INSERT INTO `bom_bstock` VALUES ('6fc01b67ab6d11e88c5f54e1adaf09dc', '80001109', 'MJ7115', '润滑部分', '', '个', 73.00);
INSERT INTO `bom_bstock` VALUES ('6fc01e5dab6d11e88c5f54e1adaf09dc', '80001103', 'MJ7115.3', '箱式底座部分', '', '个', 70.00);
INSERT INTO `bom_bstock` VALUES ('6fc772f9ab6d11e88c5f54e1adaf09dc', '80001107', 'MJ7115-HZ', 'CE部分', '', '个', 29.00);
INSERT INTO `bom_bstock` VALUES ('6fc773bcab6d11e88c5f54e1adaf09dc', '80001108', 'MJ7115', '标牌部分', '', '个', 37.00);

-- ----------------------------
-- Table structure for bom_config
-- ----------------------------
DROP TABLE IF EXISTS `bom_config`;
CREATE TABLE `bom_config`  (
  `mom_cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件存货代码',
  `mom_cpspcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件编码',
  `mom_cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件名称',
  `mom_cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件型号',
  `son_cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件存货代码',
  `son_cpscode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件编码',
  `son_cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件名称',
  `son_cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件型号',
  `son_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件是否为部件',
  `son_ccomunitname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主计量单位',
  `son_tdqtyd` int(11) NULL DEFAULT 0 COMMENT '基本用量分母',
  `son_ipsquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量分子',
  `son_sumquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量总量',
  `myid` int(11) NULL DEFAULT NULL,
  `mypid` int(11) NULL DEFAULT NULL,
  `id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bom_config
-- ----------------------------
INSERT INTO `bom_config` VALUES ('', '0', '产品', '', 'MJ7115', '90004200', '简式磨床', '', '1', '个', 1, 1.00, 0.00, 1, 0, 1);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.1', '80001101', '基座部分', '', '1', '个', 1, 1.00, 0.00, 2, 1, 2);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.2', '80001102', '磨头部分', '', '1', '个', 1, 1.00, 0.00, 3, 1, 3);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.4', '80001104', '电气部分', '', '1', '个', 1, 1.00, 0.00, 5, 1, 5);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.F', '80001106', '附件部分', '', '1', '个', 1, 1.00, 0.00, 6, 1, 6);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115', '80001109', '润滑部分', '', '1', '个', 1, 1.00, 0.00, 9, 1, 9);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'MJ7115.F4', '10000114', '调整垫脚', '', NULL, '个', 1, 4.00, 0.00, 10, 6, 10);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.5-01', '10000116', '砂轮平衡轴', '', NULL, '个', 1, 1.00, 0.00, 11, 6, 11);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.1-01', '10000104', '扳手体', '', NULL, '个', 1, 1.00, 0.00, 12, 6, 12);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.1-02', '10000105', '销子', '', NULL, '个', 1, 2.00, 0.00, 13, 6, 13);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'MJ7115-F.6', '10000117', '开槽扳手', '', NULL, '个', 1, 1.00, 0.00, 14, 6, 14);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'GB97.1-2002', '20001462', '平垫圈', '16', NULL, '个', 1, 1.00, 0.00, 15, 6, 15);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'GB812-1988', '20001308', '圆螺母', 'M16*1.5', NULL, '个', 1, 1.00, 0.00, 16, 6, 16);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'GB5783-2000', '20001113', '六角头螺栓  全螺纹', '12*75', NULL, '个', 1, 4.00, 0.00, 17, 6, 17);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001106', '砂轮', '砂轮180*31.75*13', NULL, '个', 1, 1.00, 0.00, 18, 6, 18);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001067', '螺丝刀', '100十', NULL, '个', 1, 1.00, 0.00, 19, 6, 19);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001068', '螺丝刀', '100一', NULL, '个', 1, 1.00, 0.00, 20, 6, 20);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001053', '呆板手', '17-19', NULL, '个', 1, 1.00, 0.00, 21, 6, 21);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001033', '活板手', '6/150', NULL, '个', 1, 1.00, 0.00, 22, 6, 22);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001021', '内六角扳手', '3', NULL, '个', 1, 1.00, 0.00, 23, 6, 23);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001022', '内六角扳手', '4', NULL, '个', 1, 1.00, 0.00, 24, 6, 24);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001023', '内六角扳手', '5', NULL, '个', 1, 1.00, 0.00, 25, 6, 25);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'GB37-1988', '20001090', 'T形槽用螺栓', '12*35', NULL, '个', 1, 2.00, 0.00, 26, 6, 26);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'GB97.1-2002', '20001460', '平垫圈', '12', NULL, '个', 1, 2.00, 0.00, 27, 6, 27);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'GB93-1987', '20001448', '标准型弹性垫圈', '12', NULL, '个', 1, 2.00, 0.00, 28, 6, 28);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'GB96.2-2002', '20001468', '大垫圈', '5', NULL, '个', 1, 2.00, 0.00, 29, 6, 29);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001842', '工具袋', '带字 宽255长370', NULL, '个', 1, 3.00, 0.00, 30, 6, 30);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001821', '方便袋', '大号', NULL, '个', 1, 15.00, 0.00, 31, 6, 31);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001822', '方便袋', '小号', NULL, '个', 1, 2.00, 0.00, 32, 6, 32);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001825', '透明胶带', '', NULL, '个', 1, 0.04, 0.00, 33, 6, 33);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30008686', '绝缘胶布', '', NULL, '个', 1, 0.03, 0.00, 34, 6, 34);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30008690', '焊锡丝', '0.8MM', NULL, 'KG', 50, 0.10, 0.00, 35, 6, 35);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '30001836', '扣取纸', '', NULL, '个', 1, 1.00, 0.00, 36, 6, 36);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', '', '10000106', '砂轮修整刀', 'MJ7115F.2-00', NULL, '个', 1, 1.00, 0.00, 37, 6, 37);
INSERT INTO `bom_config` VALUES ('MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.2-01', '10000107', '砂轮修整刀座', '', NULL, '个', 1, 1.00, 0.00, 38, 6, 38);
INSERT INTO `bom_config` VALUES ('MJ7115', '80001109', '润滑部分', '', '', '30001659', '手动润滑泵', 'JX-LK-8TR  英文 MJ7115', NULL, '套', 1, 1.00, 0.00, 39, 9, 39);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-01', '10000072', '砂轮前罩', '', NULL, '个', 1, 1.00, 0.00, 40, 3, 40);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-02', '10000073', '螺母', '', NULL, '个', 1, 1.00, 0.00, 41, 3, 41);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-03', '10000074', '砂轮紧固盘', '', NULL, '个', 1, 1.00, 0.00, 42, 3, 42);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-04', '10000075', '砂轮套筒', '', NULL, '个', 1, 1.00, 0.00, 43, 3, 43);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-05', '10000076', '砂轮后罩', '', NULL, '个', 1, 1.00, 0.00, 44, 3, 44);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-06', '10000077', '平衡块', '', NULL, '个', 1, 3.00, 0.00, 45, 3, 45);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'GB77-2000', '20000373', '内六角平端紧定螺钉', '8*10', NULL, '个', 1, 1.00, 0.00, 46, 3, 46);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'GB70.1-2000', '20000028', '内六角圆柱头螺钉', '6*25/代6*26', NULL, '个', 1, 3.00, 0.00, 47, 3, 47);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'GB70.1-2000', '20000027', '内六角圆柱头螺钉', '6*20', NULL, '个', 1, 4.00, 0.00, 48, 3, 48);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', '', '30001349', '钢球', '4', NULL, '个', 1, 3.00, 0.00, 49, 3, 49);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'GB71-85', '20000300', '开槽锥端紧定螺钉', '6*6', NULL, '个', 1, 3.00, 0.00, 50, 3, 50);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', 'GB5783-2000', '20001106', '六角头螺栓  全螺纹', '6*40', NULL, '个', 1, 3.00, 0.00, 51, 3, 51);
INSERT INTO `bom_config` VALUES ('MJ7115.2', '80001102', '磨头部分', '', '', '30000329', '电机  MJ7115', '220V  550W  50HZ', NULL, '个', 1, 1.00, 0.00, 52, 3, 52);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-01', '10000001', '机座', '', NULL, '个', 1, 1.00, 0.00, 53, 2, 53);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-02', '10000002', '横向燕尾座', '', NULL, '个', 1, 1.00, 0.00, 54, 2, 54);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-03', '10000003', '下滑板', '', NULL, '个', 1, 1.00, 0.00, 55, 2, 55);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-04', '10000004', '工作台', '', NULL, '个', 1, 1.00, 0.00, 56, 2, 56);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-05', '10000005', '手柄杆', '', NULL, '个', 1, 3.00, 0.00, 57, 2, 57);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-06', '10000006', '齿条', '', NULL, '个', 1, 1.00, 0.00, 58, 2, 58);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-07', '10000007', '固定螺杆Ⅰ', '', NULL, '个', 1, 1.00, 0.00, 59, 2, 59);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-08', '10000008', '上斜铁', '', NULL, '个', 1, 1.00, 0.00, 60, 2, 60);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-09', '10000009', '调整螺钉', '', NULL, '个', 1, 2.00, 0.00, 61, 2, 61);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-11', '10000012', '立向燕尾座', '', NULL, '个', 1, 1.00, 0.00, 62, 2, 62);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-12-02', '10000013', '压板', '', NULL, '个', 1, 1.00, 0.00, 63, 2, 63);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-12b', '10000014', '配重块（Ⅰ）', '', NULL, '个', 1, 1.00, 0.00, 64, 2, 64);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-13a', '10000015', '固定螺杆Ⅱ', '', NULL, '个', 1, 1.00, 0.00, 65, 2, 65);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-14', '10000016', '立向滑板', '', NULL, '个', 1, 1.00, 0.00, 66, 2, 66);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-15', '10000017', '滑轮轴', '', NULL, '个', 1, 1.00, 0.00, 67, 2, 67);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-17', '10000018', '压片', '', NULL, '个', 1, 1.00, 0.00, 68, 2, 68);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-18', '10000019', '滑轮', '', NULL, '个', 1, 1.00, 0.00, 69, 2, 69);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-19', '10000020', '立向丝母', '', NULL, '个', 1, 1.00, 0.00, 70, 2, 70);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-20c', '10000021', '开关盒', '', NULL, '个', 1, 1.00, 0.00, 71, 2, 71);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-22', '10000022', '立柱盖', '', NULL, '个', 1, 1.00, 0.00, 72, 2, 72);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-23', '10000023', '立向丝杠', '', NULL, '个', 1, 1.00, 0.00, 73, 2, 73);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-24', '10000024', '齿轮座', '', NULL, '个', 1, 1.00, 0.00, 74, 2, 74);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-25', '10000025', '螺旋齿轮', '', NULL, '个', 1, 1.00, 0.00, 75, 2, 75);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-26', '10000026', '螺旋齿轮轴', '', NULL, '个', 1, 1.00, 0.00, 76, 2, 76);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-27', '10000027', '垫圈', '', NULL, '个', 1, 1.00, 0.00, 77, 2, 77);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-28', '10000028', '齿轮罩', '', NULL, '个', 1, 1.00, 0.00, 78, 2, 78);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-29', '10000029', '轴承挡圈', '', NULL, '个', 1, 2.00, 0.00, 79, 2, 79);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB2089-1994', '20002133', '圆柱螺旋压缩弹簧', '0.7*6*9', NULL, '个', 1, 2.00, 0.00, 80, 2, 80);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-31', '10000031', '立向轴承座', '', NULL, '个', 1, 1.00, 0.00, 81, 2, 81);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-31a', '10000032', '横向轴承座', '', NULL, '个', 1, 1.00, 0.00, 82, 2, 82);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-32', '10000033', '垫套', '', NULL, '个', 1, 2.00, 0.00, 83, 2, 83);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-33c', '10000036', '立向刻度环', '', NULL, '个', 1, 1.00, 0.00, 84, 2, 84);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-34', '10000037', '手轮', '', NULL, '个', 1, 2.00, 0.00, 85, 2, 85);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-36', '10000038', '横向丝杠', '', NULL, '个', 1, 1.00, 0.00, 86, 2, 86);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-37', '10000039', '下丝母', '', NULL, '个', 1, 1.00, 0.00, 87, 2, 87);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-38b', '10000042', '横向刻度环', '', NULL, '个', 1, 1.00, 0.00, 88, 2, 88);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-39', '10000043', '防护板', '', NULL, '个', 1, 1.00, 0.00, 89, 2, 89);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-41', '10000046', '限位杆Ⅱ', '', NULL, '个', 1, 2.00, 0.00, 90, 2, 90);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-42', '10000047', '斜齿轮', '', NULL, '个', 1, 1.00, 0.00, 91, 2, 91);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-43', '10000048', '纵向进给轴', '', NULL, '个', 1, 1.00, 0.00, 92, 2, 92);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-44', '10000049', '手柄体', '', NULL, '个', 1, 1.00, 0.00, 93, 2, 93);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-45', '10000050', '限位杆Ⅰ', '', NULL, '个', 1, 1.00, 0.00, 94, 2, 94);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-46', '10000051', '下斜铁', '', NULL, '个', 1, 1.00, 0.00, 95, 2, 95);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-49', '10000059', '限位板', '', NULL, '个', 1, 1.00, 0.00, 96, 2, 96);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000010', '内六角圆柱头螺钉', '5*10', NULL, '个', 1, 3.00, 0.00, 97, 2, 97);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000438', '内六角圆柱头螺钉', '5*16', NULL, '个', 1, 11.00, 0.00, 98, 2, 98);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000014', '内六角圆柱头螺钉', '5*20', NULL, '个', 1, 2.00, 0.00, 99, 2, 99);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000026', '内六角圆柱头螺钉', '6*16/代6*15', NULL, '个', 1, 2.00, 0.00, 100, 2, 100);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000034', '内六角圆柱头螺钉', '6*55', NULL, '个', 1, 2.00, 0.00, 101, 2, 101);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000066', '内六角圆柱头螺钉', '10*25', NULL, '个', 1, 4.00, 0.00, 102, 2, 102);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000068', '内六角圆柱头螺钉', '10*35', NULL, '个', 1, 4.00, 0.00, 103, 2, 103);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000064', '内六角圆柱头螺钉', '10*16', NULL, '个', 1, 4.00, 0.00, 104, 2, 104);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB819.1-2000', '20000235', '十字槽沉头螺钉', '5*10', NULL, '个', 1, 6.00, 0.00, 105, 2, 105);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB818-2000', '20000191', '十字槽盘头螺钉', '5*8', NULL, '个', 1, 4.00, 0.00, 106, 2, 106);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB118-2000', '20001945', '内螺纹圆锥销', '6*40', NULL, '个', 1, 6.00, 0.00, 107, 2, 107);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001235', '六角螺母', 'M8', NULL, '个', 1, 6.00, 0.00, 108, 2, 108);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001239', '六角螺母', 'M16', NULL, '个', 1, 1.00, 0.00, 109, 2, 109);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001236', '六角螺母', 'M10', NULL, '个', 1, 2.00, 0.00, 110, 2, 110);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001237', '六角螺母', 'M12', NULL, '个', 1, 10.00, 0.00, 111, 2, 111);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'MJ7115', '10000128', '钢丝绳成品', '', NULL, '个', 1, 1.00, 0.00, 112, 2, 112);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001110', '手柄球', '8*30', NULL, '个', 1, 3.00, 0.00, 113, 2, 113);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB86-88', '20000436', '方头短圆柱锥端紧定螺钉', '12*60', NULL, '个', 1, 1.00, 0.00, 114, 2, 114);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB5783-2000', '20001107', '六角头螺栓  全螺纹', '10*35', NULL, '个', 1, 4.00, 0.00, 115, 2, 115);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB77-2000', '20000376', '内六角平端紧定螺钉', '8*20', NULL, '个', 1, 5.00, 0.00, 116, 2, 116);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB97.1-2002', '20001456', '平垫圈', '5', NULL, '个', 1, 2.00, 0.00, 117, 2, 117);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB97.1-2002', '20001459', '平垫圈', '10', NULL, '个', 1, 4.00, 0.00, 118, 2, 118);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001207', '吊环', '吊环   M16', NULL, '个', 1, 1.00, 0.00, 119, 2, 119);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001455', '轴承', '1000902 (61902)', NULL, '个', 1, 2.00, 0.00, 120, 2, 120);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001559', '轴承', '8102        (51102)', NULL, '个', 1, 2.00, 0.00, 121, 2, 121);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001512', '轴承', '6202/2Z', NULL, '个', 1, 2.00, 0.00, 122, 2, 122);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB1096-1979', '20001705', '普通平键A型', '4*20', NULL, '个', 1, 2.00, 0.00, 123, 2, 123);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB1096-1979', '20001703', '普通平键A型', '4*16', NULL, '个', 1, 1.00, 0.00, 124, 2, 124);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001351', '钢球', '6', NULL, '个', 1, 2.00, 0.00, 125, 2, 125);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001090', '铆钉', '2*5', NULL, '个', 1, 8.00, 0.00, 126, 2, 126);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB117-2000', '20001918', '圆锥销 B型', '5*30', NULL, '个', 1, 1.00, 0.00, 127, 2, 127);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB117-2000', '20001921', '圆锥销 B型', '5*50', NULL, '个', 1, 1.00, 0.00, 128, 2, 128);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000024', '内六角圆柱头螺钉', '6*12', NULL, '个', 1, 6.00, 0.00, 129, 2, 129);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000027', '内六角圆柱头螺钉', '6*20', NULL, '个', 1, 2.00, 0.00, 130, 2, 130);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB818-2000', '20000193', '十字槽盘头螺钉', '6*12', NULL, '个', 1, 4.00, 0.00, 131, 2, 131);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000028', '内六角圆柱头螺钉', '6*25/代6*26', NULL, '个', 1, 5.00, 0.00, 132, 2, 132);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB119-2000', '20001990', '圆柱销 B型', '6*45', NULL, '个', 1, 1.00, 0.00, 133, 2, 133);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB77-2000', '20000375', '内六角平端紧定螺钉', '8*16', NULL, '个', 1, 1.00, 0.00, 134, 2, 134);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', 'GB97.1-2002', '20001460', '平垫圈', '12', NULL, '个', 1, 8.00, 0.00, 135, 2, 135);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001123', '转动手柄', 'M8*63   暗', NULL, '套', 1, 2.00, 0.00, 136, 2, 136);
INSERT INTO `bom_config` VALUES ('MJ7115.1', '80001101', '基座部分', '', '', '30001337', 'GB1155-74油杯', 'φ8', NULL, '个', 1, 1.00, 0.00, 137, 2, 137);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30005037', '电源指示灯', 'PL AD16-16C/g-28(APT)220V', NULL, '个', 1, 1.00, 0.00, 138, 5, 138);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30005038', '工作指示灯', 'PL AD16-16C/w-28(APT)220V', NULL, '个', 1, 1.00, 0.00, 139, 5, 139);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000245', '护套线(米)', '3*1.5-VDE 含黄绿接地', NULL, 'M', 1, 0.70, 0.00, 140, 5, 140);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30009284', '多股铜芯线线', '0.75   红', NULL, 'M', 1, 0.18, 0.00, 141, 5, 141);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000124', '金属软管(蛇皮管)(米)', '13   3/8\"', NULL, 'M', 1, 0.50, 0.00, 142, 5, 142);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000005', '接线端子', 'RNBS2-5（φ5）', NULL, '个', 1, 6.00, 0.00, 143, 5, 143);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000011', '接线端子', 'UT2.5-4（φ4）', NULL, '个', 1, 8.00, 0.00, 144, 5, 144);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', 'GB862.2-1987', '20001515', '外锯齿锁紧垫圈', '5', NULL, '个', 1, 3.00, 0.00, 145, 5, 145);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', 'GB818-2000', '20000179', '十字槽盘头螺钉', '4*8', NULL, '个', 1, 2.00, 0.00, 146, 5, 146);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', 'GB818-2000', '20000180', '十字槽盘头螺钉', '5*10', NULL, '个', 1, 10.00, 0.00, 147, 5, 147);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000115', '软管接头', '13 /M20*1.5常用', NULL, '个', 1, 2.00, 0.00, 148, 5, 148);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30001820', '打火机', '', NULL, '个', 1, 0.20, 0.00, 149, 5, 149);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000085', '(线号管)', 'ZMY-1.5(1盘100M)', NULL, 'M', 1, 1.00, 0.00, 150, 5, 150);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000086', '(线号管)', 'ZMY-2.5(1盘80M)', NULL, 'M', 1, 1.00, 0.00, 151, 5, 151);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000074', '热缩管(米)', '3', NULL, 'M', 1, 0.30, 0.00, 152, 5, 152);
INSERT INTO `bom_config` VALUES ('MJ7115.4', '80001104', '电气部分', '', '', '30000007', '接线端子', 'UT1.5-3', NULL, '个', 1, 8.00, 0.00, 153, 5, 153);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.3', '80001103', '箱式底座部分', '', '1', '个', 1, 1.00, 0.00, 4, 1, 4);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115-HZ', '80001107', 'CE部分', '', '1', '个', 1, 1.00, 0.00, 7, 1, 7);
INSERT INTO `bom_config` VALUES ('MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115', '80001108', '标牌部分', '', '1', '个', 1, 1.00, 0.00, 8, 1, 8);

-- ----------------------------
-- Table structure for bom_config_temp
-- ----------------------------
DROP TABLE IF EXISTS `bom_config_temp`;
CREATE TABLE `bom_config_temp`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mom_cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件存货代码',
  `mom_cpspcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件编码',
  `mom_cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件名称',
  `mom_cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母件型号',
  `son_cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件存货代码',
  `son_cpscode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件编码',
  `son_cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件名称',
  `son_cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件型号',
  `son_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子件是否为部件',
  `son_ccomunitname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主计量单位',
  `son_tdqtyd` int(11) NULL DEFAULT 0 COMMENT '基本用量分母',
  `son_ipsquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量分子',
  `son_sumquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '基本用量总量',
  `myid` int(11) NULL DEFAULT NULL,
  `mypid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bom_config_temp
-- ----------------------------
INSERT INTO `bom_config_temp` VALUES ('12d91470ab4111e88c5f54e1adaf09dc', '', '0', '产品', '', '', '90004200', '简式磨床', '', NULL, '个', 1, 1.00, 0.00, 1, 0);
INSERT INTO `bom_config_temp` VALUES ('3f20042cab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.1', '80001101', '基座部分', '', NULL, '个', 1, 1.00, 0.00, 2, 1);
INSERT INTO `bom_config_temp` VALUES ('3f2b2db8ab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.2', '80001102', '磨头部分', '', NULL, '个', 1, 1.00, 0.00, 3, 1);
INSERT INTO `bom_config_temp` VALUES ('3f3b8728ab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.3', '80001103', '箱式底座部分', '', NULL, '个', 1, 1.00, 0.00, 4, 1);
INSERT INTO `bom_config_temp` VALUES ('3f42d740ab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.4', '80001104', '电气部分', '', NULL, '个', 1, 1.00, 0.00, 5, 1);
INSERT INTO `bom_config_temp` VALUES ('3f496643ab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115.F', '80001106', '附件部分', '', NULL, '个', 1, 1.00, 0.00, 6, 1);
INSERT INTO `bom_config_temp` VALUES ('3f4f95fbab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115-HZ', '80001107', 'CE部分', '', NULL, '个', 1, 1.00, 0.00, 7, 1);
INSERT INTO `bom_config_temp` VALUES ('3f55f05aab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115', '80001108', '标牌部分', '', NULL, '个', 1, 1.00, 0.00, 8, 1);
INSERT INTO `bom_config_temp` VALUES ('3f5c6783ab3a11e88c5f54e1adaf09dc', 'MJ7115', '90004200', '简式磨床', 'MJ7115', 'MJ7115', '80001109', '润滑部分', '', NULL, '个', 1, 1.00, 0.00, 9, 1);
INSERT INTO `bom_config_temp` VALUES ('3f62a9a2ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'MJ7115.F4', '10000114', '调整垫脚', '', NULL, '个', 1, 4.00, 0.00, 10, 6);
INSERT INTO `bom_config_temp` VALUES ('3f691adfab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.5-01', '10000116', '砂轮平衡轴', '', NULL, '个', 1, 1.00, 0.00, 11, 6);
INSERT INTO `bom_config_temp` VALUES ('3f6f6e8dab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.1-01', '10000104', '扳手体', '', NULL, '个', 1, 1.00, 0.00, 12, 6);
INSERT INTO `bom_config_temp` VALUES ('3f75c501ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.1-02', '10000105', '销子', '', NULL, '个', 1, 2.00, 0.00, 13, 6);
INSERT INTO `bom_config_temp` VALUES ('3f7ad715ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'MJ7115-F.6', '10000117', '开槽扳手', '', NULL, '个', 1, 1.00, 0.00, 14, 6);
INSERT INTO `bom_config_temp` VALUES ('3f8131f2ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'GB97.1-2002', '20001462', '平垫圈', '16', NULL, '个', 1, 1.00, 0.00, 15, 6);
INSERT INTO `bom_config_temp` VALUES ('3f8787deab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'GB812-1988', '20001308', '圆螺母', 'M16*1.5', NULL, '个', 1, 1.00, 0.00, 16, 6);
INSERT INTO `bom_config_temp` VALUES ('3f91eab4ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'GB5783-2000', '20001113', '六角头螺栓  全螺纹', '12*75', NULL, '个', 1, 4.00, 0.00, 17, 6);
INSERT INTO `bom_config_temp` VALUES ('3f981fa0ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001106', '砂轮', '砂轮180*31.75*13', NULL, '个', 1, 1.00, 0.00, 18, 6);
INSERT INTO `bom_config_temp` VALUES ('3f9e78b1ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001067', '螺丝刀', '100十', NULL, '个', 1, 1.00, 0.00, 19, 6);
INSERT INTO `bom_config_temp` VALUES ('3fa4d969ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001068', '螺丝刀', '100一', NULL, '个', 1, 1.00, 0.00, 20, 6);
INSERT INTO `bom_config_temp` VALUES ('3fab34d9ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001053', '呆板手', '17-19', NULL, '个', 1, 1.00, 0.00, 21, 6);
INSERT INTO `bom_config_temp` VALUES ('3fba7520ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001033', '活板手', '6/150', NULL, '个', 1, 1.00, 0.00, 22, 6);
INSERT INTO `bom_config_temp` VALUES ('3fc84cacab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001021', '内六角扳手', '3', NULL, '个', 1, 1.00, 0.00, 23, 6);
INSERT INTO `bom_config_temp` VALUES ('3fd4ebfdab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001022', '内六角扳手', '4', NULL, '个', 1, 1.00, 0.00, 24, 6);
INSERT INTO `bom_config_temp` VALUES ('3fdeb26eab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001023', '内六角扳手', '5', NULL, '个', 1, 1.00, 0.00, 25, 6);
INSERT INTO `bom_config_temp` VALUES ('3fefe5e1ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'GB37-1988', '20001090', 'T形槽用螺栓', '12*35', NULL, '个', 1, 2.00, 0.00, 26, 6);
INSERT INTO `bom_config_temp` VALUES ('3ff63985ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'GB97.1-2002', '20001460', '平垫圈', '12', NULL, '个', 1, 2.00, 0.00, 27, 6);
INSERT INTO `bom_config_temp` VALUES ('3ffcbe51ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'GB93-1987', '20001448', '标准型弹性垫圈', '12', NULL, '个', 1, 2.00, 0.00, 28, 6);
INSERT INTO `bom_config_temp` VALUES ('4002f740ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'GB96.2-2002', '20001468', '大垫圈', '5', NULL, '个', 1, 2.00, 0.00, 29, 6);
INSERT INTO `bom_config_temp` VALUES ('40095795ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001842', '工具袋', '带字 宽255长370', NULL, '个', 1, 3.00, 0.00, 30, 6);
INSERT INTO `bom_config_temp` VALUES ('400fae80ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001821', '方便袋', '大号', NULL, '个', 1, 15.00, 0.00, 31, 6);
INSERT INTO `bom_config_temp` VALUES ('4014c165ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001822', '方便袋', '小号', NULL, '个', 1, 2.00, 0.00, 32, 6);
INSERT INTO `bom_config_temp` VALUES ('401b3f3fab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001825', '透明胶带', '', NULL, '个', 1, 0.04, 0.00, 33, 6);
INSERT INTO `bom_config_temp` VALUES ('40218879ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30008686', '绝缘胶布', '', NULL, '个', 1, 0.03, 0.00, 34, 6);
INSERT INTO `bom_config_temp` VALUES ('4027d8f0ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30008690', '焊锡丝', '0.8MM', NULL, 'KG', 50, 0.10, 0.00, 35, 6);
INSERT INTO `bom_config_temp` VALUES ('402e3fedab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '30001836', '扣取纸', '', NULL, '个', 1, 1.00, 0.00, 36, 6);
INSERT INTO `bom_config_temp` VALUES ('40349112ab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', '', '10000106', '砂轮修整刀', 'MJ7115F.2-00', NULL, '个', 1, 1.00, 0.00, 37, 6);
INSERT INTO `bom_config_temp` VALUES ('403aee0eab3a11e88c5f54e1adaf09dc', 'MJ7115.F', '80001106', '附件部分', '', 'MJ7115F.2-01', '10000107', '砂轮修整刀座', '', NULL, '个', 1, 1.00, 0.00, 38, 6);
INSERT INTO `bom_config_temp` VALUES ('40414b3bab3a11e88c5f54e1adaf09dc', 'MJ7115', '80001109', '润滑部分', '', '', '30001659', '手动润滑泵', 'JX-LK-8TR  英文 MJ7115', NULL, '套', 1, 1.00, 0.00, 39, 9);
INSERT INTO `bom_config_temp` VALUES ('4047c722ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-01', '10000072', '砂轮前罩', '', NULL, '个', 1, 1.00, 0.00, 40, 3);
INSERT INTO `bom_config_temp` VALUES ('404e0b37ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-02', '10000073', '螺母', '', NULL, '个', 1, 1.00, 0.00, 41, 3);
INSERT INTO `bom_config_temp` VALUES ('4055cb7eab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-03', '10000074', '砂轮紧固盘', '', NULL, '个', 1, 1.00, 0.00, 42, 3);
INSERT INTO `bom_config_temp` VALUES ('405c06c6ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-04', '10000075', '砂轮套筒', '', NULL, '个', 1, 1.00, 0.00, 43, 3);
INSERT INTO `bom_config_temp` VALUES ('40626069ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-05', '10000076', '砂轮后罩', '', NULL, '个', 1, 1.00, 0.00, 44, 3);
INSERT INTO `bom_config_temp` VALUES ('4068be03ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'MJ7115.2-06', '10000077', '平衡块', '', NULL, '个', 1, 3.00, 0.00, 45, 3);
INSERT INTO `bom_config_temp` VALUES ('4072ee73ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'GB77-2000', '20000373', '内六角平端紧定螺钉', '8*10', NULL, '个', 1, 1.00, 0.00, 46, 3);
INSERT INTO `bom_config_temp` VALUES ('40794087ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'GB70.1-2000', '20000028', '内六角圆柱头螺钉', '6*25/代6*26', NULL, '个', 1, 3.00, 0.00, 47, 3);
INSERT INTO `bom_config_temp` VALUES ('408666eaab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'GB70.1-2000', '20000027', '内六角圆柱头螺钉', '6*20', NULL, '个', 1, 4.00, 0.00, 48, 3);
INSERT INTO `bom_config_temp` VALUES ('408c545aab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', '', '30001349', '钢球', '4', NULL, '个', 1, 3.00, 0.00, 49, 3);
INSERT INTO `bom_config_temp` VALUES ('40916b86ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'GB71-85', '20000300', '开槽锥端紧定螺钉', '6*6', NULL, '个', 1, 3.00, 0.00, 50, 3);
INSERT INTO `bom_config_temp` VALUES ('4097c5feab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', 'GB5783-2000', '20001106', '六角头螺栓  全螺纹', '6*40', NULL, '个', 1, 3.00, 0.00, 51, 3);
INSERT INTO `bom_config_temp` VALUES ('40a71318ab3a11e88c5f54e1adaf09dc', 'MJ7115.2', '80001102', '磨头部分', '', '', '30000329', '电机  MJ7115', '220V  550W  50HZ', NULL, '个', 1, 1.00, 0.00, 52, 3);
INSERT INTO `bom_config_temp` VALUES ('40aea77fab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-01', '10000001', '机座', '', NULL, '个', 1, 1.00, 0.00, 53, 2);
INSERT INTO `bom_config_temp` VALUES ('40b5240aab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-02', '10000002', '横向燕尾座', '', NULL, '个', 1, 1.00, 0.00, 54, 2);
INSERT INTO `bom_config_temp` VALUES ('40bb8129ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-03', '10000003', '下滑板', '', NULL, '个', 1, 1.00, 0.00, 55, 2);
INSERT INTO `bom_config_temp` VALUES ('40c5b4e4ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-04', '10000004', '工作台', '', NULL, '个', 1, 1.00, 0.00, 56, 2);
INSERT INTO `bom_config_temp` VALUES ('40cbf636ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-05', '10000005', '手柄杆', '', NULL, '个', 1, 3.00, 0.00, 57, 2);
INSERT INTO `bom_config_temp` VALUES ('40d24a77ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-06', '10000006', '齿条', '', NULL, '个', 1, 1.00, 0.00, 58, 2);
INSERT INTO `bom_config_temp` VALUES ('40d8a213ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-07', '10000007', '固定螺杆Ⅰ', '', NULL, '个', 1, 1.00, 0.00, 59, 2);
INSERT INTO `bom_config_temp` VALUES ('40e07828ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-08', '10000008', '上斜铁', '', NULL, '个', 1, 1.00, 0.00, 60, 2);
INSERT INTO `bom_config_temp` VALUES ('40e6a150ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-09', '10000009', '调整螺钉', '', NULL, '个', 1, 2.00, 0.00, 61, 2);
INSERT INTO `bom_config_temp` VALUES ('40f34b27ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-11', '10000012', '立向燕尾座', '', NULL, '个', 1, 1.00, 0.00, 62, 2);
INSERT INTO `bom_config_temp` VALUES ('40f9b434ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-12-02', '10000013', '压板', '', NULL, '个', 1, 1.00, 0.00, 63, 2);
INSERT INTO `bom_config_temp` VALUES ('41002990ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-12b', '10000014', '配重块（Ⅰ）', '', NULL, '个', 1, 1.00, 0.00, 64, 2);
INSERT INTO `bom_config_temp` VALUES ('410a4334ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-13a', '10000015', '固定螺杆Ⅱ', '', NULL, '个', 1, 1.00, 0.00, 65, 2);
INSERT INTO `bom_config_temp` VALUES ('41109d89ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-14', '10000016', '立向滑板', '', NULL, '个', 1, 1.00, 0.00, 66, 2);
INSERT INTO `bom_config_temp` VALUES ('41170848ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-15', '10000017', '滑轮轴', '', NULL, '个', 1, 1.00, 0.00, 67, 2);
INSERT INTO `bom_config_temp` VALUES ('41226cc2ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-17', '10000018', '压片', '', NULL, '个', 1, 1.00, 0.00, 68, 2);
INSERT INTO `bom_config_temp` VALUES ('4128ca2cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-18', '10000019', '滑轮', '', NULL, '个', 1, 1.00, 0.00, 69, 2);
INSERT INTO `bom_config_temp` VALUES ('41337236ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-19', '10000020', '立向丝母', '', NULL, '个', 1, 1.00, 0.00, 70, 2);
INSERT INTO `bom_config_temp` VALUES ('41396181ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-20c', '10000021', '开关盒', '', NULL, '个', 1, 1.00, 0.00, 71, 2);
INSERT INTO `bom_config_temp` VALUES ('413fb06cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-22', '10000022', '立柱盖', '', NULL, '个', 1, 1.00, 0.00, 72, 2);
INSERT INTO `bom_config_temp` VALUES ('4149e34dab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-23', '10000023', '立向丝杠', '', NULL, '个', 1, 1.00, 0.00, 73, 2);
INSERT INTO `bom_config_temp` VALUES ('415033c4ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-24', '10000024', '齿轮座', '', NULL, '个', 1, 1.00, 0.00, 74, 2);
INSERT INTO `bom_config_temp` VALUES ('415693feab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-25', '10000025', '螺旋齿轮', '', NULL, '个', 1, 1.00, 0.00, 75, 2);
INSERT INTO `bom_config_temp` VALUES ('4160ee64ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-26', '10000026', '螺旋齿轮轴', '', NULL, '个', 1, 1.00, 0.00, 76, 2);
INSERT INTO `bom_config_temp` VALUES ('416732f3ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-27', '10000027', '垫圈', '', NULL, '个', 1, 1.00, 0.00, 77, 2);
INSERT INTO `bom_config_temp` VALUES ('41736d97ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-28', '10000028', '齿轮罩', '', NULL, '个', 1, 1.00, 0.00, 78, 2);
INSERT INTO `bom_config_temp` VALUES ('417a3a9dab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-29', '10000029', '轴承挡圈', '', NULL, '个', 1, 2.00, 0.00, 79, 2);
INSERT INTO `bom_config_temp` VALUES ('4180ae4bab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB2089-1994', '20002133', '圆柱螺旋压缩弹簧', '0.7*6*9', NULL, '个', 1, 2.00, 0.00, 80, 2);
INSERT INTO `bom_config_temp` VALUES ('418711aaab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-31', '10000031', '立向轴承座', '', NULL, '个', 1, 1.00, 0.00, 81, 2);
INSERT INTO `bom_config_temp` VALUES ('418d52b1ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-31a', '10000032', '横向轴承座', '', NULL, '个', 1, 1.00, 0.00, 82, 2);
INSERT INTO `bom_config_temp` VALUES ('4193d736ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-32', '10000033', '垫套', '', NULL, '个', 1, 2.00, 0.00, 83, 2);
INSERT INTO `bom_config_temp` VALUES ('419a0077ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-33c', '10000036', '立向刻度环', '', NULL, '个', 1, 1.00, 0.00, 84, 2);
INSERT INTO `bom_config_temp` VALUES ('41a07d36ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-34', '10000037', '手轮', '', NULL, '个', 1, 2.00, 0.00, 85, 2);
INSERT INTO `bom_config_temp` VALUES ('41abdd0cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-36', '10000038', '横向丝杠', '', NULL, '个', 1, 1.00, 0.00, 86, 2);
INSERT INTO `bom_config_temp` VALUES ('41b230cfab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-37', '10000039', '下丝母', '', NULL, '个', 1, 1.00, 0.00, 87, 2);
INSERT INTO `bom_config_temp` VALUES ('41b88e1dab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-38b', '10000042', '横向刻度环', '', NULL, '个', 1, 1.00, 0.00, 88, 2);
INSERT INTO `bom_config_temp` VALUES ('41bee4e3ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-39', '10000043', '防护板', '', NULL, '个', 1, 1.00, 0.00, 89, 2);
INSERT INTO `bom_config_temp` VALUES ('41c5447fab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-41', '10000046', '限位杆Ⅱ', '', NULL, '个', 1, 2.00, 0.00, 90, 2);
INSERT INTO `bom_config_temp` VALUES ('41cba08dab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-42', '10000047', '斜齿轮', '', NULL, '个', 1, 1.00, 0.00, 91, 2);
INSERT INTO `bom_config_temp` VALUES ('41d21b60ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-43', '10000048', '纵向进给轴', '', NULL, '个', 1, 1.00, 0.00, 92, 2);
INSERT INTO `bom_config_temp` VALUES ('41d85f59ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-44', '10000049', '手柄体', '', NULL, '个', 1, 1.00, 0.00, 93, 2);
INSERT INTO `bom_config_temp` VALUES ('41deb8f3ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-45', '10000050', '限位杆Ⅰ', '', NULL, '个', 1, 1.00, 0.00, 94, 2);
INSERT INTO `bom_config_temp` VALUES ('41e51a82ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-46', '10000051', '下斜铁', '', NULL, '个', 1, 1.00, 0.00, 95, 2);
INSERT INTO `bom_config_temp` VALUES ('41eb6e4eab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115.1-49', '10000059', '限位板', '', NULL, '个', 1, 1.00, 0.00, 96, 2);
INSERT INTO `bom_config_temp` VALUES ('41f1d0c9ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000010', '内六角圆柱头螺钉', '5*10', NULL, '个', 1, 3.00, 0.00, 97, 2);
INSERT INTO `bom_config_temp` VALUES ('41f82f7eab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000438', '内六角圆柱头螺钉', '5*16', NULL, '个', 1, 11.00, 0.00, 98, 2);
INSERT INTO `bom_config_temp` VALUES ('41fe8688ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000014', '内六角圆柱头螺钉', '5*20', NULL, '个', 1, 2.00, 0.00, 99, 2);
INSERT INTO `bom_config_temp` VALUES ('4204e5ccab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000026', '内六角圆柱头螺钉', '6*16/代6*15', NULL, '个', 1, 2.00, 0.00, 100, 2);
INSERT INTO `bom_config_temp` VALUES ('420f11baab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000034', '内六角圆柱头螺钉', '6*55', NULL, '个', 1, 2.00, 0.00, 101, 2);
INSERT INTO `bom_config_temp` VALUES ('42156dc1ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000066', '内六角圆柱头螺钉', '10*25', NULL, '个', 1, 4.00, 0.00, 102, 2);
INSERT INTO `bom_config_temp` VALUES ('421be18eab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000068', '内六角圆柱头螺钉', '10*35', NULL, '个', 1, 4.00, 0.00, 103, 2);
INSERT INTO `bom_config_temp` VALUES ('42222401ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000064', '内六角圆柱头螺钉', '10*16', NULL, '个', 1, 4.00, 0.00, 104, 2);
INSERT INTO `bom_config_temp` VALUES ('4229b9a8ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB819.1-2000', '20000235', '十字槽沉头螺钉', '5*10', NULL, '个', 1, 6.00, 0.00, 105, 2);
INSERT INTO `bom_config_temp` VALUES ('4230124cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB818-2000', '20000191', '十字槽盘头螺钉', '5*8', NULL, '个', 1, 4.00, 0.00, 106, 2);
INSERT INTO `bom_config_temp` VALUES ('423cf18cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB118-2000', '20001945', '内螺纹圆锥销', '6*40', NULL, '个', 1, 6.00, 0.00, 107, 2);
INSERT INTO `bom_config_temp` VALUES ('42447660ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001235', '六角螺母', 'M8', NULL, '个', 1, 6.00, 0.00, 108, 2);
INSERT INTO `bom_config_temp` VALUES ('424acfa0ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001239', '六角螺母', 'M16', NULL, '个', 1, 1.00, 0.00, 109, 2);
INSERT INTO `bom_config_temp` VALUES ('42512ea7ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001236', '六角螺母', 'M10', NULL, '个', 1, 2.00, 0.00, 110, 2);
INSERT INTO `bom_config_temp` VALUES ('4258cb11ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB6170-2000', '20001237', '六角螺母', 'M12', NULL, '个', 1, 10.00, 0.00, 111, 2);
INSERT INTO `bom_config_temp` VALUES ('425f2ad0ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'MJ7115', '10000128', '钢丝绳成品', '', NULL, '个', 1, 1.00, 0.00, 112, 2);
INSERT INTO `bom_config_temp` VALUES ('4266caf5ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001110', '手柄球', '8*30', NULL, '个', 1, 3.00, 0.00, 113, 2);
INSERT INTO `bom_config_temp` VALUES ('426d2910ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB86-88', '20000436', '方头短圆柱锥端紧定螺钉', '12*60', NULL, '个', 1, 1.00, 0.00, 114, 2);
INSERT INTO `bom_config_temp` VALUES ('427e8765ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB5783-2000', '20001107', '六角头螺栓  全螺纹', '10*35', NULL, '个', 1, 4.00, 0.00, 115, 2);
INSERT INTO `bom_config_temp` VALUES ('42869e42ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB77-2000', '20000376', '内六角平端紧定螺钉', '8*20', NULL, '个', 1, 5.00, 0.00, 116, 2);
INSERT INTO `bom_config_temp` VALUES ('428cf897ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB97.1-2002', '20001456', '平垫圈', '5', NULL, '个', 1, 2.00, 0.00, 117, 2);
INSERT INTO `bom_config_temp` VALUES ('429d80a5ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB97.1-2002', '20001459', '平垫圈', '10', NULL, '个', 1, 4.00, 0.00, 118, 2);
INSERT INTO `bom_config_temp` VALUES ('42a52137ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001207', '吊环', '吊环   M16', NULL, '个', 1, 1.00, 0.00, 119, 2);
INSERT INTO `bom_config_temp` VALUES ('42ab7de2ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001455', '轴承', '1000902 (61902)', NULL, '个', 1, 2.00, 0.00, 120, 2);
INSERT INTO `bom_config_temp` VALUES ('42b1e3b5ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001559', '轴承', '8102        (51102)', NULL, '个', 1, 2.00, 0.00, 121, 2);
INSERT INTO `bom_config_temp` VALUES ('42b98199ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001512', '轴承', '6202/2Z', NULL, '个', 1, 2.00, 0.00, 122, 2);
INSERT INTO `bom_config_temp` VALUES ('42bfd8bbab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB1096-1979', '20001705', '普通平键A型', '4*20', NULL, '个', 1, 2.00, 0.00, 123, 2);
INSERT INTO `bom_config_temp` VALUES ('42c780c2ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB1096-1979', '20001703', '普通平键A型', '4*16', NULL, '个', 1, 1.00, 0.00, 124, 2);
INSERT INTO `bom_config_temp` VALUES ('42cf206cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001351', '钢球', '6', NULL, '个', 1, 2.00, 0.00, 125, 2);
INSERT INTO `bom_config_temp` VALUES ('42d6bd9cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001090', '铆钉', '2*5', NULL, '个', 1, 8.00, 0.00, 126, 2);
INSERT INTO `bom_config_temp` VALUES ('42e23043ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB117-2000', '20001918', '圆锥销 B型', '5*30', NULL, '个', 1, 1.00, 0.00, 127, 2);
INSERT INTO `bom_config_temp` VALUES ('42edaa61ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB117-2000', '20001921', '圆锥销 B型', '5*50', NULL, '个', 1, 1.00, 0.00, 128, 2);
INSERT INTO `bom_config_temp` VALUES ('4304bb4cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000024', '内六角圆柱头螺钉', '6*12', NULL, '个', 1, 6.00, 0.00, 129, 2);
INSERT INTO `bom_config_temp` VALUES ('431504e1ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000027', '内六角圆柱头螺钉', '6*20', NULL, '个', 1, 2.00, 0.00, 130, 2);
INSERT INTO `bom_config_temp` VALUES ('4321dca7ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB818-2000', '20000193', '十字槽盘头螺钉', '6*12', NULL, '个', 1, 4.00, 0.00, 131, 2);
INSERT INTO `bom_config_temp` VALUES ('432e742cab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB70.1-2000', '20000028', '内六角圆柱头螺钉', '6*25/代6*26', NULL, '个', 1, 5.00, 0.00, 132, 2);
INSERT INTO `bom_config_temp` VALUES ('43362eccab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB119-2000', '20001990', '圆柱销 B型', '6*45', NULL, '个', 1, 1.00, 0.00, 133, 2);
INSERT INTO `bom_config_temp` VALUES ('4342b576ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB77-2000', '20000375', '内六角平端紧定螺钉', '8*16', NULL, '个', 1, 1.00, 0.00, 134, 2);
INSERT INTO `bom_config_temp` VALUES ('434a81d2ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', 'GB97.1-2002', '20001460', '平垫圈', '12', NULL, '个', 1, 8.00, 0.00, 135, 2);
INSERT INTO `bom_config_temp` VALUES ('4352154dab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001123', '转动手柄', 'M8*63   暗', NULL, '套', 1, 2.00, 0.00, 136, 2);
INSERT INTO `bom_config_temp` VALUES ('435b1fb6ab3a11e88c5f54e1adaf09dc', 'MJ7115.1', '80001101', '基座部分', '', '', '30001337', 'GB1155-74油杯', 'φ8', NULL, '个', 1, 1.00, 0.00, 137, 2);
INSERT INTO `bom_config_temp` VALUES ('43629a75ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30005037', '电源指示灯', 'PL AD16-16C/g-28(APT)220V', NULL, '个', 1, 1.00, 0.00, 138, 5);
INSERT INTO `bom_config_temp` VALUES ('436b8830ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30005038', '工作指示灯', 'PL AD16-16C/w-28(APT)220V', NULL, '个', 1, 1.00, 0.00, 139, 5);
INSERT INTO `bom_config_temp` VALUES ('43734782ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000245', '护套线(米)', '3*1.5-VDE 含黄绿接地', NULL, 'M', 1, 0.70, 0.00, 140, 5);
INSERT INTO `bom_config_temp` VALUES ('43784c85ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30009284', '多股铜芯线线', '0.75   红', NULL, 'M', 1, 0.18, 0.00, 141, 5);
INSERT INTO `bom_config_temp` VALUES ('437fe148ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000124', '金属软管(蛇皮管)(米)', '13   3/8\"', NULL, 'M', 1, 0.50, 0.00, 142, 5);
INSERT INTO `bom_config_temp` VALUES ('439d35a3ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000005', '接线端子', 'RNBS2-5（φ5）', NULL, '个', 1, 6.00, 0.00, 143, 5);
INSERT INTO `bom_config_temp` VALUES ('43ba9cafab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000011', '接线端子', 'UT2.5-4（φ4）', NULL, '个', 1, 8.00, 0.00, 144, 5);
INSERT INTO `bom_config_temp` VALUES ('43c71c5aab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', 'GB862.2-1987', '20001515', '外锯齿锁紧垫圈', '5', NULL, '个', 1, 3.00, 0.00, 145, 5);
INSERT INTO `bom_config_temp` VALUES ('43d14bc0ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', 'GB818-2000', '20000179', '十字槽盘头螺钉', '4*8', NULL, '个', 1, 2.00, 0.00, 146, 5);
INSERT INTO `bom_config_temp` VALUES ('43db78deab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', 'GB818-2000', '20000180', '十字槽盘头螺钉', '5*10', NULL, '个', 1, 10.00, 0.00, 147, 5);
INSERT INTO `bom_config_temp` VALUES ('43e1d4e5ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000115', '软管接头', '13 /M20*1.5常用', NULL, '个', 1, 2.00, 0.00, 148, 5);
INSERT INTO `bom_config_temp` VALUES ('43eabf44ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30001820', '打火机', '', NULL, '个', 1, 0.20, 0.00, 149, 5);
INSERT INTO `bom_config_temp` VALUES ('43f25aaeab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000085', '(线号管)', 'ZMY-1.5(1盘100M)', NULL, 'M', 1, 1.00, 0.00, 150, 5);
INSERT INTO `bom_config_temp` VALUES ('43fc91c9ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000086', '(线号管)', 'ZMY-2.5(1盘80M)', NULL, 'M', 1, 1.00, 0.00, 151, 5);
INSERT INTO `bom_config_temp` VALUES ('440d12eeab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000074', '热缩管(米)', '3', NULL, 'M', 1, 0.30, 0.00, 152, 5);
INSERT INTO `bom_config_temp` VALUES ('4419db20ab3a11e88c5f54e1adaf09dc', 'MJ7115.4', '80001104', '电气部分', '', '', '30000007', '接线端子', 'UT1.5-3', NULL, '个', 1, 8.00, 0.00, 153, 5);

-- ----------------------------
-- Table structure for bom_stock
-- ----------------------------
DROP TABLE IF EXISTS `bom_stock`;
CREATE TABLE `bom_stock`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpspcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货型号',
  `ccomunitname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主计量单位',
  `quantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '现存数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bom_stock
-- ----------------------------
INSERT INTO `bom_stock` VALUES ('1adc43fbaa9111e88c5f54e1adaf09dc', '10000002', 'MJ7115.1-02', '横向燕尾座', '', '个', 123.00);
INSERT INTO `bom_stock` VALUES ('1aee97a9aa9111e88c5f54e1adaf09dc', '10000003', 'MJ7115.1-03', '下滑板', '', '个', 76.00);
INSERT INTO `bom_stock` VALUES ('1afe9653aa9111e88c5f54e1adaf09dc', '10000004', 'MJ7115.1-04', '工作台', '', '个', 23.00);
INSERT INTO `bom_stock` VALUES ('1b1d9ef2aa9111e88c5f54e1adaf09dc', '10000005', 'MJ7115.1-05', '手柄杆', '', '个', 28.00);
INSERT INTO `bom_stock` VALUES ('1b2fa896aa9111e88c5f54e1adaf09dc', '10000012', 'MJ7115.1-11', '立向燕尾座', '', '个', 7.00);
INSERT INTO `bom_stock` VALUES ('1b43b8d9aa9111e88c5f54e1adaf09dc', '10000013', 'MJ7115.1-12-02', '压板', '', '个', 51.00);
INSERT INTO `bom_stock` VALUES ('1b5cd8fbaa9111e88c5f54e1adaf09dc', '10000016', 'MJ7115.1-14', '立向滑板', '', '个', 96.00);
INSERT INTO `bom_stock` VALUES ('1b69fe53aa9111e88c5f54e1adaf09dc', '10000020', 'MJ7115.1-19', '立向丝母', '', '个', 9.00);
INSERT INTO `bom_stock` VALUES ('1b746489aa9111e88c5f54e1adaf09dc', '10000021', 'MJ7115.1-20c', '开关盒', '', '个', 9.00);
INSERT INTO `bom_stock` VALUES ('1b7aea04aa9111e88c5f54e1adaf09dc', '10000026', 'MJ7115.1-26', '螺旋齿轮轴', '', '个', 4.00);
INSERT INTO `bom_stock` VALUES ('1b836963aa9111e88c5f54e1adaf09dc', '10000031', 'MJ7115.1-31', '立向轴承座', '', '个', 22.00);
INSERT INTO `bom_stock` VALUES ('1b88df55aa9111e88c5f54e1adaf09dc', '10000037', 'MJ7115.1-34', '手轮', '', '个', 125.00);
INSERT INTO `bom_stock` VALUES ('1b8e09ebaa9111e88c5f54e1adaf09dc', '10000039', 'MJ7115.1-37', '下丝母', '', '个', 33.00);
INSERT INTO `bom_stock` VALUES ('1b93253aaa9111e88c5f54e1adaf09dc', '10000040', 'MJ7115.1-38', '横向刻度环', '', '个', 80.00);
INSERT INTO `bom_stock` VALUES ('1b9983bbaa9111e88c5f54e1adaf09dc', '10000047', 'MJ7115.1-42', '斜齿轮', '', '个', 40.00);
INSERT INTO `bom_stock` VALUES ('1b9fca66aa9111e88c5f54e1adaf09dc', '10000059', 'MJ7115.1-49', '限位板', '', '个', 19.00);
INSERT INTO `bom_stock` VALUES ('1ba62a7aaa9111e88c5f54e1adaf09dc', '10000075', 'MJ7115.2-04', '砂轮套筒', '', '个', 86.00);
INSERT INTO `bom_stock` VALUES ('1bab3e69aa9111e88c5f54e1adaf09dc', '10000076', 'MJ7115.2-05', '砂轮后罩', '', '个', 17.00);
INSERT INTO `bom_stock` VALUES ('1bb04c2eaa9111e88c5f54e1adaf09dc', '10000089', 'MJ7115.3-00', '箱式底座', '', '个', 1.00);
INSERT INTO `bom_stock` VALUES ('1bb5683faa9111e88c5f54e1adaf09dc', '10000091', 'MJ7115.3-02', '隔板', '', '个', 1.00);
INSERT INTO `bom_stock` VALUES ('1bbb5eceaa9111e88c5f54e1adaf09dc', '10000116', 'MJ7115F.5-01', '砂轮平衡轴', '', '个', 15.00);
INSERT INTO `bom_stock` VALUES ('1bc0fa98aa9111e88c5f54e1adaf09dc', '10000117', 'MJ7115-F.6', '开槽扳手', '', '个', 197.00);

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);

-- ----------------------------
-- Table structure for product_plan
-- ----------------------------
DROP TABLE IF EXISTS `product_plan`;
CREATE TABLE `product_plan`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `cinvcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货代码',
  `fquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '要求产量',
  `planstarttime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '计划开始时间',
  `planendtime` timestamp(6) NOT NULL COMMENT '计划开始时间',
  `endtime` timestamp(6) NOT NULL COMMENT '计划开始时间',
  `cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancomplete` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_plan
-- ----------------------------
INSERT INTO `product_plan` VALUES ('c88712e4ab5c11e88c5f54e1adaf09dc', '1111', '90004200', 'MJ7115', 10.00, '2018-08-15 15:29:21.000000', '2018-08-14 15:25:22.000000', '2018-08-29 15:25:29.000000', '简式磨床', '1');
INSERT INTO `product_plan` VALUES ('c88712e4ab5c11e88c5f54e1adaf09dd', '2222', '90004200', 'MJ7115', 11.00, '2018-08-29 15:30:17.247133', '2018-08-14 15:25:22.000000', '2018-08-29 15:25:29.000000', '简式磨床', '0');
INSERT INTO `product_plan` VALUES ('c88712e4ab5c11e88c5f54e1adaf09de', '3333', '90004200', 'MJ7115', 12.00, '2018-08-29 15:50:28.430296', '2018-08-14 15:25:22.000000', '2018-08-29 15:25:29.000000', '简式磨床', '2');

-- ----------------------------
-- Table structure for purchase_plan
-- ----------------------------
DROP TABLE IF EXISTS `purchase_plan`;
CREATE TABLE `purchase_plan`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购编号',
  `cinvcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货型号',
  `fquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '采购数量',
  `plantime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '计划完成时间',
  `endtime` timestamp(6) NOT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_plan
-- ----------------------------
INSERT INTO `purchase_plan` VALUES ('952c07d1ab5b11e88c5f54e1adaf09dc', '123', '30005037', '', '电源指示灯', 'PL AD16-16C/g-28(APT)220V', 100.00, '2018-08-29 15:18:36.482415', '2018-08-29 15:18:36.482415');
INSERT INTO `purchase_plan` VALUES ('98da9d93ab5b11e88c5f54e1adaf09dc', '234', '20001515', 'GB862.2-1987', '外锯齿锁紧垫圈', '5', 200.00, '2018-08-29 15:18:36.482415', '2018-08-29 15:18:36.482415');

-- ----------------------------
-- Table structure for purchase_result
-- ----------------------------
DROP TABLE IF EXISTS `purchase_result`;
CREATE TABLE `purchase_result`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `cinvcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货编码',
  `cinvaddcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货代码',
  `cinvname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货名称',
  `cinvstd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存货型号',
  `fquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '要求产量',
  `stockquantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '库存量',
  `purchasequantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '预计采购量',
  `planstarttime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '计划开始时间',
  `quantity` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '可用数量',
  `issatisfied` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否满足',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_result
-- ----------------------------
INSERT INTO `purchase_result` VALUES ('6ef0e9f2ab7611e88c5f54e1adaf09dc', NULL, '10000114', 'MJ7115.F4', '调整垫脚', '', 15.00, 0.00, 40.00, '2018-08-29 18:42:01.012977', 25.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef0efe8ab7611e88c5f54e1adaf09dc', NULL, '10000116', 'MJ7115F.5-01', '砂轮平衡轴', '', 62.00, 15.00, 87.00, '2018-08-29 18:42:01.012977', 40.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef0f111ab7611e88c5f54e1adaf09dc', NULL, '10000104', 'MJ7115F.1-01', '扳手体', '', 63.00, 0.00, 14.00, '2018-08-29 18:42:04.571354', -49.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef0f236ab7611e88c5f54e1adaf09dc', NULL, '10000105', 'MJ7115F.1-02', '销子', '', 33.00, 0.00, 9.00, '2018-08-29 18:42:04.571354', -24.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef0f270ab7611e88c5f54e1adaf09dc', NULL, '10000117', 'MJ7115-F.6', '开槽扳手', '', 73.00, 197.00, 4.00, '2018-08-29 18:42:01.012977', 128.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef0f2a7ab7611e88c5f54e1adaf09dc', NULL, '20001462', 'GB97.1-2002', '平垫圈', '16', 70.00, 0.00, 95.00, '2018-08-29 18:42:01.012977', 25.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef857c9ab7611e88c5f54e1adaf09dc', NULL, '20001308', 'GB812-1988', '圆螺母', 'M16*1.5', 29.00, 0.00, 61.00, '2018-08-29 18:42:01.012977', 32.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8585fab7611e88c5f54e1adaf09dc', NULL, '20001113', 'GB5783-2000', '六角头螺栓  全螺纹', '12*75', 37.00, 0.00, 20.00, '2018-08-29 18:42:04.571354', -17.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef858b4ab7611e88c5f54e1adaf09dc', NULL, '30001106', '', '砂轮', '砂轮180*31.75*13', 97.00, 0.00, 18.00, '2018-08-29 18:42:04.571354', -79.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef858efab7611e88c5f54e1adaf09dc', NULL, '30001067', '', '螺丝刀', '100十', 77.00, 0.00, 31.00, '2018-08-29 18:42:04.571354', -46.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85922ab7611e88c5f54e1adaf09dc', NULL, '30001068', '', '螺丝刀', '100一', 93.00, 0.00, 2.00, '2018-08-29 18:42:04.571354', -91.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8595fab7611e88c5f54e1adaf09dc', NULL, '30001053', '', '呆板手', '17-19', 34.00, 0.00, 17.00, '2018-08-29 18:42:04.571354', -17.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85992ab7611e88c5f54e1adaf09dc', NULL, '30001033', '', '活板手', '6/150', 90.00, 0.00, 81.00, '2018-08-29 18:42:04.571354', -9.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef859c2ab7611e88c5f54e1adaf09dc', NULL, '30001021', '', '内六角扳手', '3', 50.00, 0.00, 52.00, '2018-08-29 18:42:01.012977', 2.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef859f2ab7611e88c5f54e1adaf09dc', NULL, '30001022', '', '内六角扳手', '4', 79.00, 0.00, 20.00, '2018-08-29 18:42:04.571354', -59.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85a22ab7611e88c5f54e1adaf09dc', NULL, '30001023', '', '内六角扳手', '5', 46.00, 0.00, 43.00, '2018-08-29 18:42:04.571354', -3.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85a52ab7611e88c5f54e1adaf09dc', NULL, '20001090', 'GB37-1988', 'T形槽用螺栓', '12*35', 92.00, 0.00, 55.00, '2018-08-29 18:42:04.571354', -37.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85a88ab7611e88c5f54e1adaf09dc', NULL, '20001460', 'GB97.1-2002', '平垫圈', '12', 23.00, 0.00, 47.00, '2018-08-29 18:42:01.012977', 24.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85ac2ab7611e88c5f54e1adaf09dc', NULL, '20001448', 'GB93-1987', '标准型弹性垫圈', '12', 41.00, 0.00, 70.00, '2018-08-29 18:42:01.012977', 29.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85b25ab7611e88c5f54e1adaf09dc', NULL, '20001468', 'GB96.2-2002', '大垫圈', '5', 36.00, 0.00, 8.00, '2018-08-29 18:42:04.571354', -28.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85b58ab7611e88c5f54e1adaf09dc', NULL, '30001842', '', '工具袋', '带字 宽255长370', 59.00, 0.00, 33.00, '2018-08-29 18:42:04.571354', -26.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85b8cab7611e88c5f54e1adaf09dc', NULL, '30001821', '', '方便袋', '大号', 87.00, 0.00, 40.00, '2018-08-29 18:42:04.571354', -47.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85bc6ab7611e88c5f54e1adaf09dc', NULL, '30001822', '', '方便袋', '小号', 58.00, 0.00, 1.00, '2018-08-29 18:42:04.571354', -57.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85bf9ab7611e88c5f54e1adaf09dc', NULL, '30001825', '', '透明胶带', '', 29.00, 0.00, 84.00, '2018-08-29 18:42:01.012977', 55.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85c2cab7611e88c5f54e1adaf09dc', NULL, '30008686', '', '绝缘胶布', '', 72.00, 0.00, 19.00, '2018-08-29 18:42:04.571354', -53.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85c5cab7611e88c5f54e1adaf09dc', NULL, '30008690', '', '焊锡丝', '0.8MM', 72.00, 0.00, 45.00, '2018-08-29 18:42:04.571354', -27.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85c8cab7611e88c5f54e1adaf09dc', NULL, '30001836', '', '扣取纸', '', 45.00, 0.00, 67.00, '2018-08-29 18:42:01.012977', 22.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85cbfab7611e88c5f54e1adaf09dc', NULL, '10000106', '', '砂轮修整刀', 'MJ7115F.2-00', 10.00, 0.00, 0.00, '2018-08-29 18:42:04.571354', -10.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85cf2ab7611e88c5f54e1adaf09dc', NULL, '10000107', 'MJ7115F.2-01', '砂轮修整刀座', '', 14.00, 0.00, 99.00, '2018-08-29 18:42:01.012977', 85.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85d4bab7611e88c5f54e1adaf09dc', NULL, '30001659', '', '手动润滑泵', 'JX-LK-8TR  英文 MJ7115', 41.00, 0.00, 98.00, '2018-08-29 18:42:01.012977', 57.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85d81ab7611e88c5f54e1adaf09dc', NULL, '10000072', 'MJ7115.2-01', '砂轮前罩', '', 65.00, 0.00, 94.00, '2018-08-29 18:42:01.012977', 29.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85db4ab7611e88c5f54e1adaf09dc', NULL, '10000073', 'MJ7115.2-02', '螺母', '', 1.00, 0.00, 73.00, '2018-08-29 18:42:01.012977', 72.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85df2ab7611e88c5f54e1adaf09dc', NULL, '10000074', 'MJ7115.2-03', '砂轮紧固盘', '', 13.00, 0.00, 86.00, '2018-08-29 18:42:01.012977', 73.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85e22ab7611e88c5f54e1adaf09dc', NULL, '10000075', 'MJ7115.2-04', '砂轮套筒', '', 60.00, 86.00, 11.00, '2018-08-29 18:42:01.012977', 37.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85e52ab7611e88c5f54e1adaf09dc', NULL, '10000076', 'MJ7115.2-05', '砂轮后罩', '', 62.00, 17.00, 97.00, '2018-08-29 18:42:01.012977', 52.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85e81ab7611e88c5f54e1adaf09dc', NULL, '10000077', 'MJ7115.2-06', '平衡块', '', 32.00, 0.00, 52.00, '2018-08-29 18:42:01.012977', 20.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85eb4ab7611e88c5f54e1adaf09dc', NULL, '20000373', 'GB77-2000', '内六角平端紧定螺钉', '8*10', 73.00, 0.00, 71.00, '2018-08-29 18:42:04.571354', -2.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85ee8ab7611e88c5f54e1adaf09dc', NULL, '20000028', 'GB70.1-2000', '内六角圆柱头螺钉', '6*25/代6*26', 69.00, 0.00, 99.00, '2018-08-29 18:42:01.012977', 30.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85f1eab7611e88c5f54e1adaf09dc', NULL, '20000027', 'GB70.1-2000', '内六角圆柱头螺钉', '6*20', 29.00, 0.00, 82.00, '2018-08-29 18:42:01.012977', 53.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85f52ab7611e88c5f54e1adaf09dc', NULL, '30001349', '', '钢球', '4', 38.00, 0.00, 13.00, '2018-08-29 18:42:04.571354', -25.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85f85ab7611e88c5f54e1adaf09dc', NULL, '20000300', 'GB71-85', '开槽锥端紧定螺钉', '6*6', 1.00, 0.00, 19.00, '2018-08-29 18:42:01.012977', 18.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef85fb8ab7611e88c5f54e1adaf09dc', NULL, '20001106', 'GB5783-2000', '六角头螺栓  全螺纹', '6*40', 95.00, 0.00, 58.00, '2018-08-29 18:42:04.571354', -37.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef85ff9ab7611e88c5f54e1adaf09dc', NULL, '30000329', '', '电机  MJ7115', '220V  550W  50HZ', 69.00, 0.00, 31.00, '2018-08-29 18:42:04.571354', -38.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8602fab7611e88c5f54e1adaf09dc', NULL, '10000001', 'MJ7115.1-01', '机座', '', 63.00, 0.00, 83.00, '2018-08-29 18:42:01.012977', 20.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8605fab7611e88c5f54e1adaf09dc', NULL, '10000002', 'MJ7115.1-02', '横向燕尾座', '', 6.00, 123.00, 21.00, '2018-08-29 18:42:01.012977', 138.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8608fab7611e88c5f54e1adaf09dc', NULL, '10000003', 'MJ7115.1-03', '下滑板', '', 42.00, 76.00, 59.00, '2018-08-29 18:42:01.012977', 93.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef860c2ab7611e88c5f54e1adaf09dc', NULL, '10000004', 'MJ7115.1-04', '工作台', '', 92.00, 23.00, 30.00, '2018-08-29 18:42:04.571354', -39.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef860f2ab7611e88c5f54e1adaf09dc', NULL, '10000005', 'MJ7115.1-05', '手柄杆', '', 36.00, 28.00, 72.00, '2018-08-29 18:42:01.012977', 64.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86122ab7611e88c5f54e1adaf09dc', NULL, '10000006', 'MJ7115.1-06', '齿条', '', 3.00, 0.00, 74.00, '2018-08-29 18:42:01.012977', 71.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86152ab7611e88c5f54e1adaf09dc', NULL, '10000007', 'MJ7115.1-07', '固定螺杆Ⅰ', '', 8.00, 0.00, 54.00, '2018-08-29 18:42:01.012977', 46.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86181ab7611e88c5f54e1adaf09dc', NULL, '10000008', 'MJ7115.1-08', '上斜铁', '', 30.00, 0.00, 50.00, '2018-08-29 18:42:01.012977', 20.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef861b1ab7611e88c5f54e1adaf09dc', NULL, '10000009', 'MJ7115.1-09', '调整螺钉', '', 27.00, 0.00, 86.00, '2018-08-29 18:42:01.012977', 59.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef861efab7611e88c5f54e1adaf09dc', NULL, '10000012', 'MJ7115.1-11', '立向燕尾座', '', 46.00, 7.00, 79.00, '2018-08-29 18:42:01.012977', 40.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86222ab7611e88c5f54e1adaf09dc', NULL, '10000013', 'MJ7115.1-12-02', '压板', '', 49.00, 51.00, 41.00, '2018-08-29 18:42:01.012977', 43.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86255ab7611e88c5f54e1adaf09dc', NULL, '10000014', 'MJ7115.1-12b', '配重块（Ⅰ）', '', 8.00, 0.00, 66.00, '2018-08-29 18:42:01.012977', 58.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86288ab7611e88c5f54e1adaf09dc', NULL, '10000015', 'MJ7115.1-13a', '固定螺杆Ⅱ', '', 92.00, 0.00, 9.00, '2018-08-29 18:42:04.571354', -83.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef862b8ab7611e88c5f54e1adaf09dc', NULL, '10000016', 'MJ7115.1-14', '立向滑板', '', 39.00, 96.00, 46.00, '2018-08-29 18:42:01.012977', 103.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef862ebab7611e88c5f54e1adaf09dc', NULL, '10000017', 'MJ7115.1-15', '滑轮轴', '', 17.00, 0.00, 5.00, '2018-08-29 18:42:04.571354', -12.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8631bab7611e88c5f54e1adaf09dc', NULL, '10000018', 'MJ7115.1-17', '压片', '', 71.00, 0.00, 88.00, '2018-08-29 18:42:01.012977', 17.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86355ab7611e88c5f54e1adaf09dc', NULL, '10000019', 'MJ7115.1-18', '滑轮', '', 4.00, 0.00, 24.00, '2018-08-29 18:42:01.012977', 20.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86388ab7611e88c5f54e1adaf09dc', NULL, '10000020', 'MJ7115.1-19', '立向丝母', '', 9.00, 9.00, 56.00, '2018-08-29 18:42:01.012977', 56.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef863b8ab7611e88c5f54e1adaf09dc', NULL, '10000021', 'MJ7115.1-20c', '开关盒', '', 32.00, 9.00, 10.00, '2018-08-29 18:42:04.571354', -13.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef863e8ab7611e88c5f54e1adaf09dc', NULL, '10000022', 'MJ7115.1-22', '立柱盖', '', 32.00, 0.00, 80.00, '2018-08-29 18:42:01.012977', 48.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86436ab7611e88c5f54e1adaf09dc', NULL, '10000023', 'MJ7115.1-23', '立向丝杠', '', 65.00, 0.00, 72.00, '2018-08-29 18:42:01.012977', 7.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86469ab7611e88c5f54e1adaf09dc', NULL, '10000024', 'MJ7115.1-24', '齿轮座', '', 32.00, 0.00, 18.00, '2018-08-29 18:42:04.571354', -14.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86499ab7611e88c5f54e1adaf09dc', NULL, '10000025', 'MJ7115.1-25', '螺旋齿轮', '', 63.00, 0.00, 78.00, '2018-08-29 18:42:01.012977', 15.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef864c9ab7611e88c5f54e1adaf09dc', NULL, '10000026', 'MJ7115.1-26', '螺旋齿轮轴', '', 22.00, 4.00, 34.00, '2018-08-29 18:42:01.012977', 16.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef864f9ab7611e88c5f54e1adaf09dc', NULL, '10000027', 'MJ7115.1-27', '垫圈', '', 21.00, 0.00, 38.00, '2018-08-29 18:42:01.012977', 17.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86529ab7611e88c5f54e1adaf09dc', NULL, '10000028', 'MJ7115.1-28', '齿轮罩', '', 39.00, 0.00, 86.00, '2018-08-29 18:42:01.012977', 47.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86558ab7611e88c5f54e1adaf09dc', NULL, '10000029', 'MJ7115.1-29', '轴承挡圈', '', 31.00, 0.00, 18.00, '2018-08-29 18:42:04.571354', -13.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8658cab7611e88c5f54e1adaf09dc', NULL, '20002133', 'GB2089-1994', '圆柱螺旋压缩弹簧', '0.7*6*9', 38.00, 0.00, 31.00, '2018-08-29 18:42:04.571354', -7.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef865bbab7611e88c5f54e1adaf09dc', NULL, '10000031', 'MJ7115.1-31', '立向轴承座', '', 0.00, 22.00, 0.00, '2018-08-29 18:40:47.515776', 22.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef865efab7611e88c5f54e1adaf09dc', NULL, '10000032', 'MJ7115.1-31a', '横向轴承座', '', 84.00, 0.00, 11.00, '2018-08-29 18:42:04.571354', -73.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86622ab7611e88c5f54e1adaf09dc', NULL, '10000033', 'MJ7115.1-32', '垫套', '', 23.00, 0.00, 56.00, '2018-08-29 18:42:01.012977', 33.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86652ab7611e88c5f54e1adaf09dc', NULL, '10000036', 'MJ7115.1-33c', '立向刻度环', '', 65.00, 0.00, 45.00, '2018-08-29 18:42:04.571354', -20.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86681ab7611e88c5f54e1adaf09dc', NULL, '10000037', 'MJ7115.1-34', '手轮', '', 53.00, 125.00, 56.00, '2018-08-29 18:42:01.012977', 128.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef866bfab7611e88c5f54e1adaf09dc', NULL, '10000038', 'MJ7115.1-36', '横向丝杠', '', 71.00, 0.00, 49.00, '2018-08-29 18:42:04.571354', -22.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef866f2ab7611e88c5f54e1adaf09dc', NULL, '10000039', 'MJ7115.1-37', '下丝母', '', 95.00, 33.00, 74.00, '2018-08-29 18:42:01.012977', 12.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86722ab7611e88c5f54e1adaf09dc', NULL, '10000042', 'MJ7115.1-38b', '横向刻度环', '', 65.00, 0.00, 26.00, '2018-08-29 18:42:04.571354', -39.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86755ab7611e88c5f54e1adaf09dc', NULL, '10000043', 'MJ7115.1-39', '防护板', '', 38.00, 0.00, 9.00, '2018-08-29 18:42:04.571354', -29.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86785ab7611e88c5f54e1adaf09dc', NULL, '10000046', 'MJ7115.1-41', '限位杆Ⅱ', '', 96.00, 0.00, 67.00, '2018-08-29 18:42:04.571354', -29.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef867b4ab7611e88c5f54e1adaf09dc', NULL, '10000047', 'MJ7115.1-42', '斜齿轮', '', 67.00, 40.00, 9.00, '2018-08-29 18:42:04.571354', -18.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef867e4ab7611e88c5f54e1adaf09dc', NULL, '10000048', 'MJ7115.1-43', '纵向进给轴', '', 49.00, 0.00, 45.00, '2018-08-29 18:42:04.571354', -4.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86814ab7611e88c5f54e1adaf09dc', NULL, '10000049', 'MJ7115.1-44', '手柄体', '', 42.00, 0.00, 97.00, '2018-08-29 18:42:01.012977', 55.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86881ab7611e88c5f54e1adaf09dc', NULL, '10000050', 'MJ7115.1-45', '限位杆Ⅰ', '', 66.00, 0.00, 52.00, '2018-08-29 18:42:04.571354', -14.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef868b4ab7611e88c5f54e1adaf09dc', NULL, '10000051', 'MJ7115.1-46', '下斜铁', '', 2.00, 0.00, 68.00, '2018-08-29 18:42:01.012977', 66.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef868e4ab7611e88c5f54e1adaf09dc', NULL, '10000059', 'MJ7115.1-49', '限位板', '', 14.00, 19.00, 86.00, '2018-08-29 18:42:01.012977', 91.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86914ab7611e88c5f54e1adaf09dc', NULL, '20000010', 'GB70.1-2000', '内六角圆柱头螺钉', '5*10', 63.00, 0.00, 26.00, '2018-08-29 18:42:04.571354', -37.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8694bab7611e88c5f54e1adaf09dc', NULL, '20000438', 'GB70.1-2000', '内六角圆柱头螺钉', '5*16', 74.00, 0.00, 73.00, '2018-08-29 18:42:04.571354', -1.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8697eab7611e88c5f54e1adaf09dc', NULL, '20000014', 'GB70.1-2000', '内六角圆柱头螺钉', '5*20', 80.00, 0.00, 89.00, '2018-08-29 18:42:01.012977', 9.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef869b1ab7611e88c5f54e1adaf09dc', NULL, '20000026', 'GB70.1-2000', '内六角圆柱头螺钉', '6*16/代6*15', 80.00, 0.00, 23.00, '2018-08-29 18:42:04.571354', -57.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef869e1ab7611e88c5f54e1adaf09dc', NULL, '20000034', 'GB70.1-2000', '内六角圆柱头螺钉', '6*55', 58.00, 0.00, 51.00, '2018-08-29 18:42:04.571354', -7.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86a14ab7611e88c5f54e1adaf09dc', NULL, '20000066', 'GB70.1-2000', '内六角圆柱头螺钉', '10*25', 54.00, 0.00, 88.00, '2018-08-29 18:42:01.012977', 34.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86a4bab7611e88c5f54e1adaf09dc', NULL, '20000068', 'GB70.1-2000', '内六角圆柱头螺钉', '10*35', 94.00, 0.00, 84.00, '2018-08-29 18:42:04.571354', -10.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86a7eab7611e88c5f54e1adaf09dc', NULL, '20000064', 'GB70.1-2000', '内六角圆柱头螺钉', '10*16', 8.00, 0.00, 58.00, '2018-08-29 18:42:01.012977', 50.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86aaeab7611e88c5f54e1adaf09dc', NULL, '20000235', 'GB819.1-2000', '十字槽沉头螺钉', '5*10', 61.00, 0.00, 40.00, '2018-08-29 18:42:04.571354', -21.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86ae1ab7611e88c5f54e1adaf09dc', NULL, '20000191', 'GB818-2000', '十字槽盘头螺钉', '5*8', 80.00, 0.00, 24.00, '2018-08-29 18:42:04.571354', -56.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86b14ab7611e88c5f54e1adaf09dc', NULL, '20001945', 'GB118-2000', '内螺纹圆锥销', '6*40', 16.00, 0.00, 3.00, '2018-08-29 18:42:04.571354', -13.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86b5cab7611e88c5f54e1adaf09dc', NULL, '20001235', 'GB6170-2000', '六角螺母', 'M8', 43.00, 0.00, 45.00, '2018-08-29 18:42:01.012977', 2.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86b92ab7611e88c5f54e1adaf09dc', NULL, '20001239', 'GB6170-2000', '六角螺母', 'M16', 66.00, 0.00, 13.00, '2018-08-29 18:42:04.571354', -53.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86bc2ab7611e88c5f54e1adaf09dc', NULL, '20001236', 'GB6170-2000', '六角螺母', 'M10', 1.00, 0.00, 31.00, '2018-08-29 18:42:01.012977', 30.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86bf2ab7611e88c5f54e1adaf09dc', NULL, '20001237', 'GB6170-2000', '六角螺母', 'M12', 7.00, 0.00, 16.00, '2018-08-29 18:42:01.012977', 9.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86c25ab7611e88c5f54e1adaf09dc', NULL, '10000128', 'MJ7115', '钢丝绳成品', '', 31.00, 0.00, 87.00, '2018-08-29 18:42:01.012977', 56.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86c58ab7611e88c5f54e1adaf09dc', NULL, '30001110', '', '手柄球', '8*30', 37.00, 0.00, 88.00, '2018-08-29 18:42:01.012977', 51.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86c8cab7611e88c5f54e1adaf09dc', NULL, '20000436', 'GB86-88', '方头短圆柱锥端紧定螺钉', '12*60', 93.00, 0.00, 79.00, '2018-08-29 18:42:04.571354', -14.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86cbbab7611e88c5f54e1adaf09dc', NULL, '20001107', 'GB5783-2000', '六角头螺栓  全螺纹', '10*35', 53.00, 0.00, 32.00, '2018-08-29 18:42:04.571354', -21.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86cefab7611e88c5f54e1adaf09dc', NULL, '20000376', 'GB77-2000', '内六角平端紧定螺钉', '8*20', 86.00, 0.00, 25.00, '2018-08-29 18:42:04.571354', -61.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86d22ab7611e88c5f54e1adaf09dc', NULL, '20001456', 'GB97.1-2002', '平垫圈', '5', 74.00, 0.00, 30.00, '2018-08-29 18:42:04.571354', -44.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86d52ab7611e88c5f54e1adaf09dc', NULL, '20001459', 'GB97.1-2002', '平垫圈', '10', 9.00, 0.00, 74.00, '2018-08-29 18:42:01.012977', 65.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86d85ab7611e88c5f54e1adaf09dc', NULL, '30001207', '', '吊环', '吊环   M16', 26.00, 0.00, 80.00, '2018-08-29 18:42:01.012977', 54.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86db4ab7611e88c5f54e1adaf09dc', NULL, '30001455', '', '轴承', '1000902 (61902)', 3.00, 0.00, 78.00, '2018-08-29 18:42:01.012977', 75.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86de4ab7611e88c5f54e1adaf09dc', NULL, '30001559', '', '轴承', '8102        (51102)', 39.00, 0.00, 53.00, '2018-08-29 18:42:01.012977', 14.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86e17ab7611e88c5f54e1adaf09dc', NULL, '30001512', '', '轴承', '6202/2Z', 83.00, 0.00, 30.00, '2018-08-29 18:42:04.571354', -53.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86e4bab7611e88c5f54e1adaf09dc', NULL, '20001705', 'GB1096-1979', '普通平键A型', '4*20', 2.00, 0.00, 94.00, '2018-08-29 18:42:01.012977', 92.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86e7eab7611e88c5f54e1adaf09dc', NULL, '20001703', 'GB1096-1979', '普通平键A型', '4*16', 61.00, 0.00, 77.00, '2018-08-29 18:42:01.012977', 16.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86eb1ab7611e88c5f54e1adaf09dc', NULL, '30001351', '', '钢球', '6', 97.00, 0.00, 5.00, '2018-08-29 18:42:04.571354', -92.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86ee1ab7611e88c5f54e1adaf09dc', NULL, '30001090', '', '铆钉', '2*5', 6.00, 0.00, 93.00, '2018-08-29 18:42:01.012977', 87.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86f22ab7611e88c5f54e1adaf09dc', NULL, '20001918', 'GB117-2000', '圆锥销 B型', '5*30', 37.00, 0.00, 51.00, '2018-08-29 18:42:01.012977', 14.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86f58ab7611e88c5f54e1adaf09dc', NULL, '20001921', 'GB117-2000', '圆锥销 B型', '5*50', 69.00, 0.00, 75.00, '2018-08-29 18:42:01.012977', 6.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86f88ab7611e88c5f54e1adaf09dc', NULL, '20000024', 'GB70.1-2000', '内六角圆柱头螺钉', '6*12', 34.00, 0.00, 23.00, '2018-08-29 18:42:04.571354', -11.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef86fbbab7611e88c5f54e1adaf09dc', NULL, '20000027', 'GB70.1-2000', '内六角圆柱头螺钉', '6*20', 65.00, 0.00, 90.00, '2018-08-29 18:42:01.012977', 25.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef86ff9ab7611e88c5f54e1adaf09dc', NULL, '20000193', 'GB818-2000', '十字槽盘头螺钉', '6*12', 24.00, 0.00, 81.00, '2018-08-29 18:42:01.012977', 57.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8702fab7611e88c5f54e1adaf09dc', NULL, '20000028', 'GB70.1-2000', '内六角圆柱头螺钉', '6*25/代6*26', 24.00, 0.00, 38.00, '2018-08-29 18:42:01.012977', 14.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef87066ab7611e88c5f54e1adaf09dc', NULL, '20001990', 'GB119-2000', '圆柱销 B型', '6*45', 51.00, 0.00, 45.00, '2018-08-29 18:42:04.571354', -6.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef87099ab7611e88c5f54e1adaf09dc', NULL, '20000375', 'GB77-2000', '内六角平端紧定螺钉', '8*16', 80.00, 0.00, 11.00, '2018-08-29 18:42:04.571354', -69.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef870ccab7611e88c5f54e1adaf09dc', NULL, '20001460', 'GB97.1-2002', '平垫圈', '12', 51.00, 0.00, 20.00, '2018-08-29 18:42:04.571354', -31.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef870fcab7611e88c5f54e1adaf09dc', NULL, '30001123', '', '转动手柄', 'M8*63   暗', 13.00, 0.00, 68.00, '2018-08-29 18:42:01.012977', 55.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8712fab7611e88c5f54e1adaf09dc', NULL, '30001337', '', 'GB1155-74油杯', 'φ8', 14.00, 0.00, 79.00, '2018-08-29 18:42:01.012977', 65.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef875a3ab7611e88c5f54e1adaf09dc', NULL, '30005037', '', '电源指示灯', 'PL AD16-16C/g-28(APT)220V', 33.00, 0.00, 92.00, '2018-08-29 18:42:01.012977', 59.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef875f5ab7611e88c5f54e1adaf09dc', NULL, '30005038', '', '工作指示灯', 'PL AD16-16C/w-28(APT)220V', 22.00, 0.00, 23.00, '2018-08-29 18:42:01.012977', 1.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8762fab7611e88c5f54e1adaf09dc', NULL, '30000245', '', '护套线(米)', '3*1.5-VDE 含黄绿接地', 11.00, 0.00, 40.00, '2018-08-29 18:42:01.012977', 29.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef87669ab7611e88c5f54e1adaf09dc', NULL, '30009284', '', '多股铜芯线线', '0.75   红', 90.00, 0.00, 34.00, '2018-08-29 18:42:04.571354', -56.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef876a3ab7611e88c5f54e1adaf09dc', NULL, '30000124', '', '金属软管(蛇皮管)(米)', '13   3/8\"', 16.00, 0.00, 48.00, '2018-08-29 18:42:01.012977', 32.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef87847ab7611e88c5f54e1adaf09dc', NULL, '30000005', '', '接线端子', 'RNBS2-5（φ5）', 11.00, 0.00, 37.00, '2018-08-29 18:42:01.012977', 26.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8788fab7611e88c5f54e1adaf09dc', NULL, '30000011', '', '接线端子', 'UT2.5-4（φ4）', 8.00, 0.00, 43.00, '2018-08-29 18:42:01.012977', 35.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef878c9ab7611e88c5f54e1adaf09dc', NULL, '20001515', 'GB862.2-1987', '外锯齿锁紧垫圈', '5', 9.00, 0.00, 5.00, '2018-08-29 18:42:04.571354', -4.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8790aab7611e88c5f54e1adaf09dc', NULL, '20000179', 'GB818-2000', '十字槽盘头螺钉', '4*8', 19.00, 0.00, 95.00, '2018-08-29 18:42:01.012977', 76.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef8793aab7611e88c5f54e1adaf09dc', NULL, '20000180', 'GB818-2000', '十字槽盘头螺钉', '5*10', 69.00, 0.00, 61.00, '2018-08-29 18:42:04.571354', -8.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef87969ab7611e88c5f54e1adaf09dc', NULL, '30000115', '', '软管接头', '13 /M20*1.5常用', 88.00, 0.00, 23.00, '2018-08-29 18:42:04.571354', -65.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef8799dab7611e88c5f54e1adaf09dc', NULL, '30001820', '', '打火机', '', 33.00, 0.00, 30.00, '2018-08-29 18:42:04.571354', -3.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef879ccab7611e88c5f54e1adaf09dc', NULL, '30000085', '', '(线号管)', 'ZMY-1.5(1盘100M)', 2.00, 0.00, 81.00, '2018-08-29 18:42:01.012977', 79.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef879fcab7611e88c5f54e1adaf09dc', NULL, '30000086', '', '(线号管)', 'ZMY-2.5(1盘80M)', 13.00, 0.00, 15.00, '2018-08-29 18:42:01.012977', 2.00, '1');
INSERT INTO `purchase_result` VALUES ('6ef87a36ab7611e88c5f54e1adaf09dc', NULL, '30000074', '', '热缩管(米)', '3', 61.00, 0.00, 35.00, '2018-08-29 18:42:04.571354', -26.00, '0');
INSERT INTO `purchase_result` VALUES ('6ef87a69ab7611e88c5f54e1adaf09dc', NULL, '30000007', '', '接线端子', 'UT1.5-3', 63.00, 0.00, 29.00, '2018-08-29 18:42:04.571354', -34.00, '0');

SET FOREIGN_KEY_CHECKS = 1;
