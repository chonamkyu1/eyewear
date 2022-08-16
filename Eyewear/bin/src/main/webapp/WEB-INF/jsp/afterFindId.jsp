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
	
	<div id="user-contents">
		<!-- Container-->
		<div class="width_100">
			<div class="center font-size-24 weight400" style="padding: 80px 0 60px;">이메일/ 비밀번호 찾기</div>
			<div class="center">
				<div class="find_wrapper">
				<div class="find_col">
					<img style="width: 220px; height: 254px" src="https://breezm.com/img/popup_img.png" alt="pop_up">
						<div class="font-size-24 weight500">1개의 계정을 찾았습니다.</div>
						<div class="font-size-18 weight300">
							<div class="breezm_color">wh15312@naver.com</div>
							<div>가입한 날짜 : 2022.06.19</div>
						</div>
						<button class="find_log_btn" onclick="login()">로그인</button>
						</div>
				</div>
			</div>
		</div>
		
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
      </div>
 <script>
 	function login() {
 		location.href= "/user/login";
 	}
 
 </script>     
      
</body>
</html>