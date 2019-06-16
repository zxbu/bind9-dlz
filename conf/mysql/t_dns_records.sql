/*
Navicat MySQL Data Transfer

Source Server         : 172.16.1.25
Source Server Version : 50719
Source Host           : 172.16.1.25:3306
Source Database       : bind-test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-09-18 11:13:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_dns_records
-- ----------------------------
DROP TABLE IF EXISTS `t_dns_records`;
CREATE TABLE `t_dns_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主健',
  `zone` varchar(255) NOT NULL DEFAULT '' COMMENT '域名',
  `host` varchar(255) NOT NULL DEFAULT '' COMMENT '记录名称',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '记录类型',
  `data` varchar(255) NOT NULL DEFAULT '' COMMENT '记录值',
  `ttl` int(11) DEFAULT NULL COMMENT 'ttl(存活时间)',
  `mx_priority` int(11) DEFAULT NULL COMMENT 'mx优先级',
  `refresh` int(11) DEFAULT NULL COMMENT '刷新时间间隔',
  `retry` int(11) DEFAULT NULL COMMENT '重试时间间隔',
  `expire` int(11) DEFAULT NULL COMMENT '过期时间',
  `minimum` int(11) DEFAULT NULL COMMENT '最小时间',
  `serial` bigint(20) DEFAULT NULL COMMENT '序列号,每次更改配置都会在原来的基础上加1',
  `resp_person` varchar(64) DEFAULT NULL COMMENT '责任人',
  `status` tinyint(4) DEFAULT '1' COMMENT '0:该记录无效, 1:该记录有效',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ix_zone` (`zone`),
  KEY `ix_host` (`host`),
  KEY `ix_data` (`data`),
  KEY `ix_type` (`type`),
  KEY `ix_status` (`status`),
  KEY `ix_created_at` (`created_at`),
  KEY `ix_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='内网DNS记录';
SET FOREIGN_KEY_CHECKS=1;
