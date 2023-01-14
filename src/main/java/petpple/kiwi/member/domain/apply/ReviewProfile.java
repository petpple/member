package petpple.kiwi.member.domain.apply;

import lombok.Data;

@Data
public class ReviewProfile {
	String name, profile	//의뢰자 이름 , 사진경로
	,revDate,content
	,img1,img2,img3,allowId;
}
