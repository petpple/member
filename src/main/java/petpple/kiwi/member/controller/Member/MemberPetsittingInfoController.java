package petpple.kiwi.member.controller.Member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import petpple.kiwi.member.domain.member.Member;
import petpple.kiwi.member.repository.member.MemberMapper;

@Controller
public class MemberPetsittingInfoController {

	@Autowired
	private SqlSession sqlSession;
	
	 	//의뢰인 펫시팅 정보/ 긴급 요청 서비스 - 현재 의뢰중
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
		public String memberInfoVsvcWaiting(Model model, HttpServletRequest request)
		{
			
			MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
			
			HttpSession session = request.getSession();
		      
			String temId = (String)session.getAttribute("temId");
			
			ArrayList<Member> waitingAcceptanceList = dao.waitingAcceptanceList(temId);
			
			model.addAttribute("waitingAcceptanceList", waitingAcceptanceList);
			
			return "member/memberInfoVsvcWaiting";
		}
		// 의뢰인 펫시팅 정보/ 방문서비스 - 누적 펫시팅 이력 페이지
		@RequestMapping(value = "/member/memberInfoVsvcPast")
		public String memberInfoVsvcPast(Model model, HttpServletRequest request)
		{
			MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
			
			HttpSession session = request.getSession();
		      
			String temId = (String)session.getAttribute("temId");
			
			ArrayList<Member> sumPetsittingList = dao.sumPetsittingList();
			
			model.addAttribute("sumPetsittingList", sumPetsittingList);
			
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
