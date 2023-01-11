package petpple.kiwi.member.repository.pet;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.pet.Pet;

@Mapper
public interface IPetManage {
	public int insertPet(Pet dto);
}
