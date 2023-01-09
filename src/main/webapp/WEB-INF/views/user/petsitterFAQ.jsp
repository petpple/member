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
</head>

<body>
	<!-- 여기다가 코드 작성 -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="accordion" id="accordion">
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">
									<p>요금 책정은 어떤 방식으로 이루어지나요?</p>
								</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse show"
								aria-labelledby="headingOne" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>소형견을 기준으로 타임 케어는 기본금(15,000)에 시간당 2,000원이 추가됩니다.</p>
									<p>데이 케어의 경우 50,000원으로 책정되어 있습니다.</p>
									<p>누적 시간과 누적 횟수로 등급이 정해지며 등급이 올라갈수록 기본급이 올라갑니다.</p>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingTwo">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">
									<p>펫시터 회원 등급 금액 차등은 어떤 방식으로 되어있나요?</p>
								</button>
							</h2>
							<div id="collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="headingTwo" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>새싹 → 10,000</p>
									<p>브론즈 → 15,000</p>
									<p>실버 → 20,000</p>
									<p>골드 → 25,000</p>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingThree">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									<p>승급 기준은 어떻게 되나요?</p>
								</button>
							</h2>
							<div id="collapseThree" class="accordion-collapse collapse"
								aria-labelledby="headingThree"
								data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>처음 펫시터가 되면 새싹 등급부터 시작하고 펫시팅 누적 4회(12시간)이상, 가입일 기준 1달 이상
										진행시 브론즈로 등급이 올라갑니다.</p>
									<p>브론즈에서는 펫시팅 누적 10번(60시간), 가입일 기준 3달 이상 충족시 실버로 등급이 올라갑니다.</p>
									<p>실버에서는 펫시팅 누적 30번(180시간), 가입일 기준 6달 이상 충족 시 골드로 등급이
										올라갑니다. 또한, 브론즈 -> 실버 : 평균 평점 3.5점 이상 승급 가능실버 -> 골드 : 평균 평점
										4.0이상 승급 가능</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="headingFour">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseFour"
									aria-expanded="false" aria-controls="collapseFour">
									<p>쪽지기능은 무엇인가요?</p>
								</button>
							</h2>
							<div id="collapseFour" class="accordion-collapse collapse"
								aria-labelledby="headingFour" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>서비스 예약이 완료된 시점부터 서비스 확정 전까지 의뢰자와 펫시터가 소통할 수 있는 기능입니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="headingFive">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseFive"
									aria-expanded="false" aria-controls="collapseFive">
									<p>서비스 후 어떻게 수입을 정산 받나요?</p>
								</button>
							</h2>
							<div id="collapseFive" class="accordion-collapse collapse"
								aria-labelledby="headingFive" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>수입은 서비스 확정 이후 회사 수수료 제외한 금액을 펫시터님 계좌로 정산해드리고 있습니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="headingSix">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseSix"
									aria-expanded="false" aria-controls="collapseSix">
									<p>펫시터는 확정된 예약을 취소할 수 있나요?</p>
								</button>
							</h2>
							<div id="collapseSix" class="accordion-collapse collapse"
								aria-labelledby="headingSix" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>"원칙적으로 펫시터는 취소가 불가능 합니다.만약 귀책 사유로 취소를 할 경우에는 패널티가 부가되며,
										3회 이상 취소(노쇼)시 펫시터 자격을 상실합니다. 경고는 6개월 이후 1개씩 사라집니다. "</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="headingSeven">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseSeven"
									aria-expanded="false" aria-controls="collapseSeven">
									<p>펫시터가 하는 업무(방문, 위탁, 긴급)은 무엇인가요?</p>
								</button>
							</h2>
							<div id="collapseSeven" class="accordion-collapse collapse"
								aria-labelledby="headingSeven"
								data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>펫시터는 반려동물에 대해 지속적인 관심과 돌봄을 제공하여 아이들이 맡겨진 동안 안전하게 지낼 수
										있도록 노력합니다. 야외 산책, 실내놀이뿐만 아니라 견주님들과의 원활한 소통을 원칙으로, 아이들이 안전하게 잘
										지내는 모습을 보여줍니다. 추가서비스가 가능한 펫시터들에 한해서 픽업, 목욕, 발톱 관리 등의 서비스도 함께
										제공합니다.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 404 End -->

</body>

</html>