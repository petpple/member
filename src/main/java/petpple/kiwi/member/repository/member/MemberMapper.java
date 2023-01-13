package petpple.kiwi.member.repository.member;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.member.Member;

@Mapper
public interface MemberMapper {
	public Member getMember(int id);

	public List<Member> getMemberList();

	public int getCount();

	public int createMember(Member member);

	public int updateMember(Member member);

	public int deleteMember(int id);

	public int ApplyMember(Member member);

    // 펫시팅 현황
	/* int petsittingCurrent(); */

    // 방문서비스 수락 대기중(펫시팅 정보)
	public int waitingAcceptance();

    // 방문서비스 누적 펫시팅 횟수(펫시팅 정보)
	public int sumPetsitting();

    // 위탁 서비스
	public int waitingFacceptance();

	public int sumFpetsitting();

    // 펫시팅 현황 현재 이력
//	public List<Member> currentPetsitting();
    public ArrayList<Member> currentPetsitting();

    // 임의 회원코드
	public String tempIdsearch(String id);


}
