<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>sitter-sample</title>
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



<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<link rel="stylesheet" href="/css/member/sitter/sitterDiary.css">
<style type="text/css">
</style>

<script type="text/javascript">
	$(function() {

		$("#startDate").datepicker(
				{
					changeMonth : true,
					changeYear : true,
					dateFormat : "yy-mm-dd",
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월",
							"7월", "8월", "9월", "10월", "11월", "12월" ]
				});

		$("#startDate").val(getOneYearBefore());

		$("#endDate").datepicker(
				{
					changeMonth : true,
					changeYear : true,
					dateFormat : "yy-mm-dd",
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월",
							"7월", "8월", "9월", "10월", "11월", "12월" ]
				});

		$("#endDate").val(getToDay());

		$("#endDate")
				.change(
						function() {

							const regex = /[^0-9]/g;
							if (parseInt($("#startDate").val().replace(regex,
									"")) > parseInt($("#endDate").val()
									.replace(regex, ""))) {
								$("#endDate").val($("#startDate").val());
							}
						});

		$("#startDate")
				.change(
						function() {

							const regex = /[^0-9]/g;
							if (parseInt($("#startDate").val().replace(regex,
									"")) > parseInt($("#endDate").val()
									.replace(regex, ""))) {
								$("#startDate").val($("#endDate").val());
							}
						});

		$("#month1").text(getMonth(5).getMonth() + 1);
		$("#month2").text(getMonth(4).getMonth() + 1);
		$("#month3").text(getMonth(3).getMonth() + 1);
		$("#month4").text(getMonth(2).getMonth() + 1);
		$("#month5").text(getMonth(1).getMonth() + 1);
		$("#month6").text(getMonth(0).getMonth() + 1);

		$("input[name=btnradio]").change(function() {
			$("#startDate").val(getFirstDate(getMonth($(this).val())));
			$("#endDate").val(getEndDate(getMonth($(this).val())));
		});
	});

	function getToDay() {
		var now = new Date();
		var year = now.getFullYear();
		var month = now.getMonth();
		var date = now.getDate();
		if (0 < date < 10) {
			date = + date;
		}

		return year + '-' + month + 1 + '-' + date;
	}

	function getMonth(num) {
		var now = new Date();
		var monthBefore = new Date(now.setMonth(now.getMonth() - num));
		return monthBefore;
	}

	function getFirstDate(input) {
		var year = input.getFullYear();
		var month = input.getMonth();
		var date = input.getDate();
		if (0 < date < 10) {
			date = date;
		}

		return year + '-' + (month + 1) + '-' + '01';
	}

	function getEndDate(input) {
		var year = input.getFullYear();
		var month = input.getMonth();

		var temp = new Date(year, month + 1, 0);

		var date = temp.getDate();

		if (0 < date && date < 10) {
			date = '0' + date;
		}

		return year + '-' + (month + 1) + '-' + date;
	}

	function getOneYearBefore() {
		var now = new Date();
		var oneYearBefore = new Date(now.setFullYear(now.getFullYear() - 1));
		var year = now.getFullYear();
		var month = now.getMonth();
		var date = now.getDate();
		if (0 < date < 10) {
			date = date;
		}

		return year + '-' + month + 1 + '-' + date;
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
			<div class="row justify-content-center">
				<div class="col-lg-2 wow fadeInUp" data-wow-delay="0.2s" id="info">
					<c:import url="http://localhost:8092/member/memberSide"></c:import>
				</div>
				<div class="col-lg-7">
					<div class="IMG1">
						<img src="/images/member/2.svg" class="svgImg1"> <span
							class="font h_font">후기</span>
					</div>
					<ul class="nav nav-tabs">
						<li class="nav-item"><a href="/member/memberReviewPetChoice"
							class="nav-link diary_inactive font_black">작성 가능한 후기</a></li>
						<li class="nav-item"><a href="/member/memberReviewWritten"
							class="nav-link active" style="color: #FE5C17;">작성 한 후기</a></li>
					</ul>
					<div class="box_mi">
						<div class="box_diary">
							<span class="mb_font">월별 조회하기</span> <br>
							<form>
								<div class="" style="display: flex; margin-top: 10px;">
									<div class="btn-group" style="flex: 6;">
										<div class="btn-group" role="group"
											aria-label="Basic radio toggle button group">
											<input type="radio" class="btn-check" name="btnradio"
												id="btnradio1" value="5"> <label
												class="btn  btn-outline-secondary shit " for="btnradio1"
												style=""><span id="month1"></span>월</label> <input
												type="radio" class="btn-check" name="btnradio"
												id="btnradio2" value="4"> <label
												class="btn  btn-outline-secondary shit" for="btnradio2"><span
												id="month2"></span>월</label> <input type="radio" class="btn-check"
												name="btnradio" id="btnradio3" value="3"> <label
												class="btn  btn-outline-secondary shit" for="btnradio3"><span
												id="month3"></span>월</label> <input type="radio" class="btn-check"
												name="btnradio" id="btnradio4" value="2"> <label
												class="btn  btn-outline-secondary shit" for="btnradio4"><span
												id="month4"></span>월</label> <input type="radio" class="btn-check"
												name="btnradio" id="btnradio5" value="1"> <label
												class="btn  btn-outline-secondary shit" for="btnradio5"><span
												id="month5"></span>월</label> <input type="radio" class="btn-check"
												name="btnradio" id="btnradio6" value="0"> <label
												class="btn  btn-outline-secondary shit" for="btnradio6"><span
												id="month6"></span>월</label>
										</div>
									</div>
	
									<div class="" style="flex: 2;">
										<input type="text" class="form-control input_date"
											id="startDate" style="margin-left: -30px;">
									</div>
									<div style="flex: 1; margin-left: -20px; padding: 0px;">
										<span>~</span>
									</div>
									<div class="" style="flex: 2;">
										<input type="text" class="form-control input_date"
											id="endDate" style="margin-left: -40px;">
									</div>
									
									<div class="" style="flex: 1;">
										<button class="btn btn-outline-secondary shit">조회</button>
									</div>
								</div>

							</form>
						</div>



						<div class="my-3 p-3 bg-body rounded shadow-sm">
								<div class="h-divider">
									<div class="shadow"></div>
									<div class="text">
										<span>2022년 12월</span>
									</div>
								</div>
								<div style="padding: 20px;">
									<table class="table"style="text-align:center; vertical-align:middle">
										<tr class="border-bottom">
											<td>
												<div class="petImg">
													<img src="/images/member/IMG_2087-scaled-e1634883900174.jpg">
												</div>
												<span class="mb_font">루카스</span>
											</td>
											<td>
												<span>@강아지</span><br>
												<span>@웰시코기</span>
											</td>
											<td colspan="2">
												<span class="badge font_black"
													style="background-color: rgb(225, 199, 199);
													font-size:13px;">긴급-방문서비스</span>
												<br> <span>2023년 12월 3일</span>
											</td>
											<td>
												<a class="showDiary" href="">후기 보기</a>
											</td>
										
										</tr>
										
										<tr class="border-bottom">
											<td>
												<div class="petImg">
													<img src="/images/member/IMG_2087-scaled-e1634883900174.jpg">
												</div>
												<span class="mb_font">루카스</span>
											</td>
											<td>
												<span>@강아지</span><br>
												<span>@웰시코기</span>
											</td>
											<td colspan="2">
												<span class="badge font_black"
													style="background-color: rgb(225, 199, 199);
													font-size:13px;">긴급-방문서비스</span>
												<br> <span>2023년 12월 2일</span>
											</td>
											<td>
												<a class="showDiary" href="">후기 보기</a>
											</td>
										
										</tr>
										
										<tr class="border-bottom">
											<td>
												<div class="petImg">
													<img src="/images/member/IMG_2087-scaled-e1634883900174.jpg">
												</div>
												<span class="mb_font">루카스</span>
											</td>
											<td>
												<span>@강아지</span><br>
												<span>@웰시코기</span>
											</td>
											<td colspan="2">
												<span class="badge font_black"
													style="background-color: rgb(225, 199, 199);
													font-size:13px;">긴급-방문서비스</span>
												<br> <span>2023년 12월 1일</span>
											</td>
											<td>
												<a class="showDiary" href="">후기 보기</a>
											</td>
										</tr>
									</table>	
								</div> <!-- end of part1  -->
								
								<div class="h-divider">
									<div class="shadow"></div>
									<div class="text">
										<span>2023년 1월</span>
									</div>
								</div>
								<div style="padding: 20px;">
									<table class="table"style="text-align:center; vertical-align:middle">
										<tr class="border-bottom">
											<td>
												<div class="petImg">
													<img src="/images/member/IMG_2087-scaled-e1634883900174.jpg">
												</div>
												<span class="mb_font">루카스</span>
											</td>
											<td>
												<span>@강아지</span><br>
												<span>@웰시코기</span>
											</td>
											<td colspan="2">
												<span class="badge font_black"
													style="background-color: rgb(225, 199, 199);
													font-size:13px;">긴급-방문서비스</span>
												<br> <span>2023년 1월 3일</span>
											</td>
											<td>
												<a class="showDiary" href="">후기 보기</a>
											</td>
										
										</tr>
										
										<tr class="border-bottom">
											<td>
												<div class="petImg">
													<img src="/images/member/IMG_2087-scaled-e1634883900174.jpg">
												</div>
												<span class="mb_font">루카스</span>
											</td>
											<td>
												<span>@강아지</span><br>
												<span>@웰시코기</span>
											</td>
											<td colspan="2">
												<span class="badge font_black"
													style="background-color: rgb(225, 199, 199);
													font-size:13px;">긴급-방문서비스</span>
												<br> <span>2023년 1월 2일</span>
											</td>
											<td>
												<a class="showDiary" href="">후기 보기</a>
											</td>
										
										</tr>
										
										<tr class="border-bottom">
											<td>
												<div class="petImg">
													<img src="/images/member/IMG_2087-scaled-e1634883900174.jpg">
												</div>
												<span class="mb_font">루카스</span>
											</td>
											<td>
												<span>@강아지</span><br>
												<span>@웰시코기</span>
											</td>
											<td colspan="2">
												<span class="badge font_black"
													style="background-color: rgb(225, 199, 199);
													font-size:13px;">긴급-방문서비스</span>
												<br> <span>2023년 1월 1일</span>
											</td>
											<td>
												<a class="showDiary" href="">후기 보기</a>
											</td>
										</tr>
									</table>
								<div>
									<a href=""><button class="btn showMore shadow-sm" >더보기</button></a>
								
								</div>
							</div> <!--end of part2  -->
						</div> <!--흰색영역  -->
					</div> <!--end of box_mi  -->
				</div>
				
				
				
				<div class="col-lg-3 wow fadeInUp" data-wow-delay="0.2s">
					<div id="test">
						<c:import url="http://localhost:8092/member/memberCal"></c:import>
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
	<script src="/javascript/main.js"></script>
</body>

</html>