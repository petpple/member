package petpple.kiwi.member.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import petpple.kiwi.member.domain.user.User;
import petpple.kiwi.member.repository.user.UserMapper;


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
		
		UserMapper dao = sqlSession.getMapper(UserMapper.class);
		
		HttpSession session = request.getSession();
		
		User temp = new User();
		temp.setId(id);
		temp.setPw(pw);
		int str = 0;
//		
//		
//		System.out.println(dao.userLogin(temp));
//		System.out.println("id : " + temp.getId() + ", pw : " + temp.getPw());
//		System.out.println("id : " + id + ", pw : " + pw);
		
		str = dao.userLogin(temp);

//		System.out.println("str : " + str);
		
		  if (str != 0)
		  {
			  // session.setAttribute("signIn", dao.tmpMemberId(id, pw));
//			  System.out.println("맞은 비밀번호");
			  return "redirect:/user/userMain";
		  }
		  else
		  { 
			  session.setAttribute("signIn", null);
//			  System.out.println("틀린 비밀번호");
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
	
	

}
