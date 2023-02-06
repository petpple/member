package petpple.kiwi.member.repository.member;

import org.apache.ibatis.annotations.Mapper;
import petpple.kiwi.member.domain.member.Member;

import java.util.ArrayList;
import java.util.HashMap;

@Mapper
public interface ISide {
    public ArrayList<Member> getVsvcWaitingList(String temId);
    public ArrayList<Member> getVsvcPast(HashMap<String,Object> map);

    public ArrayList<Member> getFsvcWaitingList(String temId);
    public ArrayList<Member> getFsvcPast(HashMap<String,Object> map);
}
