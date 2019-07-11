2019-07-11 13:59:38,749 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-11 13:59:38,870 [http-nio-8080-exec-5] ==> Parameters: admin(String)
2019-07-11 13:59:38,927 [http-nio-8080-exec-5] <==      Total: 1
2019-07-11 13:59:39,023 [http-nio-8080-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-11 13:59:39,041 [http-nio-8080-exec-5] ==> Parameters: 1(Long)
2019-07-11 13:59:39,068 [http-nio-8080-exec-5] <==      Total: 39
2019-07-11 13:59:39,626 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-07-11 13:59:39,782 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-07-11 13:59:39,792 [taskExecutor-1] <==    Updates: 1
2019-07-11 14:00:08,435 [http-nio-8080-exec-10] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-07-11 14:00:08,439 [http-nio-8080-exec-10] ==> Parameters: 
2019-07-11 14:00:08,444 [http-nio-8080-exec-10] <==      Total: 39
2019-07-11 19:00:34,993 [http-nio-8080-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-11 19:00:35,014 [http-nio-8080-exec-1] ==> Parameters: admin(String)
2019-07-11 19:00:35,036 [http-nio-8080-exec-1] <==      Total: 1
2019-07-11 19:00:35,046 [http-nio-8080-exec-1] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-11 19:00:35,061 [http-nio-8080-exec-1] ==> Parameters: 1(Long)
2019-07-11 19:00:35,082 [http-nio-8080-exec-1] <==      Total: 39
2019-07-11 19:00:35,245 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-07-11 19:00:35,267 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-07-11 19:00:35,273 [taskExecutor-1] <==    Updates: 1
2019-07-11 19:00:44,669 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-11 19:00:44,670 [http-nio-8080-exec-4] ==> Parameters: admin(String)
2019-07-11 19:00:44,671 [http-nio-8080-exec-4] <==      Total: 1
2019-07-11 19:00:44,672 [http-nio-8080-exec-4] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-11 19:00:44,672 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-07-11 19:00:44,676 [http-nio-8080-exec-4] <==      Total: 39
2019-07-11 19:00:44,753 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-07-11 19:00:44,754 [taskExecutor-2] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-07-11 19:00:44,756 [taskExecutor-2] <==    Updates: 1
2019-07-11 19:00:50,547 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-07-11 19:00:50,548 [http-nio-8080-exec-3] ==> Parameters: admin(String)
2019-07-11 19:00:50,551 [http-nio-8080-exec-3] <==      Total: 1
2019-07-11 19:00:50,553 [http-nio-8080-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-07-11 19:00:50,554 [http-nio-8080-exec-3] ==> Parameters: 1(Long)
2019-07-11 19:00:50,559 [http-nio-8080-exec-3] <==      Total: 39
2019-07-11 19:00:50,636 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-07-11 19:00:50,637 [taskExecutor-3] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-07-11 19:00:50,641 [taskExecutor-3] <==    Updates: 1
2019-07-11 19:02:36,304 [http-nio-8080-exec-2] ==>  Preparing: select * from news_type t where t.id = ? 
2019-07-11 19:02:36,307 [http-nio-8080-exec-2] ==> Parameters: 1(Long)
2019-07-11 19:02:36,312 [http-nio-8080-exec-2] <==      Total: 1
2019-07-11 19:08:20,734 [http-nio-8080-exec-7] ==>  Preparing: select * from news_type t where t.id = ? 
2019-07-11 19:08:20,752 [http-nio-8080-exec-7] ==> Parameters: 1(Long)
2019-07-11 19:08:20,766 [http-nio-8080-exec-7] <==      Total: 1
2019-07-11 19:09:13,697 [http-nio-8080-exec-1] ==>  Preparing: select * from news_type t where t.id = ? 
2019-07-11 19:09:13,704 [http-nio-8080-exec-1] ==> Parameters: 1(Long)
2019-07-11 19:09:13,712 [http-nio-8080-exec-1] <==      Total: 1
2019-07-11 19:22:10,643 [http-nio-8080-exec-1] ==>  Preparing: select * from news_type 
2019-07-11 19:22:10,683 [http-nio-8080-exec-1] ==> Parameters: 
2019-07-11 19:22:10,703 [http-nio-8080-exec-1] <==      Total: 5
