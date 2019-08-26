2019-08-11 10:46:38,871 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 10:46:38,905 [http-nio-8080-exec-4] ==> Parameters: admin(String)
2019-08-11 10:46:38,918 [http-nio-8080-exec-4] <==      Total: 1
2019-08-11 10:46:38,927 [http-nio-8080-exec-4] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 10:46:38,933 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-08-11 10:46:38,946 [http-nio-8080-exec-4] <==      Total: 39
2019-08-11 10:46:53,433 [http-nio-8080-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 10:46:53,434 [http-nio-8080-exec-7] ==> Parameters: admin(String)
2019-08-11 10:46:53,436 [http-nio-8080-exec-7] <==      Total: 1
2019-08-11 10:46:53,437 [http-nio-8080-exec-7] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 10:46:53,437 [http-nio-8080-exec-7] ==> Parameters: 1(Long)
2019-08-11 10:46:53,442 [http-nio-8080-exec-7] <==      Total: 39
2019-08-11 10:47:23,338 [http-nio-8080-exec-8] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 10:47:23,339 [http-nio-8080-exec-8] ==> Parameters: admin(String)
2019-08-11 10:47:23,341 [http-nio-8080-exec-8] <==      Total: 1
2019-08-11 10:47:23,342 [http-nio-8080-exec-8] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 10:47:23,342 [http-nio-8080-exec-8] ==> Parameters: 1(Long)
2019-08-11 10:47:23,346 [http-nio-8080-exec-8] <==      Total: 39
2019-08-11 10:47:23,512 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 10:47:23,523 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 10:47:23,532 [taskExecutor-1] <==    Updates: 1
2019-08-11 10:59:19,886 [http-nio-8080-exec-6] ==>  Preparing: select * from news_type ORDER BY SORT DESC 
2019-08-11 10:59:19,887 [http-nio-8080-exec-6] ==> Parameters: 
2019-08-11 10:59:19,890 [http-nio-8080-exec-6] <==      Total: 5
2019-08-11 16:38:35,243 [http-nio-8080-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 16:38:35,260 [http-nio-8080-exec-2] ==> Parameters: admin(String)
2019-08-11 16:38:35,270 [http-nio-8080-exec-2] <==      Total: 1
2019-08-11 16:38:35,280 [http-nio-8080-exec-2] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 16:38:35,288 [http-nio-8080-exec-2] ==> Parameters: 1(Long)
2019-08-11 16:38:35,297 [http-nio-8080-exec-2] <==      Total: 39
2019-08-11 16:38:35,401 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 16:38:35,407 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 16:38:35,413 [taskExecutor-1] <==    Updates: 1
2019-08-11 16:38:49,525 [http-nio-8080-exec-5] ==>  Preparing: select * from news_type ORDER BY SORT DESC 
2019-08-11 16:38:49,526 [http-nio-8080-exec-5] ==> Parameters: 
2019-08-11 16:38:49,529 [http-nio-8080-exec-5] <==      Total: 5
2019-08-11 17:09:43,257 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:09:43,263 [http-nio-8080-exec-3] ==> Parameters: admin(String)
2019-08-11 17:09:43,272 [http-nio-8080-exec-3] <==      Total: 1
2019-08-11 17:09:43,279 [http-nio-8080-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:09:43,281 [http-nio-8080-exec-3] ==> Parameters: 1(Long)
2019-08-11 17:09:43,289 [http-nio-8080-exec-3] <==      Total: 39
2019-08-11 17:09:43,711 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:09:43,716 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:09:43,719 [taskExecutor-1] <==    Updates: 1
2019-08-11 17:10:19,250 [http-nio-8080-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:10:19,337 [http-nio-8080-exec-1] ==> Parameters: admin(String)
2019-08-11 17:10:19,350 [http-nio-8080-exec-1] <==      Total: 1
2019-08-11 17:10:19,357 [http-nio-8080-exec-1] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:10:19,360 [http-nio-8080-exec-1] ==> Parameters: 1(Long)
2019-08-11 17:10:19,367 [http-nio-8080-exec-1] <==      Total: 39
2019-08-11 17:10:19,804 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:10:19,811 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:10:19,813 [taskExecutor-1] <==    Updates: 1
2019-08-11 17:11:58,830 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:11:58,831 [http-nio-8080-exec-5] ==> Parameters: admin(String)
2019-08-11 17:11:58,833 [http-nio-8080-exec-5] <==      Total: 1
2019-08-11 17:11:58,834 [http-nio-8080-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:11:58,834 [http-nio-8080-exec-5] ==> Parameters: 1(Long)
2019-08-11 17:11:58,839 [http-nio-8080-exec-5] <==      Total: 39
2019-08-11 17:11:58,915 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:11:58,916 [taskExecutor-2] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:11:58,918 [taskExecutor-2] <==    Updates: 1
2019-08-11 17:13:54,652 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:13:54,653 [http-nio-8080-exec-4] ==> Parameters: admin(String)
2019-08-11 17:13:54,654 [http-nio-8080-exec-4] <==      Total: 1
2019-08-11 17:13:54,655 [http-nio-8080-exec-4] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:13:54,656 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-08-11 17:13:54,660 [http-nio-8080-exec-4] <==      Total: 39
2019-08-11 17:13:54,739 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:13:54,739 [taskExecutor-3] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:13:54,742 [taskExecutor-3] <==    Updates: 1
2019-08-11 17:16:19,660 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:16:19,673 [http-nio-8080-exec-3] ==> Parameters: admin(String)
2019-08-11 17:16:19,682 [http-nio-8080-exec-3] <==      Total: 1
2019-08-11 17:16:19,691 [http-nio-8080-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:16:19,693 [http-nio-8080-exec-3] ==> Parameters: 1(Long)
2019-08-11 17:16:19,701 [http-nio-8080-exec-3] <==      Total: 39
2019-08-11 17:16:20,228 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:16:20,233 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:16:20,237 [taskExecutor-1] <==    Updates: 1
2019-08-11 17:17:05,721 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:17:05,722 [http-nio-8080-exec-4] ==> Parameters: admin(String)
2019-08-11 17:17:05,725 [http-nio-8080-exec-4] <==      Total: 1
2019-08-11 17:17:05,727 [http-nio-8080-exec-4] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:17:05,728 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-08-11 17:17:05,734 [http-nio-8080-exec-4] <==      Total: 39
2019-08-11 17:25:02,330 [http-nio-8080-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:25:02,416 [http-nio-8080-exec-1] ==> Parameters: admin(String)
2019-08-11 17:25:02,429 [http-nio-8080-exec-1] <==      Total: 1
2019-08-11 17:25:02,436 [http-nio-8080-exec-1] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:25:02,439 [http-nio-8080-exec-1] ==> Parameters: 1(Long)
2019-08-11 17:25:02,446 [http-nio-8080-exec-1] <==      Total: 39
2019-08-11 17:25:09,484 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:25:09,485 [http-nio-8080-exec-4] ==> Parameters: admin(String)
2019-08-11 17:25:09,486 [http-nio-8080-exec-4] <==      Total: 1
2019-08-11 17:25:09,488 [http-nio-8080-exec-4] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:25:09,489 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-08-11 17:25:09,494 [http-nio-8080-exec-4] <==      Total: 39
2019-08-11 17:25:09,924 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:25:09,929 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:25:09,931 [taskExecutor-1] <==    Updates: 1
2019-08-11 17:29:09,252 [http-nio-8080-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:29:09,258 [http-nio-8080-exec-2] ==> Parameters: admin(String)
2019-08-11 17:29:09,268 [http-nio-8080-exec-2] <==      Total: 1
2019-08-11 17:29:09,276 [http-nio-8080-exec-2] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:29:09,277 [http-nio-8080-exec-2] ==> Parameters: 1(Long)
2019-08-11 17:29:09,285 [http-nio-8080-exec-2] <==      Total: 39
2019-08-11 17:29:09,700 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:29:09,706 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:29:09,709 [taskExecutor-1] <==    Updates: 1
2019-08-11 17:29:30,462 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-11 17:29:30,462 [http-nio-8080-exec-3] ==> Parameters: admin(String)
2019-08-11 17:29:30,465 [http-nio-8080-exec-3] <==      Total: 1
2019-08-11 17:29:30,466 [http-nio-8080-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-11 17:29:30,467 [http-nio-8080-exec-3] ==> Parameters: 1(Long)
2019-08-11 17:29:30,472 [http-nio-8080-exec-3] <==      Total: 39
2019-08-11 17:29:30,548 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-11 17:29:30,549 [taskExecutor-2] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-08-11 17:29:30,551 [taskExecutor-2] <==    Updates: 1
2019-08-11 17:30:38,546 [http-nio-8080-exec-9] ==>  Preparing: select * from news_type ORDER BY SORT DESC 
2019-08-11 17:30:38,547 [http-nio-8080-exec-9] ==> Parameters: 
2019-08-11 17:30:38,549 [http-nio-8080-exec-9] <==      Total: 5
2019-08-26 13:57:41,181 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 13:57:41,193 [taskExecutor-1] ==> Parameters: null, 登陆(String), true(Boolean), null
2019-08-26 13:58:05,055 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 13:58:05,056 [taskExecutor-2] ==> Parameters: null, 登陆(String), true(Boolean), null
2019-08-26 14:01:02,781 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:01:02,782 [taskExecutor-3] ==> Parameters: null, 登陆(String), true(Boolean), null
2019-08-26 14:03:43,565 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:03:43,579 [taskExecutor-1] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:05:11,130 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:05:11,132 [taskExecutor-2] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:06:17,146 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:06:17,147 [taskExecutor-3] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:06:17,149 [taskExecutor-3] <==    Updates: 1
2019-08-26 14:07:47,162 [taskExecutor-4] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:07:47,162 [taskExecutor-4] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:07:47,164 [taskExecutor-4] <==    Updates: 1
2019-08-26 14:33:28,348 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:33:28,452 [taskExecutor-1] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:33:28,459 [taskExecutor-1] <==    Updates: 1
2019-08-26 14:33:51,679 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:33:51,680 [taskExecutor-2] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:33:51,682 [taskExecutor-2] <==    Updates: 1
2019-08-26 14:34:55,027 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:34:55,027 [taskExecutor-3] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:34:55,029 [taskExecutor-3] <==    Updates: 1
2019-08-26 14:44:55,824 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:44:55,836 [taskExecutor-1] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:44:55,838 [taskExecutor-1] <==    Updates: 1
2019-08-26 14:49:40,676 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:49:40,721 [taskExecutor-1] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:49:40,726 [taskExecutor-1] <==    Updates: 1
2019-08-26 14:51:42,862 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:51:42,962 [taskExecutor-1] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:51:42,968 [taskExecutor-1] <==    Updates: 1
2019-08-26 14:54:25,660 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 14:54:25,756 [taskExecutor-1] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 14:54:25,768 [taskExecutor-1] <==    Updates: 1
2019-08-26 14:57:24,710 [http-nio-8080-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-08-26 14:57:24,736 [http-nio-8080-exec-7] ==> Parameters: 
2019-08-26 14:57:24,763 [http-nio-8080-exec-7] <==      Total: 39
2019-08-26 14:57:32,097 [http-nio-8080-exec-8] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-08-26 14:57:32,097 [http-nio-8080-exec-8] ==> Parameters: 
2019-08-26 14:57:32,103 [http-nio-8080-exec-8] <==      Total: 39
2019-08-26 14:57:52,051 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-08-26 14:57:52,051 [http-nio-8080-exec-9] ==> Parameters: 
2019-08-26 14:57:52,056 [http-nio-8080-exec-9] <==      Total: 39
2019-08-26 15:01:42,217 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-08-26 15:01:42,218 [http-nio-8080-exec-4] ==> Parameters: 
2019-08-26 15:01:42,222 [http-nio-8080-exec-4] <==      Total: 39
2019-08-26 15:02:27,754 [http-nio-8080-exec-5] ==>  Preparing: select * from news_type ORDER BY SORT DESC 
2019-08-26 15:02:27,755 [http-nio-8080-exec-5] ==> Parameters: 
2019-08-26 15:02:27,759 [http-nio-8080-exec-5] <==      Total: 5
2019-08-26 16:10:51,018 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-26 16:10:51,032 [taskExecutor-1] ==> Parameters: ADMIN(String), 登陆(String), true(Boolean), null
2019-08-26 16:10:51,051 [taskExecutor-1] <==    Updates: 1
2019-08-26 16:11:29,280 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-08-26 16:11:29,282 [http-nio-8080-exec-5] ==> Parameters: 
2019-08-26 16:11:29,297 [http-nio-8080-exec-5] <==      Total: 39
2019-08-26 16:13:39,991 [http-nio-8080-exec-9] ==>  Preparing: select * from news_type ORDER BY SORT DESC 
2019-08-26 16:13:39,993 [http-nio-8080-exec-9] ==> Parameters: 
2019-08-26 16:13:39,995 [http-nio-8080-exec-9] <==      Total: 5
2019-08-26 16:40:32,123 [http-nio-8080-exec-1] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:40:32,218 [http-nio-8080-exec-1] ==> Parameters: 
2019-08-26 16:41:12,924 [http-nio-8080-exec-6] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:41:12,926 [http-nio-8080-exec-6] ==> Parameters: 
2019-08-26 16:42:00,442 [http-nio-8080-exec-1] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:42:00,620 [http-nio-8080-exec-1] ==> Parameters: 
2019-08-26 16:46:36,018 [http-nio-8080-exec-1] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:46:36,165 [http-nio-8080-exec-1] ==> Parameters: 
2019-08-26 16:46:36,729 [http-nio-8080-exec-1] <==      Total: 566
2019-08-26 16:47:56,234 [http-nio-8080-exec-3] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:47:56,237 [http-nio-8080-exec-3] ==> Parameters: 
2019-08-26 16:47:56,675 [http-nio-8080-exec-3] <==      Total: 566
2019-08-26 16:50:08,175 [http-nio-8080-exec-4] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:50:08,176 [http-nio-8080-exec-4] ==> Parameters: 
2019-08-26 16:50:08,191 [http-nio-8080-exec-4] <==      Total: 566
2019-08-26 16:50:42,780 [http-nio-8080-exec-2] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:50:42,786 [http-nio-8080-exec-2] ==> Parameters: 
2019-08-26 16:50:42,850 [http-nio-8080-exec-2] <==      Total: 566
2019-08-26 16:53:06,182 [http-nio-8080-exec-5] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a 
2019-08-26 16:53:06,183 [http-nio-8080-exec-5] ==> Parameters: 
2019-08-26 16:53:06,206 [http-nio-8080-exec-5] <==      Total: 566
2019-08-26 16:56:22,614 [http-nio-8080-exec-1] ==>  Preparing: SELECT count(0) FROM in_home_newsinfo AS a 
2019-08-26 16:56:22,757 [http-nio-8080-exec-1] ==> Parameters: 
2019-08-26 16:56:22,870 [http-nio-8080-exec-1] <==      Total: 1
2019-08-26 16:56:22,897 [http-nio-8080-exec-1] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a LIMIT ? 
2019-08-26 16:56:22,902 [http-nio-8080-exec-1] ==> Parameters: 10(Integer)
2019-08-26 16:56:22,923 [http-nio-8080-exec-1] <==      Total: 10
2019-08-26 17:01:55,331 [http-nio-8080-exec-9] ==>  Preparing: SELECT count(0) FROM in_home_newsinfo AS a 
2019-08-26 17:01:55,333 [http-nio-8080-exec-9] ==> Parameters: 
2019-08-26 17:01:55,335 [http-nio-8080-exec-9] <==      Total: 1
2019-08-26 17:01:55,340 [http-nio-8080-exec-9] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a LIMIT ? 
2019-08-26 17:01:55,341 [http-nio-8080-exec-9] ==> Parameters: 10(Integer)
2019-08-26 17:01:55,359 [http-nio-8080-exec-9] <==      Total: 10
2019-08-26 17:03:05,434 [http-nio-8080-exec-1] ==>  Preparing: SELECT count(0) FROM in_home_newsinfo AS a 
2019-08-26 17:03:05,757 [http-nio-8080-exec-1] ==> Parameters: 
2019-08-26 17:03:05,877 [http-nio-8080-exec-1] <==      Total: 1
2019-08-26 17:03:05,905 [http-nio-8080-exec-1] ==>  Preparing: SELECT a.* FROM in_home_newsinfo AS a LIMIT ? 
2019-08-26 17:03:05,911 [http-nio-8080-exec-1] ==> Parameters: 10(Integer)
2019-08-26 17:03:05,935 [http-nio-8080-exec-1] <==      Total: 10
