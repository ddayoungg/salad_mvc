<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<style type="text/css">
	.button{
		width:100px;
		height:40px;
		margin:10px;
		backgound-color:transparent;
		border:1px solid #14CEA9;
		color:#14CEA9;
		line-height:30px;
	}
	.button:hover{
		background-color:#14CEA9;
		color:white;
	}
	.button2{
		width:14%;
		background-color:white;
		border:1px solid grey;
	}
	.button2:hover{
		background-color:#f0f0f0;
	}
	.on{
		font-weight:bold;
		opacity:0.6;
		cursor:not-allowed;
	}
</style>
    <!-- JQuery google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript">
    $(function(){
    	
    	setTotalQna();
    	
    	setMainCate();
    	$("#mainCate").change(function(){
    		if($("#mainCate").val()!="0"){
    			setSubCate();
    		}
    	});
    	
    	
    	$("#searchBtn").click(function(){
    		setQnaList($("#currentPage").val());
    	});
    	
    	setQnaList(1);
    	
    	$("#keyword").keydown(function(keyNum){
    		//현재의 키보드의 입력값을 keyNum으로 받음
    		if(keyNum.keyCode == 13){ //keyCode=13 : Enter
    			$("#searchBtn").click()	
    		}//end if
    		
    	});//keydown
    	
    })//ready
    
    function setTotalQna(){
    	$.ajax({
    		url:"mng_qna_total_ajax.do",
    		dataType:"json",
    		error:function(xhr){
    			alert("전체 상품문의를 불러오는데 실패했습니다.");
    			console.log(xhr.status);
    		},
    		success:function(jsonObj){
    			$("#qnaTotalA").html(jsonObj.qnaTotalA);
    			$("#qnaTotalNA").html(jsonObj.qnaTotalNA);
    		}
    	});
    	
    }
    
    function setMainCate(){
    	$.ajax({
    		url:"http://salad.sist.co.kr/mng_qna_main_cate_ajax.do",
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
    		url:"http://salad.sist.co.kr/mng_qna_sub_cate_ajax.do",
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
    				
    				encodeURI($("#keyword").val(""));//검색 초기화
    				
    				$.each(jsonObj.subCateData, function(i, json){
    					subCateSel.options[i+1]=new Option( json.subCateName, json.subCateNum);
    				});//each
    			}//end if
    		}//success
    	})//ajax
    }//setSubCate
    
    function setQnaList(currentPage){ //이게 한글이 깨지는게 아닌데 깨져서 JS에서 인코딩했습니다. 네 감사합니다
    	var param = "currentPage="+currentPage+"&subCateNum="+$("#subCate").val()+"&keyword="+ encodeURI($("#keyword").val());
    	$.ajax({
    		url:"mng_qna_list_ajax.do",
    		data:param,
    		dataType:"json",
    		error:function(xhr){
    			alert("상품문의 리스트를 불러오는데 실패했습니다.");
    			console.log(xhr.status);
    		},
    		success:function(jsonObj){
    			$("#qnaListOutput").show();
    			var tbOutput="<table class='table'style='table-layout:fixed; width: 90%; margin: 0px auto; text-align: center;'>";
    			 tbOutput+="<thead class='table-light' style='height: 50px;'>";
    			 tbOutput+="<tr><th>문의번호</th><th>문의제목</th><th>문의날짜</th><th>문의상태</th><th>아이디</th></tr>";
    			 tbOutput+="</thead>";
    			 tbOutput+="<tbody>";
    			 if(!jsonObj.isEmpty){
    				 $.each(jsonObj.list, function(i, json){
    					tbOutput+="<tr>";
    					tbOutput+="<td>"+json.qnaNum+"</td>";
    					tbOutput+="<td style='text-overflow:ellipsis; white-space:nowrap; overflow:hidden;'><a style='text-decoration:none; color:black; ' href='mng_qna_detail.do?qnaNum="+json.qnaNum+"'>"+json.qnaTitle+"</a></td>";
    					tbOutput+="<td>"+json.qnaWriteDate+"</td>";
    					tbOutput+="<td>"+json.qnaAFlag+"</td>";
    					tbOutput+="<td>"+json.id+"</td>";
    					tbOutput+="</tr>";
    				});//each
    			} else {
    					tbOutput+="<tr><td colspan=6>데이터가 존재하지 않습니다.</td></tr>";
    			}//end else
    					tbOutput+="</tbody>";
    					tbOutput+="</table>";
    			$("#qnaListOutput").html(tbOutput);
    			/* 페이징 버튼 */
    			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
    				pgOutput+="<ul class='pagination'>";
    			if( jsonObj.startPage != 1 ) {
    				pgOutput+="<li class='page-item'>";
    				pgOutput+="<a class='page-link' href='#void' onclick='setQnaList(" + 1 + ")' tabindex='-1'";
    				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
    			}//end if
    			if( jsonObj.startPage != 1 ) {
    				pgOutput+="<li class='page-item'>";
    				pgOutput+="<a class='page-link' href='#void' onclick='setQnaList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
    				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
    			}//end if
    			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
    				pgOutput+="<li class='page-item'>"
    				pgOutput+="<a class='page-link' href='#void' onclick='setQnaList(" + i  + ")'>"+ i +"</a></li>";
    			}//end for
    			if(jsonObj.totalPage != jsonObj.endPage) {
    				pgOutput+="<li class='page-item'>";
    				pgOutput+="<a class='page-link' href='#void' onclick='setQnaList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
    			}//end if
    			if(jsonObj.totalPage != jsonObj.endPage) {
    				pgOutput+="<li class='page-item'>";
    				pgOutput+="<a class='page-link' href='#void' onclick='setQnaList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
    			}//end if
    			pgOutput+="</ul></nav>";
    			
    			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
    			
    			$("#pageOutput").html(pgOutput);
    		}
    	})
    }
    </script>
    
    </head>
    
    
    
 <body class="sb-nav-fixed">
 <!-- 상단 우측 네비 -->   
  <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조 관리자님, 어서오세요.&nbsp;&nbsp;</div>
            <!-- Navbar-->
             <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="mng_logout.do">Logout</a></li>
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
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_dashboard.do">
                                -대시보드
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
                            style="text-decoration-line:none; font-size:16px; padding:0;" 
                            href="mng_member.do">회원 관리</a></div>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">상품 관리</div>
                            <a class="nav-link" href="mng_prd.do">
                                -상품 등록
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="mng_rev.do">
                                -상품 후기
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">주문 관리</div>
                            <a class="nav-link" href="mng_order_main.do">
                                -주문 관리
                            </a>
                            <a class="nav-link" style="padding-top:0;"href="mng_cancel.do">
                                -취소 관리
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="mng_deli.do">
                                -배송 관리
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">게시판 관리</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_notice.do">
                                -공지사항
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">문의 관리</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_qna.do">
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
	                        <img src="http://salad.sist.co.kr/resources/mng_images/socialMedia.png" width="130px">
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
				                    		<span id="qnaTotalNA" style="font-size:30px;"></span>건
				                    	</div>
			                   		</div>
			                  	</div>
			                  	<div style="background:#f0f0f0; width:150px; height:155px;border-radius:35px;">
			                  		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                    	<div style=" color:grey; font-weight:bold; font-size:20px;">답변한 문의</div>
				                    	<div style="color:grey; font-weight:bold; font-size:20px;">
				                    		<span id="qnaTotalA" style="font-size:30px;"></span>건
				                    	</div>
			                   		</div>
			                  	</div>
                     		 </div>
                       	</div>
          	
<!-- 본문 리스트 시작 -->                       	
               	<div>
               	<div style="width: 90%; margin-left: 85px; margin-bottom: 20px;">
						<form name="categoryFrm" style="display: flex; justify-content: space-between; margin-bottom: 10px;">
							<select name="mainCate" id="mainCate"  style="width: 16%">
								<option value="0">---메인 카테고리---</option>
							</select>
							<select name="subCate" id="subCate" style="width: 16%">
								<option value="0">---서브 카테고리---</option>
							</select>
							<input type="text" name="keyword" id="keyword" value="" style="width: 50%" placeholder="내용을 입력해 주세요">
							<input type="text" style="display: none">
							<input type="button" value="검색" class="button2" id="searchBtn" name="searchBtn" style="width: 14%">
						</form>
					</div>
					<div id="qnaListOutput">
               		
					</div>
					
               	</div>
               	<div id="pageOutput">
               	
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
