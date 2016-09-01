﻿# 博客发布系统 
## 简介
这是一个spring框架的练习项目, 使用git做版本控制, mave做依赖管理, jsp做前端显示,为了考虑扩展性采用JPA做持久层(hibernate作为jpa vendor), 同时巩固一下java基础知识.
## 功能

* 用户注册
* 用户登录
* 博客发布
* 博客浏览
## 开发思路
粮草未动, 兵马现行. 在敲第一行代码之前应该先想一想设计软件架构, 虽然这只是一个练习的小项目, 功能少,逻辑也比较简单, 但OCP的原则还是要遵守的.   
软件设计一定要考虑扩展性, 虽然现在只有四个功能, 但将来可能还要做功能的添加或更改.模块的粒度最好划分细致一些.遵循unix哲学,"单一职责"原则,我决定四个功能分别用四个controller来实现;前期的业务流量小,选MySQL(MariaDB)做数据库就够用了.

接下来的步骤就是**业务抽象**,我分解出两个业务模型:
    1. 用户模型(User),保存用户信息
    2. 博客模型(Blog),保存博客的内容和元信息  
    