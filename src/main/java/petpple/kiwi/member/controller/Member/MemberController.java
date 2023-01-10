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
	@RequestMapping("/member/memberCareTypeCho")
	public String membeCareTypeCho()
	{
		return "member/memberCareTypeCho";
	}
	
	/* 의뢰인 긴급서비스 펫 선택 */
	@RequestMapping("/member/memberUsvcPetCho")
	public String memberUsvcPetCho()
	{
		return "member/memberUsvcPetCho";
	}
	
	/* 의뢰인 후기 내 펫 관리 */
	@RequestMapping("/member/memberMyPet")
	public String membermemberMyPet()
	{
		return "member/memberMyPet";
	}
	
	/* 의뢰인 후기 내 펫 등록 페이지 */
	@RequestMapping("/member/memberMyPetInsert")
	public String memberMyPetInsert()
	{
		return "member/memberMyPetInsert";
	}
	
	/* 의뢰인 후기 쓸 펫 선택 */
	@RequestMapping("/member/memberReviewPetChoice")
	public String memberReviewPetChoice()
	{
		return "member/memberReviewPetChoice";
	}
	
	/* 의뢰인 memberFAQ */
	@RequestMapping("/member/memberFAQ")
	public String memberFAQ()
	{
		return "member/memberFAQ";
	}
	
	/* 의뢰인 내 펫 수정 폼 */
	@RequestMapping("/member/memberMyPetUpdate")
	public String memberMyPetUpdate()
	{
		return "member/memberMyPetUpdate";
	}

	/* 의뢰인 리뷰 작성 */
	@RequestMapping("/member/memberReviewWritten")
	public String memberReviewWritten()
	{
		return "member/memberReviewWritten";
	}
	
	/* 의뢰인 긴급 요청 서비스 (확정)수락 대기중  */
	@RequestMapping("/member/memberInfoFsvcWaiting")
	public String memberInfoFsvcWaiting()
	{
		return "member/memberInfoFsvcWaiting";
	}
	
	
}
