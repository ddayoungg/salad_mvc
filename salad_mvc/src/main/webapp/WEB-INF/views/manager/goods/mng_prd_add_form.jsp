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
	.button2{
		width: 14%; 
		background-color: white; 
		border: 1px solid grey;
	}
	
	.button2:hover{
		background-color: #f0f0f0;
	}
	
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
	
	.dataTable-wrapper{
		padding: 10px 70px;
	}
	
	.dataTable-table > :not(caption) > * > *{
		box-shadow: none;
	}
	
	.dataTable-table > tbody > tr > td{
		text-align: left;
		border-left: none;
	}
	
	.dataTable-table > tbody > tr > th{
		background-color: #f0f0f0;
	}
	
	th{
		border-right: 1px solid black;
	}
	
	.imgBig{
		width: 200px; 
		height: 200px; 
		margin: 20px;
	}
	
	.imgSmall{
		width: 100px; 
		height: 100px; 
		margin: 20px;
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
				<div class="dataTable-wrapper dataTable-loading no-footer searchable fixed-columns">
					<div class="dataTable-container">
						<table class="dataTable-table" style="width: 80%; margin: 20px auto;">
							<tbody>
								<tr>
									<th width="30%">카테고리</th>
									<td>샐러드 | 데일리 샐러드</td>
								</tr>
								<tr>
									<th>상품명</th>
									<td>닭가슴살 샐러드</td>
								</tr>
								<tr>
									<th>메인 사진</th>
									<td>
										<div style="margin-top: 15px;">대표이미지 <input type="file"></div>
										<div style="margin-top: 15px;">보조이미지 <input type="file"><input type="button" class="button2" value=" 추가 "></div>
										<img class="imgBig" src="http://localhost/salad_mvc2/images/%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C.jpg">
										<img class="imgSmall" src="http://localhost/salad_mvc2/images/%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C.jpg">
										<img class="imgSmall" src="http://localhost/salad_mvc2/images/%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C.jpg">
									</td>
								</tr>
								<tr>
									<th>본문설명(사진 첨부)</th>
									<td style="display: flex; flex-direction: column;">
										<div style="margin-top: 15px;">이미지1 <input type="file"></div>
										<div style="margin-top: 15px;">이미지2 <input type="file"><input type="button" class="button2" value=" 추가 "></div>
										<img class="imgBig" src="http://localhost/salad_mvc2/images/%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C.jpg">
										<img class="imgBig" src="http://localhost/salad_mvc2/images/%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C.jpg">
										<img class="imgBig" src="http://localhost/salad_mvc2/images/%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C.jpg">
										<img class="imgBig" src="http://localhost/salad_mvc2/images/%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C.jpg">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="dataTable-wrapper dataTable-loading no-footer searchable fixed-columns" style="width: 82%; margin: 0px auto;">
					<div class="dataTable-container">
						<table class="dataTable-table">
							<tbody>
								<tr>
									<th width="30%">할인</th>
									<td style="width: 80px; border-right: none;">할인율</td><td style="width: 25px; border-right: none; font-weight: bold;"><input type="text"></td><td style="border-right: none;">%</td>
									<td style="border-right: none;"></td><td>미적용시 0을 입력해주세요</td>
								</tr>
								<tr>
									<th>원가</th>
									<td style="width: 80px; border-right: none;">정가</td><td style="width: 25px; border-right: none; font-weight: bold;"><input type="text"></td><td style="border-right: none;">원</td>
									<td style="border-right: none;"></td><td><input type="button" class="button2" value="적용"></td>
								</tr>
								<tr>
									<th>판매가</th>
									<td style="width: 80px; border-right: none;">판매가</td><td style="width: 25px; border-right: none; font-weight: bold;">0</td><td style="border-right: none;">원</td>
									<td style="border-right: none;"></td><td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div align="center" style="margin: 20px 0px;">
						<input type="button" class="button" value="이전">
						<input type="button" class="button" value="등록">
					</div>
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
