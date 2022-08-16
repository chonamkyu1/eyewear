<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/theme.css">
<link rel="stylesheet" href="../css/pc_ver.css">
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
				<a class="nav-link tab-modern__nav-link" href="/user/find_id">이메일 찾기</a>
				<a class="nav-link tab-modern__nav-link active" href="javascript:void(0);">비밀번호 찾기</a>
			</div>
			<div class="pt-4 pt-md-8">
				<form id="changePwForm" method="post" action="/user/change_pw_ok" novalidate="novalidate">
					<section class="section-form-group p-0">
						<label class="mb-1 mb-md-2" for="input_pw">새로운 비밀번호 *</label>
						<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
							<input class="form-control form-control-sm form__input form-control-grey" id="input_pw" type="password" name="password" value="" placeholder="새로운 비밀번호를 입력해주세요.">
							<div class="invalid-feedback text-danger" id="error_password" style="display:block;">&nbsp;</div>
						</div>
						<label class="mb-1 mb-md-2" for="input_certification">새로운 비밀번호 확인 *</label>
						<div class="form-btn-group mt-1 mt-md-2 mb-4 mb-md-8 pb-4 pb-md-8">
							<button class="btn btn-md btn-grey btn-zip rounded-8 disabled" type="button" style="display:none">완료</button>
							<input class="form-control form-control-sm form__input form-control-grey" id="input_certification" type="password" name="password_re" value="" placeholder="동일한 비밀번호를 입력해주세요.">
							<div class="invalid-feedback text-danger" id="error_password_re" style="display:block;">&nbsp;</div>
						</div>
						<button class="btn btn-dark btn-xl btn-block" type="submit">비밀번호 변경하기</button>
					</section>
              </form>
            </div>
			<!-- //결과-새로운 비밀번호-->
			</div>
			<!-- //이메일/비밀번호 찾기-->
		</div>
		
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
      </div>
</body>
</html>