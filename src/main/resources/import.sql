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
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (32, '2017-01-10 13:56:51', '宿舍管理', null, 0, 2, '宿舍管理', 1, 'system:dorm:index', '/admin/dorm/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (33, '2017-01-10 13:56:51', '宿舍修改', null, 0, 3, '宿舍编辑', 1, 'system:dorm:edit', '/admin/dorm/edit*', 2, '2019-05-08 11:26:00', 32);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (34, '2017-01-11 16:48:48', '宿舍查看', null, 0, 3, '宿舍查看', 2, 'system:dorm:add', '/admin/dorm/add', 2, '2019-05-08 11:26:00', 32);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (35, '2017-01-10 13:56:51', '宿舍删除', null, 0, 3, '宿舍删除', 3, 'system:dorm:delete', '/admin/dorm/delete', 1, '2019-05-08 11:26:00', 32);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (36, '2017-01-10 13:56:51', '公告管理', null, 0, 3, '公告管理', 1, 'system:notice:index', '/admin/notice/index', 2, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (37, '2017-01-10 13:56:51', '公告查看', null, 0, 3, '公告查看', 1, 'system:notice:edit', '/admin/notice/edit*', 2, '2019-05-08 11:26:00', 36);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (38, '2017-01-11 16:48:48', '公告添加', null, 0, 3, '公告添加', 2, 'system:notice:add', '/admin/notice/add', 2, '2019-05-08 11:26:00', 36);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (39, '2017-01-11 16:48:48', '公告删除', null, 0, 3, '公告删除', 3, 'system:notice:delete', '/admin/notice/delete*', 2, '2019-05-08 11:26:00', 36);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (40, '2017-01-10 13:56:51', '处分管理', null, 0, 2, '处分管理', 1, 'system:disc:index', '/admin/disc/index', 1, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (41, '2017-01-10 13:56:51', '处分修改', null, 0, 3, '处分修改', 1, 'system:disc:edit', '/admin/disc/edit*', 2, '2019-05-08 11:26:00', 40);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (42, '2017-01-10 13:56:51', '成绩管理', null, 0, 3, '成绩管理', 1, 'system:score:index', '/admin/score/index', 2, '2019-05-08 11:26:00', null);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (43, '2017-01-10 13:56:51', '成绩查看', null, 0, 3, '成绩查看', 1, 'system:score:edit', '/admin/score/edit*', 2, '2019-05-08 11:26:00', 42);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (44, '2017-01-11 16:48:48', '成绩添加', null, 0, 3, '成绩添加', 2, 'system:score:add', '/admin/score/add', 2, '2019-05-08 11:26:00', 42);
insert into tb_resource (id, create_time, description, icon, is_hide, level, name, sort, source_key, source_url, type, update_time, parent_id) values (45, '2017-01-11 16:48:48', '成绩删除', null, 0, 3, '成绩删除', 3, 'system:score:delete', '/admin/score/delete*', 2, '2019-05-08 11:26:00', 42);




insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (1, '成都', '1997-05-18 00:00:00', '2019-05-02 17:57:44', 0, '超级管理员', 'xj143068@163.com', 0, 'admin', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 20:13:57', 'admin');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (2, '1', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'xj143068@163.com', 0, 'xujian', '3931MUEQD1939MQMLM4AISPVNE', 1, '18435997695', '2019-05-02 17:57:44', 'xujian');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (33, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'laowang@qq.com', 0, '江南一点雨', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10000');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (34, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'chenjing@qq.com', 0, '陈静', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10001');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (35, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhao@qq.com', 0, '赵琳浩', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10002');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (36, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhao@qq.com', 0, '鹿存亮', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10003');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (37, '河南洛阳人民大道58号', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'yaosen@qq.com', 0, '姚森', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10004');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (38, '陕西西安新城区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'yunxing@qq.com', 0, '云星', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10005');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (39, '广东省广州市天河区冼村路', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'jiaxuming@qq.com', 0, '贾旭明', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10006');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (40, '广东珠海', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhangliming@qq.com', 0, '张黎明', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10007');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (41, '西安市雁塔区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'xuelei@qq.com', 0, '薛磊', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10008');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (42, '海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhangjie@qq.com', 0, '张洁', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10009');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (43, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'laowang@qq.com', 0, '江南一点雨2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10010');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (44, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'chenjing@qq.com', 0, '陈静2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10011');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (45, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhao@qq.com', 0, '赵琳浩2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10012');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (46, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhao@qq.com', 0, '鹿存亮2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10013');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (47, '河南洛阳人民大道58号', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'yaosen@qq.com', 0, '姚森2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10014');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (48, '陕西西安新城区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'yunxing@qq.com', 0, '云星2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10015');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (49, '广东省广州市天河区冼村路', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'jiaxuming@qq.com', 0, '贾旭明2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10016');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (50, '广东珠海', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhangliming@qq.com', 0, '王一亭', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10017');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (51, '西安市雁塔区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'xuelei@qq.com', 0, '薛磊2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10018');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (52, '海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhangjie@qq.com', 0, '张洁2', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10019');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (53, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'laowang@qq.com', 0, '江南一点雨3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10020');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (54, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'chenjing@qq.com', 0, '陈静3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10021');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (55, '陕西省西安市莲湖区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhao@qq.com', 0, '鹿存亮3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10022');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (56, '河南洛阳人民大道58号', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'yaosen@qq.com', 0, '姚森3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10023');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (57, '陕西西安新城区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'yunxing@qq.com', 0, '云星3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10024');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (58, '广东省广州市天河区冼村路', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'jiaxuming@qq.com', 0, '贾旭明3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10025');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (59, '广东珠海', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'zhangliming@qq.com', 0, '张黎明3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10026');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (60, '西安市雁塔区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'xuelei@qq.com', 0, '薛磊3', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10027');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (61, '深圳市南山区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'laowang@qq.com', 0, '江南一点雨4', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10028');
insert into tb_user (id, address, birthday, create_time, delete_status, description, email, locked, nick_name, password, sex, telephone, update_time, user_name) values (62, '海南省海口市美兰区', '2019-05-02 17:57:44', '2019-05-02 17:57:44', 0, '啦啦啦', 'chenjing@qq.com', 0, '陈静4', '3931MUEQD1939MQMLM4AISPVNE', null, '18435997695', '2019-05-02 17:57:44', '10029');


insert  into `tb_role`(`id`,`create_time`,`description`,`name`,`role_key`,`status`,`update_time`) values (1,'2017-01-09 17:25:30','超级管理员','administrator','administrator',0,'2017-01-09 17:26:25'),(2,'2019-05-02 16:12:27','部门经理','部门经理','部门经理',0,'2019-05-02 16:12:27'),(3,'2019-05-02 16:12:56','组长','组长','组长',0,'2019-05-02 16:12:56');
insert into tb_role (id, create_time, description, name, role_key, status, update_time) values (4, '2017-01-09 17:25:30', '组员', '组员', '组员', 0, '2017-01-09 17:26:25');

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
insert into tb_role_resource (role_id, resource_id) values (1, 32);
insert into tb_role_resource (role_id, resource_id) values (2, 32);
insert into tb_role_resource (role_id, resource_id) values (1, 33);
insert into tb_role_resource (role_id, resource_id) values (2, 33);
insert into tb_role_resource (role_id, resource_id) values (1, 34);
insert into tb_role_resource (role_id, resource_id) values (2, 34);
insert into tb_role_resource (role_id, resource_id) values (1, 35);
insert into tb_role_resource (role_id, resource_id) values (2, 35);
insert into tb_role_resource (role_id, resource_id) values (1, 36);
insert into tb_role_resource (role_id, resource_id) values (2, 36);
insert into tb_role_resource (role_id, resource_id) values (1, 37);
insert into tb_role_resource (role_id, resource_id) values (2, 37);
insert into tb_role_resource (role_id, resource_id) values (1, 38);
insert into tb_role_resource (role_id, resource_id) values (2, 38);
insert into tb_role_resource (role_id, resource_id) values (1, 39);
insert into tb_role_resource (role_id, resource_id) values (2, 39);
insert into tb_role_resource (role_id, resource_id) values (1, 40);
insert into tb_role_resource (role_id, resource_id) values (2, 40);
insert into tb_role_resource (role_id, resource_id) values (1, 41);
insert into tb_role_resource (role_id, resource_id) values (1, 42);
insert into tb_role_resource (role_id, resource_id) values (1, 43);
insert into tb_role_resource (role_id, resource_id) values (1, 44);
insert into tb_role_resource (role_id, resource_id) values (1, 45);
insert into tb_role_resource (role_id, resource_id) values (2, 42);
insert into tb_role_resource (role_id, resource_id) values (2, 43);
insert into tb_role_resource (role_id, resource_id) values (2, 44);
insert into tb_role_resource (role_id, resource_id) values (2, 45);
insert into tb_role_resource (role_id, resource_id) values (3, 42);
insert into tb_role_resource (role_id, resource_id) values (1, 100);




insert into tb_user_role (user_id, role_id) values (1, 1);
insert into tb_user_role (user_id, role_id) values (2, 2);
insert into tb_user_role (user_id, role_id) values (33, 3);
insert into tb_user_role (user_id, role_id) values (34, 3);
insert into tb_user_role (user_id, role_id) values (35, 3);
insert into tb_user_role (user_id, role_id) values (36, 3);
insert into tb_user_role (user_id, role_id) values (37, 3);
insert into tb_user_role (user_id, role_id) values (38, 3);
insert into tb_user_role (user_id, role_id) values (39, 3);
insert into tb_user_role (user_id, role_id) values (40, 3);
insert into tb_user_role (user_id, role_id) values (41, 3);
insert into tb_user_role (user_id, role_id) values (42, 3);
insert into tb_user_role (user_id, role_id) values (43, 3);
insert into tb_user_role (user_id, role_id) values (44, 3);
insert into tb_user_role (user_id, role_id) values (45, 3);
insert into tb_user_role (user_id, role_id) values (46, 3);
insert into tb_user_role (user_id, role_id) values (47, 3);
insert into tb_user_role (user_id, role_id) values (48, 3);
insert into tb_user_role (user_id, role_id) values (49, 3);
insert into tb_user_role (user_id, role_id) values (50, 3);
insert into tb_user_role (user_id, role_id) values (51, 3);
insert into tb_user_role (user_id, role_id) values (52, 3);
insert into tb_user_role (user_id, role_id) values (53, 3);
insert into tb_user_role (user_id, role_id) values (54, 3);
insert into tb_user_role (user_id, role_id) values (55, 3);
insert into tb_user_role (user_id, role_id) values (56, 3);
insert into tb_user_role (user_id, role_id) values (57, 3);
insert into tb_user_role (user_id, role_id) values (58, 3);
insert into tb_user_role (user_id, role_id) values (59, 3);
insert into tb_user_role (user_id, role_id) values (60, 3);
insert into tb_user_role (user_id, role_id) values (61, 3);
insert into tb_user_role (user_id, role_id) values (62, 3);

insert into tb_reim (id, amount, create_time, name, pid, status, uid, update_time, url) values (1, '20', '1020-02-29 00:00:00', '1', '1', '1', '1', '1020-02-29 00:00:00', 'img/p3.jpg');
insert into tb_reim (id, amount, create_time, name, pid, status, uid, update_time, url) values (2, '30', '1020-02-29 00:00:00', '1', '1', '1', '1', '1020-02-29 00:00:00', 'img/a2.jpg');
insert into tb_reim (id, amount, create_time, name, pid, status, uid, update_time, url) values (3, '30', '1020-02-29 00:00:00', '1', '1', '1', '1', '1020-02-29 00:00:00', 'img/a1.jpg');

insert into tb_group (id, name, status, validstatus) values (1, '审计一期', 1, 1);
insert into tb_group (id, name, status, validstatus) values (2, '审计二期', 1, 1);
insert into tb_group (id, name, status, validstatus) values (3, '审计三期', 0, 1);
insert into tb_group (id, name, status, validstatus) values (4, '审计四期', 0, 1);


insert into tb_group_user (gid, uid) values (3, 33);
insert into tb_group_user (gid, uid) values (3, 34);
insert into tb_group_user (gid, uid) values (3, 35);
insert into tb_group_user (gid, uid) values (3, 36);
insert into tb_group_user (gid, uid) values (3, 37);
insert into tb_group_user (gid, uid) values (3, 38);
insert into tb_group_user (gid, uid) values (3, 39);
insert into tb_group_user (gid, uid) values (4, 2);
insert into tb_group_user (gid, uid) values (4, 40);
insert into tb_group_user (gid, uid) values (4, 41);
insert into tb_group_user (gid, uid) values (4, 42);
insert into tb_group_user (gid, uid) values (4, 43);
insert into tb_group_user (gid, uid) values (4, 44);
insert into tb_group_user (gid, uid) values (4, 45);


