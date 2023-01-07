package petpple.kiwi.member.controller.Member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/member/index")
	public String memberIndex()
	{
		return "member/index";
	}
	
	@RequestMapping("/member/sample")
	public String memberSample()
	{
		return "member/sample";
	}
}
