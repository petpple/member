package petpple.kiwi.member.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.Member;

@Mapper
public interface MemberMapper {
	Member getMember(int id);

    List<Member> getMemberList();

    int createMember(Member member);

    int updateMember(Member member);

    int deleteMember(int id);
}
