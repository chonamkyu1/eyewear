<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/faq.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>

	<%@include file="/WEB-INF/jsp/header.jsp" %>
	
	
	<div style="height: 120px"></div>

	<div id="user-contens">
		<div class="width100">
			<div class="column_center">
				<div class="center text-white" style="width: 100%; height: 450px; background-color: black">
					<div class="align_center font24 weight400">
						이용에 궁금하신 점이 있으신가요?
						<br>
						<strong>브리즘 고객센터</strong>
					</div>
				</div>
			
				<div class="notice" id="faq">
					<div class="cate-group">
						<div class="cate-header">브리즘 이용안내</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading01-01">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn1" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse01-01" aria-expanded="false"
								 aria-controls="faqCollapse01-01">
									<h5 class="faq_btn">맞춤 안경은 기존 안경과 어떻게 다른가요?</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse01-01" data-parent="#faq">
								<div class="card-body card-collapse__body">
									안경은 지금까지 꼭 필요하니까 불편함을 참고 쓰는 물건이었습니다.
									<br><br>
									그 이유는 우리 얼굴은 모두 다름에도 안경에 이런 차이를 반영할 수 없었기 때문입니다.
									<br><br>
									브리즘 맞춤 안경은 IT와 3D프린팅 기술을 활용하여 얼굴의 넓이와 길이는 물론 귀 높이, 코높이, 
									눈 사이 거리, 광대 높이 같은 디테일까지 안경 설계와 제작에 반영할 수 있으며
									<br><br>
									얼굴의 단순한 외형적 차이를 넘어 사물을 보는 각도, 방향 등과 같은 광학적 특성까지 고려한 온전히
									고객 한 사람을 위한 안경을 만들어 갑니다.
								</div>
							</div>
						</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading01-02">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn2" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse01-02" aria-expanded="false"
								 aria-controls="faqCollapse01-02">
									<h5 class="faq_btn">맞춤 안경 제작 방식과 기간이 궁금해요.</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse01-02" data-parent="#faq">
								<div class="card-body card-collapse__body">
									오프라인 스토어에서 3D 얼굴 스캔과 빅데이터 분석을 통한 디자인, 사이즈 추천 후,
									<br><br>
									상세 분석 데이터를 바탕으로 맞춤 설계가 진행됩니다.
									<br><br>
									완성된 맞춤 설계는 정밀한 산업용 SLS 3D Printer와 FDA에서 안정성을 승인받은 PA12 
									소재를 사용하여 가볍고 튼튼한 맞춤 안경으로 완성됩니다.<br><br>브리즘 맞춤 안경은 기성 안경과 달리 온전히 
									고객 한 분만을 위한 주문 제작 안경으로 주문과 동시에 제작이 진행됩니다.
									<br><br>
									결제일로부터 안경 수령까지 약 2주 정도의 제작 기간이 소요됩니다.
								</div>
							</div>
						</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading01-03">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn3" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse01-03" aria-expanded="false"
								 aria-controls="faqCollapse01-03">
									<h5 class="faq_btn">브리즘 오프라인 스토어는 어떤 곳인가요?</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse01-03" data-parent="#faq">
								<div class="card-body card-collapse__body">
									오프라인 스토어에서 3D 얼굴 스캔과 빅데이터 분석을 통한 디자인, 사이즈 추천 후,
									<br><br>
									상세 분석 데이터를 바탕으로 맞춤 설계가 진행됩니다.
									<br><br>
									완성된 맞춤 설계는 정밀한 산업용 SLS 3D Printer와 FDA에서 안정성을 승인받은 PA12 
									소재를 사용하여 가볍고 튼튼한 맞춤 안경으로 완성됩니다.<br><br>브리즘 맞춤 안경은 기성 안경과 달리 온전히 
									고객 한 분만을 위한 주문 제작 안경으로 주문과 동시에 제작이 진행됩니다.
									<br><br>
									결제일로부터 안경 수령까지 약 2주 정도의 제작 기간이 소요됩니다.
								</div>
							</div>
						</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading01-04">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn4" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse01-04" aria-expanded="false"
								 aria-controls="faqCollapse01-04">
									<h5 class="faq_btn">온라인으로 브리즘 안경을 구매할 수 있나요?</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse01-04" data-parent="#faq">
								<div class="card-body card-collapse__body">
									맞춤 안경에 대한 완성된 경험을 제공해 드리기 위해 브리즘 안경은 현재 오프라인 스토어를 통해서만 판매되고 있습니다.
									<br><br>
									21년 하반기 중 출시가 예정되어 있는 북미 시장용 APPLICATION 을 통해 충분한 경험을 쌓은 뒤
									<br><br>
									추후 국내에서도 온라인을 통해 맞춤 안경을 만나보실 수 있는 환경을 만들어가겠습니다.
								</div>
							</div>
						</div>
					</div>
					
					<div class="cate-group">
						<div class="cate-header">오프라인 스토어</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading02-01">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn5" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse02-01" aria-expanded="false"
								 aria-controls="faqCollapse02-01">
									<h5 class="faq_btn">오프라인 스토어는 어떻게 이용할 수 있나요?</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse02-01" data-parent="#faq">
								<div class="card-body card-collapse__body">
									오프라인 스토어는 고객 한 분, 한 분에게 더 나은 경험을 제공해 드리기 위해 1:1 사전예약제로 운영되고 있습니다.
									<br><br>
									홈페이지 내 [reservation]을 통해 스토어 방문 예약을 부탁드립니다.
									<br><br>
									오프라인 스토어의 위치, 날짜 및 시간을 확인 후 예약을 진행해 주세요.
									<br><br>
									*서비스 소요 시간
									<br>
									맞춤 안경테 상담 : 15~30분
									<br>
									렌즈 맞춤 상담 : 15~30분
									<br><br
									>약속된 예약 시간 보다 늦게 도착하신 경우 서비스가 일부 제한되거나 대기 시간이 발생할 수 있습니다.
								</div>
							</div>
						</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading02-02">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn6" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse02-02" aria-expanded="false"
								 aria-controls="faqCollapse02-02">
									<h5 class="faq_btn">오프라인 스토어의 위치와 운영 시간을 알려주세요.</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse02-02" data-parent="#faq">
								<div class="card-body card-collapse__body">
									오프라인 스토어는 잠실롯데월드점 / 삼성점 / 서울시청점 / 여의도점 / 역삼점 / 판교점 총 6개의 스토어가 운영되고 있습니다.
									<br><br>
									<strong>브리즘 잠실롯데월드점</strong>: 서울시 송파구 올림픽로 240, 어드벤처동 지하3층
									<br>
									<strong>브리즘 삼성점</strong>: 서울특별시 강남구 영동대로 85길 34, 대치2차 아이파크 207호
									<br>
									<strong>브리즘 서울시청점</strong>: 서울특별시 중구 서소문로 124, 씨티스퀘어 1층
									<br>
									<strong>브리즘 여의도점</strong>: 서울시 영동포구 의사당대로 127, 롯데캐슬엠파이어 1층
									<br>
									<strong>브리즘 역삼점</strong>: 서울특별시 강남구 테헤란로 129, 강남N타워 G층
									<br>
									<strong>브리즘 판교점</strong>: 경기도 성남시 분당구 판교역로 152, 알파돔타워 지하1층 2Unit
									<br><br>
									<strong>운영시간</strong>: 매일 11:00 – 20:00(연중 무휴, 설·추석 당일 휴무)
									<br><br>
									주소와 연락처는 예약페이지에 상세하게 안내되어 있습니다.
									<br>
									<a class="text-dark" href="/reserve"><strong>[스토어 예약하기]</strong></a>
								</div>
							</div>
						</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading02-03">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn7" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse02-03" aria-expanded="false"
								 aria-controls="faqCollapse02-03">
									<h5 class="faq_btn">방문 예약 취소/변경은 어떻게 하나요?</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse02-03" data-parent="#faq">
								<div class="card-body card-collapse__body">
									오프라인 스토어 예약 변경/취소 방법은 다음과 같습니다.
									<br><br>
									홈페이지 회원 가입 고객
									<br>
									login → my page → 예약관리를 통해 기존 예약을 변경/취소 하실 수 있습니다. 카카오톡으로 발송되는 링크를 통해서도 예약 변경/취소를 진행하실 수 있습니다.
									<br><br>
									비회원 예약 고객
									<br>
									예약 완료후, 카카오톡으로 발송되는 링크를 통해 예약 변경/취소를 진행하실 수 있습니다.
								</div>
							</div>
						</div>
					</div>
					
					<div class="cate-group">
						<div class="cate-header">결제(취소), 반품(교환), 배송</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading03-01">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn8" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse03-01" aria-expanded="false"
								 aria-controls="faqCollapse03-01">
									<h5 class="faq_btn">안경 수리가 필요할 경우 도움을 받을 수 있을까요?</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse03-01" data-parent="#faq">
								<div class="card-body card-collapse__body">
									오프라인 스토어를 통해 브리즘 애프터서비스를 이용하실 수 있습니다.
									<br><br>
									브리즘에서는 결제일로부터 1년 동안 구매하신 “프론트/템플(다리)/렌즈” 제품에 대한 보증 기간을 제공해 드리고 있습니다.
									<br><br>
									품질보증 기간 내, 제품 문제로 인한 하자가 발생할 경우 무상 수리 또는 제품 교환을 제공받으실 수 있으며
									<br><br>
									소비자 과실로 인한 하자, 보증 기간 이후 발생한 문제에 대해서는 안경 구매 시 안내드린 유상 수리 규정에 따라 유상 수리 및 교환을 제공받으실 수 있습니다.
								</div>
							</div>
						</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading03-02">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn9" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse03-02" aria-expanded="false"
								 aria-controls="faqCollapse03-02">
									<h5 class="faq_btn">교환, 반품 규정과 기준을 알려주세요.</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse03-02" data-parent="#faq">
								<div class="card-body card-collapse__body">
									제품 교환 규정은 다음과 같습니다.
									<br><br>
									프레임
									<br>
									결제일로부터 60일 이내, 구매하신 제품에 대한 불편이 지속될 경우.
									<br>
									동일 디자인, 동일 색상의 프레임으로 교환을 진행하실 수 있습니다.
									<br><br>
									렌즈
									<br>
									결제일로부터 60일 이내, 초점 불량, 울렁임,어지러움 등의 문제가 지속될 경우.
									<br>
									문제 해결을 위한 렌즈 교환을 진행하실 수 있습니다.
									<br><br>
									환불(반품) 규정은 다음과 같습니다.
									<br><br>
									프레임/렌즈
									<br>
									결제일로부터 60일 이내, 기존 제품 반납 후 환불(반품)을 진행하실 수 있습니다.
									<br><br>
									*고객 과실로 인한 파손 여부 확인 필요
								</div>
							</div>
						</div>
						<div class="card m1-3 m1-md-6">
							<div class="card-header card-collapse__header" id="faqHeading03-03">
								<button class="card-collapse__btn collapsed" id="faq-toggle-btn10" type="button"
								 data-toggle="collapse" data-target ="#faqCollapse03-03" aria-expanded="false"
								 aria-controls="faqCollapse03-03">
									<h5 class="faq_btn">교환, 환불 절차를 알려주세요.</h5>
									<svg class="bi bi-caret-down-fill" id="faq-arrow1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
	                        			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
									</svg>
								</button>
							</div>
							<div class="collapse" id="faqCollapse03-03" data-parent="#faq">
								<div class="card-body card-collapse__body">
									구매하신 매장에서 간단한 확인과 상담 후, 쉽고 빠르게 교환 및 환불(반품)을 진행하실 수 있습니다.
									<br><br>
									진행 방식은 매장에 따라 소정의 차이가 존재할 수 있습니다.
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
	</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> 		
</body>
</html>