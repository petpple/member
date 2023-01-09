package petpple.kiwi.member.controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
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
	
}
