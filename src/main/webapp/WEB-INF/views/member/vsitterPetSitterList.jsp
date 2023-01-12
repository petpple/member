<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>vsitterPetSitterList</title>
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

<!-- datepicker -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<!--  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/css/member/fsitter/fsitterMyPet.css">
<link rel="stylesheet" href="/css/member/fsitter/vsitterSvc.css">
<link rel="stylesheet" href="/css/main.css">
<style>
.location_div {
	width: 350px;
	background-color: white !important;
	border-radius: 2px;
	z-index: 100;
	position: absolute;
	top: 70px;
	left: 12px;
}

.loc_detail {
	height: 40px;
	padding: 10px;
	vertical-algin: middle;
}

.loc_detail:hover {
	background-color: #ccc2ba;
}
</style>


<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#startDate")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy/mm/dd",
									minDate : 0, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
										//시작일(startDate) datepicker가 닫힐때
										//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
										$("#endDate").datepicker("option",
												"minDate", selectedDate);
									}

								});
				$("#endDate")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy/mm/dd",
									minDate : 0,
									maxDate : 90, // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
										// 종료일(endDate) datepicker가 닫힐때
										// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
										$("#startDate").datepicker("option",
												"maxDate", selectedDate);
									}

								});

				$(".location_div").css('display', 'none');
				$("#location").change(function() {
					$(".location_div").css('display', 'inline');
				});

				$(".loc_detail").click(function() {
					$("#location").val($(this).children('span').text());
					$(".location_div").css('display', 'none');
				})

			});
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
			<div class="row justify-content-center">
				<form class="form">
					<h3 class="h_font">방문 펫시터 찾기</h3>
					<div class="row box_miInfo">
						<div class="col-md-6 inline" style="position: relative; ">
							<label for="location" class="form-label h2_font" style="margin-top:17px;">어디를 기준으로
								찾을까요?</label> <input type="text" class="form-control shadow-sm"
								id="location" style="width: 350px;margin-top:15px"
								placeholder="동/면/리 검색 ex)논현동">
							<div class="shadow-sm location_div" id="test">
								<div class="loc_detail">
									<span id="loc1">서울특별시 강서구 화곡동</span><br>
								</div>
								<div class="loc_detail">
									<span>서울특별시 강서구 화곡1동</span><br>
								</div>
								<div class="loc_detail">
									<span>서울특별시 강서구 화곡2동</span><br>
								</div>
								<div class="loc_detail">
									<span>서울특별시 강서구 화곡3동</span><br>
								</div>
							</div>
						</div>
						<div class="col-md-6 inline">
							<div class="row">
								<div>
									<label for="location" class="col-auto form-label h2_font"
										style="margin-left: -15px">날짜는 언제를 원하시나요?</label>
								</div>
								<input type="text" class="col-auto form-control shadow-sm"
									id="startDate" style="width: 200px;"> <span
									class="col-auto">~ </span> <input type="text"
									class="col-auto form-control shadow-sm" id="endDate"
									style="width: 200px;">

								<button type="submit" class="col-auto btn btn-primary shadow-sm"
									style="margin-left: 30px;">조회</button>
							</div>
						</div>
					</div>
				</form>
				<div class="border-bottom shadow"
					style="height: 2px; margin-top: 50px; margin-bottom: 50px;">
				</div>

				<div class="row">
					<div class="col-auto">
						<div class="sitterList"
							style="width: 370px; height: 225px; padding-top: 20px;">
							<div class="sitterImg">
								<!-- carousel 시작 -->
								<img src="/images/user/suprise.jpg"><br> <span
									class="mb_font" style="margin-top: 10px;">잘까</span>
							</div>
							<!--sitter IMg  -->
							<a href="#" class="sitterAtag">

								<div class="locAndTitleDiv">
									<p
										style="font-size: 14px; letter-spacing: -0.1px; color: rgb(94, 99, 109);">서울
										강남구 청담동</p>
									<p
										style="font-size: 20px; letter-spacing: -0.2px; color: rgb(56, 60, 72); margin-top: 9.5px;">한강산책
										프리미엄 펫시터🐶</p>
								</div>
								<div class="underDiv">
									<div class="underTitle">
										<p
											style="color: rgb(56, 60, 72); font-size: 13px; letter-spacing: -0.3px; max-width: 400px;">
											· 흡연 안함 · 반려동물 있어요</p>
										<div
											style="display: flex; align-items: center; flex-direction: row; margin-bottom: 80px;">
											<div
												style="width: 140px; display: flex; flex-direction: row; justify-content: space-between;">
												<div class="starImg"
													style="display: flex; flex: 1 1 0%; justify-content: space-between;">
													<img src="/images/member/pngwing.com.png"> <img
														src="/images/member/pngwing.com.png"> <img
														src="/images/member/pngwing.com.png"> <img
														src="/images/member/pngwing.com.png"> <img
														src="/images/member/pngwing.com.png">
												</div>


											</div>
											<div style="displplay: flex; margin-left: 10px;">
												<span class="mb_font">후기 (5)</span>
											</div>
										</div>
									</div>
									<div style="text-align: center; margin-top: 0px;">
										<p style="font-size: 13px; font-weight: bold;">등급</p>
										<div class="gradeImg">
											<img src="/images/member/다운로드.jfif">
											<!--등급 image  -->
										</div>
									</div>

								</div>
							</a>
						</div>
				</div>
				

				<div style="margin-top: 20px;">
					<button class="btn btn-light" style="width: 100%">더보기</button>
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
	<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
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