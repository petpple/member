package petpple.kiwi.member.controller.User;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import petpple.kiwi.member.repository.user.UserMapper;


@Controller
public class CheckController {
	
	
	@Autowired 
	private SqlSession sqlSession; 
	
	
	//------------------------유저 id 체크 시작------------------------//
	@ResponseBody
	@RequestMapping(value="/checkId.action", method = RequestMethod.POST)
	public String idCheck(@RequestBody String id) throws Exception
	{	
		UserMapper dao = sqlSession.getMapper(UserMapper.class);
		
		int count = 0;
		
		count = dao.idCheck(id);
				
		return "redirect:userSignUp";
	}
	//------------------------유저 id 체크 종료------------------------//
	
}



