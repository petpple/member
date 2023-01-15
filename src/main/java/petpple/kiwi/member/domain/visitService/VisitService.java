package petpple.kiwi.member.domain.visitService;

import lombok.Data;

@Data
public class VisitService {
	String startDate,endDate,checkIn,checkOut,careType,content,code,addr,detailAddress 
		,lat,lng,petShaId,pay,refBankId,refDepositor,refAccNum,start,end,allowId;
}
