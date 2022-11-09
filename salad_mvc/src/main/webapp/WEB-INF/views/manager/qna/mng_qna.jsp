<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>QnA</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="./resources/mng_css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    
 <body class="sb-nav-fixed">
 <!-- 상단 우측 네비 -->   
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="index.html"><img alt="img" src="../images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조 관리자님, 어서오세요.&nbsp;&nbsp;</div>
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
<!-- 좌측 메인 네비 -->         
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
<!-- 본문상단 -->
                    <div class="container-fluid px-4">
                    	<div style="display:flex; justify-content:space-between; flex-direction:row;
                    	padding:20px 0 30px 0;">
	                    	<div>
	                        <h1 id="clock" class="mt-4" 
	                        style="font-size:20px; color:rgb(94,94,94); font-weight:bold;">clock</h1>
	                        <div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">
	                        환영합니다! 3조 관리자님.
	                        </div>
	                        </div>
	                        <div>
	                        <img src="../images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        </div>
                        
<!-- 본문 상단 요약 -->
                        <div class="row">
                       		<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px; max-width: 800px;">
			                  	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px;">
			                  		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
					                    <div style=" color:white; font-weight:bold; font-size:20px;">미답변 문의</div>
				                    	<div style="color:white; font-weight:bold; font-size:20px;">
				                    		<span style="font-size:30px;">1</span>건
				                    	</div>
			                   		</div>
			                  	</div>
			                  	<div style="background:#f0f0f0; width:150px; height:155px;border-radius:35px;">
			                  		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                    	<div style=" color:grey; font-weight:bold; font-size:20px;">답변한 문의</div>
				                    	<div style="color:grey; font-weight:bold; font-size:20px;">
				                    		<span style="font-size:30px;">3</span>건
				                    	</div>
			                   		</div>
			                  	</div>
                     		 </div>
                       	</div>
          	
<!-- 본문 리스트 시작 -->                       	
               	<div>
               	<div style="width: 90%; margin-left: 85px; margin-bottom: 20px;">
						<form name="category_frm" style="display: flex; justify-content: space-between; margin-bottom: 10px;">
							<select name="main" id="mai"  style="width: 16%">
								<option value="none">---카테고리 선택---</option>
							</select>
							<select name="sub" id="sub" style="width: 16%">
								<option value="none">---카테고리 선택---</option>
							</select>
							<input type="text" name="searchText" id="searchText" style="width: 50%">
							<input type="button" value="검색" id="searchBtn" name="searchBtn" style="width: 14%">
						</form>
					</div>
					
               		<table class="table" style="width: 90%; margin: 0px auto; text-align: center;">
					  <thead class="table-light" style="height: 50px;">
						<tr>
							<th>문의번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>문의날짜</th>
							<th>문의상태</th>
							<th>주문자</th>
						</tr>
					  </thead>
					  <tbody>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
						<tr>
							<td>202210260025</td>
							<td>[상품문의]</td>
							<td>닭가슴살 문의</td>
							<td>2022-10-26</td>
							<td>접수</td>
							<td>김도희</td>
						</tr>
					  </tbody>
					</table>
               	</div>
               	
                <div>
	               	<nav aria-label="Page navigation example" style="display: flex; justify-content: center; margin: 40px 0px;" >
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
               	</div>	
              </main>
<!-- 본문 끝 -->                                             
                
<!-- 푸터 -->
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
<!-- 푸터 끝 -->
        	</div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
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
        `\${hours < 10 ? `\${hours}` : hours}:\${minutes < 10 ? `\${minutes}` : minutes}` + `\${AmPm}`;
            
    }
    clock();
    setInterval(clock, 1000); // 1초마다 실행
</script>
    </body>
</html>
