package petpple.kiwi.member.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import petpple.kiwi.member.domain.member.Member;
import petpple.kiwi.member.repository.member.MemberMapper;

@Service
public class MemberService {

	MemberMapper memberMapper;

	public MemberService(MemberMapper memberMapper)
	{
		this.memberMapper = memberMapper;
	}

	public List<Member> getMemberList()
	{
		return memberMapper.getMemberList();
	}

	public Member getMember(int id) {
        return memberMapper.getMember(id);
    }

    public int createMember(Member member) {
        return memberMapper.createMember(member);
    }

    public int updateMember(Member member) {
        return memberMapper.updateMember(member);
    }

    public int deleteMember(int id) {
        return memberMapper.deleteMember(id);
    }


//    public int applyMember(Member member) {
//    	return memberMapper.applyMember(member);
//    }
}
