package petpple.kiwi.member.controller.Member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/member/index")
	public String memberIndex()
	{
		return "member/index";
	}
	
	@RequestMapping("/member/sample")
	public String sample()
	{
		return "member/sample";
	}
	
	@RequestMapping("/member/sample2")
	public String sample2()
	{
		return "member/sample2";
	}
	

	//-------------- 펫시터 지원하기 ------------------
	@RequestMapping("/member/memberApply")
	public String memberApply()
	{
		return "member/memberApply";
	}
	
	@RequestMapping("/member/sitterAllowSubmit")
	public String sitterAllowSubmit()
	{
		return "member/sitterAllowSubmit";
	}
	
	//-------------- 펫시터 폼 관련 -----------------------------
	@RequestMapping("/member/memberApplyForm")
	public String memberApplyForm()
	{
		return "member/memberApplyForm";
	}
	
	@RequestMapping("/member/memberUsvcForm")
	public String memberUsvcForm()
	{
		return "member/memberUsvcForm";
	}
	

	
	//-------------- 의뢰인 메인페이지 ------------------
	@RequestMapping("/member/memberMain")
	public String memberMain()
	{
		return "member/memberMain";
	}
	
	@RequestMapping("/member/memberCal")
	public String memberCal()
	{
		return "member/memberCal";
	}
	
	@RequestMapping("/member/memberSide")
	public String memberSide()
	{
		return "member/memberSide";
	}
	
	//-------------- 의뢰인 마이페이지 ------------------
	@RequestMapping("/member/memberMyInfo")
	public String memberMyInfo()
	{
		return "member/memberMyInfo";
	}
	
	//-------------- 의뢰인 긴급서비스 등록 디테일------------------
	@RequestMapping("/member/memberUsvcDetail")
	public String memberUsvcDetail()
	{
		return "member/memberUsvcDetail";
	}
	
	@RequestMapping("/member/memberSvcTypeCho")
	public String memberSvcTypeCho()
	{
		return "member/memberSvcTypeCho";
	}
	
	
}
