package petpple.kiwi.member.controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import petpple.kiwi.member.repository.member.MemberMapper;


@Controller
public class MemberMainController {
	
	@Autowired
	private SqlSession sqlSession;
	
//	-------------- 의뢰인 메인페이지  ------------------
	// 중간 메인 화면
	@RequestMapping(value = "/member/memberMain")
	public String memberMain(Model model, @RequestParam String id, HttpServletRequest req, HttpServletResponse resp, HttpSession session)
	{
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
		
		model.addAttribute("memberList",dao.currentPetsitting());
		
		return "member/memberMain";
	}
	// 오른쪽 달력(일정) 화면 사이드
	@RequestMapping(value = "/member/memberCal")
	public String memberCal()
	{
		return "member/memberCal";
	}
	/*
	// 왼쪽 펫시팅 정보 사이드
	@RequestMapping(value = "/member/memberSide")
	public String memberSide()
	{
		return "member/memberSide";
	}
	*/
	
	// 왼쪽 펫시팅 정보 사이드
	/*
	@RequestMapping(value = "/member/memberSide")
	public int memberSide(Model model)
	{
		// IMemberMapper 수정 필요
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
		
		
		model.addAllAttribute("result",dao.waitingAcceptance());
		
		
		return "member/memberSide";
	}
	*/
	
	@RequestMapping(value = "/member/memberSide", method = RequestMethod.GET)
	public String memberSide(Model model)
	{
		// IMemberMapper 수정 필요
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
		
//		model.addAttribute("count", dao.getCount());
		
		
		model.addAttribute("result1",dao.waitingAcceptance());
		
		model.addAttribute("result2",dao.sumPetsitting());
		
		model.addAttribute("result3",dao.waitingFacceptance());
		
		model.addAttribute("result4",dao.sumFpetsitting());
		
		
		return "member/memberSide";
	}
	
}
