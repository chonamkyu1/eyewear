<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/join.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<body>

	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>


	<div id="user-contents">
		<div class="width100"> 
			<div class="column_center" style="padding-bottom: 140px">
				<div class="weight400 font24 py-80">회원가입</div>
				<form id="joinForm" style="width: 576px; border: 1px solid #C4C4C4; padding: 28px 55px 50px 62px"  method="post">
					<section class="section-form-group section-form-group-modify">
						<label class="mb-1 mb-md-2" for="input_id">id *</label>
						<div class="mt-1 mt-md-2 mb-4 mb-md-8">
							<input class="form-control form-control-sm form__input form-control-grey id_input"
							 id="input_id" type="text" name="mid" value="" placeholder="ID를 입력하세요.">
							 <div class="invalid-feedback text-success" id="error_id1" style="display:none;">사용 가능한 아이디입니다.</div>
							 <div class="invalid-feedback text-danger" id="error_id2" style="display:none;">아이디가 이미 존재합니다.</div>
							 <div class="final_id_ck">아이디를 입력해주세요.</div> 
							 
						</div>
						
						<label class="mb-1 mb-md-2" for="input_pw">비밀번호 *</label>
						<div class="mt-1 mt-md-2 mb-2 mb-md-4">
							<input class="form-control form-control-sm form__input form-control-grey pw_input" id="input_pw" type="password" name="mpassword" value="" placeholder="비밀번호를 입력하세요.">
							<div class="invalid-feedback text-danger" id="error_password" style="display:block;">&nbsp;</div>
							<div class="final_pw_ck">비밀번호를 입력해주세요.</div>
						</div>
						
						<div class="mt-1 mt-md-2 mb-4 mb-md-8">
							<input class="form-control form-control-sm form__input form-control-grey pwck_input" id="input_pw2" type="password" name="mpassword_re" value="" placeholder="비밀번호를 확인하세요.">
							<div class="invalid-feedback text-danger" id="error_password_re" style="display:block;">&nbsp;</div>
							<div class="final_pwck_ck">비밀번호를 확인을 입력해주세요.</div>
							<div class="pwck_input_re_1">비밀번호가 일치합니다.</div>
							<div class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</div>
						</div>
						
						<label class="mb-1 mb-md-2" for="input_name">이름 *</label>
						<div class="mt-1 mt-md-2 mb-4 mb-md-8">
							<input class="form-control form-control-sm form__input form-control-grey name_input" id="input_name" type="text" name="mname" value="" placeholder="이름을 입력하세요.">
							<div class="invalid-feedback text-danger" id="error_name" style="display:block;">&nbsp;</div>
							<div class="final_name_ck">이름을 입력해주세요.</div>
						</div>
						
						<label class="mb-1 mb-md-2" for="input_gender">성별</label>
						<div class="mt-1 mt-md-2 mb-4 mb-md-8">
							<div class="selection_dropselect">
								<div class="dropdown dropselect">
									<input type="hidden" name="mgender" id="mgender" value=""  >
									<button class="dropdown-toggle" id="input_gender" type="button" data-toggle="dropdown" aria-expanded="false">
										<span class="dropdown-label">남자</span>
									</button>
									<div class="dropdown-menu" role="menu" aria-labelledby="option-post-cleanup" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 56px, 0px); top: 0px; left: 0px; will-change: transform;">
										<a class="dropdown-item dropselect-option" data-value="남자" role="menuitem" tabindex="-1" data-selected="selected" style="cursor: pointer;">남자</a>
										<a class="dropdown-item dropselect-option" data-value="여자" role="menuitem" tabindex="-1"  style="cursor: pointer;">여자</a>
									</div>
									
								</div>
							</div>
							<div class="invalid-feedback text-danger" id="error_gender" style="display:block;">&nbsp;</div>
						</div>
						
						<label class="mb-1 mb-md-2" for="input_phone">전화번호 *</label>
						<div class="mt-1 mt-md-2 mb-2 mb-md-4">
							<input class="form-control form-control-sm form__input form-control-grey phone_input" id="input_phone" type="text" name="mphone" value="" placeholder="전화번호를 입력하세요.">
							<div class="invalid-feedback text-danger" id="error_phone" style="display:block;">&nbsp;</div>
							<div class="final_phone_ck">전화번호를 입력해주세요.</div>
						</div>
						
						<label class="mb-1 mb-md-2" for="input_email">이메일 *</label>
						<div class="mt-1 mt-md-2 mb-2 mb-md-4 ">
							<input class="form-control form-control-sm form__input form-control-grey mail_input" id="input_email" type="text" name="memail" value="" placeholder="이메일을 입력하세요.">
							<div class="invalid-feedback text-danger" id="error_email" style="display:block;">&nbsp;</div>
							<div class="final_mail_ck">이메일을 입력해주세요.</div>
							<div class="mail_input_box_warn"></div>
						</div>
						<div class="mail_check_wrap">
							<div class="mt-1 mt-md-2 mb-2 mb-md-4  mail_check_input_box" id="mail_check_input_box_false">
								<input class="form-control form-control-sm form__input form-control-grey mail_check_input" disabled="disabled">
								<div class="mail_check_button">
									<span>인증번호 전송</span>
								</div>				
								<div class="clearfilx"></div>	
								<div id="mail_check_input_box_warn"></div>		
							</div>
						</div>
						
						
						<button class="btn btn-dark btn-xl btn-block joinButton" type="button">가입하기</button>
						
					</section>
				
				</form>
			</div>
		</div>
		
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>	


<script type="text/javascript" src="../js/join.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>