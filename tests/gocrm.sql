-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.16-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 gocrm 的数据库结构
DROP DATABASE IF EXISTS `gocrm`;
CREATE DATABASE IF NOT EXISTS `gocrm` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `gocrm`;


-- 导出  表 gocrm.account 结构
DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `uuid` varchar(36) NOT NULL DEFAULT '',
  `createDate` int(11) NOT NULL DEFAULT '0',
  `updateDate` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `account` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '' COMMENT '服务器端专用',
  `salt` varchar(200) NOT NULL DEFAULT '' COMMENT '服务器端专用',
  `username` varchar(255) NOT NULL DEFAULT '',
  `gender` int(11) NOT NULL DEFAULT '0',
  `groupId` varchar(36) NOT NULL DEFAULT '' COMMENT '分组',
  `employeeCode` varchar(20) NOT NULL DEFAULT '' COMMENT '工号',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `avatarUrl` varchar(255) NOT NULL DEFAULT '',
  `theme` int(11) NOT NULL DEFAULT '0',
  `lastLoginDate` int(11) NOT NULL DEFAULT '0',
  `lastLoginIp` varchar(36) NOT NULL DEFAULT '' COMMENT '上次登录的地址',
  `create_date` int(11) NOT NULL DEFAULT '0',
  `update_date` int(11) NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL DEFAULT '',
  `employee_code` varchar(255) NOT NULL DEFAULT '',
  `avatar_url` varchar(255) NOT NULL DEFAULT '',
  `last_login_date` int(11) NOT NULL DEFAULT '0',
  `last_login_ip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- 正在导出表  gocrm.account 的数据：~1 rows (大约)
DELETE FROM `account`;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`uuid`, `createDate`, `updateDate`, `enable`, `account`, `password`, `salt`, `username`, `gender`, `groupId`, `employeeCode`, `phone`, `avatarUrl`, `theme`, `lastLoginDate`, `lastLoginIp`, `create_date`, `update_date`, `group_id`, `employee_code`, `avatar_url`, `last_login_date`, `last_login_ip`) VALUES
	('031cb457-7e5b-11e7-aaed-1040f3a04c85', 0, 0, 1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '系统管理员', 0, '', '', '', '', 0, 0, '', 0, 0, '', '', '', 0, ''),
	('12345678-7e5b-11e7-aaed-1040f3a04c85', 0, 0, 1, 'luojian', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '罗剑', 0, '', '', '', '', 0, 0, '', 0, 0, '', '', '', 0, '');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- 导出  表 gocrm.account_role 结构
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE IF NOT EXISTS `account_role` (
  `uuid` varchar(36) NOT NULL DEFAULT '',
  `createDate` int(11) NOT NULL DEFAULT '0',
  `updateDate` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `accountId` varchar(36) NOT NULL DEFAULT '',
  `roleId` varchar(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色中间表';

-- 正在导出表  gocrm.account_role 的数据：~0 rows (大约)
DELETE FROM `account_role`;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` (`uuid`, `createDate`, `updateDate`, `enable`, `accountId`, `roleId`) VALUES
	('63e9e53e-830b-11e7-a150-1040f3a04c85', 0, 0, 1, '12345678-7e5b-11e7-aaed-1040f3a04c85', '799d4739-830a-11e7-a150-1040f3a04c85'),
	('63e9e773-830b-11e7-a150-1040f3a04c85', 0, 0, 1, '031cb457-7e5b-11e7-aaed-1040f3a04c85', '799d4478-830a-11e7-a150-1040f3a04c85');
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;


-- 导出  表 gocrm.resource 结构
DROP TABLE IF EXISTS `resource`;
CREATE TABLE IF NOT EXISTS `resource` (
  `uuid` varchar(36) NOT NULL DEFAULT '',
  `createDate` int(11) NOT NULL DEFAULT '0',
  `updateDate` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `serial` int(11) NOT NULL DEFAULT '100',
  `pid` bigint(11) NOT NULL COMMENT '父节点id',
  `name` varchar(45) DEFAULT '' COMMENT '资源名称',
  `resourcePath` varchar(255) NOT NULL COMMENT '资源路径',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源树';

-- 正在导出表  gocrm.resource 的数据：~0 rows (大约)
DELETE FROM `resource`;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` (`uuid`, `createDate`, `updateDate`, `enable`, `serial`, `pid`, `name`, `resourcePath`, `create_date`, `update_date`, `resource_path`) VALUES
	('f1f97af3-82fd-11e7-a150-1040f3a04c85', 0, 0, 1, 101, 0, '客户', '/customer', 0, 0, ''),
	('f1f97b7c-82fd-11e7-a150-1040f3a04c85', 0, 0, 1, 102, 0, '报表', '/report', 0, 0, ''),
	('f1f97bda-82fd-11e7-a150-1040f3a04c85', 0, 0, 1, 103, 0, '设置', '/setting', 0, 0, '');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;


-- 导出  表 gocrm.role 结构
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `uuid` varchar(36) NOT NULL DEFAULT '',
  `createDate` int(11) NOT NULL DEFAULT '0',
  `updateDate` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(45) DEFAULT '' COMMENT '名称',
  `description` varchar(255) NOT NULL COMMENT '描述',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- 正在导出表  gocrm.role 的数据：~0 rows (大约)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`uuid`, `createDate`, `updateDate`, `enable`, `name`, `description`) VALUES
	('799d4478-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '管理员', '管理员'),
	('799d4739-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '销售员', '录入客户，查看客户'),
	('799d47ca-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '分析员', '报表查看');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- 导出  表 gocrm.role_resource 结构
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE IF NOT EXISTS `role_resource` (
  `uuid` varchar(36) NOT NULL DEFAULT '',
  `createDate` int(11) NOT NULL DEFAULT '0',
  `updateDate` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `roleId` varchar(36) NOT NULL DEFAULT '',
  `resourceId` varchar(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色资源中间表';

-- 正在导出表  gocrm.role_resource 的数据：~0 rows (大约)
DELETE FROM `role_resource`;
/*!40000 ALTER TABLE `role_resource` DISABLE KEYS */;
INSERT INTO `role_resource` (`uuid`, `createDate`, `updateDate`, `enable`, `roleId`, `resourceId`) VALUES
	('d400feac-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '799d4478-830a-11e7-a150-1040f3a04c85', 'f1f97af3-82fd-11e7-a150-1040f3a04c85'),
	('d400ff4a-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '799d4478-830a-11e7-a150-1040f3a04c85', 'f1f97b7c-82fd-11e7-a150-1040f3a04c85'),
	('d400ffa0-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '799d4478-830a-11e7-a150-1040f3a04c85', 'f1f97bda-82fd-11e7-a150-1040f3a04c85'),
	('f21b57a7-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '799d4739-830a-11e7-a150-1040f3a04c85', 'f1f97af3-82fd-11e7-a150-1040f3a04c85'),
	('f21b5a68-830a-11e7-a150-1040f3a04c85', 0, 0, 1, '799d47ca-830a-11e7-a150-1040f3a04c85', 'f1f97b7c-82fd-11e7-a150-1040f3a04c85');
/*!40000 ALTER TABLE `role_resource` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
