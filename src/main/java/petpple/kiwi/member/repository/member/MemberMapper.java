package petpple.kiwi.member.repository.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import petpple.kiwi.member.domain.member.Member;

@Mapper
public interface MemberMapper {
	Member getMember(int id);

    List<Member> getMemberList();
    
    int getCount();

    int createMember(Member member);

    int updateMember(Member member);

    int deleteMember(int id);
    
    int ApplyMember(Member member);
    
    // 펫시팅 현황
	/* int petsittingCurrent(); */
    
    // 방문서비스 수락 대기중(펫시팅 정보)
    int waitingAcceptance();
    
    // 방문서비스 누적 펫시팅 횟수(펫시팅 정보)
    int sumPetsitting();
    
    // 위탁 서비스 
    int waitingFacceptance();
    
    int sumFpetsitting();
    
    // 펫시팅 현황 현재 이력
    List<Member> currentPetsitting();
    
    
    // 임의 회원코드 
    String tempIdsearch(String id);
    
    
}
