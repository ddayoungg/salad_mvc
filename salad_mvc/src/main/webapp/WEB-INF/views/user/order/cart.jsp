<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>

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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A41%3A40%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fpocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22cart.jsp%22%2C%22domain%22%3A%22pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
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

    <script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/order/cart.jsp&amp;Referer=https://pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<!--
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-81300049-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-81300049-1');
</script>
-->

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NS4V8GR');</script>
<!-- End Google Tag Manager --><!-- Facebook Pixel Code -->
        <script>
        !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1469865633321623', {}, {'agent':'plgodo'});
        fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1469865633321623&ev=PageView&noscript=1"/></noscript>
        <!-- DO NOT MODIFY -->
        <!-- End Facebook Pixel Code --><!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id="></script>
        <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', '');
        </script>

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
        <script language='javascript'>
        function aCounterPageScriptCart(param) {           
            var allCnt = 0; // 상품 총 수량
            var goodsNo = param.setGoodsNo; // 상품코드
            $('#frmViewLayer input[name*=\'goodsCnt[]\']').each(function () {
                allCnt += parseFloat($(this).val());
                // 장바구니에서 추가상품 카운트 제외
                /*if ($('[id^=\'option_display_item\']').length > 0) {
                    if ($('[id^=\'add_goods_display_item\']').length > 0) {
                        $('[id^=\'add_goods_display_item\']').each(function(idx){
                            var optQuantity2 = $(this).find('.count input[name=\'addGoodsCnt[0][]\']').val();
                            allCnt += Number(optQuantity2);
                        });
                    }
                }else{
                    allCnt = 1;
                }*/
            });
            AW_INOUT(goodsNo, allCnt);
        }
        </script>
        <!--AceCounter eCommerce Cart_Buy End --><!-- This script is for AceCounter START --> 
        <script language='javascript'> 
            var _ag   = '0';            
            var _id   = 'tester21';  
            var _mr = 'single';       // ( 'single' , 'married') 
            var _gd = '';            //  ('man' , 'woman')  
        </script>
        <!-- AceCounter END --><!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
        <script language='javascript'>
	        var _AceGID=(function(){var Inf=['gtc4.acecounter.com','8080','BS1A45883992363','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script>
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

	

</head>
	
	
<body id="body" class="body-order body-cart pc"  >
<!-- Channel Plugin Scripts -->
<script>
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
<!-- End Channel Plugin -->

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
		$(function() {
		  $('.c-select').selectric();
		});
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
                    <input type="text" id="search_form" name="keyword" class="top_srarch_text" title=""  placeholder="" autocomplete="off">
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
                            <dd>
                                <ul class="js_recent_list">
                                    <li>
                                        <a href="../goods/goods_search.jsp?keyword=%EB%8B%AD%EA%B0%80%EC%8A%B4">닭가슴</a>
                                        <span><button type="button" class="btn_top_search_del" data-recent-keyword="닭가슴">
                                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_top_search_del.png" alt="삭제"></button>
                                        </span>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <!-- //recent_box -->
                    <div class="seach_top_all">
<button type="button" class="btn_top_search_all_del"><strong>전체삭제</strong></button>                        <button type="button" class="btn_top_search_close"><strong>닫기</strong></button>
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
					<li><span style="color: #333; font-size: 15px;">테스터(포켓탐색 Lv.1)님, 오늘도 건강한 하루 되세요.</span></li>
					<li><a href="../member/logout.jsp?returnUrl=">로그아웃</a></li>
					<!--<li><a href="../board/list.jsp?bdId=event&period=current">이벤트</a></li>-->
					<li class="cs">
						<a href="../service/faq.jsp">고객센터</a>
						<div class="cs_in">
							<ul >
								<li><a href="../service/notice.jsp">공지사항</a></li>
								<li><a href="../service/faq.jsp">자주하는 질문</a></li>
								<li><a href="../mypage/mypage_qa.jsp">1:1 문의</a></li>
								<li><a href="../board/list.jsp?&bdId=goodsreview">리얼후기</a></li>								
							</ul>
						</div>


					</li>

				</ul>
				<ul class="list_2">
					<li><a href="../mypage/index.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cs_icn.png" alt="매이페이지"></a></li>
					<li class="cart"><a href="../order/cart.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cart_icn.png" alt="장바구니"></a>

                      <strong><b><a href="../order/cart.jsp">2</a></b></strong>

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
    <a href="#;" class="btn_all_menu_open"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_allmenu_open.png" alt="전체메뉴보기"></a>
</div>
<div class="gnb_allmenu_wrap">

</div>

            <!-- 전체 카테고리 출력 레이어 끝 -->

			 <div class="gnb_left"><a href="#PREV" class="active">PREV</a></div>
<div class="gnb_menu_box">
    <ul class="depth0 gnb_menu0">
        <li >
            <a href="../goods/goods_list.jsp?cateCd=001" >정기배송</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001009" >식단스타터(1주)</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001010" >2주 식단</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001011" >4주 식단</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001012" >6주+식단</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001013" >짜여진 식단</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=002" >샐러드</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002002" >데일리 샐러드</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002004" >테이스티 샐러드</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002005" >파우치 샐러드</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002003" >맛보기 세트</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=003" >간편식</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003001" >라이스 시즌1&2</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003008" >곤약 라이스 시즌3</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003007" >미니컵밥</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003009" >두부파스타</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=004" >닭가슴살&간식</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004003" >만두</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004004" >슬라이스</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004002" >소시지</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004005" >큐브・볼</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004007" >간식</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=027" >식단 세트</a>
        </li>
        <li><a href="../board/list.jsp?bdId=event&period=current">이벤트혜〮택</a></li>
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

            <form id="frmCart" name="frmCart" method="post" target="ifrmProcess">
                <input type="hidden" name="mode" value=""/>
                <input type="hidden" name="cart[cartSno]" value=""/>
                <input type="hidden" name="cart[goodsNo]" value=""/>
                <input type="hidden" name="cart[goodsCnt]" value=""/>
                <input type="hidden" name="cart[addGoodsNo]" value=""/>
                <input type="hidden" name="cart[addGoodsCnt]" value=""/>
                <input type="hidden" name="cart[couponApplyNo]" value=""/>
                <input type="hidden" name="useBundleGoods" value="1" />

				  <!-- 장바구니 상품리스트 시작 -->

                <!-- 정기배송 area start -->

                <div class="cart_cont_list dev_cart_regular">
                   <div class="deli_order_top_tit">
						<h3>정기배송</h3>
                   </div>

                    <div class="order_table_type">
                        <table>
                            <colgroup>
                                 <col style="width:3%" >  <!-- 체크박스 -->
                                <col style="width:60%">					<!-- 상품명/옵션 -->
                                <col style="width:14%">  <!-- 수량 -->
                                <col style="width:23%"> <!-- 상품금액 -->
                            </colgroup>
                            <thead>
                            <tr>
                                <th class="first" colspan="8">
									<div class="left_con_th">
										<div class="form_element">
											<input type="checkbox" id="allCheckRegular" class="gd_select_all_regular" data-target-id="cartSno" data-target-form="#frmCart" checked="checked">
											<label for="allCheckRegular" class="check_s on"><b>전체선택</b></label>
										</div>
									</div>
									<div class="right_con_th">
                                        <button type="button" class="btn_order_choice_wish" onclick="gd_cart_process('cartToWish', 'regular');">선택 찜하기</button>
										<button type="button" class="btn_order_choice_del" onclick="gd_cart_process('cartDelete', 'regular');">선택 삭제</button>
									</div>
                                </th>
                            </tr>
                            </thead>
                            <tbody>



                                <tr>
									<td class="first cart_deli_intable_con_up">
										<div class="form_element">
											<input id="cartRegularSno1_2210252238398554" class="gd_select_regular dev_checkbox_1 dev_checkbox_1_regular" checked="checked" type="checkbox">
											<label for="cartRegularSno1_2210252238398554" class="check_s on"></label>
										</div>
									</td>
									<td  class="img_td cart_deli_intable_con_up">
										<div class="pick_add_cont">
                                            <span class="pick_add_img">
                                                <a href="../goods/goods_view.jsp?goodsNo=1000000376">
                                                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000376/1000000376_list_016.jpg" width="40" alt="하루에 한 끼를 샐러드로 5일" title="하루에 한 끼를 샐러드로 5일" class="middle" class="imgsize-s" />
                                                </a>
                                            </span>
                                        <div class="pick_add_info">

                                            <em><a href="../goods/goods_view.jsp?goodsNo=1000000376">하루에 한 끼를 샐러드로 5일</a></em>

                                        </div>
                                    </div>
									</td>
									<td class="td_order_amount cart_deli_intable_con_up">
										<div class="order_goods_num">
											<span class="numcon">
												<button type="button" class="down goods_cnt" title="감소" value="">감소</button>
                                                <!-- <input type="text" name="" class="text"  title="수량" value="0.25" data-value="1" data-stock="0" data-key="0" onchange="option_change(this, true)" data-meal-cnt="1"> -->
                                                    <!-- 20201218 -->
                                                    <input type="text" name="" class="text"  title="수량" value="1" data-value="1" data-stock="0" data-key="0" onchange="option_change(this, true)" data-meal-cnt="1" data-division-option="y" data-goods-no="1000000376" data-sno="726581">
												<button type="button" class="up goods_cnt" title="증가" value="">증가</button>
											</span>
										</div>
									</td>
									<td class="right_a1 cart_deli_intable_con_up">
                                        <!-- <b class="order_delitop_txt">1팩×4회 총 4팩</b> -->
                                        <!--  -->
                                        <!-- 20201218 -->
                                        <!-- <b class="order_delitop_txt">0팩×4회 총 0팩</b> -->

										<b class="order_delitop_txt" data-deliveryweek = "1">5팩×1회 총 5팩</b>

                                        <!--  -->
										<strong class="order_sum_txt">29,820<i class="won">원</i></strong>
									</td>
								</tr>

                                <tr >
									<td colspan="7" class="cart_deli_intable_td">
										<div class="cart_deli_intable_wrap">
											<table class="cart_deli_intable">
												<colgroup>
													<col style="width:10%;">
													<col style="width:50%;">
													<col style="width:20%;">
													<col style="width:20%;">
												</colgroup>
												<tbody>
<!-- 20201218 [[ -->
                                                        <input type="checkbox" id="cartRegularSno1_726581" name="cartSno[]" value="726581" checked="checked" data-price="29820" data-mileage="298" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="0" data-goods-no="1000000376" data-goods-nm="하루에 한 끼를 샐러드로 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252238398554"  style="display:none;">
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726581" name="cartSno[]" value="726581" checked="checked" data-price="29820" data-mileage="298" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="0" data-goods-no="1000000376" data-goods-nm="하루에 한 끼를 샐러드로 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252238398554"  style="display:none;">
                                                                        -->
                                                                        1
                                                                    </td>

																	<td class="subj">닭가슴살 샐러드 x1</td>

                                                                    <!-- <td class="ori_con">39,200원</td> -->

																	<td class="ori_con">16,600원</td>
            														<td class="dc_con">13,320원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726581" name="cartSno[]" value="726581" checked="checked" data-price="29820" data-mileage="298" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="0" data-goods-no="1000000376" data-goods-nm="하루에 한 끼를 샐러드로 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252238398554"  style="display:none;">
                                                                        -->
                                                                        2
                                                                    </td>

																	<td class="subj">크래미 샐러드 x1</td>

                                                                    <!-- <td class="ori_con">39,200원</td> -->

																	<td class="ori_con">18,000원</td>
            														<td class="dc_con">13,720원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726581" name="cartSno[]" value="726581" checked="checked" data-price="29820" data-mileage="298" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="0" data-goods-no="1000000376" data-goods-nm="하루에 한 끼를 샐러드로 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252238398554"  style="display:none;">
                                                                        -->
                                                                        3
                                                                    </td>

																	<td class="subj">그린 샐러드 x1</td>

                                                                    <!-- <td class="ori_con">39,200원</td> -->

																	<td class="ori_con">12,400원</td>
            														<td class="dc_con">9,340원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726581" name="cartSno[]" value="726581" checked="checked" data-price="29820" data-mileage="298" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="0" data-goods-no="1000000376" data-goods-nm="하루에 한 끼를 샐러드로 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252238398554"  style="display:none;">
                                                                        -->
                                                                        4
                                                                    </td>

																	<td class="subj">채소만 샐러드 x1</td>

                                                                    <!-- <td class="ori_con">39,200원</td> -->

																	<td class="ori_con">10,800원</td>
            														<td class="dc_con">6,760원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726581" name="cartSno[]" value="726581" checked="checked" data-price="29820" data-mileage="298" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="0" data-goods-no="1000000376" data-goods-nm="하루에 한 끼를 샐러드로 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252238398554"  style="display:none;">
                                                                        -->
                                                                        5
                                                                    </td>

																	<td class="subj">레드칠리 로스트 닭가슴살 샐러드 x1</td>

                                                                    <!-- <td class="ori_con">39,200원</td> -->

																	<td class="ori_con">20,600원</td>
            														<td class="dc_con">16,500원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

            													</tr>




                                                            <!-- 20201218 ]] -->




                                                </tbody>
											</table>
										</div>

									</td>
								</tr>





                                <tr>
									<td class="first cart_deli_intable_con_up">
										<div class="form_element">
											<input id="cartRegularSno1_2210252239111652" class="gd_select_regular dev_checkbox_1 dev_checkbox_1_regular" checked="checked" type="checkbox">
											<label for="cartRegularSno1_2210252239111652" class="check_s on"></label>
										</div>
									</td>
									<td  class="img_td cart_deli_intable_con_up">
										<div class="pick_add_cont">
                                            <span class="pick_add_img">
                                                <a href="../goods/goods_view.jsp?goodsNo=260">
                                                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/10/15/260/260_list_06.jpg" width="40" alt="2주 정기배송 샐러드 주 5일" title="2주 정기배송 샐러드 주 5일" class="middle" class="imgsize-s" />
                                                </a>
                                            </span>
                                        <div class="pick_add_info">

                                            <em><a href="../goods/goods_view.jsp?goodsNo=260">2주 정기배송 샐러드 주 5일</a></em>

                                        </div>
                                    </div>
									</td>
									<td class="td_order_amount cart_deli_intable_con_up">
										<div class="order_goods_num">
											<span class="numcon">
												<button type="button" class="down goods_cnt" title="감소" value="">감소</button>
                                                <!-- <input type="text" name="" class="text"  title="수량" value="0.25" data-value="1" data-stock="0" data-key="0" onchange="option_change(this, true)" data-meal-cnt="1"> -->
                                                    <!-- 20201218 -->
                                                    <input type="text" name="" class="text"  title="수량" value="1" data-value="1" data-stock="0" data-key="0" onchange="option_change(this, true)" data-meal-cnt="1" data-division-option="y" data-goods-no="260" data-sno="726582">
												<button type="button" class="up goods_cnt" title="증가" value="">증가</button>
											</span>
										</div>
									</td>
									<td class="right_a1 cart_deli_intable_con_up">
                                        <!-- <b class="order_delitop_txt">1팩×4회 총 4팩</b> -->
                                        <!--  -->
                                        <!-- 20201218 -->
                                        <!-- <b class="order_delitop_txt">0팩×4회 총 0팩</b> -->

										<b class="order_delitop_txt" data-deliveryweek = "2">5팩×2회 총 10팩</b>

                                        <!--  -->
										<strong class="order_sum_txt">68,260<i class="won">원</i></strong>
									</td>
								</tr>

                                <tr >
									<td colspan="7" class="cart_deli_intable_td">
										<div class="cart_deli_intable_wrap">
											<table class="cart_deli_intable">
												<colgroup>
													<col style="width:10%;">
													<col style="width:50%;">
													<col style="width:20%;">
													<col style="width:20%;">
												</colgroup>
												<tbody>
<!-- 20201218 [[ -->
                                                        <input type="checkbox" id="cartRegularSno1_726582" name="cartSno[]" value="726582" checked="checked" data-price="68260" data-mileage="682" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="1" data-goods-no="260" data-goods-nm="2주 정기배송 샐러드 주 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252239111652"  style="display:none;">
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726582" name="cartSno[]" value="726582" checked="checked" data-price="68260" data-mileage="682" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="1" data-goods-no="260" data-goods-nm="2주 정기배송 샐러드 주 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252239111652"  style="display:none;">
                                                                        -->
                                                                        1
                                                                    </td>

																	<td class="subj">크래미 샐러드 x2</td>

                                                                    <!-- <td class="ori_con">88,200원</td> -->

																	<td class="ori_con">18,000원</td>
            														<td class="dc_con">13,660원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726582" name="cartSno[]" value="726582" checked="checked" data-price="68260" data-mileage="682" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="1" data-goods-no="260" data-goods-nm="2주 정기배송 샐러드 주 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252239111652"  style="display:none;">
                                                                        -->
                                                                        2
                                                                    </td>

																	<td class="subj">닭가슴살 비엔나 샐러드 x2</td>

                                                                    <!-- <td class="ori_con">88,200원</td> -->

																	<td class="ori_con">18,000원</td>
            														<td class="dc_con">14,040원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726582" name="cartSno[]" value="726582" checked="checked" data-price="68260" data-mileage="682" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="1" data-goods-no="260" data-goods-nm="2주 정기배송 샐러드 주 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252239111652"  style="display:none;">
                                                                        -->
                                                                        3
                                                                    </td>

																	<td class="subj">치즈 샐러드 x2</td>

                                                                    <!-- <td class="ori_con">88,200원</td> -->

																	<td class="ori_con">16,200원</td>
            														<td class="dc_con">12,860원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726582" name="cartSno[]" value="726582" checked="checked" data-price="68260" data-mileage="682" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="1" data-goods-no="260" data-goods-nm="2주 정기배송 샐러드 주 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252239111652"  style="display:none;">
                                                                        -->
                                                                        4
                                                                    </td>

																	<td class="subj">닭가슴살볼 옥수수톡 샐러드 x2</td>

                                                                    <!-- <td class="ori_con">88,200원</td> -->

																	<td class="ori_con">18,000원</td>
            														<td class="dc_con">13,660원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

            													</tr>
                                                                <tr>
            														<td>
                                                                        <!--
                                                                        <input type="checkbox" id="cartRegularSno1_726582" name="cartSno[]" value="726582" checked="checked" data-price="68260" data-mileage="682" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="1" data-goods-no="260" data-goods-nm="2주 정기배송 샐러드 주 5일" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-regular-no="2210252239111652"  style="display:none;">
                                                                        -->
                                                                        5
                                                                    </td>

																	<td class="subj">훈제오리 샐러드 x2</td>

                                                                    <!-- <td class="ori_con">88,200원</td> -->

																	<td class="ori_con">18,000원</td>
            														<td class="dc_con">14,040원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

            													</tr>




                                                            <!-- 20201218 ]] -->




                                                </tbody>
											</table>
										</div>

									</td>
								</tr>











							</tbody>
							<tfoot>
								<tr>
									<td colspan="7">
										<div class="price_sum">
											<div class="price_sum_cont">
												<div class="price_sum_list">
													<dl>
														<dt>총 상품금액</dt>
														<dd><strong id="regularTotalGoodsPrice">127,400</strong>원</dd>
													</dl>
													<span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc/img/order/order_price_minus.png" alt="더하기"></span>
													<dl>
														<dt>총 할인금액</dt>
														<dd><strong id="regularTotalDcPrice">29,320</strong>원</dd>
													</dl>
													<span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc/img/order/order_price_plus.png" alt="합계"></span>
													<dl>
														<dt>총 배송비</dt>
														<dd id="regularTotalDeliveryCharge">
															<strong id="regularTotalDeliveryCharge11">4,500</strong>원 X <strong>2</strong>회
                                                        </dd>
													</dl>
													<span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc/img/order/order_price_total.png" alt="합계"></span>
													<dl class="price_total">
														<dt>결제금액</dt>
														<!-- <dd><strong id="totalSettlePrice">107,080</strong>원 -->
                                                        <!-- <dd><strong id="regularTotalSettlePrice">107,080</strong>원 -->
                                                        <dd><strong id="regularTotalSettlePrice">107,080</strong>원
                                                        </dd>
													</dl>
												</div>
											</div>
											<!-- //price_sum_cont -->
										</div>
									</td>
								</tr>
							</tfoot>
                        </table>
					</div>
					<!-- 정기배송 area end -->

                </div>



                <!-- 장바구니 상품리스트 시작 -->

                <!-- //cart_cont_list -->
                <!-- 장바구니 상품리스트 끝 -->


            </form>



            <div class="btn_order_box btn_order_box2">
                <span class="btn_left_box">

                </span>


            </div>






            <!-- //btn_order_box -->

			<div class="chk_none_right">
				<em class="chk_none">네이버페이 결제 시 새벽배송 불가, 쿠폰/적립금은 주문서 작성 단계에서 적용 가능</em>
			</div>

			<div class="cart_btn_center_box">
					<a href="https://pocketsalad.co.kr:443/goods/goods_list.jsp?cateCd=001" class="shop_go_link">쇼핑 계속하기</a>
					<button type="button" class="btn_order_choice_buy" onclick="gd_cart_process('orderSelect');">선택 상품 주문</button>
                    <button type="button" class="btn_order_whole_buy" onclick="gd_order_all();">전체 주문</button>
			</div>

            <div class="pay_box" >
                <div class="payco_pay">
                    
                </div>
                <div class="naver_pay">
                    
<script type="text/javascript" src="https://pay.naver.com/customer/js/naverPayButton.js" charset="UTF-8"></script>
<script type="text/javascript" >//<![CDATA[
function naverPay() {
var checkedCnt = $('#frmCart  input:checkbox[name="cartSno[]"]:checked').length;
if (checkedCnt == 0) {
 alert('선택하신 상품이 없습니다.');
return false;
}
var cartAlertMsg = '';
if (typeof gd_cart_cnt_info !== 'undefined') {
cartAlertMsg = gd_cart_cnt_info();
if (cartAlertMsg) {
alert(cartAlertMsg);
return false;
}
}
var frm = $("#frmCart");
var tmpAction = frm.attr("action");
var tmpMode = frm.find("[name=mode]:hidden").val();
frm.attr("action", "../goods/naver_pay.jsp");
frm.find("[name=mode]:hidden").val("cart");
window.open("about:blank","naverPayWin");
var htmlPopupMode = "<input type=\"hidden\" name=\"popupMode\" value=\"y\">";
frm.append(htmlPopupMode)
frm.attr("target","naverPayWin")
frm.submit();
frm.attr("action", tmpAction);
frm.find("[name=mode]:hidden").val(tmpMode);
frm.attr("target","ifrmProcess")
}

</script>
<script type="text/javascript" >//<![CDATA[
naver.NaverPayButton.apply({
BUTTON_KEY: "4D83551F-ABEB-4AD0-BEF5-91AEFE1E8EAA", // 체크아웃에서 제공받은 버튼 인증 키 입력
TYPE: "A", // 버튼 모음 종류 설정
COLOR: 1, // 버튼 모음의 색 설정
COUNT: 1, // 버튼 개수 설정. 구매하기 버튼만 있으면(장바구니 페이지) 1, 관심상품 버튼도 있으면(상품 상세 페이지) 2를 입력.
BUY_BUTTON_HANDLER: naverPay, 
ENABLE: "Y", // 품절 등의 이유로 버튼 모음을 비활성화할 때에는 "N" 입력
"":""
});
//]]></script>
                </div>
            </div>
            <!-- //pay_box -->

        </div>
        <!-- //cart_cont -->
    </div>
    <!-- //order_wrap -->
</div>
<!-- //content_box -->

<!-- 쿠폰 적용하기 레이어 -->
<div id="couponApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
<!--//쿠폰 적용하기 레이어 -->

<!-- 옵션 변경하기 레이어 -->
<div id="optionViewLayer" class="layer_wrap dn"></div>
<!-- 옵션 변경하기 레이어 -->

<script type="text/javascript">
    <!--
    $(document).ready(function () {
        $('.js_impossible_layer').on('click', function(){
            $(".nomal_layer").addClass('dn');
            if ($(".nomal_layer").is(":hidden")) {
                $(this).next(".nomal_layer").removeClass('dn');
            }
        });

        // 쿠폰 적용/변경 레이어
        $('.btn_open_layer').bind('click', function(e){
            if($(this).attr('href') == '#couponApplyLayer') {
                var params = {
                    mode: 'coupon_apply',
                    cartSno: $(this).data('cartsno'),
                };
                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../order/layer_coupon_apply.jsp",
                    data: params,
                    success: function (data) {
                        $('#couponApplyLayer').empty().append(data);
                        $('#couponApplyLayer').find('>div').center();
                    },
                    error: function (data) {
//                        console.log(data);
                        alert(data);
                    }
                });
            }
        });
        // 쿠폰 취소
        $('.js_btn_coupon_cancel').bind('click', function(e){
            var cartSno = $(this).data('cartsno');
            $('[name="cart[cartSno]"]').val(cartSno);
            $('#frmCart input[name=\'mode\']').val('couponDelete');
            $('#frmCart').attr('method', 'post');
            $('#frmCart').attr('target', 'ifrmProcess');
            $('#frmCart').attr('action', '../order/cart_ps.jsp');
            $('#frmCart').submit();

            return false;
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
<script>
    (function($){
        $(window).on("load",function(){
            $(".cart_deli_intable_wrap").mCustomScrollbar({
			mouseWheelPixels: 50
            });
        });
    })(jQuery);
</script>
<!-- Doyouad Start 삭제 하지 마세요. -->
<script type="text/javascript">
(function (w, d, s, n, t) {n = d.createElement(s);n.type = "text/javascript";n.setAttribute("id", "doyouadScript");n.setAttribute("data-user", "pocketsalad");n.setAttribute("data-page", "basket");n.async = !0;n.defer = !0;n.src = "https://cdn.doyouad.com/js/dyadTracker.js?v=" + new Date().toISOString().slice(0, 10).replace(/-/g, "");t = d.getElementsByTagName(s)[0];t.parentNode.insertBefore(n, t);})(window, document, "script");
</script>
<!-- Doyouad End -->
<!-- Enliple Tracker Start -->
<script type="text/javascript">
    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_rent.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'conversion', 'atower2015', { device: 'W', paySys: 'naverPay' });
</script>
<!-- Enliple Tracker End -->






<!-- Start Script for IFDO ( 장바구니 분석 )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->

<!-- 장바구니 상품리스트 시작 -->
<div id='ifdo_basket_list' style='display:none;'>
</div>
<!-- 장바구니 상품리스트 끝 -->

<script type='text/javascript'>
var _NB_LO = [];
    var _NB_plist =[];
//var _NB_LO = [{'PN':'','CT':'','AM':'0','PR':'2000'}];
var obj = document.getElementById('ifdo_basket_list');
if( obj != null ){
var obj2 = obj.getElementsByClassName('ifdo_basket_ul');
var len = obj2.length;
if( len > 0 ){
for(var i=0;i<len;i++){
var _l_no=obj2[i].getElementsByClassName('ifdo_product_no')[0].textContent;
var _l_name=obj2[i].getElementsByClassName('ifdo_product_name')[0].textContent;
var _l_price=obj2[i].getElementsByClassName('ifdo_product_price')[0].textContent;
                var _l_cate=obj2[i].getElementsByClassName('ifdo_product_cate')[0].textContent;
                var _l_num=obj2[i].getElementsByClassName('ifdo_product_num')[0].textContent;
if(_l_name!=''&&_l_price!=''&&_l_num!=''){
                    if( typeof _NB_plist[_l_name] == 'undefined'){
                        var _t_obj = {};
_t_obj['PC'] = _l_no;
                        _t_obj['PN'] = _l_name;
                        _t_obj['PR'] = parseInt(_l_price.replace(/[^0-9]/gi,''));
                        _t_obj['AM'] = parseInt(_l_num.replace(/[^0-9]/gi,''));
                        _t_obj['CT'] = '';
                        _NB_LO.push(_t_obj);
_NB_plist[_l_name] = _l_name;
                    }
}
}
}
}
    var _NB_PM = 'u';/*장바구니 구분값*/

</script>

<!-- End Script for IFDO -->

<!-- Start Script for IFDO ( Npay 클릭분석 - 상세페이지 상세페이지 팝업 옵션  )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->
<!-- IFDO 네이버페이 구매분석전용 ( 고도몰 ) 스크립트 -->
<!-- PC웹 장바구니 --->
<script type='text/javascript'>
_DM_ready=function(fn) { if (document.readyState != 'loading'){fn();}else if(document.addEventListener){ document.addEventListener('DOMContentLoaded', fn);} else{ document.attachEvent('onreadystatechange', function() {  if (document.readyState != 'loading') fn();});} };
_addEvent=function(o,e,f){if(o.addEventListener){o.addEventListener(e,f,false);}else if(o.attachEvent){o.attachEvent('on'+e,f);};};
function _NB_PAGE(a,b,c,d){ a=('/'==a.charAt(0)?document.domain:document.domain+'/')+a;_NB_LVAR.url=a;if(typeof b=='string') _NB_LVAR.title=b;var g=au+'//'+_NB_gs+'/WGT/?cur_stamp='+cur_stamp;_NB_LVAR.deviceid = _NB_DVID; Object.keys(_NB_LVAR).forEach(function(j){ if(typeof _NB_LVAR[j]!='function'){g+='&'+j+'='+encodeURIComponent(_NB_LVAR[j])} });if(typeof c=='string') g+='&join_id='+c;if(typeof d=='string') g+='&m_join='+d; var _Img=new Image(); _Img.src=g+'&rand='+Math.random();_NB_MKTImg.push(_Img);}
setTimeout(function(){
var obj= document.getElementsByClassName('npay_btn_item');
if( obj.length <= 0 ) return;
_addEvent(obj[0],'mousedown',function(){
var _id_s=document.getElementsByClassName('npay_btn_link')[0].getAttribute('id').split('_');
var _NB_ORD_AMT = 0;
var _NB_ORD_NO = 'NPAY2_'+_id_s[_id_s.length-1];
if( typeof _NB_LO =='object' && _NB_LO.length > 0 ){
Object.keys(_NB_LO).forEach(function(j) {
_NB_ORD_AMT+= _NB_LO[j]['PR'];
});
}
if( _NB_ORD_AMT > 0 ){
if( typeof _NB_LO =='object' && _NB_LO.length > 0 ){ _NB_LL=_NB_MLST(_NB_LO); }
if( typeof sessionStorage == 'object' && _NB_ORD_NO != '' ){var _ORDERNO = sessionStorage.getItem('_ORDERNO');if(_ORDERNO == null) _ORDERNO = ''; if(_ORDERNO != '' ){if(_ORDERNO.indexOf('|'+_NB_ORD_NO+'|')>=0){ _NB_LL = '';_NB_ORD_AMT='0';_NB_PM=''; }else{ sessionStorage.setItem('_ORDERNO',_ORDERNO+_NB_ORD_NO+'|');}}else{sessionStorage.setItem('_ORDERNO','|'+_NB_ORD_NO+'|');};};
_NB_LVAR.ll = _NB_LL;_NB_LVAR.pm='x';_NB_LVAR.order_no=_NB_ORD_NO;
_NB_PAGE('order/order_npay.html','구매_NPay');
_NB_LVAR.ll = '';_NB_LVAR.pm='';_NB_LVAR.order_no='';
}
});
},3000);
</script>
<!-- IFDO 네이버페이 구매분석전용 ( 고도몰 ) 스크립트 -->
<!-- End Script for IFDO -->

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
$(function(){

	$("input[type='password']").on("propertychange change keyup paste input", function(){
			$(this).addClass("onput");

	});
	$("input[type='password']").removeClass("onput");
});
</script>
    <!-- //foot_cont -->
    <div class="foot_certify">
        <span></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->

<!-- Global site tag (gtag.js) - Google Ads: 955276942 -->

<script async src="https://www.googletagmanager.com/gtag/js?id=AW-955276942"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-955276942');
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<!--
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-81300049-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-81300049-1');
</script>
-->

<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('5900620314493041185').pageView();
</script>



<script type='text/javascript'>
	var sTime = new Date().getTime();

	(function(i,s,o,g,r,a,m){i['cmcObject']=g;i['cmcUid']=r;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//parks2016.cmclog.cafe24.com/weblog.js?v='+sTime,'parks2016');
</script>

<!-- 리포트2.0 로그분석코드 시작 -->
<script type="text/javascript">
var sTime = new Date().getTime();
(function(i,s,o,g,r,a,m){i['webObject']=g;i['webUid']=r;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})
(window,document,'script','//parks2016.weblog.cafe24.com/weblog.js?v='+sTime,'parks2016');
</script>
<!-- 리포트2.0  로그분석코드 완료 -->

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


        <!-- 우측 스크롤 배너 -->
        <div id="scroll_right">
<div class="qmenu_wrap">
	<ul class="qm qm1">
		<li><a href="http://localhost/salad_mvc/resources/user/mypage/order_list.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_deli.png" alt=""></a></li>
		<li class="cart"><span><a href="../order/cart.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_cart.png" alt=""></a>
			<strong><a href="../order/cart.jsp">2</a></strong>

		</span></li>

	</ul>


<div class="bg_scroll_right_cont"></div>
<div class="scroll_right_cont">
 <div class="scr_paging">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_top.png" alt=""></button>

    </div>
   <!--  <h4>TODAY VIEW</h4> -->
    <ul>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=260">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/10/15/260/260_main_029.jpg">
                </span>
                <span class="src_box">
                    <em>2주 정기배송 샐러드 주 5일</em>
                        <strong>46,500<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000376">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000376/1000000376_main_086.jpg">
                </span>
                <span class="src_box">
                    <em>하루에 한 끼를 샐러드로 5일</em>
                        <strong>23,350<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000240">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000240/1000000240_main_028.jpg">
                </span>
                <span class="src_box">
                    <em>4주 정기배송 샐러드 주 3일</em>
                        <strong>55,800<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>

    </ul>
    <ul>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000149">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/11/48/1000000149/1000000149_main_093.jpg">
                </span>
                <span class="src_box">
                    <em>그릴 닭가슴살볼 3종 혼합 6팩</em>
                        <strong>16,100<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>

    </ul>

    <div class="scr_paging scr_paging2">

        <!-- <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">2</span></span> -->
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_bottom.png" alt=""></button>
    </div>
    <!-- //scr_paging -->
</div>

</div>
<span class="btn_scroll_top"><a href="#TOP"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_scroll_top.png" alt="상단으로 이동"/></a></span>
<span class="btn_scroll_down"><a href="#footer"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_scroll_down.png" alt="하단으로 이동"/></a></span>

<script type="text/javascript">
    // DOM 로드
    $(function () {
        $('.scroll_right_cont').todayGoods();
    });

    // 최근본상품 리스트 페이징 처리 플러그인
    $.fn.todayGoods = function () {
        // 기본값 세팅
        var self = $(this);
        var setting = {
            page: 1,
            total: 0,
            rowno: 3
        };
        var element = {
            goodsList: self.find('ul > li'),
            closeButton: self.find('ul > li > button'),
            prev: self.find('.scr_paging > .bnt_scroll_prev'),
            next: self.find('.scr_paging > .bnt_scroll_next'),
            paging: self.find('.scr_paging')
        };

        // 페이지 갯수 설정
        setting.total = Math.ceil(element.goodsList.length / setting.rowno);

        // 화면 초기화 및 갱신 (페이지 및 갯수 표기)
        var init = function () {
            if (setting.total == 0) {
                setting.page = 0;
                element.paging.hide();
            }
            self.find('ul').hide().eq(setting.page - 1).show();
            self.find('.scr_paging .js_current').text(setting.page);
            self.find('.scr_paging .js_total').text(setting.total);
        }

        // 삭제버튼 클릭
        element.closeButton.click(function(e){
            $.post('../goods/goods_ps.jsp', {
                'mode': 'delete_today_goods',
                'goodsNo': $(this).data('goods-no')
            }, function (data, status) {
                // 값이 없는 경우 성공
                if (status == 'success' && data == '') {
                    location.reload(true);
                }
                else {
                    console.log('request fail. ajax status (' + status + ')');
                }
            });
        });

        // 이전버튼 클릭
        element.prev.click(function (e) {
            setting.page = 1 == setting.page ? setting.total : setting.page - 1;
            init();
        });

        // 다음버튼 클릭
        element.next.click(function (e) {
            setting.page = setting.total == setting.page ? 1 : setting.page + 1;
            init();
        });

        // 화면 초기화
        init();
    };
</script>
        </div>
        <!-- //scroll_right -->
        <!-- //우측 스크롤 배너 -->


    </div>
    <!-- //scroll_wrap -->


    <!-- 퀵 검색 폼 -->
    <!-- 퀵 검색 폼 -->

</div>
<!-- //wrap -->

<!-- 쇼핑 카트 탭 -->

<!-- //쇼핑 카트 탭 -->

<!-- 회원가입 유도 푸시 -->

<!-- //회원가입 유도 푸시 -->

<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NS4V8GR"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) --><!-- Criteo Cart Event Script -->
        <script type="text/javascript">
        var setCriteoGoodsPrice = 0;
            
        function set_criteo_price() {
            if (typeof $('#frmViewLayer input[name="set_goods_price"]').val() == 'undefined') {
                var tmpGoodsPrice = parseFloat($('#frmView input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmView input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmView input[name="set_option_text_price"]').val());
            } else {
                var tmpGoodsPrice = parseFloat($('#frmViewLayer input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmViewLayer input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmViewLayer input[name="set_option_text_price"]').val());
            }
            if (tmpOptionPrice > 0) { tmpOptionPrice = tmpOptionPrice / goodsTotalCnt; }
            if (tmpTextPrice > 0) { tmpTextPrice = tmpTextPrice / goodsTotalCnt; }
            
            setCriteoGoodsPrice = tmpGoodsPrice + tmpOptionPrice + tmpTextPrice;
        }
        
        function criteoCartEvent(goodsNo, price, quantity) {
            window.criteo_q = window.criteo_q || [];
            var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
            window.criteo_q.push(
                { event: "setAccount", account: "34297" },
                { event: "setEmail", email: "9360d2e2e294fd47c5ec8d55c10ae8d557df6cc1f970be3774fd17fc987d2895", hash_method: "sha256" },
                { event: "setZipcode", zipcode: "" },
                { event: "setSiteType", type: deviceType },
                { event: "addToCart", item: [
                    { id: goodsNo, price: price, quantity: quantity }
                    ]
                }
            );
        }
        </script>
        <!-- End Criteo Cart Event Script -->

        

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
<!-- End Script for IFDO -->

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

<!-- LABBIT GA 향상된 전자상거래 관련 세팅 -->
<script>
	var option1, option2;
</script>
<!-- LABBIT GA 향상된 전자상거래 관련 세팅 끝-->