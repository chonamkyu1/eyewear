<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/lookBook.css">
</head>
<body>
	<%@include file="/WEB-INF/jsp/header.jsp" %>
	
	
	<div style="height: 120px"></div>

	<div id="user-contens">
		<div class="width100">
			<div class="column_normal align_center" style="padding-top: 93px">
				<div style="width: 952px; display: flex; margin-bottom: 50px">
					<img src="https://breezm.com/img/lookbook/main/lookbook_titanium.png" alt="titanium">
					<div class="column_between align_center look_text_box">
						<div class="font-size-13 weight400 ak">
							세계 최초 맞춤형 티타늄 아이웨어
							<br>
							<strong class="ak_bold font-size-42 weight400">titanium line</strong>
						</div>
						<button class="look_more_btn" onclick="location.href='/lookbook/optical/titanium'">더보기&gt;</button>
					</div>
				</div>
				<div style="width: 952px; display: flex; margin-bottom: 50px">
					<div class="column_between align_center look_text_box">
						<div class="font-size-13 weight300">
							데일리안경의 정석
							<br>
							<strong class="ak_bold font-size-42 weight400">original line</strong>
						</div>
						<button class="look_more_btn" onclick="location.href='/lookbook/optical/original'">더보기&gt;</button>
              		</div>
              		<img src="https://breezm.com/img/lookbook/main/lookbook_original.png" alt="original">
				</div>
				<div style="width: 952px; display: flex; margin-bottom: 50px">
					<img src="	https://breezm.com/img/lookbook/main/lookbook_nerd.png" alt="nerd">
					<div class="column_between align_center look_text_box">
                		<div class="font-size-13 weight400 ak">
	                		Nerds Opened a New Era
	                		<br>
	                		<strong class="ak_bold font-size-42 weight400">nerd line</strong>
                		</div>
						<button class="look_more_btn" onclick="location.href='/lookbook/optical/nerd'">더보기&gt;</button>
					</div>
				</div>
				<div style="width: 952px; display: flex; margin-bottom: 50px">
					<div class="column_between align_center look_text_box">
						<div class="font-size-13 weight300">
							섬세하지만 강한
							<br>
							<strong class="ak_bold font-size-42 weight400">wire line</strong>
						</div>
						<button class="look_more_btn" onclick="location.href='/lookbook/optical/wire'">더보기&gt;</button>
					</div>
					<img src="	https://breezm.com/img/lookbook/main/lookbook_wire.png" alt="original">
				</div>
				<div style="width: 952px; display: flex; margin-bottom: 50px">
				<img src="	https://breezm.com/img/lookbook/main/lookbook_metal.png" alt="metal">
				<div class="column_between align_center look_text_box">
                	<div class="font-size-13 weight300">
                		사이즈가 있는 메탈 프레임
                		<br>
                		<strong class="ak_bold font-size-42 weight400">metal line</strong>
                	</div>
					<button class="look_more_btn" onclick="location.href='/lookbook/optical/metal'">더보기&gt;</button>
				</div>
				</div>
				<div style="width: 952px; display: flex; margin-bottom: 50px">
					<div class="column_between align_center look_text_box">
						<div class="font-size-13 weight300">
							가볍지만 스타일리시한
							<br>
							<strong class="ak_bold font-size-42 weight400">bold line</strong>
						</div>
						<button class="look_more_btn" onclick="location.href='/lookbook/optical/bold'">더보기&gt;</button>
					</div>
					<img src="https://breezm.com/img/lookbook/main/lookbook_bold.png" alt="original">
				</div>
				<div style="width: 952px; display: flex; margin-bottom: 50px">
					<img src="https://breezm.com/img/lookbook/main/lookbook_sunglass.png" alt="sunglasses">
					<div class="column_between align_center look_text_box">
						<div class="font-size-13 weight300">
							브리즘만의 디테일을 넣은 선그라스
							<br>
							<strong class="ak_bold font-size-42 weight400">sunglasses</strong>
						</div>
						<button class="look_more_btn" onclick="location.href='/lookbook/optical/sunglasses'">더보기&gt;</button>
					</div>
				</div>
				<div style="width: 952px; display: flex; margin-bottom: 50px">
					<div class="column_between align_center look_text_box">
						<div class="font-size-13 weight300">
							아티스트와의 콜라보레이션
							<br>
							<strong class="ak_bold font-size-42 weight400">lab &amp; collabo</strong>
						</div>
						<button class="look_more_btn" onclick="location.href='/lookbook/optical/lab-and-collabo'">더보기&gt;</button>
					</div>
					<img src="https://breezm.com/img/lookbook/main/lookbook_lab.png" alt="lab">
				</div>
			</div>
		</div>
		
		
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
		
	</div>
</body>
</html>