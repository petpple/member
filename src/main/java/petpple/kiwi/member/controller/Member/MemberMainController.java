package petpple.kiwi.member.controller.Member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petpple.kiwi.member.domain.member.Member;
import petpple.kiwi.member.repository.member.MemberMapper;


@Controller
public class MemberMainController
{

	@Autowired
	private SqlSession sqlSession;

//	-------------- 의뢰인 메인페이지  ------------------
	// 중간 메인 화면
	@RequestMapping(value = "/member/memberMain")
//	public String memberMain(ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp, HttpSession session)
	public String memberMain(Model model, HttpServletRequest request)
	{
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);

		HttpSession session = request.getSession();
	      
		String temId = (String)session.getAttribute("temId");
		
		// 현재 진행중인 펫시팅
		ArrayList<Member> currentPetsitting = dao.currentPetsitting(temId);
		
		// 서비스 이용 확정 대기
		ArrayList<Member> comfirmWaiting = dao.comfirmWaiting(temId);
		
		// 서비스 진행 예정 펫시팅
		ArrayList<Member> petsittingSchedule = dao.petsittingSchedule(temId);
		
		model.addAttribute("currentPetsitting", currentPetsitting);

		model.addAttribute("comfirmWaiting", comfirmWaiting);
		
		model.addAttribute("petsittingSchedule", petsittingSchedule);

//		System.out.println(memberIng);
//		System.out.println(dao.currentPetsitting());

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
	public String memberSide(Model model, HttpServletRequest request)
	{
		// IMemberMapper 수정 필요
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);

//		model.addAttribute("count", dao.getCount());
		
		HttpSession session = request.getSession();
	      
		String temId = (String)session.getAttribute("temId");


		model.addAttribute("result1",dao.waitingAcceptance(temId));

		model.addAttribute("result2",dao.sumPetsitting());

		model.addAttribute("result3",dao.waitingFacceptance());

		model.addAttribute("result4",dao.sumFpetsitting());


		return "member/memberSide";
	}

}
