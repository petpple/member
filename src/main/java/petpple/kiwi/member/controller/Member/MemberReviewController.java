package petpple.kiwi.member.controller.Member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import petpple.kiwi.member.domain.member.Member;
import petpple.kiwi.member.domain.review.Review;
import petpple.kiwi.member.repository.review.IReview;
import petpple.kiwi.member.service.member.ImgUpload;

@Controller
public class MemberReviewController {

	@Autowired
	private SqlSession sqlSession;
	
	// 의뢰인 시터 후기 등록 폼
	@RequestMapping(value = "/member/memberReviewForm")
	public String memberReviewForm(Model model, @RequestParam(value = "serviceType") int serviceType, @RequestParam(value = "resId") String resId, HttpServletRequest request)
	{
		IReview dao = sqlSession.getMapper(IReview.class);
		
		HttpSession session = request.getSession();
		
		String temId = (String)session.getAttribute("temId");
		
		//Member dto = new Member();
		
		if (serviceType == 1) {
			Member vservicePetsitterInfo = dao.vservicePetsitterInfo(resId);
			model.addAttribute("petsitterInfo", vservicePetsitterInfo);
			model.addAttribute("serviceType", serviceType);
		}
		
		else if (serviceType == 2) {
			Member fservicePetsitterInfo = dao.fservicePetsitterInfo(resId);
			model.addAttribute("petsitterInfo", fservicePetsitterInfo);
			model.addAttribute("serviceType", serviceType);
		}
		
		System.out.println(serviceType);
		return "member/memberReviewForm";
	}
	
	@RequestMapping(value = "/member/memberReviewInsert")
	public String memberReviewInsert(Review dto, @RequestParam("serviceType") int serviceType, @RequestParam("resId") String resId
			, @RequestParam(value = "file") MultipartFile[] file, HttpServletRequest request)
	{
		IReview dao = sqlSession.getMapper(IReview.class);
		
		String path = "C:\\Petpple\\member\\src\\main\\resources\\static\\images\\member\\review\\"; 
		String path2 = "C:\\Petpple\\sitter\\src\\main\\resources\\static\\images\\member\\review\\";
		
		dto.setResId(resId);
		
		// 세션값 얻어오기 
		HttpSession session = request.getSession();
		String temId = (String)session.getAttribute("temId");
		
		/*
		 * dto.setRevImg1("\\images\\member\\revImg\\"+revImg.get(0));
		 * dto.setRevImg2("\\images\\member\\revImg\\"+revImg.get(1));
		 * dto.setRevImg3("\\images\\member\\revImg\\"+revImg.get(2));
		 */
		// 방문서비스
	    if (serviceType == 1) {
	    	String reviewFile = "V" + resId + temId;
	    	List<String> revImg = new ImgUpload().uploadImages(file, path, path2, reviewFile);
	    	dto.setRevImg1("\\images\\member\\review\\"+revImg.get(0));
	    	dto.setRevImg2("\\images\\member\\review\\"+revImg.get(1));
	    	dto.setRevImg3("\\images\\member\\review\\"+revImg.get(2));
	    	
	    	dao.vReviewInsert(dto);
	    }
	    // 위탁서비스
	    else if (serviceType == 2) {
	    	String reviewFile = "F" + resId + temId;
	    	List<String> revImg = new ImgUpload().uploadImages(file, path, path2, reviewFile);
	    	dto.setRevImg1("\\images\\member\\review\\"+revImg.get(0));
	    	dto.setRevImg2("\\images\\member\\review\\"+revImg.get(1));
	    	dto.setRevImg3("\\images\\member\\review\\"+revImg.get(2));
	     	
	    	dao.fReviewInsert(dto);
	    }
	    
	    // 긴급방문서비스
	    /*
	    else if (serviceType == 3) {
	    
	    	model.addAttribute(attributeValue);
	    
	    	dto.setRevImg1("\\images\\member\\revImg\\"+"uv"+revImg.get(0));
			dto.setRevImg2("\\images\\member\\revImg\\"+"uv"+revImg.get(1));
			dto.setRevImg3("\\images\\member\\revImg\\"+"uv"+revImg.get(2));
			
	    	dao.uvReviewInsert(dto);
		}
	    */
	    // 긴급위탁서비스
	    /*
	    else if (serviceType == 4) {
	    
	    	model.addAttribute(attributeValue);
	    	
	    	dto.setRevImg1("\\images\\member\\revImg\\"+"uf"+revImg.get(0));
			dto.setRevImg2("\\images\\member\\revImg\\"+"uf"+revImg.get(1));
			dto.setRevImg3("\\images\\member\\revImg\\"+"uf"+revImg.get(2));
	    
	    	dao.ufReviewInsert(dto);
		}
		*/
		return "redirect:memberMain";
	}
	
}
