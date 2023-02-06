package petpple.kiwi.member.repository.review;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.member.Member;
import petpple.kiwi.member.domain.review.Review;

@Mapper
public interface IReview {

	// 방문서비스 리뷰 작성
	public int vReviewInsert(Review dto);
	// 위탁서비스 리뷰 작성
	public int fReviewInsert(Review dto);
	
	// 긴급방문서비스 리뷰 작성
	//public int uvReviewInsert(Review dto);
	
	// 긴급위탁서비스 리뷰 작성
	//public int ufReviewInsert(Review dto);
	
	// 해당 방문 서비스의 펫시터 정보
	public Member vservicePetsitterInfo(String resId);
	// 해당 위탁 서비스의 펫시터 정보
	public Member fservicePetsitterInfo(String resId);
}
