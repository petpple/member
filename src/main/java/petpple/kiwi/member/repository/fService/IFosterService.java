package petpple.kiwi.member.repository.fService;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import petpple.kiwi.member.domain.apply.ReviewProfile;
import petpple.kiwi.member.domain.apply.Sitter;
import petpple.kiwi.member.domain.fosterService.FosterService;
import petpple.kiwi.member.domain.pet.Pet;

@Mapper
public interface IFosterService {
	public ArrayList<Sitter> getFSitterList(HashMap<String, Object> map);
	public ArrayList<ReviewProfile> getReviews(@Param("id") String id);
	public Sitter getFSitterProfile(@Param("allowId") String allowId);
	public ArrayList<Pet> getPet(@Param("temId") String temId);
	public int requestFosterService(FosterService fs);
	public int requestPetChoice(@Param("petShaId") String petShaId);
}
