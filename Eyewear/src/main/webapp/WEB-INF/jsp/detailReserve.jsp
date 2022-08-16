<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("replaceChar", "/"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/theme.css">
<link rel="stylesheet" href="/css/pc_ver.css">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<link rel="stylesheet" type="text/css" href="/css/jsCalendar.css">
<script type="text/javascript" src="/js/jsCalendar.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f1fe93fd259e379f4433d83e2cf4ecc9&libraries=services,clusterer,drawing"></script>
	


</head>
<body>

	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>
	
	<div id="user-contents">
		<!-- Container-->
		<div class="width100">
			<div>
				<div class="center">
					<div class="text_center" style="background-image: url('https://breezm.com/img/reserve/select_jl.png'); background-size: 100% 100%; width:1440px; height:447px">
						<div class="font-size-24 weight400 align_center" style="color: white;">브리즘 잠실롯데월드점<br>특별한 경험을 위한 예약을 도와 드리겠습니다.</div>
					</div>
				</div>
				<section class="section-wrap section-reservation">
					<form id="reserveForm"  method="post">
						<div class="center">
							<div class="min_width">
							
								<input type="hidden" name="mid"  value="${memberVO.mid }" >			
								<div class="card res_detail_box">
									<div class="flex_end mb-25">
										<div class="font-size-24 weight300">예약 종류</div>
									</div>
									<div class="divider"></div>
									<div class="my-150">
										<div class="between">
											<div class="detail_select_box">
												<div class="custom-control custom-radio custom-radio-auto">
													<input class="custom-control-input" id="type_custom" type="radio" name="rtype" value= "1" checked="checked"  onclick="clickReserveType(event)">
													<label class="custom-control-label" for="type_custom">
														<span>안경 맞춤</span>
													</label>
												</div>
											</div>
											<div class="detail_select_box">
												<div class="custom-control custom-radio custom-radio-auto">
													<input class="custom-control-input" id="type_package" type="radio" name="rtype" value= "2" onclick="clickReserveType(event)">
													<label class="custom-control-label" for="type_package">
														<span>수령</span>
													</label>
												</div>
											</div>
											<div class="detail_select_box">
												<div class="custom-control custom-radio custom-radio-auto">
													<input class="custom-control-input" id="type_as" type="radio" name="rtype"  value= "3" onclick="clickReserveType(event)">
													<label class="custom-control-label" for="type_as">
														<span>AS</span>
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="card res_detail_box">
									<div class="flex_end mb-25">
										<div class="font-size-24 weight300">상담 인원</div>
										<div class="select_subtitle">상담이 필요한 인원을 선택해 주세요. (동반 인원 제외)</div>
									</div>
									<div class="divider"></div>
									<div>
										<div class="my-150">
											<div class="between">
												<div class="detail_select_box">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="person_1" type="radio" name="rstaff" value = "1" checked="checked" onclick="clickReservePerson(event)">
														<label class="custom-control-label" for="person_1">
															<span>01</span>
														</label>
													</div>
												</div>
												<div class="detail_select_box">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="person_2" type="radio" name="rstaff" value = "2" onclick="clickReservePerson(event)">
														<label class="custom-control-label" for="person_2">
															<span>02</span>
														</label>
													</div>
												</div>
												<div class="detail_select_box" style="display: none">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="person_3" type="radio" name="rstaff" onclick="clickReservePerson(event)">
														<label class="custom-control-label" for="person_3">
															<span>03</span>
														</label>
													</div>
												</div>
												<div class="detail_select_box" style="display: none">
													<div class="custom-control custom-radio custom-radio-auto">
														<input class="custom-control-input" id="person_4" type="radio" name="rstaff" onclick="clickReservePerson(event)">
														<label class="custom-control-label" for="person_4">
															<span>04</span>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="card res_detail_box">
									<div class="flex_end mb-25">
										<div class="font-size-24 weight300">연령</div>
										<div class="select_subtitle">맞춤 상담 준비를 위해 고객님의 연령대를 알려주세요.</div>
									</div>
									<div class="divider"></div>
									<div class="my-100">
										<div class="font-size-14 weight300 breezm_color mb-25">2인 이상 방문 시, 가장 연장자의 연령대를 선택해 주세요</div>
										<div class="selection_dropselect">
											<div class="dropdown dropselect">
												<input type="hidden" name="rage" id="input_age" value="" >
												<button class="age_drop_btn between" id="input_age2" type="button" data-toggle="dropdown" aria-expanded="true" style="border-radius:0px!important;border-color:#000!important">
												<span class="dropdown-label">연령을 선택해주세요.</span>
													<svg class="bi bi-caret-down-fill" id="age-arrow" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
														<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
													</svg>
												</button>
												<div class="dropdown-menu" role="menu" aria-labelledby="option-post-cleanup" style="border-radius:0px!important;border-color:#000!important">
													<a class="dropdown-item dropselect-option" data-value="20" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">20대 이하</a>
													<a class="dropdown-item dropselect-option" data-value="30" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">30대</a>
													<a class="dropdown-item dropselect-option" data-value="40" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">40대</a>
													<a class="dropdown-item dropselect-option" data-value="50" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">50대</a>
													<a class="dropdown-item dropselect-option" data-value="60" role="menuitem" tabindex="-1" data-selected=""  style="cursor: pointer;">60대 이상</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								
								<div class="card res_detail_box">
									<div class="flex_end mb-25">
										<div class="font-size-24 weight300">날짜 &amp; 시간 선택</div>
									</div>
									<div class="divider"></div>
									<div class="my-150">
										<div class="pt-1 pt-md-2 pb-3 pb-md-6">
											<div class="mb-3 mb-md-6">
												<div class="table-calendar-yearmonth">
													<input type="text" id="input_date" name="rdate" value="" >
													<button type="button" id="prev_week" style="margin-right:12px" onclick="changeMonth(-1);">&lt; &nbsp;</button>
	<!-- 												<span id="cur_ym">여기 이전, 다음버튼 클릭시 해당 년,월 나오게</span> -->
													<input type="text" id="year" value="2022" style="width: 80px; display: initial;" class="form-control">
													<select id="month" class="form-control" style="width: 80px; display: initial;" onchange="changeMonth();">
														<option value="1">1월</option>
														<option value="2">2월</option>
														<option value="3">3월</option>
														<option value="4">4월</option>
														<option value="5">5월</option>
														<option value="6">6월</option>
														<option value="7">7월</option>
														<option value="8">8월</option>
														<option value="9">9월</option>
														<option value="10">10월</option>
														<option value="11">11월</option>
														<option value="12">12월</option>
													</select>
													<button type="button" id="next_week" style="margin-left:12px" onclick="changeMonth(1);">&gt; &nbsp;</button>
												</div>
												<table class="table-calendar text-center">
													<thead>
														<tr>
															<th scope="col">SUN</th>
															<th scope="col">MON</th>
															<th scope="col">TUE</th>
															<th scope="col">WED</th>
															<th scope="col">THU</th>
															<th scope="col">FRI</th>
															<th scope="col">SAT</th>
														</tr>
													</thead>
													<tbody id="tb_body">
														
													</tbody>
												</table>
											</div>
										</div>
										<div class="divider my-100"></div>
										<div class="pt-1 pt-md-2 pb-3 pb-md-6">
											<div class="mb-3 mb-md-6">
												<div class="row" id="reserve_time">
													<div class="col-3 mb-2 mb-md-4">
														<div class="custom-control custom-radio custom-radio-auto">
															<input class="custom-control-input" id="time_1100" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
															<label class="custom-control-label" for="time_1100">
																<span>11:00</span>
															</label>
														</div>
													</div>
													<div class="col-3 mb-2 mb-md-4">
														<div class="custom-control custom-radio custom-radio-auto">
															<input class="custom-control-input" id="time_1130" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
															<label class="custom-control-label" for="time_1130">
																<span>11:30</span>
															</label>
														</div>
													</div>
													<div class="col-3 mb-2 mb-md-4">
														<div class="custom-control custom-radio custom-radio-auto">
															<input class="custom-control-input" id="time_1200" type="checkbox" name="timeRadio" disabled="" onclick="clickReserveTime(event)">
															<label class="custom-control-label" for="time_1200">
																<span>12:00</span>
															</label>
														</div>
													</div>
													
													<input type="hidden" name="sno" value=${svo.sno }>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								
								
								
								<div class="card res_detail_box">
									<div class="flex_end mb-25">
										<div class="font-size-24 weight300">오시는 길</div>
									</div>
									<div class="divider"></div>
									<div class="my-100">
										<div>
											<div id="map" style="width:960px;height:500px;"></div>
											<div>
												<div class="between my-50">
													<div class="flex_end">
														<div class="font-size-32 weight500">${svo.sname }</div>
														<div class="font-size-24 weight300 ml-30">${svo.ssubname }</div>
													</div>
													<div class="font-size-24 weight500"><a href="tel:02-411-0454">
														<strong>${svo.sphone }</strong></a>
													</div>
												</div>
												<div class="between">
													<div class="font-size-18 weight300">
														${fn:replace(svo.stext, replaceChar, "<br/>")}
													</div>
													<div>
														<div style="text-align: right">주차가능</div>
														<div>최초 2시간 무료, 추가 10분 당 1,000원</div>
													</div>
												</div>
										</div>
		                          
		                        </div>
		                      </div>
		                    </div>
								
							</div>
						</div>
						
						<div class="center width_100" style="background-color: #E5E5E5; height: 560px">
							<div class="center">
								<div class="column_center" style="width: 410px">
									<div class="font-size-24 weight500">이용시 주의 사항</div>
									<div class="font-size-24 weight500">브리즘은 사전예약제로 운영됩니다.</div>
									<div class="column_center my-50 font-size-16 weight300">
										<div>한 분, 한 분께 더 나은 Fit을 찾아드리기 위한 1:1 상담과</div>
										<div>시착 서비스를 제공해 드리고 있습니다.</div>
										<div>일정 변경은 마이페이지와 매장 전화로 진행 하실 수 있습니다.</div>
									</div>
									<div class="accept-terms mb-40">
										<div class="custom-control custom-checkbox custom-checkbox-hb custom-control-inline">
											<input class="custom-control-input" id="termsPrivacyAccess" type="checkbox"  checked="checked">
											<label class="custom-control-label" for="termsPrivacyAccess">브리즘<a href="javascript:void(0);">이용자 약관</a>에 전체 동의합니다.</label>
										</div>
									</div>
									<button class="pc_reserve_btn" id="btn_reserve" type="button">예약하기</button>
								</div>
							</div>
						</div>
					
					</form>
				</section>
			</div>
		</div>
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>	
	
	
	
<script>
	// 지도 ~~~
	var container = document.getElementById("map");
	var options = {
		center: new kakao.maps.LatLng(${svo.slat}, ${svo.slng}),
		level: 4
	};
	var map = new kakao.maps.Map(container, options);
	
	map.setZoomable(false);
	
	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "https://breezm.com/img/breezm_marker.png";
	
	var imageSize = new kakao.maps.Size(64, 69);
	
	// 마커 이미지를 생성합니다    
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
	
	// 마커를 생성합니다
		marker = new kakao.maps.Marker({
		map : map, // 마커를 표시할 지도
		position : new kakao.maps.LatLng(${svo.slat}, ${svo.slng}),
		image : markerImage, // 마커 이미지 
		clickable : true
	});
</script>

<script type="text/javascript" src="/js/detailReserve.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>