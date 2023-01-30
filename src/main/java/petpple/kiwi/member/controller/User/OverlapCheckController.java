package petpple.kiwi.member.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import petpple.kiwi.member.repository.user.IUserMapper;


@Controller
public class OverlapCheckController {
	
	
	@Autowired 
	private SqlSession sqlSession; 
	
	
	//------------------------유저 id 중복 체크------------------------//
	@ResponseBody
	@RequestMapping(value="/checkId.action", method = RequestMethod.POST)
	public int idCheck(@RequestParam String id, HttpServletRequest req, HttpServletResponse resp, HttpSession session) 
	{	
		IUserMapper dao = sqlSession.getMapper(IUserMapper.class);
		
		int result = 0;
		
		result = dao.idCheck(id);
		
//		System.out.println("result : " + result);
//		System.out.println("id : " + id);
		
		return result;
	}

	
		
//	@ResponseBody 
//	@RequestMapping(value = "/login/idcheck.action", method = { RequestMethod.GET })
//	public int idcheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String id) {
//		IUserMapper dao = sqlSession.getMapper(IUserMapper.class);
//		
//	    int result = dao.idCheck(id);
//	    
//	    return result; 
//	}
	
	//------------------------유저 닉네임 중복 체크 -----------------------//
	
	@ResponseBody
	@RequestMapping(value="/nickName.action", method = RequestMethod.POST)
	public int nickNameCheck(@RequestParam String nickName, HttpServletRequest req, HttpServletResponse resp, HttpSession session) 
	{	
		IUserMapper dao = sqlSession.getMapper(IUserMapper.class);
		
		int nameResult = 0;
		
		nameResult = dao.nickNameCheck(nickName);
		
		System.out.println("nameResult : " + nameResult);
		System.out.println("nickName : " + nickName);
		
		return nameResult;
	}

//	@ResponseBody 
//	@RequestMapping(value = "/login/nickName.action", method = { RequestMethod.GET })
//	public int nickNameCheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String nickName) 
//	{
//		IUserMapper dao = sqlSession.getMapper(IUserMapper.class);
//		
//	    int result = dao.nickNameCheck(nickName);
//
//	    return result; 
//	}
		
	
	
}



