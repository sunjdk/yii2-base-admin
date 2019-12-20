/*
Navicat MySQL Data Transfer

Source Server         : phpstydy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : nxj_yii2_io

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-12-20 22:54:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yii2_auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_assignment`;
CREATE TABLE `yii2_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `yii2_idx-auth_assignment-user_id` (`user_id`),
  CONSTRAINT `yii2_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2_auth_assignment
-- ----------------------------
INSERT INTO `yii2_auth_assignment` VALUES ('基本权限', '1', '1576783873');
INSERT INTO `yii2_auth_assignment` VALUES ('超级管理员', '1', '1576751354');

-- ----------------------------
-- Table structure for `yii2_auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_item`;
CREATE TABLE `yii2_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL COMMENT '1.角色  2.权限',
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `yii2_idx-auth_item-type` (`type`),
  CONSTRAINT `yii2_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `yii2_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2_auth_item
-- ----------------------------
INSERT INTO `yii2_auth_item` VALUES ('/*', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/admin/*', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1576749930', '1576749930');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1576749931', '1576749931');
INSERT INTO `yii2_auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/debug/*', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1576749932', '1576749932');
INSERT INTO `yii2_auth_item` VALUES ('/debug/user/*', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/debug/user/reset-identity', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/debug/user/set-identity', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/gii/*', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/movie/*', '2', null, null, null, '1576831413', '1576831413');
INSERT INTO `yii2_auth_item` VALUES ('/movie/create', '2', null, null, null, '1576831413', '1576831413');
INSERT INTO `yii2_auth_item` VALUES ('/movie/delete', '2', null, null, null, '1576831413', '1576831413');
INSERT INTO `yii2_auth_item` VALUES ('/movie/index', '2', null, null, null, '1576831413', '1576831413');
INSERT INTO `yii2_auth_item` VALUES ('/movie/update', '2', null, null, null, '1576831413', '1576831413');
INSERT INTO `yii2_auth_item` VALUES ('/movie/view', '2', null, null, null, '1576831413', '1576831413');
INSERT INTO `yii2_auth_item` VALUES ('/site/*', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/site/error', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/site/index', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/site/login', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/site/logout', '2', null, null, null, '1576749933', '1576749933');
INSERT INTO `yii2_auth_item` VALUES ('/user/*', '2', null, null, null, '1576750897', '1576750897');
INSERT INTO `yii2_auth_item` VALUES ('/user/create', '2', null, null, null, '1576750897', '1576750897');
INSERT INTO `yii2_auth_item` VALUES ('/user/delete', '2', null, null, null, '1576750897', '1576750897');
INSERT INTO `yii2_auth_item` VALUES ('/user/index', '2', null, null, null, '1576750897', '1576750897');
INSERT INTO `yii2_auth_item` VALUES ('/user/update', '2', null, null, null, '1576750897', '1576750897');
INSERT INTO `yii2_auth_item` VALUES ('/user/view', '2', null, null, null, '1576750897', '1576750897');
INSERT INTO `yii2_auth_item` VALUES ('基本权限', '2', '基本权限', null, null, '1576783823', '1576848660');
INSERT INTO `yii2_auth_item` VALUES ('普通管理员', '1', '普通管理员', null, 0x613A323A7B733A343A2269636F6E223B733A343A22626F6F6B223B733A373A2276697369626C65223B623A313B7D, '1576771949', '1576830706');
INSERT INTO `yii2_auth_item` VALUES ('用户管理', '2', '用户管理', null, null, '1576750974', '1576750974');
INSERT INTO `yii2_auth_item` VALUES ('电影修改', '2', '电影修改', '电影规则', null, '1576846003', '1576846003');
INSERT INTO `yii2_auth_item` VALUES ('超级管理员', '1', '超级管理员', null, null, '1576751142', '1576751142');

-- ----------------------------
-- Table structure for `yii2_auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_item_child`;
CREATE TABLE `yii2_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `yii2_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `yii2_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2_auth_item_child
-- ----------------------------
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/assignment/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/assignment/assign');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/assignment/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/assignment/revoke');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/assignment/view');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/default/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/default/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/menu/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/menu/create');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/menu/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/menu/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/menu/update');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/menu/view');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/assign');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/create');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/remove');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/update');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/permission/view');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/assign');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/create');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/remove');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/update');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/role/view');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/route/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/route/assign');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/route/create');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/route/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/route/refresh');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/route/remove');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/rule/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/rule/create');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/rule/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/rule/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/rule/update');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/rule/view');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/activate');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/change-password');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/login');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/logout');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/request-password-reset');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/reset-password');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/signup');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/admin/user/view');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/default/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/default/db-explain');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/default/download-mail');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/default/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/default/toolbar');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/default/view');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/user/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/user/reset-identity');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/debug/user/set-identity');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/gii/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/gii/default/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/gii/default/action');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/gii/default/diff');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/gii/default/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/gii/default/preview');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/gii/default/view');
INSERT INTO `yii2_auth_item_child` VALUES ('电影修改', '/movie/update');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/site/*');
INSERT INTO `yii2_auth_item_child` VALUES ('普通管理员', '/site/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/site/error');
INSERT INTO `yii2_auth_item_child` VALUES ('普通管理员', '/site/error');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/site/index');
INSERT INTO `yii2_auth_item_child` VALUES ('普通管理员', '/site/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/site/login');
INSERT INTO `yii2_auth_item_child` VALUES ('普通管理员', '/site/login');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/site/logout');
INSERT INTO `yii2_auth_item_child` VALUES ('普通管理员', '/site/logout');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/user/*');
INSERT INTO `yii2_auth_item_child` VALUES ('用户管理', '/user/*');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/user/create');
INSERT INTO `yii2_auth_item_child` VALUES ('用户管理', '/user/create');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/user/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('用户管理', '/user/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/user/index');
INSERT INTO `yii2_auth_item_child` VALUES ('用户管理', '/user/index');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/user/update');
INSERT INTO `yii2_auth_item_child` VALUES ('用户管理', '/user/update');
INSERT INTO `yii2_auth_item_child` VALUES ('基本权限', '/user/view');
INSERT INTO `yii2_auth_item_child` VALUES ('用户管理', '/user/view');
INSERT INTO `yii2_auth_item_child` VALUES ('超级管理员', '用户管理');

-- ----------------------------
-- Table structure for `yii2_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_rule`;
CREATE TABLE `yii2_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2_auth_rule
-- ----------------------------
INSERT INTO `yii2_auth_rule` VALUES ('电影规则', 0x4F3A32383A226261636B656E645C636F6D706F6E656E74735C4D6F76696552756C65223A333A7B733A343A226E616D65223B733A31323A22E794B5E5BDB1E8A784E58899223B733A393A22637265617465644174223B693A313537363834353734303B733A393A22757064617465644174223B693A313537363834353734303B7D, '1576845740', '1576845740');

-- ----------------------------
-- Table structure for `yii2_menu`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_menu`;
CREATE TABLE `yii2_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `yii2_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `yii2_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2_menu
-- ----------------------------
INSERT INTO `yii2_menu` VALUES ('1', '系统设置', null, '/site/index', '49', 0x7B2269636F6E223A2022616E63686F72222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('2', '用户管理', '3', '/admin/user/index', '89', 0x7B2269636F6E223A202275736572222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('3', '权限管理', null, '/admin/default/index', '50', 0x7B2269636F6E223A20226765617273222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('4', '权限分配', '3', '/admin/assignment/index', '102', 0x7B2269636F6E223A2022736869656C64222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('5', '权限列表', '3', '/admin/permission/index', '91', 0x7B2269636F6E223A20226C697374222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('6', '角色列表', '3', '/admin/role/index', '91', 0x7B2269636F6E223A20226C697374222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('7', '路由列表', '3', '/admin/route/index', '100', 0x7B2269636F6E223A20226C697374222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('8', '菜单列表', '3', '/admin/menu/index', '90', 0x7B2269636F6E223A20226C697374222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('9', '规则列表', '3', '/admin/rule/index', '100', 0x7B2269636F6E223A20226C697374222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('10', '电影管理', null, '/movie/index', '50', 0x7B2269636F6E223A202266696C6D222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('11', '电影列表', '10', '/movie/index', '100', 0x7B2269636F6E223A20226C697374222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('12', '自动生成', '1', '/gii/default/index', '100', 0x7B2269636F6E223A20226D6963726F63686970222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('13', '调试面板', '1', '/debug/default/index', '100', 0x7B2269636F6E223A2022627567222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('14', '后台首页', '1', '/site/index', '100', 0x7B2269636F6E223A2022686F6D65222C202276697369626C65223A20747275657D);
INSERT INTO `yii2_menu` VALUES ('15', '退出', null, null, '200', 0x7B2269636F6E223A20227369676E2D6F7574222C202276697369626C65223A20747275657D);

-- ----------------------------
-- Table structure for `yii2_migration`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_migration`;
CREATE TABLE `yii2_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2_migration
-- ----------------------------
INSERT INTO `yii2_migration` VALUES ('m000000_000000_base', '1576746927');
INSERT INTO `yii2_migration` VALUES ('m130524_201442_init', '1576746955');
INSERT INTO `yii2_migration` VALUES ('m140506_102106_rbac_init', '1576748292');
INSERT INTO `yii2_migration` VALUES ('m140602_111327_create_menu_table', '1576748653');
INSERT INTO `yii2_migration` VALUES ('m160312_050000_create_user', '1576748653');
INSERT INTO `yii2_migration` VALUES ('m170907_052038_rbac_add_index_on_auth_assignment_user_id', '1576748293');
INSERT INTO `yii2_migration` VALUES ('m180523_151638_rbac_updates_indexes_without_prefix', '1576748293');
INSERT INTO `yii2_migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', '1576746955');
INSERT INTO `yii2_migration` VALUES ('m191220_081916_create_movie_table', '1576830287');

-- ----------------------------
-- Table structure for `yii2_movie`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_movie`;
CREATE TABLE `yii2_movie` (
  `movieid` int(11) NOT NULL AUTO_INCREMENT COMMENT '电影ID',
  `title` char(200) NOT NULL COMMENT '电影标题',
  `adimg` varchar(255) NOT NULL COMMENT '电影图片',
  `info` varchar(255) NOT NULL COMMENT '电影介绍',
  `oldprice` decimal(10,2) NOT NULL COMMENT '市场价格',
  `price` decimal(10,2) NOT NULL COMMENT '会员价格',
  `murl` varchar(255) NOT NULL COMMENT '播放地址',
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2_movie
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2_user`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_user`;
CREATE TABLE `yii2_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2_user
-- ----------------------------
INSERT INTO `yii2_user` VALUES ('1', 'admin888', 'ef0dyJt4gpTSqdcFKtox9vuao0mkdVgz', '$2y$13$0xo3fbbstP8qIYsjEYR5NuyJUbrsc2WiBybpkSp/8KujwPRye0l8u', null, '1620016116@qq.com', '10', '1576747403', '1576747403', 'auG1pD744_dnm-XtPgHXozJZ-YR_MUt6_1576747403');
INSERT INTO `yii2_user` VALUES ('2', 'admin1', 'iuB2hjVFGTcNn_QSLivxTqSLJlRkV5tl', '$2y$13$R6FxTNngIYcDXi6Jq5MQz.Sqftrurb1Ww1bHAEOfnTXTpHVLmnvy6', null, 'abc@qq.com', '10', '1576750451', '1576750451', 'fqmc2QUn2GrvdNK9aGNeStCyis6Ehh9v_1576750451');
