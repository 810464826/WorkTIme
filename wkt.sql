-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.0.96-community-nt - MySQL Community Edition (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 worktime 的数据库结构
CREATE DATABASE IF NOT EXISTS `worktime` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `worktime`;


-- 导出  表 worktime.employee 结构
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL auto_increment,
  `employeeno` varchar(50) NOT NULL,
  `employeename` varchar(255) NOT NULL,
  `phone` varchar(50) default NULL,
  `sex` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `university` varchar(50) default NULL COMMENT '毕业大学',
  `institute` varchar(50) default NULL COMMENT '所属专业/系院',
  `birthday` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 worktime.record 结构
CREATE TABLE IF NOT EXISTS `record` (
  `id` int(11) NOT NULL auto_increment,
  `employeeno` varchar(50) NOT NULL default '0',
  `employeename` varchar(50) NOT NULL default '0',
  `datetime` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 worktime.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL default '0',
  `password` varchar(50) NOT NULL default '0',
  `grade` varchar(50) NOT NULL default '0' COMMENT '0 代表普通用户  1代表管理员  ',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 worktime.worktime 结构
CREATE TABLE IF NOT EXISTS `worktime` (
  `id` int(11) NOT NULL auto_increment,
  `employeeno` varchar(50) NOT NULL default '0' COMMENT '对应的工号',
  `employeename` varchar(50) NOT NULL default '0' COMMENT '对应的员工姓名',
  `date` date NOT NULL,
  `morningworktime` int(10) default '0' COMMENT '上午的工时',
  `afternoonworktime` int(10) default '0' COMMENT '下午的工时',
  `nightworktime` int(10) default '0' COMMENT '晚上的工时',
  `firstrecordid` int(11) default NULL,
  `lastrecordid` int(11) default NULL,
  `firstrecord` varchar(50) default NULL COMMENT '最早的打卡记录',
  `lastrecord` varchar(50) default NULL COMMENT '最晚的打卡记录',
  `remarks` varchar(50) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='总工时';

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
