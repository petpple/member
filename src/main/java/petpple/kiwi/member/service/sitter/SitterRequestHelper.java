package petpple.kiwi.member.service.sitter;

import org.springframework.stereotype.Service;

@Service
public class SitterRequestHelper {
	public String getDate(String date, String timeId)
	{
		String time ="";
		int timeNum = Integer.parseInt(timeId)+8;
		if(timeNum == 9) {
			time = "0"+timeNum;
		}
		else{
			time = time+timeNum;
		}
		
		
		return date+" "+time+":00:00";
	}
}
