package team02.mapper;

import org.apache.ibatis.annotations.Param;
import team02.pojo.User02;
import team02.relation.PeopleBattery;
import team02.relation.PeopleCdz;

import java.util.List;

public interface User02Mapper {
    // 插入用户信息
    int addUser(User02 user);
    // 更新用户信息
    int updateUser(User02 user);
    // 删除用户
    int deleteUser(String id);
    // 以下可以根据实际需求继续添加更多的查询、操作方法，比如查询所有用户等示例如下（可按需调整或删除）
    // 查询所有用户
    List<User02> getUserByAll();
    //通过学生ID查找学生
    User02 getUserByStudentId(String student_id);
    //用户修改密码
    int updatepassword(@Param("id") String id, @Param("password") String password);
    int updateUserBalance(@Param("id") String id, @Param("amount") double amount);
    User02 FindPeopleByphone(String phone);
    List<PeopleBattery> AdminPeopleBatterylist();
    List<PeopleCdz> AdminPeopleCdzlist();
    List<PeopleBattery> AdminPeopleBatterylistByKey(String search_input);
    List<PeopleCdz> AdminPeopleCdzlistByKey(String search_input);
    List<User02> AdminPeoplelist();
    int AdminUpdateBlack(@Param("id") String id, @Param("zt") String zt);
    List<User02> AdminPeoplelistByKey(@Param("search_input") String search_input);
}
