<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/theme.css">
<link rel="stylesheet" href="/css/pc_ver.css">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>

</head>
<body>
			<div class="card res_detail_box">
								<div class="flex_end mb-25">
									<div class="font-size-24 weight300">연령</div>
									<div class="select_subtitle">맞춤 상담 준비를 위해 고객님의 연령대를 알려주세요.</div>
								</div>
								<div class="divider"></div>
								<div class="my-100">
									<div class="font-size-14 weight300 breezm_color mb-25">2인 이상 방문 시, 가장 연장자의 연령대를 선택해 주세요</div>
									<div class="selection_dropselect">
										<div class="dropdown dropselect">
											<input type="hidden" name="age">
											<button class="age_drop_btn between" id="input_age" type="button" data-toggle="dropdown" aria-expanded="true" style="border-radius:0px!important;border-color:#000!important">
											<span class="dropdown-label">연령을 선택해주세요.</span>
												<svg class="bi bi-caret-down-fill" id="age-arrow" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
													<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
												</svg>
											</button>
											<div class="dropdown-menu" role="menu" aria-labelledby="option-post-cleanup" style="border-radius:0px!important;border-color:#000!important">
												<a class="dropdown-item dropselect-option" data-value="20" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">20대 이하</a>
												<a class="dropdown-item dropselect-option" data-value="30" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">30대</a>
												<a class="dropdown-item dropselect-option" data-value="40" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">40대</a>
												<a class="dropdown-item dropselect-option" data-value="50" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">50대</a>
												<a class="dropdown-item dropselect-option" data-value="60" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">60대 이상</a>
											</div>
										</div>
									</div>
								</div>
							</div>


	<div class= "container">
		
		<input type="hidden" id="input_date">
		
	 
		<div>
			<div>
				<button type="button" id="prev_week" onclick="changeMonth(-1);" disabled="disabled"><i class="fa fa-chevron-left"></i></button>
				<input type="text" id="year" value="2022" style="width: 80px; display: initial;" class="form-control">
				<select id="month" class="form-control" style="width: 80px; display: initial;" onchange="changeMonth();">
					<option value="1">1월</option>
					<option value="2">2월</option>
					<option value="3">3월</option>
					<option value="4">4월</option>
					<option value="5">5월</option>
					<option value="6">6월</option>
					<option value="7">7월</option>
					<option value="8">8월</option>
					<option value="9">9월</option>
					<option value="10">10월</option>
					<option value="11">11월</option>
					<option value="12">12월</option>
				</select>
				<button type="button" id="next_week" onclick="changeMonth(1);" ><i class="fa fa-chevron-right"></i></button>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</thead>
				<tbody id="tb_body">
					
				</tbody>
			</table>
		</div>
	</div>

<script>
	// 2월 윤달 계산
	function checkLeapYear(year) {
		if (year % 400 == 0 ) {
			return true;
		} else if (year% 100 == 0) {
			return false;
		} else if (year% 4 == 0) {
			return true;
		} else {
			return false;
		}
	}
	
	// 
	function getFirstDayOfWeek(year, month) {
		if (month < 10) {
			month = "0" + month;
			return (new Date(year + "-" + month + "-01")).getDay(); // 일요일이면 0, 월요일이면 1을 리턴
		}
	}
	
	
	// 월이 변경될 떄
	function changeYearMonth(year, month) {
		let month_day = [31,28,31,30,31,30,31,31,30,31,30,31];
		
		if (month == 2) {
			if (checkLeapYear(year)){
				month_day[1] = 29; // 2월
			}
		}
		let first_day_of_week = getFirstDayOfWeek(year, month); 
		let arr_calendar = []; // 캘린더 html 만들기
		for(let i=0; i<first_day_of_week; i++) {
			arr_calendar.push("");  // 빈값
		}
		
		for(let i=1; i<= month_day[month-1]; i++) { // 월별
			arr_calendar.push(String(i));
		}
		
		let remain_day = 7 - (arr_calendar.length %7);
		if (remain_day < 7) {
			for (let i=0; i <remain_day; i++) {
				arr_calendar.push(""); 
			}
		}
		
		renderCalendar(arr_calendar);
	}
	
	function renderCalendar(data) {
		let h = [];
		for (let i=0; i<data.length; i++) {
			if (i==0) {
				h.push('<tr>');
			} else if (i%7 == 0) {
				h.push("</tr>");
				h.push("<tr>");
			}
				h.push('<td onclick="setDate(' +data[i] + ');" style="cursor:pointer;">' + data[i] + '</td>');
		}
		
		h.push('</tr>');
		
		$("#tb_body").html(h.join(""));
	}
	
	function setDate(day) {
		if (day < 10) day = "0" + day;
		$("#input_date").val(current_year + "-" + current_month + "-" + day);
	}
	
	
	// 월이 변경될 때
	function changeMonth(diff) {
		if (diff == undefined) {
			current_month = parseInt($("#month").val());
		} else {
			current_month = current_month + diff;
			
			if (current_month ==0 ) { // 해가 바뀔 때
				current_year = current_year -1;
				current_month = 12;
			} else if (current_month == 13) {
				current_year = current_year + 1;
				current_month = 1;
			}
		}
		
		loadCalendar();
	}
	
	// 캘린더
	function loadCalendar() {
		$("#year").val(current_year);
		$("#month").val(current_month);
		changeYearMonth(current_year, current_month);
	}
	
	
	let current_year = (new Date()).getFullYear();
	let current_month = (new Date()).getMonth() + 1;
	
	$("#year").val(current_year);
	$("#month").val(current_month);
	
	
	changeYearMonth(current_year,current_month);
		

	
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>