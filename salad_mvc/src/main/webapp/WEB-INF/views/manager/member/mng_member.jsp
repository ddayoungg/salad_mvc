<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<style type="text/css">
	.button{
		width: 100px;
		height: 40px;
		margin: 10px;
		background-color: transparent;
		border: 1px solid #14CEA9;
		color: #14CEA9;
		line-height: 30px;
	}
	
	.button:hover {
		background-color: #14CEA9;
		color: white;
	} 
	
	.popupTable>tr>th{
		width: 30%;
		background-color:#f0f0f0;
		padding: 10px;
	}
	
	.popupTable>tr>th, .popupTable>tr>td{
		border: 1px solid #f0f0f0;
	}
	
</style>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="index.html"><img alt="img" src="images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조 관리자님,어서오세요.&nbsp;&nbsp;</div>
            <!-- Navbar-->
             <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul> 
        </nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
		    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		        <div class="sb-sidenav-menu">
		            <div class="nav">
		                <div class="sb-sidenav-menu-heading">메인</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="index.html">
		                    -대시보드
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
		                style="text-decoration-line:none; font-size:16px; padding:0;" 
		                href="#">회원 관리</a></div>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">상품 관리</div>
		                <a class="nav-link" href="index.html">
		                    -상품 등록
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="index.html">
		                    -상품 후기
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">주문 관리</div>
		                <a class="nav-link" href="index.html">
		                    -주문 관리
		                </a>
		                <a class="nav-link" style="padding-top:0;"href="index.html">
		                    -취소 관리
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="index.html">
		                    -배송 관리
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">게시판 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="index.html">
		                    -공지사항
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">문의 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="index.html">
		                    -상품문의
		                </a>
		            </div>
		        </div>
		    </nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<div style="display:flex; justify-content:space-between; flex-direction:row;padding:20px 0 30px 0;">
						<div>
							<h1 id="clock" class="mt-4" style="font-size:20px; color:rgb(94,94,94); font-weight:bold;">clock</h1>
							<div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">환영합니다! 3조 관리자님.</div>
						</div>
						<div>
							<img src="images/socialMedia.png" width="130px">
						</div>
						<div style="width:319px;"></div>
					</div>
				</div>
                <div class="row">
       		 		<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px; max-width: 800px;">
	                  	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
			                    <div style=" color:white; font-weight:bold; font-size:20px;">총 회원 수</div>
		                    	<div style="color:white; font-weight:bold; font-size:20px;">
		                    		<span style="font-size:30px;">50</span>명
		                    	</div>
	                   		</div>
	                  	</div>
	                  	<div style="background:#f0f0f0; width:150px; height:155px;border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
		                    	<div style=" color:grey; font-weight:bold; font-size:20px;">가입 회원 수</div>
		                    	<div style="color:grey; font-weight:bold; font-size:20px;">
		                    		<span style="font-size:30px;">40</span>명
		                    	</div>
	                   		</div>
	                  	</div>
	                  	<div style="background:#f0f0f0; width:150px; height:155px;border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
		                    	<div style=" color:grey; font-weight:bold; font-size:20px;">탈퇴 회원 수</div>
		                    	<div style="color:grey; font-weight:bold; font-size:20px;">
		                    		<span style="font-size:30px;">10</span>명
		                    	</div>
	                   		</div>
	                  	</div>
					</div>
               	</div>
				<div style="width: 80%; margin: 10px auto; text-align: center;">
	               		<table class="table">
							<thead class="table-light" style="height: 50px;">
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>가입일자</th>
									<th>탈퇴여부</th>
									<th>상세보기</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>apple</td>
									<td>김사과</td>
									<td>2022-10-26</td>
									<td>가입</td>
									<td><button type="button" class="btn btn-light btn-sm">상세보기</button></td>
								</tr>
								<tr>
									<td>apple</td>
									<td>김사과</td>
									<td>2022-10-26</td>
									<td>가입</td>
									<td><button type="button" class="btn btn-light btn-sm">상세보기</button></td>
								</tr>
								<tr>
									<td>apple</td>
									<td>김사과</td>
									<td>2022-10-26</td>
									<td>가입</td>
									<td><button type="button" class="btn btn-light btn-sm">상세보기</button></td>
								</tr>
								<tr>
									<td>apple</td>
									<td>김사과</td>
									<td>2022-10-26</td>
									<td>가입</td>
									<td><button type="button" class="btn btn-light btn-sm">상세보기</button></td>
								</tr>
								<tr>
									<td>apple</td>
									<td>김사과</td>
									<td>2022-10-26</td>
									<td>가입</td>
									<td><button type="button" class="btn btn-light btn-sm">상세보기</button></td>
								</tr>
								<tr>
									<td>apple</td>
									<td>김사과</td>
									<td>2022-10-26</td>
									<td>가입</td>
									<td><button type="button" class="btn btn-light btn-sm">상세보기</button></td>
								</tr>
							</tbody>
						</table>
					</div>
			</main>
            <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="align-items-center justify-content-between small">
                            <div class="text-muted">
                            	<span style="margin: 0 30px 0 0;">회사소개</span>
                            	<span style="margin: 0 30px 0 0;">이용약관</span>
                            	<span style="margin: 0 30px 0 0;">개인정보처리방침</span>
                            	<span>이용안내</span>
                            </div>
                            <hr>
                            <div style="display: flex; justify-content: space-between;" >
	                             <div class="text-muted">
	                            	<div>법인명(상호) : 주식회사 샐러드월드 / 대표 : 3조 / TEL : 0000-0000 / FAX : 02-0000-0000</div>
	                            	<div>사업자등록번호 : 000-00-00000 / 통신판매업신고번호 : 제 0000 - 쌍용3조 - 0000호</div>
	                            	<div>주소 : 서울광역시 강남구 테헤란로 132 / 개인정보관리책임자 : 3조 / E-Mail : 3조@0000.co.kr</div>
	                        	</div>
	                        	<div>
	                        		<img alt="img" src="img/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
		</div>
	</div>
		
	<!-- 상세보기 팝업 -->
	<div id="popup" class="hide popup" align="center" style="margin-top: 100px;">
		<div style="width: 800px; border: 1px solid grey;">
			<div style="font-weight: bold; font-size: 20px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 상세
			</div>
			
			<div style="margin: 50px 0px;">
				<table id="detailPopup" class="member" style="width: 100%;" >
					<tbody class="popupTable" align="center">
						<tr>
							<th>이름</th><td>김사과</td>
						</tr>
						<tr>
							<th>이메일</th><td>apple@naver.com</td>
						</tr>
						<tr>
							<th>아이디</th><td>apple</td>
						</tr>
						<tr>
							<th>가입일자</th><td>2022-10-26</td>
						</tr>
						<tr>
							<th>전화번호</th><td>010-1234-5678</td>
						</tr>
						<tr>
							<th>우편번호</th><td>12345</td>
						</tr>
						<tr>
							<th>주소</th><td>강남구 역삼동</td>
						</tr>
					</tbody>
				</table>
			</div>
							
			<div style="display: flex; align-items: center; justify-content: center; margin-bottom: 30px;">
				<input type="button" value="탈퇴" class="button" onclick="closePopup('popup')">
				<input type="button" value="확인" class="button" onclick="showPopup(true,'popup2')">
			</div>
		</div>
	</div>
	
	<!-- 팝업창 : 삭제이유 -->
	<form action="manager_member_update_process.jsp" id="popupFrm" style="margin-top: 100px;">
	<div id="popup3" class="hide popup" align="center">
	    <div style="width: 450px; border: 1px solid grey;">
	    	<div style="font-weight: bold; font-size: 15px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 강제탈퇴 확인
			</div>
			
			<div style="display: flex;flex-direction: column;align-items: center; padding: 30px;">
				<div style="font-size: 16px; padding-bottom: 25px;">회원 강제탈퇴 사유를 작성하세요.</div>
				<input type="hidden" name="id" value="id">
				<textarea name="outReas" rows="10" cols="50"></textarea>
				<div style="display: flex; align-items: center; justify-content: center; padding-top: 20px;">
					<input type="button" value="확인" class="button" id="outBtn">
					<input type="button" value="취소" class="button" onclick="closePopup('popup3')">
				</div>
			</div>
		</div>
	</div>
	</form>
	
	<!-- 팝업창 : 탈퇴 처리 완료 -->
	<div id="popup4" class="hide popup" align="center" style="margin-top: 100px;">
		 <div style="width: 450px; border: 1px solid grey;">
	    	<div style="font-weight: bold; font-size: 15px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 강제탈퇴 확인
			</div>
			
			<div>
				<div style="font-size: 16px; display: flex; justify-content: center; 
				align-items: center; height: 70px ;">해당 회원이 강제탈퇴 되었습니다.</div>
				
				<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
					<input type="button" value="확인" class="button" onclick="closePopup('popup4')">
				</div>
			</div>
		</div>
	</div>
	
	<!-- 팝업창 : 탈퇴 사유 상세 -->
	<div id="popup4" class="hide popup" align="center" style="margin-top: 100px;">
	   <div style="width: 450px; border: 1px solid grey;">
	    	<div style="font-weight: bold; font-size: 15px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 강제탈퇴 확인
			</div>
			
			<div>
				<div style="font-size: 16px; display: flex; justify-content: center; 
				align-items: center; height: 70px;">불법적인 글을 작성함.</div>
				
				<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
					<input type="button" value="확인" class="button" onclick="closePopup('popup4')">
				</div>
			</div>
		</div>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
	<script>
	    var Target = document.getElementById("clock");
	    function clock() {
	        var time = new Date();
	
	        var year = time.getFullYear();
	        var month = time.getMonth();
	        var date = time.getDate();
	        var day = time.getDay();
	        var week = ['일', '월', '화', '수', '목', '금', '토'];
	
	        var hours = time.getHours();
	        var minutes = time.getMinutes();
	        var seconds = time.getSeconds();
	        var AmPm = "AM";
	        if(hours > 12){
	            var AmPm = "PM";
	            hours %= 12;
	        }
	
	        Target.innerText =
	        `\${year}-\${month + 1}-\${date} \${week[day]}요일 ` +
	        `\${hours < 10 ? `0\${hours}` : hours}:\${minutes < 10 ? `0\${minutes}` : minutes}` + `\${AmPm}`;
	            
	    }
	    clock();
	    setInterval(clock, 1000); // 1초마다 실행
	</script>
</body>
</html>
