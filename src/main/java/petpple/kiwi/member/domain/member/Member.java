package petpple.kiwi.member.domain.member;

import lombok.Data;

@Data
public class Member {
//요청번호
//   	private int vId;
// 방문 요청번호, 이름, 주소, 서비스시작일, 종료일, 펫시터 닉네임, 펫시터 프로필
private String id, temId, serviceId, name, addr, startDate, endDate, petsitterNickname
, petsitterProfile, reqDate, totalPrice, type, resId ,serviceType ,pastType;
}
