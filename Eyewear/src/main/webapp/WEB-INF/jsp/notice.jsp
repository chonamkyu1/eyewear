<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/notice.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
	<%@include file="/WEB-INF/jsp/header.jsp" %>

	<div style="height: 120px"></div>

		<div id="user-contens">
			<div class="width100">
				<div class="column_center">
					<div class="center" style="width: 100%; height: 450px; background-color: black">
						<div class="align_center font24 weight400 text-white">이용약관</div>
					</div>
					
					<div class="notice" id="notice">
						<div class="card">
							<div class="card-header card-collapse__header" id="noticeHeading01">
								<button class="card-collapse__btn collapsed" id="notice-toggle-btn1" type="button"
								 data-toggle="collapse" data-target="#noticeCollapse01" aria-expended="false"
								  aria-controls="noticeCollapse">
									<h5>[공지] 개인정보의 수집 및 이용 목적</h5>
									<div class="between width120">
										<div>
											<h5>2020.07.30</h5>
										</div>
										<div style="display: flex;">
											<svg class="bi bi-caret-down-fill" id="notice-arrow1" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                         					 	<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
                       						 </svg>
										</div>
									</div>
								</button>
							</div>
							<div class="collapse" id="noticeCollapse01" data-parent="#notice" style>	
								<div class="card-body card-collapse__body">
									회사는 원칙적으로 개인정보 수집 및 이용목적이 달성되거나, 보유 및 이용기간이 경과된 후에는 해당 정보를 지체 없이 파기합니다.
									다만, 정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라 1년 간 이용 기록이 없는 회원의 경우,
									이용중인 회원의 개인정보와 별도 분리하여 안전하게 보관하며, 브리즘 폰번호 회원 중 이메일주소 및 비밀번호를 등록하지 않고
									1년간 브리즘을 이용하지 않은 경우 회원의 개인정보 일체를 파기합니다. 개인정보의 파기 절차 및 방법은 다음과 같습니다.
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header card-collapse__header" id="noticeHeading02">
								<button class="card-collapse__btn collapsed" id="notice-toggle-btn2" type="button"
								 data-toggle="collapse" data-target="#noticeCollapse02" aria-expended="false"
								  aria-controls="noticeCollapse02">
									<h5>[공지] 수집하는 개인정보 항목 및 수집방법</h5>
									<div class="between width120">
										<div>
											<h5>2020.07.30</h5>
										</div>
										<div style="display: flex;">
											<svg class="bi bi-caret-down-fill" id="notice-arrow1" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                         					 	<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
                       						 </svg>
										</div>
									</div>
								</button>
							</div>
							<div class="collapse" id="noticeCollapse02" data-parent="#notice" style>	
								<div class="card-body card-collapse__body">
									모든 회원은 브리즘을 활용하여 다른 이용자와 통신을 할 경우 그러한 통신의 내용이 회원자신의 동의 없이 상대방에 의하여
									저장되고 회원 자신이 의도하지 않은 목적으로 이용될 가능성이 있음을 유의해야 합니다. 회사는 이러한 저장 기능이 불법적이거나 
									타인의 권리를 침해하는 수단으로 이용되는 것을 허락하지 않습니다. 회사는 브리즘 제휴 서비스 또는 브리즘 입점 서비스의 형식
									및 내용 등에 대하여 보증하지 아니하며, 브리즘 제휴 서비스 또는 브리즘 입점 서비스와 관련하여 발생하는 문제는 해당 서비스의
									운영자와 회원의 문제임을 확인합니다.
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header card-collapse__header" id="noticeHeading03">
								<button class="card-collapse__btn collapsed" id="notice-toggle-btn3" type="button"
								 data-toggle="collapse" data-target="#noticeCollapse03" aria-expended="false"
								  aria-controls="noticeCollapse03">
									<h5>[공지] 수집하는 개인정보의 보유 및 이용기간</h5>
									<div class="between width120">
										<div>
											<h5>2020.07.30</h5>
										</div>
										<div style="display: flex;">
											<svg class="bi bi-caret-down-fill" id="notice-arrow1" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                         					 	<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
                       						 </svg>
										</div>
									</div>
								</button>
							</div>
							<div class="collapse" id="noticeCollapse03" data-parent="#notice" style>	
								<div class="card-body card-collapse__body">
									개인정보는 생존하는 개인에 관한 정보로서 회원 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 
									다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함)를 말합니다. 회사가 수집한 개인정보는 다음의 목적을 위해 활용합니다. 
									아이디, 이름, 생년월일, 비밀번호, 이메일주소, 휴대폰번호, 성별, 만14세 미만인 경우 법정대리인 정보(다만, 회사는 유료 서비스 이용,
									법정대리인 동의 등 관련 법률에 따라 본인확인이 필요한 경우에는 필요한 정보를 별도 동의 절차를 거쳐 수집할 수 있습니다.)
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header card-collapse__header" id="noticeHeading04">
								<button class="card-collapse__btn collapsed" id="notice-toggle-btn4" type="button"
								 data-toggle="collapse" data-target="#noticeCollapse04" aria-expended="false"
								  aria-controls="noticeCollapse04">
									<h5>[공지] 개인정보의 수집 및 이용 목적</h5>
									<div class="between width120">
										<div>
											<h5>2020.07.30</h5>
										</div>
										<div style="display: flex;">
											<svg class="bi bi-caret-down-fill" id="notice-arrow1" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                         					 	<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
                       						 </svg>
										</div>
									</div>
								</button>
							</div>
							<div class="collapse" id="noticeCollapse04" data-parent="#notice" style>	
								<div class="card-body card-collapse__body">
									회사는 원칙적으로 개인정보 수집 및 이용목적이 달성되거나, 보유 및 이용기간이 경과된 후에는 해당 정보를 지체 없이 파기합니다. 
									다만, 정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라 1년 간 이용 기록이 없는 회원의 경우, 이용중인 회원의 개인정보와 
									별도 분리하여 안전하게 보관하며, 브리즘 폰번호 회원 중 이메일주소 및 비밀번호를 등록하지 않고 1년간 브리즘을 이용하지 않은 경우 
									회원의 개인정보 일체를 파기합니다. 개인정보의 파기 절차 및 방법은 다음과 같습니다.
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header card-collapse__header" id="noticeHeading05">
								<button class="card-collapse__btn collapsed" id="notice-toggle-btn5" type="button"
								 data-toggle="collapse" data-target="#noticeCollapse05" aria-expended="false"
								  aria-controls="noticeCollapse05">
									<h5>[공지] 수집하는 개인정보 항목 및 수집방법</h5>
									<div class="between width120">
										<div>
											<h5>2020.07.30</h5>
										</div>
										<div style="display: flex;">
											<svg class="bi bi-caret-down-fill" id="notice-arrow1" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                         					 	<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
                       						 </svg>
										</div>
									</div>
								</button>
							</div>
							<div class="collapse" id="noticeCollapse05" data-parent="#notice" style>	
								<div class="card-body card-collapse__body">
									모든 회원은 브리즘을 활용하여 다른 이용자와 통신을 할 경우 그러한 통신의 내용이 회원자신의 동의 없이 상대방에 의하여 저장되고 
									회원 자신이 의도하지 않은 목적으로 이용될 가능성이 있음을 유의해야 합니다. 회사는 이러한 저장 기능이 불법적이거나 타인의 권리를 
									침해하는 수단으로 이용되는 것을 허락하지 않습니다. 회사는 브리즘 제휴 서비스 또는 브리즘 입점 서비스의 형식 및 내용 등에 대하여 
									보증하지 아니하며, 브리즘 제휴 서비스 또는 브리즘 입점 서비스와 관련하여 발생하는 문제는 해당 서비스의 운영자와 회원의 문제임을 확인합니다.
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