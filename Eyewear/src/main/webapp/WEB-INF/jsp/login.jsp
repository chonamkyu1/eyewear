<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/login.css">
<link rel="stylesheet" href="/css/theme.css">
<link rel="stylesheet" href="/css/pc_ver.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>

</head>
<body>

	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>


	<div id="user-contents">
		<div class="width100">
			<div class="center">
				<div class="min_width">
					<div class="align_center font24 weight400 py-80">로그인</div>
					<form class="column_center" id="loginForm" method="post">
						<div style="width: 460px;">
							
							<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
								<input class="form-control form__input form-control-grey id_input" id="input_email" type="text" name="mid" value="" placeholder="ID를 입력하세요." aria-invalid="true">
								<div class="invalid-feedback text-danger" id="error_email" style="display:block;">&nbsp;</div>
								<div class="final_id_ck">아이디를 입력해주세요.</div>
								
								
							</div>
							<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
								<input class="form-control form__input form-control-grey pw_input" id="input_pw" type="password" name="mpassword" value="" placeholder="비밀번호를 입력하세요.">
								<div class="invalid-feedback text-danger" id="error_password" style="display:block;">&nbsp;</div>
								<div class="final_pw_ck">비밀번호를 입력해주세요.</div>
							</div>
	
							<c:if test="${result == 0 }">
								<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
							</c:if>
							
							<div class="row my-1 my-md-2">
								<div class="col-6">
<!--                       				<div class="custom-control custom-checkbox custom-checkbox-hb custom-checkbox-hb-small custom-control-inline"> -->
<!-- 										<input class="custom-control-input" id="saveCheckbox" type="checkbox" name="saveCheckbox" checked="checked"> -->
<!-- 										<label class="custom-control-label" for="saveCheckbox">로그인 상태 유지</label> -->
<!--  									</div> -->
								</div>
								<div class="col-6 text-right"><a class="cus_link breezm_color" href="/user/find_id">ID/비밀번호 찾기</a></div>
							</div>
							<div>
								<div class="text-right my-2 my-md-4 mt_zero"><a class="cus_link breezm_color" href="/user/join">회원가입</a></div>
							</div>
							<button class="btn btn-dark btn-block login_button" type="button" style="margin-bottom: 70px"><strong>로그인</strong></button>
						</div>
						
						<div class="divider"></div>
					</form>
				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>

<script type="text/javascript" src="/js/login.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery..min.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>