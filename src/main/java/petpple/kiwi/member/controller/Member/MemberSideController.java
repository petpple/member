package petpple.kiwi.member.controller.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import petpple.kiwi.member.repository.member.ISide;
import petpple.kiwi.member.repository.member.MemberMapper;
import petpple.kiwi.member.repository.user.IUserMapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
public class MemberSideController {

    @Autowired
    private SqlSession sqlSession;
    @RequestMapping(value = "/member/memberSide", method = RequestMethod.GET)
    public String memberSide(Model model, HttpServletRequest request) {
        // IMemberMapper 수정 필요
        MemberMapper dao = sqlSession.getMapper(MemberMapper.class);

//		model.addAttribute("count", dao.getCount());

        HttpSession session = request.getSession();

        String temId = (String) session.getAttribute("temId");


        model.addAttribute("result1", dao.waitingAcceptance(temId));

        model.addAttribute("result2", dao.sumPetsitting(temId));

        model.addAttribute("result3", dao.waitingFacceptance(temId));

        model.addAttribute("result4", dao.sumFpetsitting(temId));


        return "member/memberSide";
    }
    @RequestMapping(value = "/member/memberInfoVsvcWaiting", method = RequestMethod.GET)
    public String memberInfoVsvcWaiting(Model model, HttpServletRequest request) {
        // IMemberMapper 수정 필요
        ISide dao = sqlSession.getMapper(ISide.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");

        model.addAttribute("list",dao.getVsvcWaitingList(temId));
        return "member/memberInfoVsvcWaiting";
    }

    @RequestMapping(value = "/member/memberInfoVsvcPast", method = RequestMethod.GET)
    public String memberInfoVsvcPast(Model model, HttpServletRequest request, @RequestParam("page") int page) {
        MemberMapper countDao = sqlSession.getMapper(MemberMapper.class);
        ISide dao = sqlSession.getMapper(ISide.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        HashMap<String,Object> map = new HashMap<>();
        map.put("temId",temId);
        map.put("start",(page-1)*5);
        map.put("end",page*5);

        model.addAttribute("page",page);
        model.addAttribute("list",dao.getVsvcPast(map));
        model.addAttribute("count",countDao.sumPetsitting(temId));
        return "member/memberInfoVsvcPast";
    }

    @RequestMapping(value = "/member/memberInfoFsvcWaiting", method = RequestMethod.GET)
    public String memberInfoFsvcWaiting(Model model, HttpServletRequest request) {
        // IMemberMapper 수정 필요
        ISide dao = sqlSession.getMapper(ISide.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");

        model.addAttribute("list",dao.getFsvcWaitingList(temId));
        return "member/memberInfoFsvcWaiting";
    }

    @RequestMapping(value = "/member/memberInfoFsvcPast", method = RequestMethod.GET)
    public String memberInfoFsvcPast(Model model, HttpServletRequest request,@RequestParam("page") int page) {
        MemberMapper countDao = sqlSession.getMapper(MemberMapper.class);
        ISide dao = sqlSession.getMapper(ISide.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        HashMap<String,Object> map = new HashMap<>();
        map.put("temId",temId);
        map.put("start",(page-1)*5);
        map.put("end",page*5);
        model.addAttribute("page",page);
        model.addAttribute("list",dao.getFsvcPast(map));
        model.addAttribute("count",countDao.sumFpetsitting(temId));
        return "member/memberInfoFsvcPast";
    }
}
