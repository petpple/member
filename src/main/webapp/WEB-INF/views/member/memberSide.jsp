<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>memberSide 펫시팅정보</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

   
    <link rel="stylesheet" href="/css/member/sitter/sitterMain.css">
    

</head>

<body>

	            
	        <div class="IMG1" >
	            <img src="/images/member/pet_info.svg" class="svgImg1">
	            <span class="font h_font">펫시팅 정보</span>
	        </div>
	        <div class ="box_pi">
	            <img src="/images/member/u_svc.svg" class="svgImg2">
	            <span class="font m_font">긴급 요청 서비스</span><br>
	            <a href="memberInfoUsvcIng" class="side_aTag"><span class="font s_font font_black">현재 의뢰중 : <span>${result5 }</span>건</span></a><br>
	            <a href="memberInfoUsvcWaiting" class="side_aTag"><span class="font s_font font_black">수락 대기중 : <span>${result6 }</span>건</span></a><br>
	            <a href="memberInfoUsvcPast?page=1" class="side_aTag"><span class="font s_font font_black">누적 펫시팅 이력 : <span>${result7 }</span>건</span> </a><br>
	        </div><br>
	        <div class ="box_pi">
	            <img src="/images/member/visit_svc.svg" class="svgImg2">
	            <span class="font m_font">방문 서비스</span><br><br>
<!-- 	            <a href="" class="side_aTag"><span class="font s_font font_black">현재 의뢰중 : 1건</span></a><br> -->
	            <a href="memberInfoVsvcWaiting" class="side_aTag"><span class="font s_font font_black">수락 대기중 : <span>${result1 }</span>건</span></a><br>
	            <a href="memberInfoVsvcPast?page=1" class="side_aTag"><span class="font s_font font_black">누적 펫시팅 이력 : <span>${result2 }</span>회</span></a><br>
	        </div><br>
	        <div class ="box_pi">
	            <img src="/images/member/fos_svc.svg" class="svgImg2">
	            <span class="font m_font">위탁 서비스</span><br><br>
<!-- 	            <a href="" class="side_aTag"><span class="font s_font font_black">현재 의뢰중 : 1건</span></a><br> -->
	            <a href="memberInfoFsvcWaiting" class="side_aTag"><span class="font s_font font_black">수락 대기중 : <span>${result3 }</span>건</span></a><br>
	            <a href="memberInfoFsvcPast?page=1" class="side_aTag"><span class="font s_font font_black">누적 펫시팅 이력 : <span>${result4 }</span>회</span></a><br>
	        </div><br>


    
</body>

</html>