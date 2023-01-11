package petpple.kiwi.member.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.User;

@Mapper
public interface UserMapper {

	int PRC_TMP_MEMBER(User user);
	
	int deleteUser(int id);
	
	int getCount();
	
	List<User> getUserList();
		
}











