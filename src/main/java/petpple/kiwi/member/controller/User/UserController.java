package petpple.kiwi.member.controller.User;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import petpple.kiwi.member.domain.user.User;
import petpple.kiwi.member.repository.user.IUserMapper;
import petpple.kiwi.member.service.member.ImgUpload;

@Controller
public class UserController {
	
	@Autowired 
	private SqlSession sqlSession; 

	@RequestMapping("/")
	public String userMain()
	{
		return "user/userMain";
	}

	@RequestMapping("/user/userMain")
	public String Main()
	{
		return "user/userMain";
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
	
	//------------------------유저 회원가입 이용약관 시작------------------------//
	@RequestMapping("/user/userContract")
	public String userContract()
	{
		return "user/userContract";
	}
	//------------------------유저 회원가입 이용약관 종료------------------------//
	
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
	public String memberInsert(User user,@RequestParam(value = "file")MultipartFile file)
	{
		IUserMapper dao = sqlSession.getMapper(IUserMapper.class);
	
		dao.PRC_TMP_MEMBER(user);
		String id = dao.tmpMemberId(user);
		String path = "C:\\Petpple\\member\\src\\main\\resources\\static\\images\\member\\member\\";
		String profile = new ImgUpload().uploadProfileImg(file,
				path
				,id);
		
		 HashMap<String, Object> map = new HashMap<String, Object>(); 
		 map.put("profile", "\\images\\member\\member\\"+profile);
		 map.put("id",id); 
		 dao.insertMemberProfile(map);
		
		return "redirect:userMain";
	}
	//------------------------회원 데이터 입력 종료------------------------//

}
