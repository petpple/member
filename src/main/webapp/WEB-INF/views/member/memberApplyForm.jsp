<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>memeberApplyForm</title>
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
    <link rel="stylesheet" href="/css/main.css">
<!--     <link rel="stylesheet" href="/css/user/FAQ.css"> -->
    <link rel="stylesheet" href="/css/member/memberMain.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
</head>
<style type="text/css">
.container {
	margin-bottom: 20px;
}

.btn {
	background-color: #FE5C17;
	color: white;
	text-align: center;
}
.sss_font{
	font-size:13px;
	color: #FF8C5B;
}
.form-radio-label {
	font-weight: 500;
}
</style>

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
            
            	<div class="list-group-item list-group-item-action list-group-item-secondary">
            		<p class="h_font ">방문 펫시터 지원서 작성하기</p>
            	</div>
            	
            	<form>
            			<p>
							방문 펫시터 지원을 해주셔서 감사합니다. 성실한 답변 부탁드립니다 : )<br>
							<br> Kiwi는 펫시터를 지원 할 때 아래 사항을 모두 입력 해 주셔야 서비스를 의뢰 받을 수 있습니다!
						</p>
	
				<div>
					<div class="panel-body">
	
						<p class="l_font"> 돌봄 가능한 펫 종류를 선택 해주세요.
						<span class="sss_font"> * 두 종류가 돌봄 가능한 경우 모두 선택해 주셔야합니다.</span></p>
						
						<div class="checkBox">
							<input class="form-check-input" type="checkbox" id="petKind1" value="1"> <label for="petKind1">
							<span class="m_font">강아지</span></label>
						</div>
						<div class="checkBox">
							<input class="form-check-input" type="checkbox" id="petKind2" value="2"> <label for="petKind2">
							<span class="m_font">고양이</span></label>
						</div>
						<br>
	
						<p class="l_font"> 돌봄 가능한 펫 크기를 선택 해주세요.
						<span class="sss_font"> * 중형 크기 이상 선택 시 소형 크기의 펫을 돌봄 가능한 것으로 간주합니다.</span></p>
						
						<div class="form-check">
							<input class="form-check-input" type="radio" name="petSize" id="size1"> <label
								class="form-check-label" for="size1"><span class="m_font">소형 : 7키로 미만(고양이 포함)</span></label><br>
							<input class="form-check-input" type="radio" name="petSize" id="size2"> <label
								class="form-check-label" for="size2"><span class="m_font">중형 : 7 ~ 14.9키로</span></label><br>
							<input class="form-check-input" type="radio" name="petSize" id="size3"> <label
								class="form-check-label" for="size3"><span class="m_font">대형 : 15키로 이상</span></label><br>
						</div>
						<br>
	
						<p class="l_font">
							방문 펫시터로 지원하시는 예비 펫시터님의 흡연여부를 선택해주세요.<span class="sss_font"> *
							</span>
						</p>
						
						
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="smoking1">
						  <label class="form-check-label" for="smoking1">
						    <span class="m_font">네, 흡연자예요.</span>
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="smoking2">
						  <label class="form-check-label" for="smoking2">
						    <span class="m_font">아니요, 흡연자가 아닙니다.</span>
						  </label>
						</div>
						
						<br>
	
						<p class="l_font">
							취득한 자격증이 있다면 선택해주세요.<span class="sss_font"> * 취득한 자격증은 모두 선택해주셔야합니다. 다중 선택시 Ctrl 키를 눌러 선택 해주세요.</span>
						</p>
	
						<select name="cert" size="8" multiple="multiple" id="cert"
							class="m_font form-select" aria-label="Default select example">
							<option value="0" selected> -- 자격증 선택 -- </option>
							<option value="1">반려견지도사</option>
							<option value="2">도그쇼 심사위원</option>
							<option value="3">핸들러</option>
							<option value="4">펫시터</option>
							<option value="5">애견브리더</option>
							<option value="6">펫그루머</option>  
							<option value="7">반려동물목욕관리사</option>
							<option value="8">반려동물관리사</option>
							<option value="9">반려동물행동교정사</option>
							<option value="10">반려동물산업기술자(동물위탁서비스관리)</option>
							<option value="12">반려동물산업기술자(동물행동교정)</option>
							<option value="13">펫케어상담사</option>
							<option value="14">동물교감사</option>
							<option value="15">반려동물산업기술자(종합관리)</option>
							<option value="16">동물보건사</option>
							<option value="17">펫유치원교원</option>
							<option value="18">반려동물행동교정사</option>
							<option value="19">펫매니저</option>
							<option value="20">펫유치원교원</option>
							<option value="21">도그워커</option>
							<option value="22">클리커트레이너</option>
							<option value="23">반려동물식품관리사</option></select><br>
						<br>
	
						<p class="l_font">
							취득한 자격증의 취득 날짜를 선택해주세요.<span class="sss_font"> * 취득한 자격증은 모두 선택해주셔야합니다.</span>
						</p>
						<br>
						<br>
	

					    <label for="title" class="form-label m_font">프로필 한 줄 제목 <span class="sss_font"> * </span></label>
					    <input type="text" class="form-control" id="title" placeholder="표시 될 프로필 제목을 입력 해 주세요." required>
						<br>
						
	
						<p class="l_font">
							펫시터 소개글<span class="sss_font"> * 프로필에서 보여질 펫시터 소개글 입니다. 최대 300자 이내 작성 해주세요.</span>
						</p>
						<textarea class="form-control" id="profileContent" name="profileContent"
							rows="5" cols="60"
							placeholder="예) 반갑습니다~~♡ 저는 대학생 큰딸과 네살 반 된 늦둥이 말티츄 아들 하나를 키우고 있는 주부입니다." required></textarea>
						<br>
						<br>
	

					
						<label for="depositor" class="form-label m_font">예금주명<span class="sss_font"> * </span></label>
					    <input type="text" class="form-control" id="depositor" placeholder="수익을 입금 받을 예금주 명을 입력 해 주세요." required>
							
						<br>
	
						<p class="l_font">
							은행<span class="sss_font"> * </span>
						</p>
						<select name="bank" class="m_font form-select" id="bank" >
							<option value="0" selected> -- 은행 선택 -- </option>
							<option value="1">신한은행</option>
							<option value="2">NH농협은행</option>
							<option value="3">카카오뱅크</option>
							<option value="4">우리은행</option>
							<option value="5">IBK기업은행</option>
							<option value="6">하나은행</option>
							<option value="7">케이뱅크</option>
							<option value="8">새마을금고</option>
							<option value="9">우체국</option>
							<option value="10">신협은행</option>
						</select> <br>
						<br>
	
		
						<label for="accNumber" class="form-label m_font">계좌번호<span class="sss_font">*</span></label>
					    <input type="text" class="form-control" id="accNumber" placeholder="수익을 입금 받을 계좌번호을 - 없이 입력 해 주세요." required>
							
					</div>
				</div>
	
			
			</form>
	
			</div>
       </div>
    </div>
    
    		<div class="text-center">
					<button type="submit" class="btn" style="background-color:#FE5C17; color:white;" role="button" role="button">최종제출</button>
			</div>
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>