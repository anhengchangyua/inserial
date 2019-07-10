2019-07-10 20:41:37,034 [http-nio-8080-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 20:41:37,189 [http-nio-8080-exec-2] ==> Parameters: (String)
2019-07-10 20:41:37,233 [http-nio-8080-exec-2] <==      Total: 0
2019-07-10 20:41:47,800 [http-nio-8080-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 20:41:47,801 [http-nio-8080-exec-7] ==> Parameters: (String)
2019-07-10 20:41:47,803 [http-nio-8080-exec-7] <==      Total: 0
2019-07-10 20:56:54,004 [http-nio-8080-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 20:56:54,005 [http-nio-8080-exec-10] ==> Parameters: admin(String)
2019-07-10 20:56:54,022 [http-nio-8080-exec-10] <==      Total: 1
2019-07-10 20:56:54,105 [http-nio-8080-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 20:56:54,135 [http-nio-8080-exec-10] ==> Parameters: 1(Long)
2019-07-10 20:56:54,153 [http-nio-8080-exec-10] <==      Total: 39
2019-07-10 20:57:00,638 [http-nio-8080-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 20:57:00,639 [http-nio-8080-exec-1] ==> Parameters: admin(String)
2019-07-10 20:57:00,641 [http-nio-8080-exec-1] <==      Total: 1
2019-07-10 20:57:00,645 [http-nio-8080-exec-1] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 20:57:00,645 [http-nio-8080-exec-1] ==> Parameters: 1(Long)
2019-07-10 20:57:00,650 [http-nio-8080-exec-1] <==      Total: 39
2019-07-10 20:57:58,980 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 20:57:59,270 [http-nio-8080-exec-4] ==> Parameters: admin(String)
2019-07-10 20:57:59,302 [http-nio-8080-exec-4] <==      Total: 1
2019-07-10 20:57:59,316 [http-nio-8080-exec-4] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 20:57:59,322 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-07-10 20:57:59,331 [http-nio-8080-exec-4] <==      Total: 39
2019-07-10 21:06:36,471 [http-nio-8080-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 21:06:36,523 [http-nio-8080-exec-2] ==> Parameters: admin(String)
2019-07-10 21:06:36,541 [http-nio-8080-exec-2] <==      Total: 1
2019-07-10 21:06:36,550 [http-nio-8080-exec-2] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 21:06:36,553 [http-nio-8080-exec-2] ==> Parameters: 1(Long)
2019-07-10 21:06:36,560 [http-nio-8080-exec-2] <==      Total: 39
2019-07-10 21:06:51,233 [http-nio-8080-exec-8] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 21:06:51,235 [http-nio-8080-exec-8] ==> Parameters: admin(String)
2019-07-10 21:06:51,236 [http-nio-8080-exec-8] <==      Total: 1
2019-07-10 21:06:51,238 [http-nio-8080-exec-8] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 21:06:51,239 [http-nio-8080-exec-8] ==> Parameters: 1(Long)
2019-07-10 21:06:51,257 [http-nio-8080-exec-8] <==      Total: 39
2019-07-10 21:07:06,750 [http-nio-8080-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 21:07:06,751 [http-nio-8080-exec-7] ==> Parameters: admin(String)
2019-07-10 21:07:06,754 [http-nio-8080-exec-7] <==      Total: 1
2019-07-10 21:07:06,755 [http-nio-8080-exec-7] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 21:07:06,755 [http-nio-8080-exec-7] ==> Parameters: 1(Long)
2019-07-10 21:07:06,759 [http-nio-8080-exec-7] <==      Total: 39
2019-07-10 21:10:24,611 [http-nio-8080-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 21:10:24,612 [http-nio-8080-exec-10] ==> Parameters: admin(String)
2019-07-10 21:10:24,614 [http-nio-8080-exec-10] <==      Total: 1
2019-07-10 21:10:24,615 [http-nio-8080-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 21:10:24,616 [http-nio-8080-exec-10] ==> Parameters: 1(Long)
2019-07-10 21:10:24,620 [http-nio-8080-exec-10] <==      Total: 39
2019-07-10 21:10:25,189 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-07-10 21:10:25,253 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-07-10 21:10:25,276 [taskExecutor-1] <==    Updates: 1
2019-07-10 22:04:04,735 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 22:04:04,765 [http-nio-8080-exec-5] ==> Parameters: admin(String)
2019-07-10 22:04:04,785 [http-nio-8080-exec-5] <==      Total: 1
2019-07-10 22:04:04,810 [http-nio-8080-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 22:04:04,825 [http-nio-8080-exec-5] ==> Parameters: 1(Long)
2019-07-10 22:04:04,835 [http-nio-8080-exec-5] <==      Total: 39
2019-07-10 22:04:05,086 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-07-10 22:04:05,105 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-07-10 22:04:05,109 [taskExecutor-1] <==    Updates: 1
2019-07-10 22:06:42,934 [http-nio-8080-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-10 22:06:42,944 [http-nio-8080-exec-7] ==> Parameters: admin(String)
2019-07-10 22:06:42,958 [http-nio-8080-exec-7] <==      Total: 1
2019-07-10 22:06:42,968 [http-nio-8080-exec-7] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-10 22:06:42,979 [http-nio-8080-exec-7] ==> Parameters: 1(Long)
2019-07-10 22:06:42,985 [http-nio-8080-exec-7] <==      Total: 39
2019-07-10 22:06:43,133 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-07-10 22:06:43,160 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-07-10 22:06:43,163 [taskExecutor-1] <==    Updates: 1
