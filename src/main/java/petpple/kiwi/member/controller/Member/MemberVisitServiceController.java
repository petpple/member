package petpple.kiwi.member.controller.Member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
import petpple.kiwi.member.domain.apply.Sitter;
import petpple.kiwi.member.domain.pet.Pet;
import petpple.kiwi.member.repository.pet.IPetManage;
import petpple.kiwi.member.repository.vService.IVisitService;
import petpple.kiwi.member.service.member.ImgUpload;

@Controller
public class MemberVisitServiceController {

	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/member/vsitterList")
	public String memberVSitterList(Model model)
	{
		IVisitService dao = sqlSession.getMapper(IVisitService.class);
		
		model.addAttribute("list", dao.getVSitterList(1, 6));
		
		return "/member/vsitterPetSitterList";
	}
	
	@RequestMapping(value = "/member/vsitter")
	public String membervSitterProfile()
	{
		return "/member/vsitterMyProfile";
	}
	
	
	@RequestMapping(value = "/member/showMoreVList",method = RequestMethod.POST)
	public String membershowMoreVList(HttpServletRequest request ,@RequestParam("start") int start ,@RequestParam("end") int end,Model model )
	{
		IVisitService dao = sqlSession.getMapper(IVisitService.class);
		ArrayList<Sitter> list = dao.getVSitterList(start, end);
		model.addAttribute("list", list);
		return "/member/vsitterAjaxList";
	}
	
}	

