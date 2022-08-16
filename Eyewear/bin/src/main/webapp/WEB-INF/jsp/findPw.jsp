<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/theme.css">
<link rel="stylesheet" href="../css/pc_ver.css">
<link rel="stylesheet" href="../css/findPw.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>

</head>
<body>

	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>


	<div id="user-contents">
		<div class="width100">
			<div class="cus_find_id_pass">
				<div class="nav nav-tabs tab-modern">
					<a class="nav-link tab-modern__nav-link" href="/user/find_id">ID 찾기</a>
					<a class="nav-link tab-modern__nav-link active" href="javascript:void(0);">비밀번호 찾기</a>
				</div>
				<div class="pt-4 pt-md-8">
					<form id="findPwForm" method="post" action="/user/find_id_ok">
						<section class="section-form-group p-0">
						
							<label class="mb-1 mb-md-2" for="input_id">ID</label>
							<div class="mt-1 mt-md-2 mb-4 mb-md-8">
								<input class="form-control form-control-sm form__input form-control-grey id_input"
								 id="input_id" type="text" name="mid" value="" placeholder="가입하신 ID를 입력해주세요">
								 <div class="invalid-feedback text-danger" id="error_id" style="display:block;">&nbsp;</div>
								 <div class="final_id_ck">ID를 입력해주세요.</div>
							</div>
							
							<label class="mb-1 mb-md-2" for="input_name">이름	</label>
							<div class="mt-1 mt-md-2 mb-4 mb-md-8">
								<input class="form-control form-control-sm form__input form-control-grey name_input"
								 id="input_name" type="text" name="mname" value="" placeholder="가입하신 이름을 입력해주세요.">
								 <div class="invalid-feedback text-danger" id="error_name" style="display:block;">&nbsp;</div>
								 <div class="final_name_ck">이름을 입력해주세요.</div>
							</div>
							
							<label class="mb-1 mb-md-2" for="input_email">이메일</label>
							<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
								<button class="btn weight300 btn-md btn-dark btn-zip rounded-8 disabled" id="btn_validate_email" type="button">전송</button>
								<input class="form-control form-control-sm form__input form-control-grey mail_input" id="input_email" type="text" name="memail" value="" placeholder="이메일을 입력해주세요.">
								<div class="invalid-feedback text-success" id="error_email" style="display: block;">&nbsp;</div>
								<div class="final_mail_ck">이메일을 입력해주세요.</div>
							<div class="mail_input_box_warn"></div>
							</div>
							
							<div class="mail_check_wrap">
								<div class="form-btn-group mt-1 mt-md-2 mb-4 mb-md-8 pb-4 pb-md-8 mail_check_input_box" id="mail_check_input_box_false">
									<span class="certification-number text-success" id="countdown">&nbsp;</span>
<!-- 									<button class="btn btn-md btn-dark btn-zip rounded-8 disabled" id="btn_validate_code_check" type="button">인증</button> -->
									<input class="form-control form-control-sm form__input form-control-grey mail_check_input" id="input_certification" type="text" name="validate_mobile" value="" placeholder="인증번호" maxlength="6" autocomplete="off" disabled="disabled">
<!-- 									<div class="invalid-feedback text-success" id="error_validate_mobile" style="display:block;">&nbsp;</div> -->
<!-- 									<div class="mail_check_button"> -->
<!-- 										<span>인증번호 전송</span> -->
<!-- 									</div>				 -->
									<div class="clearfilx"></div>	
									<div id="mail_check_input_box_warn"></div>	
								</div>
							</div>	
							
							
							
<!-- 							<div class="form-btn-group mt-1 mt-md-2 mb-4 mb-md-8 pb-4 pb-md-8"> -->
<!-- 								<span class="certification-number text-success" id="countdown">&nbsp;</span> -->
<!-- 								<button class="btn btn-md btn-dark btn-zip rounded-8 disabled" id="btn_validate_code_check" type="button">인증</button> -->
<!-- 								<input class="form-control form-control-sm form__input form-control-grey" id="input_certification" type="text" name="validate_mobile" value="" placeholder="인증번호" maxlength="6" autocomplete="off"> -->
<!-- 								<div class="invalid-feedback text-success" id="error_validate_mobile" style="display:block;">&nbsp;</div> -->
<!-- 							</div> -->
							
							
							<button class="btn weight300 btn-dark btn-xl btn-block find_pw" type="button">확인</button>
						</section>
					</form>
				</div>
			
			
			</div>
		</div>
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>

<script type="text/javascript" src="../js/findPw.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>