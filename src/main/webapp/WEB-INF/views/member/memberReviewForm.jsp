<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>member-sample</title>
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
<link rel="stylesheet" href="/css/member/sitter/sitterDiary.css">
<link rel="stylesheet" href="/css/member/star.css">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>



<script type="text/javascript">
	(function() {
		'use strict';

		var init = function() {

			var slider1 = new rSlider({
				target : '#slider1',
				values : [ '0회', '1회', '2회', '3회', '4회' ],
				range : false,
				set : [ '2회' ],
				tooltip : false,
				onChange : function(vals) {
					console.log(toOurCountData(vals));
				}
			});

			var slider2 = new rSlider({
				target : '#slider2',
				values : [ '0회', '1회', '2회', '3회', '4회' ],
				range : false,
				set : [ '2회' ],
				tooltip : false,
				onChange : function(vals) {
					console.log(toOurCountData(vals));
				}
			});
			var slider3 = new rSlider({
				target : '#slider3',
				values : [ '0회', '1회', '2회', '3회', '4회' ],
				range : false,
				set : [ '2회' ],
				tooltip : false,
				onChange : function(vals) {
					console.log(toOurCountData(vals));
				}
			});

			var slider4 = new rSlider({
				target : '#slider4',
				values : [ '0분', '15분', '30분', '45분', '60분이상' ],
				range : false,
				set : [ '0분' ],
				tooltip : false,
				onChange : function(vals) {
					console.log(toOurMinData(vals));
				}
			});

			var slider5 = new rSlider({
				target : '#slider5',
				values : [ '0분', '15분', '30분', '45분', '60분이상' ],
				range : false,
				set : [ '0분' ],
				tooltip : false,
				onChange : function(vals) {
					console.log(toOurMinData(vals));
				}
			});

		};
		window.onload = init;
	})();

	function toOurCountData(countStr) {
		var regex = /[^0-9]/g;
		var NumStr = countStr.replace(regex, "");
		return parseInt(NumStr) + 1;
	}

	function toOurMinData(minStr) {
		var regex = /[^0-9]/g;
		var numMinStr = minStr.replace(regex, "");
		return (parseInt(numMinStr) / 15) + 1;
	}

	$(function() { // 파일 업로드
		$('#img_select1').change(function() {
			setImageFromFile(this, '#preview1');
		});
		$('#img_select2').change(function() {
			setImageFromFile(this, '#preview2');
		});
		$('#img_select3').change(function() {
			setImageFromFile(this, '#preview3');
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
</script>

<script type="text/javascript">

   $(document).ready(function() {
   
	  // 오늘 날짜가 출력되는 script
      var today = new Date();

      var year = today.getFullYear();
      var month = ('0' + (today.getMonth() + 1)).slice(-2);
      var day = ('0' + today.getDate()).slice(-2);

      var dateString = year + '-' + month  + '-' + day;

      console.log(dateString);
      // 결과 : 2023-01-17
      
      document.getElementById("today").innerHTML=dateString;
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
				<div class="col-lg-2" id="info">
					<!--로그인하면 세션으로 방문/위탁 펫시터 구분후 각각 다르게 출력  -->
					<c:import url="/member/memberSide"></c:import>
				</div>
				<div class="col-lg-7">
					<div class="IMG1">
						<img src="/images/member/2.svg" class="svgImg1"> <span
							class="font h_font">후기</span>
					</div>
					<ul class="nav nav-tabs">
						<li class="nav-item"><a href="memberReviewPetChoice"
							class="nav-link active" style="color: #FE5C17;">작성 가능한 후기</a></li>
						<li class="nav-item"><a href="memberReviewWritten"
							class="nav-link diary_inactive font_black">작성 한 후기</a></li>
					</ul>
					<div class="box_mi">
						<div class="box_diary">
							<div class="div_diary_header">
								<span class="h2_font" id="today"></span><br>
								<div class="">
									<img src="/images/member/profile.svg"
										style="width: 60px; margin-right: 10px;"><span
										class="mb_font" id="petName">루카스</span> <span class="l_font">님의 후기 작성과 별점을 입력 해주세요!</span>
								</div>
							</div>
							
							&emsp;&emsp;&emsp;&emsp;<button type="button" class="btn btn-outline-primary">단골 등록</button>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							<button type="button" class="btn btn-outline-dark">블랙 리스트 등록</button>

						<br><br>				
						<form class="mb-3" name="myform" id="myform" method="post">
								<span class="text-bold">별점은 펫시터님의 등급에 영향을 미칠 수 있습니다!</span>
								<br>
							<fieldset>
								<input type="radio" name="reviewStar" value="1" id="rate1"><label
									for="rate1">★</label>
								<input type="radio" name="reviewStar" value="2" id="rate2"><label
									for="rate2">★</label>
								<input type="radio" name="reviewStar" value="3" id="rate3"><label
									for="rate3">★</label>
								<input type="radio" name="reviewStar" value="4" id="rate4"><label
									for="rate4">★</label>
								<input type="radio" name="reviewStar" value="5" id="rate5"><label
									for="rate5">★</label>
							</fieldset>
							<div>
								<textarea class="col-auto form-control" type="text" id="reviewContents"
										  placeholder="솔직한 후기는 펫시터님과 Kiwi에 큰 힘이 됩니다! (최대 300자 이내 작성바랍니다.)"></textarea>
							</div>
						</form>				
					
								

								<span class="l_font" style="font-weight: bold;">후기 사진</span>
								<div class="diary_images">

									<div class="size_fix">
										<img src="/images/member/no_img.png" id="preview1" /> <label
											for="img_select1" class="input-file-button">사진 첨부</label> <input
											type="file" id="img_select1" style="display: none;" />
									</div>

									<div class="size_fix">
										<img src="/images/member/no_img.png" id="preview2" /> <label
											for="img_select2" class="input-file-button">사진 첨부</label> <input
											type="file" id="img_select2" style="display: none;" />
									</div>

									<div class="size_fix">
										<img src="/images/member/no_img.png" id="preview3" /> <label
											for="img_select3" class="input-file-button">사진 첨부</label> <input
											type="file" id="img_select3" style="display: none;" />
									</div>
								</div>

								<div style="margin: 30px; text-align: center;">
									<button type="submit" class="btn showMore shadow-sm" style="width: 100%;">제출</button>
								</div>
							</form>

						</div>
					</div>
				</div>
				<div class="col-lg-3">
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

<script src="/javascript/sitter/rSlider.min.js"></script>
<script src="/javascript/main.js"></script>
</body>

</html>