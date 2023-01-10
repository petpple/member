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
	
	@RequestMapping("/member/memberSubmit")
	public String memberSubmit()
	{
		return "member/memberSubmit";
	}
	
	//-------------- 펫시터 폼 관련 -----------------------------
	// 일반회원 → 펫시터 지원 폼
	@RequestMapping("/member/memberApplyForm")
	public String memberApplyForm()
	{
		return "member/memberApplyForm";
	}
	
	// 의뢰인 긴급 요청 서비스 등록 폼
	@RequestMapping("/member/memberUsvcForm")
	public String memberUsvcForm()
	{
		return "member/memberUsvcForm";
	}
	
	// 의뢰인 시터 후기 등록 폼
	@RequestMapping("/member/memberReviewForm")
	public String memberReviewForm()
	{
		return "member/memberReviewForm";
	}
	
	//-------------- 의뢰인 메인페이지  ------------------
	// 중간 메인 화면
	@RequestMapping("/member/memberMain")
	public String memberMain()
	{
		return "member/memberMain";
	}
	// 오른쪽 달력(일정) 화면 사이드
	@RequestMapping("/member/memberCal")
	public String memberCal()
	{
		return "member/memberCal";
	}
	// 왼쪽 펫시팅 정보 사이드
	@RequestMapping("/member/memberSide")
	public String memberSide()
	{
		return "member/memberSide";
	}
	
	// ----------- 의뢰인 마이페이지 ------------------
	//  - 의뢰인 내 정보 변경
	@RequestMapping("/member/memberMyInfo")
	public String memberMyInfo()
	{
		return "member/memberMyInfo";
	}
	
	// -  의뢰인 내 펫 관리 
	@RequestMapping("/member/memberMyPet")
	public String membermemberMyPet()
	{
		return "member/memberMyPet";
	}
	
	
	//-------------- 의뢰인 긴급서비스 등록 디테일------------------
	@RequestMapping("/member/memberUsvcDetail")
	public String memberUsvcDetail()
	{
		return "member/memberUsvcDetail";
	}
	
	
	// 의뢰인 긴급서비스/ 방문, 위탁 서비스 타입 선택 페이지
	@RequestMapping("/member/memberSvcTypeCho")
	public String memberSvcTypeCho()
	{
		return "member/memberSvcTypeCho";
	}
	// 의뢰인 긴급서비스/ 데이, 타임 케어 타입 선택 페이지
	@RequestMapping("/member/memberCareTypeCho")
	public String membeCareTypeCho()
	{
		return "member/memberCareTypeCho";
	}
	
	/* 의뢰인 긴급서비스 요청 할 펫 선택 페이지 */
	@RequestMapping("/member/memberUsvcPetCho")
	public String memberUsvcPetCho()
	{
		return "member/memberUsvcPetCho";
	}
	
	
	
	/* 의뢰인 내 펫 등록(추가) 페이지 */
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

	/* 의뢰인 작성된 리뷰  */
	@RequestMapping("/member/memberReviewWritten")
	public String memberReviewWritten()
	{
		return "member/memberReviewWritten";
	}
	
	/* --------------- 의뢰인 펫시팅 정보 왼쪽 Side---------------  */
	
	// 의뢰인 펫시팅 정보/ 긴급 요청 서비스 - 의뢰인 수락 대기중 페이지
	@RequestMapping("/member/memberInfoUsvcWaiting")
	public String memberInfoUsvcWaiting()
	{
		return "member/memberInfoUsvcWaiting";
	}
	// 의뢰인 펫시팅 정보/ 긴급 요청 서비스 - 누적 펫시팅 이력 페이지
	@RequestMapping("/member/memberInfoUsvcPast")
	public String memberInfoUsvcPast()
	{
		return "member/memberInfoUsvcPast";
	}
	

	// 의뢰인 펫시팅 정보/ 방문서비스 - 펫시터 수락 대기중
	@RequestMapping("/member/memberInfoVsvcWaiting")
	public String memberInfoVsvcWaiting()
	{
		return "member/memberInfoVsvcWaiting";
	}
	// 의뢰인 펫시팅 정보/ 방문서비스 - 누적 펫시팅 이력 페이지
	@RequestMapping("/member/memberInfoVsvcPast")
	public String memberInfoVsvcPast()
	{
		return "member/memberInfoVsvcPast";
	}

	
	// 의뢰인 펫시팅 정보/ 위탁서비스 - 펫시터 수락 대기중
	@RequestMapping("/member/memberInfoFsvcWaiting")
	public String memberInfoFsvcWaiting()
	{
		return "member/memberInfoFsvcWaiting";
	}
	// 의뢰인 펫시팅 정보/ 위탁서비스 - 누적 펫시팅 이력 페이지
	@RequestMapping("/member/memberInfoFsvcPast")
	public String memberInfoFsvcPast()
	{
		return "member/memberInfoFsvcPast";
	}
	
	
}
