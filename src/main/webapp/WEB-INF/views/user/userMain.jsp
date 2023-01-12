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
<link rel="stylesheet" href="/css/user/userMain.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://kit.fontawesome.com/fcbb796457.js"
	crossorigin="anonymous"></script>

<script>
	function clickFunc() {
		swal({
			title : "로그인 회원만 이용 가능합니다.",
			button : "확인",
		});
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
	<span>${sessionScope.temId==null ? "비회원" : "일반회원" }</span>
	<!-- 여기다가 코드 작성 -->
	<div class="container-xxl wow fadeInUp" data-wow-delay="0.2s">
		<div class="container text-center">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="box">
						<div class="text-center img">
							<div class="col-md-12 mContent">
								<h1 class="mainTitle">누구나, 펫시터가 될 수 있는,</h1>
								<h2 class="mainTitle">Kiwi</h2>
								<button class="btn" onclick="clickFunc()">펫시터 지원하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.2s">
		<div class="container text-center">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="box">
						<div class="row serviceInfo">
							<h2 class="mid-title">Service</h2>
							<div class="col-md-4 text-center">
								<img id="img1" src="/images/user/service.jpg" alt="service">
								<h3 class="h2_font">위탁&방문 서비스</h3>
								<p class="m_font">원하시는 서비스를 선택하세요. 선택하신 서비스 예약이 <br>
								완료되면 당일날 해당 서비스를 이용할 수 있어요</p>
								<!-- <p><a class="btn btn-default" role="button" onclick="clickFunc()">예약하기 &raquo;</a></p> -->
							</div>
							<div class="col-md-4 text-center">
								<img id="img2" src="/images/user/suprise.jpg" alt="service">
								<h3 class="h2_font">긴급 서비스</h3>
								<p class="m_font">급하게 반려동물을 맡길 펫시터를 구해야한다면 <br>직접 펫시터 모집글을
									올려보세요.</p>
								<!-- <p><a class="btn btn-default" role="button" onclick="clickFunc()">예약하기 &raquo;</a></p> -->
							</div>
							<div class="col-md-4 text-center">
								<img id="img3" src="/images/user/dir.jpg" alt="service">
								<h2 class="h2_font">돌봄일지</h2>
								<p class="m_font">펫시터에게 돌봄일지를 받아보세요. 돌봄일지를 통해 <Br> 돌봄 상세 내용을 확인하실
									수 있습니다.</p>
								<!-- <p><a class="btn btn-default" role="button" onclick="clickFunc()">전체보기 &raquo;</a></p> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.2s">
			<div class="container text-center">
				<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="box">
							<div class="row dirInfo">
								<div class="row">
									<div class="col-md-5">
										<img id="sitting_img" src="/images/user/pet_sitting1.png"
											alt="sitting_img">
									</div>
									<div class="col-md-7">
										<div class="col mid-title">
											<p class="mid-title" id="dir_title">돌봄일지</p>
											<p class="h2_font">
												<i class="fa-sharp fa-solid fa-gift fa-lg"></i>누적 돌봄 일지
												1,231건<i class="fa-sharp fa-solid fa-gift fa-lg"></i>
											</p>
										</div>
										<div style="text-align: center;">
											<img id="pet_dir" alt="돌봄일지" src="/images/user/캡처.PNG">
										</div>
										<div class="row" style="margin-top: 20px">
											<div class="col-md-5">
												<img alt="" src="/images/user/kiwi2.jpg" width="100%">
											</div>
											<div class="col-md-7">
												<p>
													돌봄일지를 남겨주세요.<span class="xs_font">(반려인이 없는동안 이렇게
														지냈어요^.^)</span>
												</p>
												<p style="font-size: small;">포니는 처음에는 낯가리는 듯 하다가 산책시간이
													되니 하네스를 차 주려는데 그때부터 먼저 다가와서 아이가 너무 얌전했어요. 산책 생각에 기분이 좋은지
													꼬리를 흔들면서 산책을 기다렸어요 여기저기 냄새를 맡으면서 30분 산책하고 집와서 전용 수제비누로 구석구석
													깨끗이 씻겨주구 드라이기로 말렷더니 뽀송뽀송^^</p>
											</div>
										</div>
										<div class="col text-center">
											<button type="button" class="btn" onclick="clickFunc()">
												더 많은 돌봄일지 확인하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.2s">
			<div class="container text-center">
				<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="box">
							<div class="col">
								<h3 class="mid-title ">KIWI 펫시터 후기</h3>
							</div>
							<div class="row">
								<div class="cardForm col-md-4">
									<div class="card">
										<img id="reviewImg1" alt="reviewImg1"
											src="/images/user/review1.png">
										<div class="card-body">
											<p class="m_font">
												<span class="userNicname">모찌</span> 보호자님
											</p>
											<p class="card-text s_font">4개월 전 모찌를 펫시터님께 맡긴 후 이번에 오랜만에
												모찌를 맡겼어요! 모찌가 낯을 많이 가리는데 펫시터님을 보자마자 인사해서 정말 정말 놀랐어요 ㅎㅎ 역시나
												3일 간 모찌를 정성으로 돌봐주시고 면밀히 컨디션도 관찰해주셔서 감사했어요!! 정말 최고의 펫시터님이십니다
												ㅎㅎ 다음에도 또 기회가 된다면 펫시터님께 모찌 돌봄 요청할게용! 새해 복 많이 받으시구요~~!
												감사했습니다! 모찌가 오늘도 펫시터님과 행복한 하루 보내고 코골며 꿀잠 자는 사진 같이 첨부할게용!</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<a onclick="clickFunc()">전체보기</a>
												<!-- <small class="text-muted">9 mins</small> 고민 -->
											</div>
										</div>
									</div>
								</div>

								<div class="cardForm col-md-4">
									<div class="card">
										<img id="reviewImg2" alt="reviewImg2"
											src="/images/user/review2.png">
										<div class="card-body">
											<p class="m_font">
												<span class="userNicname">갱쥐</span> 보호자님
											</p>
											<p class="card-text s_font">급하게 예약한대다 아르카르가 있어서 기대반 걱정반으로
												보냈는데… 쿠키 아주 잘 놀다 왔나봐요 집에 와서 완전 기절 각으로 쭉~~~ 자더라구요~ㅋ 산책중 쿠키한테
												물려서 힘드셨을텐데, 다음날 다시 산책 길게 해주셔서 너무너무 감사했습니다~ 자주 올려주시는 일지 덕분에
												안심하고 1박2일 잘 보낼 수 있었답니다. 급할때 가끔 맡기고 싶은데.. 시터님과 시간이 안맞아서 아쉬워요
												ㅠ 주말에 길게 외출할 일 있을때… 데이케어로라도 맡기고 싶다는 생각이 한~ 가득 입니다~^^</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<a onclick="clickFunc()">전체보기</a>
												<!-- <small class="text-muted">9 mins</small> 고민 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardForm col-md-4">
									<div class="card">
										<img id="reviewImg3" alt="reviewImg3"
											src="/images/user/review3.png">
										<div class="card-body">
											<p class="m_font">
												<span class="userNicname">보리</span> 보호자님
											</p>
											<p class="card-text s_font">8박9일 여행다녀오는동안 맘편하게 보리를 돌봐주셔서
												넘 감사드려요 ^^산책도 너무나 많이 시켜주시고 아이 사진보내주시는것 볼때마다 보리가 넘편하게 있는것 같아
												여행을 편히 잘 다녀올 수 있었던것 같아요 아이를 어디에 맡기고 가는게 정말쉽지않아서 항상 맘속으루 울고
												가거든요ㅜㅜ 보리가 밥 안먹는다고 주인보다 더신경써주시고 손수 고구마까지 삶아주셨다고해서...너무나
												감사했어요 아이가 겁이많고 사회성이 없어서 힘드셨을텐데... 감사드린다는 얘기밖에할말이 없네요
												감사합니다^^건강하세요 다음에 또 맡길일있음 연락드릴게요</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<a onclick="clickFunc()" onclick="info()">전체보기</a>
												<!-- <small class="text-muted">9 mins</small> 고민 -->
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12 text-center">
									<button type="button" class="btn" onclick="clickFunc()">
										후기 더 보기</button>
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