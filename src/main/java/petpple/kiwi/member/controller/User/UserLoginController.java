package petpple.kiwi.member.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import petpple.kiwi.member.domain.user.User;
import petpple.kiwi.member.repository.user.IUserMapper;


@Controller
public class UserLoginController 
{
	@Autowired 
	private SqlSession sqlSession; 
	
	//------------------------유저 로그인 폼 ------------------------//
	@RequestMapping(value = "/user/userLogin")
	public String userLogin()
	{
		return "user/userLogin";

	}
	
	//------------------------유저 로그인 시도------------------------
	@RequestMapping(value = "/user/loginAction", method = RequestMethod.POST)
	public String userLogin(@RequestParam("userId") String id, @RequestParam("userPw") String pw, HttpServletRequest request)
	{
		IUserMapper dao = sqlSession.getMapper(IUserMapper.class);
		HttpSession session = request.getSession();
		
		User user = new User();
		
		user.setId(id);
		user.setPw(pw);
		
		int str = dao.userLogin(user);
		
		String temId = dao.tmpMemberId(user);

		if (str != 0)
		{
			// session.setAttribute("signIn", dao.tmpMemberId(id, pw));
			session.setAttribute("temId", temId);
			//session.removeAttribute("temId");
			return "redirect:/member/memberMain";
		}
		else
		{ 
			//session.setAttribute("signIn", null);
			session.setAttribute("temId", null);
			return "redirect:/user/userLogin";
		}
		
	}
	
	@RequestMapping(value = "/sitter/loginAction", method = RequestMethod.POST)
	public String sitterLogin(@RequestParam("petsitterId") String id, @RequestParam("petsitterPw") String pw, HttpServletRequest request)
	{
		IUserMapper dao = sqlSession.getMapper(IUserMapper.class);
		
		HttpSession session = request.getSession();
		
		User temp = new User();
		
		temp.setId(id);
		temp.setPw(pw);

		int str = dao.userLogin(temp);
		
		String temId = dao.tmpMemberId(temp);

		if (str != 0)
		{
			session.setAttribute("temId", temId);
			return "redirect:http://localhost:8093/sitter/sitterMain";

		}
		else
		{ 
			session.setAttribute("temId", null);
			return "redirect:/user/userLogin";
		}
	}
	
	
//	@RequestMapping(value = "user/loginAction", method = RequestMethod.POST)
//	public String userLogin(@RequestParam("userId") String id, @RequestParam("userPw") String pw, Model model)
//	{
//		
//		UserMapper dao = sqlSession.getMapper(UserMapper.class);
//		
//		HttpSession session = ((HttpServletRequest) model).getSession();
//		
//		int str = dao.userLogin(id, pw);
//		
//		model.addAttribute("id", id);
//		model.addAttribute("pw", pw);
//		
//		if (str != 0 ) {
//			session.setAttribute("signIn", dao.tmpMemberId(id, pw));
//			return "redirect:/userMain";
//		} else {
//			session.setAttribute("signIn", null);
//			return "redirect:/userLogin";
//		}
//		
//		//System.out.println(str);
//		
//		
//
//	}
	//------------------------유저 로그인 종료------------------------//

	//------------------------유저 로그아웃------------------------//
	
	@GetMapping("/logout")
	public String logout(HttpSession session) 
	{
		// 세션을 삭제한다.
		// HttpSession session = request.getSession(false);
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	

}
	
