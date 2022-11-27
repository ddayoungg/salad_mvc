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
    		//������ Ű������ �Է°��� keyNum���� ����
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
    			alert("��ü ��ǰ���Ǹ� �ҷ����µ� �����߽��ϴ�.");
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
    			alert("���� ī�װ��� ��ȸ�ϴ� ���� �߻��߽��ϴ�.");
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
    			alert("���� ī�װ��� ��ȸ�ϴ� ���� �߻��߽��ϴ�.");
    			console.log(xhr.status);
    		},
    		success: function( jsonObj ) {
    			if(jsonObj.resultFlag){
    				var subCateSel=document.categoryFrm.subCate;
    				//<select>�� <option>�� �ϳ��� ���ܵΰ� �ʱ�ȭ
    				subCateSel.length=1;
    				
    				encodeURI($("#keyword").val(""));//�˻� �ʱ�ȭ
    				
    				$.each(jsonObj.subCateData, function(i, json){
    					subCateSel.options[i+1]=new Option( json.subCateName, json.subCateNum);
    				});//each
    			}//end if
    		}//success
    	})//ajax
    }//setSubCate
    
    function setQnaList(currentPage){ //�̰� �ѱ��� �����°� �ƴѵ� ������ JS���� ���ڵ��߽��ϴ�. �� �����մϴ�
    	var param = "currentPage="+currentPage+"&subCateNum="+$("#subCate").val()+"&keyword="+ encodeURI($("#keyword").val());
    	$.ajax({
    		url:"mng_qna_list_ajax.do",
    		data:param,
    		dataType:"json",
    		error:function(xhr){
    			alert("��ǰ���� ����Ʈ�� �ҷ����µ� �����߽��ϴ�.");
    			console.log(xhr.status);
    		},
    		success:function(jsonObj){
    			$("#qnaListOutput").show();
    			var tbOutput="<table class='table'style='table-layout:fixed; width: 90%; margin: 0px auto; text-align: center;'>";
    			 tbOutput+="<thead class='table-light' style='height: 50px;'>";
    			 tbOutput+="<tr><th>���ǹ�ȣ</th><th>��������</th><th>���ǳ�¥</th><th>���ǻ���</th><th>���̵�</th></tr>";
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
    					tbOutput+="<tr><td colspan=6>�����Ͱ� �������� �ʽ��ϴ�.</td></tr>";
    			}//end else
    					tbOutput+="</tbody>";
    					tbOutput+="</table>";
    			$("#qnaListOutput").html(tbOutput);
    			/* ����¡ ��ư */
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
 <!-- ��� ���� �׺� -->   
  <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3�� �����ڴ�, �������.&nbsp;&nbsp;</div>
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
<!-- ���� ���� �׺� -->         
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">����</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_dashboard.do">
                                -��ú���
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
                            style="text-decoration-line:none; font-size:16px; padding:0;" 
                            href="mng_member.do">ȸ�� ����</a></div>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">��ǰ ����</div>
                            <a class="nav-link" href="mng_prd.do">
                                -��ǰ ���
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="mng_rev.do">
                                -��ǰ �ı�
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">�ֹ� ����</div>
                            <a class="nav-link" href="mng_order_main.do">
                                -�ֹ� ����
                            </a>
                            <a class="nav-link" style="padding-top:0;"href="mng_cancel.do">
                                -��� ����
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="mng_deli.do">
                                -��� ����
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">�Խ��� ����</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_notice.do">
                                -��������
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">���� ����</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_qna.do">
                                -��ǰ����
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            
            <div id="layoutSidenav_content">
                <main>
<!-- ������� -->
                    <div class="container-fluid px-4">
                    	<div style="display:flex; justify-content:space-between; flex-direction:row;
                    	padding:20px 0 30px 0;">
	                    	<div>
	                        <h1 id="clock" class="mt-4" 
	                        style="font-size:20px; color:rgb(94,94,94); font-weight:bold;">clock</h1>
	                        <div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">
	                        ȯ���մϴ�! 3�� �����ڴ�.
	                        </div>
	                        </div>
	                        <div>
	                        <img src="http://salad.sist.co.kr/resources/mng_images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        </div>
                        
<!-- ���� ��� ��� -->
                        <div class="row">
                       		<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px; max-width: 800px;">
			                  	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px;">
			                  		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
					                    <div style=" color:white; font-weight:bold; font-size:20px;">�̴亯 ����</div>
				                    	<div style="color:white; font-weight:bold; font-size:20px;">
				                    		<span id="qnaTotalNA" style="font-size:30px;"></span>��
				                    	</div>
			                   		</div>
			                  	</div>
			                  	<div style="background:#f0f0f0; width:150px; height:155px;border-radius:35px;">
			                  		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                    	<div style=" color:grey; font-weight:bold; font-size:20px;">�亯�� ����</div>
				                    	<div style="color:grey; font-weight:bold; font-size:20px;">
				                    		<span id="qnaTotalA" style="font-size:30px;"></span>��
				                    	</div>
			                   		</div>
			                  	</div>
                     		 </div>
                       	</div>
          	
<!-- ���� ����Ʈ ���� -->                       	
               	<div>
               	<div style="width: 90%; margin-left: 85px; margin-bottom: 20px;">
						<form name="categoryFrm" style="display: flex; justify-content: space-between; margin-bottom: 10px;">
							<select name="mainCate" id="mainCate"  style="width: 16%">
								<option value="0">---���� ī�װ�---</option>
							</select>
							<select name="subCate" id="subCate" style="width: 16%">
								<option value="0">---���� ī�װ�---</option>
							</select>
							<input type="text" name="keyword" id="keyword" value="" style="width: 50%" placeholder="������ �Է��� �ּ���">
							<input type="text" style="display: none">
							<input type="button" value="�˻�" class="button2" id="searchBtn" name="searchBtn" style="width: 14%">
						</form>
					</div>
					<div id="qnaListOutput">
               		
					</div>
					
               	</div>
               	<div id="pageOutput">
               	
               	</div>
               	
              </main>
<!-- ���� �� -->                                             
                
<!-- Ǫ�� -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="align-items-center justify-content-between small">
                            <div class="text-muted">
                            	<span style="margin: 0 30px 0 0;">ȸ��Ұ�</span>
                            	<span style="margin: 0 30px 0 0;">�̿���</span>
                            	<span style="margin: 0 30px 0 0;">��������ó����ħ</span>
                            	<span>�̿�ȳ�</span>
                            </div>
                            <hr>
                            <div style="display: flex; justify-content: space-between;" >
	                             <div class="text-muted">
	                            	<div>���θ�(��ȣ) : �ֽ�ȸ�� ��������� / ��ǥ : 3�� / TEL : 0000-0000 / FAX : 02-0000-0000</div>
	                            	<div>����ڵ�Ϲ�ȣ : 000-00-00000 / ����Ǹž��Ű��ȣ : �� 0000 - �ֿ�3�� - 0000ȣ</div>
	                            	<div>�ּ� : ���ﱤ���� ������ ������� 132 / ������������å���� : 3�� / E-Mail : 3��@0000.co.kr</div>
	                        	</div>
	                        	<div>
	                        		<img alt="img" src="img/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
<!-- Ǫ�� �� -->
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
        var week = ['��', '��', 'ȭ', '��', '��', '��', '��'];

        var hours = time.getHours();
        var minutes = time.getMinutes();
        var seconds = time.getSeconds();
        var AmPm = "AM";
        if(hours > 12){
            var AmPm = "PM";
            hours %= 12;
        }

        Target.innerText =
        `\${year}-\${month + 1}-\${date} \${week[day]}���� ` +
        `\${hours < 10 ? `\${hours}` : hours}:\${minutes < 10 ? `\${minutes}` : minutes}` + `\${AmPm}`;
            
    }
    clock();
    setInterval(clock, 1000); // 1�ʸ��� ����
</script>
    </body>
</html>
