package petpple.kiwi.member.controller.Member;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import petpple.kiwi.member.domain.apply.ReviewProfile;
import petpple.kiwi.member.domain.apply.Sitter;
import petpple.kiwi.member.domain.fosterService.FosterService;
import petpple.kiwi.member.domain.pet.Pet;
import petpple.kiwi.member.repository.fService.IFosterService;
import petpple.kiwi.member.service.sitter.GradeCaculator;
import petpple.kiwi.member.service.sitter.SitterRequestHelper;

@Controller
public class MemberFosterServiceController
{
	@Autowired
	private SqlSession sqlSession;

	@Autowired
	private GradeCaculator gc;

	@Autowired
	private SitterRequestHelper srh;

	@RequestMapping(value = "/member/fsitterList")
	public String memberVSitterList(Model model,HttpServletRequest request)
	{
		IFosterService dao = sqlSession.getMapper(IFosterService.class);
		HttpSession session = request.getSession();
		String temId = (String)session.getAttribute("temId");
		if(temId==null)
		{
			return "//user/userMain";
		}

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", 1);
		map.put("end", 6);
		map.put("temId",temId);
		ArrayList<Sitter> sitters = dao.getFSitterList(map);

		for (Sitter sitter : sitters) {
			sitter.setGrade(gc.getGrade(sitter.getTime(), sitter.getCount()));
		}

		model.addAttribute("list", sitters);

		return "/member/fsitterPetSitterList";
	}

	@RequestMapping(value = "/member/fsitter")
	public String membervSitterProfile(@RequestParam("allowid") String allowId, @RequestParam("grade") String grade,
			Model model, HttpServletRequest request)
	{
		IFosterService dao = sqlSession.getMapper(IFosterService.class);
		Sitter sitter = dao.getFSitterProfile(allowId);
		sitter.setGrade(grade);
		model.addAttribute("sitter", sitter);

		ArrayList<ReviewProfile> reviews = dao.getReviews(allowId);
		model.addAttribute("reviews", reviews);

		HttpSession session = request.getSession();

		String temId = (String) session.getAttribute("temId");

		if (temId == null) {
			return "//user/userMain";
		}

		ArrayList<Pet> petList = dao.getPet(temId);
		model.addAttribute("petList", petList);

		return "/member/fsitterMyProfile";
	}

	@RequestMapping(value = "/member/showMoreFList", method = RequestMethod.POST)
	public String membershowMoreVList(HttpServletRequest request, @RequestParam("start") int start,
			@RequestParam("end") int end, Model model) {

		IFosterService dao = sqlSession.getMapper(IFosterService.class);

		HttpSession session = request.getSession();
		String temId = (String)session.getAttribute("temId");
		if(temId==null)
		{
			return "//user/userMain";
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("temId",temId);
		ArrayList<Sitter> list = dao.getFSitterList(map);
		for (Sitter sitter : list) {
			sitter.setGrade(gc.getGrade(sitter.getTime(), sitter.getCount()));
		}

		model.addAttribute("list", list);
		return "/member/fsitterAjaxList";
	}

	@RequestMapping(value = "/member/fosterServiceRequest", method = RequestMethod.POST)
	public String memberFosterServiceRequest(FosterService vs, @RequestParam("petShaIdArr") String[] petShaIdArr)
	{
		IFosterService dao = sqlSession.getMapper(IFosterService.class);
		vs.setStart(srh.getDate(vs.getStartDate(), vs.getCheckIn()));
		vs.setEnd(srh.getDate(vs.getEndDate(), vs.getCheckOut()));
		dao.requestFosterService(vs);
		for (String id : petShaIdArr) {
			dao.requestPetChoice(id);
		}

		return "/member/success";
	}
//
//	@RequestMapping(value = "/member/success")
//	public String memberRequestSuccess() {
//
//
//		return "/member/success";
//	}

}
