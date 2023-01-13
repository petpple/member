package petpple.kiwi.member.service.user;

import org.springframework.stereotype.Service;

import petpple.kiwi.member.domain.user.User;
import petpple.kiwi.member.repository.user.IUserMapper;

@Service
public class UserService {

	IUserMapper userMapper;
	
	public UserService(IUserMapper userMapper)
	{
		this.userMapper = userMapper;
	}
	
	
	public int userLogin(User user) 
	{
		return userMapper.userLogin(user);
	}
	
	public String tmpMemberId(String id, String pw) 
	{
		return userMapper.tmpMemberId(id, pw);
		
	}
	
	public int idCheck(String id) throws Exception {
        return userMapper.idCheck(id);
        
    }
	// test
	public String tmpMemberId(User user) 
	{
		return userMapper.tmpMemberId(user);
		
	}

}
