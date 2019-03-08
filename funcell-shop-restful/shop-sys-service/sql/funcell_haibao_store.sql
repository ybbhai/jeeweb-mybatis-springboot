﻿-- Script was generated by Devart dbForge Studio for MySQL, Version 6.0.315.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 2018/11/29 18:23:49
-- Server version: 5.7.17-log
-- Client version: 4.1

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

-- 
-- Set default database
--
USE funcell_haibao_store;

--
-- Definition for table store_role
--
DROP TABLE IF EXISTS store_role;
CREATE TABLE store_role (
  id VARCHAR(64) NOT NULL COMMENT '主键',
  name VARCHAR(100) NOT NULL COMMENT '角色名称',
  code VARCHAR(255) DEFAULT NULL COMMENT '英文名称',
  is_sys VARCHAR(64) DEFAULT NULL COMMENT '是否系统数据',
  usable VARCHAR(64) DEFAULT NULL COMMENT '是否可用',
  roles VARCHAR(255) DEFAULT NULL COMMENT '角色集合',
  create_by VARCHAR(64) DEFAULT NULL COMMENT '创建者',
  create_date DATE DEFAULT NULL COMMENT '创建时间',
  update_by VARCHAR(64) DEFAULT NULL COMMENT '更新者',
  update_date DATE DEFAULT NULL COMMENT '更新时间',
  del_flag CHAR(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  remarks VARCHAR(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (id)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '用户表'
ROW_FORMAT = DYNAMIC;

--
-- Definition for table store_user
--
DROP TABLE IF EXISTS store_user;
CREATE TABLE store_user (
  id VARCHAR(64) NOT NULL COMMENT '主键',
  realname VARCHAR(255) DEFAULT NULL COMMENT '真实名称',
  username VARCHAR(100) NOT NULL COMMENT '用户名',
  portrait VARCHAR(250) DEFAULT NULL COMMENT '头像',
  email VARCHAR(100) DEFAULT NULL COMMENT '邮件',
  phone VARCHAR(20) DEFAULT NULL COMMENT '联系电话',
  password VARCHAR(100) DEFAULT NULL COMMENT '密码',
  salt VARCHAR(100) DEFAULT NULL COMMENT '盐',
  status VARCHAR(255) DEFAULT NULL COMMENT '用户的状态',
  create_date DATE DEFAULT NULL COMMENT '创建时间',
  create_by VARCHAR(64) DEFAULT NULL COMMENT '创建者',
  update_by VARCHAR(64) DEFAULT NULL COMMENT '更新者',
  update_date DATE DEFAULT NULL COMMENT '更新时间',
  del_flag CHAR(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  remarks VARCHAR(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (id)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '用户表'
ROW_FORMAT = DYNAMIC;

--
-- Definition for table store_user_role
--
DROP TABLE IF EXISTS store_user_role;
CREATE TABLE store_user_role (
  id VARCHAR(64) NOT NULL COMMENT '主键',
  user_id VARCHAR(64) NOT NULL COMMENT '用户编号',
  role_id VARCHAR(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (id)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '用户-角色表'
ROW_FORMAT = DYNAMIC;

-- 
-- Dumping data for table store_role
--
INSERT INTO store_role VALUES
('e4b0349fb8784ecd8edb3ce061031212', '系统管理员', 'admin', '1', '1', 'ROLE_ADMIN', NULL, NULL, NULL, NULL, '0', NULL),
('f0e4f6e3470542c395e228b649fa74b1', '普通用户', 'normal', '1', '1', 'ROLE_USER', NULL, NULL, NULL, NULL, '0', NULL);

-- 
-- Dumping data for table store_user
--
INSERT INTO store_user VALUES
('00bd6b3b641548fc8e7d822e8c1aec43', NULL, 'test', NULL, NULL, NULL, '$2a$10$QYZHlCa/VqTmvBfmQtSeRuGkEJIf0W1X9xer9VV/r53HFtzsAVZWS', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL);

-- 
-- Dumping data for table store_user_role
--
INSERT INTO store_user_role VALUES
('f78bef4b89b74b37abe3fd7c249ffca2', '00bd6b3b641548fc8e7d822e8c1aec43', 'f0e4f6e3470542c395e228b649fa74b1');

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;