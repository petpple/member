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
	public int waitingAcceptance(String temId);

    // 방문서비스 누적 펫시팅 횟수(펫시팅 정보)
	public int sumPetsitting(String temId);

    // 위탁 서비스
	public int waitingFacceptance(String temId);

	public int sumFpetsitting(String temId);

    // 모든 진행 중인 펫시팅
    public ArrayList<Member> currentPetsitting(String temId);

    // 모든 서비스 이용 확정 대기
    public ArrayList<Member> comfirmWaiting(String temId);

    // 모든 서비스 진행 예정 펫시팅
    public ArrayList<Member> petsittingSchedule(String temId);

    // 누적 펫시팅 리스트
    public ArrayList<Member> sumPetsittingList();
    // 임의 회원코드
	/* public String tempIdsearch(String id); */
    
    // 수락 대기 중인 리스트
    public ArrayList<Member> waitingAcceptanceList(String temId);

    public int insertVConfirm(String resId);
    public int insertFConfirm(String resId);
    public int insertUVConfirm(String resId);
    public int insertUFConfirm(String resId);



}

