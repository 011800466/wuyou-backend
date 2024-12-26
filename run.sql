/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 90100
 Source Host           : localhost:3306
 Source Schema         : wuyou_recruit

 Target Server Type    : MySQL
 Target Server Version : 90100
 File Encoding         : 65001

 Date: 26/12/2024 23:43:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `user_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `data_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据id',
  `type` smallint NOT NULL COMMENT '应聘类型',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应聘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------

-- ----------------------------
-- Table structure for browse
-- ----------------------------
DROP TABLE IF EXISTS `browse`;
CREATE TABLE `browse`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `user_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `data_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据id',
  `type` smallint NOT NULL COMMENT '浏览类型',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '浏览信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of browse
-- ----------------------------

-- ----------------------------
-- Table structure for cms
-- ----------------------------
DROP TABLE IF EXISTS `cms`;
CREATE TABLE `cms`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `text` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `type` smallint NOT NULL COMMENT '内容类型',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统内容信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms
-- ----------------------------

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `user_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `data_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据id',
  `type` smallint NOT NULL COMMENT '收藏类型',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收藏信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '简称',
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '全称',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'https://pan.whiteones.cn/d/PicGo/wuyou/company_icon.png' COMMENT 'logo地址',
  `industry_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '行业id',
  `nature` smallint NOT NULL COMMENT '公司性质',
  `staff_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司规模',
  `introduce` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司简介',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址详情',
  `auth_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '认证id',
  `work_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作时间',
  `rest_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '休息时间',
  `work_overtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '加班情况',
  `enable_status` tinyint(1) NULL DEFAULT NULL COMMENT '生效状态',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  `update_time` double(13, 3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公司信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for company_auth
-- ----------------------------
DROP TABLE IF EXISTS `company_auth`;
CREATE TABLE `company_auth`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `legal_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '法人姓名',
  `credit_code` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '统一社会信用代码',
  `auth_status` smallint NOT NULL DEFAULT 1 COMMENT '认证状态',
  `failure_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '失败原因',
  `submit_time` double(13, 3) NOT NULL COMMENT '提交时间',
  `finished_time` double(13, 3) NOT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '企业认证信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_auth
-- ----------------------------

-- ----------------------------
-- Table structure for company_welfare
-- ----------------------------
DROP TABLE IF EXISTS `company_welfare`;
CREATE TABLE `company_welfare`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `company_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司id',
  `welfare_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '福利id',
  `enable_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '生效状态',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  `update_time` double(13, 3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公司福利信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_welfare
-- ----------------------------

-- ----------------------------
-- Table structure for industry
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标地址',
  `p_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父级id',
  `enable_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '启用状态',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  `update_time` double(13, 3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '行业信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of industry
-- ----------------------------
INSERT INTO `industry` VALUES ('0348d077', '证券/期货', NULL, '623bf114', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('07ad4cb8', '汽车生产', NULL, 'a06cf718', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('0c7db0e5', '银行', NULL, '623bf114', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('0e2e40c7', '家政服务', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('0fb1a275', '学术/科研', NULL, '623bf123', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('14863727', '电力/热力/燃气', NULL, '30072166', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('2087b7a7', '船舶/航空', NULL, 'fba7613b', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('25ea9049', '新零售', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('2935fe25', '检测/认证', NULL, '31c735e5', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('2d83ad29', '回收/维修', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('2d8df75a', '新能源', NULL, '30072166', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('30072166', '能源/化工/环保', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('31c735e5', '专业服务', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('4225fe3d', '环保', NULL, '30072166', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('473face2', '生活服务', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('4c8a363c', '工艺品/收藏品', NULL, '67596dc6', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('52c96d04', '日化', NULL, '67596dc6', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('56d5dab9', '汽车零部件', NULL, 'a06cf718', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('5771afdb', '制药', NULL, '92e589dc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('583d3b26', '服装/纺织/皮革', NULL, '67596dc6', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('5a538ce0', '咨询', NULL, '31c735e5', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('5b4efcfc', '房地产/建筑', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('5d1160fe', '服务业', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('5dec1ee7', '翻译', NULL, '31c735e5', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bcdbb', '互联网/IT/电子/通信', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bd63e', '电子商务', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bdb4e', '广告/传媒/文化/体育', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bde06', '游戏', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf090', '广播/影视', NULL, '623bdb4e', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf0a8', '文化/体育/娱乐', NULL, '623bdb4e', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf0bd', '数据服务', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf0cf', '保险', NULL, '623bf114', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf0e2', '学前教育', NULL, '623bf123', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf0f7', '广告/公关/会展', NULL, '623bdb4e', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf108', '新闻/出版', NULL, '623bdb4e', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf114', '金融', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('623bf123', '教育培训', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('624467d5', '消费电子', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('633a95d6', '培训机构', NULL, '623bf123', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('63acdc4b', '珠宝/首饰', NULL, '67596dc6', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('66aaec7f', '互联网金融', NULL, '623bf114', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('67596dc6', '消费品', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('6aa6cc68', '其他专业服务', NULL, '31c735e5', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('6c80258f', '装饰装修', NULL, '5b4efcfc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('6fce60d6', '石油/石化', NULL, '30072166', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('71d2521f', '机械设备/机电/重工', NULL, 'fba7613b', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('753cc505', '矿产/地质', NULL, '30072166', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('75c94000', '交通/运输', NULL, 'fd7afdc0', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('778cd48f', '仪器仪表/工业自动化', NULL, 'fba7613b', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('7959133b', '建筑设计', NULL, '5b4efcfc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('797c5533', '基金', NULL, '623bf114', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('7c29b6f5', '餐饮', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('7d540415', '企业服务', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('7dd687d5', '物流/仓储', NULL, 'fd7afdc0', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('83e1fed4', '旅游', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('86727741', '婚庆/摄影', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('8a98c54d', '美容/美发', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('8a998c99', '印刷/包装', NULL, 'fba7613b', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('8f02efb5', '化工', NULL, '30072166', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('8fb99e64', '家具/家电', NULL, '67596dc6', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('92e589dc', '制药/医疗', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('9f03ebeb', '采掘/冶炼', NULL, '30072166', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('a0672532', '智能硬件', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('a06cf718', '汽车', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('a0a132a8', '医疗/护理/卫生', NULL, '92e589dc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('a3d018b3', '食品/饮料/烟酒', NULL, '67596dc6', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('a78b81b3', '宠物服务', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('a7b24103', '酒店', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('aaeed93c', '社交网络', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('b851d42b', '人力资源服务', NULL, '31c735e5', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('be66ec3d', '批发/零售', NULL, 'fd7afdc0', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('cc44ed46', '原材料/模具', NULL, 'fba7613b', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('cd86d30b', '法律', NULL, '31c735e5', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('d2d7a657', '信托', NULL, '623bf114', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('d337102e', '休闲/娱乐', NULL, '5d1160fe', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('d79437bc', '医疗设备/器械', NULL, '92e589dc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('d85bc82d', 'O2O', NULL, '623bcdbb', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('dadbd91a', '地产中介', NULL, '5b4efcfc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('e2086800', '建材', NULL, '5b4efcfc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('e2ca4f9f', '4S店/后市场', NULL, 'a06cf718', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('e50bc59d', '房地产开发', NULL, '5b4efcfc', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('e90545b4', '玩具/礼品', NULL, '67596dc6', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('f40183e9', '院校', NULL, '623bf123', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('f9aedbc9', '贸易/进出口', NULL, 'fd7afdc0', 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('fba7613b', '机械/制造', NULL, NULL, 1, 1648650196.781, 1648650196.781);
INSERT INTO `industry` VALUES ('fd7afdc0', '交通/物流/贸易/零售', NULL, NULL, 1, 1648650196.781, 1648650196.781);

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `company_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司id',
  `post_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '职位id',
  `enable_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '生效状态',
  `exp_require` smallint NOT NULL COMMENT '经验要求',
  `min_education` smallint NULL DEFAULT NULL COMMENT '最低学历',
  `salary` smallint NOT NULL COMMENT '薪资范围',
  `job_type` smallint NOT NULL COMMENT '工作类型',
  `skill` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '技能要求',
  `create_time` double NOT NULL COMMENT '创建时间',
  `update_time` double NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工作招聘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标地址',
  `p_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父级id',
  `enable_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '启用状态',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  `update_time` double(13, 3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '职位信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('0031a478', '互联网产品经理', NULL, '843c32b8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('0041a9ff', '信贷专员', NULL, 'a5793137', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('01f76575', '物业经理', NULL, '988bb6e1', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('03dcc359', '工程造价', NULL, '1ea00499', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('05127dcd', '服装导购', NULL, '62446ed8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('08d63267', '美工', NULL, '8229aae5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('091cefbb', '化妆师', NULL, '92e9bde7', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('0bd1ac7a', '制片人', NULL, '0c906321', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('0c906321', '影视媒体', NULL, '8316c048', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('0de239ce', '客户经理', NULL, 'a5793137', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('0e3c74a3', '地产中介', NULL, '62446e8d', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('11cecdf0', '职业培训', NULL, 'da622418', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1498de76', '教师', NULL, 'fd96b7ef', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('14ec0dee', '总裁/CEO', NULL, '1b9967bc', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1576abb0', 'Java开发', NULL, '62446f6c', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('16621e35', '自动化测试', NULL, '62446fc8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('17cf767b', '教学管理', NULL, 'dc872f8f', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('192f415e', '美容师', NULL, '92e9bde7', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1a230e57', '助教', NULL, 'fd96b7ef', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1a79380b', '证券/基金', NULL, 'c990d22a', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1b06b828', '汽车维修', NULL, '29c64e83', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1b9967bc', '高级管理职位', NULL, 'd23ebd1d', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1bd54b2a', '客服专员', NULL, '6a8386c9', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1c9a03ee', '汽车配件销售', NULL, '62446ef2', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1db89baa', '运营/客服', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1ea00499', '工程管理', NULL, '3079d866', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('1edb5ee8', '其他产品经理', NULL, 'e1a80b48', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('22c5cd44', '用户研究经理', NULL, 'f9c83146', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('23ea540b', '保险理赔', NULL, '61f6f6a7', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('2781705f', '摄影/摄像', NULL, '0c906321', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('29c64e83', '汽车服务', NULL, 'b4f90626', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('2a1b26bc', '副总裁/VP', NULL, '1b9967bc', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('2b33739d', '全栈工程师', NULL, '62446f6c', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('2b3eea33', '地产招投标', NULL, '6c43e275', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('2cd730be', '广告销售', NULL, '62446efb', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('2e236363', '律师顾问', NULL, '62446f53', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('2f0049fc', '基金经理', NULL, '1a79380b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('30054462', '测试工程师', NULL, '62446fc8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('3079d866', '房地产/建筑', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('309454bb', '直播运营', NULL, 'a5335b5d', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('35b656bb', '宠物美容', NULL, 'afe9d3e5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('36b9e041', '电工', NULL, '47371b78', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('37e0814e', '硬件产品经理', NULL, 'e1a80b48', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('38d56bf6', '洗车工', NULL, '29c64e83', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('38dcddbc', '系统策划', NULL, 'bbeb2063', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('43a280a6', '量化研究员', NULL, '1a79380b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('45d1a305', '后勤', NULL, '62446f49', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('45eea2e6', '物业管理员', NULL, '988bb6e1', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('47371b78', '建筑装修工人', NULL, '3079d866', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('4997c261', '地产项目管理', NULL, '6c43e275', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('4d76fa8a', '法务经理/主管', NULL, '62446f53', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('4dedcd7c', '保姆', NULL, 'fd0cf55b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('53d43c0c', '游泳教练', NULL, 'c859a788', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('55f21175', '行政经理/主管', NULL, '62446f49', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('5cebe21b', '保安', NULL, '988bb6e1', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('5d62c161', '发型师', NULL, '92e9bde7', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('61f6f6a7', '保险', NULL, 'c990d22a', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('623c31db', '销售', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('623c31eb', '销售行政/商务', NULL, '623c31db', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('623f0bc3', '人力资源助理', NULL, '62446f20', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446cd3', '人事/行政/法务', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446e8d', '房地产销售/招商', NULL, '623c31db', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446ed8', '服务业销售', NULL, '623c31db', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446ef2', '汽车销售', NULL, '623c31db', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446efb', '广告/会展销售', NULL, '623c31db', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446f20', '人力资源', NULL, '62446cd3', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446f49', '行政', NULL, '62446cd3', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446f53', '法务', NULL, '62446cd3', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446f62', 'IT互联网技术', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446f6c', '后端开发', NULL, '62446f62', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446fa5', '移动开发', NULL, '62446f62', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('62446fc8', '测试', NULL, '62446f62', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('624c525f', '生产制造', NULL, '66c4d212', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('624c5275', '包装', NULL, '624c525f', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('624c52a7', '喷漆', NULL, '624c525f', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('624c52ae', '打磨', NULL, '624c525f', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('6253ebb0', '平车', NULL, '624c525f', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('6298d022', '家具设计', NULL, 'c226c2ce', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('66c4d212', '市场', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('674594bf', '培训师', NULL, '11cecdf0', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('68379503', '游戏策划', NULL, 'bbeb2063', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('6a8386c9', '客服', NULL, '1db89baa', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('6bd6a810', 'IOS开发', NULL, '62446fa5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('6c43e275', '房地产规划开发', NULL, '3079d866', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('6d57231b', '材料员', NULL, '1ea00499', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('711064f7', '商务专员', NULL, '623c31eb', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('716d4eb8', '会展活动销售', NULL, '62446efb', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('73e4f70e', 'HRBP', NULL, '62446f20', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('7518ee4b', '网络推广', NULL, 'f5db9f59', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('7594c1af', '平面设计', NULL, '8229aae5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('7756b5f9', '客服主管', NULL, '6a8386c9', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('7961491d', '会议活动销售', NULL, '62446efb', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('7d09114f', '广告审核', NULL, 'e59ab60b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('8090d56c', '销售助理', NULL, '623c31eb', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('8229aae5', '视觉/交互设计', NULL, 'faa146c1', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('826f9cee', '家教', NULL, 'fd96b7ef', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('8316c048', '影视/传媒', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('843c32b8', '产品', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('85a52d1e', '联合创始人', NULL, '1b9967bc', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('86e0d02d', '教务管理', NULL, 'dc872f8f', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('870f8ed6', '媒介投放', NULL, 'e59ab60b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('874283f7', '市场营销', NULL, 'f5db9f59', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('87ce080d', '月嫂', NULL, 'fd0cf55b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('88565d2d', '宠物医生', NULL, 'afe9d3e5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('89ab90ad', '保险精算师', NULL, '61f6f6a7', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('8d154d3f', '主播', NULL, '0c906321', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('8f9f2b9e', '测绘/测量', NULL, '1ea00499', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('92e9bde7', '美容美发', NULL, 'b4f90626', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('953fb7e2', '保洁', NULL, 'fd0cf55b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('971b310a', '施工员', NULL, '1ea00499', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('988bb6e1', '物业管理', NULL, '3079d866', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('9bcfc81d', '产品助理', NULL, '0031a478', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('a2b27f23', '广告制作', NULL, 'e59ab60b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('a5335b5d', '内容运营', NULL, '1db89baa', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('a5793137', '银行', NULL, 'c990d22a', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('a679eaa6', '舞蹈老师', NULL, 'c859a788', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('a93e1e32', '金融产品经理', NULL, 'e1a80b48', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('a94bf91a', '品类运营', NULL, 'e3abbc60', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('aaab8388', '新媒体运营', NULL, 'a5335b5d', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('ab8e935f', '商务渠道', NULL, 'f5db9f59', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('ace108a0', 'AI产品经理', NULL, '0031a478', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('ae8f614c', '游戏制作人', NULL, 'bbeb2063', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('afcd5205', '人力资源经理', NULL, '62446f20', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('afe9d3e5', '宠物服务', NULL, 'b4f90626', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('b4f90626', '生活服务', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('b63a62fe', '设计师助理', NULL, '8229aae5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('b690ffed', '行政专员/助理', NULL, '62446f49', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('b849efd5', '美容顾问', NULL, '62446ed8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('bbeb2063', '游戏策划/制作', NULL, '843c32b8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('bc579739', '法务专员/助理', NULL, '62446f53', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('bd55ba6c', '工业设计', NULL, 'c226c2ce', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('bffeebee', '健身教练', NULL, 'c859a788', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c01fba46', '证券交易员', NULL, '1a79380b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c1ae8bc6', 'UI设计师', NULL, '8229aae5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c226c2ce', '工业/家居设计', NULL, 'faa146c1', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c7fe0fd2', '淘宝运营', NULL, 'e3abbc60', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c84b74da', 'C++开发', NULL, '62446f6c', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c859a788', '运动健身', NULL, 'b4f90626', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c862cfe7', '木工', NULL, '47371b78', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('c990d22a', '金融', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('cb969e6f', '置业顾问', NULL, '62446e8d', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('cfa822d2', '绿化工', NULL, '988bb6e1', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d1077fba', 'Android开发', NULL, '62446fa5', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d23ebd1d', '高级管理', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d2f694c0', '产品经理', NULL, '0031a478', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d34e3b45', '市场推广', NULL, 'f5db9f59', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d7e3e847', '油漆工', NULL, '47371b78', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d905d312', '焊工', NULL, '47371b78', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d9771485', '人力资源总监', NULL, '62446f20', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('d9a8aa58', '柜员', NULL, 'a5793137', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('da622418', '教育培训', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('dc872f8f', '教育行政', NULL, 'da622418', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('dc957ec2', '室内设计', NULL, 'c226c2ce', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('def04b44', '天猫运营', NULL, 'e3abbc60', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('e1a80b48', '其他产品职位', NULL, '843c32b8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('e3abbc60', '电商运营', NULL, '1db89baa', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('e4bcc3df', '珠宝销售', NULL, '62446ed8', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('e552569f', '京东运营', NULL, 'e3abbc60', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('e59ab60b', '广告', NULL, '8316c048', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('e8b4e8f2', '拓展培训', NULL, '11cecdf0', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('f0ed0a88', '区域负责人', NULL, '1b9967bc', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('f4ca753b', '售后客服', NULL, '6a8386c9', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('f59da600', '护工', NULL, 'fd0cf55b', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('f5db9f59', '市场/营销', NULL, '66c4d212', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('f8af6459', 'Python开发', NULL, '62446f6c', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('f8ebd59b', '汽车销售', NULL, '62446ef2', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('f9c83146', '用户研究', NULL, '66c4d212', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('faa146c1', '设计', NULL, NULL, 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('fac46be4', '用户研究员', NULL, 'f9c83146', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('fd0cf55b', '家政保洁', NULL, 'b4f90626', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('fd11e5c3', '汽车美容', NULL, '29c64e83', 1, 1648112091.084, 1648112091.084);
INSERT INTO `position` VALUES ('fd96b7ef', '教师', NULL, 'da622418', 1, 1648112091.084, 1648112091.084);

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `user_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生日期',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `gender` smallint NOT NULL COMMENT '性别',
  `education` smallint NULL DEFAULT NULL COMMENT '最高学历',
  `experience` smallint NULL DEFAULT NULL COMMENT '工作经验',
  `skill` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人特长',
  `job_status` smallint NULL DEFAULT NULL COMMENT '求职状态',
  `salary` smallint NULL DEFAULT NULL COMMENT '期望薪资',
  `post_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '期望职位',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简历信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resume
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信用户id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'https://pan.whiteones.cn/d/PicGo/wuyou/avatar_def.jpg' COMMENT '头像地址',
  `role` smallint NOT NULL DEFAULT 0 COMMENT '用户角色',
  `company_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司id',
  `enable_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '账号状态',
  `auth_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '认证id',
  `register_date` double(13, 3) NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6NWMv0A5', 'ot1gg7dLVnk3udaf1-OQnPGniL_c', '微信用户', NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 0, NULL, 0, NULL, 1735214961.151);
INSERT INTO `user` VALUES ('88888888', NULL, 'admin', 'admin', '11111111111', 'https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png', 2, NULL, 1, NULL, 1670494650.700);

-- ----------------------------
-- Table structure for user_auth
-- ----------------------------
DROP TABLE IF EXISTS `user_auth`;
CREATE TABLE `user_auth`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `identity` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证号码',
  `auth_status` smallint NOT NULL DEFAULT 1 COMMENT '认证状态',
  `failure_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '失败原因',
  `submit_time` double(13, 3) NOT NULL COMMENT '提交时间',
  `finished_time` double(13, 3) NOT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '实名认证信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_auth
-- ----------------------------

-- ----------------------------
-- Table structure for welfare
-- ----------------------------
DROP TABLE IF EXISTS `welfare`;
CREATE TABLE `welfare`  (
  `id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标地址',
  `enable_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '启用状态',
  `create_time` double(13, 3) NOT NULL COMMENT '创建时间',
  `update_time` double(13, 3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '福利信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of welfare
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
