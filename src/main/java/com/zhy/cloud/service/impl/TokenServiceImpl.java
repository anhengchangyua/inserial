//package com.zhy.cloud.service.impl;
//
//
//import com.zhy.cloud.dto.LoginUser;
//import com.zhy.cloud.dto.Token;
//import com.zhy.cloud.service.SysLogService;
//import com.zhy.cloud.service.TokenService;
//import com.zhy.cloud.utils.BaseResp;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.data.redis.core.RedisTemplate;
//
//import java.util.UUID;
//import java.util.concurrent.TimeUnit;
//
///**
// * token存到redis的实现类<br>
// * 普通token，uuid
// *
// *
// */
//@Deprecated
////@Service
//public class TokenServiceImpl implements TokenService {
//
//	/**
//	 * token过期秒数
//	 */
//	@Value("${token.expire.seconds}")
//	private Integer expireSeconds;
//	@Autowired
//	private RedisTemplate<String, LoginUser> redisTemplate;
//	@Autowired
//	private SysLogService logService;
//
//	@Override
//	public BaseResp userLogin(LoginUser loginAppUser) {
//		return null;
//	}
//
//	@Override
//	public Token saveToken(LoginUser loginUser) {
//		String token = UUID.randomUUID().toString();
//
//		loginUser.setToken(token);
//		cacheLoginUser(loginUser);
//		// 登陆日志
//		logService.save(loginUser.getUsername(), "登陆", true, null);
//
//		return new Token(token, loginUser.getLoginTime());
//	}
//
//	private void cacheLoginUser(LoginUser loginUser) {
//		loginUser.setLoginTime(System.currentTimeMillis());
//		loginUser.setExpireTime(loginUser.getLoginTime() + expireSeconds * 1000);
//		// 缓存
//		redisTemplate.boundValueOps(getTokenKey(loginUser.getToken())).set(loginUser, expireSeconds, TimeUnit.SECONDS);
//	}
//
//	/**
//	 * 更新缓存的用户信息
//	 */
//	@Override
//	public void refresh(LoginUser loginUser) {
//		cacheLoginUser(loginUser);
//	}
//
//	@Override
//	public LoginUser getLoginUser(String token) {
//		return redisTemplate.boundValueOps(getTokenKey(token)).get();
//	}
//
//	@Override
//	public boolean deleteToken(String token) {
//		String key = getTokenKey(token);
//		LoginUser loginUser = redisTemplate.opsForValue().get(key);
//		if (loginUser != null) {
//			redisTemplate.delete(key);
//			// 退出日志
//			logService.save(loginUser.getUsername(), "退出", true, null);
//
//			return true;
//		}
//
//		return false;
//	}
//
//	private String getTokenKey(String token) {
//		return "tokens:" + token;
//	}
//
//}
