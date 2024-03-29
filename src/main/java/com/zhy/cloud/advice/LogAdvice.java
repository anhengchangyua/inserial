package com.zhy.cloud.advice;

import com.zhy.cloud.annotation.LogAnnotation;
import com.zhy.cloud.model.SysLogs;
import com.zhy.cloud.service.SysLogService;
import io.swagger.annotations.ApiOperation;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;


@SuppressWarnings("ALL")
@Aspect
@Component
public class LogAdvice {

    @Autowired
    private SysLogService logService;

    @Around(value = "@annotation(com.zhy.cloud.annotation.LogAnnotation)")
    public Object logSave(ProceedingJoinPoint joinPoint) throws Throwable {
        SysLogs sysLogs = new SysLogs();
        MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();

        String module = null;
        LogAnnotation logAnnotation = methodSignature.getMethod().getDeclaredAnnotation(LogAnnotation.class);
        module = logAnnotation.module();
        if (StringUtils.isEmpty(module)) {
            ApiOperation apiOperation = methodSignature.getMethod().getDeclaredAnnotation(ApiOperation.class);
            if (apiOperation != null) {
                module = apiOperation.value();
            }
        }

        if (StringUtils.isEmpty(module)) {
            throw new RuntimeException("没有指定日志module");
        }
        sysLogs.setModule(module);

        try {
            Object object = joinPoint.proceed();

            sysLogs.setFlag(true);
            logService.save(sysLogs);

            return object;
        } catch (Exception e) {
            sysLogs.setFlag(false);
            sysLogs.setRemark(e.getMessage());
            logService.save(sysLogs);
            throw e;
        }

    }
}
