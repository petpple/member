package petpple.kiwi.member.service.user;

import org.springframework.stereotype.Service;

import petpple.kiwi.member.domain.user.User;
import petpple.kiwi.member.repository.user.UserMapper;

@Service
public class UserService {

	UserMapper userMapper;
	
	public UserService(UserMapper userMapper)
	{
		this.userMapper = userMapper;
	}
	
	
	public User userLogin(User user) {
		return userMapper.userLogin(user);
	}
	
	

}