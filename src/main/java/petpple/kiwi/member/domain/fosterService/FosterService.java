package petpple.kiwi.member.domain.fosterService;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FosterService
{
	// 서비스 시작일, 서비스 종료날짜, 시작날짜, 시작시간, 종료시간, 케어타입, 프로필내용, 코드?, 주소,
	// 상세주소, 위도, 경도, 펫공유아이디, 결제 금액, 환불은행, 환불예금주, 계좌번호,
	// 한페이지에 시작일, 종료일, 승인일자

	String startDate,endDate,checkIn,checkOut,careType,content,code,addr,detailAddress
		,lat,lng,petShaId,pay,refBankId,refDepositor,refAccNum,start,end,allowId;
}
