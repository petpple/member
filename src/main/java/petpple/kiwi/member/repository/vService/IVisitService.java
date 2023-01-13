package petpple.kiwi.member.repository.vService;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import petpple.kiwi.member.domain.apply.Sitter;

@Mapper
public interface IVisitService {
	public ArrayList<Sitter> getVSitterList(@Param("start") int start,@Param("end") int end);
}
