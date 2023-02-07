package petpple.kiwi.member.controller.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petpple.kiwi.member.repository.member.MemberMapper;

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


	// ----------- 의뢰인 마이페이지 ------------------
	//  - 의뢰인 내 정보 변경
	@RequestMapping(value = "/member/memberMyInfo")
	public String memberMyInfo()
	{
		return "member/memberMyInfo";
	}

	@RequestMapping(value = "/member/memberMyBlock")
	public String memberMyBlock()
	{
		return "member/memberMyBlock";
	}

	//-------------- 의뢰인 긴급서비스 등록 디테일------------------
	@RequestMapping(value = "member/memberUsvcDetail")
	public String memberUsvcDetail()
	{
		return "member/memberUsvcDetail";
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


	/* 의뢰인 작성된 리뷰  */
	@RequestMapping(value = "/member/memberReviewWritten")
	public String memberReviewWritten()
	{
		return "member/memberReviewWritten";
	}



}
