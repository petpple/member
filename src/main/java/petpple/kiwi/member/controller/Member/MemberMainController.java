package petpple.kiwi.member.controller.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberMainController {
	
	@Autowired
	private SqlSession sqlSession;
	
//	-------------- 의뢰인 메인페이지  ------------------
	// 중간 메인 화면
	@RequestMapping(value = "/member/memberMain")
	public String memberMain()
	{
		return "member/memberMain";
	}
	// 오른쪽 달력(일정) 화면 사이드
	@RequestMapping(value = "/member/memberCal")
	public String memberCal()
	{
		return "member/memberCal";
	}
	// 왼쪽 펫시팅 정보 사이드
	@RequestMapping(value = "/member/memberSide")
	public String memberSide()
	{
		return "member/memberSide";
	}
}
