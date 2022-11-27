<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>

<!doctype html>
<html>
<head>
    <title>포켓샐러드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjcwMzE1OTY3MDI1Njg1MDcyNDQzNjUyMzkxNTE5MzI0NTI3NjM3" />


    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/board/list.jsp?bdId=notice&amp;noheader=y">
    <meta property="og:description" content="내가 찾던 식단관리!">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="160">
    <meta property="og:image:height" content="160">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="포켓샐러드">
    <meta name="twitter:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta name="twitter:description" content="내가 찾던 식단관리!">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1666674309">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/list.css?ts=1662515260">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/board/board.css?ts=1666243429" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />

    <!-- Add style : start -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/plugins/bootstrap-datetimepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/plugins/bootstrap-datetimepicker-standalone.css" />
    <!-- Add style : end -->

    <script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_gettext.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/underscore/underscore-min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/validation/jquery.validate.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/validation/additional-methods.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/numeral/numeral.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/global/accounting.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/global/money.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/placeholder/placeholders.jquery.min.js?ts=1610501674"></script>
    <![if gt IE 8]>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/copyclipboard/clipboard.min.js?ts=1610501674"></script>
    <![endif]>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/vticker/jquery.vticker.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_ui.js?ts=1610501674"></script>

    <script type="text/javascript">
        // 고도몰5 통화정책
        var gdCurrencyDecimal = 0;
        var gdCurrencyDecimalFormat = '0';
        var gdCurrencyCode = 'KRW';
        var gdCurrencyAddDecimal = 0;
        var gdCurrencyAddDecimalFormat = '';
        var gdCurrencyAddCode = '';
        var gdLocale = 'ko';
        var gdCurrencySymbol = '';
        var gdCurrencyString = '원';

        // 환율변환 정책
        fx.base = "KRW";
        fx.settings = {
            from : "KRW",
            to : gdCurrencyCode
        };
        fx.rates = {
            "KRW" : 1,
            "USD" : 0.00069994680404289274,
            "CNY" : 0.00505203597049610993,
            "JPY" : 0.10453471597917668457,
            "EUR" : 0.00071439797682492963,
        }
    </script>

    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_common.js?ts=1610501674"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A05%3A59%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22list.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData="></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_common.js"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/moment.js"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/locale/ko.js"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/datetimepicker/bootstrap-datetimepicker.js"></script>
    <!-- Add script : end -->

    

    <style type="text/css">
        body {
        }

        /* body > #wrap > #header_warp : 상단 영역 */
        #header_warp {
        }

        /* body > #wrap > #container : 메인 영역 */
        #container {
        }

        /* body > #wrap > #footer_wrap : 하단 영역 */
        #footer_wrap {
        }
    </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

$(function(){
	setRevList(1);
	
/* 	$("#searchBtn").click(function() {
		setRevList($("#currentPage").val());
	});
	
	$('#searchFlag').change(function() {
 	alert("제목 클릭1");
	    var result = $('#searchFlag option:selected').val();
	    if (result == '1') {
 	alert("제목 클릭2");
	    	$("#searchText").val("");
	    	$("input#searchText").attr("placeholder", "제목을 입력해주세요");
	    }
	    if (result == '2') {
 	alert("내용 클릭");
	    	$("#searchText").val("");
	    	$("input#searchText").attr("placeholder", "내용을 입력해주세요");
	    }
	  }); */
	
})

function setDetail(revNum){
	location.href="mypage_review_view.do?revNum="+revNum; // 나의후기 상세페이지로 이동
}

//후기 리스트 
function setRevList(currentPage){
	console.log(currentPage);
	$.ajax({
		url:"myrev_list_ajax.do",
		data:"currentPage="+currentPage,
		dataType:"json",
		error:function(request,status,error){
			alert("나의 후기 리스트를 불러오는 중에 문제가 발생했습니다.");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			console.log(xhr.status);
		},
		success:function(jsonObj){
			
			/* 페이징 테이블 */
			$("#MyRevListOutput").show();
			var tbOutput="<table class='board_list_table'>";
			 tbOutput+="<thead>";
			 tbOutput+="<tr><th>후기번호</th><th>이미지</th><th>제목</th><th>작성일자</th><th>조회</th></tr>";
			 tbOutput+="</thead>";
			 tbOutput+="<tbody>";
			 if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					tbOutput+="<tr>";
					tbOutput+="<td>"+json.revNum+"</td>";
					tbOutput+="<td>"+"<img src='http://localhost/salad_mvc/common/images/product/"+json.thum+"' width=100px height=100px></td>";
					tbOutput+="<td>"+"<a href='#void' onclick='setDetail("+json.revNum+")'>"+json.revTitle+"</td>";
					tbOutput+="<td>"+json.revWriteDate+"</td>";
					tbOutput+="<td>"+json.revHits+"</td>";
					tbOutput+="</tr>";
				});//each
			} else {
					tbOutput+="<tr><td colspan=5>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
					tbOutput+="</tbody>";
					tbOutput+="</table>";
			$("#MyRevListOutput").html(tbOutput);
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				pgOutput+="<li class='page-item'>"
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#pageOutput").html(pgOutput);
		}//success
	})//ajax
}//setMyRevList

</script>
</head>

<body class="body-board body-list pc"  >
<div class="content">
<div class="board_zone_sec">
    <div  class="board_zone_tit" >


		<h2>나의 상품후기</h2>
		
		
    </div>
    <div class="board_zone_cont" id="board_content">
        <div class="board_zone_list" align="center">

			<div id="MyRevListOutput"></div>
        	<div></div>
       		<div id="pageOutput"></div>
            
        </div>
        <!-- //board_zone_list -->
        
<!--         
     	<form id="searchFrm" name="searchFrm"  action="mypage_review_list.do">
               	<div style="width: 90%; margin-left: 85px; margin-bottom: 20px;" align="center">
               		<select style="width: 100px; height: 37px;"id="searchFlag" name="searchFlag">
               			<option value="1">제목</option>
               			<option value="2">내용</option>
               		</select>
               		<input type="text"  placeholder="내용을 입력하세요." id="searchText" name="searchText">
               		<input type="text" style="display: none;"/>
               		<input type="button" value="검색" id="searchBtn" name="searchBtn" style="width: 100px; height: 37px; background-color: #14CEA9; color: white; ">
               	</div>
        </form>  -->  
    </div>
    <!-- //board_zone_cont -->
</div>
<!-- //board_zone_sec -->

<form id="frmWritePassword">
    <div id="lyPassword" class="dn layer_wrap password_layer" style="height: 226px">
        <div class="layer_wrap_cont">
            <div class="ly_tit">
                <h4>비밀번호 인증</h4>
            </div>
            <div class="ly_cont">
                <div class="scroll_box">
                    <p>비밀번호를 입력해 주세요.</p>
                    <input type="password" name="writerPw" class="text">
                </div>
                <!-- // -->
                <div class="btn_center_box">
                    <button type="button" class="btn_ly_password js_submit"><strong>확인</strong></button>
                </div>
            </div>
            <!-- //ly_cont -->
            <a href="#close" class="ly_close layer_close"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/layer/btn_layer_close.png" alt="닫기"></a>
        </div>
        <!-- //layer_wrap_cont -->
    </div>
    <!-- //layer_wrap -->
</form>

<div id="layerDim" class="dn">&nbsp;</div>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_list.js" charset="utf-8"></script>
<script>
    $(document).ready(function () {
        $('img.js_image_load').error(function () {
            $(this).css('background', 'url("http://localhost/salad_mvc/resources/board/skin/default/img/etc/noimg.png") no-repeat center center');
            $(this).attr('src', '/data/skin/front/kaimen_pc_n/img/etc/blank.gif');
        })
            .each(function () {
                $(this).attr("src", $(this).attr("src"));
            })
    });
</script>
</div>
<!-- //content -->
<!-- 절대! 지우지마세요 : Start -->
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="900" height="500"></iframe>
<!-- 절대! 지우지마세요 : End -->

</body>
</html>