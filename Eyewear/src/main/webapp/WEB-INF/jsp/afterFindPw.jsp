<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/join.css">
<link rel="stylesheet" href="/css/theme.css">
<link rel="stylesheet" href="/css/pc_ver.css">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>

</head>
<body>
		
	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>
	
	<div id="user-contents" class="">
		<!-- Container-->
		<div class="width_100">
			<!-- 이메일/비밀번호 찾기-->
			<div class="cus_find_id_pass">
			<!-- 결과-새로운 비밀번호-->
			<div class="nav nav-tabs tab-modern">
				<a class="nav-link tab-modern__nav-link" href="/user/find_id">아이디 찾기</a>
				<a class="nav-link tab-modern__nav-link active" href="javascript:void(0);">비밀번호 찾기</a>
			</div>
			<div class="pt-4 pt-md-8">
				<form id="changePwForm" method="post" novalidate="novalidate">
					<section class="section-form-group p-0">
						<label class="mb-1 mb-md-2" for="input_pw">새로운 비밀번호 *</label>
						<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
							<input class="form-control form-control-sm form__input form-control-grey pw_input" id="input_pw" type="password" name="mpassword" value="" placeholder="새로운 비밀번호를 입력해주세요.">
							<div class="invalid-feedback text-danger" id="error_password" style="display:block;">&nbsp;</div>
							<div class="final_pw_ck">비밀번호를 입력해주세요.</div>
						</div>
						<label class="mb-1 mb-md-2" for="input_certification">새로운 비밀번호 확인 *</label>
						<div class="form-btn-group mt-1 mt-md-2 mb-4 mb-md-8 pb-4 pb-md-8">
							<button class="btn btn-md btn-grey btn-zip rounded-8 disabled" type="button" style="display:none">완료</button>
							<input class="form-control form-control-sm form__input form-control-grey pwck_input" id="input_certification" type="password" name="password_re" value="" placeholder="동일한 비밀번호를 입력해주세요.">
							<div class="invalid-feedback text-danger" id="error_password_re" style="display:block;">&nbsp;</div>
							<div class="final_pwck_ck">비밀번호를 확인을 입력해주세요.</div>
							<div class="pwck_input_re_1">비밀번호가 일치합니다.</div>
							<div class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</div>
						</div>
						<button class="btn btn-dark btn-xl btn-block" type="button">비밀번호 변경하기</button>
					</section>
					<input type="hidden" name="mid"  value= ${mvo.mid }>
					<input type="hidden" name="mname" value= ${mvo.mname }>
					<input type="hidden" name ="memail" value= ${mvo.memail }>
					
					
              </form>
            </div>
			<!-- //결과-새로운 비밀번호-->
			</div>
			<!-- //이메일/비밀번호 찾기-->
		</div>
		
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
      </div>
      
      
<script>

	let pwCheck = false;
	let pwckCheck = false;
	let pwckcorCkeck = false;
	
	console.log(pwCheck, pwckCheck, pwckcorCkeck);
	
	$(document).ready(function(){
		$(".btn-block").click(function(){
			let pw = $('.pw_input').val() // 비밀번호 입력란
			let pwck = $('.pwck_input').val() // 비밀번호 입력란
			
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
			
			
			console.log("pwCheck : ", pwCheck + ", pwckCheck : " , pwckCheck + ", pwckcorCheck : ", pwckcorCheck);
			
			if (pwCheck && pwckCheck && pwckcorCheck) {
				$("#changePwForm").attr("action", "/user/afterFind_pw");
				$("#changePwForm").submit();
				
				alert("비밀번호가 수정되었습니다.");
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
	
</script>

      
</body>
</html>