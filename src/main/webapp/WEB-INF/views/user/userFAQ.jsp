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
</head>

<body>
	<!-- 여기다가 코드 작성 -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="accordion" id="accordion">
						<div class="accordion-item">
							<h2 class="accordion-header" id="heading1">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse1"
									aria-expanded="true" aria-controls="collapse1">
									<p>키위는 어떤 서비스를 제공하나요?</p>
								</button>
							</h2>
							<div id="collapse1" class="accordion-collapse collapse show"
								aria-labelledby="heading1" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>방문 서비스, 위탁 서비스 등 다양한 서비스 옵션을 제공하고 있습니다.</p>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="heading2">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse2"
									aria-expanded="false" aria-controls="collapse2">
									<p>펫시팅 비용이 얼마인가요?</p>
								</button>
							</h2>
							<div id="collapse2" class="accordion-collapse collapse"
								aria-labelledby="heading2" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>펫시팅은 타임 케어와 데이 케어로 나눌 수 있습니다. 소형견을 기준으로 타임 케어는
										기본금(15,000)에 시간당 2,000원이 추가됩니다. 데이 케어의 경우 일 50,000원으로 책정되어
										있습니다. 또한 등급에 따라서 가격이 상이하므로 참고 바랍니다.</p>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="heading3">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse3"
									aria-expanded="false" aria-controls="collapse3">
									<p>고양이도 위탁 서비스가 가능한가요?</p>
								</button>
							</h2>
							<div id="collapse3" class="accordion-collapse collapse"
								aria-labelledby="heading3" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>고양이의 경우도 가능은 합니다. 하지만 영역성이 강한 본능적 특성 때문에, 환경이 바뀌면 스트레스를
										받을 가능성이 크기에 위탁 서비스 이용을 지양합니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading4">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse4"
									aria-expanded="false" aria-controls="collapse4">
									<p>서비스에 대한 비용 결제는 언제되나요?</p>
								</button>
							</h2>
							<div id="collapse4" class="accordion-collapse collapse"
								aria-labelledby="heading4" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>키위는 의뢰자님이 서비스를 요청함과 동시에 결제가 이루어집니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading5">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse5"
									aria-expanded="false" aria-controls="collapse5">
									<p>펫시팅전에 필요한 준비사항은 뭐가 있나요?</p>
								</button>
							</h2>
							<div id="collapse5" class="accordion-collapse collapse"
								aria-labelledby="heading5" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>기본적인 준비물들은 배변패드, 배변판, 배식 도구, 사료, 강아지 인식표 및 산책도구 등이 있습니다.
										또한 펫시팅을 맡기기 위해서 기본적인 5차 접종이 꼭 완료되어야 합니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading6">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse6"
									aria-expanded="false" aria-controls="collapse6">
									<p>서비스 상태는 무엇인가요?</p>
								</button>
							</h2>
							<div id="collapse6" class="accordion-collapse collapse"
								aria-labelledby="heading6" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>수락 대기중 - 펫시터에게 서비스 예약 요청을 보냈으나 펫시터가 아직 수락을 하지 않은 경우</p>
									<p>거절 - 펫시터가 24시간 이내 거절하는경우, 예약 요청 후 24시간이 지난 경우</p>
									<p>서비스 진행 예정 - 펫시터가 예약 요청을 수락한 상태</p>
									<p>서비스 진행완료- 서비스가 완료된 경우</p>
									<p>기간만료 - 기간 내에 펫시터를 구하지 못하고 기간이 지난상태</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading7">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse7"
									aria-expanded="false" aria-controls="collapse7">
									<p>예약 취소 및 환불 규정은 어떻게 되나요?</p>
								</button>
							</h2>
							<div id="collapse7" class="accordion-collapse collapse"
								aria-labelledby="heading7" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>의뢰인이 취소하는 경우</p>
									<p>펫시팅 시작일 72시간전까지 : 100% 환불</p>
									<p>펫시팅 시작 24시간전 : 환불 불가</p>
									<p>펫시팅 시작일 48시간부터 24시간전까지 : 50% 환불</p>
									<p>의뢰인이 펫 프로필을 다르게 작성한 경우 : 환불 불가</p>
									<p>펫시터의 귀책사유로 인한 경우, 모든 경우 : 환불 불가</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading8">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse8"
									aria-expanded="false" aria-controls="collapse8">
									<p>예약 완료 후 펫시터가 예약을 취소하면 어떻게 하나요?</p>
								</button>
							</h2>
							<div id="collapse8" class="accordion-collapse collapse"
								aria-labelledby="heading8" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>원칙적으로 펫시터는 취소가 불가능 합니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading9">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse9"
									aria-expanded="false" aria-controls="collapse9">
									<p>반려동물을 추가하면 비용이 어떻게 되나요?</p>
								</button>
							</h2>
							<div id="collapse9" class="accordion-collapse collapse"
								aria-labelledby="heading9" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>맡기시는 반려동물이 2마리 이상일 경우에 타임 케어와 데이 케어 모두 총액에서 마리 당
										10,000원이 할인됩니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading10">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse10"
									aria-expanded="false" aria-controls="collapse10">
									<p>예약이 확정되고 난 후, 날짜를 변경하고 싶어요!</p>
								</button>
							</h2>
							<div id="collapse10" class="accordion-collapse collapse"
								aria-labelledby="heading10" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>날짜를 다시 변경하고 싶은 경우, 예약을 취소 하고 다시 예약 요청을 하셔야 합니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading11">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse11"
									aria-expanded="false" aria-controls="collapse11">
									<p>긴급 요청 서비스가 무엇인가요?</p>
								</button>
							</h2>
							<div id="collapse11" class="accordion-collapse collapse"
								aria-labelledby="heading11" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>긴급 요청 서비스는 의뢰인이 원하는 펫시팅 시작일 72시간 전부터 1시간 사이의 기간에 서비스 요청을
										등록하여 펫시터의 지원을 받고 한 명의 펫시터를 고르는 시스템입니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading12">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse12"
									aria-expanded="false" aria-controls="collapse12">
									<p>일반 서비스(위탁, 방문)가 무엇인가요?</p>
								</button>
							</h2>
							<div id="collapse12" class="accordion-collapse collapse"
								aria-labelledby="heading12" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>일반 서비스(위탁, 방문)는 펫시팅 시작일 72시간 이상 여유가 있다면 원하는 펫시터에게 펫시팅
										예약을 신청하는 시스템입니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading13">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse13"
									aria-expanded="false" aria-controls="collapse13">
									<p>서비스 이용중 반려동물이 아프거나 다치면 어떻게 하나요?</p>
								</button>
							</h2>
							<div id="collapse13" class="accordion-collapse collapse"
								aria-labelledby="heading13" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>"펫시팅 도중 반려동물의 건강에 이상이 생긴 경우, 사전에 펫시터님과 고객님께서 정한 병원으로 즉시
										이송하여 진단, 치료를 받을 수 있습니다. 진단 및 치료 후 수의학적 판단에 의한 과실 여부에 따라 펫플래닛의
										프리미엄 안전 보상 프로그램을 적용 받으실 수 있습니다."</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading14">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse14"
									aria-expanded="false" aria-controls="collapse14">
									<p>반려동물 등록 및 수정, 삭제를 어떻게 하나요?</p>
								</button>
							</h2>
							<div id="collapse14" class="accordion-collapse collapse"
								aria-labelledby="heading14" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>메인페이지의 나의 펫 정보에서 관리가 가능합니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading15">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse15"
									aria-expanded="false" aria-controls="collapse15">
									<p>아이디랑 비밀번호를 잃어버렸어요. 어떻게 다시 찾죠?</p>
								</button>
							</h2>
							<div id="collapse15" class="accordion-collapse collapse"
								aria-labelledby="heading15" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>로그인 페이지에서 아이디,비밀번호 찾기 버튼을 누르면 아이디 혹은 비밀번호를 찾을 수 있는 페이지로
										이동합니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading16">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse16"
									aria-expanded="false" aria-controls="collapse16">
									<p>서비스 진행중 서비스 기간 연장이 가능한가요?</p>
								</button>
							</h2>
							<div id="collapse16" class="accordion-collapse collapse"
								aria-labelledby="heading16" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>키위 정책상 불가능 합니다. 추가로 필요할 경우 서비스 요청을 해주시면 됩니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading17">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse17"
									aria-expanded="false" aria-controls="collapse17">
									<p>쪽지 기능은 무엇입니까?</p>
								</button>
							</h2>
							<div id="collapse17" class="accordion-collapse collapse"
								aria-labelledby="heading17" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>방문 서비스, 위탁 서비스 등 다양한 서비스 옵션을 제공하고 있습니다.</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading18">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse18"
									aria-expanded="false" aria-controls="collapse18">
									<p>서비스 중에 노쇼 버튼은 왜 필요한가요?</p>
								</button>
							</h2>
							<div id="collapse18" class="accordion-collapse collapse"
								aria-labelledby="heading18" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>"서비스 개시 후 의뢰인 또는 펫시터중에서 서비스의 준비가 된 측에서 상대방이 노쇼(예약부도 행위)를
										하였다고 판단하였을 경우 노쇼를 버튼을 누르시게되면 플랫폼이 정한 귀책사유 정책 및 입장에 따라 환불 및 경고
										처리 됩니다. "</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading19">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse19"
									aria-expanded="false" aria-controls="collapse19">
									<p>키위를 탈퇴하고 싶어요. 어떻게 하나요?</p>
								</button>
							</h2>
							<div id="collapse19" class="accordion-collapse collapse"
								aria-labelledby="heading19" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>마이페이지에 탈퇴하기 버튼이 있습니다. 진행중인 서비스가 있거나 요청된 서비스가 있다면 탈퇴가 불가능
										합니다. 회원 탈퇴시 이전의 쪽지와, 일지는 모두 볼 수 없게 됩니다. 또한 탈퇴 후 1년이내 재가입이 불가능
										합니다. 신중히 진행해 주세요</p>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading20">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse20"
									aria-expanded="false" aria-controls="collapse20">
									<p>펫시터는 어떻게 지원하나요?</p>
								</button>
							</h2>
							<div id="collapse20" class="accordion-collapse collapse"
								aria-labelledby="heading20" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>원칙적으로 펫시터는 취소가 불가능 합니다.</p>
									<!-- 이상함 -->
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="heading21">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapse21"
									aria-expanded="false" aria-controls="collapse21">
									<p>펫시터 지원 자격을 알고 싶어요</p>
									<!-- 이상함 -->
								</button>
							</h2>
							<div id="collapse21" class="accordion-collapse collapse"
								aria-labelledby="heading21" data-bs-parent="#accordion">
								<div class="accordion-body">
									<p>이런 분과 함께하고 있습니다.</p>
									<p>모든 일에 있어서 책임감이 강해요</p>
									<p>고객에게 친절하게 응대할 수 있어요</p>
									<p>시간 약속은 철저하게 지켜요</p>
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