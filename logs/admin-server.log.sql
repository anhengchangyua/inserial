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
