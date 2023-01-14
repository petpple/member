<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>user-sample</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/library/animate/animate.min.css" rel="stylesheet">
<link href="/library/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="/css/main.css"> -->

<link rel="stylesheet" href="/css/user/uMain.css">
<link rel="stylesheet" href="/css/user/userSignUp.css">

<!-- 다음 우편번호 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 카카오 맵 API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c915512875915ad91cd2c322fa7c851b&libraries=services"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<style type="text/css">

	#result,#nameResult {color: red; }
	
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

</style>


<script>

	    function DaumPostcode() {
		
	        new daum.Postcode({
	            oncomplete: function(data) {
	            	
	             	var code = data.zonecode; // 우편번호
	                var addr = ''; // 기본주소
	                var addrjibun = ''; //지번주소
	                var extraAddr = ''; // 참고항목
	                var geocoder = new kakao.maps.services.Geocoder();
	                
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                
	                if (data.userSelectedType === 'R') 
	                { // 사용자가 도로명 주소를 선택했을 경우 - 지번주소 return 되지 않음
	                    addr = data.roadAddress;
	                	
	                  // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                     if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                         extraAddr += '(' + data.bname + ') ';
	                     }
	                     // 건물명이 있고, 공동주택일 경우 추가한다.
	                     if(data.buildingName !== '' || data.apartment === 'Y'){
	                         extraAddr += '(' + data.buildingName + ')';
	                     } 
	                }
	                else
	                { // 사용자가 지번 주소를 선택했을 경우(J)
	                	addr = data.jibunAddress;
	                	addrjibun = data.roadAddress;
	                }
	                
	                // 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('code').value = code;
	                document.getElementById('addr').value = addr + ' ' + extraAddr;
	                
	                
	                // 주소로 상세 정보를 검색
	                geocoder.addressSearch(data.address, function(results, status) {
	                    // 정상적으로 검색이 완료됐으면
	                    if (status === daum.maps.services.Status.OK) {
	
	                        var result = results[0]; 
								
	                        // 해당 주소에 대한 좌표를 받아서
	                        var coords = new daum.maps.LatLng(result.y, result.x);                        
	                       
	                        document.getElementById('lat').value = coords.Ma;
	                        document.getElementById('lng').value = coords.La;
	                        
	                    }
	                });
	                
	            }
	        }).open();
	    }//sample5_execDaumPostcode
	    
	    $(document).ready(function() {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
              $( "#date" ).datepicker({
                   changeMonth: true, 
                   changeYear: true,
                   nextText: '다음 달',
                   prevText: '이전 달', 
                   dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                   dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                   monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                   monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                   dateFormat: "yy/mm/dd",
                   maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                   }  );        
         
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
<script type="text/javascript">

	$(document).ready(function()
	{
		$("#btnCheck").click(function()
		{
// 			alert("확인");
			if ($("#id").val() != "")
			{
// 				아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환받기
		         $.ajax({
		   					
		             type: "POST",
		             url: "/checkId.action",
// 		             data: "id=" + $("#txtid").val(),
		             data: {id:$("#id").val()},
 		             dataType: "json",
		             success: function(result) {
		                 if (result == "0") {
		                     $("#result").html("사용 가능한 아이디입니다.");
		                 } else {
		                     $("#result").html("이미 사용중인 아이디입니다.");
		                 }
		             },
		             error: function(a, b, c) {
		                 console.log(a, b, c);
		             }
		   					
		         });
		   				
		     } else 
		     {
		         alert("아이디를 입력하세요.");
		         $("#id").focus();
		     }
				
		});
		
		$("#nickNameCheck").click(function()
		{
//  		alert("확인");
			if ($("#nickname").val() != "")
			{
//  			아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환받기
		         $.ajax({
		   					
		             type: "POST",
		             url: "/nickName.action",
		             data: {nickName:$("#nickname").val()},
//  		         dataType: "json",
		             success: function(nameResult) {
		                 if (nameResult == "0") {
		                     $("#nameResult").html("사용 가능한 닉네임입니다.");
		                 } else {
		                     $("#nameResult").html("이미 사용중인 닉네임입니다.");
		                 }
		             },
		             error: function(a, b, c) {
		                 console.log(a, b, c);
		             }
		   					
		         });
		   				
		     } else 
		     {
		         alert("닉네임을 입력하세요.");
		         $("#nickname").focus();
		     }
				
		});
		
	})
	
	function check() {
		if($.trim($('#id').val()) == '') 
		{
	        alert("아이디를 입력해주세요.");
	        return false;
	    }
		if($.trim($('#nickname').val()) == '') 
		{
	        alert("닉네임을 입력해주세요.");
	        return false;
	    }
	    if($.trim($('#pw').val()) == '') 
	    {
	        alert("비밀번호를 입력해주세요.");
	        return false;
	    }
	 
	    if(confirm("회원가입을 하시겠습니까?")){
	        alert("회원가입이 완료되었습니다. 감사합니다.");
// 	         $("form").submit(); 
	         return true;
	    }
	    
	}

</script>


</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
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
			<div class="row">
				<div class="col-lg-12">
					<div class="tab_content">
						<div class="conbox">
							<form action="memberinsert.action" method="post" onsubmit="check();" enctype="multipart/form-data">
								<div>
									<h1 class="h_font">회원가입</h1>
								</div>
								<br><br>
								 <div>
          	                    	<div class="h2_font">프로필사진</div>
			                    	<div>
		                               <img src="/images/member/no_Img.png" id="preview1" class="petProfile"/> 
		                              <label for="img_select1" class="input-file-button">사진 첨부</label> 
			                          <input type="file" id="img_select1" name="file" style="display: none;" required="required"/>
									</div>
			                    </div>
								<div>
									<div class="h2_font">아이디</div>
									<div class="row">
										<div class="col-md-6">
											<input type="text" name="id" id="id" class="id_confirm" placeholder="아이디">
										</div>
										<div class="col-md-6">
											<input type="button" name="btnCheck" id="btnCheck" value=" 아이디중복확인"
												class="btn btn-outline-secondary">
										</div>
										<span id="result"></span><br>
										
									</div>
								</div>
								<div>
									<div class="h2_font">닉네임</div>
									<div class="row">
										<div class="col-md-6">
											<input type="text" name="nickname" id="nickname" placeholder="닉네임">
										</div>
										<div class="col-md-6">
											<input type="button" name="nickNameCheck" id="nickNameCheck" value="닉네임중복확인"
												class="btn btn-outline-secondary">
										</div>
									</div>
									<span id="nameResult"></span>
								</div>
										
			                    <div>
			                        <div class="h2_font">비밀번호</div>
			                        <input type="password" name="pw" id="pw" placeholder="비밀번호">
			                    </div>
			                    <div>
			                        <div class="h2_font">비밀번호 재확인</div>
			                        <input type="password" id="pwCheck" placeholder="비밀번호 재확인">
			                    </div>
			                    <div><span class="err">확인</span></div>
		
			                    <div>
			                        <div class="h2_font">이름</div>
			                        <input type="text" name="name" id="name">
			                    </div>
			                    <div >
			                        <div class="h2_font">성별</div>
			                        <input type="radio" name="gender" value="male">남자
			                        <input type="radio" name="gender" value="female">여자
			                        <div><span class="err">확인</span></div>
			                    </div>
			                    <div>
			                        <div class="h2_font">생년월일</div>
			                        <!--달력으로 출력-->
			                        <div>
			                        	<input type="text" class="date" id="date">
			                        </div>
			                    </div>
          	                   
			                    
			                    <div class="row">
			                        <div class="h2_font">주소</div>
			                        <div class="col-md-7">
			                        	<input type="text" name="code" id="code" placeholder="우편번호" readonly="readonly">
			                        </div>
			                        <div class="col-md-5">
			                        	<input type="button" class="btn postCodeBtn btn-outline-secondary" onclick="DaumPostcode()" value="주소찾기">
			                        </div>
									<div>
										<input type="text" name="addr" id="addr" placeholder="주소" readonly="readonly">
										<input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
										<input type="hidden" name="lat" id="lat" readonly="readonly">
										<input type="hidden" name="lng" id="lng" readonly="readonly">
									</div>
			                    </div>
			                    <div>
			                        <div class="h2_font">전화번호</div>
			                        <input type="tel" name="tel" id="tel" maxlength="11" placeholder="'-'빼고 입력해주세요">
			                    </div>
			                    <div>
			                    	<div class="h2_font" style="width: 100%">이메일</div>
			                    	<input type="email" name="email" id="email">
			                    </div>
			                    <div>
			                        <div class="h2_font">주민번호</div>
			                        <div class="row">
			                        	<div class="col-sm-5">
			                        		<input type="text" name="ssn1" id="ssn1" maxlength="6">
			                        	</div>
			                        	<div class="col-sm-1" style="text-align: center;">
			                        		-
			                        	</div>
			                        	<div class="col-sm-6">
			                        		<input type="password" name="ssn2" id="ssn2" maxlength="7">
			                        	</div>
			                        </div>
			                    </div>
			                    <button type="submit" id="SignUpBtn" class="SignUpBtn">가입하기</button>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/library/wow/wow.min.js"></script>
	<script src="/library/easing/easing.min.js"></script>
	<script src="/library/waypoints/waypoints.min.js"></script>
	<script src="/library/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="/javascript/main.js"></script>
</body>

</html>