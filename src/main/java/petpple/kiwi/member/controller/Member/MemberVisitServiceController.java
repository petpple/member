package petpple.kiwi.member.controller.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;
import petpple.kiwi.member.domain.pet.Pet;
import petpple.kiwi.member.repository.pet.IPetManage;
import petpple.kiwi.member.service.member.ImgUpload;

@Controller
public class MemberVisitServiceController {

	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/member/vsitterList")
	public String memberVSitterList()
	{
		
		return "/member/vsitterPetSitterList";
	}
	
	
}
