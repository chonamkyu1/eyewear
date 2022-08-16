let oldpwCheck = false; // 전 비밀번호
let pwCheck = false;	// 비밀번호
let pwckCheck = false;	// 비밀번호확인
let pwckcorCheck = false;	//비밀번호 일치 확인
let nameCheck = false; 
let phoneCheck = false;	// 전화번호

$(document).ready(function(){
	$(".editButton").click(function(){
	let oldpw = $(".oldpw_input").val();		
	let pw = $('.pw_input').val(); 	// 비밀번호 입력란
	let pwck = $('.pwck_input').val();	// 비밀번호 확인 입력란
	let name = $('.name_input').val(); // 이름
	let phone = $('.phone_input').val(); // 전화번호 입력란
	
		// 기존 비밀번호 유효성 검사
		
		if (oldpw == "") {
			$('.final_pw_ck').css('display', 'block');
				pwCheck = false;
		} else {
			$('.final_pw_ck').css('display', 'none');
				pwCheck = true;
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
			
				// 전화번호 유효성 검사
			if (phone == "") {
				$('.final_phone_ck').css('display', 'block');
				phoneCheck = false;
			} else {
				$('.final_phone_ck').css('display', 'none');
				phoneCheck = true;
			}
			
			console.log("oldpwCheck : ", oldpwCheck + oldpwCheck  + ", pwCheck : ", pwCheck + ", pwckCheck : ", pwckCheck + ", nameCheck : "
			 , nameCheck + ", phoneCheck : " , phoneCheck + ", pwckcorCheck : " , pwckcorCheck);
			
			if (pwCheck && pwckCheck && nameCheck && phoneCheck && pwckcorCheck && oldpwVal) {
				
				$("#editForm").attr("action", "/user/edit");
				$("#editForm").submit();
			}
			
			return false;

	});
		
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


	
// 성별 
$(document).ready(function(){
	
	$(".dropselect-option").on('click', function() {
		$("#input_gender").text($(this).text());
		
		let mgender = $(this).attr('data-value');
		
		console.log("선택된 메소드 : ", mgender);
		
		$("#mgender").val(mgender);
	});
	
});

window.onload = function(){
		let mgender = document.getElementById('mgender');
		mgender.value = '남자';
	}
