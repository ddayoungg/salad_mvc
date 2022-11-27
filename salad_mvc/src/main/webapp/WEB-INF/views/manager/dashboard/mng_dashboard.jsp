<%@page import="kr.co.salad.manager.dao.MngLoginDAO"%>
<%@page import="kr.co.salad.manager.vo.MngLoginVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
        <link href="http://salad.sist.co.kr/resources/mng_css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
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
                        
                        <!-- <form id="dashFrm" action="mng_login.do" method="get"> -->
                       <!--  <div > -->
<!-- 1��° ���� - ���� ���� -->
                        	<div style="width:100%; display:flex; justify-content:flex-start; font-size:16px; font-weight:bold;  padding:10px 0 20px 0; height:250px;  ">
		                        <div style="width:250px; margin:0 50px 0 50px;">
		                        		����_����_����
		                        	<div style="background:#F7F7F7; width:250px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	�� ���� �ݾ�
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<%-- <span style="font-size:30px;" ><%= request.getAttribute("payDayT") %></span>�� --%>
				                        	<span style="font-size:30px;" >
											<fmt:formatNumber value="${payDayT}" pattern="#,###"/>
											</span>��
				                        	</div>
			                        	</div>
		                        	</div>
                        		</div>
		                        			
		                        <div style="width:250px; margin:0 60px 0 0;">
		                        		�̹� ��_ ����_����
		                        	<div style="background:#F7F7F7; width:250px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	�� ���� �ݾ�
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<%-- <span style="font-size:30px;"><%= request.getAttribute("payDayM") %></span>�� --%>
				                        	<span style="font-size:30px;"><fmt:formatNumber value="${payDayM}" pattern="#,###"/></span>��
				                        	</div>
			                        	</div>
		                        		</div>
		                        	</div>
		                        	
		                        	<!-- <div style="width:100%; display:flex; font-size:16px; font-weight:bold; padding:10px 0 20px 0; margin-top: 30px; "> -->
                        	
		                        <div style="width:150px; margin:0 50px 0 60px;">
		                        	�� �ֹ� �Ǽ�
		                        <div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-top: 20px; ">
		                        	<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                       	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	���� �ֹ�
				                        </div>
				                        <div style="color:white; font-weight:bold; font-size:20px;">
				                       		<span style="font-size:30px;"><%= request.getAttribute("orderDayT") %></span>��
				                        </div>
			                        </div>
		                        </div>
                       			</div>
                       			
                       			 <div style="width:150px; margin:0 130px 0 0;">
		                        	�� �ֹ� �Ǽ�
		                        <div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-top: 20px; ">
		                        	<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                       	<div style="  color:#000000; font-weight:bold; font-size:20px;">
				                        	�̹� �� �ֹ�
				                        </div>
				                        <div style=" color:#000000; font-weight:bold; font-size:20px;">
				                       		<span style="font-size:30px;"><%= request.getAttribute("orderDayM") %></span>��
				                        </div>
			                        </div>
		                        </div>
                       			</div>		                        
		                        
		                        <div style="width:330px;  margin:0 0 20px 0;">���� ī�װ� �� �Ǹ� �� ( ���� �׷��� )
		                        	<div style="width:330px; margin:10px 0 0 0;">
							  		<canvas id="myChart"></canvas>
							  		</div>
							  	</div>                        
                           	</div>	 
                           	
                        	<div style="width:100%; display:flex; justify-content:flex-start; font-size:16px; font-weight:bold; padding:10px 0 20px 0; margin-top: 20px; ">
		                        <div style="width:150px; margin:0 0 0 50px; flex-direction:;">
		                        		��ü ȸ�� ����
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	�� ȸ�� ��
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("memberStatusT") %></span>��
				                        	</div>
			                        	</div>		                        		
		                        	</div>
                        		</div>
		                        <div style="width:150px; margin:0 0 0 50px; flex-direction:;">&nbsp;
		                        	<div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:#000000;  font-weight:bold; font-size:20px;">
				                        	���� ȸ�� ��
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("memberStatusJ") %></span>��
				                        	</div>
			                        	</div>		                        		
		                        	</div>
                        		</div>
		                        <div style="width:150px; margin:0 0 0 50px; flex-direction:;">&nbsp;
		                        	<div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:#000000;  font-weight:bold; font-size:20px;">
				                        	Ż�� ȸ�� ��
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("memberStatusO") %></span>��
				                        	</div>
			                        	</div>		                        		
		                        	</div>
                        		</div>

		                        <div style="width:150px; margin:0 0 0 120px; ">
		                        	��ǰ ���Ǳ�
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	 �̴亯 ����
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("answerStatusN") %></span>��
				                        	</div>
			                        	</div>
		                        		</div>
                        		</div>
		                        <div style=" width:150px;  margin:0 130px 0 50px; ">
		                        	&nbsp;
		                        	<div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	 �亯 ����
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("answerStatusY") %></span>��
				                        	</div>
			                        	</div>
		                        		</div>
                        		</div>                       		
		                        	
		                        	<div style="width:330px;  margin:0 0 20px 0;">���� ī�װ� �� �Ǹ� �� ( ���� �׷��� )
		                        	<div style="width:330px; margin:10px 0 0 0;">
							  		<canvas id="myChartPie"></canvas>
							  		</div>
							  		</div>
                       		 </div>
                        </div>
                </main>
                
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
	                        		<img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
                <!-- Ǫ�� �� -->               
                
            </div>
            </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="http://salad.sist.co.kr/resources/mng_js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-area-demo.js"></script>
        <script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="http://salad.sist.co.kr/resources/mng_js/datatables-simple-demo.js"></script>
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

<!-- <script type="text/javascript">

/* google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic); */

function drawBasic() {
	var data = new google.visualization.DataTable();
		data.addColumn('string', '���� ī�װ�');
		data.addColumn('number', '�ֹ�(��)');

		data.addRows([
			['A', 510],
			['B', 915],
			['C', 464],
			['D', 378],
			['E', 1285],
		]);

 

	var options = {
		title: '���� ī�װ� �� �Ǹ� ��',
	hAxis: {
		title: '���� ī�װ�',
		viewWindow: {
			min: [7, 30, 0],
			max: [17, 30, 0]
		}
	},
	vAxis: {
		title: '�ֹ�(��)'
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
<script type="text/javascript">
var context = document
.getElementById('myChart')
.getContext('2d');
var myChart = new Chart(context, {
type: 'bar', // ��Ʈ�� ����
data: { // ��Ʈ�� �� ������
    labels: [
        //x ��
        '������','������','�����','�߰�����&����'
    ],
    datasets: [
        { //������
            label: '���� ī�װ� �� �Ǹ� ��', //��Ʈ ����
            fill: false, // line ������ ��, �� ������ ä����� ��ä�����
            data: [
            	<%=request.getAttribute("category1") %>,
            	<%=request.getAttribute("category2") %>,
            	<%=request.getAttribute("category3") %>,
            	<%=request.getAttribute("category4") %> //x�� label�� �����Ǵ� ������ ��
            ],
            backgroundColor: [
                //����
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)'
                /* 'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)' */
            ],
            borderColor: [
                //��輱 ����
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)'
               /*  'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)' */
            ],
            borderWidth: 1 //��輱 ����
        }
    ]
},
options: {
    scales: {
        yAxes: [
            {
                ticks: {
                    beginAtZero: true
                }
            }
        ]
    }
}
});
</script>
<script type="text/javascript">
var context = document
.getElementById('myChartPie')
.getContext('2d');
var myChart = new Chart(context, {
type: 'pie', // ��Ʈ�� ����
data: { // ��Ʈ�� �� ������
    labels: [
        //x ��
        '������','������','�����','�߰�����&����'
    ],
    datasets: [
        { //������
            label: '���� ī�װ� �� �Ǹ� ��', //��Ʈ ����
            fill: false, // line ������ ��, �� ������ ä����� ��ä�����
            data: [
            	<%=request.getAttribute("category1") %>,
            	<%=request.getAttribute("category2") %>,
            	<%=request.getAttribute("category3") %>,
            	<%=request.getAttribute("category4") %> //x�� label�� �����Ǵ� ������ ��
            ],
            backgroundColor: [
                //����
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)'
                /* 'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)' */
            ],
            borderColor: [
                //��輱 ����
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)'
               /*  'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)' */
            ],
            borderWidth: 1 //��輱 ����
        }
    ]
},
options: {
    scales: {
        yAxes: [
            {
                ticks: {
                    beginAtZero: true
                }
            }
        ]
    }
}
});
</script>
    </body>
</html>
