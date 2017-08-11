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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- 正在导出表  gocrm.account 的数据：~0 rows (大约)
DELETE FROM `account`;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`uuid`, `createDate`, `updateDate`, `enable`, `account`, `password`, `salt`, `username`, `gender`, `groupId`, `employeeCode`, `phone`, `avatarUrl`, `theme`, `lastLoginDate`, `lastLoginIp`) VALUES
	('031cb457-7e5b-11e7-aaed-1040f3a04c85', 0, 0, 1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '系统管理员', 0, '', '', '', '', 0, 0, '');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
