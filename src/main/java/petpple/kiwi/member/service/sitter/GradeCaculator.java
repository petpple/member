package petpple.kiwi.member.service.sitter;

import org.springframework.stereotype.Service;

@Service
public class GradeCaculator {
	public String getGrade(String time, String count)
	{	int timeNum = Integer.parseInt(time);
		int countNum = Integer.parseInt(count);
		if(timeNum>180 && countNum >30)
		{
			return "4";
		}
		else if(timeNum>60 && countNum >10)
		{
			return "3";
		}
		else if(timeNum>12 && countNum >4)
		{
			return "2";
		}
		else
		{
			return "1";
		}
	}
}
