package petpple.kiwi.member.repository.vService;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import petpple.kiwi.member.domain.apply.ReviewProfile;
import petpple.kiwi.member.domain.apply.Sitter;

@Mapper
public interface IVisitService {
	public ArrayList<Sitter> getVSitterList(@Param("start") int start,@Param("end") int end);
	public ArrayList<ReviewProfile> getReviews(@Param("id") String id);
	public Sitter getVSitterProfile(@Param("allowId") String allowId);
}
