let code = ""; // 이메일전송 인증번호 저장을 위한 코드
let idCheck = false;
let nameCheck = false; // 이름
let mailCheck = false; // 이메일
let mailnumCheck = false; // 이메일 인증 번호
	
	
	$(document).ready(function(){
		$(".find_pw").click(function(){
		 //console.log("클릭~");
		
		let id = $('.id_input').val();	// id 입력란
		let name = $('.name_input').val();
		let mail = $('.mail_input').val();
		
		
		// id 유효성 검사
		if (id == "") {
			$('.final_id_ck').css('display', 'block');
			idCheck = false;
		} else {
			$('.final_id_ck').css('display', 'none');
			idCheck = true;
		}
		
		// 이름 유효성 검사
		if (name == "") {
			$('.final_name_ck').css('display', 'block');
			nameCheck = false;
		} else {
			$('.final_name_ck').css('display', 'none');
			nameCheck = true;
		}
		
		// 이메일 유효성 검사
		if (mail == "") {
			$('.final_mail_ck').css('display', 'block');
			mailCheck = false;
		} else {
			$('.final_mail_ck').css('display', 'none');
			mailCheck = true;
		}
		
		if (id &&name && mail) {
			$("#findPwForm").attr("action", "/user/find_pw");
			$("#findPwForm").submit();
		
		}
		return false;

	});	
		
});


/* 인증번호 이메일 전송 */
	$("#btn_validate_email").click(function(){
 		//alert("클릭~");
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
	
	// 입력 이메일 형식 유효성 검사
	function mailFormCheck(memail) {
		let form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		return form.test(memail);
	}
	
	