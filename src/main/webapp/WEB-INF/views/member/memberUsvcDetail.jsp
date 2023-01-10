<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>긴급 요청 서비스 등록 상세내역</title>
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
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    
    <link rel="stylesheet" href="/css/member/sitter/sitterMain.css">
	<link rel="stylesheet" href="/css/member/user/userLoginForm.css">
    
<!--     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

	<!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">



    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
    

<script type="text/javascript">
$(document).ready(function () {
    $.datepicker.monthpicker = {
    	minDate: 0,
    	maxDate: 90,
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
        dateFormat: 'yy-mm-dd',          
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


</script> 
    
<style type="text/css">

	.box_mi_t {
	background-color: rgba(251, 238, 231, 0.636);
	border: 1px solid rgba(227, 226, 226, 0.913);
	box-shadow: 1px 1px 1px rgb(222, 214, 214);
	border-radius: 4px;
	padding: 5px;
	margin-bottom: 20px;
}
	.btn {
	background-color: #FE5C17;
	color: white;
	text-align: center;
}

	.btn-reset {
	background-color: #cccccc;
	color: white;
	text-align: center;
}
.sss_font{
	font-size:13px;
	color: #FF8C5B;
}

</style>
</head>

<body>
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
            
            		<div class="row">
						<div class="col-lg-2" id="info">
							<c:import url="http://localhost:8092/member/memberSide"></c:import>
					</div>
            
            		<div class="col-lg-9">
						<div class="IMG1">
							<img src="/images/member/sitting_on.svg" class="svgImg1"> 
							<span class="font h_font">긴급 요청 서비스 등록 내역</span>
						</div>
					<div class="box_mi_t">
					
					
					<span id="remainTime" class="s_font"></span>
					<div class="serv_on">
<!-- 						<p class="l_font">긴급 요청 서비스 신청 내용을 확인해주세요.</p> -->
							<table class="table tab s_font">
							
								<tr>
									<td class="l_font" style="text-align: center;">주소</td>
								</tr>
								<tr>
									<td><p class="l_font">마포구 월드컵북로</p></td>
									
								</tr>
							
								
							
							
								<tr>
									<td class="l_font " style="text-align: center;">긴급 요청 서비스 일정</td>
								</tr>
								<tr>
									<td class="l_font">
										
										<span class="mb_font">시작일자: </span><span class="m_font" id="uSvcStart">2022-12-12 10:00</span><br>
										<br> 
										<span class="mb_font">종료일자: </span><span class="m_font" id="uSvcEnd">2022-12-12 10:00</span><br>
										 
									
									</td>
									
								</tr>
								
								
								<tr>
									<td class="l_font " style="text-align: center;">제목</td>
								</tr>
								<tr>
									<td class="l_font"><p id="content">우리댕댕이 급하게 봐 주실분 구합니다!</p></p></td>
									
								</tr>
								
								<tr>
									<td class="l_font" style="text-align: center;">요청사항</td>
								</tr>
								<tr>
									<td class="l_font"><p id="detail">콩이가 지금 체중 조절 중이라 12시 17시 이렇게 나눠서 밥 주시면 감사하겠습니다.  그릇의 3분의 1만큼만 채워주시면 됩니다.
	장난감은 깃털 달린 걸 가장 좋아하니깐 한번에 20분 정도 놀아 주시면 감사해요 하루에 3번정도 놀아 주시면 될것 같아요~
	깡이는 산책 한시간 정도 해주시면 됩니다</p></td>
									
								</tr>
							
								<tr>
									<td class="l_font" style="text-align: center;">결제 금액</td>
								</tr>

								<tr>
									<td class="l_font"><p id="total">333,323<span> 원</span></p></td>
								</tr>
							</table>
		
								
							</div>
						</div>
						<br>
						
						<div class="text-center">
								<button type="submit" class="btn btn-success" onclick="history.back();">확인</button>
						</div>
								
					</div>
				</div>
				<br>
            	
            	
	
						
			
				</div><!-- col-lg-7 -->
            </div><!-- row justify-content-center -->
        </div><!-- .container -->
    </div><!-- .container-xxl py-5 wow fadeInUp -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    
</body>

</html>