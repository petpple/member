package petpple.kiwi.member.controller.Member;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;
import petpple.kiwi.member.domain.apply.ReviewProfile;
import petpple.kiwi.member.domain.apply.Sitter;
import petpple.kiwi.member.domain.pet.Pet;
import petpple.kiwi.member.domain.visitService.VisitService;
import petpple.kiwi.member.repository.pet.IPetManage;
import petpple.kiwi.member.repository.vService.IVisitService;
import petpple.kiwi.member.service.member.ImgUpload;
import petpple.kiwi.member.service.sitter.GradeCaculator;
import petpple.kiwi.member.service.sitter.SitterRequestHelper;

@Controller
public class MemberVisitServiceController {

	@Autowired
	private SqlSession sqlSession;

	@Autowired
	private GradeCaculator gc;

	@Autowired
	private SitterRequestHelper srh;
	
	@RequestMapping(value = "/member/vsitterList")
	public String memberVSitterList(Model model,HttpServletRequest request) {
		IVisitService dao = sqlSession.getMapper(IVisitService.class);
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
		ArrayList<Sitter> sitters = dao.getVSitterList(map);

		for (Sitter sitter : sitters) {
			sitter.setGrade(gc.getGrade(sitter.getTime(), sitter.getCount()));
		}

		model.addAttribute("list", sitters);

		return "/member/vsitterPetSitterList";
	}

	@RequestMapping(value = "/member/vsitter")
	public String membervSitterProfile(@RequestParam("allowid") String allowId, @RequestParam("grade") String grade,
			Model model, HttpServletRequest request) {
		IVisitService dao = sqlSession.getMapper(IVisitService.class);
		Sitter sitter = dao.getVSitterProfile(allowId);
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

		return "/member/vsitterMyProfile";
	}

	@RequestMapping(value = "/member/showMoreVList", method = RequestMethod.POST)
	public String membershowMoreVList(HttpServletRequest request, @RequestParam("start") int start,
			@RequestParam("end") int end, Model model) {
		IVisitService dao = sqlSession.getMapper(IVisitService.class);
		
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
		ArrayList<Sitter> list = dao.getVSitterList(map);
		for (Sitter sitter : list) {
			sitter.setGrade(gc.getGrade(sitter.getTime(), sitter.getCount()));
		}

		model.addAttribute("list", list);
		return "/member/vsitterAjaxList";
	}
	
	@RequestMapping(value = "/member/visitServiceRequest", method = RequestMethod.POST)
	public String memberVisitServiceRequest(VisitService vs,@RequestParam("petShaIdArr") String[] petShaIdArr) {
		IVisitService dao = sqlSession.getMapper(IVisitService.class);
		vs.setStart(srh.getDate(vs.getStartDate(), vs.getCheckIn()));
		vs.setEnd(srh.getDate(vs.getEndDate(), vs.getCheckOut()));
		dao.requestVisitService(vs);
		for (String id : petShaIdArr) {
			dao.requestPetChoice(id);
		}
		
		return "/member/success";
	}
	
	@RequestMapping(value = "/member/success")
	public String memberRequestSuccess() {
		
		
		return "/member/success";
	}

}
