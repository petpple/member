<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>fsitterMyProfileUpdate</title>
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
                    <div class="IMG1" >
						<img src="/images/fsitter/2.svg" class="svgImg2">
						<span class="font h_font">수정하기</span>
			       	</div>
       	
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
										
											<label
	                               			  for="img_select1" class="input-file-button" style="margin-left: -8px; ">사진 첨부</label> 
	                                		 <input type="file" id="img_select1" style="display: none;" />
																	 	
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
						<!-- 수정 필요 -->
						<div class="col text-center">
		                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white;"
		                    onclick="location.href='http://localhost:8093/fsitter/fsitterMyProfileUpdate'">수정하기</button><!-- 주소는 추후 수정예정 -->
		                </div>
		                <br>
		                
		               
		                
					</div>
					
					<!-- 오른쪽 바 -->
					
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