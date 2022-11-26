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

<link href="http://localhost/salad_mvc/resources/mng_css/styles.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />


<script src="http://localhost/salad_mvc/resources/mng_js/scripts.js"></script>
<script src="http://localhost/salad_mvc/resources/mng_assets/demo/chart-area-demo.js"></script>
<script src="http://localhost/salad_mvc/resources/mng_assets/demo/chart-bar-demo.js"></script>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script src="http://localhost/salad_mvc/resources/mng_js/datatables-simple-demo.js"></script>

<!-- JQuery google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">
	.imgSmall{
		width: 100px; 
		height: 100px; 
		margin: 20px;
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
	
	.button2{
		width: 14%; 
		background-color: white; 
		border: 1px solid grey;
	}
	
	.button2:hover{
		background-color: #f0f0f0;
	}
	.on{
		font-weight: bold;
		
		opacity: 0.6;
		
  		cursor: not-allowed;
	}
</style>

<script type="text/javascript">
$(function(){
	
	setPrdTotal();//등록된 전체 상품 수
	
	setMainCate();//메인 카테고리
	$("#mainCate").change(function(){//메인 카테고리 선택 시 해당 서브 카테고리 불러오기
		if($("#mainCate").val() != "0"){
			setSubCate();
		}//end if
	});//change
	
	$("#searchBtn").click(function(){
		setPrdList($("#currentPage").val());
	});
	
	setPrdList(1);//상품 관리 리스트
	
	$("#keyword").keydown(function(keyNum){
		//현재의 키보드의 입력값을 keyNum으로 받음
		if(keyNum.keyCode == 13){ //keyCode=13 : Enter
			$("#searchBtn").click()	
		}//end if
	});//keydown
	
})//redeay

function setPrdTotal() {//등록된 전체 상품 수 표시
	$.ajax(
	{
		url : "mng_prd_total_ajax.do",
		dataType:"json",
		error:function( xhr ){
			alert("전체 상품 건수 데이터를 불러오는데 실패했습니다.")
			console.log(xhr.status);
		},
		success : function(jsonObj){
			
			$("#totalPrdCnt").html(jsonObj.totalPrdCnt);
			
		}//success
	});//ajax
}//setPrdTotal

function setMainCate(){
	$.ajax({
		url:"http://localhost/salad_mvc/mng_prd_main_cate_ajax.do",
		dataType: "json",
		error: function( xhr ){
			alert("메인 카테고리를 조회하는 문제 발생했습니다.");
			console.log(xhr.status);
		},
		success: function( jsonObj ) {
			if(jsonObj.result){
				var mainCateSel=document.categoryFrm.mainCate;
				
				$.each(jsonObj.mainCateData, function(i, json){
					mainCateSel.options[i+1]=new Option( json.mainCateName, json.mainCateNum);
				})//each
			}//end if
		}//success
	})//ajax
}//setMainCate

function setSubCate(){
	$.ajax({
		url:"http://localhost/salad_mvc/mng_prd_sub_cate_ajax.do",
		data:"mainCateNum="+$("#mainCate").val(),
		dataType:"json",
		error:function( xhr ){
			alert("서브 카테고리를 조회하는 문제 발생했습니다.");
			console.log(xhr.status);
		},
		success: function( jsonObj ) {
			if(jsonObj.resultFlag){
				var subCateSel=document.categoryFrm.subCate;
				//<select>의 <option>을 하나만 남겨두고 초기화
				subCateSel.length=1;
				
				$("#keyword").val("");//검색 초기화
				
				$.each(jsonObj.subCateData, function(i, json){
					subCateSel.options[i+1]=new Option( json.subCateName, json.subCateNum);
				});//each
			}//end if
		}//success
	})//ajax
}//setSubCate

function setPrdList(currentPage){//상품 관리 리스트
	$.ajax({
		url:"mng_prd_list_ajax.do",
		data:"currentPage="+currentPage+"&subCateNum="+$("#subCate").val()+"&keyword="+$("#keyword").val(),
		dataType:"json",
		error:function( xhr ){
			alert("상품 관리 리스트를 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			$("#prdListOutput").show();
			
			var tbOutput="<table class='table'>";
			tbOutput+="<thead class='table-light' style='height: 50px;'>";
			tbOutput+="<tr>";
			tbOutput+="<th>상품번호</th>";
			tbOutput+="<th>이미지</th>";
			tbOutput+="<th>상품명</th>";
			tbOutput+="<th>등록날짜</th>";
			tbOutput+="<th>판매가</th>";
			tbOutput+="<th>상세내용</th>";
			tbOutput+="</tr>";
			tbOutput+="</thead>";
			tbOutput+="<tbody>";
			if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
			tbOutput+="<tr>";
			tbOutput+="<td>"+json.prdNum+"</td>";
			tbOutput+="<td><img class='imgSmall' src='http://localhost/salad_mvc/common/images/product/"+json.thum+"'></td>";
			tbOutput+="<td>"+json.prdName+"</td>";
			tbOutput+="<td>"+json.prdRegistDate+"</td>";
			
			var tempPrice=Math.floor(json.prdDCPrice); //단위
			const prdPrice=tempPrice.toLocaleString('ko-KR');
			
			tbOutput+="<td>"+prdPrice+"원</td>";
			tbOutput+="<td><button type='button' class='btn btn-light btn-sm' onclick=\"movePrdDetail("+json.prdNum+")\">상세내용</button></td>";
			tbOutput+="</tr>";
				});//each
			} else {
				tbOutput+="<tr><td colspan=6>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
			tbOutput+="</tbody>";
			tbOutput+="</table>";
			
			$("#prdListOutput").html(tbOutput);
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				if(currentPage==i) {
					pgOutput+="<li class='page-item on'>"
				} else {
					pgOutput+="<li class='page-item'>"
				}//end if
					pgOutput+="<a class='page-link' href='#void' onclick='setPrdList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#pageOutput").html(pgOutput);
		}//success
	})//ajax
}//setPrdList

function movePrdDetail(prdNum) {//상세보기 버튼 클릭 시 해당 물품의 상세페이지로 이동
	location.href="http://localhost/salad_mvc/mng_prd_detail.do?prdNum="+prdNum;
}//movePrdDetail

function movePrdAdd() {//상품 등록하기 버튼 클릭 시 상품 등록 페이지로 이동
	location.href="http://localhost/salad_mvc/mng_prd_add.do";
}//movePrdAdd

</script>

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <!-- Navbar Brand-->
	    <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
	    href="http://localhost/salad_mvc/mng_dashboard.do"><img alt="img" src="http://localhost/salad_mvc/resources/mng_images/saladLogo.png" height="50px"></a>
	    <div class="ms-auto" style="color:white;"><c:out value="${ sessionScope.mngId }"/>님,어서오세요.&nbsp;&nbsp;</div>
	    <!-- Navbar-->
	     <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
	        <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
	            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
	                <li><a class="dropdown-item" href="http://localhost/salad_mvc/mng_logout.do">Logout</a></li>
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
		                <a class="nav-link" style="padding-bottom:28px;" href="http://localhost/salad_mvc/mng_dashboard.do">
		                    -대시보드
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
		                style="text-decoration-line:none; font-size:16px; padding:0;" 
		                href="http://localhost/salad_mvc/mng_member.do">회원 관리</a></div>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">상품 관리</div>
		                <a class="nav-link" href="http://localhost/salad_mvc/mng_prd.do">
		                    -상품 등록
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="http://localhost/salad_mvc/mng_rev.do">
		                    -상품 후기
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">주문 관리</div>
		                <a class="nav-link" href="http://localhost/salad_mvc/mng_order.do">
		                    -주문 관리
		                </a>
		                <a class="nav-link" style="padding-top:0;"href="http://localhost/salad_mvc/mng_cancel.do">
		                    -취소 관리
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="http://localhost/salad_mvc/mng_deli.do">
		                    -배송 관리
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">게시판 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://localhost/salad_mvc/mng_notice.do">
		                    -공지사항
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">문의 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://localhost/salad_mvc/mng_qna.do">
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
							<div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">환영합니다! <c:out value="${ sessionScope.mngId }"/>님.</div>
						</div>
						<div>
							<img src="http://localhost/salad_mvc/resources/mng_images/socialMedia.png" width="130px">
						</div>
						<div style="width:319px;"></div>
					</div>
				</div>
                <div class="row">
       		 		<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px; max-width: 800px;">
	                  	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
			                    <div style=" color:white; font-weight:bold; font-size:20px;">상품 등록 수</div>
		                    	<div style="color:white; font-weight:bold; font-size:20px;">
		                    		<span style="font-size:30px;" id="totalPrdCnt"></span>건
		                    	</div>
	                   		</div>
	                  	</div>
					</div>
					<div style="width: 80%">
						<form name="categoryFrm" style="display: flex; justify-content: right; margin-bottom: 10px;">
							<select name="mainCate" id="mainCate">
								<option value="0">---메인 카테고리---</option>
							</select>
							<select name="subCate" id="subCate">
								<option value="0">---서브 카테고리---</option>
							</select>
							<input type="text" name="keyword" id="keyword" value="" style="width: 30%">
							<input type="text" style="display: none"><!-- 자동 submit을 막기 위함 -->
							<input type="button" value="검색" class="button2" id="searchBtn" name="searchBtn" style="width: 100px">
						</form>
					</div>
					<div style="width: 80%; margin: 10px auto; text-align: center;">
						<div id="prdListOutput">
							
						</div>
						<div>
							<input type="button" value="상품등록하기" onclick="movePrdAdd()" class="button" style="width: 14%; display: block; float: right;">
						</div>
					</div>
				</div>
				<div id="pageOutput">
	               	
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
