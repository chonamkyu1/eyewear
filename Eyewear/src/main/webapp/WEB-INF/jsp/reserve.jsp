<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

</head>
<body>

	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>
	
	<div id="user-contents">
		<!-- Container-->
		<div class="width100">
			<div class="text_center" style="background-image: url('https://s3.ap-northeast-2.amazonaws.com/breezm.com/images/homepage/reserve_index_1.png'); background-size: 100% 100%; width: 100%; height:446px;">
				<h2 class="weight400 align_center text-white">나만의 퍼스널 아이웨어</h2>
			</div>
			<div class="center">
				<div class="min_width">
					<div>
						<h2 class="my-110 weight300 font-size-26 align_center">
							브리즘<strong>방문예약</strong>
						</h2>
					</div>
					<div class="res_wrapper" id="reserve-store-list">
						<c:forEach items="${store }" var="sList">
							<div class="res_column">
								<div style="background-image: url('	${sList.simg}'); width: 260px; height: 172px"></div>
								<div class="column_between align_center" style="height: 90px">
									<div class="text_16 weight700">${sList.sname }</div>
									<div class="text_16">${sList.sphone }</div>
									<div class="text_16">${sList.stime }</div>
								</div>
								<div>
								<c:if test="${reserveLogin == null }">  <!-- 세션에 값이 없으면 로그인 모달창 뜨고 -->
<!-- 									<a class="res_button reservation-reserve-JL" href="/reserve/select?store=JL">예약하기</a> -->
									<a class="res_button reservation-reserve-JL" href="javascript:void(0);" onclick="guestReserve()">예약하기</a>
								</c:if>
								<c:if test="${reserveLogin != null }"> <!-- 세션에 값이 있으면 바로 예약페이지 넘기기 -->
								 <a class="res_button reservation-reserve-JL" href="/reserve/detailReserve?snick=${sList.snick }">예약하기</a>
								</c:if>
<!-- 									<a class="res_button reservation-reserve-JL" href="javascript:void(0);" onclick="guestReserve('JL')">예약하기</a> -->
<%-- 										<%=reserve %> --%>
								</div>
							</div>
						</c:forEach>	
					</div>
					<div class="divider"></div>
					<h2 class="my-110 weight300 align_center">고객들의 생생한 후기를 살펴보세요.</h2>
					<div class="around">
						<div class="column_between align_center" style="height: 200px">
							<div class="font-size-30">
								<span class="breezm_color weight500">4.8</span>
								<span class="weight300"> / 5</span>
							</div>
							<div style="display: flex;">
								<div class="star-ratings star-margin" style="width: 44px;">
									<div class="fill-ratings" style="width: 100%">
										<span>★</span>
									</div>
									<div class="empty-ratings">
										<span>★</span>
									</div>
								</div>
								<div class="star-ratings star-margin" style="width: 44px;">
									<div class="fill-ratings" style="width: 100%">
										<span>★</span>
									</div>
									<div class="empty-ratings">
										<span>★</span>
									</div>
								</div>
								<div class="star-ratings star-margin" style="width: 44px;">
									<div class="fill-ratings" style="width: 100%">
										<span>★</span>
									</div>
									<div class="empty-ratings">
										<span>★</span>
									</div>
								</div>
								<div class="star-ratings star-margin" style="width: 44px;">
									<div class="fill-ratings" style="width: 100%">
										<span>★</span>
									</div>
									<div class="empty-ratings">
										<span>★</span>
									</div>
								</div>
								<div class="star-ratings" style="width: 44px;">
									<div class="fill-ratings" style="width: 80%">
										<span>★</span>
									</div>
									<div class="empty-ratings">
										<span>★</span>
									</div>
								</div>
							</div>
							<div class="font-size-24 weight300">
									<span class="counter weight500" data-target="784">${listCnt }</span>개 의 후기
							</div>
						</div>
						<div class="chart" style="width: 400px;height: 200px;">
							<div class="chartjs-size-monitor">
								<div class="chartjs-size-monitor-expand">
									<div class=""></div>
								</div>
								<div class="chartjs-size-monitor-shrink">
									<div class=""></div>
								</div>
								<canvas id="starScoreChart" style="display: block;width: 400px;height: 200px;" width="400" height="200" class="chartjs-render-monitor"></canvas>
							</div>
						</div>
					</div>
					<div class="divider mb-50"></div>
					<div class="dropdown">
						<button class="store_toggle_btn dropdown-toggle" id="dropdownMenuButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">매장별 후기</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="border: 1px solid; padding: 0px; position: absolute; transform: translate3d(0px, 56px, 0px); top: 0px; left: 0px; will-change: transform;" x-placement="bottom-start">
							<a class="dropdown-item store_item" href="javascript:void(0);" onclick="reviewInitData('','')">전체보기</a>
							<a class="dropdown-item store_item" href="javascript:void(0);" onclick="reviewInitData('jl','잠실롯데월드점')">잠실롯데월드점</a>
							<a class="dropdown-item store_item" href="javascript:void(0);" onclick="reviewInitData('ss','삼성점')">삼성점</a>
							<a class="dropdown-item store_item" href="javascript:void(0);" onclick="reviewInitData('sc','서울시청점')">서울시청점</a>
							<a class="dropdown-item store_item" href="javascript:void(0);" onclick="reviewInitData('yd','여의도점')">여의도점</a>
							<a class="dropdown-item store_item" href="javascript:void(0);" onclick="reviewInitData('yk','역삼점')">역삼점</a>
							<a class="dropdown-item store_item" href="javascript:void(0);" onclick="reviewInitData('pg','판교점')">판교점</a>
						</div>
					</div>
					
					<div id="review-list">
						<c:forEach items="${review }" var="reviewList">
							<div class="mt-60">
								<div class="review-star-ratings" style="width: 100px;">
									<div class="fill-ratings" style="width: 100%">
										<span>★★★★★</span>
<%-- 										${reviewList.rvstar }점 --%>
									</div>
									<div class="empty-ratings">
										<span>★★★★★</span>
										${reviewList.rvstar }점 
									</div>
								</div>
								<div style="width: 770px; height: auto; margin-top: 20px">
									${reviewList.rvtext }     
									
								</div>
								<div class="between" style="padding: 44px 0">
									<div class="flex_end">
										<div class="font16 weight300">${reviewList.mid }</div>
										<div style="padding: 0 8px">|</div>
										<div class="breezm_color font16 weight500">${reviewList.sname }</div>
									</div>
									<div class="font16 weight300">${reviewList.rvdate }</div>
								</div>
								<div class="divider"></div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 	pagination start!!!	 -->
	
			<div id="paginationBox" class="pagination1">
				<ul class="pagination" style="justify-content: center;">
				
					<c:if test="${pagination.prev }">
							<li class="page-item">
								<a class="page-link" href="#" onclick="fn_prev('${pagination.page}', '${pagination.range }', '${pagination.rangeSize }'
								, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')"> 이전
								</a>
							</li>
					</c:if>
					
					<c:forEach begin="${pagination.startPage }" end="${pagination.endPage }" var="p_no">
						<li class="page-item <c:out value="${pagination.page == p_no ? 'active' : ''}"/>">
							<a class="page-link" href="#" onclick="fn_pagination('${p_no}', '${pagination.range }', '${pagination.rangeSize }'
							, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')"> ${p_no }
							</a>
						</li> 
					</c:forEach>
					
					 <c:if test="${pagination.next}">
						<li class="page-item">
							<a class="page-link" href="#" onclick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize }'
							, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')">다음
							</a>
						</li>
					</c:if>
		 		</ul>
			</div>
		
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
		
	</div>
	
	<div class="modal fade" id="res_non_member" tabindex="-1" role="dialog" style="display: none;" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content pb-30">
				<div class="modal-header modal_flex_end">
					<button type="button" data-dismiss="modal" aria-label="Close" title="창닫기">
						<span class="ti-close">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  								<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
							</svg>
						</span>
					</button>
				</div>
				<div class="popup-body center">
					<div class="column_between align_center" style="height: 450px">
						<img style="width: 200px; height: 200px" src="	https://breezm.com/img/reserve/res_non_member.png" alt="res_non_member">
						<div class="weight500 font-size-24">아직 브리즘 회원이 아니신가요?</div>
						<div class="weight300 font-size-16">회원가입을 하시면 더욱 다양한 헤택을 누리실수 있습니다.</div>
						<div class="between">
							<a class="find_log_btn membership-movetologinpage" style="padding: 12px 47px" href="javascript:loginForReserve()" >로그인</a>
							<div class="col-7">
							<button class="non_member_btn membership-guestreserve" type="button" data-dismiss="modal" data-toggle="modal" data-target="#res_confirm">비회원 예약하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
		
		
	</div>
	
		
	
<script>


 	function guestReserve() {
 		$("#res_non_member").modal('show');
	
	return false;
 	}

	function loginForReserve() {
		location.href = "/user/login/reserve/select";
	}
	
	function reviewInitData(_snick, text) {
		let snick = _snick;
		console.log("snick : ", snick);
// 		let paging = $("#paginationBox").val(); 
// 		console.log("paging : ", paging);
		
		
		if (text != '') {
			$("#dropdownMenuButton").html(text);
		} else {
			$("#dropdownMenuButton").html('매장별 후기');
		} 
		
		fetch('/review/list?snick=' + snick, {
			method : 'get',
		})
		.then((response) => response.json())
		.then((data) => {
// 			console.log("data : ", data);전자정부프레임워크 비동기 페이징
			
			dataList = data.storeReview;
			
			console.log("dataList: ", dataList);
			
			
			
			let dispHtml = "";
			$.each(dataList, function(index, value) {
				
				dispHtml += "<div class='mt-60'>";
				dispHtml += 	"<div class='review-star-ratings' style='width: 100px;'>";
				dispHtml += 		"<div class='fill-ratings' style='width: 100%'>";
				dispHtml +=				"<span>★★★★★</span>";
				dispHtml += 		"</div>";
				dispHtml += 		"<div class='empty-ratings'>";
				dispHtml +=				"<span>★★★★★</span> <br>";
				dispHtml +=				dataList[index].rvstar + "점"
				dispHtml += 		"</div>";
				dispHtml += 	"</div>";
				dispHtml += 	"<div style='width: 770px; height: auto; margin-top: 20px'>";
				dispHtml += 		dataList[index].rvtext      
				dispHtml += 	"</div>";
				dispHtml += 	"<div class='between' style='padding: 44px 0'>";
				dispHtml += 		"<div class='flex_end'>";
				dispHtml += 			"<div class='font16 weight300'>${reviewList.mid }</div>";
				dispHtml += 			"<div style='padding: 0 8px'>|</div>";
				dispHtml += 			"<div class='breezm_color font16 weight500'>" + dataList[index].sname + "</div>";
				dispHtml += 		"</div>";
				dispHtml += 		"<div class='font16 weight300'>" + dataList[index].rvdate + "</div>";
				dispHtml += 	"</div>";
				dispHtml += 	"<div class='divider'></div>";
				dispHtml += "</div>";
				
				$("#review-list").html(dispHtml);
			})
	
		})
		
	}
	


	// 이전 버튼 이벤트
	// 5개의 인자값을 가지고 이동 testList.do
	// 무조건 이전페이지 범위의 가장 앞 페이지로 이동
	
	function fn_prev(page, range, rangeSize, listSize, searchType) {	
		var page = ((range -2) * rangeSize) + 1;		
		var range = range - 1;

		var url = "/reserve";  // ajax로 값 넘기기
			
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&rangeSize=" + rangeSize;
			url += "&listSize=" + listSize;
			url += "&searchType=" + searchType;
			console.log("url:", url);
			location.href = url;
	}

	// 페이지 번호 클릭
	function fn_pagination(page,  range, rangeSize, listSize, searchType) {	
		
		var url = "/reserve";  // ajax로 값 넘기기
			
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&rangeSize=" + rangeSize;
			url += "&listSize=" + listSize;
			url += "&searchType=" + searchType;
			console.log ("url: ", url);
			location.href = url;
	}

	// 다음 버튼 이벤트
	// 다음 페이지 범위의 가장 앞 페이지로 이동
	function fn_next(page, range, rangeSize, listSize, searchType) {	
		var page = parseInt((range * rangeSize)) + 1
		var range = parseInt(range) + 1;
		
		var url = "/reserve";  // ajax로 값 넘기기	
			
			url += "?page=" + page;  // 1
			url += "&range=" + range;  // 1
			url += "&rangeSize=" + rangeSize;  // 5
			url += "&listSize=" + listSize;  // 5
			url += "&searchType=" + searchType;
			console.log("url: ", url);
			location.href = url;
	}
	
	
	
	$(document).ready(function(){
		const scoreArray= [2,0,0,0,0];
		const stackArray = [0,0,0,0,2];
		
		const ctx = $("#starScoreChart");
		const data = {
			labels: ['5점','4점','3점','2점','1점'],
			datasets: [
				{
					data: scoreArray,
					backgroundColor: '#003C7E',
	                barThickness : 28 
				},
				{
					data: stackArray,
					backgroundColor:'#e5e5e5',
	                barThickness : 28 
				}
			],	
		}
		
		const myChart = new Chart(ctx, {
			type: "bar",
			data: data,
			responsive: false,
			options: {
				events: [],
				legend: {display : false},
				scales: {
					xAxes: [{
						gridLines: {display: false},
						ticks: {
							fontColor: '#858585',
							fontsize: 16,
							padding: 20,
							fontStyle: 300
						},
						stacked: true
					}],
					yAxes: [{
						gridLines: {display: false},
						ticks: {
							beginAtZero: true,
							display: false,
							padding: 40
						},
						stacked: true
					}]
				},
			}
		})
		
	});
	
	
	
</script>	
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>