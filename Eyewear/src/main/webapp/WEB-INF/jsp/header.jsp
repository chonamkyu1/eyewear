<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>브리즘 :: 나만의 퍼스널 아이웨어</title>
<link rel="stylesheet" href="/css/header.css">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>


</head>
<body>
	<div class="width100">
		<nav class="navbar fixed-top">
			<div class="center"> 
				<div class="min_width">
					<div class="between">
						<div>
							<a class="navbar-brand" href="/main">
								<div style="background-size: 100% 100%; width: 142px; height: 50px; background-image: url('https://breezm.com/img/logo.svg')"></div>
							</a>
						</div>
						<div class="menu">
							<div style="padding: 30px 0">
								<a class="menu-depth1" href="/main">Eyewear</a>
							</div>
							<ul class="submenu dropdown-menu-center">
								<li class="subDetail">
									<a class="menu-depth2" href="/topic=frame">Frame</a>
								</li>
								<div class="center">
									<div class="divider90"></div>
								</div>
								<li>
									<a class="menu-depth2" href="/topic=lens">Lens</a>
								</li>
								<div class="center">
									<div class="divider90"></div>
								</div>
								<li>
									<a class="menu-depth2" href="/topic=lookBook">LookBook</a>
								</li>
							</ul>
						</div>
						<div class="menu">
			                <div style="padding: 30px 0">
			                	<a class="menu-depth1" href="/board/faq">Info</a>
			                </div>
			                <ul class="submenu dropdown-menu-center" style="background: white;">
								<li>
									<a class="menu-depth2" href="/board/faq">FAQ</a>
								</li>
								<div class="center">
									<div class="divider90"></div>
								</div>
								<li>
									<a class="menu-depth2" href="/board/notice">Notice</a>
								</li>
							</ul>
						</div>
						
						<!-- 로그인 안한 상태 -->
						<c:if test="${member == null }"> 
							<div class="menu">
								<div style="padding: 30px 0">
									<a class="menu-depth1" href="/user/login">Login</a>
								</div>
								<ul class="submenu dropdown-menu-center" style="background: white;">
									<li>
										<a class="menu-depth2" href="/user/login">Login</a>
									</li>
									<div class="center">
										<div class="divider90"></div>
									</div>
									<li>
										<a class="menu-depth2" href="/user/join">Sign in</a>
									</li>
								</ul>
							</div>
						</c:if>
						
						
						<!-- 관리자 페이지 -->
						<c:if test="${member != null }">
							<c:if test="${member.adminCk == 1 }">
								<div class="menu">
									<div style="padding: 30px 0">
										<a class="menu-depth1" href="/admin/main">관리자페이지</a>
									</div>
									<ul class="submenu dropdown-menu-center" style="background: white;">
										<li>
											<a class="menu-depth2" href="/admin/main">관리자페이지</a>
										</li>
										<div class="center">
											<div class="divider90"></div>
										</div>
										<li>
											<a class="menu-depth2" href="/user/logout">Logout</a>
										</li>
									</ul>
								</div>
							</c:if>
						</c:if>
						
						
		<%-- 				
						<!-- 로그인한 상태 -->
						<c:if test="${member != null }">
							<div class="menu">
								<div style="padding: 30px 0">
									<a class="menu-depth1" href="/user/edit">User</a>
								</div>
								<ul class="submenu dropdown-menu-center" style="background: white;">
									<li>
										<a class="menu-depth2" href="/user/edit">Mypage</a>
									</li>
									<div class="center">
										<div class="divider90"></div>
									</div>
									<li>
										<a class="menu-depth2" href="/user/logout">Logout</a>
									</li>
								</ul>
							</div>
						</c:if>
						 --%>
						<a class="layout_reservation_btn pc_reservation_menu" href="/reserve" style="color: white">Reservation</a>
					</div>
				</div>
			</div>
		</nav>
	</div>
<script type="text/javascript" src="/js/header.js"></script>

</body>
</html>