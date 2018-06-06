package project.just.nettech.userProfile.service;

import project.just.nettech.userProfile.entity.UserProfile;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.userProfile.service
 * @date 2018/6/5  11:33
 * @Description: TODO
 */
public interface UserProfileService {
    int addUserProfile(UserProfile userProfile);

    UserProfile selectUserByUsernameAndPassword(String username, String password);
}
