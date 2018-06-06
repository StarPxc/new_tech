package project.just.nettech.userProfile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import project.just.nettech.common.resp.ApiResult;
import project.just.nettech.common.utils.ResultUtil;
import project.just.nettech.userProfile.entity.UserProfile;
import project.just.nettech.userProfile.service.UserProfileService;


/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.newtech.userProfile
 * @date 2018/6/5  8:40
 * @Description: TODO
 */
@RestController
@RequestMapping("/user-profile")
public class UserProfileController {
    @Autowired
    @Qualifier("userProfileServiceImpl")
    private UserProfileService userProfileService;
    @PostMapping("/register")
    public ApiResult register(UserProfile userProfile){
        userProfileService.addUserProfile(userProfile);
        return ResultUtil.success("test",userProfile);
    }
    @PostMapping("/login")
    public ApiResult login(@RequestParam String username,@RequestParam String password){
        return ResultUtil.success("登陆成功",userProfileService.selectUserByUsernameAndPassword(username,password));
    }
}
