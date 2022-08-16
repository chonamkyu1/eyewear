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
<link rel="stylesheet" href="../css/findId.css">
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
						<div class="font16 weight500 user_page_title">예약관리</div>
						<div class="container center" style="height: 800px; border: 1px solid #c4c4c4;">
							<div class="font-size-18 weight400">예약 내역이 없습니다.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>
	
	
	
</body>
</html>