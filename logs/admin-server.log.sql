2019-08-30 09:10:28,506 [http-nio-8080-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-30 09:10:28,657 [http-nio-8080-exec-1] ==> Parameters: admin(String)
2019-08-30 09:10:28,696 [http-nio-8080-exec-1] <==      Total: 1
2019-08-30 09:10:28,724 [http-nio-8080-exec-1] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-30 09:10:28,727 [http-nio-8080-exec-1] ==> Parameters: 1(Long)
2019-08-30 09:10:28,745 [http-nio-8080-exec-1] <==      Total: 41
2019-08-30 09:10:29,463 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-30 09:10:29,483 [taskExecutor-1] ==> Parameters: admin(String), 登陆(String), true(Boolean), null
2019-08-30 09:10:29,493 [taskExecutor-1] <==    Updates: 1
2019-08-30 09:11:14,789 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-30 09:11:14,790 [http-nio-8080-exec-4] ==> Parameters: admin(String)
2019-08-30 09:11:14,791 [http-nio-8080-exec-4] <==      Total: 1
2019-08-30 09:11:14,792 [http-nio-8080-exec-4] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-30 09:11:14,793 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-08-30 09:11:14,796 [http-nio-8080-exec-4] <==      Total: 41
2019-08-30 09:11:14,868 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-30 09:11:14,869 [taskExecutor-2] ==> Parameters: admin(String), 登陆(String), true(Boolean), null
2019-08-30 09:11:14,871 [taskExecutor-2] <==    Updates: 1
2019-08-30 09:30:09,537 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-30 09:30:09,550 [http-nio-8080-exec-3] ==> Parameters: admin(String)
2019-08-30 09:30:09,582 [http-nio-8080-exec-3] <==      Total: 1
2019-08-30 09:30:09,604 [http-nio-8080-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-30 09:30:09,627 [http-nio-8080-exec-3] ==> Parameters: 1(Long)
2019-08-30 09:30:09,645 [http-nio-8080-exec-3] <==      Total: 41
2019-08-30 09:30:28,059 [http-nio-8080-exec-6] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-30 09:30:28,059 [http-nio-8080-exec-6] ==> Parameters: admin(String)
2019-08-30 09:30:28,061 [http-nio-8080-exec-6] <==      Total: 1
2019-08-30 09:30:28,062 [http-nio-8080-exec-6] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-30 09:30:28,062 [http-nio-8080-exec-6] ==> Parameters: 1(Long)
2019-08-30 09:30:28,067 [http-nio-8080-exec-6] <==      Total: 41
2019-08-30 09:30:28,284 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-30 09:30:28,300 [taskExecutor-1] ==> Parameters: admin(String), 登陆(String), true(Boolean), null
2019-08-30 09:30:28,302 [taskExecutor-1] <==    Updates: 1
2019-08-30 09:38:58,632 [http-nio-8080-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-08-30 09:38:58,639 [http-nio-8080-exec-2] ==> Parameters: admin(String)
2019-08-30 09:38:58,649 [http-nio-8080-exec-2] <==      Total: 1
2019-08-30 09:38:58,661 [http-nio-8080-exec-2] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-08-30 09:38:58,664 [http-nio-8080-exec-2] ==> Parameters: 1(Long)
2019-08-30 09:38:58,670 [http-nio-8080-exec-2] <==      Total: 41
2019-08-30 09:38:58,760 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userName, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-08-30 09:38:58,768 [taskExecutor-1] ==> Parameters: admin(String), 登陆(String), true(Boolean), null
2019-08-30 09:38:58,778 [taskExecutor-1] <==    Updates: 1
