package petpple.kiwi.member.controller.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import petpple.kiwi.member.domain.pet.Pet;
import petpple.kiwi.member.repository.pet.IPetManage;

@Controller
public class MemberPetInsertController {

	
	@Autowired
	private SqlSession sqlSession;
	
	// -  의뢰인 내 펫 관리 
	@RequestMapping(value = "/member/memberMyPet")
	public String membermemberMyPet()
	{
		return "member/memberMyPet";
	}
	
	@RequestMapping(value = "/member/petInsert" ,method = RequestMethod.POST)
	public String membermemberMyPetInsert(Pet dto)
	{
		IPetManage daoIPetManage = sqlSession.getMapper(IPetManage.class );
		daoIPetManage.insertPet(dto);
		
		return "redirect:memberMain";
	}
	
		
	/* 의뢰인 내 펫 등록(추가) 페이지 */
	@RequestMapping(value = "/member/memberMyPetInsert")
	public String memberMyPetInsert()
	{
		return "member/memberMyPetInsert";
	}
	
	
}