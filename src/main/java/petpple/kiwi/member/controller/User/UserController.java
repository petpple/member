package petpple.kiwi.member.controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping("/")
	public String userMain()
	{
		return "user/index";
	}

	@RequestMapping("/user/index")
	public String userIndex()
	{
		return "user/index";
	}
	
	@RequestMapping("/user/sample")
	public String userSample()
	{
		return "user/sample";
	}
}
