package project.just.nettech.userProfile.dao;

import org.springframework.stereotype.Repository;
import project.just.nettech.userProfile.entity.UserProfile;
@Repository
public interface UserProfileMapper {
    int deleteByPrimaryKey(String username);

    int insert(UserProfile record);

    int insertSelective(UserProfile record);

    UserProfile selectByPrimaryKey(String username);

    int updateByPrimaryKeySelective(UserProfile record);

    int updateByPrimaryKey(UserProfile record);

    UserProfile selectUserByUsernameAndPassword(String username, String password);
}