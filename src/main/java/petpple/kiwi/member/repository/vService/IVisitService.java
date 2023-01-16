package petpple.kiwi.member.repository.vService;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import petpple.kiwi.member.domain.apply.ReviewProfile;
import petpple.kiwi.member.domain.apply.Sitter;
import petpple.kiwi.member.domain.pet.Pet;
import petpple.kiwi.member.domain.visitService.VisitService;

@Mapper
public interface IVisitService {
	public ArrayList<Sitter> getVSitterList(HashMap<String, Object> map);
	public ArrayList<ReviewProfile> getReviews(@Param("id") String id);
	public Sitter getVSitterProfile(@Param("allowId") String allowId);
	public ArrayList<Pet> getPet(@Param("temId") String temId);
	public int requestVisitService(VisitService vs);
	public int requestPetChoice(@Param("petShaId") String petShaId);
}
