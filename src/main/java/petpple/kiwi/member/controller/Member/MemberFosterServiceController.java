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

import petpple.kiwi.member.domain.apply.Sitter;
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

}
