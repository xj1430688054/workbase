insert  into `tb_notice`(`id`,`content`,`ext1`,`title`,`tid`,`uid`,`create_time`) values (2,'safasfasfas','23423','23423',1,1,'2019-05-02 21:10:25'),(3,'safasfasfas','23423','23423',2,2,'2019-05-02 21:10:25'),(4,'safasfasfas','23423','23423',3,33,'2019-05-02 21:10:25'),(5,'safasfasfas','23423','23423',2,34,'2019-05-02 21:10:25'),(6,'safasfasfas','23423','23423',1,35,'2019-05-02 21:10:25'),(7,'safasfasfas','23423','23423',3,36,'2019-05-02 21:10:25'),(8,'safasfasfas','23423','23423',1,37,'2019-05-02 21:10:25'),(9,'safasfasfas','23423','23423',3,38,'2019-05-02 21:10:25'),(10,'safasfasfas','23423','23423',1,39,'2019-05-02 21:10:25'),(11,'safasfasfas','23423','23423',3,40,'2019-05-02 21:10:25'),(12,'safasfasfas','23423','23423',4,2,'2019-05-02 21:10:25'),(13,'safasfasfas','23423','23423',1,1,'2019-05-02 21:10:25'),(14,'safasfasfas','23423','23423',2,41,'2019-05-02 21:10:25'),(15,'safasfasfas','23423','23423',1,42,'2019-05-02 21:10:25'),(16,'safasfasfas','23423','23423',4,43,'2019-05-02 21:10:25'),(17,'safasfasfas','23423','23423',1,44,'2019-05-02 21:10:25'),(18,'safasfasfas','23423','23423',4,45,'2019-05-02 21:10:25'),(19,'safasfasfas','23423','23423',4,46,'2019-05-02 21:10:25'),(23,'撒打发士大夫十大',NULL,'5月5号团建哈',1,1,'2019-05-02 22:25:58'),(24,'11',NULL,'j',1,1,'2019-05-05 13:44:20');
insert  into `tb_notice_type`(`id`,`name`,`tid`) values (1,'系统通知',1),(2,'重要通知',1),(3,'团建通知',1),(4,'奖励通知',1);


insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (1, '2017-01-10 13:56:51', '用户管理', null, 0, 2, '用户管理', 1, 'system:user:index', '/admin/user/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (2, '2017-01-10 13:56:51', '用户编辑', null, 0, 3, '用户编辑', 1, 'system:user:edit', '/admin/user/edit*', 2, '2019-05-08 11:26:00', 1);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (3, '2017-01-11 16:48:48', '用户添加', null, 0, 3, '用户添加', 2, 'system:user:add', '/admin/user/add', 2, '2019-05-08 11:26:00', 1);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (4, '2017-01-11 16:48:48', '用户删除', null, 0, 3, '用户删除', 3, 'system:user:deleteBatch', '/admin/user/deleteBatch', 2, '2019-05-08 11:26:00', 1);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (5, '2017-01-11 16:48:48', '角色分配', null, 0, 3, '角色分配', 4, 'system:user:grant', '/admin/user/grant/**', 2, '2019-05-08 11:26:00', 1);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (6, '2017-01-12 16:45:10', '角色管理', null, 0, 2, '角色管理', 2, 'system:role:index', '/admin/role/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (7, '2017-01-12 16:47:02', '角色编辑', null, 0, 3, '角色编辑', 1, 'system:role:edit', '/admin/role/edit*', 2, '2019-05-08 11:26:00', 1);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (8, '2017-01-12 16:47:23', '角色添加', null, 0, 3, '角色添加', 2, 'system:role:add', '/admin/role/add', 2, '2019-05-08 11:26:00', 6);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (9, '2017-01-12 16:47:23', '角色删除', null, 0, 3, '角色删除', 3, 'system:role:deleteBatch', '/admin/role/deleteBatch', 2, '2019-05-08 11:26:00', 6);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (10, '2017-01-12 16:47:23', '资源分配', null, 0, 3, '资源分配', 4, 'system:role:grant', '/admin/role/grant/**', 2, '2019-05-08 11:26:00', 6);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (11, '2017-01-17 11:21:12', '资源管理', null, 0, 2, '资源管理', 3, 'system:resource:index', '/admin/resource/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (12, '2017-01-17 11:21:52', '资源编辑', null, 0, 3, '资源编辑', 1, 'system:resource:edit', '/admin/resource/edit*', 2, '2019-05-08 11:26:00', 11);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (13, '2017-01-17 11:21:54', '资源添加', null, 0, 3, '资源添加', 2, 'system:resource:add', '/admin/resource/add', 2, '2019-05-08 11:26:00', 11);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (14, '2017-01-17 11:21:54', '资源删除', null, 0, 3, '资源删除', 3, 'system:resource:deleteBatch', '/admin/resource/deleteBatch', 2, '2019-05-08 11:26:00', 11);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (15, '2017-01-10 13:56:51', '报销管理', null, 0, 2, '报销管理', 4, 'system:reim:index', '/admin/reim/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (16, '2017-01-10 13:56:51', '报销修改', null, 0, 3, '报销编辑', 1, 'system:reim:edit', '/admin/reim/edit*', 2, '2019-05-08 11:26:00', 15);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (17, '2017-01-11 16:48:48', '报销添加', null, 0, 3, '报销添加', 2, 'system:reim:add', '/admin/reim/add', 2, '2019-05-08 11:26:00', 15);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (18, '2017-01-11 16:48:48', '报销删除', null, 0, 3, '报销删除', 3, 'system:reim:delete', '/admin/reim/delete*', 2, '2019-05-08 11:26:00', 15);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (24, '2017-01-10 13:56:51', '项目管理', null, 0, 2, '项目管理', 1, 'system:group:index', '/admin/group/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (25, '2017-01-10 13:56:51', '项目修改', null, 0, 3, '项目编辑', 1, 'system:group:edit', '/admin/group/edit*', 2, '2019-05-08 11:26:00', 24);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (26, '2017-01-11 16:48:48', '项目添加', null, 0, 3, '项目添加', 2, 'system:group:add', '/admin/group/add', 2, '2019-05-08 11:26:00', 24);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (27, '2017-01-11 16:48:48', '项目删除', null, 0, 3, '项目删除', 3, 'system:group:delete', '/admin/group/delete*', 2, '2019-05-08 11:26:00', 24);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (100, '2017-01-11 16:48:48', '项目人员', null, 0, 3, '项目人员', 3, 'system:group:grant', '/admin/group/grant*', 2, '2019-05-08 11:26:00', 24);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (28, '2017-01-10 13:56:51', '日报管理', null, 0, 2, '日报管理', 1, 'system:sche:index', '/admin/sche/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (29, '2017-01-10 13:56:51', '日报修改', null, 0, 3, '日报编辑', 1, 'system:sche:edit', '/admin/sche/edit*', 2, '2019-05-08 11:26:00', 28);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (30, '2017-01-11 16:48:48', '日报添加', null, 0, 3, '日报添加', 2, 'system:sche:add', '/admin/sche/add', 2, '2019-05-08 11:26:00', 28);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (31, '2017-01-11 16:48:48', '日报删除', null, 0, 3, '日报删除', 3, 'system:sche:delete', '/admin/sche/delete*', 2, '2019-05-08 11:26:00', 28);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (36, '2017-01-10 13:56:51', '公告管理', null, 0, 3, '公告管理', 1, 'system:notice:index', '/admin/notice/index', 2, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (37, '2017-01-10 13:56:51', '公告查看', null, 0, 3, '公告查看', 1, 'system:notice:edit', '/admin/notice/edit*', 2, '2019-05-08 11:26:00', 36);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (38, '2017-01-11 16:48:48', '公告添加', null, 0, 3, '公告添加', 2, 'system:notice:add', '/admin/notice/add', 2, '2019-05-08 11:26:00', 36);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (39, '2017-01-11 16:48:48', '公告删除', null, 0, 3, '公告删除', 3, 'system:notice:delete', '/admin/notice/delete*', 2, '2019-05-08 11:26:00', 36);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (40, '2017-01-10 13:56:51', '部门管理', null, 0, 2, '部门管理', 1, 'system:dept:index', '/admin/dept/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (41, '2017-01-10 13:56:51', '部门修改', null, 0, 3, '部门编辑', 1, 'system:dept:edit', '/admin/dept/edit*', 2, '2019-05-08 11:26:00', 40);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (42, '2017-01-11 16:48:48', '部门添加', null, 0, 3, '部门添加', 2, 'system:dept:add', '/admin/dept/add', 2, '2019-05-08 11:26:00', 40);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (43, '2017-01-11 16:48:48', '部门删除', null, 0, 3, '部门删除', 3, 'system:dept:delete', '/admin/dept/delete*', 2, '2019-05-08 11:26:00', 40);




insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1001, '成都', '1997-05-18 00:00:00', '2019-05-02 17:57:44', '372925197702080097', 0, '超级管理员', 2, 'xj143068@163.com', 0, 'admin', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 20:13:57', 'img/longze2.jpg', 'admin');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1002, '1', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'xj143068@163.com', 0, 'xujian', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', 'xujian');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1033, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'laowang@qq.com', 0, '江南一点雨', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10000');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1034, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'chenjing@qq.com', 0, '陈静', '3931MUEQD1939MQMLM4AISPVNE', 2, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10001');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1035, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'zhao@qq.com', 0, '赵琳浩', '3931MUEQD1939MQMLM4AISPVNE', 2, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10002');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1036, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'zhao@qq.com', 0, '鹿存亮', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10003');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1037, '河南洛阳人民大道58号', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'yaosen@qq.com', 0, '姚森', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10004');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1038, '陕西西安新城区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'yunxing@qq.com', 0, '云星', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10005');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1039, '广东省广州市天河区冼村路', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'jiaxuming@qq.com', 0, '贾旭明', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10006');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1040, '广东珠海', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'zhangliming@qq.com', 0, '张黎明', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10007');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1041, '西安市雁塔区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'xuelei@qq.com', 0, '薛磊', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10008');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1042, '海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'zhangjie@qq.com', 0, '张洁', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10009');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1043, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'laowang@qq.com', 0, '江南一点雨2', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10010');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1044, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'chenjing@qq.com', 0, '陈静2', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10011');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1045, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'zhao@qq.com', 0, '赵琳浩2', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10012');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1046, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'zhao@qq.com', 0, '鹿存亮2', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10013');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1047, '河南洛阳人民大道58号', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'yaosen@qq.com', 0, '姚森2', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10014');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1048, '陕西西安新城区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'yunxing@qq.com', 0, '云星2', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10015');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1049, '广东省广州市天河区冼村路', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'jiaxuming@qq.com', 0, '贾旭明2', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10016');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1050, '广东珠海', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'zhangliming@qq.com', 0, '王一亭', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10017');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1051, '西安市雁塔区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'xuelei@qq.com', 0, '薛磊2', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10018');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1052, '海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'zhangjie@qq.com', 0, '张洁2', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10019');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1053, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'laowang@qq.com', 0, '江南一点雨3', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10020');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1054, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'chenjing@qq.com', 0, '陈静3', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10021');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1055, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'zhao@qq.com', 0, '鹿存亮3', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10022');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1056, '河南洛阳人民大道58号', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'yaosen@qq.com', 0, '姚森3', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10023');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1057, '陕西西安新城区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'yunxing@qq.com', 0, '云星3', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10024');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1058, '广东省广州市天河区冼村路', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'jiaxuming@qq.com', 0, '贾旭明3', '3931MUEQD1939MQMLM4AISPVNE', 0, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10025');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1059, '广东珠海', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'zhangliming@qq.com', 0, '张黎明3', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10026');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1060, '西安市雁塔区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'xuelei@qq.com', 0, '薛磊3', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10027');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1061, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 2, 'laowang@qq.com', 0, '江南一点雨4', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze2.jpg', '10028');
insert into tb_user (id, address, birthday, create_time, credential_no, delete_status, description, did, email, locked, nick_name, password, sex, telephone, update_time, url, user_name) values (1062, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', '372925197702080097', 0, '啦啦啦', 1, 'chenjing@qq.com', 0, '陈静4', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'img/longze.jpg', '10029');


insert  into `tb_role`(`id`,`create_time`,`description`,`name`,`role_key`,`status`,`update_time`) values (1,'2017-01-09 17:25:30','超级管理员','administrator','administrator',0,'2017-01-09 17:26:25'),(2,'2019-05-02 16:12:27','部门经理','部门经理','部门经理',0,'2019-05-02 16:12:27'),(3,'2019-05-02 16:12:56','组长','组长','组长',0,'2019-05-02 16:12:56');
insert into tb_role (id, create_time, description, name, role_key, status, update_time) values (4, '2017-01-09 17:25:30', '组员', '组员', '组员', 0, '2017-01-09 17:26:25');

insert into tb_user_role (user_id, role_id) values (1001, 1);
insert into tb_user_role (user_id, role_id) values (1002, 2);
insert into tb_user_role (user_id, role_id) values (1033, 4);
insert into tb_user_role (user_id, role_id) values (1034, 4);
insert into tb_user_role (user_id, role_id) values (1035, 4);
insert into tb_user_role (user_id, role_id) values (1036, 4);
insert into tb_user_role (user_id, role_id) values (1037, 4);
insert into tb_user_role (user_id, role_id) values (1038, 4);
insert into tb_user_role (user_id, role_id) values (1039, 4);
insert into tb_user_role (user_id, role_id) values (1040, 4);
insert into tb_user_role (user_id, role_id) values (1041, 4);
insert into tb_user_role (user_id, role_id) values (1042, 4);
insert into tb_user_role (user_id, role_id) values (1043, 4);
insert into tb_user_role (user_id, role_id) values (1044, 4);
insert into tb_user_role (user_id, role_id) values (1045, 4);
insert into tb_user_role (user_id, role_id) values (1046, 4);
insert into tb_user_role (user_id, role_id) values (1047, 4);
insert into tb_user_role (user_id, role_id) values (1048, 4);
insert into tb_user_role (user_id, role_id) values (1049, 4);
insert into tb_user_role (user_id, role_id) values (1050, 4);
insert into tb_user_role (user_id, role_id) values (1051, 4);
insert into tb_user_role (user_id, role_id) values (1052, 4);
insert into tb_user_role (user_id, role_id) values (1053, 4);
insert into tb_user_role (user_id, role_id) values (1054, 4);
insert into tb_user_role (user_id, role_id) values (1055, 4);
insert into tb_user_role (user_id, role_id) values (1056, 4);
insert into tb_user_role (user_id, role_id) values (1057, 4);
insert into tb_user_role (user_id, role_id) values (1058, 4);
insert into tb_user_role (user_id, role_id) values (1059, 4);
insert into tb_user_role (user_id, role_id) values (1060, 4);
insert into tb_user_role (user_id, role_id) values (1061, 4);
insert into tb_user_role (user_id, role_id) values (1062, 4);






insert into tb_role_resource (role_id, resource_id) values (1, 1);
insert into tb_role_resource (role_id, resource_id) values (1, 2);
insert into tb_role_resource (role_id, resource_id) values (1, 3);
insert into tb_role_resource (role_id, resource_id) values (1, 4);
insert into tb_role_resource (role_id, resource_id) values (1, 5);
insert into tb_role_resource (role_id, resource_id) values (1, 6);
insert into tb_role_resource (role_id, resource_id) values (1, 7);
insert into tb_role_resource (role_id, resource_id) values (1, 8);
insert into tb_role_resource (role_id, resource_id) values (1, 9);
insert into tb_role_resource (role_id, resource_id) values (1, 10);
insert into tb_role_resource (role_id, resource_id) values (1, 11);
insert into tb_role_resource (role_id, resource_id) values (1, 12);
insert into tb_role_resource (role_id, resource_id) values (1, 13);
insert into tb_role_resource (role_id, resource_id) values (1, 14);
insert into tb_role_resource (role_id, resource_id) values (1, 15);
insert into tb_role_resource (role_id, resource_id) values (2, 15);
insert into tb_role_resource (role_id, resource_id) values (1, 16);
insert into tb_role_resource (role_id, resource_id) values (2, 16);
insert into tb_role_resource (role_id, resource_id) values (1, 17);
insert into tb_role_resource (role_id, resource_id) values (2, 17);
insert into tb_role_resource (role_id, resource_id) values (1, 18);
insert into tb_role_resource (role_id, resource_id) values (2, 18);
insert into tb_role_resource (role_id, resource_id) values (1, 24);
insert into tb_role_resource (role_id, resource_id) values (2, 24);
insert into tb_role_resource (role_id, resource_id) values (3, 24);
insert into tb_role_resource (role_id, resource_id) values (1, 25);
insert into tb_role_resource (role_id, resource_id) values (2, 25);
insert into tb_role_resource (role_id, resource_id) values (3, 25);
insert into tb_role_resource (role_id, resource_id) values (1, 26);
insert into tb_role_resource (role_id, resource_id) values (2, 26);
insert into tb_role_resource (role_id, resource_id) values (3, 26);
insert into tb_role_resource (role_id, resource_id) values (1, 27);
insert into tb_role_resource (role_id, resource_id) values (2, 27);
insert into tb_role_resource (role_id, resource_id) values (3, 27);
insert into tb_role_resource (role_id, resource_id) values (1, 28);
insert into tb_role_resource (role_id, resource_id) values (2, 28);
insert into tb_role_resource (role_id, resource_id) values (1, 29);
insert into tb_role_resource (role_id, resource_id) values (2, 29);
insert into tb_role_resource (role_id, resource_id) values (1, 30);
insert into tb_role_resource (role_id, resource_id) values (2, 30);
insert into tb_role_resource (role_id, resource_id) values (1, 31);
insert into tb_role_resource (role_id, resource_id) values (2, 31);
insert into tb_role_resource (role_id, resource_id) values (1, 36);
insert into tb_role_resource (role_id, resource_id) values (2, 36);
insert into tb_role_resource (role_id, resource_id) values (1, 37);
insert into tb_role_resource (role_id, resource_id) values (2, 37);
insert into tb_role_resource (role_id, resource_id) values (1, 38);
insert into tb_role_resource (role_id, resource_id) values (2, 38);
insert into tb_role_resource (role_id, resource_id) values (1, 39);
insert into tb_role_resource (role_id, resource_id) values (2, 39);
insert into tb_role_resource (role_id, resource_id) values (1, 40);
insert into tb_role_resource (role_id, resource_id) values (1, 41);
insert into tb_role_resource (role_id, resource_id) values (1, 42);
insert into tb_role_resource (role_id, resource_id) values (1, 43);

insert into tb_role_resource (role_id, resource_id) values (1, 100);


insert into tb_reim (id, amount, create_time, name, pid, status, uid, update_time, url) values (1, '20', '1020-02-29 00:00:00', '1', '1', '1', '1', '1020-02-29 00:00:00', 'img/p3.jpg');
insert into tb_reim (id, amount, create_time, name, pid, status, uid, update_time, url) values (2, '30', '1020-02-29 00:00:00', '1', '1', '1', '1', '1020-02-29 00:00:00', 'img/a2.jpg');
insert into tb_reim (id, amount, create_time, name, pid, status, uid, update_time, url) values (3, '30', '1020-02-29 00:00:00', '1', '1', '1', '1', '1020-02-29 00:00:00', 'img/a1.jpg');
insert into tb_reim (id, amount, create_time, name, pid, status, uid, update_time, url) values (4, '122', '2020-03-03 21:42:47', '昨天打车票', null, '0', '1', null, 'img/1583242957388_821.jpg');

insert into tb_group (id, create_time, name, status, update_time, validstatus) values (1, '2020-03-05 00:00:00', '审计一期', 1, '2020-03-05 00:00:00', 1);
insert into tb_group (id, create_time, name, status, update_time, validstatus) values (2, '2020-03-05 00:00:00', '审计二期', 1, '2020-03-05 00:00:00', 1);
insert into tb_group (id, create_time, name, status, update_time, validstatus) values (3, '2020-03-05 00:00:00', '审计三期', 0, '2020-03-05 00:00:00', 1);
insert into tb_group (id, create_time, name, status, update_time, validstatus) values (4, '2020-03-05 00:00:00', '审计四期', 0, '2020-03-05 00:00:00', 1);



insert into tb_group_user (gid, uid) values (1, 1001);
insert into tb_group_user (gid, uid) values (2, 1001);
insert into tb_group_user (gid, uid) values (4, 1001);
insert into tb_group_user (gid, uid) values (1, 1002);
insert into tb_group_user (gid, uid) values (4, 1002);
insert into tb_group_user (gid, uid) values (3, 1033);
insert into tb_group_user (gid, uid) values (3, 1034);
insert into tb_group_user (gid, uid) values (3, 1035);
insert into tb_group_user (gid, uid) values (3, 1036);
insert into tb_group_user (gid, uid) values (3, 1037);
insert into tb_group_user (gid, uid) values (3, 1038);
insert into tb_group_user (gid, uid) values (3, 1039);
insert into tb_group_user (gid, uid) values (4, 1040);
insert into tb_group_user (gid, uid) values (4, 1041);
insert into tb_group_user (gid, uid) values (4, 1042);
insert into tb_group_user (gid, uid) values (4, 1043);
insert into tb_group_user (gid, uid) values (4, 1044);
insert into tb_group_user (gid, uid) values (4, 1045);




insert into tb_sche (id, name, create_time, sche_date, uid) values (1, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1001);
insert into tb_sche (id, name, create_time, sche_date, uid) values (2, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1002);
insert into tb_sche (id, name, create_time, sche_date, uid) values (3, '出差', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1033);
insert into tb_sche (id, name, create_time, sche_date, uid) values (4, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1034);
insert into tb_sche (id, name, create_time, sche_date, uid) values (5, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1035);
insert into tb_sche (id, name, create_time, sche_date, uid) values (6, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1036);
insert into tb_sche (id, name, create_time, sche_date, uid) values (7, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1037);
insert into tb_sche (id, name, create_time, sche_date, uid) values (8, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1038);
insert into tb_sche (id, name, create_time, sche_date, uid) values (9, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1039);
insert into tb_sche (id, name, create_time, sche_date, uid) values (10, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1040);
insert into tb_sche (id, name, create_time, sche_date, uid) values (11, '出差', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1041);
insert into tb_sche (id, name, create_time, sche_date, uid) values (12, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1042);
insert into tb_sche (id, name, create_time, sche_date, uid) values (13, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1043);
insert into tb_sche (id, name, create_time, sche_date, uid) values (14, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1044);
insert into tb_sche (id, name, create_time, sche_date, uid) values (15, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1045);
insert into tb_sche (id, name, create_time, sche_date, uid) values (16, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1046);
insert into tb_sche (id, name, create_time, sche_date, uid) values (17, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1047);
insert into tb_sche (id, name, create_time, sche_date, uid) values (18, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1048);
insert into tb_sche (id, name, create_time, sche_date, uid) values (19, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1049);
insert into tb_sche (id, name, create_time, sche_date, uid) values (20, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1050);
insert into tb_sche (id, name, create_time, sche_date, uid) values (21, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1051);
insert into tb_sche (id, name, create_time, sche_date, uid) values (22, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1052);
insert into tb_sche (id, name, create_time, sche_date, uid) values (23, '休假', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1053);
insert into tb_sche (id, name, create_time, sche_date, uid) values (24, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1054);
insert into tb_sche (id, name, create_time, sche_date, uid) values (25, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1055);
insert into tb_sche (id, name, create_time, sche_date, uid) values (26, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1056);
insert into tb_sche (id, name, create_time, sche_date, uid) values (27, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1057);
insert into tb_sche (id, name, create_time, sche_date, uid) values (28, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1058);
insert into tb_sche (id, name, create_time, sche_date, uid) values (29, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1059);
insert into tb_sche (id, name, create_time, sche_date, uid) values (30, '开会', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1060);
insert into tb_sche (id, name, create_time, sche_date, uid) values (31, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1061);
insert into tb_sche (id, name, create_time, sche_date, uid) values (32, '上班', '2020-02-02 00:00:00', '2020-02-02 00:00:00', 1062);
insert into tb_sche (id, name, create_time, sche_date, uid) values (33, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1001);
insert into tb_sche (id, name, create_time, sche_date, uid) values (34, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1002);
insert into tb_sche (id, name, create_time, sche_date, uid) values (35, '休假', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1033);
insert into tb_sche (id, name, create_time, sche_date, uid) values (36, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1034);
insert into tb_sche (id, name, create_time, sche_date, uid) values (37, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1035);
insert into tb_sche (id, name, create_time, sche_date, uid) values (38, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1036);
insert into tb_sche (id, name, create_time, sche_date, uid) values (39, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1037);
insert into tb_sche (id, name, create_time, sche_date, uid) values (40, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1038);
insert into tb_sche (id, name, create_time, sche_date, uid) values (41, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1039);
insert into tb_sche (id, name, create_time, sche_date, uid) values (42, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1040);
insert into tb_sche (id, name, create_time, sche_date, uid) values (43, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1041);
insert into tb_sche (id, name, create_time, sche_date, uid) values (44, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1042);
insert into tb_sche (id, name, create_time, sche_date, uid) values (45, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1043);
insert into tb_sche (id, name, create_time, sche_date, uid) values (46, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1044);
insert into tb_sche (id, name, create_time, sche_date, uid) values (47, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1045);
insert into tb_sche (id, name, create_time, sche_date, uid) values (48, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1046);
insert into tb_sche (id, name, create_time, sche_date, uid) values (49, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1047);
insert into tb_sche (id, name, create_time, sche_date, uid) values (50, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1048);
insert into tb_sche (id, name, create_time, sche_date, uid) values (51, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1049);
insert into tb_sche (id, name, create_time, sche_date, uid) values (52, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1050);
insert into tb_sche (id, name, create_time, sche_date, uid) values (53, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1051);
insert into tb_sche (id, name, create_time, sche_date, uid) values (54, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1052);
insert into tb_sche (id, name, create_time, sche_date, uid) values (55, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1053);
insert into tb_sche (id, name, create_time, sche_date, uid) values (56, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1054);
insert into tb_sche (id, name, create_time, sche_date, uid) values (57, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1055);
insert into tb_sche (id, name, create_time, sche_date, uid) values (58, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1056);
insert into tb_sche (id, name, create_time, sche_date, uid) values (59, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1057);
insert into tb_sche (id, name, create_time, sche_date, uid) values (60, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1058);
insert into tb_sche (id, name, create_time, sche_date, uid) values (61, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1059);
insert into tb_sche (id, name, create_time, sche_date, uid) values (62, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1060);
insert into tb_sche (id, name, create_time, sche_date, uid) values (63, '开会', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1061);
insert into tb_sche (id, name, create_time, sche_date, uid) values (64, '上班', '2020-01-01 00:00:00', '2020-01-01 00:00:00', 1062);
insert into tb_sche (id, name, create_time, sche_date, uid) values (65, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1001);
insert into tb_sche (id, name, create_time, sche_date, uid) values (66, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1002);
insert into tb_sche (id, name, create_time, sche_date, uid) values (67, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1033);
insert into tb_sche (id, name, create_time, sche_date, uid) values (68, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1034);
insert into tb_sche (id, name, create_time, sche_date, uid) values (69, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1035);
insert into tb_sche (id, name, create_time, sche_date, uid) values (70, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1036);
insert into tb_sche (id, name, create_time, sche_date, uid) values (71, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1037);
insert into tb_sche (id, name, create_time, sche_date, uid) values (72, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1038);
insert into tb_sche (id, name, create_time, sche_date, uid) values (73, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1039);
insert into tb_sche (id, name, create_time, sche_date, uid) values (74, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1040);
insert into tb_sche (id, name, create_time, sche_date, uid) values (75, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1041);
insert into tb_sche (id, name, create_time, sche_date, uid) values (76, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1042);
insert into tb_sche (id, name, create_time, sche_date, uid) values (77, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1043);
insert into tb_sche (id, name, create_time, sche_date, uid) values (78, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1044);
insert into tb_sche (id, name, create_time, sche_date, uid) values (79, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1045);
insert into tb_sche (id, name, create_time, sche_date, uid) values (80, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1046);
insert into tb_sche (id, name, create_time, sche_date, uid) values (81, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1047);
insert into tb_sche (id, name, create_time, sche_date, uid) values (82, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1048);
insert into tb_sche (id, name, create_time, sche_date, uid) values (83, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1049);
insert into tb_sche (id, name, create_time, sche_date, uid) values (84, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1050);
insert into tb_sche (id, name, create_time, sche_date, uid) values (85, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1051);
insert into tb_sche (id, name, create_time, sche_date, uid) values (86, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1052);
insert into tb_sche (id, name, create_time, sche_date, uid) values (87, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1053);
insert into tb_sche (id, name, create_time, sche_date, uid) values (88, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1054);
insert into tb_sche (id, name, create_time, sche_date, uid) values (89, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1055);
insert into tb_sche (id, name, create_time, sche_date, uid) values (90, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1056);
insert into tb_sche (id, name, create_time, sche_date, uid) values (91, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1057);
insert into tb_sche (id, name, create_time, sche_date, uid) values (92, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1058);
insert into tb_sche (id, name, create_time, sche_date, uid) values (93, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1059);
insert into tb_sche (id, name, create_time, sche_date, uid) values (94, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1060);
insert into tb_sche (id, name, create_time, sche_date, uid) values (95, '上班', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1061);
insert into tb_sche (id, name, create_time, sche_date, uid) values (96, '开会', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 1062);


insert into tb_dept (id, create_time, name, update_time) values (1, '2020-03-06 00:00:00', '金融部', '2020-03-06 00:00:00');
insert into tb_dept (id, create_time, name, update_time) values (2, '2020-03-06 00:00:00', '信息部', '2020-03-06 00:00:00');




