<%@page import="com.Eyewear.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/theme.css">
<link rel="stylesheet" href="/css/pc_ver.css">
<link rel="stylesheet" href="/css/mypage.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
</head>
<body>
	
	<%@include file="/WEB-INF/jsp/header.jsp" %>
	
	
	<div style="height: 120px"></div>
	
	
	<div id="user-contents">
		<div class="width100">
			<div class="center" style="margin-top: 60px">
				<div class="evenly">
					<div class="center" style="width: 350px;border: 1px solid #c4c4c4;align-items: normal;height: 550px;" >
						<div class="column_between" style="width: 100%;">
							<!-- 프로필 이미지 -->
							<div class="img_container mb-4 mb-md-8">
								<input type="hidden" name="profile_image" value="">
								<img class="preview" id="preview" src="	https://breezm.com/img/preview_img.png" alt="..." title="">
								<input class="imgInp" id="profileImage" type="file">
								<label class="custom-file-label" for="profileImage">choose file</label>
							</div>
							<div class="user_name">
								${member.mname } <!-- header 세션 유지 값 -->
							</div>
							<div class="user_nav">
								<a class="user_nav_text" href="/user/status">제작현황 조회</a>
							</div>
							<div class="user_nav">
								<a class="user_nav_text" href="/reserve/list">예약 관리</a>
							</div>
							<div class="user_nav">
								<a class="user_nav_text" href="/user/review">나의 구매후기</a>
							</div>
							<div class="user_nav">
								<a class="user_nav_text user-nav-active" href="/user/edit">내 정보 관리</a>
							</div>
						</div>
					</div>
					
					<div class="column" style="width: 600px; height: auto;">
						<div class="font16 weight500" style="width: 100%; padding: 30px 30px 30px; border: 1px solid #c4c4c4;">내 정보 관리</div>
						<div style="padding: 30px; width: 100%; border: 1px solid #c4c4c4; margin-top: 20px">
							<div class="container">
								<form id="editForm" method="post">
									<section class="section-form-group section-form-group-modify">
										<label class="mb-1 mb-md-2" for="input_email">이메일 *</label>
										<div class="mt-1 mt-md-2 mb-4 mb-md-8">
											<input class="form-control form-control-sm form__input form-control-none" id="input_email" type="text" name="memail" value="${member.memail }" placeholder="이메일을 입력해주세요." disabled="">
											<div class="invalid-feedback text-danger" id="error_email" style="display:block;">&nbsp;</div>
										</div>
										
										<label class="mb-1 mb-md-2" for="input_old_pw">비밀번호 *</label>
										<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
											<button class="btn btn-md btn-dark btn-zip rounded-8" type="button" data-toggle="collapse" data-target="#basicsCollapse01" aria-expanded="true" aria-controls="basicsCollapse01">변경</button>
											<input class="form-control form-control-sm form__input form-control-grey oldpw_input" id="input_old_pw" type="password" name="old_password" value="" placeholder="현재 비밀번호를 입력해주세요.">
											<div class="invalid-feedback text-danger" id="error_old_password" style="display:block;">&nbsp;</div>
											<div class="final_pw_ck">비밀번호를 입력해주세요.</div>
											<div class="pwck_check_text">[!]현재 비밀번호가 틀렸습니다.</div>
											<div class="pwck_input_text">[!]비밀번호는 8자리 이상이어야 합니다.</div>
										</div>
										
										<div class="pb-2 pb-md-4">
											<div class="collapse" id="basicsCollapse01">
												<label class="mb-1 mb-md-2" for="input_pw">새로운 비밀번호 *</label>
												<div class="mt-1 mt-md-2 mb-2 mb-md-4">
													<input class="form-control form-control-sm form__input form-control-grey pw_input" id="input_pw" type="password" name="mpassword" value="" placeholder="새로운 비밀번호를 입력해주세요.">
													<div class="invalid-feedback text-danger" id="error_password" style="display:block;">&nbsp;</div>
													<div class="final_pw_ck">비밀번호를 입력해주세요.</div>
												</div>
												
												<label class="mb-1 mb-md-2" for="input_pw2">새로운 비밀번호 확인 *</label>
												<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
													<button class="btn btn-md btn-grey btn-zip rounded-8 disabled" type="button" style="display:none">완료</button>
													<input class="form-control form-control-sm form__input form-control-grey pwck_input" id="input_pw2" type="password" name="mpassword_re" value="" placeholder="동일한 비밀번호를 입력해주세요.">
													<div class="invalid-feedback text-danger" id="error_password_re" style="display:block;">&nbsp;</div>
													<div class="final_pwck_ck">비밀번호를 확인을 입력해주세요.</div>
													<div class="pwck_input_re_1">비밀번호가 일치합니다.</div>
													<div class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</div>
												</div>
											</div>
										</div>
										
										<label class="mb-1 mb-md-2" for="input_name">이름 *</label>
										<div class="mt-1 mt-md-2 mb-4 mb-md-8">
											<input class="form-control form-control-sm form__input form-control-grey name_input" id="input_name" type="text" name="mname" value="" placeholder="이름을 입력해주세요.">
											<div class="invalid-feedback text-danger" id="error_name" style="display:block;">&nbsp;</div>
											<div class="final_name_ck">이름을 입력해주세요.</div>
										</div>
										
										<label class="mb-1 mb-md-2" for="input_gender">성별</label>
										<div class="mt-1 mt-md-2 mb-4 mb-md-8">
											<div class="selection_dropselect">
												<div class="dropdown dropselect">
													<input type="hidden" name="mgender" id="mgender" value="">
													<button class="dropdown-toggle" id="input_gender" type="button" data-toggle="dropdown" aria-expanded="false">
														<span class="dropdown-label">남자</span>
													</button>
													<div class="dropdown-menu" role="menu" aria-labelledby="option-post-cleanup" style="width: 100% !important; position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);" x-placement="bottom-start">
														<a class="dropdown-item dropselect-option" style="font-size: 16px; cursor: pointer;" data-value="남자" role="menuitem" tabindex="-1"  data-selected="selected">남자</a>
														<a class="dropdown-item dropselect-option" style="font-size: 16px; cursor: pointer;" data-value="여자" role="menuitem" tabindex="-1" >여자</a>
													</div>
												</div>
											</div>
										</div>
										
										<label class="mb-1 mb-md-2" for="input_phone">전화번호 *</label>
										<div class="form-btn-group mt-1 mt-md-2 mb-2 mb-md-4">
<!-- 											<button class="btn btn-md btn-dark btn-zip rounded-8" type="button" name="edit_mobile" data-toggle="modal" data-target="#cus_personal_phone">수정</button> -->
											<input class="form-control form-control-sm form__input form-control-grey phone_input" id="input_phone" type="text" name="mphone" value="" placeholder="전화번호를 입력해주세요." >
											<div class="invalid-feedback text-danger" id="error_valid_mobile" style="display:block;">&nbsp;</div>
											<div class="final_phone_ck">전화번호를 입력해주세요.</div>
										</div>
										
										<input type="hidden" name="mid"  value="${memberVO.mid }" >
										
									</section>
									<div class="division-bg"></div>
									<section class="section-form-group section-form-group-modify pt-0 pt-md-0">
										<div class="row row-space5" style="justify-content: space-evenly">
											<div class="col-4">
												<button class="btn btn-white btn-xl btn-block" style="border: 1px solid black" type="button" onclick="pageTo(/user)">취소</button>
											</div>
											<div class="col-4">
												<button class="btn btn-dark btn-xl btn-block editButton" type="button">저장</button>
											</div>
										</div>
									</section>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>


<script>
	let password = '${member.mpassword}';
	console.log("password : " + password);
	let oldpwVal = false; 
	let oldpw = $(".oldpw_input").val();
	
// 	$(document).ready(function(){
// 		if (oldpw != password) {
// 			$('.pwck_check_text').css('display', 'block');
// 		} else {
// 			$('.pwck_check_text').css('display', 'none');
			
// 			console.log("ok");
// 		}
		
// 	});
	
	
	$('.oldpw_input').on("propertychange change keyup paste input", function(){
		oldpwVal = $(".oldpw_input").val();
		
		if (oldpwVal == password) {
			$('.pwck_check_text').css('display', 'none');
			console.log("같다~");
			oldpwVal = true;
		} else {
			$('.pwck_check_text').css('display', 'block');
			oldpwVal = false;
		}
		
		$('.pwck_input_text').css('display', 'none');
		
		if (oldpw.length > 0 && oldpw.length < 8) {
			$('.pwck_input_text').css('display', 'block');
			oldpwCheck = false;
		} else {
			$('.pwck_input_text').css('display', 'none');
			oldpwCheck = true;
		}
		
	});
	
	
</script>

<script type="text/javascript" src="/js/mypage.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>