package petpple.kiwi.member.repository.user;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.user.User;

@Mapper
public interface IUserMapper {

	public int PRC_TMP_MEMBER(User user);
	
	public int deleteUser(int id);
	
	public int getCount();
	
	//public List<User> getUserList();
	
	
	
	public int userLogin(User user);
	
	public String tmpMemberId(String id, String pw);

	//test
	public String tmpMemberId(User user);
	
	public int idCheck(String id);

	public int nickNameCheck(String nickName);
		
}








