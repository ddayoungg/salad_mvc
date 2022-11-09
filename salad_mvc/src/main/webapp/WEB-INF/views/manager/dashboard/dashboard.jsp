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
        <title>Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="./resources/mng_css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

    </head>
    
    
    <body class="sb-nav-fixed">
 <!-- 상단 우측 네비 -->   
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="index.html"><img alt="img" src="./resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조관리자님, 어서오세요.&nbsp;&nbsp;</div>
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
	                        <img src="./resources/mng_images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        
                        
                        <div >
<!-- 1번째 라인 - 정산 내역 -->
                        	<div style="width:100%; display:flex; font-size:16px; font-weight:bold;  padding:10px 0 20px 0;  ">
		                        <div style="width:150px; padding:10px 0 px 50px; margin-left: 30px; margin-right: 20px;">
		                        		오늘_정산_내역
		                        	<div style="background:#F7F7F7; width:300px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	총 정산 금액
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">500,000</span>원
				                        	</div>
			                        	</div>
		                        	</div>
                        		</div>
		                        		
		                        		
		                        <div style="width:150px; margin-left: 180px; margin-right: 250px;">
		                        		이번 달_ 정산_내역
		                        	<div style="background:#F7F7F7; width:300px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	총 정산 금액
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">3,000,000</span>원
				                        	</div>
			                        	</div>
		                        		</div>
		                        	</div>
                       		</div>
                       		 
<!-- 1번째 라인 끝-->
<!-- 2번째 라인 - 회원 내역 -->
                        	<div style="width:100%; display:flex; font-size:16px; font-weight:bold; padding:10px 0 20px 0; margin-top: 30px; ">
                        	
		                        <div style="width:150px; margin-left: 30px; margin-right: 50px;">
		                        	총 주문 건수
		                        <div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-top: 20px; ">
		                        	<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                       	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	오늘 주문
				                        </div>
				                        <div style="color:white; font-weight:bold; font-size:20px;">
				                       		<span style="font-size:30px;">20</span>건
				                        </div>
			                        </div>
		                        </div>
                       		</div>
		                        

		                        <div style="background:rgb(186,212,206); width:150px; height:155px; border-radius:35px;  margin-right: 400px; margin-top: 45px;">
		                        	<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        <div style=" color:white; font-weight:bold; font-size:20px;">
				                        	이번 달 주문
				                        </div>
				                        <div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">50</span>건
				                       	</div>
			                        </div>
		                        </div>
		                        
							  <div id="chart_div" style="width:200px;"></div>
		                        
                           	</div>	 
                       	</div>
<!-- 2번째 라인 끝-->
<!-- 3번째 라인 - 주문내역 -->
                        	<div style="width:100%; display:flex; font-size:16px; font-weight:bold; padding:10px 0 20px 0; margin-top: 20px;">
		                        <div style="width:150px; margin-left: 30px; ">
		                        		전체 회원 내역
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	총 회원 수
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">50</span>명
				                        	</div>
			                        	</div>
		                        		</div>
                        		</div>
		                        	
		                        	<div style="background:#F7F7F7;  width:150px; height:155px; border-radius:35px; margin-left: 50px; margin-right: 50px; margin-top: 40px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	가입 회원 수
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">40</span>명
				                        	</div>
			                        	</div>
		                        	</div>
		                        	
		                        	
		                        	<div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-top: 40px; margin-right:150px">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	탈퇴 회원 수
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">10</span>명
				                        	</div>
			                        	</div>
		                        	</div>
		                        	
		                        <div style="width:150px; margin-left: 30px; ">
		                        	상품 문의글
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	 미답변 문의
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">1</span>건
				                        	</div>
			                        	</div>
		                        		</div>
                        		</div>
                        		
		                        	<div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-left:50px; margin-top: 40px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	답변 문의
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">3</span>건
				                        	</div>
			                        	</div>
		                        	</div>
                       		 </div>

<!-- 3번째 라인 끝-->
                        </div>
                </main>
                
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
	                        		<img alt="img" src="./resources/mng_images/saladLogo.png">
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

<!-- <script type="text/javascript">

/* google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic); */

function drawBasic() {
	var data = new google.visualization.DataTable();
		data.addColumn('string', '메인 카테고리');
		data.addColumn('number', '주문(건)');

		data.addRows([
			['A', 510],
			['B', 915],
			['C', 464],
			['D', 378],
			['E', 1285],
		]);

 

	var options = {
		title: '메인 카테고리 별 판매 수',
	hAxis: {
		title: '메인 카테고리',
		viewWindow: {
			min: [7, 30, 0],
			max: [17, 30, 0]
		}
	},
	vAxis: {
		title: '주문(건)'
	},
	seriesType : "bars",
	series : {
		5 : {
			type : "line"
		}
	}
	};

	var chart = new google.visualization.ColumnChart(
		document.getElementById('chart_div'));
		chart.draw(data, options);
	}
</script> -->
    </body>
</html>
