<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>memberMyPetInsert</title>
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
    
    <link rel="stylesheet" href="/css/member/fsitter/fsitterMyPetInsert.css">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    
    <!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/css/main.css">
<style type="text/css">
	.input-file-button{
  padding: 6px 25px;
  background-color:#FE5C17;
  border-radius: 4px;
  color: white;
  cursor: pointer;
  margin-top : 10px;
  margin-left:50px;
  }
  
  .petProfile {
   width:150px;
   height:150px;
   object-fit: cover;
   border-radius:30px;
   margin-bottom: 30px;
   border: 2px solid #fffff;
  }
}

</style>
    
<script type="text/javascript">
$(document).ready(function () {
    $.datepicker.monthpicker = {
    	maxDate: 0,
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
      
      
      $(function() { // 파일 업로드
    	    $('#img_select1').change(function() {
    	       setImageFromFile(this, '#preview1');
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
});



</script>
    
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
                <div class="col-lg-7">
		        	
		        	<span class="font h_font">내 펫 추가</span>
		        	<div class="box_miInfo">
		        	
		       			<div class="form-inline">
		       				<form action="/member/petInsert" method="post" enctype="multipart/form-data">
		       				
							<div class="form-group">

								<div class="size_fix">
                              <!-- <img src="/images/sitter/no_img.png" id="preview1" style="width: 100px; height=100px; object-fit: cover;"/> --> 
                              <label for="img_select1" class="input-file-button">사진 첨부</label> 
	                          <input type="file" id="img_select1" name="file" style="display: none;" />
		       		
						<!-- <label for="photo">사진 등록</label><br>
							<input type="file" class="real-upload" accept="image/*" required multiple> -->
						</div>
								<label for="d_or_cat_id">종류</label><br>

						<!--<div>
	                               <img src="/images/member/no_Img.png" id="preview1" class="petProfile"/> 
	                              <label for="img_select1" class="input-file-button">사진 첨부</label> 
		                          <input type="file" id="img_select1" name="file" style="display: none;" required="required"/>
								</div>
								<label for="kinds">종류</label><br>-->

							 	<div class="radio">
							 		<label>
								    	<input type="radio" name="d_or_cat_id" id="d_or_cat_id" value="1">
								    	강아지&emsp;&emsp;&emsp;
								 	</label>
								 	<label>
								 		<input type="radio" name="d_or_cat_id" id="d_or_cat_id" value="2">
								    	고양이
								    </label>	
								</div>
								<br><br>
								
								<label for="name">이름</label><br>
								<label>
							   	<input type="text" class="form-control" name="name" id="name" placeholder="예) 댕댕이">
							 	</label>
							 	<br><br>
							 	
							 	<label for="gender">성별</label><br>
							 	<div class="radio">
							 		<label>
								    	<input type="radio" name="gender" id="gender" value="1">
								    	남&emsp;&emsp;&emsp;&emsp;&emsp;
								    </label>
								    <label>
								    	<input type="radio" name="gender" id="gender" value="2">
								    	여
								    </label>	
								</div>
								<br><br>
								
								<!-- 종류에서 강아지 고르면 이게 나오게 해야함 -->
								<label for="dog">강아지 품종</label><br>
									<label>
							   		<select class="form-select" name="kind" style="text-align: center;">
										  <option selected>-- 강아지 품종 --</option>
										  <option value="1">시베리아허스키</option>
										  <option value="2">푸들</option>
										  <option value="3">셰퍼드</option>
										  <option value="4">알래스칸 맬러뮤트</option>
										  <option value="5">도베르만</option>
										  <option value="6">리트리버</option>
										  <option value="7">베들링턴 테이러</option>
										  <option value="8">그레이 하운드</option>
										  <option value="9">웰시코기</option>
										  <option value="10">사모예드</option>
										  <option value="11">시바이누</option>
										  <option value="12">스피츠</option>
										  <option value="13">슈나우저</option>
										  <option value="14">비숑프리제</option>
										  <option value="15">시츄</option>
										  <option value="16">잭 러셀 테리어</option>
										  <option value="17">포메라니안</option>
										  <option value="18">미니어처 핀셔</option>
										  <option value="19">파피용</option>
										  <option value="20">요크셔 테리어</option>
										  <option value="21">말티즈</option>
										  <option value="22">닥스훈트</option>
										  <option value="23">치와와</option>
										  <option value="24">퍼그</option>
										  <option value="25">프렌치불독</option>
										  <option value="26">꼬똥 드 툴레아</option>
										  <option value="40">기타</option>
									</select>
									</label>
							 	<br><br>
							 	<!-- 종류에서 고양이 고르면 이게 나오게 해야함 -->
							 	<label for="cat">고양이 품종</label><br>
									<label>
							   		<select class="form-select" name="" style="text-align: center;">
										  <option selected>-- 고양이 품종 --</option>
										  <option value="27">페르시안고양이</option>
										  <option value="28">러시안블루</option>
										  <option value="29">아메리칸숏헤어</option>
										  <option value="30">브리티쉬숏헤어</option>
										  <option value="31">벵갈</option>
										  <option value="32">아비시니안</option>
										  <option value="33">스코티시폴드</option>
										  <option value="34">스핑크스</option>
										  <option value="35">소말리</option>
										  <option value="36">먼치킨</option>
										  <option value="37">랙돌</option>
										  <option value="38">터키쉬앙고라</option>
										  <option value="39">노르웨이 숲</option>
										  <option value="41">기타</option>
									</select>
								</label>
							 	<br><br>
							 	
							 	<label for="datepicker">생년월일</label><br>
							 		<label>
							 		<input type="text"  id="datepicker" name="birthday"class="form-control">
							 		</label>
								 	<!-- 생년월일 datepicker  -->
									<script type="text/javascript">
										$("#datepicker").datepicker();
									</script>
									<br><br>
							 	
							 	<label for="weight">몸무게</label><br>
							 	<label>
							   	<input type="text" class="form-control" id="weight" name="weight" placeholder="예) 2.8">
							 	</label>
							 	
							 	<br><br>
							 	
							 	<label for="g_id">중성화</label><br>
							 	<div class="radio">
							 		<label>
									    <input type="radio" name="g_id" id="g_id" value="1">
									    예&emsp;&emsp;&emsp;&emsp;&emsp;
									</label>
									<label>    
								    	<input type="radio" name="g_id" id="g_id" value="2">
								   	 	아니요
								   	</label>
								</div>
								<br><br>
								
		        			</div>
						
						
						
						<div class="form">
							<label for="floatingTextarea2">기타 참고사항</label><br>
								<textarea class="form-control" placeholder="위 질문 외에도 주의해야 할 점이나 참고 해야할 특이사항이 있다면 300자 이내로 작성해주세요." name="comment" id="floatingTextarea2" style="height: 100px"></textarea>
								<br>
							
								<div class="col text-center">
				                    <button type="submit" class="but btn" style="background-color: #FE5C17; color: white;"
				                   >추가하기</button>
				                </div> 
		                </div><!-- <div class="form-floating"> -->	
		                </form>
		                </div>
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
   <!--  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>