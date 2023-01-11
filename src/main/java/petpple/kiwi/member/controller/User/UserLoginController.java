package petpple.kiwi.member.controller.User;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petpple.kiwi.member.domain.user.User;
import petpple.kiwi.member.repository.user.UserMapper;


@Controller
public class UserLoginController 
{
	@Autowired 
	private SqlSession sqlSession; 
	
	//------------------------유저 로그인 시작------------------------//
	@RequestMapping(value = "/user/userLogin", method = RequestMethod.POST)
	public String userLogin(User user)
	{
		UserMapper dao = sqlSession.getMapper(UserMapper.class);

		dao.userLogin(user);
		
		return "redirect:userMain";
		
	}
	//------------------------유저 로그인 종료------------------------//
	
	

}
