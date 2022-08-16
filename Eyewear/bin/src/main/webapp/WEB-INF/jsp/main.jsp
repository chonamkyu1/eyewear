<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인홈페이지</title>
<link rel="stylesheet" href="css/main.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">



<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> -->


</head>
<body>	
	<%@include file="/WEB-INF/jsp/header.jsp" %>
	
	<div style="height: 120px;"></div>
	
	
	<div id="user-contents">
		<div class="width100">
			<div class="center">
				<video autoplay="" muted="" loop="" style="object-fit: fill; width: 1440px; height: auto" src="https://s3.ap-northeast-2.amazonaws.com/breezm.com/movies/pc/main_2.mp4"></video>
			</div>
			<div class="column_center" style="padding: 155px 0 106px;">
				<div class="align_center" style="font-size:42px; margin-bottom: 104px; color: black; width: 1440px">
					브리즘 3D 맞춤 안경을
					<br>
					합리적인 가격으로 만나보세요.
				</div>
				<div class="column_between" style="margin-bottom: 75px; text-align: center; line-height: 55px;">
					<div style="font-size: 28px; color: black;">브리즘에선 모든 혜택이</div>
					<div style="font-size: 60px; color: black; height: 45px; font-family: ;">178,000원</div>
					<div style="color: #949494; font-size: 18px;">렌즈 가격 미포함 | 제작기간 2주 소요</div>				
				</div>
				<div class="between" style="flex-wrap: nowrap;!important;">
					<div style="width: 325px;">
						<div class="align_center" style="margin-bottom: 14px; color:#132D75; font-size: 28px; font-weight: 500; line-height: 39.14px;">
						편안한 착용감을 위한
						<br>
						스마트 맞춤
						</div>
						<div class="main_smart_price" style="margin-bottom: 14px;">얼굴 너비에 딱 맞는 프레임 사이즈</div>
						<div class="main_smart_price" style="margin-bottom: 14px;">동공 간 거리에 딱 맞는 브릿지 기리</div>
						<div class="main_smart_price" style="margin-bottom: 14px;">귀 높이에 딱 맞는 안경 다리 각도</div>
						<div class="main_smart_price" style="margin-bottom: 35px;">코 높이에 딱 맞는 코 패드 위치</div>
					</div>
					<div class="main_smart_plus"></div>
					<div style="width: 325px;">
						<div class="align_center" style="margin-bottom: 14px; color:#132D75; font-size: 28px; font-weight: 500; line-height: 39.14px;">
						나만의 스타일을 위한
						<br>
						스마트 디자인
						</div>
						<div class="main_smart_price" style="margin-bottom: 14px;">얼굴형을 고려한 33가지 디자인</div>
						<div class="main_smart_price" style="margin-bottom: 14px;">취향을 고려한 10가지 색상</div>
						<div class="main_smart_price" style="margin-bottom: 14px;">소재/색상을 고려한 안경 다리</div>
						<div class="main_smart_price" style="margin-bottom: 35px;">코 모양을 고려한 코 패드</div>
					</div>
				</div>
				<div style="border-top: 1px solid #E7E7E7; margin-bottom: 22px; width: 900px"></div>
				<div style="display: flex; justify-content: center; margin-bottom: 106px; flex-wrap: nowrap!important;">
					<div style="color: #686868; font-size: 20px; margin-right: 205px;">*콜라보레이션 협업</div>
					<div style="color: #686868; font-size: 20px; font-weight: 300">
						브랜드, 디자이너, 크리에이터들의 아이덴티티를 담은 안경을
						<br>
						개발하고 런칭할 수 잇습니다.
						<br>
						<p style="font-size: 15px;">상세문의 info@breeze.com</p>
					</div>				
				</div>
			</div>
			
			<div class="column_between align_center width100" style="height: 506px; background: #EEF0F0; padding: 170px 0">
				<div class="font-size-42 weight700" style="color: black;">내 얼굴 데이터로 만든 가장 편안한 안경</div>
				<button class="font-size-28 main_button" onclick="location.href='#'">맞춤 프레임 알아보기 →</button>
			</div>
			
			<div class="column_center align_center" style="padding: 155px 292px 135px 297px;">
				<div class="font-size-42" style="margin: 190px 0 100px; line-height: 68.8px; width: 1440px">
					브리즘의 특별한
					<br>
					1:1 안경 맞춤 프로세스를 경험해보세요.
				</div>
				<div class="between" style="width: 850px">
					<div class="column_center">
						<img src="https://breezm.com/img/main/main_process_1.png">
						<div style="font-size: 24px; font-weight: 300">3D 얼굴 스캔 및 분석</div>
					</div>
					<div class="column_center">
						<img src="https://breezm.com/img/main/main_process_2.png">
						<div style="font-size: 24px; font-weight: 300">빅데이터 기반 안경 추천</div>
					</div>
				</div>
				<div class="between" style="width: 850px">
					<div class="column_center">
						<img src="https://breezm.com/img/main/main_process_3.png">
						<div style="font-size: 24px; font-weight: 300">전문적인 시력 검사</div>
					</div>
					<div class="column_center">
						<img src="https://breezm.com/img/main/main_process_4.png">
						<div style="font-size: 24px; font-weight: 300">최적의 렌즈 추천</div>
					</div>
				</div>
			</div>
			
			<div class="column_center">
				<video autoplay="" muted="" loop="" style="object-fit: fill; width: 1440px; height: auto" src="https://s3.ap-northeast-2.amazonaws.com/breezm.com/movies/pc/main_customer.mp4"></video>
				<div class="column_between align_center width100" style="height: 506px; background: #EEF0F0; padding: 170px 0">
					<div class="font-size-42 weigth700">내 라이프 스타일을 고려한 가장 잘 맞는 렌즈</div>
					<button class="main_button" onclick="location.href='#'">맞춤 렌즈 알아보기 →</button>
				</div>
				<div style="padding: 138px; 310px; 130px">
					<div style="font-size: 42px; color: black; text-align: center; margin-bottom: 146px; line-height: 60.82px;">
						브리즘 60일 채김 환불제
						<br>
						이제 안심하고 구매하세요.
					</div> 
					<div style="margin-bottom: 100px; display: flex; align-items: center;">
						<div class="font-size-24" style="margin-right: 145px; width:  400px">
							<div class="weigtht500" style="color: black;">60일 안심 기간</div>
							<div class="weigtht300" style="color: black;">
								제품을 충분히 경험할 수 있는
								<br>
								안심 기간을 보장합니다.
							</div>
						</div>
						<div class="font-size-24" style="margin-right: 145px; width:  400px">
							<div class="weight500" style="color: black;">매장 방문 접수</div>
							<div class="weight500" style="color: black;">
								매장 방문을 통해 쉽고 빠른
								<br>
								환불 절차를 진행합니다.
							</div>
						</div>
					</div>
					<div style="margin-bottom: 100px; display: flex; align-items: center;">
						<div class="font-size-24" style="margin-right: 145px; width:  400px">
							<div class="weight500" style="color: black;">환불 금액 보장</div>
							<div class="weight500" style="color: black;">구매 금액의 100% 환불을 약속합니다.</div>
						</div>
						<div class="font-size-24" style="margin-right: 145px; width:  400px">
							<div class="weight500" style="color: black;">친절한 서비스</div>
							<div class="weight500" style="color: black;">
								브리즘 전문 안경사가
								<br>
								친절한 환불 상담을 진행합니다.
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
			<div class="center">
				<img src="https://breezm.com/img/main/main_hands_glass_pc.png" style="width: 1440px; height: 844px">
			</div>
			
			<div style="display: flex; flex-direction: column; align-items: center;">
				<div class="align_center main_title_p font-size-42" style="line-height: 60.82px;">
					내 생애 첫 맞춤 안경
					<br>
					브리즘에서 시작하세요.
				</div>
				<div style="width: 961px">
					<div class="carousel slide" id="carouselExampleIndicators" data-ride="carousel">
					
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div style="display: flex; flex-direction: column;"> 
									<div style="background-image: url(https://breezm.com/img/main/main_jl.png); width: 961px; height: 788px; background-size: 100% 100%"></div>
									<div class="carousel_text_box">
										<div class="font-size-32 weight500">브리즘 잠실롯데월드점</div>
										<div class="carousel_text_detail font-size-24 weight400">
											<div class="column_between" style="height: 80px;">
												<div>서울시 송파구 올림픽로 240</div>
												<div>어드벤처동 지하3층</div>
											</div>
											<div>02-411-0454</div>
											
										</div>
									</div>
								</div>							
							</div>
							<div class="carousel-item">
								<div style="display: flex; flex-direction: column;"> 
									<div style="background-image: url(https://breezm.com/img/main/main_jl.png); width: 961px; height: 788px; background-size: 100% 100%"></div>
									<div class="carousel_text_box">
										<div class="font-size-32 weight500">브리즘 삼성점</div>
										<div class="carousel_text_detail font-size-24 weight400">
											<div class="column_between" style="height: 80px;">
												<div>서울시 강남구 영동대로 85길 34</div>
												<div>대치2차 아이파크 207호</div>
											</div>
											<div>02-556-0988</div>
										</div>
									</div>
								</div>							
							</div>
						</div>
						
						<a class="carousel-control-prev" href="carouselExampleIndicators" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<div class="silde_l"></div>	
						</a>
						<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
                 				<div class="slide_r"></div>
               			</a>
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


<script>

// 	$('.bxslider').bxSlider({
// 		auto: true,
// 		autoControls: true,
// 		stopAutoOnClick: true,
// 		pager: true,
// 		slideWidth: 600
// 	});
		
</script>
</html>