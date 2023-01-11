package petpple.kiwi.member.controller.User;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petpple.kiwi.member.domain.User;
import petpple.kiwi.member.repository.UserMapper;

@Controller
public class UserController {
	
	@Autowired 
	private SqlSession sqlSession; 


	
	@RequestMapping("/")
	public String userMain()
	{
		return "user/index";
	}

	@RequestMapping("/user/index")
	public String userIndex()
	{
		return "user/index";
	}
	
	@RequestMapping("/user/sample")
	public String userSample()
	{
		return "user/sample";
	}
	//------------------------FAQ 시작------------------------//
	@RequestMapping("/user/FAQ")
	public String FAQ()
	{
		return "user/FAQ";
	}
	//------------------------FAQ 종료------------------------//
	
	//------------------------의뢰자님을 위한 FAQ 시작------------------------//
	@RequestMapping("/user/userFAQ")
	public String userFAQ()
	{
		return "user/userFAQ";
	}
	//------------------------의뢰자님을 위한 FAQ 종료------------------------//
	
	//------------------------펫시터님을 위한 FAQ 시작------------------------//
	@RequestMapping("/user/petsitterFAQ")
	public String petsitterFAQ()
	{
		return "user/petsitterFAQ";
	}
	//------------------------펫시터님을 위한 FAQ 종료------------------------//
	
	//------------------------유저 메인페이지 시작------------------------//
	@RequestMapping("/user/userMain")
	public String Main()
	{
		return "user/userMain";
	}
	//------------------------유저 메인페이지 종료------------------------//
	
	//------------------------유저 회원가입 이용약관 시작------------------------//
	@RequestMapping("/user/userContract")
	public String userContract()
	{
		return "user/userContract";
	}
	//------------------------유저 회원가입 이용약관 종료------------------------//
	
	//------------------------유저 로그인 시작------------------------//
	@RequestMapping("/user/userLogin")
	public String userLogin()
	{
		return "user/userLogin";
	}
	//------------------------유저 로그인 종료------------------------//
	
	//------------------------유저 회원가입 시작------------------------//
	@RequestMapping("/user/userSignUp")
	public String userSignUp()
	{
		return "user/userSignUp";
	}
	//------------------------유저 회원가입 종료------------------------//
	
	//------------------------유저 ID/PW 찾기 시작------------------------//
	@RequestMapping("/user/userIdPwSearch")
	public String userIdPwSearch()
	{
		return "user/userIdPwSearch";
	}
	//------------------------유저 ID/PW 찾기 종료------------------------//
	
	//------------------------유저 ID 찾기 시작------------------------//
	@RequestMapping("/user/userIdSearch")
	public String userIdSearch()
	{
		return "user/userIdSearch";
	}
	//------------------------유저 ID 찾기 종료------------------------//
	
	//------------------------유저 Pw 찾기 시작------------------------//
	@RequestMapping("/user/userPwSearch")
	public String userPwSearch()
	{
		return "user/userPwSearch";
	}
	//------------------------유저 Pw 찾기 종료------------------------//
	
	//------------------------회원 데이터 입력 시작------------------------//
	@RequestMapping(value = "/user/memberinsert.action", method = RequestMethod.POST)
	public String memberInsert(User user)
	{
		UserMapper dao = sqlSession.getMapper(UserMapper.class);
		
		dao.PRC_TMP_MEMBER(user);
		
		return "redirect:userMain";
	}
	//------------------------회원 데이터 입력 종료------------------------//

}
