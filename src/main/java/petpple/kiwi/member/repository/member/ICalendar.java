package petpple.kiwi.member.repository.member;

import org.apache.ibatis.annotations.Mapper;
import petpple.kiwi.member.domain.member.Member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Mapper
public interface ICalendar {
    public List<String> getThisMonthSchedule(HashMap<String,Object> map);
    public List<String> getOtherMonthSchedule(String temId);

    public ArrayList<Member> getDetailedSchedule(HashMap<String,Object> map);
}
