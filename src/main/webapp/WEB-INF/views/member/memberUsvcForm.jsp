<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>긴급 요청 서비스 등록 폼</title>
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

	<link rel="stylesheet" href="/css/member/user/uMain.css">


    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
    


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
								
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
							<span class="font h_font">긴급 요청 서비스 등록</span>
						</div>
					<div class="box_mi_t">
					
					
					<span id="remainTime" class="s_font"></span>
					<div class="serv_on">
						<table class="table tab s_font">
		
							<tr>
								<td>
 									<label for="addr" class="form-label">의뢰자님의 주소를 우편번호 찾기 버튼으로 입력해주세요.<span class="sss_font"> * </span></label>
			                     	 <input type="text" id="sample4_postcode" placeholder="우편번호">
									<input type="button" class="btn btn-primary" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
 								</td>
								
							</tr>
							

							<tr>
								<td class="l_font" style="text-align: center;">
									<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
				                    <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
									</div>
				                    
										<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
										<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
										<span id="guide" style="color:#999;display:none"></span>
										<input type="text" id="sample4_detailAddress" placeholder="의뢰자님의 상세 주소를 입력해주세요.">
<!-- 										<input type="text" id="sample4_extraAddress" placeholder="상세 참고 항목"> -->
								
								</td>
								
							</tr>

						
							
							
						
							<tr>
								<td class="l_font " style="text-align: center;">긴급 요청 서비스 일정</td>
							</tr>
							<tr>
								<td>
								
				            <div class ="box_mypi2">
				            <label for="addr" class="form-label">언제 펫시터가 필요한가요? 원하시는 일정을 선택 해 주세요.<span class="sss_font"> * </span></label>
					            <form class=" lg-3 row inline"> 
					            	
					            	<div class="form-group col-lg-3">  
								 		<input type="text"  id="datepicker" class="form-control">
								 	</div> 


									<div class="form-group col-lg-1">  
										&emsp;&emsp;▶
								 	</div>	
						
			
								 	<div class="form-group col-lg-3">  
								 		<input type="text"  id="datepicker2" class="form-control" style="margin-left: -20px;">
								 	</div>	
							           
							            <!-- 체크인 datepicker  -->
										<script type="text/javascript">
											$("#datepicker").datepicker();
										</script>
							            <!-- 체크인 datepicker  -->
										<script type="text/javascript">
											$("#datepicker2").datepicker();
										</script>
							    </form>     
				            <br><br>
				            
				            <span>체크인 시간&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</span><span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;체크아웃 시간</span>
				            <form class=" lg-3 row inline"> 
					            	<div class="form-group col-lg-3">  
								 		<!-- <input type="text"  id="checkIn" class="form-control"> -->
								 			<select class="form-control" name="checkIn" id="checkIn" style="text-align: center;">
								            	<option value="0" selected>--시간 선택--</option>
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

									<div class="form-group col-lg-1">  
										&emsp;&emsp;~
								 	</div>	
								 		
								 	<div class="form-group col-lg-3">  
								 		<!-- <input type="text"  id="checkOut" class="form-control" style="margin-left: -20px;"> -->
								 			<select class="form-control" name="checkOut" id="checkOut" style="margin-left: -20px; text-align: center">
								            	<option value="0" selected>--시간 선택--</option>
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
				            <br><br>
				            </form>
				            </div>
				            	
								
								
								
								</td>
 								
							</tr>
							
							<tr>
								<td class="l_font" style="text-align: center;">제목</td>
							</tr>
							
							<tr>
								<td>
 								
 									<label for="exampleFormControlInput1" class="form-label">긴급 요청 서비스 제목을 입력 해 주세요.<span class="sss_font"> * </span></label>
  									<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="예) 우리 보리 돌봐주실분 급하게 구합니다.">
 								</td>
								
							</tr>

							<tr>
								<td class="l_font" style="text-align: center;">요청사항</td>
							</tr>

							<tr>
								<td>
 									<label for="exampleFormControlTextarea1" class="form-label">펫시터님에게 전달할 요청 서비스 사항을 입력 해 주세요.<span class="sss_font"> * </span></label>
  									<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="예) 밥은 3번, 간식은 1번 주시면됩니다. 목욕은 제가 시킬게요 잘 부탁 드립니다."></textarea>
 								</td>
								
							</tr>

						</table>
						
					<div>
					    <label for="agree"><span> 내 단골들에게 현재 긴급 요청 서비스 등록 알람을 보내겠습니까?</span></label>
						<input type="checkbox" class="form-check-input" id="agree" name="agree" />					  
					</div><br>
					
						
					</div>
				</div>
				<br>
            	
            	<div role="group" aria-label="Basic example" class="text-center">
						<button type="submit" class="btn btn-primary">결제하기</button>
						<button type="reset" class="btn btn-secondary">취소</button>
				</div>
				
						
				</div>
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