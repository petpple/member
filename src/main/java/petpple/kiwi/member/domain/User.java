package petpple.kiwi.member.domain;

import lombok.Data;

@Data
public class User {
	// 회원번호
	private int Id;
	/*
	이름, 아이디, 비밀번호
	, 전화번호, 생년월일, 주민앞, 주민뒤, 닉네임
	, 우편번호, 주소, 상세주소, 위도, 경도
	, 이미지경로, 임시회원번호 
	*/
	private String mem_name, mem_id_id, mem_pw
	, tel, date, ssn1, ssn2, nickname
	, code, addr, detailAddress, lat, lng
	, profile, email, tmp_member_id;
}
