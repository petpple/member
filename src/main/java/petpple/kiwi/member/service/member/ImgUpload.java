package petpple.kiwi.member.service.member;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ImgUpload {





    // 단일 파일 업로드 저장이름 : id +확장자.
    public String uploadProfileImg(MultipartFile uploadFile, String path, String path2, String name) {
        String origin = uploadFile.getOriginalFilename();
        String ext = origin.substring(origin.lastIndexOf("."));
        File savefile = new File(path, name + ext);
        Path source = Paths.get(path + name + ext);
        Path target = Paths.get(path2 + name + ext);
        try {
            uploadFile.transferTo(savefile);

            Files.copy(source, target, StandardCopyOption.REPLACE_EXISTING);
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return name + ext; //db에 저장될 사진 파일명
    }

    // 복수 파일 업로드
    public List<String>  uploadImages(MultipartFile[] uploadFiles, String sitterPath, String memberPath, String name) {
        // 업로드 경로
        int num = 0;
        List<String> fileNames = new ArrayList<>();
        for (MultipartFile multipartFile : uploadFiles) {
          fileNames.add(uploadProfileImg(multipartFile, sitterPath, memberPath, name + (num++)));
        }
        return fileNames;
    }
}
