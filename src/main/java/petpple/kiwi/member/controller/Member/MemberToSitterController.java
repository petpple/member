package petpple.kiwi.member.controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petpple.kiwi.member.domain.apply.Sitter;
import petpple.kiwi.member.repository.apply.ISitterApply;

@Controller
public class MemberToSitterController {

	@Autowired
	private SqlSession sqlSession;

	// -------------- 펫시터 폼 관련 -----------------------------
	// 일반회원 → 펫시터 지원 폼
	@RequestMapping("/member/memberApplyForm")
	public String memberApplyForm() {
		return "member/memberApplyForm";
	}

	@RequestMapping(value = "/member/sitterApply", method = RequestMethod.POST)
	public String sitterApply(Sitter dto,HttpServletRequest request) {

		ISitterApply dao = sqlSession.getMapper(ISitterApply.class);
		HttpSession session = request.getSession();
		String temId = (String)session.getAttribute("temId");
		if(temId==null)
		{
			return "//user/userMain";
		}
		dto.setTemId(temId);
		dao.applySitter(dto); // 펫시터 지원
		dao.confirmSitter(dto.getId()); // 펫시터 승인
		return "redirect:memberMain";
	}

}
