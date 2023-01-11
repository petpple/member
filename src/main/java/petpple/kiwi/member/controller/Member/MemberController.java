package petpple.kiwi.member.controller.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petpple.kiwi.member.repository.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/member/index")
	public String memberIndex()
	{
		return "member/index";
	}
	
	@RequestMapping(value =  "/member/sample", method = RequestMethod.GET)
	public String sample(Model model)
	{
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
		model.addAttribute("count", dao.getCount());
		
		return "member/sample";
	}
	
	@RequestMapping("/member/sample2")
	public String sample2()
	{
		return "member/sample2";
	}
	// 로그인 페이지
	@RequestMapping(value = "/member/memberLogin")
	public String memberLogin()
	{
		return "member/memberLogin";
	}
	
	

	//-------------- 펫시터 지원하기 ------------------
	@RequestMapping(value = "/member/memberApply")
	public String memberApply()
	{
		return "member/memberApply";
	}
	
	@RequestMapping(value = "/member/memberSubmit", method = RequestMethod.GET)
	public String memberSubmit(Model model)
	{
		return "member/memberSubmit";
	}
	
	//-------------- 펫시터 폼 관련 -----------------------------
	// 일반회원 → 펫시터 지원 폼
	@RequestMapping(value = "/member/memberApplyForm", method = RequestMethod.POST)
	public String memberApplyForm()
	{
		return "member/memberApplyForm";
	}
	
	// 의뢰인 긴급 요청 서비스 등록 폼
	@RequestMapping(value = "/member/memberUsvcForm")
	public String memberUsvcForm()
	{
		return "member/memberUsvcForm";
	}
	
	// 의뢰인 시터 후기 등록 폼
	@RequestMapping(value = "/member/memberReviewForm")
	public String memberReviewForm()
	{
		return "member/memberReviewForm";
	}
	
	//-------------- 의뢰인 메인페이지  ------------------
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
	
	// ----------- 의뢰인 마이페이지 ------------------
	//  - 의뢰인 내 정보 변경
	@RequestMapping(value = "/member/memberMyInfo")
	public String memberMyInfo()
	{
		return "member/memberMyInfo";
	}
	
	// -  의뢰인 내 펫 관리 
	@RequestMapping(value = "/member/memberMyPet")
	public String membermemberMyPet()
	{
		return "member/memberMyPet";
	}
	
	@RequestMapping(value = "/member/memberMyBlock")
	public String memberMyBlock()
	{
		return "member/memberMyBlock";
	}
	
	
	
	
	//-------------- 의뢰인 긴급서비스 등록 디테일------------------
	@RequestMapping(value = "/member/memberUsvcDetail")
	public String memberUsvcDetail()
	{
		return "member/memberUsvcDetail";
	}
	
	
	// 의뢰인 긴급서비스/ 방문, 위탁 서비스 타입 선택 페이지
	@RequestMapping(value = "/member/memberSvcTypeCho")
	public String memberSvcTypeCho()
	{
		return "member/memberSvcTypeCho";
	}
	// 의뢰인 긴급서비스/ 데이, 타임 케어 타입 선택 페이지
	@RequestMapping(value = "/member/memberCareTypeCho")
	public String membeCareTypeCho()
	{
		return "member/memberCareTypeCho";
	}
	
	/* 의뢰인 긴급서비스 요청 할 펫 선택 페이지 */
	@RequestMapping(value = "/member/memberUsvcPetCho")
	public String memberUsvcPetCho()
	{
		return "member/memberUsvcPetCho";
	}
	
	
	
	/* 의뢰인 내 펫 등록(추가) 페이지 */
	@RequestMapping(value = "/member/memberMyPetInsert")
	public String memberMyPetInsert()
	{
		return "member/memberMyPetInsert";
	}
	
	/* 의뢰인 후기 쓸 펫 선택 */
	@RequestMapping(value = "/member/memberReviewPetChoice")
	public String memberReviewPetChoice()
	{
		return "member/memberReviewPetChoice";
	}
	
	/* 의뢰인 memberFAQ */
	@RequestMapping(value = "/member/memberFAQ")
	public String memberFAQ()
	{
		return "member/memberFAQ";
	}
	
	/* 의뢰인 내 펫 수정 폼 */
	@RequestMapping(value = "/member/memberMyPetUpdate")
	public String memberMyPetUpdate()
	{
		return "member/memberMyPetUpdate";
	}

	/* 의뢰인 작성된 리뷰  */
	@RequestMapping(value = "/member/memberReviewWritten")
	public String memberReviewWritten()
	{
		return "member/memberReviewWritten";
	}
	
	/* --------------- 의뢰인 펫시팅 정보 왼쪽 Side---------------  */
	
	// 의뢰인 펫시팅 정보/ 긴급 요청 서비스 - 현재 의뢰중
	@RequestMapping(value = "/member/memberInfoUsvcIng")
	public String memberInfoUsvcIng()
	{
		return "member/memberInfoUsvcIng";
	}
	// 의뢰인 펫시팅 정보/ 긴급 요청 서비스 - 의뢰인 수락 대기중 페이지
	@RequestMapping(value = "/member/memberInfoUsvcWaiting")
	public String memberInfoUsvcWaiting()
	{
		return "member/memberInfoUsvcWaiting";
	}
	// 의뢰인 펫시팅 정보/ 긴급 요청 서비스 - 누적 펫시팅 이력 페이지
	@RequestMapping(value = "/member/memberInfoUsvcPast")
	public String memberInfoUsvcPast()
	{
		return "member/memberInfoUsvcPast";
	}
	
		
	

	// 의뢰인 펫시팅 정보/ 방문서비스 - 펫시터 수락 대기중
	@RequestMapping(value = "/member/memberInfoVsvcWaiting")
	public String memberInfoVsvcWaiting()
	{
		return "member/memberInfoVsvcWaiting";
	}
	// 의뢰인 펫시팅 정보/ 방문서비스 - 누적 펫시팅 이력 페이지
	@RequestMapping(value = "/member/memberInfoVsvcPast")
	public String memberInfoVsvcPast()
	{
		return "member/memberInfoVsvcPast";
	}

	
	// 의뢰인 펫시팅 정보/ 위탁서비스 - 펫시터 수락 대기중
	@RequestMapping(value = "/member/memberInfoFsvcWaiting")
	public String memberInfoFsvcWaiting()
	{
		return "member/memberInfoFsvcWaiting";
	}
	// 의뢰인 펫시팅 정보/ 위탁서비스 - 누적 펫시팅 이력 페이지
	@RequestMapping(value = "/member/memberInfoFsvcPast")
	public String memberInfoFsvcPast()
	{
		return "member/memberInfoFsvcPast";
	}
	
	// 위탁 펫시터 리스트 페이지
	@RequestMapping(value = "/member/fsitterPetSitterList")
	public String fsitterPetSitterList()
	{
		return "member/fsitterPetSitterList";
	}
	
	// 방문 펫시터 리스트 페이지
	@RequestMapping(value = "/member/vsitterPetSitterList")
	public String vsitterPetSitterList()
	{
		return "member/vsitterPetSitterList";
	}
			
		

	
}
