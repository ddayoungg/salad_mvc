<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=" "%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="http://localhost/salad_mvc/resources/mng_css/styles.css" rel="stylesheet" />
    <style type="text/css">
        .sb-nav-fixed #layoutSidenav #layoutSidenav_content {
            padding-left: 0;
            top: 56px;
        }
    </style>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		let message = "${msg}";
		if (message != ""){
			alert(message);
		} else {
			
		}
	})
	
	$(function(){
		$("#mngLoginBtn").click(function(){
			$("#loginFrm").submit();
		});
	});
	</script>
	<!-- <script type="text/javascript">
	/* 세션 종료 후 뒤로가기 방지 뒤로 가기 방지는 되지만 주소 재입력시 세션 유지됨 */
	window.history.forward(); 
	function noBack(){ 
		  window.history.forward();
	}
	</script> -->
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" style="padding:10px 0 0 0; " href="mng_index.do"><img alt="img" src="http://localhost/salad_mvc/resources/mng_images/saladLogo.png" height="50px"></a>
        <!-- <div class="ms-auto"><a href="/mng_index.do" style=" color:white; text-decoration: none;">로그인&nbsp;&nbsp;</a>
        </div> -->
        <!-- Navbar-->
        <!-- <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>  -->
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_content">
            <main>
                <div class="row justify-content-center" style="--bs-gutter-x:0;">
                    <div class="col-lg-5" style="width: 50%;">
                        <div class="card shadow-lg border-0 rounded-lg mt-5"
                            style="margin-top: 150px !important; border: 1px solid rgb(22,160,133)!important;">
                            <div class="card-header">
                                <h3 class="text-center font-weight-light my-4"
                                    style="font-size: 22px; font-weight:bold;">안녕하세요. 관리자님</h3>
                            </div>
                            <div class="card-body">
                                <form id="loginFrm" action="mng_login.do" method="post">
                                    <div style="display: flex; justify-content: space-between;">
                                        <img style="margin: 0 0 0 50px;" src="http://localhost/salad_mvc/resources/mng_images/business-report.png" width="145px">
                                        <div style="flex-direction: column; margin: 25px 0 0 0;">
                                            <div class="form-floating mb-3" style="width: 400px;">
                                                <input class="form-control" id="mngId" name="mngId" type="email"
                                                    placeholder="아이디" />
                                                <label for="inputEmail">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="mngPass" name="mngPass" type="password"
                                                    placeholder="비밀번호" />
                                                <label for="inputPassword">비밀번호</label>
                                            </div>
                                        </div>
                                        <div style="width: 145px;"></div>
                                    </div>
                                    <div class="d-flex align-items-center mt-4 mb-0" style="justify-content: center;">
                                        <input type="button" id="mngLoginBtn" class="btn btn-primary" value="로그인"
                                            style="background-color: rgb(22,160,133); border-color: rgb(22,160,133);">
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
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
	                        		<img alt="img" src="http://localhost/salad_mvc/resources/mng_images/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
                <!-- 푸터 끝 -->
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="http://localhost/salad_mvc/resources/mng_js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="http://localhost/salad_mvc/resources/mng_assets/demo/chart-area-demo.js"></script>
    <script src="http://localhost/salad_mvc/resources/mng_assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="http://localhost/salad_mvc/resources/mng_js/datatables-simple-demo.js"></script>
</body>

</html>