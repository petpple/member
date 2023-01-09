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

<link rel="stylesheet" href="/css/member/sitter/sitterCal.css">
<style type="text/css">

</style>

<script type="text/javascript">
	$(document).ready(function() {
		calendarInit();
	});
	/*
	 달력 렌더링 할 때 필요한 정보 목록 

	 현재 월(초기값 : 현재 시간)
	 금월 마지막일 날짜와 요일
	 전월 마지막일 날짜와 요일
	 */
	tempCurrentYear = 0;
	tempCurrentMonth = 0;
	tempToday = new Date();

	function calendarInit() {

		// 날짜 정보 가져오기
		var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
		var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct 표준시 도출
		var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
		var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)
		tempToday = today;
		var thisMonth = new Date(today.getFullYear(), today.getMonth(), today
				.getDate());
		// 달력에서 표기하는 날짜 객체

		var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
		var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
		var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

		// kst 기준 현재시간
		// console.log(thisMonth);

		tempCurrentYear = currentYear;
		tempCurrentMonth = currentMonth;

		// 캘린더 렌더링
		renderCalender(thisMonth);

		function renderCalender(thisMonth) {

			// 렌더링을 위한 데이터 정리
			currentYear = thisMonth.getFullYear();
			currentMonth = thisMonth.getMonth();
			currentDate = thisMonth.getDate();

			// 이전 달의 마지막 날 날짜와 요일 구하기
			var startDay = new Date(currentYear, currentMonth, 0);
			var prevDate = startDay.getDate();
			var prevDay = startDay.getDay();

			// 이번 달의 마지막날 날짜와 요일 구하기
			var endDay = new Date(currentYear, currentMonth + 1, 0);
			var nextDate = endDay.getDate();
			var nextDay = endDay.getDay();

			// console.log(prevDate, prevDay, nextDate, nextDay);

			// 현재 월 표기
			$('.year-month').text(currentYear + '.' + (currentMonth + 1));

			// 렌더링 html 요소 생성
			calendar = document.querySelector('.dates')
			calendar.innerHTML = '';

			// 지난달
			for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
				calendar.innerHTML = calendar.innerHTML
						+ '<div class="day prev disable">' + i + '</div>'
			}
			// 이번달
			for (var i = 1; i <= nextDate; i++) {
				if (i == 7 || i == 12) {
					calendar.innerHTML = calendar.innerHTML
							+ '<div class="day current" id="' + i
							+ '" onclick="clickAction(' + i
							+ ')"><div class="cal_box"></div>' + i
							+ '</div></div>';
					continue;
				}
				calendar.innerHTML = calendar.innerHTML
						+ '<div class="day current"id="' + i
						+ '" onclick="clickAction(' + i + ')">' + i + '</div>'
			}
			// 다음달
			for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
				calendar.innerHTML = calendar.innerHTML
						+ '<div class="day next disable">' + i + '</div>'
			}

			// 오늘 날짜 표기
			if (today.getMonth() == currentMonth) {
				todayDate = today.getDate();
				var currentMonthDate = document
						.querySelectorAll('.dates .current');
				currentMonthDate[todayDate - 1].classList.add('today');
			}

			if (currentYear == today.getFullYear()
					&& currentMonth == today.getMonth()) {
				$('.go-prev').hide();
				$('.year-month').css('margin-left', '25px');
			} else {
				$('.go-prev').show();
				$('.year-month').css('margin-left', '0');
			}
		}

		// 이전달로 이동
		$('.go-prev').on('click', function() {
			thisMonth = new Date(currentYear, currentMonth - 1, 1);
			renderCalender(thisMonth);
		});

		// 다음달로 이동
		$('.go-next').on('click', function() {
			thisMonth = new Date(currentYear, currentMonth + 1, 1);
			renderCalender(thisMonth);
		});
	}

	prevNum = 0;

	function clickAction(i) {

		if (prevNum != tempToday.getDate()) {
			$("#" + prevNum).css("background-color", "white");
		}
		if (tempCurrentYear == tempToday.getFullYear()
				&& Number(tempCurrentMonth) == Number(tempToday.getMonth())
				&& i == tempToday.getDate()) {

			prevNum = i;
			return;
		}

		$("#" + i).css("background-color", "blanchedalmond");
		prevNum = i;
	}
</script>

</head>
<body>
	<div>
		<img src="/images/member/calendar.svg" class="svgImg1"> <span
			class="h_font">나의 스케쥴</span>
	</div>
	<div class="box_cal">
		<div class="sec_cal">
			<div class="cal_nav">
				<a href="javascript:;" class="nav-btn go-prev">prev</a>
				<div class="year-month"></div>
				<a href="javascript:;" class="nav-btn go-next">next</a>
			</div>
			<div class="cal_wrap">
				<div class="days">
					<div class="day">MON</div>
					<div class="day">TUE</div>
					<div class="day">WED</div>
					<div class="day">THU</div>
					<div class="day">FRI</div>
					<div class="day">SAT</div>
					<div class="day">SUN</div>
				</div>
				<div class="dates"></div>
			</div>
		</div>
		<div class="cal_detail">
			<div class="box_cal_detail">
				<div class="cal_detail_div" style="margin-top: 10px;">
					<span class="label label-default s_font font_black"
						style="background-color: rgb(225, 199, 199);">긴급-방문</span> <br>
					<span class="m_font">13:00 ~ 15:00</span>
				</div>
				<div class="cal_detail_div">
					<img src="/images/member/profile.svg" style="width: 60px;"><br>
					<span class="mb_font">루카스</span><br>
				</div>
			</div>
		</div>
	</div>
</body>

</html>