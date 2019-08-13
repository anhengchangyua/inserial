package com.zhy.cloud.controller;


import com.zhy.cloud.annotation.LogAnnotation;
import com.zhy.cloud.dao.UserDao;
import com.zhy.cloud.dto.LoginUser;
import com.zhy.cloud.dto.UserDto;
import com.zhy.cloud.model.SysUser;
import com.zhy.cloud.service.TokenService;
import com.zhy.cloud.service.UserService;
import com.zhy.cloud.utils.BaseResp;
import com.zhy.cloud.utils.RSAUtils;
import com.zhy.cloud.utils.ResultStatus;
import com.zhy.cloud.utils.UserUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemWriter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.io.StringWriter;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.Map;
import java.util.concurrent.TimeUnit;


@SuppressWarnings("ALL")
@Api(tags = "用户")
@RestController
@RequestMapping("/users")
public class UserController {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    private final RedisTemplate<Object, Object> redisTemplate;

    @Autowired
    private UserService userService;
    @Autowired
    private UserDao userDao;
    @Autowired
    private TokenService tokenService;

    @Autowired
    public UserController(RedisTemplate<Object, Object> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }


    @GetMapping("/loginPre")
    public BaseResp<Object> getPubKey(String username) {
            BaseResp<Object> result = new BaseResp<>();
        Map<String, String> keys;
        try {
            keys = RSAUtils.createKeys(1024);
            String aPublic = keys.get("publicKey");
            String aPrivate = keys.get("privateKey");
            redisTemplate.opsForValue().set(username, aPrivate, 60, TimeUnit.SECONDS);
            RSAPublicKey publicKey = RSAUtils.getPublicKey(aPublic);
            StringWriter writer = new StringWriter();
            PemWriter pemWriter = new PemWriter(writer);
            pemWriter.writeObject(new PemObject("PUBLIC KEY", publicKey.getEncoded()));
            pemWriter.flush();
            pemWriter.close();
            String s = writer.toString();
            result.setData(s);
        } catch (Exception e) {
            result.setCode(ResultStatus.getCode("FAIL"));
            result.setMessage("获取秘钥失败!");
            e.printStackTrace();
        }
        return result;
    }


    @PostMapping("/login")
    public BaseResp login(@RequestBody LoginUser loginAppUser) {
        BaseResp result = new BaseResp();
        String username = loginAppUser.getUsername();
        String privateKey = (String) redisTemplate.opsForValue().get(username);
        redisTemplate.delete(username);
        if (StringUtils.isBlank(privateKey)) {
            result.setCode(ResultStatus.getCode("FAIL"));
            result.setMessage("未获取到该用户名对应秘钥!");
            return result;
        }
        String s = loginAppUser.getPassword().replaceAll("-", "+");
        String s1 = s.replaceAll("_", "/");
        RSAPrivateKey privateKey1;
        try {
            privateKey1 = RSAUtils.getPrivateKey(privateKey);
            String password = RSAUtils.privateDecrypt(s1, privateKey1);
            loginAppUser.setPassword(password);
            result = tokenService.userLogin(loginAppUser);
        } catch (Exception e) {
            e.printStackTrace();
            result.setCode(ResultStatus.getCode("FAIL"));
            result.setMessage("密钥解析异常,请联系管理员!");
        }
        return result;
    }


    @LogAnnotation
    @PostMapping
    @ApiOperation(value = "保存用户")
    @PreAuthorize("hasAuthority('sys:user:add')")
    public SysUser saveUser(@RequestBody UserDto userDto) {
        SysUser u = userService.getUser(userDto.getUsername());
        if (u != null) {
            throw new IllegalArgumentException(userDto.getUsername() + "已存在");
        }

        return userService.saveUser(userDto);
    }

    @LogAnnotation
    @PutMapping
    @ApiOperation(value = "修改用户")
    @PreAuthorize("hasAuthority('sys:user:add')")
    public SysUser updateUser(@RequestBody UserDto userDto) {
        return userService.updateUser(userDto);
    }

    @LogAnnotation
    @PutMapping(params = "headImgUrl")
    @ApiOperation(value = "修改头像")
    public void updateHeadImgUrl(String headImgUrl) {
        SysUser user = UserUtil.getLoginUser();
        UserDto userDto = new UserDto();
        BeanUtils.copyProperties(user, userDto);
        userDto.setHeadImgUrl(headImgUrl);

        userService.updateUser(userDto);
        log.debug("{}修改了头像", user.getUsername());
    }

    @LogAnnotation
    @PutMapping("/{username}")
    @ApiOperation(value = "修改密码")
    @PreAuthorize("hasAuthority('sys:user:password')")
    public void changePassword(@PathVariable String username, String oldPassword, String newPassword) {
        userService.changePassword(username, oldPassword, newPassword);
    }

//	@GetMapping
//	@ApiOperation(value = "用户列表")
//	@PreAuthorize("hasAuthority('sys:user:query')")
//	public PageTableResponse listUsers(PageTableRequest request) {
//		return new PageTableHandler(new CountHandler() {
//
//			@Override
//			public int count(PageTableRequest request) {
//				return userDao.count(request.getParams());
//			}
//		}, new ListHandler() {
//
//			@Override
//			public List<SysUser> list(PageTableRequest request) {
//				List<SysUser> list = userDao.list(request.getParams(), request.getOffset(), request.getLimit());
//				return list;
//			}
//		}).handle(request);
//	}

    @ApiOperation(value = "当前登录用户")
    @GetMapping("/current")
    public SysUser currentUser() {
        return UserUtil.getLoginUser();
    }

    @ApiOperation(value = "根据用户id获取用户")
    @GetMapping("/{id}")
    @PreAuthorize("hasAuthority('sys:user:query')")
    public SysUser user(@PathVariable Long id) {
        return userDao.getById(id);
    }

}
