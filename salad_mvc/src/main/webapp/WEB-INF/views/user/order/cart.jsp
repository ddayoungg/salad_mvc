<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html>
<head>
    <title>포켓샐러드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjcwNTMwMDAwMjIxNzY2NDYxMTk5MDM3MDU1NDY2NTc2NjQyMjc3" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://pocketsalad.co.kr/order/cart.jsp">
    <meta property="og:description" content="내가 찾던 식단관리!">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="160">
    <meta property="og:image:height" content="160">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="포켓샐러드">
    <meta name="twitter:image" content="https://pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta name="twitter:description" content="내가 찾던 식단관리!">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1666674309">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/list.css?ts=1662515260">
	<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/order/order.css?ts=1652161547" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/swiper.css?ts=1610501674" />


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
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery.iframeResizer.min.js?ts=1649920172"></script>
    <script type="text/javascript" defer src="http://localhost/salad_mvc/resources/js/slider/slick/slick.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/swiper.js?ts=1610501674"></script>
    
    <!-- 전체 카테고리 -->
<script type="text/javascript">
    $(function(){
    	
    	$("#allMenuToggle").click(function(){
    		$("#gnbAllMenu").toggle();
    	});//click
    	
    });//ready
    
</script>

<script type="text/javascript">
$(function(){
	
	setPrdBoxList(1);//상품 박스형 리스트
	
	$("#sortTypeSel").change(function(){
		setPrdBoxList(1);
	})//change
	
})//redeay

function setPrdBoxList(currentPage){//상품 박스형 리스트
	
	$.ajax({
		url:"cate_prd_box_list_ajax.do",
		data:"currentPage="+currentPage+"&mainCateNum="+${param.mainCateNum}+"&subCateNum="+${param.subCateNum}+"&sortType="+$("#sortTypeSel").val() ,
		dataType:"json",
		error:function( xhr ){
			alert("상품 박스형 리스트를 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			
			$("#prdBoxOutput").show();
			
			var ulOutput="<ul>";
			if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					ulOutput+="<li  style='width:33.333333333333%;'>";
			        ulOutput+="<div class='item_cont'>";
			        ulOutput+="<div class='item_photo_box'>";
			        ulOutput+="<a href='http://localhost/salad_mvc/goods/goods_view.do?prdNum="+json.prdNum+"'>";
			        ulOutput+="<img src='http://localhost/salad_mvc/common/images/product/"+json.thum+"' width='570' class='middle'/>";
			        ulOutput+="</a>";
			        ulOutput+="<span class='best-icon'>";
					ulOutput+="</span>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_info_cont'>";
			        ulOutput+="<div class='item_tit_box'>";
			        ulOutput+="<a href='http://localhost/salad_mvc/goods/goods_view.do?prdNum="+json.prdNum+"' >";
			        ulOutput+="<strong class='item_name'>"+json.prdName+"</strong>";
			        ulOutput+="</a>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_money_box'>";
			        ulOutput+="<div class='all_price'>";
					ulOutput+="<div class='per_wrap'>";
					ulOutput+="<span class='item_discount'><em>"+json.prdDiscount+"%</em></span>";
					ulOutput+="</div>";
					
					var priceDC=Math.floor(json.prdDCPrice);
					const prdDCPrice=priceDC.toLocaleString('ko-KR');
					
					ulOutput+="<strong class='item_price'><span  style=''>"+prdDCPrice+"<i class='won'>원</i></span></strong>";
			        
					var price=Math.floor(json.prdPrice);
					const prdPrice=price.toLocaleString('ko-KR');
					
					ulOutput+="<span class='d_price' style=''>"+prdPrice+"원</span>";
			        ulOutput+="</div>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_icon_box'>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_review_count'>";
			        ulOutput+=" <span class='review_count'><img src='https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png'>"+json.revCnt+"</span>";
			        ulOutput+="</div>";
			        ulOutput+="</div>";
			        ulOutput+="</div>";
			        ulOutput+="</li>";
				});//each
			} else {
				ulOutput+="<li>데이터가 존재하지 않습니다.</li>";
			}
	        ulOutput+="</ul>";
	        
			$("#searchPrdCnt").html(jsonObj.totalCount);
			$("#prdBoxOutput").html(ulOutput);
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdBoxList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdBoxList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				if(currentPage==i) {
					pgOutput+="<li class='page-item on'>"
				} else {
					pgOutput+="<li class='page-item'>"
				}//end if
					pgOutput+="<a class='page-link' href='#void' onclick='setPrdBoxList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdBoxList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setPrdBoxList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#pageOutput").html(pgOutput);
		}//success
	})//ajax
}//setPrdList
    
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_common.js?ts=1610501674"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A41%3A40%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fpocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22cart.jsp%22%2C%22domain%22%3A%22pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
    <!-- Add script : end -->

    <script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/order/cart.jsp&amp;Referer=https://pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NS4V8GR');</script>
<!-- End Google Tag Manager --><!-- Facebook Pixel Code -->
       <!--  <script>
        !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1469865633321623', {}, {'agent':'plgodo'});
        fbq('track', 'PageView');
        </script> -->
        <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1469865633321623&ev=PageView&noscript=1"/></noscript>
        <!-- DO NOT MODIFY -->
        <!-- End Facebook Pixel Code --><!-- Global site tag (gtag.js) - Google Analytics -->
        <!-- <script async src="https://www.googletagmanager.com/gtag/js?id="></script>
        <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', '');
        </script> -->

        <!-- Criteo Loader -->
        <script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=34297" async="true"></script>
        <!-- END Criteo Loader -->
        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
        </script>
        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
            kakaoPixel('5900620314493041185').viewCart();
        </script>
        <!--AceCounter eCommerce Cart_Buy v8.0 Start -->
       <!--  <script language='javascript'>
        function aCounterPageScriptCart(param) {           
            var allCnt = 0; // 상품 총 수량
            var goodsNo = param.setGoodsNo; // 상품코드
            $('#frmViewLayer input[name*=\'goodsCnt[]\']').each(function () {
                allCnt += parseFloat($(this).val());
            });
            AW_INOUT(goodsNo, allCnt);
        } 
        </script>-->
        <!--AceCounter eCommerce Cart_Buy End --><!-- This script is for AceCounter START --> 
       <!--  <script language='javascript'> 
            var _ag   = '0';            
            var _id   = 'tester21';  
            var _mr = 'single';       // ( 'single' , 'married') 
            var _gd = '';            //  ('man' , 'woman')  
        </script>
        AceCounter END --><!-- AceCounter Log Gathering Script V.8.0.2019080601
        <script language='javascript'>
	        var _AceGID=(function(){var Inf=['gtc4.acecounter.com','8080','BS1A45883992363','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script> -->
        <!-- AceCounter Log Gathering Script End -->
	
	<!-- Google Shopping -->
<meta name="google-site-verification" content="B1k_K4m7BeZIxpICcT8HOm3BK9ixbegJkaPl0r8muA0" />
<!-- Google Shopping -->
	
	
	<!-- Global site tag (gtag.js) - Google Ads: 955276942 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-955276942"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-955276942');
</script>

<!-- 소현 -->
<script type="text/javascript">
	
	$(function () {
		setTotalPrice(); // 총 가격 입력
		
		//장바구니 물건 선택
		$(".cartCheckbox").on("change", function () {
			setTotalPrice($(".checkTd"));
		});
		
		$(".up").on("click", function () {
			var upCnt = $(this).parent("span").find("input").val();
			$(this).parent("span").find("input").val(++upCnt);
		});
		
		$(".down").on("click", function () {
			var upCnt = $(this).parent("span").find("input").val();
			$(this).parent("span").find("input").val(--upCnt);
		});
		
		//장바구니 수량 변경
		$(".goods_cnt").on("click", function () {
			var prdNum = $(this).parent("span").find("input").attr("id");
			var cartPrdCnt = $(this).parent("span").find("input").val();
			
			$(".updatePrdNum").val(prdNum);
			$(".updateCartPrdCnt").val(cartPrdCnt);
			$(".updateCntFrm").submit();
		});
		
		//장바구니 삭제
		$(".delBtn").on("click",function(){
			var formContents = '';
			
			$(".checkTd").each(function (index, element) {
				
				if($(element).find(".cartCheckbox").is(":checked") === true){ // 체크여부
					var cartNum = $(element).find(".cartNum").val();
					var cartNumInput = "<input name='orders[" + index + "].cartNum' type='hidden' value='" + cartNum + "'>";
					formContents += cartNumInput;
				}//if
			});//checkTd
			
			$(".removeCartFrm").html(formContents);
			$(".removeCartFrm").submit();
		});
		
		//선택 주문
		$(".orderBtn").on("click", function () {
			var formContents = '';
			var orderNum = 0;
			
			$(".checkTd").each(function (index, element) {
				
				if($(element).find(".cartCheckbox").is(":checked") === true){ // 체크여부
					
					var prdNum = $(element).find(".prdNum").val();
					var cartPrdCnt = $(element).find(".cartPrdCnt").val();
					var totalPrice = parseInt($(element).find(".prdTotal").val());
					
					var prdNumInput = "<input name='orders[" + orderNum + "].prdNum' type='hidden' value='" + prdNum + "'>";
					formContents += prdNumInput;
					
					var cartPrdCntInput = "<input name='orders[" + orderNum + "].cartPrdCnt' type='hidden' value='" + cartPrdCnt + "'>";
					formContents += cartPrdCntInput;
					
					++orderNum;
				}//if
			});//checkTd
			
			$(".orderFrm").html(formContents);
			$(".orderFrm").submit();
			
		});//orderBtn
		
		// 전체 주문 버튼 클릭
		$(".orderAllBtn").on("click", function () {
			var formContents = '';
			var orderNum = 0;
			
			$(".checkTd").each(function (index, element) {
					
				var prdNum = $(element).find(".prdNum").val();
				var cartPrdCnt = $(element).find(".cartPrdCnt").val();
				var totalPrice = parseInt($(element).find(".prdTotal").val());
				
				var prdNumInput = "<input name='orders[" + orderNum + "].prdNum' type='hidden' value='" + prdNum + "'>";
				formContents += prdNumInput;
				
				var cartPrdCntInput = "<input name='orders[" + orderNum + "].cartPrdCnt' type='hidden' value='" + cartPrdCnt + "'>";
				formContents += cartPrdCntInput;
				
				++orderNum;
				
			});//checkTd
			
			$(".orderFrm").html(formContents);
			$(".orderFrm").submit();
			
		});//orderAllBtn
		
	})//ready
	
	function setTotalPrice() {
		var totalPrice = 0;
		var totalDis = 0;
		
		$(".checkTd").each(function (index, element) {
			if($(element).find(".cartCheckbox").is(":checked") === true){ // 체크여부
				
				totalPrice += parseInt($(element).find(".prdTotal").val());//총 가격
				totalDis += parseInt($(element).find(".prdPriceDis").val());//총 할인가격
			}//if
		});//checkTd
		
		$(".totalPriceSpan").text(totalPrice.toLocaleString());
		$(".totalDisSpan").text(totalDis.toLocaleString());
		$(".totalOrderPrice").text((totalPrice-totalDis).toLocaleString());
		
    }//setTotalPrice
	
</script>

	

</head>
	
	
<body id="body" class="body-order body-cart pc"  >
<!-- Channel Plugin Scripts -->
<!-- <script>
  function parsePureNumber(number) {
    var ch_pureNumber = number.replace(/[^0-9\.]+/g, '');
    if (ch_pureNumber === "") {
      return null;
    }
    return parseFloat(ch_pureNumber) || 0;
  }
  var settings = {
    // action banner z index is 199997 ~ 199998
    "zIndex": 100000,
    "pluginKey": "ad67ea36-ae1a-452d-9419-cc8a83a650a3"
  };
  settings.memberId = "tester21";
  settings.profile = {
    "name": "테스터",
    "mobileNumber": "010-8968-4952",
    "email": "alfkdlej5@gmail.com",
    "cartCount": parsePureNumber("2"),
    "totalPurchaseCount": parsePureNumber("0"),
    "totalPurchaseAmount": parsePureNumber("0원"),
    "groupName": "포켓탐색 Lv.1",
    "isAdult": "n",
    "availableMileage": parsePureNumber("0원"),
    "totalDeposit": parsePureNumber("0")
  };
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  if (settings && settings.memberId && settings.memberId.indexOf('=gSess.memId') >= 0) {
    console.error('You do not using godomall 5. please visit https://developers.channel.io/docs/guide-for-famous-builders and find correct one');
  } else {
    ChannelIO('boot', settings);
  }
</script>
End Channel Plugin -->

	<div class="top_area"></div>
<div id="wrap" >

    <div id="header_warp" >
		

	<script>
		$(window).scroll(function(){
			if($(window).scrollTop() >= 128){
				$('#header_warp').addClass('headerFix');
			}else{
				$('#header_warp').removeClass('headerFix');
			}
		});
	</script>
	
	<link rel="stylesheet" href="http://localhost/salad_mvc/resources/css/selectric.css">
	<script src="http://localhost/salad_mvc/resources/js/jquery.selectric.js"></script>
	<script>
		/* $(function() {
		  $('.c-select').selectric();
		}); */
	</script>


<div id="header">
	  <div class="header_top">
		  <div class="header_top_cont">
			  	<div class="h1_logo">
				<div class="logo_main"><a href="../main/index.jsp" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/1bb87d41d15fe27b500a4bfcde01bb0e_33003.png"  alt="상단 로고" title="상단 로고"   /></a></div>
			</div>
            <!-- 멀티상점 선택 -->
            
            <!-- 멀티상점 선택 -->
			<div class="header_search">
				<div class="header_search_cont">

					<!-- 검색 폼 -->
					<div class="top_search">
    <form name="frmSearchTop" id="frmSearchTop" action="../goods/goods_search.jsp" method="get">
        <fieldset>
            <legend>검색폼</legend>
            <div class="top_search_cont">
                <div class="top_text_cont">
                    <input type="text" id="search_form" id="keyword" name="keyword" class="top_srarch_text" title=""  placeholder="" autocomplete="off" value="">
                    <input type="image" src="http://localhost/salad_mvc/resources/images/main/sch_btn.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
                </div>
                <!-- //top_text_cont -->
                <div class="search_cont" style="display:none;">
                    <input type="hidden" name="recentCount" value="5" />

                    <script type="text/javascript">
    $(function(){

        /* 상단 검색 */
        $('.top_search_cont input[name="keyword"]').on({
            'focus':function(){
                $(this).parents().find('.search_cont').show();
            },
            'blur':function(){
                $('body').click(function(e){
                    if (!$('.search_cont').has(e.target).length && e.target.name != 'keyword') {
                        $(this).parents().find('.search_cont').hide();
                    }
                });
                $('.btn_top_search_close').click(function(){
                    $(this).parents().find('.search_cont').hide();
                });
            }
        });

        if($("input[name=recentCount]").val() > 0) {
            $('.js_recom_box').removeClass('recom_box_only').addClass('recom_box');
        }else{
            $('.js_recom_box').removeClass('recom_box').addClass('recom_box_only');
        }

    });
</script>
<div class="js_recom_box " style="display:none;">
    <dl>
        <dt>추천상품</dt>
        <dd>
            <div class="recom_item_cont">
                <!-- //recom_icon_box -->
                <div class="recom_tit_box">
                    <a href="../goods/goods_view.jsp?goodsNo=">
                    </a>
                </div>
                <!-- //recom_tit_box -->
                <div class="recom_money_box">
                </div>
                <!-- //recom_money_box -->
                <div class="recom_number_box">
                </div>
                <!-- //recom_number_box -->
            </div>
            <!-- //recom_item_cont -->
        </dd>
    </dl>
</div>

                    <!-- //recom_box -->

                    <div class="recent_box">
                        <dl class="js_recent_area">
                            <dt>최근검색어</dt>
                            <dd>최근 검색어가 없습니다.</dd>
                        </dl>
                    </div>
                    <!-- //recent_box -->
                    <div class="seach_top_all">
                        <button type="button" class="btn_top_search_close"><strong>닫기</strong></button>
                    </div>
                    <!-- //seach_top_all -->

                </div>
                <!-- //search_cont -->
            </div>
            <!-- //top_search_cont -->
        </fieldset>
    </form>
</div>
<!-- //top_search -->
					<!-- 검색 폼 -->

				</div>
				<!-- //header_search_cont -->
			</div>
			<!-- //header_search -->
			<div class="top_member_box">
				<ul class="list_1">
					<li><a href="../member/join_method.jsp">회원가입</a></li>
					<li><a href="../member/login.jsp">로그인</a></li>

					<!--<li><a href="../board/list.jsp?bdId=event&period=current">이벤트</a></li>-->
					<li class="cs">
						<a href="../service/faq.jsp">고객센터</a>
						<div class="cs_in">
							<ul >
								<li><a href="../service/notice.jsp">공지사항</a></li>
								<li><a href="http://localhost/salad_mvc/resources/user/board/goodsreview_list.jsp">리얼후기</a></li>								
							</ul>
						</div>
					</li>
				</ul>
			</div>
        </div>
        <!-- //header_top_cont -->
    </div>
    <!-- //header_top -->


<!-- Google Shopping -->
<meta name="google-site-verification" content="B1k_K4m7BeZIxpICcT8HOm3BK9ixbegJkaPl0r8muA0" />
<!-- Google Shopping -->


<div class="gnb">
<div class="gnb_in">
<!-- 전체 카테고리 출력 레이어 시작 -->
<div class="gnb_all">
<strong>ALL CATEGORY</strong>
<a href="#void" id="allMenuToggle"><img src="http://localhost/salad_mvc/resources/images/common/btn/btn_allmenu_open.png" alt="전체메뉴보기"></a>
</div>

<div class="gnb_allmenu_wrap">
<div class="gnb_allmenu" id="gnbAllMenu" style="display:none" >
<div class="gnb_allmenu_box">
<ul>
	<c:forEach var="mainCate" items="${ mainCateList }">
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="http://localhost/salad_mvc/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=0"><c:out value="${ mainCate.mainCateName }"/></a>
			<ul class="all_depth1">
				<c:forEach var="subCate" items="${ mainCate.subCateList }">
					<li><a href="http://localhost/salad_mvc/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=${ subCate.subCateNum }"><c:out value="${ subCate.subCateName }"/></a></li>
				</c:forEach>
			</ul>
		</div>
	</li>
	</c:forEach>
</ul>
</div>
</div>
</div>

<!-- 전체 카테고리 출력 레이어 끝 -->

<div class="gnb_left"><a href="#PREV" class="active">PREV</a></div>
<div class="gnb_menu_box">
    <ul class="depth0 gnb_menu0">
        <c:forEach var="mainCate" items="${ mainCateList }">
        <li>
            <a href="http://localhost/salad_mvc/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=0" ><c:out value="${ mainCate.mainCateName }"/></a>
        </li>
    	</c:forEach>
    </ul>
</div>
<div class="gnb_right"><a href="#NEXT">NEXT</a></div>

            <!-- 상단 카테고리 출력 시작 -->

            </div>

        </div>
        <!-- //gnb -->

        <!-- //gnb_allmenu -->

    <!-- //header_gnb -->
	<script>
		$(window).scroll(function(){
			if($(window).scrollTop() >= 128){
				$('#header_warp').addClass('headerFix');
			}else{
				$('#header_warp').removeClass('headerFix');
			}
		});
			 $(document).ready(function(){
            $(".header_banner_btn").click(function(){
                    $(".header_banner").css("display", "none");
            });
        });
	</script>
	<link rel="stylesheet" href="http://localhost/salad_mvc/resources/css/selectric.css">
	<script src="http://localhost/salad_mvc/resources/js/jquery.selectric.js"></script>
	<script>
		$(function() {
		  $('.c-select').selectric();
		});
	</script>
</div>





<!-- //header -->
    </div>
    <!-- //header_warp -->

    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> > 장바구니</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->

<div class="content_box">
    <div class="order_wrap">
        <div class="order_tit">
            <h2>장바구니</h2>
            <ol>
                <li class="page_on"><span>01</span> 장바구니 <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/member/icon_join_step_on.png" alt=""></span></li>
                <li><span>02</span> 주문서/결제<span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/member/icon_join_step_off.png" alt=""></span></li>
                <li><span>03</span> 주문완료</li>
            </ol>
        </div>
        <!-- //order_tit -->

        <div class="cart_cont">
<!-- 소현 -->
            <form id="frmCart" name="frmCart" method="post" target="ifrmProcess">
                <div class="cart_cont_list dev_cart_general">
                    <div class="order_cart_tit">
                    </div>
                    <!-- //order_cart_tit -->
					  <div class="deli_order_top_tit">
						<h3>일반상품</h3>
	                   </div>

                    <div class="order_table_type">
                        <table>
                            <colgroup>
                                <col style="width:3%" >  <!-- 체크박스 -->
                                <col style="width:60%">					<!-- 상품명/옵션 -->
                                <col style="width:20%">  <!-- 수량 -->
                                <col style="width:17%"> <!-- 상품금액 -->
                            </colgroup>

							  <thead>
                            <tr>
                                <th class="first" colspan="8">
									<div class="left_con_th">
                                    <div class="form_element">
                                        <input type="checkbox" id="allCheck1" class="gd_select_all_goods" data-target-id="cartSno1_" data-target-form="#frmCart" checked="checked">
                                        <label for="allCheck1" class="check_s on"><b>전체선택</b></label>
                                    </div>
									</div>
									<div class="right_con_th">
										<button type="button" class="delBtn">선택 삭제</button>
									</div>
                                </th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach var="cart" items="${ cartList }">
                            <tr>
                                <td class="checkTd">
                                	<input type="checkbox" class="cartCheckbox" checked="checked">
                                	<input type="hidden" class="prdNum" value="${ cart.prdNum }">
                                	<input type="hidden" class="prdPrice" value="${ cart.prdPrice }">
                                	<input type="hidden" class="prdPriceDis" value="${ cart.prdPrice * cart.prdDiscount * 0.01 }">
                                	<input type="hidden" class="cartPrdCnt" value="${ cart.cartPrdCnt }">
                                	<input type="hidden" class="prdTotal" value="${ cart.prdPrice * cart.cartPrdCnt }">
                                	<input type="hidden" class="cartNum" value="${ cart.cartNum }">
                                </td>
                                <td class="td_left td_left_add">
                                    <div class="pick_add_cont">
                                        <span class="pick_add_img">
                                            <a href="../goods/goods_view.php?goodsNo=540"><img src="${ cart.thum }" width="40" alt="${ cart.prdName }" title="${ cart.prdName }" class="middle" class="imgsize-s" /></a>
                                        </span>
                                        <div class="pick_add_info">
                                            <em class="gds-nm-name"><a href="../goods/goods_view.php?goodsNo=540"><c:out value="${ cart.prdName }"/></a></em>
                                        </div>
                                    </div>
                                </td>
                                <td class="">
                                    <div class="order_goods_num">
										<span class="numcon">
											<button type="button" class="down goods_cnt" title="감소">감소</button>
                                            <input type="text" class="text" id="${ cart.prdNum }" title="수량" value="${ cart.cartPrdCnt }" >
											<button type="button" class="up goods_cnt" title="증가">증가</button>
										</span>
                                    </div>
                                </td>
                                <td class="right_a1" >
                                    <strong class="order_sum_txt">
                                    	<fmt:formatNumber value="${ cart.prdPrice * cart.cartPrdCnt }" pattern="#,###"/>
                                    	<i class="won">원</i>
                                    </strong>
                                    <p class="add_currency"></p>
                                </td>
                            </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
            
            <!-- 수량 수정 form -->
            <form action="edit_cart_cnt.do" method="get" class="updateCntFrm">
            	<input type="hidden" name="id" value="test">
            	<input type="hidden" name="cartPrdCnt" class="updateCartPrdCnt">
            	<input type="hidden" name="prdNum" class="updatePrdNum">
            </form>
            
            <!-- 삭제 form -->
            <form action="remove_cart_process.do" method="get" class="removeCartFrm">
            	<input type="hidden" name="cartNum" class="cartNumInput">
            </form>
            
            <!-- 주문 form -->
            <form action="order.do" method="get" class="orderFrm">
            	<input type="hidden" name="id" value="test">
            </form>

            <div class="price_sum">
                <div class="price_sum_cont">
                    <div class="price_sum_list">
                        <dl>
                            <dt>총 상품금액</dt>
                            <dd><strong class="totalPriceSpan"></strong>원</dd>
                        </dl>

                        <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/order/order_price_minus.png" alt="빼기" /></span>
                        <dl>
                            <dt>총 할인금액</dt>
                            <dd><strong class="totalDisSpan"></strong>원</dd>
                        </dl>
                        <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/order/order_price_plus.png" alt="더하기" /></span>
                        <dl>
                            <dt>총 배송비</dt>
                            <dd><strong id="totalDeliveryCharge">0</strong>원</dd>
                        </dl>
                        <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/order/order_price_total.png" alt="합계" /></span>
                        <dl class="price_total">
                            <dt>결제금액</dt>
                            <dd><strong class="totalOrderPrice"></strong>원
                            </dd>
                        </dl>
                    </div>
					<em id="deliveryChargeText" class="tobe_mileage"></em>
                <!-- //price_sum_cont -->
            </div>
            <!-- //price_sum -->

            <div class="btn_order_box btn_order_box2">
                <span class="btn_left_box">
                </span>
            </div>
            <!-- //btn_order_box -->
			<div class="cart_btn_center_box">
					<a href="index.do" class="shop_go_link">쇼핑 계속하기</a>
					<button type="button" class="btn_order_choice_buy orderBtn">선택 상품 주문</button>
                    <button type="button" class="btn_order_whole_buy orderAllBtn">전체 주문</button>
			</div>

                </div>
            </div>
            <!-- //pay_box -->

        </div>
        <!-- //cart_cont -->
    </div>
    <!-- //order_wrap -->
</div>
<!-- //content_box -->

<script type="text/javascript">
    <!--
    $(document).ready(function () {
        $('.js_impossible_layer').on('click', function(){
            $(".nomal_layer").addClass('dn');
            if ($(".nomal_layer").is(":hidden")) {
                $(this).next(".nomal_layer").removeClass('dn');
            }
        });

        // 숫자 체크
        //$('input[name*=\'goodsCnt\']').number_only();

        var totalDeliveryCharge = numeral().unformat($('#totalDeliveryCharge').text());

        $('.gd_select_all_regular, .gd_select_regular').click(function () {
            // console.log('gd_select_regular');
            var allCheckFl = $(this).prop('checked');
            // console.log(allCheckFl);

            // if ($(this).hasClass('gd_select_all_regular')) {
            //     // console.log($('.gd_select_regular').length);
            //     // var $eachCheckBox = $(this).closest('table').find('tbody input[name="cartSno[]"]:checkbox');
            //     var checkedCount = 0;
            //     var $eachCheckBox = $(this).closest('table').find('tbody .gd_select_regular');
            //     console.log($eachCheckBox.length);
            //     $eachCheckBox.each(function(){
            //         if ($(this).prop('checked') === true) {
            //             checkedCount++;
            //         }
            //     });
            //     console.log(checkedCount);
            // }

            var $eachCheckBox = $(this).closest('table').find('tbody .gd_select_regular');
            if ($(this).hasClass('gd_select_all_regular')) { // 전체선택
                // var $eachCheckBox = $(this).closest('table').find('tbody .gd_select_regular');
                $eachCheckBox.each(function(){
                    $(this).prop('checked', allCheckFl);
                    // console.log($(this).next().addClass('on'));
                    if (allCheckFl) {
                        $(this).next().addClass('on');
                    } else {
                        $(this).next().removeClass('on');
                    }
                });

            } else { // 하위선택
                // var $eachCheckBox = $(this).closest('table').find('tbody .gd_select_regular');
                var checkedCount = 0;
                $eachCheckBox.each(function(){
                    if ($(this).prop('checked') === true) {
                        checkedCount++;
                    }
                });
                // console.log('$eachCheckBox.length ' + $eachCheckBox.length);
                // console.log('checkedCount ' + checkedCount);
                if ($eachCheckBox.length == checkedCount) {
                    $('#allCheckRegular').prop('checked', true);
                    $('#allCheckRegular').next().addClass('on');
                } else {
                    $('#allCheckRegular').prop('checked', false);
                    $('#allCheckRegular').next().removeClass('on');
                }
            }
            $eachCheckBox.each(function(){
                if ($(this).prop('checked') === true) {
                    $(this).closest('tr').next().find('input:checkbox').prop('checked', true);
                } else {
                    $(this).closest('tr').next().find('input:checkbox').prop('checked', false);
                }
            });

// return;
            var $eachCheckBox = $(this).closest('tr').next().find('input[name="cartSno[]"]:checkbox');
            $eachCheckBox.each(function(){
                $(this).prop('checked', allCheckFl);
                // if (allCheckFl) {
                //     $('label[for=' + $(this).attr('id') + ']').addClass('on');
                // } else {
                //     $('label[for=' + $(this).attr('id') + ']').removeClass('on');
                // }
                // console.log($(this));
            });

            // 20201110
            checkPayBoxShow();

            window.setTimeout(function(){
                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../order/cart_ps.jsp",
                    data: "mode=cartSelectCalculation&" + $('#frmCart input:checkbox[name="cartSno[]"]:checked').serialize(),
                    dataType: 'json',
                    beforeSend: function(){
                        $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', true);
                    }
                }).success(function (data) {
                    // $('#totalGoodsCnt').html(numeral(data.cartCnt).format('0,0'));
                    // $('#totalGoodsPrice').html(gd_money_format(data.totalGoodsPrice));
                    // $('#totalGoodsDcPrice').html(gd_money_format(data.totalGoodsDcPrice));
                    // $('#totalMinusMember').html(gd_money_format(data.totalMemberDcPrice));
                    // $('#totalCouponGoodsDcPrice').html(gd_money_format(data.totalCouponGoodsDcPrice));
                    // $('#totalMyappDcPrice').html(gd_money_format(data.totalMyappDcPrice));
                    // $('#totalSettlePrice').html(gd_money_format(data.totalSettlePrice));
                    // $('#totalSettlePriceAdd').html(gd_add_money_format(data.totalSettlePrice));
                    // $('#totalGoodsMileage').html(numeral(data.totalMileage).format());
                    // $('#deliveryChargeText').html('');
                    // $('#totalDeliveryCharge').html(gd_money_format(data.totalDeliveryCharge));
                    // $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);

                    // console.log('1234 ' + (data.totalDeliveryCharge));
                    // 정기배송 상품 선택 or 해제 시 일반상품의 배송비 재설정 20201126
                    $('#totalDeliveryCharge').html(gd_money_format(data.totalDeliveryCharge - data.regularTotalDeliveryCharge));
                    $('#totalSettlePrice').html(gd_money_format(data.totalSettlePrice - data.regularTotalSettlePrice));

                    $('#regularTotalDcPrice').html(gd_money_format(data.regularTotalDcPrice));
                    $('#regularTotalGoodsCnt').html(numeral(data.regularCartCnt).format('0,0'));

                    // $('#regularTotalGoodsPrice').html(gd_money_format(data.regularTotalGoodsPrice));
                    $('#regularTotalGoodsPrice').html(gd_money_format(data.regularTotalGoodsPrice+data.regularTotalDcPrice));
                    $('#regularTotalGoodsDcPrice').html(gd_money_format(data.regularTotalGoodsDcPrice));
                    $('#regularTotalMinusMember').html(gd_money_format(data.regularTotalMemberDcPrice));
                    $('#regularTotalCouponGoodsDcPrice').html(gd_money_format(data.regularTotalCouponGoodsDcPrice));
                    $('#regularTotalMyappDcPrice').html(gd_money_format(data.regularTotalMyappDcPrice));
                    $('#regularTotalSettlePrice').html(gd_money_format(data.regularTotalSettlePrice));
                    $('#regularTotalSettlePriceAdd').html(gd_add_money_format(data.regularTotalSettlePrice));
                    $('#regularTotalGoodsMileage').html(numeral(data.regularTotalMileage).format());
                    $('#deliveryChargeText').html('');
                    $('#regularTotalDeliveryCharge').html(gd_money_format(data.regularTotalDeliveryCharge));

                    if (data.regularTotalDeliveryCharge > 0) {
                        $('#regularTotalDeliveryCharge').html('<strong id="regularTotalDeliveryCharge">'+gd_money_format(data.regularTotalDeliveryCharge/data.subscriptionWeek)+'</strong>원 X <strong>'+data.subscriptionWeek+'</strong>회');
                    } else {
                        $('#regularTotalDeliveryCharge').html('<strong id="regularTotalDeliveryCharge">0</strong>원');
                    }



                    $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);
                }).error(function (e) {
                    alert(e);
                    $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);
                });
            }, 200);


        });


        // 선택한 상품에 따른 금액 계산
        $('#frmCart input:checkbox[name="cartSno[]"], .gd_select_all_goods').click(function () {
            // console.log('gd_select_all_goods allcheck');

            // 체크박스 전체 선택상태에 따른 체크박스 변경처리
            var checkedCount = 0;
            var $eachCheckBox = $(this).closest('table').find('tbody input[name="cartSno[]"]:checkbox');
            // 전체 및 개별 상품 선택 처리
            if ($(this).hasClass('gd_select_all_goods')) {
                var allCheckFl = $(this).prop('checked');
                $eachCheckBox.each(function(){
                    $(this).prop('checked', allCheckFl);
                    if (allCheckFl) {
                        $('label[for=' + $(this).attr('id') + ']').addClass('on');
                    } else {
                        $('label[for=' + $(this).attr('id') + ']').removeClass('on');
                    }
                });
            } else {
                $eachCheckBox.each(function(idx){
                    if ($(this).prop('checked') === true) {
                        checkedCount++;
                    }
                });
                if ($eachCheckBox.length == checkedCount) {
                    $(this).closest('table').find('thead > tr > th:first-child input[id*=allCheck]').prop('checked', true);
                    $(this).closest('table').find('thead > tr > th:first-child label[for*=allCheck]').addClass('on');
                } else {
                    $(this).closest('table').find('thead > tr > th:first-child input[id*=allCheck]').prop('checked', false);
                    $(this).closest('table').find('thead > tr > th:first-child label[for*=allCheck]').removeClass('on');
                }
            }

            window.setTimeout(function(){
                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../order/cart_ps.jsp",
                    data: "mode=cartSelectCalculation&" + $('#frmCart input:checkbox[name="cartSno[]"]:checked').serialize(),
                    dataType: 'json',
                    beforeSend: function(){
                        $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', true);
                    }
                }).success(function (data) {
                    // $('#totalGoodsCnt').html(numeral(data.cartCnt).format('0,0'));
                    // $('#totalGoodsPrice').html(gd_money_format(data.totalGoodsPrice));
                    // $('#totalGoodsDcPrice').html(gd_money_format(data.totalGoodsDcPrice));
                    // $('#totalMinusMember').html(gd_money_format(data.totalMemberDcPrice));
                    // $('#totalCouponGoodsDcPrice').html(gd_money_format(data.totalCouponGoodsDcPrice));
                    // $('#totalMyappDcPrice').html(gd_money_format(data.totalMyappDcPrice));
                    // $('#totalSettlePrice').html(gd_money_format(data.totalSettlePrice));
                    // $('#totalSettlePriceAdd').html(gd_add_money_format(data.totalSettlePrice));
                    // $('#totalGoodsMileage').html(numeral(data.totalMileage).format());
                    // $('#deliveryChargeText').html('');
                    // $('#totalDeliveryCharge').html(gd_money_format(data.totalDeliveryCharge));
                    // $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);

                    // regular 20200828 [[
                    // $('#regularTotalDcPrice').html(gd_money_format(data.regularTotalDcPrice));
                    $('#totalGoodsCnt').html(numeral(data.cartCnt - data.regularCartCnt).format('0,0'));
                    // $('#totalGoodsPrice').html(gd_money_format(data.totalGoodsPrice - data.regularTotalGoodsPrice));
                    $('#totalGoodsPrice').html(gd_money_format(data.totalFixedPrice));

                    // $('#totalGoodsDcPrice').html(gd_money_format(data.totalGoodsDcPrice - data.regularTotalGoodsDcPrice));
                    $('#totalGoodsDcPrice').html(gd_money_format(data.totalFixedPrice-(data.totalSettlePrice-data.regularTotalSettlePrice-(data.totalDeliveryCharge-data.regularTotalDeliveryCharge))));

                    $('#totalMinusMember').html(gd_money_format(data.totalMemberDcPrice - data.regularTotalMemberDcPrice));
                    $('#totalCouponGoodsDcPrice').html(gd_money_format(data.totalCouponGoodsDcPrice - data.regularTotalCouponGoodsDcPrice));
                    $('#totalMyappDcPrice').html(gd_money_format(data.totalMyappDcPrice - data.regularTotalMyappDcPrice));
                    $('#totalSettlePrice').html(gd_money_format(data.totalSettlePrice - data.regularTotalSettlePrice));
                    $('#totalSettlePriceAdd').html(gd_add_money_format(data.totalSettlePrice - data.regularTotalSettlePrice));
                    $('#totalGoodsMileage').html(numeral(data.totalMileage - data.regularTotalMileage).format());
                    $('#deliveryChargeText').html('');
                    $('#totalDeliveryCharge').html(gd_money_format(data.totalDeliveryCharge - data.regularTotalDeliveryCharge));
                    $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);
                    // regular 20200828 ]]

                }).error(function (e) {
                    alert(e);
                    $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);
                });
            }, 200);


        });



        $('.btn_open_layer').bind('click', function(e){
            if($(this).attr('href') == '#optionViewLayer') {
                if($(this).data('coupon') == 'use') {
                    alert("쿠폰 적용 취소 후 옵션 변경 가능합니다.");
                    return false;
                } else {
                    var params = {
                        type : 'cart',
                        sno: $(this).data('sno'),
                        goodsNo: $(this).data('goodsno')
                    };

                    $.ajax({
                        method: "POST",
                        cache: false,
                        url: "../goods/layer_option.jsp",
                        data: params,
                        success: function (data) {
                            $('#optionViewLayer').empty().append(data);
                            $('#optionViewLayer').find('>div').center();
                        },
                        error: function (data) {
                            alert(data.message);

                        }
                    });

                }

            }
        });

        var adddHtml = '';
        adddHtml +=  "<strong>결제수단</strong>";
        adddHtml +=  "<ul>";
        adddHtml +=  "<li>신용카드</li>";
        adddHtml +=  "<li>카카오페이</li>";
        adddHtml +=  "</ul>";
        $(adddHtml).appendTo('.icon_pg_cont');




        // 20200831 regular
        $('.goods_cnt').on('click', function(e){
            var $cnt = $(this).closest('span').find('input');
            var cnt = $cnt.val();
            if ($(this).hasClass('down')) {
                cnt--;
            } else {
                cnt++;
            }
            $cnt.val(cnt);
            $cnt.trigger('onchange');
        });

        // 20201028
        arrangeAddGoods();

        // 20201110
        checkPayBoxShow();
    });

    function arrangeAddGoods() {
        var $addGoodsTr = $('.addGoodsRegularTr');
        $addGoodsTr.each(function(){
            var $tbody = $(this).closest('tbody');
            $tbody.append($(this));
        });
    }

    // 20201110
    function checkPayBoxShow() {
        // console.log('checkPayBoxShow');
        if ($('.gd_select_regular:checked').length > 0) {
            $('.pay_box').hide();
        } else {
            $('.pay_box').show();
        }
    }

    /**
     * 선택 상품 처리
     */
    function gd_cart_process(mode, kind) {

        // regular 20200827 [[
        var $eachCheckedCart = $('#frmCart input:checkbox[name="cartSno[]"]:checked');
        if (kind == 'general') {
            $eachCheckedCart = $('#frmCart .dev_cart_general input:checkbox[name="cartSno[]"]:checked');
        } else if (kind == 'regular') {
            $eachCheckedCart = $('#frmCart .dev_cart_regular input:checkbox[name="cartSno[]"]:checked');
        }
        // regular 20200827 ]]

        // 선택한 상품 개수
        // regular 20200827 // var checkedCnt = $('#frmCart input:checkbox[name="cartSno[]"]:checked').length;
        // var checkedCnt = $eachCheckedCart.length;// regular 20200827
        // regular 20200827 [[
        if (kind == 'regular'){
            var checkedCnt = $('.dev_checkbox_1.dev_checkbox_1_regular:checkbox:checked').length;
        }
        else if (kind == 'general') {
            var checkedCnt = $('.dev_checkbox_1.dev_checkbox_1_general:checkbox:checked').length;
        }
        else  {
            var checkedCnt = $('.dev_checkbox_1:checkbox:checked').length;
        }
        // regular 20200827 ]]
        // console.log(checkedCnt);

        // 모드에 따른 메시지 및 처리
        if (mode == 'cartDelete') {
            msg = "상품을 장바구니에서 삭제 하시겠습니까?";
        } else if (mode == 'cartToWish') {
            msg = "상품을 찜리스트에 담으시겠습니까?";
        } else if (mode == 'orderSelect') {
            msg = "상품만 주문합니다.";

            var alertMsg = gd_cart_cnt_info();
            if (alertMsg) {
                alert(alertMsg);
                return false;
            }

            // 구매 불가 체크
            var orderPossible = 'y';
            var chkCartSno = []; // 쿠폰 유효성 체크시 사용
            // regular 20200827// $('#frmCart input:checkbox[name="cartSno[]"]:checked').each(function() {
            $eachCheckedCart.each(function() { // regular 20200827
                if ($(this).data('possible') == 'n') {
                    orderPossible = 'n';
                } else {
                    chkCartSno.push($(this).val());
                }
            });
            if (orderPossible == 'n') {
                alert("구매 불가능한 상품이 존재합니다.\n장바구니 상품을 확인해 주세요!");
                return false;
            }

            // 쿠폰 사용기간 체크
            if (mode == 'orderSelect' && $('.js_btn_coupon_cancel').length > 0) {
                var checkCouponType = false;
                $.ajax({
                    method: "POST",
                    cache: false,
                    async: false,
                    url: "../order/cart_ps.jsp",
                    data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno },
                    success: function (data) {
                        checkCouponType = data.isSuccess;
                    },
                    error: function (e) {
                    }
                });

                if(checkCouponType) {
                    alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
                }
            }

            if (parseInt(checkedCnt) == parseInt(2)) {
                location.href='../order/order.jsp';
                return true;
            }
        } else {
            return false;
        }

        if (checkedCnt == 0) {
            alert("선택하신 상품이 없습니다.");
            return false;
        } else {

            // 쿠폰 사용기간 체크
            if (mode == 'orderSelect' && $('.js_btn_coupon_cancel').length > 0) {
                var checkCouponType = false;
                $.ajax({
                    method: "POST",
                    cache: false,
                    async: false,
                    url: "../order/cart_ps.jsp",
                    data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno },
                    success: function (data) {
                        checkCouponType = data.isSuccess;
                    },
                    error: function (e) {
                    }
                });

                if(checkCouponType) {
                    alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
                }
            }

            if (confirm(__('선택하신 %i개', checkedCnt) +  msg) === true) {
                // regular 20200827 [[
                if (kind == 'general' || kind == 'regular') {
                    $('#frmCart input:checkbox[name="cartSno[]"]').each(function() {
                        $(this).prop('checked', false);
                    });
                    $eachCheckedCart.each(function() {
                        $(this).prop('checked', true);
                    });
                }
                // regular 20200827 ]]

                $('#frmCart input[name=\'mode\']').val(mode);
                $('#frmCart').attr('method', 'post');
                $('#frmCart').attr('target', 'ifrmProcess');
                $('#frmCart').attr('action', '../order/cart_ps.jsp');
                $('#frmCart').submit();
            }
            return true;
        }
    }




    // goodsNo[]
    // goodsCnt[]
    // mode
    // sno
    /**
     * 옵션변경 처리
     *
     * @param string params 옵션변경정보
     * @param intger sno 장바구니 고유번호
     */
    // function option_change(params,sno) { // 20200827 regular
    function option_change(element, isRegular) { // 20200827 regular
        console.log('option_change');
        if (isRegular) {
            var $data = $(element).closest('tr').next().find('input:checkbox[name="cartSno[]"]');
        } else {
            var $data = $(element).closest('tr').find('input:checkbox[name="cartSno[]"]');
        }
        var goodsCnt = $(element).val();
        var mealCnt = $(element).data('meal-cnt');
//         console.log($data.data('goods-no'));
//         console.log($data.val());
        // console.log(goodsCnt);
        // console.log(mealCnt);
// // return ;
        if (isNaN(goodsCnt) || goodsCnt < 1) {
            goodsCnt = 1;
        }


        if (isRegular) {
            // console.log($data.serialize());
            var params = "&mode=cartUpdate";
            $data.each(function() {
                if ($(this).data('has-add') ==='y') {
                    var addGoodsNo = $('.dev_add_'+$(this).val()).data('add-goods-no');
                    params += "&addGoodsNo[0][]="+addGoodsNo;
                    params += "&addGoodsCnt[0][]="+(goodsCnt);
                }

                params += "&goodsNo[]="+$(this).data('goods-no');
				params += "&sno[]="+$(this).val();
				var divisionOptionFl = $(element).data('division-option'); // 20201218
				if (divisionOptionFl == 'y') { // 20201218
					params += "&goodsCnt[]="+(goodsCnt);
				} else {
					params += "&goodsCnt[]="+(goodsCnt*4);
				}
            });

        } else {
            var params = {
                    mode: 'cartUpdate',
                    'goodsNo[]': $data.data('goods-no'),
                    'goodsCnt[]': goodsCnt,
                    sno: $data.val(),
                };
        }
// return;
        $.ajax({
            method: "POST",
            cache: false,
            url: "../order/cart_ps.jsp",
            data: params,
            success: function (data) {
                document.location.reload();
            },
            error: function (data) {
                alert(data.message);
            }
        });

    }






    /**
     * 전체 상품 주문
     *
     */
    function gd_order_all() {
        var alertMsg = gd_cart_cnt_info('all');
        if (alertMsg) {
            alert(alertMsg);
            return false;
        }
        // 쿠폰 유효성 체크시 사용
        var chkCartSno = [];
        $('#frmCart  input:checkbox[name="cartSno[]"]:checked').each(function() {
            chkCartSno.push($(this).val());
        });

        // 쿠폰 사용기간 체크
        if ($('.js_btn_coupon_cancel').length > 0) {
            var checkCouponType = false;
            $.ajax({
                method: "POST",
                cache: false,
                async: false,
                url: "../order/cart_ps.jsp",
                data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno },
                success: function (data) {
                    checkCouponType = data.isSuccess;
                },
                error: function (e) {
                }
            });

            if(checkCouponType) {
                alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
            }
        }
        location.href='../order/order.jsp';
    }

    /**
     * 장바구니 비우기
     */

    function gd_cart_remove() {
        if (confirm("장바구니를 비우시겠습니까?") === true) {
            ifrmProcess.location.replace('./cart_ps.jsp?mode=remove');
        }
    }

    /**
     * 재고 체크
     *
     * @param intger stockLimit 현재 상품의 총 재고
     * @param intger thisCnt 현재 구매 수량
     * @param intger thisIndex 현재 상품의 index
     */
    function gd_stock_check(stockLimit, thisCnt, thisIndex) {
        if (stockLimit < thisCnt) {
            alert('재고가 부족합니다. 현재 ' + stockLimit + '개의 재고가 남아 있습니다.');
            $('input[name=\'goodsCnt[]\']').eq(thisIndex).val(stockLimit);
        }
    }


    /**
     * 옵션변경 처리
     *
     * @param string params 옵션변경정보
     * @param intger sno 장바구니 고유번호
     */
    function gd_option_view_result(params,sno) {

        params += "&mode=cartUpdate&sno="+sno;

        $.ajax({
            method: "POST",
            cache: false,
            url: "../order/cart_ps.jsp",
            data: params,
            success: function (data) {
                document.location.reload();
            },
            error: function (data) {
                alert(data.message);
            }
        });

    }

    function gd_cart_cnt_info(mode) {
        var target = 'input[name="cartSno[]"]';
        if (mode != 'all') target += ':checked';
        var stockCheckFl = false;
        var cartSno = [];

        var goodsCntData = [];
        $.each($(target), function(){
            var $goodsCnt = $(this);
            var goodsKey = $goodsCnt.data('goods-key');
            if (goodsCntData[goodsKey]) {
                stockCheckFl = true;
                goodsCntData[goodsKey] += $goodsCnt.data('default-goods-cnt');
            } else {
                cartSno[goodsKey] = [];
                goodsCntData[goodsKey] = $goodsCnt.data('default-goods-cnt');
            }
            cartSno[goodsKey].push($(this).val());
        });

        var msgByUnit = [];
        var msgByCnt = [];
        var msg;
        $.each(goodsCntData, function(index, value){
            if (_.isUndefined(value)) return true;

            var $data = $(target + '[data-goods-key="' + index + '"]');

            if ($data.data('fixed-sales') == 'goods') {
                if (value % $data.data('sales-unit') > 0) {
                    msg = $data.data('goods-nm') + ' ' + $data.data('sales-unit') + __('개');
                    msgByUnit['goods'] = msgByUnit['goods'] ? msgByUnit['goods'] + '\n' + msg : msg;
                }
            } else {
                $.each($data, function(){
                    if ($(this).data('default-goods-cnt') % $(this).data('sales-unit') > 0) {
                        msg = $(this).data('goods-nm') + '(' + $(this).data('option-nm') + ')' + ' ' + $(this).data('sales-unit') + __('개');
                        msgByUnit['option'] = msgByUnit['option'] ? msgByUnit['option'] + '\n' + msg : msg;
                    }
                });
            }
            if ($data.data('fixed-order-cnt') == 'goods') {
                if ($data.data('min-order-cnt') > 1 && $data.data('min-order-cnt') > value) {
                    msg = __('%1$s 상품당 최소 %2$s개 이상', [$data.data('goods-nm'), $data.data('min-order-cnt')]);
                    msgByCnt['goods'] = msgByCnt['goods'] ? msgByCnt['goods'] + '\n' + msg : msg;
                }
                if ($data.data('max-order-cnt') > 0 && $data.data('max-order-cnt') < value) {
                    msg = __('%1$s 상품당 최대 %2$s개 이하', [$data.data('goods-nm'), $data.data('max-order-cnt')]);
                    msgByCnt['goods'] = msgByCnt['goods'] ? msgByCnt['goods'] + '\n' + msg : msg;
                }
            } else if ($data.data('fixed-order-cnt') == 'id') {
                var params = {
                        mode: 'check_memberOrderGoodsCount',
                        goodsNo: $data.data('goods-no'),
                    };
                $.ajax({
                    method: "POST",
                    async: false,
                    cache: false,
                    url: '../order/order_ps.jsp',
                    data: params,
                    success: function (data) {
                        // error 메시지 예외 처리용
                        if (!_.isUndefined(data.error) && data.error == 1) {
                            alert(data.message);
                            return false;
                        }

                        if ($data.data('min-order-cnt') > 1 && $data.data('min-order-cnt') > (value + data.count)) {
                            msg = __('%1$s ID당 최소 %2$s개 이상', [$data.data('goods-nm'), $data.data('min-order-cnt')]);
                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
                        } else if ($data.data('min-order-cnt') > 1 && $data.data('min-order-cnt') > value) {
                            msg = __('%1$s ID당 최소 %2$s개 이상', [$data.data('goods-nm'), $data.data('min-order-cnt')]);
                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
                        } else if ($data.data('max-order-cnt') > 0 && $data.data('max-order-cnt') < (value + data.count)) {
                            msg = __('%1$s ID당 최대 %2$s개 이하', [$data.data('goods-nm'), $data.data('max-order-cnt')]);
                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
                        } else if ($data.data('max-order-cnt') > 0 && $data.data('max-order-cnt') < value) {
                            msg = __('%1$s ID당 최대 %2$s개 이하', [$data.data('goods-nm'), $data.data('max-order-cnt')]);
                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
                        }
                    },
                    error: function (data) {
                        alert(data.message);
                    }
                });
            } else {
                $.each($data, function(){
                    if ($(this).data('min-order-cnt') > 1 && $(this).data('min-order-cnt') > $(this).data('default-goods-cnt')) {
                        msg = __('%1$s(%2$s) 옵션당 최소 %3$s개 이상', [$(this).data('goods-nm'), $(this).data('option-nm'), $(this).data('min-order-cnt')]);
                        msgByCnt['option'] = msgByCnt['option'] ?  msgByCnt['option'] + '\n' + msg : msg;
                    }
                    if ($(this).data('max-order-cnt') > 0 && $(this).data('max-order-cnt') < $(this).data('default-goods-cnt')) {
                        msg = __('%1$s(%2$s) 옵션당 최대 %3$s개 이하', [$(this).data('goods-nm'), $(this).data('option-nm'), $(this).data('max-order-cnt')]);
                        msgByCnt['option'] = msgByCnt['option'] ?  msgByCnt['option'] + '\n' + msg : msg;
                    }
                });
            }
        });

        var alertMsg = [];
        var msg;
        if (msgByUnit['option']) {
            msg = __('옵션기준');
            msg += '\n';
            msg += __('%1$s단위로 묶음 주문 상품입니다.', msgByUnit['goods']);
            alertMsg.push(msg);
        }
        if (msgByUnit['goods']) {
            msg = __('상품기준');
            msg += '\n';
            msg += __('%1$s단위로 묶음 주문 상품입니다.', msgByUnit['goods']);
            alertMsg.push(msg);
        }
        if (alertMsg.length) {
            return alertMsg.join('\n\n');
        }

        if (msgByCnt['option']) {
            if (msgByCnt['goods'] || msgByCnt['id']) {
                alertMsg.push(__('%1$s', msgByCnt['option']));
            } else {
                alertMsg.push(__('%1$s구매가능합니다.', msgByCnt['option']));
            }
        }
        if (msgByCnt['goods']) {
            if (msgByCnt['id']) {
                alertMsg.push(__('%1$s', msgByCnt['goods']));
            } else {
                alertMsg.push(__('%1$s구매가능합니다.', msgByCnt['goods']));
            }
        }
        if (msgByCnt['id']) {
            alertMsg.push(__('%1$s구매가능합니다.', msgByCnt['id']));
        }
        if (alertMsg.length) {
            return alertMsg.join('\n');
        }
        if(stockCheckFl) {
            var _cartSno = null;
            for(var i in cartSno) {
                if(cartSno[i].length > 1) {
                    if(_cartSno) _cartSno += ','+cartSno[i].join(',');
                    else _cartSno = cartSno[i].join(',');
                }
            }
            if(_cartSno) {
                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../order/cart_ps.jsp",
                    async: false,
                    data: {'mode': 'cartSelectStock', 'sno': _cartSno},
                    success: function (cnt) {
                        if (cnt) {
                            alertMsg.push(__('재고가 부족합니다. 현재 %s개의 재고가 남아 있습니다.', cnt));
                        }
                    },
                    error: function (data) {
                        alert(data.message);
                    }
                });
            }
        }
        if (alertMsg.length) {
            return alertMsg.join('\n\n');
        }
    }


    //-->
</script>
<link rel="stylesheet" href="http://localhost/salad_mvc/resources/css/jquery.mCustomScrollbar.css">
<script src="http://localhost/salad_mvc/resources/js/jquery.mCustomScrollbar.js"></script>
            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->

    <div id="footer_wrap">
<div id="footer">
    <div class="foot_list">
		<div class="foot_list_in">
			<ul>
				<li><a href="../service/company.jsp">회사소개</a></li>
				<li><a href="../service/agreement.jsp">이용약관</a></li>
				<li><a href="../service/private.jsp">개인정보처리방침</a></li>
				<li><a href="../service/guide.jsp">이용안내</a></li>
			</ul>
			<div class="main_sns">
				<a href="https://www.instagram.com/pocketsalad_official/" target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/sns_insta.png" alt="인스타"></a>
				<a href="https://www.facebook.com/pocketsalad/"  target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/sns_fb.png" alt="페이스북"></a>
				<a href="https://www.youtube.com/channel/UCU7y8u3KvKaqxKmF9sahtgQ"  target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/new/sns_you.png" alt="유투브"></a>
			</div>
		</div>
    </div>
    <!-- //foot_list -->
    <div class="foot_cont">
        <div class="foot_logo">
<img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/1f8847929867dc4aa4f12786693d6325_82534.png"  alt="하단로고" title="하단로고"   />        </div>
        <!-- //foot_logo -->
        <div class="foot_info">            
            <div class="foot_info_list">
				<dl>
					<dt>법인명(상호) : </dt>
					<dd>주식회사 에이타워</dd>
				</dl>
                <dl>
                    <dt>대표 :</dt>
                    <dd> 박혜리</dd>
                </dl>
				<dl>
                    <dt>TEL :</dt>
                    <dd><strong>1833-5722</strong></dd>
                </dl>
                <dl>
                    <dt>FAX : </dt>
                    <dd>02-6959-2236</dd>
                </dl>
                
            </div>
            <div class="foot_info_list">
                <dl>
                    <dt>사업자등록번호 :</dt>
                    <dd> 346-88-00170</dd>
                </dl>
                <dl class="ts">
                    <dt>통신판매업신고번호 :</dt>
                    <dd> 제 2015 - 인천강화 - 0015호  <a href="#" class="btn_licensee_info" onclick="gd_popup_bizInfo('3468800170'); return false;">사업자정보확인</a></dd>
                </dl>
            </div>
			<div class="foot_info_list">
				<dl>
					<dt>주소 : </dt>
					<dd>인천광역시 강화군 양도면 중앙로 971 </dd>
				</dl>
				<dl>
                    <dt>개인정보관리책임자 :</dt>
                    <dd> 박혜리</dd>
                </dl>
                <dl>
                    <dt>E-Mail :</dt>
                    <dd><a href="mailto:godo@godo.co.kr" class="btn_email">pocketsalad@atower.co.kr</a></dd>
                </dl>      
			</div>
            <!-- // -->
            <p class="copyright">Copyright©<strong>pocketsalad.co.kr</strong>All rights reserved.</p>
        </div>
        <!-- //foot_info -->
		
		<!-- //content_info_wrap -->
    </div>
<script>
<!-- $(function(){

	$("input[type='password']").on("propertychange change keyup paste input", function(){
			$(this).addClass("onput");

	});
	$("input[type='password']").removeClass("onput");
});
</script> -->
    <!-- //foot_cont -->
    <div class="foot_certify">
        <span></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->

<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('5900620314493041185').pageView();
</script>

<script type='text/javascript'>
	var sTime = new Date().getTime();

	(function(i,s,o,g,r,a,m){i['cmcObject']=g;i['cmcUid']=r;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//parks2016.cmclog.cafe24.com/weblog.js?v='+sTime,'parks2016');
</script>

<script type='text/javascript'>
(function(i,s,o,g,r,a,m,n,d){i['cfaObject']=g;i['cfaUid']=r;i['cfaStype']=a;i['cfaDomain']=m;i['cfaSno']=n;i['cfaEtc']=d;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})
(window,document,'script','//parks2016.weblog.cafe24.com/cfa.js?v='+new Date().getTime(),'parks2016','w','','0','');
</script>
    </div>
    <!-- //footer_wrap -->


    <div class="scroll_wrap">

        <!-- 좌측 스크롤 배너 -->
        <div id="scroll_left">

        </div>
        <!-- //scroll_left -->
        <!-- //좌측 스크롤 배너 -->
    </div>
    <!-- //scroll_wrap -->
<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- <!-- 외부 스크립트
Google Tag Manager (noscript)
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NS4V8GR"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
End Google Tag Manager (noscript) -->Criteo Cart Event Script -->

<!-- Start Script for IFDO ( 회원분석 )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->

<script type='text/javascript'>
var _NB_ID='tester21';
var _NB_UDF={'udf01':'테스터','udf03':'010-8968-4952','udf06':'포켓탐색 Lv.1'};
</script>

<!-- End Script for IFDO -->
<!-- Start Script for IFDO -->
<script type='text/javascript'>
var _NB_gs = 'wlog.ifdo.co.kr';
var _NB_MKTCD = 'NJA2221003405';
var _NB_APPVER=''; /* 하이브리드 앱 버전 */
(function(a,b,c,d,e){var f;f=b.createElement(c),g=b.getElementsByTagName(c)[0];f.async=1;f.src=d;
f.setAttribute('charset','utf-8');
g.parentNode.insertBefore(f,g)})(window,document,'script','//script.ifdo.co.kr/jfullscript.js');
</script>

<!-- Enliple Tracker Start -->
<script type="text/javascript">
		(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_rent.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'atower2015', { device: 'W' });    
    enp('send', 'common', 'atower2015');
</script>
<!-- Enliple Tracker End -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/nd_kakao.js?ts=1662087469"></script>

</body>.
</html>

<script type="text/javascript">
  var goodsInfo = [
  ];

  dataLayer.push({
    'event': 'viewCart',
    'goodsInfo': goodsInfo
  });
</script>
