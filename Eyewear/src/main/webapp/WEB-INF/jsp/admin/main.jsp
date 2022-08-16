<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="styleSheet" href="/css/admin/main.css">
</head>
<body>
	<%@include file="/WEB-INF/jsp/header.jsp" %>
	
			<!-- top_subject_area -->
			<div class="admin_top_wrap">
				<span>관리자 페이지</span>
			</div>
	
			<!-- contents-area -->
			<div class="admin_wrap">
				<!-- 네비영역 -->
				<div class="admin_navi_wrap">
					<ul>
						<li>
							<a class="admin_list_01" href="/admin/goodsEnroll">매장 등록</a>
						</li>
						<li>
							<a class="admin_list_02" href="/admin/goodsManage">매장 관리</a>
						</li>
						<li>
							<a class="admin_list_03" href="/admin/authorEnroll">작가 등록</a>                            
						</li>
						<li>
							<a class="admin_list_04" href="/admin/authorManage">작가 관리</a>                            
						</li>
						<li>
							<a class="admin_list_05">회원 관리</a>                            
						</li>                                                                                             
					</ul>
				</div>
				<div class="admin_content_wrap">
					<div>관리자 페이지 입니다.</div>
				</div>
				<div class="clearfix"></div>
			</div>
	
	
	<div style="height: 120px;"></div>
</body>
</html>