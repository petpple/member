package petpple.kiwi.member.controller.Member;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import petpple.kiwi.member.domain.pet.Pet;
import petpple.kiwi.member.repository.pet.IPetManage;
import petpple.kiwi.member.service.member.ImgUpload;
import petpple.kiwi.member.service.member.MemberService;

@Controller
public class MemberPetInsertController {

	
	@Autowired
	private SqlSession sqlSession;
	
	//--  의뢰인 내 펫 관리 
	@RequestMapping(value = "/member/memberMyPet")
	public String membermemberMyPet(ModelMap mav,HttpServletRequest request)
	{
		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
		HttpSession session = request.getSession();
		String temId = (String) session.getAttribute("temId");
		if(temId==null)
		{
			return "//user/userMain";
		}
		mav.addAttribute("list", daoIPetManage.getPet(temId));
		
		return "member/memberMyPet";
	}
	
	//-- 의뢰인 내 펫 수정
		@RequestMapping(value = "/member/PetUpdate", method = RequestMethod.GET)
		public String membermemberMyPetUpdate(ModelMap mav,@RequestParam("id") String id)
		{
			
			 IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
			 
			 Pet dto = daoIPetManage.search(id);
			  
			 mav.addAttribute("Pet", dto);
			 return "member/memberMyPetUpdate";
			
		}
		
		@RequestMapping(value = "/member/memberMyPetUpdate", method = RequestMethod.GET)
		public String memberMyPetUpdate(Pet dto)
		{
			IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
			
			daoIPetManage.updatePet(dto);
			
			return "redirect:memberMyPet";
		}
		
		
		//-- 의뢰인 내 펫 삭제
		@RequestMapping(value = "/member/memberMyPetDelete", method = RequestMethod.GET)
		public String memberMyPetDelete(String id)
		{
			IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
			
			daoIPetManage.deletePet(id);
			
			return "redirect:memberMyPet";
		}
	
	
	//-- 의뢰인 내 펫 삭제
	
	
	@RequestMapping(value = "/member/petInsert" ,method = RequestMethod.POST)
	public String membermemberMyPetInsert(Pet dto,@RequestParam(value = "file")MultipartFile file,HttpServletRequest request)
	{
		
		  IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class);
		 HttpSession session = request.getSession();
		 
		  String temId = (String) session.getAttribute("temId"); dto.setTemId(temId);
		  daoIPetManage.insertPet(dto); String path =
		  "C:\\Petpple\\member\\src\\main\\resources\\static\\images\\member\\pet\\";
		  String id = daoIPetManage.getPetId(); String profile = new
		  ImgUpload().uploadProfileImg(file,path ,id);
		  
		  HashMap<String, Object> map = new HashMap<String, Object>();
		  map.put("profile", "\\images\\member\\pet\\"+profile); map.put("id",id);
		  daoIPetManage.insertPetProfile(map);
		
		
		return "redirect:memberMain";
	}
	
	
		
	/* 의뢰인 내 펫 등록(추가) 페이지 */
	@RequestMapping(value = "/member/memberMyPetInsert")
	public String memberMyPetInsert()
	{
		return "member/memberMyPetInsert";
	}
	
	
}
