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
 <!-- ��� ���� �׺� -->   
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="index.html"><img alt="img" src="./resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3�������ڴ�, �������.&nbsp;&nbsp;</div>
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
<!-- ���� ���� �׺� -->         
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">����</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="index.html">
                                -��ú���
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
                            style="text-decoration-line:none; font-size:16px; padding:0;" 
                            href="#">ȸ�� ����</a></div>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">��ǰ ����</div>
                            <a class="nav-link" href="index.html">
                                -��ǰ ���
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="index.html">
                                -��ǰ �ı�
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">�ֹ� ����</div>
                            <a class="nav-link" href="index.html">
                                -�ֹ� ����
                            </a>
                            <a class="nav-link" style="padding-top:0;"href="index.html">
                                -��� ����
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="index.html">
                                -��� ����
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">�Խ��� ����</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="index.html">
                                -��������
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">���� ����</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="index.html">
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
	                        <img src="./resources/mng_images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        
                        
                        <div >
<!-- 1��° ���� - ���� ���� -->
                        	<div style="width:100%; display:flex; font-size:16px; font-weight:bold;  padding:10px 0 20px 0;  ">
		                        <div style="width:150px; padding:10px 0 px 50px; margin-left: 30px; margin-right: 20px;">
		                        		����_����_����
		                        	<div style="background:#F7F7F7; width:300px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	�� ���� �ݾ�
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">500,000</span>��
				                        	</div>
			                        	</div>
		                        	</div>
                        		</div>
		                        		
		                        		
		                        <div style="width:150px; margin-left: 180px; margin-right: 250px;">
		                        		�̹� ��_ ����_����
		                        	<div style="background:#F7F7F7; width:300px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	�� ���� �ݾ�
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">3,000,000</span>��
				                        	</div>
			                        	</div>
		                        		</div>
		                        	</div>
                       		</div>
                       		 
<!-- 1��° ���� ��-->
<!-- 2��° ���� - ȸ�� ���� -->
                        	<div style="width:100%; display:flex; font-size:16px; font-weight:bold; padding:10px 0 20px 0; margin-top: 30px; ">
                        	
		                        <div style="width:150px; margin-left: 30px; margin-right: 50px;">
		                        	�� �ֹ� �Ǽ�
		                        <div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-top: 20px; ">
		                        	<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                       	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	���� �ֹ�
				                        </div>
				                        <div style="color:white; font-weight:bold; font-size:20px;">
				                       		<span style="font-size:30px;">20</span>��
				                        </div>
			                        </div>
		                        </div>
                       		</div>
		                        

		                        <div style="background:rgb(186,212,206); width:150px; height:155px; border-radius:35px;  margin-right: 400px; margin-top: 45px;">
		                        	<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        <div style=" color:white; font-weight:bold; font-size:20px;">
				                        	�̹� �� �ֹ�
				                        </div>
				                        <div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">50</span>��
				                       	</div>
			                        </div>
		                        </div>
		                        
							  <div id="chart_div" style="width:200px;"></div>
		                        
                           	</div>	 
                       	</div>
<!-- 2��° ���� ��-->
<!-- 3��° ���� - �ֹ����� -->
                        	<div style="width:100%; display:flex; font-size:16px; font-weight:bold; padding:10px 0 20px 0; margin-top: 20px;">
		                        <div style="width:150px; margin-left: 30px; ">
		                        		��ü ȸ�� ����
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	�� ȸ�� ��
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">50</span>��
				                        	</div>
			                        	</div>
		                        		</div>
                        		</div>
		                        	
		                        	<div style="background:#F7F7F7;  width:150px; height:155px; border-radius:35px; margin-left: 50px; margin-right: 50px; margin-top: 40px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	���� ȸ�� ��
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">40</span>��
				                        	</div>
			                        	</div>
		                        	</div>
		                        	
		                        	
		                        	<div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-top: 40px; margin-right:150px">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	Ż�� ȸ�� ��
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">10</span>��
				                        	</div>
			                        	</div>
		                        	</div>
		                        	
		                        <div style="width:150px; margin-left: 30px; ">
		                        	��ǰ ���Ǳ�
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px; margin-right: 30px; margin-top: 20px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	 �̴亯 ����
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">1</span>��
				                        	</div>
			                        	</div>
		                        		</div>
                        		</div>
                        		
		                        	<div style="background:#F7F7F7; width:150px; height:155px; border-radius:35px; margin-left:50px; margin-top: 40px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:#000000; font-weight:bold; font-size:20px;">
				                        	�亯 ����
				                        	</div>
				                        	<div style="color:#000000; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;">3</span>��
				                        	</div>
			                        	</div>
		                        	</div>
                       		 </div>

<!-- 3��° ���� ��-->
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
	                        		<img alt="img" src="./resources/mng_images/saladLogo.png">
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
    </body>
</html>
