<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/theme.css">
<link rel="stylesheet" href="/css/pc_ver.css">
<link rel="stylesheet" href="/css/findId.css">
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
					
					<div class="column" style="width: 600px;justify-content: normal;height: auto">
						<div class="font16 weight500 user_page_title">예약관리</div>
						
						
						<c:forEach items="${list }" var="list" varStatus="status">
							<div style="width: 100%; border: 1px solid #c4c4c4; margin-bottom: 30px" id="list-0">
							
								<div class="card-header card-collapse__header" id="status-collapse-heading-0">
									<button class="between status_toggle_btn collapsed" id="list-toggle-btn-0" type="button" data-toggle="collapse" data-target="#listCollapse-${status.count }" aria-expanded="false" aria-controls="listCollapse-0" >
	<!-- 								  <button class="collapsed between status_toggle_btn" id="list-toggle-btn-0" type="button" data-toggle="collapse" data-target="#listCollapse-0" aria-expanded="false" aria-controls="listCollapse-0" onclick="moveArrow('list-arrow-0','list-date-0')"> -->
										<div class="between">
											<input type ="hidden" name="sno">
											<div class="font-size-16 weight400" >
												<strong>${list.storeVO.sname } </strong>	
											</div>
											<div class="font-size-12 weight300" id="list-date-0" style="margin-left: 20px;">
												<span>${list.reserveVO.rdate }</span>
											</div>
										</div>
										<svg class="bi bi-caret-down-fill" id="list-arrow-0" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
											<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
										</svg>
									</button>
								</div>
								
								<div class="collapse" id="listCollapse-${status.count }" data-parent="#list-0" style="">
									<div class="list_store_img" style="background-image: url('${list.storeVO.simg}');"></div>
									<div class="column_center" style="padding: 50px 55px">
										<div style="width: 100%">
											<ul style="padding: 0; margin: 0">
												<li class="mb-5 font-size-16 weight300">예약지점
													<span class="weight500 float-right">
														<strong>${list.storeVO.sname }</strong>
													</span>
												</li>
												<li class="mb-5 font-size-16 weight300">예약종류
													<span class="weight300 float-right">
														<strong>&nbsp;</strong>
													</span>
												</li>
												<li class="mb-5 font-size-16 weight300">예약시간
													<span class="weight300 float-right">11:00</span>
												</li>
												<li class="mb-5 font-size-16 weight300">날짜
													<span class="weight300 float-right">${list.reserveVO.rdate }</span>
												</li>
												<li class="mb-5 font-size-16 weight300">인원
													<span class="weight300 float-right">${list.reserveVO.rstaff }</span>
												</li>
											</ul>
											<div class="between">
												<button class="list_change_btn" onclick="reserveEditCheck('edit', 61642, 'JL', '2022-07-15', '16:00:00')">
													<div class="font-size-16 weight300 width_100">예약변경</div>
												</button>
												<button class="list_cancel_btn" onclick="reserveEditCheck('cancel', 61642, 'JL', '2022-07-15', '16:00:00')">
													<div class="font-size-16 weight300 width_100">예약취소</div>
												</button>
											</div>
										</div>
									</div>
									<div class="divider_wrap">
										<div class="divider"></div>
									</div>
									<div class="col" style="padding: 0">
										<div class="accordion" id="accordion_list_0">
											<!-- 예약 현황 자세히 보기-->
											<div class="card">
												<div class="card-header card-collapse__header" id="list-accord-heading-0" style="padding: 0 55px">
													<button class="d-flex collapsed status_accord_btn" type="button" data-toggle="collapse" data-target="#list-accord-0" aria-expanded="false" aria-controls="list-accord-1" >
														<div class="font16 weight400">주소 보기</div>
														<svg class="bi bi-caret-down-fill" id="address-arrow-0" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
															<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
														</svg>
													</button>
												</div>
												<div class="collapse" id="list-accord-0">
													<div class="between" style="padding: 40px 70px 50px 65px; align-items: normal; height: 321px; background-color: #F5F5F5;">
														<div class="column_normal">
															<div>
																<div class="font-size-18 weight500 breezm_color">브리즘 ${list.storeVO.sname }</div>
																<div class="font-size-16 weight300">아이스가든</div>
															</div>
															<div class="font-size-16 weight300">
	<!-- 															<div>서울시 송파구 올림픽로 240 어드벤처동 -->
	<!-- 																<br> -->
	<!-- 																<strong>아이스가든</strong> 지하3층 -->
	<!-- 																<br> -->
	<!-- 																잠실역 롯데월드 매표소 방향 -->
	<!-- 															</div> -->
																	<div>
																		${list.storeVO.stext }
																	</div>
															</div>
															<div class="font-size-16 weight500">
																<div>주차가능</div>
																<div>최초 2시간 무료, 추가 10분 당 1,000원</div>
															</div>
														</div>
														<div>
															<div class="font-size-18 weight500">
																<a href="tel:02-411-0454" style="color:black;">02-411-0454</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- 예약 현황 자세히 보기-->
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						
						
					</div>
				</div>
			</div>
		</div>
		
	<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>

<!-- <div class="container center" style="height: 800px; border: 1px solid #c4c4c4;"> -->
<%-- 							<c:if test="${list == null }"> --%>
<!-- 								<div class="font-size-18 weight400">예약 내역이 없습니다.</div> -->
<%-- 							</c:if> --%>
							
							
<%-- 							<c:forEach items="${list }" var="list"> --%>
<%-- 								<c:if test="${list != null }"> --%>
								
<!-- 									<div class="font-size-18 weight400"> -->
<%-- 										<c:if test="${list.rtype  == 1}"> --%>
<!-- 											안경 맞춤 -->
<%-- 										</c:if> --%>
<%-- 										<c:if test="${list.rtype  == 2}"> --%>
<!-- 											수령 -->
<%-- 										</c:if>  --%>
<%-- 										<c:if test="${list.rtype  == 3}"> --%>
<!-- 											AS -->
<%-- 										</c:if>   --%>
<!-- 									</div> -->
<%-- 									<div class="font-size-18 weight400">동반인원 : ${list.rstaff }명</div> --%>
<%-- 									<div class="font-size-18 weight400">${list.rage }대</div> --%>
<%-- 								</c:if> --%>
<%-- 							</c:forEach> --%>
<!-- 						</div> -->