package petpple.kiwi.member.controller.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import petpple.kiwi.member.domain.apply.Sitter;
import petpple.kiwi.member.domain.member.Member;
import petpple.kiwi.member.repository.member.ISide;
import petpple.kiwi.member.repository.member.MemberMapper;
import petpple.kiwi.member.repository.service.IReservedService;
import petpple.kiwi.member.repository.user.IUserMapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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

        model.addAttribute("result5", dao.ingUService(temId));

        model.addAttribute("result6", dao.waitingUService(temId));

        model.addAttribute("result7", dao.pastUService(temId));

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
    @RequestMapping(value = "/member/memberInfoUsvcWaiting", method = RequestMethod.GET)
    public String memberInfoUsvcWaiting(Model model, HttpServletRequest request) {
        ISide dao = sqlSession.getMapper(ISide.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        Map<String, ArrayList<Sitter>> map = new HashMap<>();
        ArrayList<Member> list = dao.getUsvcWaitingList(temId);
        for (Member svc:list) {
            String svcType = svc.getServiceType();
            String svcId = svc.getServiceId();
            if(svcType.equals("a")){
                map.put(svcType+svcId,dao.getUsvcApplyList(svcId));
            }
        }
        model.addAttribute("list",list);
        model.addAllAttributes(map);
        return "member/memberInfoUsvcWaiting";
    }
    @RequestMapping(value = "/member/acceptUsvc", method = RequestMethod.GET)
    public String acceptUsvc(@RequestParam("id") String id,@RequestParam("serviceType") String serviceType
                        ,@RequestParam("svcId") String svcId) {
        IReservedService dao = sqlSession.getMapper(IReservedService.class);
        HashMap<String,Object> map = new HashMap<>();
        map.put("id",id);
        map.put("svcId",svcId);
        if(serviceType.equals("a"))
        {
            dao.acceptUVsvc(map);
        }
        return "redirect:/member/memberMain";
    }

    @RequestMapping(value = "/member/memberInfoUsvcIng", method = RequestMethod.GET)
    public String memberInfoUsvcIng(Model model, HttpServletRequest request) {
        ISide dao = sqlSession.getMapper(ISide.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        model.addAttribute("list",dao.getUsvcIngList(temId));
        return "member/memberInfoUsvcIng";
    }

    @RequestMapping(value = "/member/memberInfoUsvcPast", method = RequestMethod.GET)
    public String memberInfoUsvcPast(Model model, HttpServletRequest request,@RequestParam("page") int page) {
        MemberMapper countDao = sqlSession.getMapper(MemberMapper.class);
        ISide dao = sqlSession.getMapper(ISide.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        HashMap<String,Object> map = new HashMap<>();
        map.put("temId",temId);
        map.put("start",(page-1)*5);
        map.put("end",page*5);
        model.addAttribute("page",page);
        model.addAttribute("list",dao.getUsvcPast(map));
        model.addAttribute("count",countDao.pastUService(temId));
        return "member/memberInfoUsvcPast";
    }
}
