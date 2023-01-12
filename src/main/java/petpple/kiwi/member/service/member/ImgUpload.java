package petpple.kiwi.member.service.member;

import java.io.File;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ImgUpload {
	private final String PetProfilePath = "C:\\Petpple\\member\\src\\main\\resources\\static\\images\\member\\pet";

	public String getPetProfilePath() {
		return PetProfilePath;
	}

	// 단일 파일 업로드 저장이름 : tmp_memId + pet +확장자.
	public void uploadProfileImg2(MultipartFile uploadFile,String path) {
		String origin = uploadFile.getOriginalFilename();
		String ext = origin.substring(origin.lastIndexOf("."));
		File savefile = new File(path,ext);
		try {
			uploadFile.transferTo(savefile);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	

	public void uploadProfileImg(MultipartFile uploadFile) {
		int num = 0;

		File savefile = new File(PetProfilePath, String.valueOf(++num));

		try {
			uploadFile.transferTo(savefile);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

	// 복수 파일 업로드
	public void uploadImages(MultipartFile[] uploadFiles) {
		// 업로드 경로
		int num = 0;

		for (MultipartFile multipartFile : uploadFiles) {

			File savefile = new File(PetProfilePath, String.valueOf(++num) + ".png");

			try {
				multipartFile.transferTo(savefile);
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}

	}
}
