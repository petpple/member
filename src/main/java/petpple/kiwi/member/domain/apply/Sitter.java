package petpple.kiwi.member.domain.apply;

import lombok.Data;

@Data
public class Sitter {
	String id,allowId,addr,lat,lng  //id는 지원 번호 r
	,title,name, content, depositor
	, accNumber , reviewCnt ,grade
	, smokeId, petSizeId,profileImg
	, petKindId, bankId,time,count;
	int stars;
}
