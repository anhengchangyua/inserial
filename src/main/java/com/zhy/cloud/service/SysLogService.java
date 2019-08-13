package com.zhy.cloud.service;


import com.zhy.cloud.model.SysLogs;

/**
 * 日志service
 *
 */
public interface SysLogService {

	void save(SysLogs sysLogs);

	void save(String userId, String module, Boolean flag, String remark);

	void deleteLogs();
}
