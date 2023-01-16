package petpple.kiwi.member.repository.pet;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import petpple.kiwi.member.domain.pet.Pet;

@Mapper
public interface IPetManage {
	public int insertPet(Pet dto);
	
	public ArrayList<Pet> getPet(@Param("temId") String temId);
	
	public Pet search(String id);
	
	public int updatePet(Pet dto);
	

	public int deletePet(String id);
	
	public String getPetId();
	
	public int insertPetProfile(HashMap<String, Object> map);

}
