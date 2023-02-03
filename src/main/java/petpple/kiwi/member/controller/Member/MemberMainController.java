package petpple.kiwi.member.controller.Member;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import petpple.kiwi.member.domain.member.Member;
import petpple.kiwi.member.domain.service.Refund;
import petpple.kiwi.member.domain.visitService.VisitService;
import petpple.kiwi.member.repository.member.ICalendar;
import petpple.kiwi.member.repository.member.MemberMapper;
import petpple.kiwi.member.repository.service.IReservedService;
import petpple.kiwi.member.service.member.Calendar;


@Controller
public class MemberMainController {

    @Autowired
    private SqlSession sqlSession;

    //	-------------- 의뢰인 메인페이지  ------------------
    // 중간 메인 화면
    @RequestMapping(value = "/member/memberMain")
//	public String memberMain(ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp, HttpSession session)
    public String memberMain(Model model, HttpServletRequest request) {
        MemberMapper dao = sqlSession.getMapper(MemberMapper.class);

        HttpSession session = request.getSession();

        String temId = (String) session.getAttribute("temId");

        // 현재 진행중인 펫시팅
        ArrayList<Member> currentPetsitting = dao.currentPetsitting(temId);

        // 서비스 이용 확정 대기
        ArrayList<Member> comfirmWaiting = dao.comfirmWaiting(temId);

        // 서비스 진행 예정 펫시팅
        ArrayList<Member> petsittingSchedule = dao.petsittingSchedule(temId);

        model.addAttribute("currentPetsitting", currentPetsitting);

        model.addAttribute("comfirmWaiting", comfirmWaiting);

        model.addAttribute("petsittingSchedule", petsittingSchedule);

//		System.out.println(memberIng);
//		System.out.println(dao.currentPetsitting());

        return "member/memberMain";
    }

    @RequestMapping(value = "/member/serviceCancel")
    public String serviceCancel(@RequestParam("serviceType") int serviceType, @RequestParam("serviceNo") String serviceNo) {
        IReservedService dao = sqlSession.getMapper(IReservedService.class);
        if (serviceType == 1) { //방문서비스 일 경우
            Refund dto = dao.getVServiceInfo(serviceNo);
            dao.visitServiceCancel(dto);

        } else if (serviceType == 2) {
            Refund dto = dao.getFServiceInfo(serviceNo);
            dao.fosterServiceCancel(dto);
        } else if (serviceType == 3) {
            Refund dto = dao.getUVServiceInfo(serviceNo);
            dao.urgentVServiceCancel(dto);
        } else if (serviceType == 4) {
            Refund dto = dao.getUFServiceInfo(serviceNo);
            dao.urgentFServiceCancel(dto);
        }
        return "redirect:/member/memberMain";
    }

    @RequestMapping(value = "/member/serviceNoshow")
    public String serviceNoshow(@RequestParam("serviceType") int serviceType, @RequestParam("serviceNo") String serviceNo) {
        IReservedService dao = sqlSession.getMapper(IReservedService.class);
        if (serviceType == 1) { //방문서비스 일 경우
            Refund dto = dao.getVServiceInfo(serviceNo);
            dao.visitServiceNoShow(dto);
        } else if (serviceType == 2) {
            Refund dto = dao.getFServiceInfo(serviceNo);
            dao.fosterServiceNoShow(dto);
        } else if (serviceType == 3) {
            Refund dto = dao.getUVServiceInfo(serviceNo);
            dao.uvServiceNoShow(dto);
        } else if (serviceType == 4) {
            Refund dto = dao.getUFServiceInfo(serviceNo);
            dao.ufServiceNoShow(dto);
        }
        return "redirect:/member/memberMain";
    }

    // 오른쪽 달력(일정) 화면 사이드
    @RequestMapping(value = "/member/memberCal")
    public String memberCal(HttpServletRequest request, Model model) {
        ICalendar dao = sqlSession.getMapper(ICalendar.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        HashMap<String, Object> parmeter = new HashMap<>();
        parmeter.put("temId", temId);

        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM");
        String formatedNow = now.format(formatter);
        parmeter.put("targetDate", formatedNow);
        List<String> schedule = new ArrayList<>(dao.getThisMonthSchedule(parmeter));
        if (schedule.size() != 0) {
            List<String> separtedSchedule = new ArrayList<>(new Calendar().seperateSchedule(schedule));
            model.addAttribute("dateList", separtedSchedule);
        } else {
            model.addAttribute("dateList", schedule);
        }
        return "member/memberCal";
    }

    @ResponseBody
    @RequestMapping(value = "/member/otherMonthSchedule", method = RequestMethod.POST)
    public List<String> otherMonthSchedule(HttpServletRequest request, @RequestParam("date") String date) {
        ICalendar dao = sqlSession.getMapper(ICalendar.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        HashMap<String, Object> parmeter = new HashMap<>();
        parmeter.put("temId", temId);
        parmeter.put("targetDate", date);
        List<String> schedule = new ArrayList<>(dao.getThisMonthSchedule(parmeter));
        if (schedule.size() != 0) {
            List<String> separtedSchedule = new ArrayList<>(new Calendar().seperateSchedule(schedule));
            return separtedSchedule;
        } else {
            return schedule;
        }
    }

    @ResponseBody
    @RequestMapping(value = "/member/getDetatilSchedule", method = RequestMethod.POST)
    public ArrayList<Member> getDetatilSchedule(HttpServletRequest request, @RequestParam("date") String date) {
        ICalendar dao = sqlSession.getMapper(ICalendar.class);
        HttpSession session = request.getSession();
        String temId = (String) session.getAttribute("temId");
        HashMap<String, Object> parmeter = new HashMap<>();
        parmeter.put("temId", temId);
        parmeter.put("targetDate", date);
        ArrayList<Member> detailedList = dao.getDetailedSchedule(parmeter);
        return detailedList;
    }


    @RequestMapping(value = "/member/memberSide", method = RequestMethod.GET)
    public String memberSide(Model model, HttpServletRequest request) {
        // IMemberMapper 수정 필요
        MemberMapper dao = sqlSession.getMapper(MemberMapper.class);

//		model.addAttribute("count", dao.getCount());

        HttpSession session = request.getSession();

        String temId = (String) session.getAttribute("temId");


        model.addAttribute("result1", dao.waitingAcceptance(temId));

        model.addAttribute("result2", dao.sumPetsitting());

        model.addAttribute("result3", dao.waitingFacceptance());

        model.addAttribute("result4", dao.sumFpetsitting());


        return "member/memberSide";
    }

}
