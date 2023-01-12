<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>fsitterMyProfile</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/library/animate/animate.min.css" rel="stylesheet">
    <link href="/library/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    
    <link rel="stylesheet" href="/css/fsitter/fsitterMyProfile.css">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    
    <!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/css/fsitter/fsitterMyPet.css">
	<link rel="stylesheet" href="/css/main.css">
    
    
   

<script type="text/javascript">
$(document).ready(function () {
    $.datepicker.monthpicker = {
    	minDate: 0,
        closeText: '닫기',
        nextText : '다음 달',
        prevText : '이전 달',
        currentText : "오늘",
        changeMonth : true,
        changeYear : true,
        monthNames : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNamesShort : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
        dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
        weekHeader : "주",
        firstDay : 0,
        isRTL : false,
        showMonthAfterYear : true,
        yearSuffix : "년",
        showOn: 'both',
        // buttonText: "달력",
        showButtonPanel: false,
        dateFormat: 'yy/mm/dd',          
        yearRange: "-10:+0",
};
      
$.datepicker.setDefaults($.datepicker.monthpicker);

      var datepicker_default = {
          showOn: 'both',
          buttonText: "달력",
          currentText: "이번달",
          changeMonth: true,
          changeYear: true,
          showButtonPanel: true,
          yearRange: 'c-99:c+99',
          showOtherMonths: true,
          selectOtherMonths: true
      }
      datepicker_default.closeText = "선택";
      datepicker_default.dateFormat = "yy-mm-dd";
      datepicker_default.onClose = function (dateText, inst) {
          var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
          var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
          var day = $("#ui-datepicker-div .ui-datepicker-day :selected").val();
          $(this).datepicker("option", "defaultDate", new Date(year, month, 1));
          $(this).datepicker('setDate', new Date(year, month, 1));
      }
      datepicker_default.beforeShow = function () {
          var selectDate = $("#sdate").val().split("-");
          var year = Number(selectDate[0]);
          var month = Number(selectDate[1]) - 1;
          var day = Number(selectDate[0]);
          $(this).datepicker("option", "defaultDate", new Date(year, month, 1));
      }
      $(".month_picker").datepicker(datepicker_default);
});

$(function() { // 파일 업로드
    $('#img_select1').change(function() {
       setImageFromFile(this, '#preview1');
    });
    $('#img_select2').change(function() {
       setImageFromFile(this, '#preview2');
    });
    $('#img_select3').change(function() {
       setImageFromFile(this, '#preview3');
    });
 });
 //파일 업로드
 function setImageFromFile(input, expression) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();

       reader.onload = function(e) {
          $(expression).attr('src', e.target.result);
       }
       reader.readAsDataURL(input.files[0]);
    }
 }
</script>
    
    
<!-- 카카오 맵 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=267276c330ec0b1c55c55bf8f203426d"></script>

<script type="text/javascript">

	function initialize()
	{
		
		//alert("함수 호출 확인");
		container = document.getElementById("map");					
		options =
		{
			center: new kakao.maps.LatLng(37.556556, 126.919550),	
			level: 5,
		};
		
		map = new kakao.maps.Map(container, options);
		
		 circle = new kakao.maps.Circle({
		    center : new kakao.maps.LatLng(37.556556, 126.919550),  // 원의 중심좌표 입니다 
		    radius: 250, // 미터 단위의 원의 반지름입니다 
		    strokeWeight: 2, // 선의 두께입니다 
		    strokeColor: '#75B8FA', // 선의 색깔입니다
		    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'line', // 선의 스타일 입니다
		    fillColor: '#CFE7FF', // 채우기 색깔입니다
		    fillOpacity: 0.7  // 채우기 불투명도 입니다   
		}); 
		 
		 
		// 지도에 원을 표시합니다 
		 circle.setMap(map); 

	}
</script>
    



</head>

<body onload="initialize()">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

	<div>
		<c:import url="header.jsp"></c:import>
	</div>

    <!-- 여기다가 코드 작성 -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <!-- <div class="IMG1" >
						<img src="/images/fsitter/2.svg" class="svgImg2">
						<span class="font h_font">수정하기</span>
			       	</div>
       				 -->
						<div class="box_miMyPr1">
								<!-- <div class="size_fix inline"> -->
	                              <!-- <img src="/images/fsitter/h4.svg" id="preview1" />  -->
									<img src="/images/fsitter/h4.svg" class="svgImg3" id="preview1">
									<!--  <div class="form-group m_font" id="MyPro1"> -->
									 	<div class="lg-3 row"> 
										     <div class="col-lg-5" style="margin-left: -10px;">
										      	<input type="text" class="form-control" id="location" placeholder="서울시 마포구 합정동" >
										     </div>
										     	<label for="location" class="col-lg-2 col-form-label">펫시터</label>
										     <div class="col-lg-3">
										      	<input type="text" class="form-control"  placeholder="다나카" Readonly>
										     </div>
										    	<label for="sitterName3" class="col-lg-2 col-form-label" >님</label>
										    	
										    	<input type="text" class="form-control form-control-lg" id="loc3" placeholder="내 아이를 돌보듯 따뜻하고 편안하게">
										</div><!-- <div class="lg-3 row"> -->
										
											<!-- <label
	                               			  for="img_select1" class="input-file-button" style="margin-left: -8px; ">사진 첨부</label> 
	                                		 <input type="file" id="img_select1" style="display: none;" /> -->
																	 	
								 <!-- </div> -->
								
							<!-- </div> --><!--end <form class="form-inline">-->
						</div><!--end <div class="box_mi">-->
					
						<div class="box_miMyPr2 ">
							<div class="lg-3 row">
							    <div class="col-lg-2">
							      <input type="text" class="form-control"  placeholder="다나카" Readonly>
							    </div>
							    <label for="sitterName2" class="col-lg-5 col-form-label" >펫시터님을 소개합니다.</label>
							</div>
							<br>
							<div>
								<textarea class="form-control m_font" rows="9" placeholder="안녕하세요. 반려동물을 무한히 사랑하는 펫시터 다나카입니다. 지금은 곁에 없지만 17년동안 막내아들처럼 함께했던 반려견을 보내고 그리움과 허전함으로 힘들게 지내다가, 마침내 용기를 내어서 주변에 혼자있게 되는 반려견을 견주님들이 내 집처럼 맡길수 있는 펫시터로서의 일을 시작하게 되었습니다. 반려견들이 더 존중받는 뉴질랜드에서부터 반려견을 키우고, 지인들의 반려견들을 맡아주던 경험도 많습니다. 집 근처에 있는 여러 공원과 반포천은 반려견들이 산책하기에 좋은 환경입니다. 내 아이를 돌보듯 따뜻하고 편안하게, 사랑과 정성으로 최선을 다해 보살펴드리겠습니다."></textarea>
							</div>
						</div><!-- <div class="box_miMyPr2 "> -->
			
						<div class="box_miMyPr3">
							<label for="sitter_name m_font">자격증 및 교육 수료</label>
							<select class="form-control" size="10"  multiple="multiple" id="certificate">
								  <option value="0" selected>-- 자격증 선택 --</option>
								  <option value="1">반려견지도사</option>
								  <option value="2">도그쇼 심사위원</option>
								  <option value="3">핸들러</option>
								  <option value="4">펫시터</option>
								  <option value="5">애견브리더</option>
								  <option value="6">펫그루머</option>
								  <option value="7">반려동물목욕관리사</option>
								  <option value="8">반려동물관리사</option>
								  <option value="9">반려동물행동교정사</option>
								  <option value="10">반려동물산업기술자(동물위탁서비스관리)</option>
								  <option value="12">반려동물산업기술자(동물행동교정)</option>
								  <option value="13">펫케어상담사</option>
								  <option value="14">동물교감사</option>
								  <option value="15">반려동물산업기술자(종합관리)</option>
								  <option value="16">동물보건사</option>
								  <option value="17">펫유치원교원</option>
								  <option value="18">반려동물행동교정사</option>
								  <option value="19">펫매니저</option>
								  <option value="20">펫유치원교원</option>
								  <option value="21">도그워커</option>
								  <option value="22">클리커트레이너</option>
								  <option value="23">반려동물식품관리사</option>
								</select>
						</div><!-- <div class="box_miMyPr3"> -->
						
						<div class="box_miMyPr3">
							<label for="sitter_name m_font">돌봄 가능 펫 크기</label>
							<br><br>
								<div class="radio">
								    <input type="radio" name="petsize" id="petsize" value="1">
								    소형견 (7kg 미만)&emsp;&emsp;&emsp;
								    <input type="radio" name="petsize" id="petsize" value="2">
								    중형견 (7 ~ 14.9kg)&emsp;&emsp;&emsp;
								    <input type="radio" name="petsize" id="petsize" value="3">
								    대형견 (15kg 이상)
							</div>
						</div>
						
						
						
						<br>
						<!-- <div class="col text-center">
		                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white;"
		                    onclick="location.href='http://localhost:8093/fsitter/fsitterMyProfileUpdate'">수정하기</button>주소는 추후 수정예정
		                </div> -->
		                <br>
		                
		                <div class="box_miMyPr5 inline">
		                	<div class="petreview">
		                		<h2 class="petreviewTitle">펫시터 후기 24개</h2>
				                	<div class="petstar">
					                	<img width="18" height="18" src="/static/images/common/star_1.png">
					                	<img width="18" height="18" src="/static/images/common/star_1.png">
					                	<img width="18" height="18" src="/static/images/common/star_1.png">
					                	<img width="18" height="18" src="/static/images/common/star_1.png">
					                	<img width="18" height="18" src="/static/images/common/star_1.png">
				                	</div>
		                	</div>
		                	
		                	
		                	<!-- 후기 사진 부분 -->
		                	<div class="reviewPhoto">
		                		<div class="reviewPhotos">
		                			<img width="139" height="139" src="https://petplanet.cdn.ntruss.com/resized/review/1dc77e2abae74ce9969db0dfd4d723ec.jpg" style="object-fit: cover;">
		                		</div>
		                		<div class="reviewPhotos">
		                			<img width="139" height="139" src="https://petplanet.cdn.ntruss.com/resized/review/4091f1ce922843f288d9e960876c712e.jpg" style="object-fit: cover;">
		                		</div>
		                		<div class="reviewPhotos">
		                			<img width="139" height="139" src="https://petplanet.cdn.ntruss.com/resized/review/83ca435152004627a54514e82e00de53.jpg" style="object-fit: cover;">
		                		</div>
		                		<div class="reviewPhotos">
		                			<img width="139" height="139" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/review/b07039330b2748e9a6b7305117ebd113.jpg" style="object-fit: cover;">
				                		<div style="display: flex; position: absolute; inset: 0px; width: 139px; height: 139px; align-items: center; justify-content: center; background-color: rgba(0, 0, 0, 0.59); border-radius: 3px;">
				                			<p style="font-size: 17px; letter-spacing: 0.5px; line-height: 25px; color: white;">+19</p>
				                		</div>
		                		</div>
	                		</div>
		                	
		                	<div class="line">
		                	
		                	<!-- 사용자 후기 -->
		                	<div class="reviewForm">
		                		<div class="reviewFormTitle">
		                			<img width="50" height="50" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/pet/9ae4c0dc2721462ba04a9047a96e0b9c.jpg" style="object-fit: cover; border-radius: 50%;">
		                				<div class="reviewImgIdDate">
		                					<p class="reviewId">C***************N</p>
		                					<p class="reviewDate">2023년 1월 1일</p>
		                				</div>
		                		</div>
		                		<p class="petHostReview" >태어나 처음으로 떨어져야 하는 울애기
								무려 4일이나 떨어져야해서 걱정이 너무 많았어요 소심하고 낯가리고 덜덜떠는 겁쟁이라 여기저기 알아보다 시터님을 알게되었어요
								사실 맡기고 나서도 너무 걱정되서 그날 밤은 잠을 잘 못잤어요 그런데 써주시는 일지의 사진과 동영상들을 보니 잘지내고 있는게 느껴지더라구요
								저보다 더 밥도 잘 먹여주시는거 같고 추위를 많이 타서 전 산책을 못시켰었는데 품에 안고 산책도 시켜주시고
								저한테만 보여줄 줄 알았던 애교도 부리고 있더라구요😅 사실 그동안 맡길곳이 없어 강아지가 힘들어도 끌고 다녔는데 좋은분 만난 것 같아 너무 든든해졌어요
								너무너무 감사했습니다 다음번에도 잘 부탁드릴께요❤️</p>
								<!-- 이미지 -->
								<div class="petImgs">
									<img class="petImg" src="https://petplanet.cdn.ntruss.com/resized/review/1dc77e2abae74ce9969db0dfd4d723ec.jpg" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
									<img class="petImg" src="https://petplanet.cdn.ntruss.com/resized/review/4091f1ce922843f288d9e960876c712e.jpg" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
									<img class="petImg" src="https://petplanet.cdn.ntruss.com/resized/review/83ca435152004627a54514e82e00de53.jpg" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
								</div>
							</div>
							
							<div class="reviewForm">
								<div class="reviewFormTitle">
									<img width="50" height="50" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/pet/a74f101652134233a3efbabccac2eaea.jpg" style="object-fit: cover; border-radius: 50%;">
										<div class="reviewImgIdDate">
											<p class="reviewId">김*경</p>
											<p class="reviewDate">2022년 12월 11일</p>
										</div>
								</div>
									<p class="petHostReview">1박 2일 동안 밀크를 사랑으로 잘 돌봐주셔서 깊은 감사를 드립니다. 사회성이 부족하여 평소 산책을 잘 못하는데 시터님께서 산책도 시켜주시고 재미있게 놀이도 해 주셨어요. 예쁜 사진과 함께 일지도 자주 올려주셔서 걱정없이 잘 다녀올 수 있었습니다. 
									감사드립니다~~</p>
								<!-- 이미지 -->	
								<div class="petImgs">
									<img class="petImg" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/review/b07039330b2748e9a6b7305117ebd113.jpg" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
									<img class="petImg" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/review/a454b97448cb4216800cfb68ce24bb19.jpg" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
								</div>
							</div>
							
							<div class="reviewForm">
								<div class="reviewFormTitle">
									<img width="50" height="50" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/pet/7c67b3121ae440f7937e9afcd2cf6dc8.jpg" style="object-fit: cover; border-radius: 50%;">
										<div class="reviewImgIdDate"">
											<p class="reviewId">김*희</p>
											<p class="reviewDate">2022년 11월 13일</p>
										</div>
								</div>
								<p class="petHostReview">펫시터님 덕분에 정말 안심하고 다녀왔습니다. 강아지와 떨어져 본 적이 없어서 처음에 너무 걱정했는데, 일지도 꼼꼼히 적어 보내주셨고  다녀왔더니 너무 잘 지내고 있어서 깜짝 놀랐어요. 이틀동안 정말 감사했습니다.</p>
								<div class="petImgs">
									<img width="90" height="90" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/review/0eec0d8deb8b4b30bb40a93e50739dea.jpg" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
									<img width="90" height="90" src="https://d1cd60iwvuzqnn.cloudfront.net/resized/review/97532cf2a8ca40448475fb305c513a7e.jpg" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
								</div>
							</div>
							
							<!-- 아직 정리 안됨 -->
							<!-- <div style="display: flex; align-items: center; justify-content: center; height: 50px; border-radius: 25px; border: 1px solid rgb(129, 137, 155); margin-bottom: 100px; user-select: none; cursor: pointer; margin-top: 12px;">
								<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72);">펫시터 후기 더보기</p>
							</div> -->
							</div>
		                	
		                	
		                </div><!-- <div class="box_miMyPr5 inline"> -->
		                
					</div>
					
					
					
					
					
					
					<!-- 오른쪽 바 -->
					<div class="col-lg-4 row" style="margin-left: 20px; margin-top: 38px;">
				        <div class ="box_mypi2 inline" style="height: auto;">
				            <span>언제 펫시터가 필요한가요?</span>
					           <form class=" lg-3 row inline"> 
					            	<div class="form-group col-lg-5">  
								 		<input type="text"  id="datepicker" class="form-control">
								 	</div> 
								 		<label for="datepicker" class="col-lg-2 col-form-label">-></label>
								 	<div class="form-group col-lg-5">  
								 		<input type="text"  id="datepicker2" class="form-control" style="margin-left: -20px;">
								 	</div>	

							            <!-- 생년월일 datepicker  -->
										<script type="text/javascript">
											$("#datepicker").datepicker();
										</script>
							            <!-- 생년월일 datepicker  -->
										<script type="text/javascript">
											$("#datepicker2").datepicker();
										</script>
							    </form>       
				            <br>
				            
				            <span>체크인 시간&emsp;&emsp;&emsp;&emsp;&emsp;</span><span>&emsp;&emsp;&emsp;체크아웃 시간</span>
				            <form class=" lg-3 row inline"> 
					            	<div class="form-group col-lg-5">  
								 		<!-- <input type="text"  id="checkIn" class="form-control"> -->
								 			<select class="form-control" name="checkIn" style="text-align: center;">
								            	<option value="0" selected>시간 선택</option>
								            	<option value="1">09:00 </option>
								            	<option value="2">10:00 </option>
								            	<option value="3">11:00 </option>
								            	<option value="4">12:00 </option>
								            	<option value="5">13:00 </option>
								            	<option value="6">14:00 </option>
								            	<option value="7">15:00 </option>
								            	<option value="8">16:00 </option>
								            	<option value="9">17:00 </option>
								            	<option value="10">18:00 </option>
								            	<option value="11">19:00 </option>
								            	<option value="12">20:00 </option>
								            	<option value="13">21:00 </option>
								            </select>
								 	</div> 
								 		<label for="datepicker" class="col-lg-2 col-form-label">~</label>
								 	<div class="form-group col-lg-5">  
								 		<!-- <input type="text"  id="checkOut" class="form-control" style="margin-left: -20px;"> -->
								 			<select class="form-control" name="checkOut" style="margin-left: -20px; text-align: center">
								            	<option value="0" selected>시간 선택</option>
								            	<option value="1">09:00 </option>
								            	<option value="2">10:00 </option>
								            	<option value="3">11:00 </option>
								            	<option value="4">12:00 </option>
								            	<option value="5">13:00 </option>
								            	<option value="6">14:00 </option>
								            	<option value="7">15:00 </option>
								            	<option value="8">16:00 </option>
								            	<option value="9">17:00 </option>
								            	<option value="10">18:00 </option>
								            	<option value="11">19:00 </option>
								            	<option value="12">20:00 </option>
								            	<option value="13">21:00 </option>
								            </select>
								 	</div><!-- <div class="form-group col-lg-5">  -->
				            	</form><!-- <form class=" lg-3 row inline"> --> 
				            <br>
				            
				            	<span>맡기시는 반려동물</span>
					            <select class="form-control" style="text-align: center;">
					            	<option value="0" selected>반려동물 선택</option>
					            	<option value="1">바둑이 </option>
					            	<option value="2">똘이 </option>
					            </select>
					            <br><br>
					            
					            <!-- 이부분은 날짜를 선택하고 동물을 고르면 자동으로 계산되어야 하는 부분 -->
					            <span>합계요금</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;	<span>85,000</span><span>원</span>
			        			<br>
			        			<span>─────────────────────</span>
			        			<br>
			        			<span>타임케어 비용</span><span>/소형</span><span>2</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <span>85,000</span><span>원</span>
			        			<br><br>
			        			
			        			<div class="col text-center">
				                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white;"
				                    onclick="location.href='http://localhost:8093/fsitter/fsitterMyProfileUpdate'">예약요청</button><!-- 주소는 추후 수정예정 -->
				                </div>
			        		</div>
			        		
			        		<div class="box_mypi2" style="height: 200px;">돌봄가능 펫 크기
			        		
			        		<br><br>
						 	<div class="radio">
								    <input type="radio" name="petsize" id="petsize" value="1">
								    소형견 (7kg 미만)<br><br>
								    <input type="radio" name="petsize" id="petsize" value="2">
								    중형견 (7 ~ 14.9kg)<br><br>
								    <input type="radio" name="petsize" id="petsize" value="3">
								    대형견 (15kg 이상)
							</div>
			        		</div>
			        		
			        		<div class="box_mypi2" style="height: 460px;">예약 가능 날짜
			        		<br><br>
						 	<div id="test">
								<c:import url="http://localhost:8093/fsitter/fsitterCal"></c:import>
							</div>
			        		</div>
			        		
			        		
			        		
			        		<div class="box_mypi2">
			        		<span>펫시터님 위치</span><br><br>
			        		<!-- <span>서초구 반포동 신반포역에서 도보로 10분</span> -->
			        		<div id="map" style="width: 325px; height: 270px;"></div>
			        		</div>
			        		
			        		<!-- 펫시터 프로필출력할때 사용할 부분 -->
			        		<div class="box_mypi4"style="height: 500px;">
			        		<table class="table">
								<thead>
									<tr>
								    	<th width="20%;" scope="col">요금표</th>
								    	<th scope="col">기본 요금(15,000)</th>
								    	<th scope="col">시간당(2,000)</th>
								    	<th scope="col">일(50,000)</th>
								  	</tr>
								</thead>
								<tbody>
									<tr>
									    <th scope="row">소형견</th>
									    <td></td>
									    <td></td>
									    <td></td>
								  	</tr>
								  	<tr>
									    <th scope="row">중형견</th>
									    <td>+10,000</td>
									    <td></td>
									    <td></td>
								  	</tr>
								  	<tr>
									    <th scope="row">대형견</th>
									    <td>+20,000</td>
									    <td></td>
									    <td></td>
								  	</tr>
								  	<tr>
								  	</tr>
								  	<tr>
								  		<th scope="row" >등급별</th>
								  		<td></td>
								  		<td></td>
								  		<td></td>
								  	</tr>	
								  	
								  	<tr>
								  		<th scope="row">새싹</th>
								  		<td> -5,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	<tr>
								  		<th scope="row">브론즈</th>
								  		<td></td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	<tr>
								  		<th scope="row">실버</th>
								  		<td >+5,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	<tr>
								  		<th scope="row">골드</th>
								  		<td >+10,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								  	
								  	<tr>
								  		<th scope="row">마리당</th>
								  		<td>-10,000</td>
								  		<td></td>
								  		<td>-10,000</td>
								  	</tr>
								  	<tr>
								  		<th scope="row" >긴급</th>
								  		<td >+20,000</td>
								  		<td></td>
								  		<td></td>
								  	</tr>
								</tbody>
							</table>
			        		
			        		</div>
			        </div>
                </div>
            </div>
        </div>
   
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>