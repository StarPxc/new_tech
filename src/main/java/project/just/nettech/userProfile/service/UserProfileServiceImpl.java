package project.just.nettech.userProfile.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.just.nettech.common.enums.ResultEnum;
import project.just.nettech.common.execption.CustomException;
import project.just.nettech.userProfile.dao.UserProfileMapper;
import project.just.nettech.userProfile.entity.UserProfile;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.userProfile.service
 * @date 2018/6/5  11:33
 * @Description: TODO
 */
@Service
public class UserProfileServiceImpl implements UserProfileService {
    @Autowired
    private UserProfileMapper mapper;
    @Override
    public int addUserProfile(UserProfile userProfile) {
        if(userProfile==null){
            throw new CustomException(ResultEnum.OBJECT_NULL_ERROR);
        }
        return mapper.insertSelective(userProfile);
    }

    @Override
    public UserProfile selectUserByUsernameAndPassword(String username, String password) {
        if(username==null||username.equals("")||password==null||password.equals("")){
            throw new CustomException(ResultEnum.OBJECT_NULL_ERROR);
        }
        UserProfile userProfile=mapper.selectUserByUsernameAndPassword(username,password);
        if(userProfile==null){
            throw new CustomException(ResultEnum.LOGIN_FAIL);
        }
        return userProfile;
    }
}
