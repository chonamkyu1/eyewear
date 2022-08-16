	let code = "";   // 이메일전송 인증번호 저장을위한 코드
	let idCheck = false;	// 아이디
	let idckCheck = false;	// 아이디 중복검사
	let pwCheck = false;	// 비밀번호
	let pwckcheck = false;	// 비밀번호확인
	let pwckcorCheck = false;	//비밀번호 일치 확인
	let nameCheck = false;	//	이름
// 	let genderCheck = false;	// 성별
	let phoneCheck = false;	// 전화번호
	let mailCheck = false;	//	이메일
	let mailnumCheck = false;	// 이메일 인증번호 확인
	
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".joinButton").click(function(){
			
			// 입력값 변수
			let id = $('.id_input').val();	// id 입력란
			let pw = $('.pw_input').val(); 	// 비밀번호 입력란
			let pwck = $('.pwck_input').val();	// 비밀번호 확인 입력란
			let name = $('.name_input').val();	// 이름 입력란
 			let gender = $('#mgender').val();	 // 성별 입력란
			let phone = $('.phone_input').val(); // 전화번호 입력란
			let mail = $('.mail_input').val();	// 이메일 입력란
			
			
			// id 유효성 검사
			if (id == "") {
				$('.final_id_ck').css('display', 'block');
				idCheck = false;
			} else {
				$('.final_id_ck').css('display', 'none');
				idCheck = true;
			}
			
			// 비밀번호 유효성 검사
			if (pw == "") {
				$('.final_pw_ck').css('display', 'block');
				pwCheck = false;
			} else {
				$('.final_pw_ck').css('display', 'none');
				pwCheck = true;
			}
			
			// 비밀번호 확인 유효성 검사
			if (pwck == "") {
				$('.final_pwck_ck').css('display', 'block');
				pwckCheck = false;
			} else {
				$('.final_pwck_ck').css('display', 'none');
				pwckCheck = true;
			}
			
			// 이름 유효성 검사
			if (name == "") {
				$('.final_name_ck').css('display', 'block');
				nameCheck = false;
			} else {
				$('.final_name_ck').css('display', 'none');
				nameCheck = true;
			}

			// 성별~~
			genderCheck = true;
	
			// 전화번호 유효성 검사
			if (phone == "") {
				$('.final_phone_ck').css('display', 'block');
				phoneCheck = false;
			} else {
				$('.final_phone_ck').css('display', 'none');
				phoneCheck = true;
			}
			
			if (mail == "") {
				$('.final_mail_ck').css('display', 'block');
				mailCheck = false;
			} else {
				$('.final_mail_ck').css('display', 'none');
				mailCheck = true;
			}
			
			console.log ("idCheck : ", idCheck + ", idckCheck : ", idckCheck + ", pwCheck : ", pwCheck + ", pwckCheck : ", pwckCheck + ", pwckcorCheck : ", pwckcorCheck
					+ ", nameCheck : ", nameCheck + ", genderCheck : ", genderCheck + ",phoneCheck : ", phoneCheck + ", mailCheck :", mailCheck + ", mailnumCheck : " , mailnumCheck);
			
			if (idCheck && idckCheck && pwCheck && pwckCheck && pwckcorCheck && nameCheck &&genderCheck && phoneCheck && mailCheck && mailnumCheck) {
				console.log ("idCheck : ", idCheck + ", idckCheck : ", idckCheck + ", pwCheck : ", pwCheck + ", pwckCheck : ", pwckCheck + ", pwckcorCheck : ", pwckcorCheck
						+ ", nameCheck : ", nameCheck + ",genderCheck : ", genderCheck  + ",phoneCheck : ", phoneCheck + ", mailCheck :", mailCheck + ", mailnumCheck : " , mailnumCheck);
				
				$("#joinForm").attr("action", "/user/join");
				$("#joinForm").submit();
			}
			
			return false;
			
		});
	});
	
	// 아이디 중복검사
	$('.id_input').on("propertychange change keyup paste input", function(){  // 텍스트 상자 변화 감지
// 		console.log("keyup 테스트");
	
		let mid = $('.id_input').val(); // .id_input에 입력되는 값
		let data = {mid : mid} 	//  '컨트롤러에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
		
		$.ajax({
			type : "post",
			url : "/user/memberIdChk",
			data : data,
			success : function(result) {
				console.log("성공여부 : " + result);
				
				if (result != 'fail') {
					$('#error_id1').css("display", "inline-block");
					$('#error_id2').css("display", "none");
					idckCheck = true; // 아이디 중복이 없는경우
				} else {
					$('#error_id2').css("display", "inline-block");
					$('#error_id1').css("display", "none");
					idckCheck = false; // 아이디 중복된 경우
				}
			} // success 종료
		}); // ajax 종료
	
	}); // function 종료
	
	
	
	/* 인증번호 이메일 전송 */
	$(".mail_check_button").click(function(){
// 		alert("클릭~");
		let memail = $(".mail_input").val(); // 입력한 이메일
		let checkBox = $(".mail_check_input"); // 인증번호 입력란
		let boxWrap = $(".mail_check_input_box"); // 인증번호 입력란 박스
		let warnMsg = $(".mail_input_box_warn"); // 이메일 입력 경고글 - 형식에 맞지 않으면 경고
		
		// 이메일 형식 유효성 검사
		if (mailFormCheck(memail)) {
			warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
			warnMsg.css("display", "inline-block");
		} else {
			warnMsg.html("올바르지 못한 이메일 형식입니다.");
			warnMsg.css("display", "inline-block");
			return false;
		}
		
		console.log("memail : " +memail);
		
		$.ajax({
			type:"get",
			url:"/user/mailCheck?memail=" + memail,
			success: function(data) {
				console.log("data : ", data);
				checkBox.attr("disabled", false);
				boxWrap.attr("id", "mail_check_input_box_true");
				code = data;
				
			}
		});
		
	});
	
	// 인증번호 비교
	$(".mail_check_input").blur(function(){ 
		// inputCode = 사용자 입력 코드 / code = 이메일로 전송된 코드
		
		let inputCode = $(".mail_check_input").val(); // 입력코드, 인증번호 입력란
		let checkResult = $("#mail_check_input_box_warn"); // 비교 결과
		
		if(inputCode == code) { // 일치할 경우
			checkResult.html("인증번호가 일치합니다.");
			checkResult.attr("class", "correct");
			mailnumCheck = true;  // 번호 일치할 경우
		} else {
			checkResult.html("인증번호를 다시 확인해주세요..");
			checkResult.attr("class", "incorrect");
			mailnumCheck = false; // 번호 일치하지 않을 경우
		}
		
	});
	
	// 비밀번호 확인 일치 유효성 검사
	$('.pwck_input').on("propertychange change keyup paste input", function(){
		let pw = $('.pw_input').val();
		let pwck = $('.pwck_input').val();
		$('.final_pwck_ck').css('display', 'none');
		
		if (pw == pwck ) {
			$('.pwck_input_re_1').css('display', 'block');
			$('.pwck_input_re_2').css('display', 'none');
			pwckcorCheck = true;
		} else {
			$('.pwck_input_re_1').css('display', 'none');
			$('.pwck_input_re_2').css('display', 'block');
			pwckcorCheck = false;
		}
		
	});
	
	// 입력 이메일 형식 유효성 검사
	function mailFormCheck(memail) {
		let form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		return form.test(memail);
	}
	
	// 성별 
	$(document).ready(function(){
// 	function send() {
// 		let mgender = $(mgender).val();
		
// 		console.log("mgender", mgender);
// 	}
	
	
	$(".dropselect-option").on('click', function() {
		$("#input_gender").text($(this).text());
		
		let mgender = $(this).attr('data-value');
		
		console.log("선택된 메소드 : ", mgender);
		
		$("#mgender").val(mgender);
	});
	
});
	
	
