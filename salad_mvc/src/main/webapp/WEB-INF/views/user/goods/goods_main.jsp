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
    <meta name="csrf-token" content="MTY2NjcwNzkzNDg1Mzg0MTY4NTY0NTYzMTEzMzg2Nzc0MDQ2NDEyOTcx" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://pocketsalad.co.kr/goods/goods_main.jsp?sno=2">
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
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/goods.css?ts=1660635983" />
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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T23%3A25%3A34%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fpocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22goods_main.jsp%22%2C%22domain%22%3A%22pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/goods/goods_main.jsp&amp;Referer=https://pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
        <!-- This script is for AceCounter START --> 
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
	
	
<body id="body" class="body-goods body-goods-main pc"  >
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
                    <input type="image" src="http://localhost/salad_mvc/resources/img/main/sch_btn.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
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
								<li><a href="http://localhost/salad_mvc/resources/user/board/goodsreview_list.jsp">리얼후기</a></li>								
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
<a href="#void" id="allMenuToggle"><img src="http://localhost/salad_mvc/resources/images/common/btn/btn_allmenu_open.png" alt="전체메뉴보기"></a>
</div>
	<div class="gnb_allmenu_wrap">
<div class="gnb_allmenu" id="gnbAllMenu" style="display:none" >
<div class="gnb_allmenu_box">
<ul>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=001">정기배송</a>
				<ul class="all_depth1"><li><a href="../goods/goods_list.jsp?cateCd=001009">식단스타터(1주)</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001010">2주 식단</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001011">4주 식단</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001012">6주+식단</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001013">짜여진 식단</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=029">포켓마켓</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=029003">정기배송코너</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=029001">신선코너</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=029002">냉동코너</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=002">샐러드</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=002002">데일리 샐러드</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=002004">테이스티 샐러드</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=002005">파우치 샐러드</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=002003">맛보기 세트</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=003">간편식</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=003001">라이스 시즌1&amp;2</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=003008">곤약 라이스 시즌3</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=003007">미니컵밥</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=003009">두부파스타</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=004">닭가슴살&amp;간식</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=004003">만두</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004004">슬라이스</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004002">소시지</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004005">큐브・볼</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004007">간식</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=027">식단 세트</a>
		</div>
	</li>
</ul>
</div>
</div>
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

            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->

<style>
	.gds_top_bx{opacity: 0;
    visibility: hidden;
    transition: opacity 1s ease;
    -webkit-transition: opacity 1s ease;
}
.gds_top_bx.in{
    visibility: visible;
    opacity: 1;    
}

</style>

<div class="content">



	
 <div class="goods_list_item"  data-sticky-container>	


	<div class="gds_top_bx_wrap"  data-margin-top="49" data-sticky-class="sticky-list">
		<div class="gds_top_bx">
			<div class="gds_top_left">
				<div class="goods_list_item_tit">
					<h2>처음이라면, 맛보기 어때요?</h2>
				</div>
			</div>
			<div class="gds_top_right">
			</div>
		</div>
	</div>



        <div class="goods_pick_list">
		
            <span class="pick_list_num">상품 <strong>12</strong>개 </span>
            <form name="frmList" action="">
                <input type="hidden" name="sno" value="2"/>
				<div class="choice_num_view">
                        <select class="chosen-select" name="sort" id="sort" style="width:168px; ">
							<option value="" selected>추천순</option>
							<option value="sellcnt" >인기상품순</option>
							<option value="date" >신상품순</option>
							<option value="price_asc" >낮은가격순</option>
							<option value="price_dsc" >높은가격순</option>
						</select>
                  </div>

                <!-- //pick_list_box -->
            </form>
        </div>
        <!-- //goods_pick_list -->

        <div class="goods_list">
            <div class="goods_list_cont">
                <!-- 상품 리스트 -->
<!-- 갤러리형 -->

<div class="item_gallery_type">
    <ul>
        <li  style="width:25%;">
             <div class="item_cont item_cont_time">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000129&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/11/46/1000000129/1000000129_main_082.jpg" width="570" alt="데일리 닭가슴살 샐러드 5종 맛보기" title="데일리 닭가슴살 샐러드 5종 맛보기" class="middle"  />
                        <span class="icon_time_sale"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/goods_icon/icon_time_sale.png" alt="타임세일" /></span>
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000129"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000129&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">데일리 닭가슴살 샐러드 5종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>31%</em></span>
						</div>


                        <strong class="item_price">
                           <b class="time_prc">34,100원 </b>
                            <span  class='time_sale_cost_r'>
                                30,690<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            44,300원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=540&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/09/14/540/540_main_021.jpg" width="570" alt="베스트 샐러드 6종 맛보기" title="베스트 샐러드 6종 맛보기" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="540"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=540&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">베스트 샐러드 6종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                38,400<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            49,600원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=222&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/02/13/222/222_main_090.jpg" width="570" alt="시즌1 가벼운 탄단지 라이스 6종 혼합" title="시즌1 가벼운 탄단지 라이스 6종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="222"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=222&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">시즌1 가벼운 탄단지 라이스 6종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>22%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                28,500<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            36,700원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=392&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/07/392/392_main_025.jpg" width="570" alt="닭가슴살 소시지 3종 혼합" title="닭가슴살 소시지 3종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="392"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=392&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">닭가슴살 소시지 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>27%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                7,700<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            10,500원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000408&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000408/1000000408_main_053.jpg" width="570" alt="테이스티 샐러드 5종 맛보기" title="테이스티 샐러드 5종 맛보기" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000408"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000408&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">테이스티 샐러드 5종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>21%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                42,300<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            53,400원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=481&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/25/481/481_main_077.jpg" width="570" alt="그릴 닭가슴살볼 3종 혼합" title="그릴 닭가슴살볼 3종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="481"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=481&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">그릴 닭가슴살볼 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>24%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                8,000<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            10,500원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=145&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/18/09/13/145/145_main_087.jpg" width="570" alt="미니컵밥 5종 혼합" title="미니컵밥 5종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="145"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=145&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">미니컵밥 5종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>34%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                18,300<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            27,700원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=75&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/75/75_main_077.jpg" width="570" alt="데일리 샐러드 10종 맛보기" title="데일리 샐러드 10종 맛보기" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="75"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=75&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">데일리 샐러드 10종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                69,300<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            89,500원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000271&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/04/17/1000000271/1000000271_main_034.jpg" width="570" alt="두부파스타 4종 혼합" title="두부파스타 4종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000271"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000271&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">두부파스타 4종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                19,500<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            25,200원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000261&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/04/15/1000000261/1000000261_main_04.jpg" width="570" alt="시즌3 곤약 라이스 6종 혼합" title="시즌3 곤약 라이스 6종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000261"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000261&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">시즌3 곤약 라이스 6종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>24%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                28,700<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            37,700원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=399&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/07/399/399_main_087.jpg" width="570" alt="닭가슴살 만두 2종 혼합" title="닭가슴살 만두 2종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="399"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=399&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">닭가슴살 만두 2종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>41%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                4,700<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            8,000원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=444&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/10/444/444_main_039.jpg" width="570" alt="닭가슴살 슬라이스 3종 혼합" title="닭가슴살 슬라이스 3종 혼합" class="middle"  />
                    </a>

					<span class="best-icon">
                        <img src="/data/icon/goods_icon/icon_리뉴얼2.png"  alt="리뉴얼" title="리뉴얼" class="middle"  /> 
					</span>

                    <div class="item_link">
<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="444"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
						

                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=444&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En">
                            <strong class="item_name">닭가슴살 슬라이스 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->



                    <div class="item_money_box">
                        <div class="all_price">

						<div class="per_wrap">
    							<span class="item_discount"><em>26%</em></span>
						</div>


                        <strong class="item_price">
                            <span  style="">
                                8,000<i class="won">원</i></span>
                        </strong>
                        <span class="dc_price aaaaa" style="">
                            10,800원 </span>
                    </div>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    </ul>
</div>
<!-- //item_gallery_type -->





























<!-- option layer -->
<div id="optionViewLayer" class="layer_wrap dn"></div>
<!-- //option layer -->
<div id="addCartLayer" class="layer_wrap dn">
    <div class="box add_cart_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view">
            <h2>장바구니 담기</h2>
            <div class="scroll_box">
                <p class="success"><strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
            </div>
            <div class="btn_box">
                <button class="btn_cancel"><span>취소</span></button>
                <button class="btn_confirm btn_move_cart"><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close" type="button">닫기</button>
        </div>
    </div>
</div>
<div id="addWishLayer" class="layer_wrap dn">
    <div class="box add_wish_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view">
            <h2>찜 리스트 담기</h2>
            <div class="scroll_box">
                <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
            </div>
            <div class="btn_box">
                <button class="btn_cancel"><span>취소</span></button>
                <button class="btn_confirm btn_move_wish"><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close layer_close" type="button">닫기</button>
        </div>
    </div>
</div>
<!-- //layer_wrap -->
<!-- wish template -->
<form id="frmWishTemplateView" method="post">
    <input type="hidden" name="mode" value="wishIn">
    <input type="hidden" name="cartMode" value="">
    <input type="hidden" name="optionFl" value="">
</form>
<!-- //cart template -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){
        $('.btn_open_layer').unbind(); // mypage/_order_goods_list 에서 binding된 btn_open_layer를 unbinding

        // $('.item_photo_box').on('click', '.btn_add_wish_2', function(){
        //             //
        //     
        //     var minOrderCnt = 1;
        //     if ($(this).data('min-order-cnt')) {
        //         minOrderCnt = parseInt($(this).data('min-order-cnt'));
        //         if (minOrderCnt > 1) {
        //             alert(__('최소 %s개 이상 구매가능합니다', minOrderCnt));
        //         }
        //     }
        //     $('#frmWishTemplateView input[name=\'cartMode\']').val($(this).data('goods-no'));
        //     $('#frmWishTemplateView input[name=\'optionFl\']').val($(this).data('optionfl'));
        //     $('#frmWishTemplateView input[name=\'mode\']').val('wishIn');
        //
        //     var params = $('#frmWishTemplateView').serialize();
        //
        //     $.ajax({
        //         method: "POST",
        //         cache: false,
        //         url: '../mypage/wish_list_ps.jsp',
        //         data: params,
        //         success: function (data) {
        //             // error 메시지 예외 처리용
        //             if (!_.isUndefined(data.error) && data.error == 1) {
        //                 alert(data.message);
        //                 return false;
        //             }
        //
        //                     //
        //             $("#addWishLayer").removeClass('dn');
        //             $('#layerDim').removeClass('dn');
        //             $("#addWishLayer").find('> div').center();
        //         },
        //         error: function (data) {
        //             alert(data.message);
        //         }
        //     });
        //
        //     return false;
        //             // });

        $('.item_photo_box').on('click', '.btn_add_cart_2', function(){
            if($(this).data('mode') == 'cartIn') {
                var params = {
                    page: 'goods',
                    type: 'goods',
                    goodsNo: $(this).data('goods-no'),
                    mainSno : '2',
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
        });

        $('.layer-cartaddconfirm').click(function(){
            location.href = '../order/cart.jsp';
        });

        $('.btn_move_cart').click(function() {
            location.href = '../order/cart.jsp';
        });

        $('.btn_move_wish').click(function() {
            location.href = '../mypage/wish_list.jsp';
        });

    });

    function gd_goods_option_view_result(params) {
        params += "&mode=cartIn";
        $.ajax({
            method: "POST",
            cache: false,
            url: "../order/cart_ps.jsp",
            data: params,
            success: function (data) {
                $("#optionViewLayer").addClass('dn');
                $("#addCartLayer").removeClass('dn');
                $('#layerDim').removeClass('dn');
                $("#addCartLayer").find('> div').center();
            },
            error: function (data) {
                alert(data.message);
            }
        });
    }








    // $('.btn_open_layer').bind('click', function(e){
    //     e.preventDefault();
    //     if($(this).attr('href') == '#couponOrderApplyLayer') {
    //         // 마일리지 쿠폰 중복사용 체크
    //         var checkMileageCoupon = gd_choose_mileage_coupon('coupon');
    //         if (!checkMileageCoupon) {
    //             return false;
    //         }
    //
    //         var cartIdx = [];
    //         $('input[name="cartSno[]"]').each(function(idx){
    //             cartIdx.push($(this).val());
    //         });
    //         var params = {
    //             mode: 'coupon_apply_order',
    //             cartSno: cartIdx,
    //             couponApplyOrderNo: $('input:hidden[name="couponApplyOrderNo"]').val(),
    //         };
    //
    //         $('#popupCouponApply').modal({
    //             remote: '/order/layer_coupon_apply_order.jsp',
    //             cache: false,
    //             type : 'post',
    //             params: params,
    //             show: true
    //         });
    //     }
    // });

    //-->
</script>
                <!-- //상품 리스트 -->
            </div>
        </div>

        <div class="pagination">
            <div class="pagination"><ul><li class="on"><span>1</span></li></ul></div>
        </div>

    </div>
    <!-- //goods_list_item -->

	<script type="text/javascript">
		$(document).ready(function () {

			$('form[name=frmList] select[name=pageNum]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});

			$('form[name=frmList] select[name=sort]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});

			/*

			$('form[name=frmList] input[name=sort]').click(function() {
				$('form[name=frmList]').get(0).submit();
			});

			$(':radio[name="sort"][value=""]').prop("checked","checked")
			$(':radio[name="sort"][value=""]').next().addClass('on');
			*/


				
			setTimeout(function() {
					$('.gds_top_bx').addClass('in');
			}, 10);

		});

	</script>
</div>
<!-- //content -->

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
		<li><a href="/mypage/order_list.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_deli.png" alt=""></a></li>
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
            <a href="../goods/goods_view.jsp?goodsNo=1000000239">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_main_080.jpg">
                </span>
                <span class="src_box">
                    <em>4주 정기배송 샐러드 주 5일</em>
                        <strong>92,400<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>
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

    </ul>
    <ul>
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

</body>
</html>