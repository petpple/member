package petpple.kiwi.member.repository.pet;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.pet.Pet;

@Mapper
public interface IPetManage {
	public int insertPet(Pet dto);
	
	public ArrayList<Pet> getPet();
	
	public int updatePet(Pet dto);
	
	public int deletePet(int id);
}
