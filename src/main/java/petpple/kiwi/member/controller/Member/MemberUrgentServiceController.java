package petpple.kiwi.member.controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import petpple.kiwi.member.repository.pet.IPetManage;

@Controller
public class MemberUrgentServiceController {

	@Autowired
	private SqlSession sqlSession;
	
	// 의뢰인 긴급서비스/ 데이, 타임 케어 타입 선택 페이지
	@RequestMapping(value = "/member/memberCareTypeCho")
	public String membeCareTypeCho(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String temId = (String) session.getAttribute("temId");
		
		if (temId == null) {
			return "//user/userMain";
		}
		
		return "member/memberCareTypeCho";
	}
	
	// 의뢰인 긴급서비스/ 방문, 위탁 서비스 타입 선택 페이지
	@RequestMapping(value = "/member/memberSvcTypeCho")
	public String memberSvcTypeCho(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String temId = (String) session.getAttribute("temId");
		
		if (temId == null) {
			return "//user/userMain";
		}
		
		return "member/memberSvcTypeCho";
	}
	
	// 의뢰인 긴급서비스 요청할 펫 선택 페이지
	@RequestMapping(value = "/member/memberUsvcPetCho")
	public String memberUsvcPetCho(ModelMap mav, HttpServletRequest request)
	{
		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
		HttpSession session = request.getSession();
		String temId = (String) session.getAttribute("temId");
		
		if (temId == null) {
			return "//user/userMain";
		}
		
		mav.addAttribute("list", daoIPetManage.getPet(temId));
		
		return "member/memberUsvcPetCho";
	}

}
