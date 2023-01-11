package petpple.kiwi.member.service.member;

import java.io.File;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;



@Service
public class ImgUpload {
	
	public void uploadProfileImg(MultipartFile uploadFile)
    {
    	String uploadFolder = "C:\\Users\\A\\Downloads\\imgae";
    	int num=0;
    	
    		File savefile = new File(uploadFolder,String.valueOf(++num)+".png");
    		
    		try {
    			uploadFile.transferTo(savefile);
			} catch (Exception e) {
				System.out.println(e.toString());
			}
    	
    }
}
