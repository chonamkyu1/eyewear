let ageCheck = false;
let dateCheck = false;	
	
	$(document).ready(function(){
		$("#btn_reserve").click(function(){

		let age = $("#input_age").val(); // age 입력란
		let date = $("#input_date").val() // date 입력란
		
		if (age == "") {
			alert("나이를 선택해주세요");
			ageCheck = false;
		}
		
		if (date == "") {
			alert("날짜를 선택해주세요");
			dateCheck == false;
		}
		
		
		if (age && date ) {
			$("#reserveForm").attr("action", "/reserve/detailReserve");
			$("#reserveForm").submit();
			alert("예약이 되었습니다.");
		}
		
		return false;
		
		});
		
	});


	function clickReserveType(event) {
		var typeVal = $('input:radio[name=rtype]:checked').val();
		var reserveType = $('input[name=rtype]:checked').attr('id').split('_')[1];
		console.log("reserveType : ", reserveType);
		
		console.log("typeVal : " , typeVal);
	} 
	
	
	function clickReservePerson(event) {
		var personVal = $('input:radio[name=rstaff]:checked').val();
		var reservePerson = $('input[name=rstaff]:checked').attr('id').split('_')[1];
		
		console.log("personVal : " , personVal);
		console.log("reservePerson : " , reservePerson);
	}
	
	
	
	// 연령 등록
	$(document).ready(function(){
		$(".dropdown-menu a ").on('click', function(){
			let txt = ($(this).text());
			let value = ($(this).data("value"));
			
// 			$("#input_age").val($(this).text());
			$("#input_age").val(value);
			console.log("txt: ", txt);
			console.log("value: ", value);

			$(".dropdown-label").val(txt);
		});
	});
	
	$(document).ready(function(){
		$(".dropdown-item").on('click', function(){
			let txt = ($(this).text());
			$(".dropdown-label").text(txt);
			
		});
	});
	
	
	
	
	
	//----------------------------------- 달력 ------------------------------------------------  
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
		let inputdate= $("#input_date").val(current_year + "-" + current_month + "-" + day);
		
		console.log("inputdate.val() : " , inputdate.val());
		console.log("inputdate : " , inputdate);
		
		$("#input_date").attr("value", inputdate.val());
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
	
	// 캘린더 로드될 때 
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
	
	
	
	//-----------------------------------------------------------------------------------
	
	
	
	
	
	