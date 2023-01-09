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
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="/css/main.css"> -->

<link rel="stylesheet" href="/css/user/uMain.css">

<style type="text/css">

.conbox {
	width:500px;
	height:550px;
	margin:auto;
	box-shadow: 5px 5px 20px 1px rgb(200, 200, 200);
	/* border-radius: 10px; */
	padding: 20px;
	font-size: 13px;
} 

.submitBtn, .signUpBtn, .pSubmitBtn {
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 5px;
	letter-spacing: 2px;
	box-shadow: 0px 5px 10px 0px rgb(200, 200, 200);
	margin-top: 10px;
	margin-bottom: 20px;
}

#err1 {
	color: red;
	display: none;
}

.box {
 height: 1200px;
 box-shadow: 0px 5px 10px 0px rgb(200, 200, 200);
}

</style>

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
					<div class="box">
						<div class="tab_content">
							<div class="conbox">
								<form action="#" method="post">
				                    <div>
				                        <p>아이디</p>
				                        <div class="col-md-6">
				                        	<input type="text" name="id" id="id" placeholder="아이디">
				                        </div>
				                        <div class="col-md-6">
				                        	<input type="button" class="btn" value="ID 중복검사">
				                        </div>
				                    </div>
				                    <div>
				                        <p>닉네임</p>
				                        <div class="col-md-6">
				                        	<input type="text" name="nickName" id="nickName" placeholder="닉네임">
				                        	<input type="button" class="btn" value="닉네임 중복검사">
				                        </div>
				                        
				                    </div>
										<!-- <span class="err">아아</span> -->			
				                    <div>
				                        <p>비밀번호</p>
				                        <input type="password" name="pw" id="pw" placeholder="비밀번호">
				                    </div>
				                    <div>
				                        <p>비밀번호 재확인</p>
				                        <input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 재확인">
				                    </div>
				                    <div>
				                        <p>이름</p>
				                        <input type="text" class="" id="name">
				                    </div>
				                    <div >
				                        <p>성별</p>
				                        <input type="radio" name="gender" id="gender">남자
				                        <input type="radio" name="gender" id="gender">여자
				                    </div>
				                    <div>
				                        <p>생년월일</p>
				                        <!--달력으로 출력-->
				                    </div>
				                    <div>
				                        <p>주소</p>
				                        <input type="text" id="sample4_postcode" placeholder="우편번호">
				                        <input type="button" class="btn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
				                        <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
				                        <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
				                        <input type="text" id="sample4_detailAddress" placeholder="상세주소">
				                        <input type="text" id="sample4_extraAddress" placeholder="참고항목">
				                        <input type="text" name="lat">
				                        <input type="text" name="lng">
				                    </div>
				                    <div>
				                        <p>전화번호</p>
				                        <input type="tel" name="tel1" id="tle1" maxlength="3">-
				                        <input type="tel" name="tle2" id="tle2" maxlength="4">-
				                        <input type="tel" name="tle3" id="tle3" maxlength="4">
				                    </div>
				                    <div>
				                        <p>주민번호</p>
				                        <input type="text" name="ssn1" id="ssn1" maxlength="6">
				                        -
				                        <input type="password" name="ssn2" id="ssn2" maxlength="7">
				                    </div>
				                    <div>
				                         <p>가입경로</p>
				                         <input type="text" name="joinPath" id="joinPath">
				                    </div>
				                </form>
			                </div>
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
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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