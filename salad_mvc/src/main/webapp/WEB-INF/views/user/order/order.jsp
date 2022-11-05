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
    <meta name="csrf-token" content="MTY2NjcwNTY4NjAwNDU1MjEwNTk2ODIzNjQzNTM5Njc3MzA3NTAxMTU4" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://pocketsalad.co.kr/order/order.jsp">
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
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/order/order.css?ts=1652161547" />
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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A48%3A06%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fpocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22order.jsp%22%2C%22domain%22%3A%22pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
    <!-- Add script : end -->

    <script language="javascript" type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>

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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/order/order.jsp&amp;Referer=https://pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
	
	
<body id="body" class="body-order body-order pc"  >
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

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> > 주문서 작성 / 결제</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->

<style>
	#morningSelectDay_chosen { width: 320px !important;}
	#parcelSelectDay_chosen { width: 320px !important;}
</style>

<div class="content_box">
    <form id="frmOrder" name="frmOrder" action="./order_ps.jsp" method="post" target="ifrmProcess">
        <input type="hidden" name="regularFl" value="y" /><!-- regularFl -->

        <input type="hidden" name="csrfToken" value="MTY2NjcwNTY4NjAwNDU1MjEwNTk2ODIzNjQzNTM5Njc3MzA3NTAxMTU4" />
        <input type="hidden" name="orderChannelFl" value="shop" />
        <input type="hidden" name="orderCountryCode" value="" />
        <input type="hidden" name="orderZipcode" value="" />
        <input type="hidden" name="orderZonecode" value="" />
        <input type="hidden" name="orderState" value="" />
        <input type="hidden" name="orderCity" value="" />
        <input type="hidden" name="orderAddress" value="" />
        <input type="hidden" name="orderAddressSub" value="" />
        <input type="hidden" name="orderPhonePrefixCode" value="kr" />
        <input type="hidden" name="orderPhonePrefix" value="82" />
        <input type="hidden" name="orderCellPhonePrefixCode" value="kr" />
        <input type="hidden" name="orderCellPhonePrefix" value="82" />
        <input type="hidden" name="receiverCountryCode" value="kr" />
        <input type="hidden" name="receiverPhonePrefixCode" value="kr" />
        <input type="hidden" name="receiverPhonePrefix" value="82" />
        <input type="hidden" name="receiverCellPhonePrefixCode" value="kr" />
        <input type="hidden" name="receiverCellPhonePrefix" value="82" />
        <input type="hidden" name="receiverState" value="" />
        <input type="hidden" name="receiverCity" value="" />
        <input type="hidden" name="chooseMileageCoupon" value="n" />
        <input type="hidden" name="chooseCouponMemberUseType" value="all" />
        <input type="hidden" name="totalCouponGoodsDcPrice" value="0" />
        <input type="hidden" name="totalCouponGoodsMileage" value="0" />
        <input type="hidden" name="totalMemberDcPrice" value="0" />
        <input type="hidden" name="totalMemberOverlapDcPrice" value="0" />
        <input type="hidden" name="deliveryFree" value="n" />
        <input type="hidden" name="totalDeliveryFreePrice" value="" />
        <input type="hidden" name="cartGoodsCnt" value="2" />
        <input type="hidden" name="cartAddGoodsCnt" value="0" />
        <input type="hidden" name="productCouponChangeLimitType" value="n" />
        <input type="hidden" name="deliveryVisit" value="n" />
        <input type="hidden" name="returnUrl" value="/order/order.jsp" />

        <div class="order_wrap">
            <div class="order_tit">
                <h2>주문서/결제</h2>
                <ol>
                    <li><span>01</span> 장바구니 <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/member/icon_join_step_off.png" alt=""></span></li>
                    <li class="page_on"><span>02</span> 주문서/결제<span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/member/icon_join_step_on.png" alt=""></span></li>
                    <li><span>03</span> 주문완료</li>
                </ol>
            </div>
            <!-- //order_tit -->

            <div class="order_cont">

                <!-- 정기배송 area start -->
                <div class="cart_cont_list">
                    <div class="deli_order_top_tit">
                        <h3>정기배송</h3>
                    </div>

                    <div class="order_table_type">
                        <table class="bdt_type1" >
                            <colgroup>
                                <col style="width:60%">					<!-- 상품명/옵션 -->
                                <col style="width:14%">  <!-- 수량 -->
                                <col style="width:23%"> <!-- 상품금액 -->
                            </colgroup>
                            <tbody>
                            <tr>
                                <td  class="img_td cknone">
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
                                <td class="td_order_amount">
                                    <div class="order_goods_num">
                                        <!-- 20201218 -->
                                        <strong>1개</strong>
                                    </div>
                                </td>
                                <td class="right_a1">
                                    <!--  -->
                                    <!-- 20201218 -->
                                    <b class="order_delitop_txt">5팩×1회 총 5팩</b>
                                    <!--  -->
                                    <strong class="order_sum_txt">29,820<i class="won">원</i></strong>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="7" class="cart_deli_intable_td" >
                                    <div class="cart_deli_intable_wrap">
                                        <table class="cart_deli_intable">
                                            <colgroup>
                                                <col style="width:10%;">
                                                <col style="width:51%;">
                                                <col style="width:19%;">
                                                <col style="width:20%;">
                                            </colgroup>
                                            <tbody>
<!-- 20201218 [[ -->
                                            <input type="hidden" name="cartSno[]" value="726581" />
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726581" />1일차 1식 -->
                                                    1
                                                </td>

                                                <td class="subj">닭가슴살 샐러드 x1</td>
                                                <td class="ori_con">8,300원</td>
                                                <td class="dc_con">6,660원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726581" />1일차 1식 -->
                                                    2
                                                </td>

                                                <td class="subj">크래미 샐러드 x1</td>
                                                <td class="ori_con">9,000원</td>
                                                <td class="dc_con">6,860원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726581" />1일차 1식 -->
                                                    3
                                                </td>

                                                <td class="subj">그린 샐러드 x1</td>
                                                <td class="ori_con">6,200원</td>
                                                <td class="dc_con">4,670원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726581" />1일차 1식 -->
                                                    4
                                                </td>

                                                <td class="subj">채소만 샐러드 x1</td>
                                                <td class="ori_con">5,400원</td>
                                                <td class="dc_con">3,380원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726581" />1일차 1식 -->
                                                    5
                                                </td>

                                                <td class="subj">레드칠리 로스트 닭가슴살 샐러드 x1</td>
                                                <td class="ori_con">10,300원</td>
                                                <td class="dc_con">8,250원<!--<b class="per_c_txt" >(23%할인)</b>--></td>

                                            </tr>

<!-- 20201218 ]] -->



                                            </tbody>
                                        </table>
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td  class="img_td cknone">
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
                                <td class="td_order_amount">
                                    <div class="order_goods_num">
                                        <!-- 20201218 -->
                                        <strong>1개</strong>
                                    </div>
                                </td>
                                <td class="right_a1">
                                    <!--  -->
                                    <!-- 20201218 -->
                                    <b class="order_delitop_txt">5팩×2회 총 10팩</b>
                                    <!--  -->
                                    <strong class="order_sum_txt">68,260<i class="won">원</i></strong>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="7" class="cart_deli_intable_td" >
                                    <div class="cart_deli_intable_wrap">
                                        <table class="cart_deli_intable">
                                            <colgroup>
                                                <col style="width:10%;">
                                                <col style="width:51%;">
                                                <col style="width:19%;">
                                                <col style="width:20%;">
                                            </colgroup>
                                            <tbody>
<!-- 20201218 [[ -->
                                            <input type="hidden" name="cartSno[]" value="726582" />
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726582" />1일차 1식 -->
                                                    1
                                                </td>

                                                <td class="subj">크래미 샐러드 x2</td>
                                                <td class="ori_con">18,000원</td>
                                                <td class="dc_con">13,660원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726582" />1일차 1식 -->
                                                    2
                                                </td>

                                                <td class="subj">닭가슴살 비엔나 샐러드 x2</td>
                                                <td class="ori_con">18,000원</td>
                                                <td class="dc_con">14,040원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726582" />1일차 1식 -->
                                                    3
                                                </td>

                                                <td class="subj">치즈 샐러드 x2</td>
                                                <td class="ori_con">16,200원</td>
                                                <td class="dc_con">12,860원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726582" />1일차 1식 -->
                                                    4
                                                </td>

                                                <td class="subj">닭가슴살볼 옥수수톡 샐러드 x2</td>
                                                <td class="ori_con">18,000원</td>
                                                <td class="dc_con">13,660원<!--<b class="per_c_txt" >(22%할인)</b>--></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <input type="hidden" name="cartSno[]" value="726582" />1일차 1식 -->
                                                    5
                                                </td>

                                                <td class="subj">훈제오리 샐러드 x2</td>
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
                                                    <input type="hidden" id="regularTotalDeliveryCharge" value="9000"><!-- 20210316 -->
                                                    <dt>총 배송비</dt>
                                                    <dd id="regularTotalDeliveryCharge123">

                                                        <strong id="regularTotalDeliveryCharge11">4,500</strong>원 X <strong>2</strong>회

                                                    </dd>
                                                </dl>
                                                <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc/img/order/order_price_total.png" alt="합계"></span>
                                                <dl class="price_total">
                                                    <dt>결제금액</dt>
                                                    <!-- <dd><strong id="regularTotalSettlePrice">107,080</strong>원 -->
                                                    <dd><strong id="regularTotalSettlePrice">107,080</strong>원
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <!-- //price_sum_cont -->
                                    </div>
                                    <!-- <table class="cart_deli_intable cart_deli_intable2">
                                        <tbody>
                                            <tr>
                                                <th colspan="2" class="left_con cart_deli_tit2">수령예정일 안내</th>
                                                <th colspan="2" class="right_con cart_deli_tit2" ><span class="deli_caution_txt_1">*월요일 · 일요일 및 공휴일 택배 수령 불가</span></th>
                                            </tr>
                                            <tr>
                                                <td class="deli_completed_date" colspan="4">
                                                    <div class="d_date_con">
                                                        <p class="unit">
                                                                <span class="d_count">1회차</span>
                                                                <span class="d_date">10/27(목)</span>
                                                        </p>
                                                        <p class="unit">
                                                                <span class="d_count">2회차</span>
                                                                <span class="d_date">11/03(목)</span>
                                                            </p>
                                                            <p class="unit">
                                                                <span class="d_count">3회차</span>
                                                                <span class="d_date">11/10(목)</span>
                                                            </p>
                                                            <p class="unit">
                                                                <span class="d_count">4회차</span>
                                                                <span class="d_date">11/17(목)</span>
                                                            </p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table> -->
                                </td>
                            </tr>
                            </tfoot>
                        </table>
                        <div class="cart_etc_bottom_txt" style="display:none;">                             <p class="txt1">
                                * 샐러드의 경우 당일제작 가능 수량이 한정되어 있어
                                실제 수령일과 1~2일 차이가 있을 수 있습니다.
                            </p>
                            <p class="bold_txt1">
                                샐러드 출고 당일, 제작 안내 문자 발송
                            </p>
                        </div>
                    </div>
                    <!-- 정기배송 area end -->













                    <!-- 주문 간단 가입 시작 -->
                    <input type="hidden" name="simpleJoin" value="" />


                    <!-- 주문 간단 가입 끝 -->


                    <!-- //일회용품 제외 필드-->
                    <div class="disposable">
                        <div class="disposable_info">
                            <h4>옵션 선택</h4>
                        </div>
                        <div class="form_element">
                            <span>샐러드ㆍ라이스 상품에서 일회용품을 제외하실 수 있어요.</span>
                            <div class="disposable_top">
                                <input type="checkbox" id="checkDisposable" name="disposable" value="y">
                                <label for="checkDisposable" class="check_s">일회용품 제외하기(포크,수저)</label>
                                <div class="disposable_img">
                                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/disposable.png">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- // END-->

                    <div class="order_view_info">



                        <div class="order_info">
                            <div class="order_zone_tit">
                                <h4>주문자 정보</h4>
                            </div>

                            <div class="order_table_type order_table_type_bottom">
                                <table class="table_left">
                                    <colgroup>
                                        <col style="width:15%;">
                                        <col style="width:85%;">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th scope="row"><span class="important">주문하시는 분</span></th>
                                        <td><input type="text" name="orderName" id="orderName" value="테스터" data-pattern="gdEngKor" maxlength="20"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="important">휴대폰 번호</span></th>
                                        <td>
                                            <input type="text" id="mobileNum" name="orderCellPhone" value="010-8968-4952" maxlength="20" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="important">이메일</span></th>
                                        <td class="member_email">
                                            <input type="text" name="orderEmail" value="alfkdlej5@gmail.com" />

                                            <select id="emailDomain" class="chosen-select" style="width:178px;">
                                                <option value="self">직접입력</option>
                                                <option value="naver.com">naver.com</option>
                                                <option value="hanmail.net">hanmail.net</option>
                                                <option value="daum.net">daum.net</option>
                                                <option value="nate.com">nate.com</option>
                                                <option value="hotmail.com">hotmail.com</option>
                                                <option value="gmail.com">gmail.com</option>
                                                <option value="icloud.com">icloud.com</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- //order_info -->

                        <div class="delivery_info">
                            <div class="order_zone_tit">
                                <h4>배송정보</h4>
                            </div>

                            <div class="order_table_type shipping_info">
                                <table class="table_left shipping_info_table">
                                    <colgroup>
                                        <col style="width:15%;">
                                        <col style="width:85%;">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th scope="row">배송지 확인</th>
                                        <td class="shpg_con">
                                            <div class="form_element" style="width:560px;">                                                 <ul>
                                                    <li>
                                                        <input type="radio" name="shipping" id="shippingBasic">
                                                        <label for="shippingBasic" class="choice_s">기본 배송지</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" name="shipping" id="shippingNew">
                                                        <label for="shippingNew" class="choice_s">직접 입력</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" name="shipping" id="shippingSameCheck">
                                                        <label for="shippingSameCheck" class="choice_s">주문자정보와 동일</label>
                                                    </li>
                                                </ul>
                                                <span class="btn_gray_list"><a href="#myShippingListLayer" class="btn_gray_small btn_open_layer js_shipping"><span>배송지 관리</span></a></span>
                                                <input type="hidden" class="shipping-delivery-visit" value="n" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="important">받으실분</span></th>
                                        <td><input type="text" name="receiverName" data-pattern="gdEngKor" maxlength="20"/></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="important">받으실 곳</span></th>
                                        <td class="member_address">
                                            <div class="address_postcode">
                                                <input type="text" name="receiverZonecode" readonly="readonly" />
                                                <input type="hidden" name="receiverZipcode"/>
                                                <span id="receiverZipcodeText" class="old_post_code"></span>
                                                <button type="button" class="btn_post_search" onclick="gd_postcode_search('receiverZonecode', 'receiverAddress', 'receiverZipcode');">우편번호검색</button>
                                            </div>
                                            <div class="address_input">
                                                <input type="text" name="receiverAddress" readonly="readonly"/>

                                            </div>
                                            <div class="address_input">
                                                <input type="text" name="receiverAddressSub" />
                                            </div>
                                            <div class="delivery_type_info" style="float:left;">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="important">휴대폰 번호</span></th>
                                        <td>
                                            <input type="text" id="receiverCellPhone" name="receiverCellPhone"/>
                                        </td>
                                    </tr>

                                    <tr id="memberinfoApplyTr">
                                        <th scope="row">회원정보 반영</th>
                                        <td>
                                            <div class="form_element">
                                                <div id="memberinfoApplyTr1" class="member_info_delivery">
                                                    <input type="checkbox" id="reflectApplyDelivery" name="reflectApplyDelivery" value="y" >
                                                    <label for="reflectApplyDelivery" class="check_s"><em>나의 배송지에 추가합니다.</em></label>
                                                </div>
                                                <div id="memberinfoApplyTr2" class="member_info_apply">
                                                    <input type="checkbox" id="reflectApplyMember" name="reflectApplyMember" value="y">
                                                    <label for="reflectApplyMember" class="check_s">위 내용을 회원정보에 반영합니다. <span>(주소/전화번호/휴대폰번호)</span></label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="orderVisitTr dn">
                                        <th scope="row">방문수령 정보</th>
                                        <td>
                                            <div class="table1">
                                                <table>
                                                    <colgroup>
                                                        <col style="width:150px;">
                                                        <col>
                                                    </colgroup>
                                                    <tbody>
                                                    <tr>
                                                        <th scope="row">방문 수령지 주소</th>
                                                        <td>
                                                            <span class="delivery-method-visit-area-txt"></span>
                                                            <input type="hidden" name="visitAddress" value="">

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row"><span class="important">방문자 정보</span></th>
                                                        <td>
                                                            방문자명 <input type="text" name="visitName" value="" class="text"> 방문자연락처 <input type="text" name="visitPhone" value="" class="text">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">메모</th>
                                                        <td class="td_last_say">
                                                            <input type="text" name="visitMemo" maxlength="250">
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- //delivery_info -->

                        <!-- //addition_info -->

                        <div class="delivery_info">
                            <div class="order_zone_tit">
                                <h4>배송방법 및 수령일 선택</h4>
                            </div>
                            <div class="order_table_type shipping_info">
                                <table class="table_left shipping_info_table">
                                    <colgroup>
                                        <col style="width:15%;">
                                        <col style="width:85%;">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th scope="row"><span class="important">배송방법</span></th>
                                        <td>
                                            <div class="form_element" style='height: 100%; width: 400px;'>
                                                <ul>
                                                    <li style="display:none;">
                                                        <input type="radio" name="deliveryType" id="deliveryMorning" value="morning">
                                                        <label for="deliveryMorning" class="choice_s" style='font-size:17px; font-weight: bold;'>새벽배송</label>
                                                        <span style='margin-left: 10px; color: #333;'></span>
                                                    </li>
                                                    <!--<Br>-->
                                                    <li>
                                                        <input type="radio" name="deliveryType" id="deliveryParcel" value="parcel">
                                                        <label for="deliveryParcel" class="choice_s" style='font-size:17px; font-weight: bold;'>일반택배</label>
                                                        <span style='margin-left: 10px; color: #333;'></span>
                                                    </li>
                                                </ul>
                                            </div>

                                            <!-- <div style='display:inline-block;'>
                                                <div><p style='font-size: 14px; line-height: 20px; background: url(/data/skin/front/kaimen_pc_n/img/member/icon_dot_03.png) no-repeat 0 center; margin: 0 0 0 -10px; padding: 0 0 0 10px; color: #00af85;'>결제 완료 후 1~2일 이내 순차 출고</p><p style='font-size: 14px; line-height: 20px; color: #00af85;'>출고 당일 오전 제작안내 알림톡 발송</p></div>
                                            </div> -->

                                        </td>
                                    </tr>
									
									<!-- 배송일 선택한 상품이 있을때만 노출 -->
                                    <tr id="delivery_morning_date" style="display:none;">
                                        <th scope="row"><span class="important">수령일</span></th>
                                        <td>
											<div style='display: inline-block;'>
												<select name='morningSelectDay' class="chosen-select" id="morningSelectDay">
													<option value=''>수령일을 선택해주세요</option>
													<!--<option value='9999'>가장 빠른 일</option>-->
													<option value="1666796400" >10월 27일 (목)  </option>
													<option value="1666882800" >10월 28일 (금)  </option>
													<option value="1666969200" >10월 29일 (토)  </option>
													<option value="1667228400" >11월 01일 (화)  </option>
													<option value="1667314800" >11월 02일 (수)  </option>
													<option value="1667401200" >11월 03일 (목)  </option>
													<option value="1667487600" >11월 04일 (금)  </option>
													<option value="1667574000" >11월 05일 (토)  </option>
													<option value="1667833200" >11월 08일 (화)  </option>
													<option value="1667919600" >11월 09일 (수)  </option>
													<option value="1668006000" >11월 10일 (목)  </option>
													<option value="1668092400" >11월 11일 (금)  </option>
												</select>
											</div>
											<div style='display: inline-block; margin-left: 20px; position: relative; top: 8px;'>
												<span style='color: #00af85;'> 정기배송 상품은 선택한 수령일과 매주 같은 요일에 배송됩니다.</span>
											</div>
                                        </td>
                                    </tr>
									
                                    <tr id="delivery_parcel_date" style="display:none;">
                                        <th scope="row"><span class="important">수령일</span></th>
                                        <td>
											<div style='display: inline-block;'>
												<select name='parcelSelectDay' class="chosen-select" id="parcelSelectDay">
													<option value=''>수령일을 선택해주세요</option>
													<!--<option value='9999'>가장 빠른 일</option>-->
													<option value="1666882800" >10월 28일 (금) </option>
													<option value="1666969200" >10월 29일 (토) </option>
													<option value="1667228400" >11월 01일 (화) </option>
													<option value="1667314800" >11월 02일 (수) </option>
													<option value="1667401200" >11월 03일 (목) </option>
													<option value="1667487600" >11월 04일 (금) </option>
													<option value="1667574000" >11월 05일 (토) </option>
													<option value="1667833200" >11월 08일 (화) </option>
													<option value="1667919600" >11월 09일 (수) </option>
													<option value="1668006000" >11월 10일 (목) </option>
													<option value="1668092400" >11월 11일 (금) </option>
													<option value="1668178800" >11월 12일 (토) </option>
												</select>
											</div>
											<div style='display: inline-block; margin-left: 20px; position: relative; top: 8px;'>
												<span style='color: #00af85;'> 정기배송 상품은 선택한 수령일과 매주 같은 요일에 배송됩니다.</span>
											</div>
                                        </td>
                                    </tr>
									
                                    <tr id ="delivery_morning_arrive" style='display:none;'>
                                        <th scope ="row"><span class="important">받으실 장소</span></th>
                                        <td>
                                            <div class="form_element">
                                                <ul>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_arrive" class="morning_delivery_arrive" id="morning_delivery_door" value="door">
                                                        <label for="morning_delivery_door" class="choice_s">문 앞</label>
                                                    </li>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_arrive" class="morning_delivery_arrive" id="morning_delivery_security_office" value="security_office">
                                                        <label for="morning_delivery_security_office" class="choice_s">경비실</label>
                                                    </li>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_arrive" class="morning_delivery_arrive" id="morning_delivery_courier_box" value="courier_box">
                                                        <label for="morning_delivery_courier_box" class="choice_s">택배함</label>
                                                    </li>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_arrive" class="morning_delivery_arrive" id="morning_delivery_place" value="place">
                                                        <label for="morning_delivery_place" class="choice_s">기타 장소</label>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr id="security_text" style='display:none;'>
                                        <th scope="row" style='vertical-align: top;'><span class="important">경비실 특이사항</span></th>
                                        <td>
                                            <input type="text" name="security_text" style="visibility:unset;position:unset;" placeholder="경비실 위치 등 특이사항이 있을 경우 작성해주세요.">
                                            <p style='font-size: 14px; color: #333;'>경비실 호출/보관이 어려울 경우 부득이하게 공동현관 앞에 배송될 수 있습니다.</p>
                                        </td>
                                    </tr>
                                    <tr id="courier_text" style="display:none;">
                                        <th scope="row" style='vertical-align: top;'><span class="important">택배함 정보</span></th>
                                        <td>
                                            <input type="text" name="courier_text" style="visibility:unset;position:unset;" placeholder="택배함 위치/ 택배함 번호 (비밀번호)">
                                            <p style='font-size: 14px; color: #333;'>택배함 보관이 어려울 경우 부득이하게 공동현관 앞에 배송될 수 있습니다.</p>
                                        </td>
                                    </tr>
                                    <tr id="morning_etc_text" style="display:none;">
                                        <th scope="row" style='vertical-align: top;'><span class="important">기타 장소 세부 사항</span></th>
                                        <td>
                                            <input type="text" name="etc_text" style="visibility:unset;position:unset;" placeholder="개인 주택의 경우 / 예 : 대문 앞 자전거 옆, 계단 밑 등">
                                            <p style='font-size: 14px; color: #333;'>요청 장소에 보관이 어려울 경우 부득이하게 공동현관 앞에 배송될 수 있습니다.</p>
                                        </td>
                                    </tr>
                                    <tr id="delivery_morning_come" style='display: none'>
                                        <th scope="row" style='vertical-align:top;'><span class="important">공동현관 출입방법</span></th>
                                        <td>
                                            <div class="form_element" style='height:100%;'>
                                                <ul>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_method" class="morning_delivery_method" id="morning_delivery_method_password" value="password">
                                                        <label for="morning_delivery_method_password" class="choice_s">비밀번호</label>
                                                    </li>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_method" class="morning_delivery_method" id="morning_delivery_method_security_come" value="security_come">
                                                        <label for="morning_delivery_method_security_come" class="choice_s">경비실 호출</label>
                                                    </li>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_method" class="morning_delivery_method" id="morning_delivery_method_free" value="free">
                                                        <label for="morning_delivery_method_free" class="choice_s">자유출입</label>
                                                    </li>
                                                    <li style='width: 100px;'>
                                                        <input type="radio" name="morning_delivery_method" class="morning_delivery_method" id="morning_delivery_method_etc" value="etc">
                                                        <label for="morning_delivery_method_etc" class="choice_s">기타방법</label>
                                                    </li>
                                                </ul>
                                                <div id="pass_text" style='display : none;'>
                                                    <input type="text" name="morning_delivery_pass" style="visibility:unset;position:unset;" placeholder="예 : #1234#1234">
                                                </div>
                                                <div id="etc_text" style='display:none;'>
                                                    <input type="text" name="morning_delivery_etc" style="visibility:unset;position:unset;" placeholder="기타방법을 작성해주세요.">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <!--// 회원만 가능-->
                                    <tr id="delivery_morning_save" style='display:none;'>
                                        <th scope="row">출입 정보 저장</th>
                                        <td>
                                            <div class="form_element">
                                                <ul>
                                                    <li style='line-height: 1'>
                                                        <input type="checkbox" name="door_information_save" id="door_information_save" value="door_save">
                                                        <label for="door_information_save" class="check_s" style="color:orangered;">다음 주문에도 계속사용</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr id="delivery_info" style="display:none;">
                                        <th scope="row" style='vertical-align:top; padding-top: 25px;'>배송 요청사항</th>
                                        <td class="td_last_say" style='height:100%; padding-top: 25px;'>
                                            <input type="text" name="orderMemo" placeholder="배송 요청 사항을 입력해 주세요."/>
                                            <div id="delivery_info_morning" class="form_element" style="display:none; width: 100%; height: 100%;">
                                            </div>
                                            <div id="delivery_info_parcel" style="display:none;">
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                        <div class="payment_info">
                            <div class="order_zone_tit">
                                <h4>할인혜택</h4>
                            </div>

                            <div class="order_table_type order_table_type_bottom">
                                <table class="table_left">
                                    <colgroup>
                                        <col style="width:15%;">
                                        <col style="width:85%;">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th scope="row"><!-- 상품 합계 금액 -->총 결제예정금액</th>
                                        <td>
                                            <!-- <strong id="totalGoodsPrice" class="order_payment_sum">98,080원</strong> -->
                                            <strong id="totalGoodsPrice" class="order_payment_sum">107,080원</strong>
                                        </td>
                                    </tr>
                                    <tr style="display:none;">
                                        <th scope="row">배송비</th>
                                        <td>
                                            <span id="totalDeliveryCharge">9,000</span><i class="won">원</i>
                                            <span class="multi_shipping_text"></span>
                                        </td>
                                    </tr>
                                    <tr id="rowDeliveryInsuranceFee" class="dn">
                                        <th scope="row">해외배송 보험료</th>
                                        <td>
                                            <span id="deliveryInsuranceFee">0</span>원
                                            <input type="hidden" name="deliveryInsuranceFee" value="0">
                                        </td>
                                    </tr>
                                    <tr id="rowDeliverAreaCharge" class="dn">
                                        <th scope="row">지역별 배송비</th>
                                        <td>
                                            <span id="deliveryAreaCharge">0</span>원
                                            <input type="hidden" name="totalDeliveryCharge" value="9000">
                                            <input type="hidden" name="deliveryAreaCharge" value="0">
                                        </td>
                                    </tr>
                                    <tr style="display:none;">
                                        <th scope="row" class="dcandpoint">할인 및 적립</th>
                                        <td class="dcandpoint" >
                                            <ul class="order_benefit_list">
                                                <li class="order_benefit_sale">
                                                    <em id="saleDefault">
                                                        할인 <strong>(-) <b class="total-member-dc-price">0</b>원</strong>
                                                        <span>(
                                                    상품 0원
                                                    , 회원 <span class="member-dc-price">0원</span>
                                                    , 쿠폰 <span class="goods-coupon-dc-price">0</span>원
                                                    )</span>
                                                    </em>
                                                    <em id="saleWithoutMember" class="dn">
                                                        할인 : <strong>(-) <b class="total-member-dc-price-without-member">0</b>원</strong>
                                                        <span>(
                                                    상품 0원
                                                    , 회원 0원
                                                    , 쿠폰 <span class="goods-coupon-dc-price-without-member">0</span>원</span>
                                                        )</span>
                                                    </em>
                                                </li>
                                                <li class="order_benefit_mileage js_mileage">
                                                    <em id="mileageDefault">
                                                        적립 포인트 <strong>(-) <b class="total-member-mileage">980</b>원</strong>
                                                        <span>
                                                        (
                                                        상품 <span class="goods-mileage">0</span>원,
                                                        회원 <span class="member-mileage">980</span>원,
                                                        쿠폰 <span class="goods-coupon-add-mileage">0</span>원
                                                        )
                                                    </span>
                                                    </em>
                                                    <em id="mileageWithoutMember" class="js_mileage dn">
                                                        적립 포인트 <strong>(-) <b class="total-member-mileage-without-member">0</b>원</strong>
                                                        <span>
                                                        (
                                                        상품 0원,
                                                        회원 0원,
                                                        쿠폰 <span class="goods-coupon-add-mileage-without-member">0</span>원
                                                        )
                                                    </span>
                                                    </em>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="cp_use_tit">쿠폰 사용</th>
                                        <td class="cp_use_con">
                                            <input type="hidden" name="couponApplyOrderNo" value="" />
                                            <input type="hidden" name="totalCouponOrderDcPrice" value="" />
                                            <input type="hidden" name="totalCouponOrderPrice" value="" />
                                            <input type="hidden" name="totalCouponOrderMileage" value="" />
                                            <input type="hidden" name="totalCouponDeliveryDcPrice" value="" />
                                            <input type="hidden" name="totalCouponDeliveryPrice" value="" />
                                            <span class="btn_gray_list cpbtn_app_btn">
                                            <button type="button" href="#couponOrderApplyLayer" class="btn_gray_mid btn_open_layer" ><span>쿠폰적용</span></button>
                                        </span>

                                            <ul class="order_benefit_list order_coupon_benefits  dn">
                                                <li class="order_benefit_sale">
                                                    <em>
                                                        쿠폰할인 <strong>- <b id="useDisplayCouponDcPrice">0</b>원</strong>
                                                    </em>
                                                </li>
                                                <!-- <li class="order_benefit_sale" >
                                                    <em>
                                                        배송비할인 <strong>- <b id="useDisplayCouponDelivery">0</b>원</strong>
                                                    </em>
                                                </li> -->
                                                <li class="order_benefit_mileage js_mileage" style="display:none;">
                                                    <em>
                                                        적립 포인트 <strong>- <b id="useDisplayCouponMileage">0</b>원</strong>
                                                    </em>
                                                </li>
                                            </ul>

                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"  class="point_th">적립금 사용</th>
                                        <td>
                                            <div class="order_money_use">
                                                <b><input type="text" name="useMileage" onblur="gd_mileage_use_check('y', 'y', 'y');" /><em>원</em></b>

                                                <div class="form_element order_money_use_sideAll_con">
                                                    <input type="checkbox" id="useMileageAll" onclick="gd_mileage_use_all();">
                                                    <label for="useMileageAll" class="check_s">전액 사용하기</label>
                                                    <span class="money_use_sum">(보유 적립금 : 0<em>원</em>)</span>
                                                </div>

                                                <em class="money_use_txt js-mileageInfoArea" style="display:none;"></em>

                                            </div>
                                        </td>
                                    </tr>

                                    <tr id="last-price-all-con">
                                        <th scope="row">최종 결제 금액</th>
                                        <td>
                                            <input type="hidden" name="settlePrice" value="107080">
                                            <input type="hidden" name="overseasSettlePrice" value="0" />
                                            <input type="hidden" name="overseasSettleCurrency" value="KRW" />
                                            <strong id="totalSettlePriceLast" class="order_payment_sum">107,080</strong><i class="won">원</i>
                                            <div class="will-point">
                                                <em class="tobe_mileage js_mileage">적립예정</em>
                                                <span class="addpoint total-member-mileage">980</span><i class="won">원</i>
                                            </div>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- //payment_info -->

                        <div class="payment_progress">
                            <div class="order_zone_tit">
                                <h4>결제정보 선택 / 결제</h4>
                            </div>

                            <div class="payment_progress_list">
                                <div class="js_pay_content">

                                    <!-- N : 일반결제 시작 -->
                                    <div id="settlekind_general" class="general_payment">
                                        <dl>
                                            <dt>일반결제</dt>
                                            <dd>
                                                <div class="form_element">
                                                    <ul class="payment_progress_select">


                                                        <li id="settlekindType_pc">
                                                            <input type="radio" id="settleKind_pc" name="settleKind" value="pc"/>
                                                            <label for="settleKind_pc" class="choice_s">신용카드</label>
                                                        </li>


                                                        <li id="settlekindType_gb">
                                                            <input type="radio" id="settleKind_gb" name="settleKind" value="gb"/>
                                                            <label for="settleKind_gb" class="choice_s">무통장 입금</label>
                                                        </li>


                                                        <li id="settlekindType_ph">
                                                            <input type="radio" id="settleKind_ph" name="settleKind" value="ph"/>
                                                            <label for="settleKind_ph" class="choice_s">휴대폰결제</label>
                                                        </li>




                                                    </ul>
                                                </div>

                                                <!-- N : 무통장입금 -->
                                                <div id="settlekind_general_gb" class="pay_bankbook_box">
                                                    <ul>
                                                        <li>
                                                            <strong>입금자명</strong>
                                                            <input type="text" name="bankSender" style="width:350px;">
                                                        </li>
                                                        <li>
                                                            <strong>입금은행</strong>
                                                            <select name="bankAccount" class="chosen-select">
                                                                <option value="">선택하세요</option>
                                                                <option value="1">신한은행 100031681034 (주)에이타워</option>
                                                                <option value="2">농협 3010197022371 (주)에이타워</option>
                                                                <option value="3">국민은행 43183701013928 (주)에이타워</option>
                                                                <option value="4">우리은행 1005003043705 (주)에이타워</option>
                                                            </select>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <!-- //pay_bankbook_box -->

                                                <!-- 신용카드 컨텐츠 -->
                                                <div class="card" id="settlekind_general_pc"></div>
                                                <!-- //신용카드 컨텐츠 -->



                                                <!-- 휴대폰 컨텐츠 -->
                                                <div class="cellphone" id="settlekind_general_ph"></div>
                                                <!-- //휴대폰 컨텐츠 -->


                                            </dd>
                                        </dl>
                                    </div>
                                    <!-- //general_payment -->
                                    <!-- N : 일반결제 끝 -->

                                    <!-- N : 간편결제 시작 -->
                                    <div id="settlekind_simple" class="general_payment" style="margin-bottom:50px;">
                                        <dl>
                                            <dt>간편결제</dt>
                                            <dd>
                                                <div class="form_element">
                                                    <ul class="payment_progress_select">
                                                        <li id="settlekindType_pk">
                                                            <input type="radio" id="settleKind_pk" name="settleKind" value="pk"/>
                                                            <label for="settleKind_pk" class="choice_s">카카오페이</label>
                                                        </li>
                                                        <li>
                                                            <input type="radio" id="settleKind_payco_fc" name="settleKind" value="fc" onclick="gd_payco_toggle('fc');">
                                                            <label for="settleKind_payco_fc" class="choice_s">
                                                                페이코
                                                            </label>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </dd>
                                        </dl>
                                    </div>
                                    <!-- //general_payment -->
                                    <!-- N : 일반결제 끝 -->


                                </div>
                                <!-- N : 현금영수증/계산서 발행 시작 -->
                                <div id="receiptSelect" class="cash_tax_get">
                                    <dl>
                                        <dt>현금영수증/계산서 발행</dt>
                                        <dd>
                                            <div class="form_element">
                                                <ul class="payment_progress_select">
                                                    <li id="nonReceiptView">
                                                        <input type="radio" id="receiptNon" name="receiptFl" value="n" onclick="gd_receipt_display();" />
                                                        <label for="receiptNon" class="choice_s on">
                                                            <div class="cash_receipt_non">신청안함</div>
                                                            <div class="cash_receipt_pg">현금영수증 (※ 결제창에서 신청)</div>
                                                        </label>
                                                    </li>
                                                    <li id="cashReceiptView">
                                                        <input type="radio" id="receiptCash" name="receiptFl" value="r" onclick="gd_receipt_display();" />
                                                        <label for="receiptCash" class="choice_s">현금영수증</label>
                                                    </li>
                                                    <li id="taxReceiptView">
                                                        <input type="radio" id="receiptTax" name="receiptFl" value="t" onclick="gd_receipt_display();" />
                                                        <label for="receiptTax" class="choice_s">세금계산서</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </dd>
                                    </dl>

                                    <!-- N : 현금영수증 시작 -->
                                    <div id="cash_receipt_info" class="cash_receipt_box js_receipt dn">
                                        <div class="form_element">
                                            <ul class="payment_progress_select">
                                                <input type="hidden" name="cashCertFl" value="c" />
                                                <li>
                                                    <input type="radio" id="cashCert_d" name="cashUseFl" value="d" onclick="gd_cash_receipt_toggle();" checked="checked" />
                                                    <label class="choice_s" for="cashCert_d">소득공제용</label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="cashCert_e" name="cashUseFl" value="e" onclick="gd_cash_receipt_toggle();" />
                                                    <label class="choice_s" for="cashCert_e">지출증빙용</label>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="cash_receipt_list">
                                            <dl id="certNoHp">
                                                <dt>휴대폰번호</dt>
                                                <dd><input type="text" name="cashCertNo[c]" class="number_only" value="01089684952" maxlength="11" /></dd>
                                            </dl>
                                            <dl id="certNoBno">
                                                <dt>사업자번호</dt>
                                                <dd><input type="text" name="cashCertNo[b]" class="number_only" value="" maxlength="10" /></dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <!-- //cash_receipt_box -->

                                    <!-- N : 세금 계산서 -->
                                    <div id="tax_info" class="tax_invoice_box js_receipt dn">
                                        <div class="order_table_type">
                                            <table summary="세금계산서 입력폼입니다." class="table_left">
                                                <colgroup>
                                                    <col style="width:15%;">
                                                    <col style="width:35%;">
                                                    <col style="width:15%;">
                                                    <col style="width:35%;">
                                                </colgroup>
                                                <tbody>
                                                <tr>
                                                    <th scope="row">사업자번호</th>
                                                    <td colspan="3"><input type="text" name="taxBusiNo" placeholder="- 없이 입력하세요" value="" maxlength="10"/></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">회사명</th>
                                                    <td><input type="text" name="taxCompany" value="" maxlength="50" data-pattern="gdMemberNmGlobal"/></td>
                                                    <th scope="row">대표자명</th>
                                                    <td><input type="text" name="taxCeoNm" value=""/></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">업태</th>
                                                    <td><input type="text" name="taxService" value=""/></td>
                                                    <th scope="row">종목</th>
                                                    <td><input type="text" name="taxItem" value=""/></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">사업장주소</th>
                                                    <td colspan="3" class="member_address">
                                                        <div class="address_postcode">
                                                            <input type="text" name="taxZonecode" value="" readonly="readonly" >
                                                            <input type="hidden" name="taxZipcode" value="">
                                                            <span id="taxrZipcodeText" class="old_post_code"></span>
                                                            <button type="button" onclick="gd_postcode_search('taxZonecode', 'taxAddress', 'taxZipcode');" class="btn_post_search">우편번호 검색</button>
                                                        </div>
                                                        <div class="address_input">
                                                            <input type="text" name="taxAddress" value=""/>
                                                            <input type="text" name="taxAddressSub" value=""/>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">발행 이메일</th>
                                                    <td colspan="3" class="cash_receipt_email">
                                                        <input type="text" name="taxEmail" placeholder="미입력 시 주문자의 이메일로 발행" value="" />
                                                        <select id="taxEmailDomain" class="chosen-select">
                                                            <option value="self">직접입력</option>
                                                            <option value="naver.com">naver.com</option>
                                                            <option value="hanmail.net">hanmail.net</option>
                                                            <option value="daum.net">daum.net</option>
                                                            <option value="nate.com">nate.com</option>
                                                            <option value="hotmail.com">hotmail.com</option>
                                                            <option value="gmail.com">gmail.com</option>
                                                            <option value="icloud.com">icloud.com</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- //tax_invoice_box -->

                                </div>
                                <!-- //cash_tax_get -->
                                <!-- N : 현금영수증/계산서 발행 끝-->

                            </div>
                            <!-- //payment_progress_list -->
                            <div class="payment_final">
                                <div class="payment_final_total">
                                    <dl>
                                        <dt>최종 결제 금액</dt>
                                        <dd><span><strong id="totalSettlePriceView">107,080</strong>원</span></dd>
                                    </dl>
                                </div>
                                <div class="payment_final_check">
                                    <div class="form_element">
                                        <input type="checkbox" id="termAgree_orderCheck" class="require">
                                        <label for="termAgree_orderCheck" class="check_s"><em><b>(필수)</b> 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</em></label>
                                    </div>
                                </div>
                                <div class="btn_center_box">
                                    <button class="btn_order_buy order-buy"><em>결제하기</em></button>
                                </div>
                            </div>
                            <!-- //payment_final -->

                        </div>
                        <!-- //payment_progress -->

                    </div>
                    <!-- //order_view_info -->
                </div>
                <!-- //order_cont -->
            </div>
            <!-- //order_wrap -->
    </form>
</div>
<!-- //content_box -->

<!-- 나의 배송지 관리 레이어 -->
<div id="myShippingListLayer" class="layer_wrap delivery_add_list_layer dn"></div>
<!-- //나의 배송지 관리 레이어 -->
<!-- 상품 쿠폰 적용하기 레이어 -->
<div id="couponApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
<!--//상품 쿠폰 적용하기 레이어 -->
<!-- 주문 쿠폰 적용하기 레이어 -->
<div id="couponOrderApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
<!--//주문 쿠폰 적용하기 레이어 -->
<!-- PG 결제 적용하기 레이어 -->
<div id="pgSettlementApplyLayer" class="layer_wrap pg_layer dn"></div>
<!--//PG 결제 적용하기 레이어 -->


<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery.textchange.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery.serialize.object.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/validation/additional/businessnoKR.js"></script>

<script type="text/javascript">
    <!--
    // 배송지 데이터 글로벌 선언
    var defaultShippingAddress = [];
    var recentShippingAddress = [];
    // 마일리지 사용 정보
    var mileageUse = {
        'usableFl' : 'n',
        'minimumHold' : parseInt('0'),
        'minimumLimit' : parseInt('0'),
        'orderAbleLimit' : parseInt('0'),
        'orderAbleStandardPrice' : parseInt('98080'), // '최소 상품구매금액 제한' 을 비교하기 위한 계산된 구매금액
        'useDeliveryFl' : '',
        'maximumLimit' : '0.00',
        'oriMaximumLimit' : parseInt('0'), // 변형되지 않은 설정 그대로의 값 - %는 원으로 계산되어 나옴
    };

    $(document).ready(function(){

        // 2020.12.08 웹앤모바일 배송방법 선택 추가

        $('input[name=deliveryType]').change(function(){
            $('#delivery_info').show();
            $('[id*="delivery_info_"]').hide();
            $('[id=delivery_info_'+$(this).val()+']').show();
            if($(this).val()=='morning'){
                $('[id=delivery_morning_date]').show();
                $('[id=delivery_parcel_date]').hide();

                // 출입 정보 저장 데이터 있을경우 셋팅
				$('[id=delivery_morning_date]').show();
                $('[id=delivery_parcel_date]').hide();
            }else{

                //새벽배송
                $('#deliveryMorning').attr('checked' , false);
                $('#deliveryMorning').parent().children('label').removeClass('on');

                $('#morning_delivery_method_password').attr('checked', false);
                $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                $('#morning_delivery_method_free').attr('checked', false);
                $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                $('#morning_delivery_method_etc').attr('checked', false);
                $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                $('input[name=morning_delivery_pass]').val('');
                // 택배배송
                $('#deliveryParcel').attr('checked' , true);
                $('#deliveryParcel').prop('checked', 'checked');
                $('#deliveryParcel').parent().children('label').addClass('on');
                $('input[name=selectDay]').each(function(){
                    $(this).attr('checked', false);
                    $(this).parent().children('label').removeClass('on');
                });
                $('#delivery_morning_date').hide();
                $('#delivery_parcel_date').show();
                $('#delivery_info').show();
                /* END */
            }
        });


        $('input.number_only').on('keyup', function () {
            var value = $(this).val().replace(/[^0-9]/g, '');
            $(this).val(value);
        });

        $(document).on('click', '#pgSettlementApplyLayer .close', function(e){
            $(this).closest('.layer_wrap').addClass('dn');
            $('#layerDim').addClass('dn');
            //$('html').removeClass('oh-space');
            //$('#scroll-left, #scroll-right').removeClass('dim');
            $('.inipay_modal-backdrop').remove();
        });

        // 본인인증 레이어
        $("#contents .order_info .btn_cert").on('click',function(){
        });
        $("#contents .pop_cert_ly .btn_close").on('click',function(){
            $(".pop_cert_ly").hide();
            $('#layerDim').addClass('dn');
        });



        // 쿠폰 적용/변경 레이어
        $('.btn_open_layer').bind('click', function(e){
            if($(this).attr('href') == '#couponOrderApplyLayer') {
                // 마일리지 쿠폰 중복사용 체크
                var checkMileageCoupon = gd_choose_mileage_coupon('coupon');
                if (!checkMileageCoupon) {
                    return false;
                }

                var cartIdx = [];
                $('input[name="cartSno[]"]').each(function(idx){
                    cartIdx.push($(this).val());
                });
                var params = {
                    mode: 'coupon_apply_order',
                    cartSno: cartIdx,
                    couponApplyOrderNo: $('input:hidden[name="couponApplyOrderNo"]').val(),
                };
                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../order/layer_coupon_apply_order.jsp",
                    data: params,
                    success: function (data) {
                        $('#couponOrderApplyLayer').empty().append(data);
                        $('#couponOrderApplyLayer').find('>div').center();
                    },
                    error: function (data) {
                        alert(data);
                    }
                });
            }
        });

        // 사은품 체크 및 체크된 수량 출력
        $('.order_freebie_list input[type=checkbox]').click(function(e){
            if($(this).prop('readonly') == false) {
                var selectCnt = $(this).closest('dl').find('.gift_select_cnt').val();
                var checkedCnt = $(this).closest('dl').find('input[type=checkbox]:checked').length;
                if (checkedCnt > selectCnt) {
                    alert("{사은품은 최대 " + selectCnt + "개만 선택하실 수 있습니다.");
                    $(this).prop('checked', false).next('label').removeClass('on');

                    return false;
                }
                $(this).closest('dd').prev('dt').find('strong').text(checkedCnt);
            }
        });

        // 배송지관리 이벤트
        $(document).on('click', '.btn_open_layer.js_shipping', function(e) {
            var shippingNo = '';
            $('#myShippingListLayer').empty();
            if (typeof $(this).data('no') != 'undefined') {
                shippingNo = $('.btn_open_layer.js_shipping').index(this);
            }

            $.get('../order/layer_shipping_address.jsp?shippingNo=' + shippingNo, function(data){
                $('#myShippingListLayer').append(data);
                $('#myShippingListLayer').find('>div').center();
            });
        });

        // 세금계산서 관련 체크용
        var checkTax = function() {
            if ($('#settleKind_gb').is(':checked') && $('#receiptTax').is(':checked')) {
                return true;
            }
            return false;
        }

        // 무통장입금 체크
        var checkBank = function() {
            if ($('#settleKind_gb').is(':checked') && parseInt($('input[name=settlePrice]').val()) > 0) {
                return true;
            }
            return false;
        }

        // 우편번호 체크를 위한 알파벳+숫자+띄어쓰기 체크
        $.validator.addMethod( "alphanumeric", function( value, element ) {
            return this.optional( element ) || /^[a-zA-Z0-9\s]+$/i.test( value );
        }, __("알파벳과 숫자로만 구성되어야 합니다.") );

        $.validator.addMethod(
            'taxEmailChk', function (value, element) {
                if($('input[name=receiptFl]:checked').val() =='t' && $('input[name=taxEmail]').val() !=  '' && !$.validator.methods.email.call(this, $.trim(value), element)){
                    $.validator.messages.taxEmailChk =  __('[세금계산서] 발행 이메일을 정확하게 입력하여 주세요.');
                    return false;
                }
                return true;
            },'');

        /*
         * 비회원 주문 전체 동의 체크박스 이벤트
         */

        var receiveFl = function () {
            if ($('input[name="deliveryVisit"]').val() == 'n' || $('input[name="deliveryVisit"]').val() == 'a') {
                return true;
            }
            return false;
        }

        var visitFl = function () {
            if ($('input[name="deliveryVisit"]').val() == 'y' || $('input[name="deliveryVisit"]').val() == 'a') {
                return true;
            }
            return false;
        }

        // 폼 체크
        $('#frmOrder').validate({
            onkeyup: onkeyup,
            invalidHandler: function(event, validator) {
                var errors = validator.numberOfInvalids();
                if (validator.errorList[0].element.id == 'termAgree') {
                    $("#termAgreeDiv").attr("tabindex", -1).focus();
                }

                if (errors) {
                    alert(validator.errorList[0].message);
                    validator.errorList[0].element.focus();
                }
            },
            submitHandler: function (form) {

                if ($(".btn_cert").length > 0 && $(".btn_cert").css('display') != "none") {
                    pass = false;
                    alert(__('본인인증을 진행해주세요.'));
                    $(".btn_cert").focus();
                    return false;
                }


            <!--// 2020.12.10 웹앤모바일 새벽배송 검증 -->
                if(!$('input:radio[name="deliveryType"]').is(':checked')){
                    alert(__('배송방법을 선택해주세요.'));
                    return false;
                }
                $deliveryType = $('input:radio[name="deliveryType"]:checked').val();
                if($deliveryType=='morning'){
 
                    if($('#morningSelectDay').val() == ''){
                        alert(__('수령일을 선택해주세요.'));
                        return false;
                    }

                    if(!$('input:radio[name="morning_delivery_arrive"]').is(':checked')){
                        alert(__('받으실 장소를 선택해 주세요.'));
                        return false;
                    }
 
                    $deliveryArrive = $('input:radio[name="morning_delivery_arrive"]:checked').val();

                    if($deliveryArrive == 'door'){

                        $deliveryMethod = $('input:radio[name="morning_delivery_method"]:checked').val();
                        if(typeof $deliveryMethod == 'undefined'){
                            alert(__('공동현관 출입방법을 선택해주세요.'));
                            return false;
                        }else{
                            if($deliveryMethod == 'password'){
                                if(!$('input:radio[name="morning_delivery_method"]').is(':checked')){
                                    alert(__('공동현관 출입방법을 선택해주세요.'));
                                    return false;
                                }
                                if(!$('input:text[name="morning_delivery_pass"]').val()){
                                    if($('input:radio[name="morning_delivery_method"]:checked').val()!='free'){
                                        alert(__('현관비밀번호를 입력해주세요.'));
                                        return false;
                                    }
                                }
                            }else if($deliveryMethod == 'etc'){
                                if(!$('input:text[name="morning_delivery_etc"]').val()){
                                    if($('input:radio[name="morning_delivery_method"]:checked').val()!='free'){
                                        alert(__('기타방법을 입력해주세요.'));
                                        return false;
                                    }
                                }
                            }
                        }
                    }else if($deliveryArrive == 'security_office'){
                        if(!$('input:text[name="security_text"]').val()){
                            alert("경비실 특이사항을 입력해주세요.");
                            return false;
                        }
                    }else if($deliveryArrive == 'courier_box'){
                        if(!$('input:text[name="courier_text"]').val()){
                            alert("택배함 정보를 입력해주세요.");
                            return false;
                        }
                    }else if($deliveryArrive == 'place'){
                        if(!$('input:text[name="etc_text"]').val()){
                            alert("기타 장소 세부사항을 입력해주세요.");
                            return false;
                        }
                    }
                }else if($deliveryType=='parcel'){
					if($('#parcelSelectDay').val() == ''){
                        alert(__('수령일을 선택해주세요.'));
                        return false;
                    }
				}


                var pass = true;
                $('input:checkbox[id*="termAgree_"].require').each(function (idx, item) {
                    var $item = $(item);
                    if (!$item.prop('checked')) {
                        pass = false;
                        alert("청약의사 재확인을 동의해 주셔야 주문을 진행하실 수 있습니다.");
                        return false;
                    }
                });

                if (pass && $('input[name=settleKind]').length == 0 && $('#totalSettlePriceView').html() != '0') {
                    alert(__('선택된 결제 수단이 없습니다.'));
                    return false;
                }

                // 쿠폰 사용기간 체크
                if ($('input[name="totalCouponGoodsDcPrice"]').val() > 0 || $('input[name="totalCouponGoodsMileage"]').val() > 0 || $('input[name="totalCouponOrderDcPrice"]').val() > 0 || $('input[name="totalCouponOrderMileage"]').val() > 0 || $('input[name="totalCouponDeliveryDcPrice"]').val() > 0) {
                    var chkCartSno = [];
                    var couponApplyOrderNo = $('input:hidden[name="couponApplyOrderNo"]').val();
                    $('input[name="cartSno[]"]').each(function(idx){
                        chkCartSno.push($(this).val());
                    });
                    var checkCouponType = false;
                    var totalCouponGoodsDcPrice = 0;
                    var totalCouponGoodsMileage = 0;
                    var totalCouponOrderDcPrice = 0;
                    var totalCouponOrderMileage = 0;
                    var totalCouponDeliveryDcPrice = 0;
                    var orderCouponApplyNoArr = new Array();
                    $.ajax({
                        method: "POST",
                        cache: false,
                        async: false,
                        url: "../order/cart_ps.jsp",
                        data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno, couponApplyOrderNo : couponApplyOrderNo },
                        success: function (data) {
                            checkCouponType = data.isSuccess;
                            // 쿠폰 금액 재정의
                            if (checkCouponType) {
                                // 상품쿠폰
                                if (data.memberCouponSalePrice > 0) {
                                    totalCouponGoodsDcPrice = parseInt($('input[name=totalCouponGoodsDcPrice]').val()) - data.memberCouponSalePrice;
                                }

                                if (data.memberCouponAddMileage > 0) {
                                    totalCouponGoodsMileage = parseInt($('input[name=totalCouponGoodsMileage]').val()) - data.memberCouponAddMileage;
                                }

                                // 주문 및 배송비쿠폰
                                if (data.setCouponApplyOrderNo || data.resetCouponApplyOrderNo) {
                                    $('input:hidden[name="couponApplyOrderNo"]').val(data.setCouponApplyOrderNo);
                                    orderCouponApplyNoArr = data.resetCouponApplyOrderNo.split('||');
                                    $.each(orderCouponApplyNoArr, function (index, val) {
                                        if ($('#check'+val).data('type') == 'sale') {
                                            totalCouponOrderDcPrice = parseInt($('input[name=totalCouponOrderDcPrice]').val()) - parseInt($('#check'+val).data('price'));
                                        } else if ($('#check'+val).data('type') == 'add') {
                                            totalCouponOrderMileage = parseInt($('input[name=totalCouponOrderMileage]').val()) - parseInt($('#check'+val).data('price'));
                                        } else if ($('#check'+val).data('type') == 'delivery') {
                                            totalCouponDeliveryDcPrice = parseInt($('input[name=totalCouponDeliveryDcPrice]').val()) - parseInt($('#check'+val).data('price'));
                                        }
                                    });
                                }
                            }
                        },
                        error: function (e) {
                        }
                    });

                    if(checkCouponType) {
                        // 상품 적용쿠폰
                        if (totalCouponGoodsDcPrice > 0) {
                            $('input[name=totalCouponGoodsDcPrice]').val(totalCouponGoodsDcPrice);
                        }

                        if (totalCouponGoodsMileage > 0) {
                            $('input[name=totalCouponGoodsMileage]').val(totalCouponGoodsMileage);
                        }

                        if (orderCouponApplyNoArr) {
                            // 주문 적용쿠폰
                            if (totalCouponOrderDcPrice >= 0) {
                                $('input[name=totalCouponOrderDcPrice]').val(totalCouponOrderDcPrice);
                                $('input[name=totalCouponOrderPrice]').val(totalCouponOrderDcPrice);
                            }

                            if (totalCouponOrderMileage >= 0) {
                                $('input[name=totalCouponOrderMileage]').val(totalCouponOrderMileage);
                            }

                            // 배송비 적용쿠폰
                            if (totalCouponDeliveryDcPrice >= 0) {
                                $('input[name=totalCouponDeliveryPrice]').val(totalCouponDeliveryDcPrice);
                                $('input[name=totalCouponDeliveryDcPrice]').val(totalCouponDeliveryDcPrice);
                            }
                        }
                        gd_set_recalculation();
                        gd_set_real_settle_price();
                        alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
                    }
                }

                // 20201030
                if ($('#settleKind_gb').is(':checked')) {
                    // console.log($('input[name=\'cashCertNo[c]\']').is(':visible'));
                    if ( $('input[name=\'cashCertNo[c]\']').is(':visible') && !(parseInt($('input[name=\'cashCertNo[c]\']').val()) > 0)) {
                        alert('[현금영수증] 번호를 입력하세요.');
                        return false;
                    }
                }


                if (pass) {
                    //무통장 주문결제시에 버튼 비활성화
                    if($('input[name=settleKind]:checked').val() ==  'gb' || $('#totalSettlePriceView').html() == '0'){
                        $('.order-buy').attr("disabled","disabled");
                        $('.order-buy').css({'cursor': 'default'});
                        $('.order-buy em').html("결제처리중");
                    }
                    form.target = 'ifrmProcess'
                    form.submit();
                }
            },
            rules: {
                orderName: 'required',
                orderCellPhone: 'required',
                orderEmail: {
                    required: true,
                    email: true
                },
                receiverName: {
                    required: receiveFl
                },
                receiverZonecode: {
                    required: receiveFl,
                    number: true,
                },
                receiverAddress: {
                    required: receiveFl
                },
                receiverAddressSub: {
                    required: receiveFl
                },
                receiverCellPhone: {
                    required: receiveFl
                },
                visitName: {
                    required: visitFl
                },
                visitPhone: {
                    required: visitFl
                },
                bankSender: {
                    required: checkBank
                },
                bankAccount: {
                    required: checkBank
                },
                taxBusiNo: {
                    required: checkTax,
                    businessnoKR: checkTax
                },
                taxCompany: {
                    required: checkTax
                },
                taxCeoNm: {
                    required: checkTax
                },
                taxService: {
                    required: checkTax
                },
                taxItem: {
                    required: checkTax
                },
                taxEmail: {
                    taxEmailChk: true
                },
                taxAddress: {
                    required: checkTax
                }
            },
            messages: {
                orderName: {
                    required: "주문하시는 분 정보를 입력해 주세요."
                },
                orderCellPhone: {
                    required: "주문하시는 분 휴대폰 번호 정보를 입력해 주세요."
                },
                orderEmail: {
                    required: "주문하시는 분 이메일 정보를 입력해 주세요.",
                    email: "이메일을 정확하게 입력해주세요."
                },
                receiverName: {
                    required: "받으실 분 정보를 입력해 주세요."
                },
                receiverZonecode: {
                    required: "받으실 곳 우편번호 정보를 입력해 주세요.",
                    number: "숫자만 입력하실 수 있습니다.",
                },
                receiverAddress: {
                    required: "받으실 곳 주소 정보를 입력해 주세요."
                },
                receiverAddressSub: {
                    required: "받으실 곳 주소 정보를 입력해 주세요."
                },
                receiverCellPhone: {
                    required: "받으실 분 휴대폰 번호 정보를 입력해 주세요."
                },
                visitName: {
                    required: "방문자명을 입력해 주세요."
                },
                visitPhone: {
                    required: "방문자연락처를 입력해 주세요."
                },
                bankSender: {
                    required: "입금자명을 입력해주세요."
                },
                bankAccount: {
                    required: "입금은행을 선택해주세요."
                },
                taxBusiNo: {
                    required: "[세금계산서] 사업자번호를 입력하세요."
                },
                taxCompany: {
                    required: "[세금계산서] 회사명을 입력하세요."
                },
                taxCeoNm: {
                    required: "[세금계산서] 대표자명을 입력하세요."
                },
                taxService: {
                    required: "[세금계산서] 업태를 입력하세요."
                },
                taxItem: {
                    required: "[세금계산서] 종목을 입력하세요."
                },
                taxAddress: {
                    required: "[세금계산서] 사업장주소를 입력하세요."
                }
            },
            focusInvalid: {
                receiverName: true,
                receiverZonecode: true,
                receiverAddress: true,
                receiverAddressSub: true,
                receiverCellPhone: true,
            }
        });

        if ($('input[name=settleKind]').length > 0) {
            // 일반결제 > 결제수단 선택 클릭 이벤트
            $('input[name=settleKind]').click(function(e){
                //페이코 결제가 아닐때 처리
                if ($(this).val().substring(0, 1) != 'f') {
                    gd_payment_reset();
                    gd_settlekind_selector($(this).val());
                }
            });
        }

        // 마일리지 체크 이벤트
        gd_mileage_use_check('n', 'n', 'n');
        $('input[name=useMileage]').blur(function(e){
            if (!_.isUndefined(e.isTrigger)) {
                gd_mileage_use_check('y', 'y', 'y');
            }
        });

        // 마일리지 쿠폰 중복사용 체크
        $('input[name=useMileage]').change(function (e) {
            // 마일리지 쿠폰 중복사용 체크
            e.preventDefault();
            gd_choose_mileage_coupon('mileage');
        });

        // 예치금 체크 이벤트
        $('input[name=useDeposit]').blur(function(e){
            if (!_.isUndefined(e.isTrigger)) {
                gd_deposit_use_check();
            }
        });

        // 배송지 선택
        $('input[name=shipping]:radio').click(function(e){

            switch ($(this).prop('id')) {
                // 기본배송지
                case 'shippingBasic':
                    if (!_.isEmpty(defaultShippingAddress)) {
                        gd_set_delivery_shipping_address(defaultShippingAddress);
                    } else {
                        /* 웹앤모바일 수정 21-12-21 - 기본 배송지가 없어도 기본 배송지 선택 가능하도록 alert와 return 주석처리 */
                        // alert("배송지관리 목록이 없습니다.");
                        // return false;
                        /* 웹앤모바일 수정 끝 */
                    }
                    break;

                // 최근 배송지
                case 'shippingRecently':
                    if (!_.isEmpty(recentShippingAddress)) {
                        gd_set_delivery_shipping_address(recentShippingAddress);
                    } else {
                        alert("최근 배송지가 없습니다.");
                        return false;
                    }
                    break;

                // 신규 배송지
                // 주문자정보와 동일
                case 'shippingNew':
                case 'shippingSameCheck':
                    gd_order_info_same();
                    break;
            }
            gd_reflect_apply_delivery($(this).prop('id'));



            // 클릭 시  모두 초기화
            $("#delivery_morning_arrive").hide();
            $("#delivery_morning_save").hide();
            $("#delivery_morning_come").hide();
            $("#courier_text").hide();
            $("#security_text").hide();
            $("#morning_etc_text").hide();
            $("#delivery_info").hide();

            $('input[name=orderMemo]').val('');

            $('#deliveryMorning').attr('checked', false);
            $('#deliveryMorning').parent().children('label').removeClass('on');

            $('#deliveryParcel').attr('checked', false);
            $('#deliveryParcel').parent().children('label').removeClass('on');

            // 출입정보
            $('#door_information_save').attr('checked', false);
            $('#door_information_save').parent().children('label').removeClass('on');
            // 문앞
            $('#morning_delivery_door').attr('checked', false);
            $('#morning_delivery_door').parent().children('label').removeClass('on');
            // 경비실
            $('#morning_delivery_security_office').attr('checked', false);
            $('#morning_delivery_security_office').parent().children('label').removeClass('on');
            // 택배함
            $('#morning_delivery_courier_box').attr('checked', false);
            $('#morning_delivery_courier_box').parent().children('label').removeClass('on');
            // 기타 장소
            $('#morning_delivery_place').attr('checked', false);
            $('#morning_delivery_place').parent().children('label').removeClass('on');
            // 비밀번호
            $('#morning_delivery_method_password').attr('checked', false);
            $('#morning_delivery_method_password').parent().children('label').removeClass('on');
            // 경비실호출
            $('#morning_delivery_method_security_come').attr('checked', false);
            $('#morning_delivery_method_security_come').parent().children('label').removeClass('on');
            // 자유출입
            $('#morning_delivery_method_free').attr('checked', false);
            $('#morning_delivery_method_free').parent().children('label').removeClass('on');
            // 기타방법
            $('#morning_delivery_method_etc').attr('checked', false);
            $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

            // 비밀번호 text
            $('#pass_text').find('input').val('');
            // 기타방법 text
            $('#etc_text').find('input').val('');

            // 경비실 text
            $('input[name=security_text]').val('');

            // 택배함 text
            $('input[name=courier_text]').val('');

            // 기타 장소 text
            $('input[name=etc_text]').val('');

			$('#morningSelectDay').find('option:first').attr('selected', true);
			$('#parcelSelectDay').find('option:first').attr('selected', true);
			$('#delivery_morning_date').hide();
			$('#delivery_parcel_date').hide();

        });

        // 지역별 배송비 체크
        $(document).on('blur', 'input[name^=receiverAddressSub]', function(e){
            gd_get_delivery_area_charge();
        });

        // 해외 배송비 체크
        $('select[name=receiverCountryCode]').change(function(e){
            gd_get_delivery_country_charge();
        });

        // 페이지 로딩시 우선국가 지정으로 인해 배송비 체크
        if ($('select[name=receiverCountryCode]').val()) {
            $('select[name=receiverCountryCode]').trigger('change');
        }

        // 이메일 도메인 대입
        gd_select_email_domain('orderEmail');
        gd_select_email_domain('taxEmail','taxEmailDomain');
        $("#taxEmailDomain_chosen").width("120px");

        // 결제 방법 선택
        if ($('input[name=settleKind]').length > 0) {
            gd_settlekind_toggle();
        }

        var adddHtml = '';
        adddHtml +=  "<strong>결제수단</strong>";
        adddHtml +=  "<ul>";
        adddHtml +=  "<li>신용카드</li>";
        adddHtml +=  "<li>카카오페이</li>";
        adddHtml +=  "</ul>";
        $(adddHtml).appendTo('.icon_pg_cont');

        // 기본배송비 설정에 따른 트리거 처리
        if (!_.isEmpty(defaultShippingAddress)) {
            $('#shippingBasic').prop('checked', true).trigger('click');
            gd_get_delivery_area_charge();
        } else {
            /* 웹앤모바일 수정 21-12-21 - 기본배송지가 선택되어있도록 수정 */
            // 원본 주석처리(백업)
            // $('#shippingNew').prop('checked', true);
            // $('label[for="shippingNew"]').addClass('on');
            $('#shippingBasic').prop('checked', true).trigger('click');
            gd_get_delivery_area_charge();
            /* 웹앤모바일 수정 끝 */
        }





        // 20201028
        arrangeAddGoods();

        gd_set_real_settle_price();
    });


    function arrangeAddGoods() {
        var $addGoodsTr = $('.addGoodsRegularTr');
        $addGoodsTr.each(function(){
            var $tbody = $(this).closest('tbody');
            $tbody.append($(this));
        });
    }

    /**
     * 기본배송지 가져오기
     */
    function getDefaultShippingAddress()
    {
        return defaultShippingAddress;
    }

    /**
     * 기본배송지 설정하기
     */
    function gd_set_default_shipping_address(data)
    {
        defaultShippingAddress = data;
    }

    /**
     * 지역별 배송비 체크 (우편번호 팝업에서 콜백받는 함수)
     */
    function postcode_callback() {
        gd_get_delivery_area_charge();
    }

    /**
     * 주소에 따른 지역별 배송비 가져오기
     */
    function gd_get_delivery_area_charge() {
        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });
        var params = {
            mode: 'check_area_delivery',
            cartSno: cartIdx,
            receiverAddress: $('input[name=receiverAddress]').val(),
            receiverAddressSub: $('input[name=receiverAddressSub]').val(),
            totalCouponOrderDcPrice: $('input:hidden[name="totalCouponOrderDcPrice"]').val(),
        };
        $.post('cart_ps.jsp', params, function(data){
            $('input[name=deliveryAreaCharge]').val(data.areaDelivery);
            gd_set_real_settle_price();

            mileageUse = data.mileageUse;

            gd_mileage_use_check('y', 'n', 'n');
        });
    }

    /**
     * 국가에 따른 해외 배송비 가져오기
     */
    function gd_get_delivery_country_charge()
    {
        // 국제 전화번호 셀렉트
        $('select[name=receiverPhonePrefixCode]').val($('select[name=receiverCountryCode]').val()).trigger('chosen:updated');
        $('select[name=receiverCellPhonePrefixCode]').val($('select[name=receiverCountryCode]').val()).trigger('chosen:updated');

        // 배송비 가져오기
        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });
        var params = {
            mode: 'check_country_delivery',
            countryCode: $('select[name=receiverCountryCode]').val(),
            cartSno: cartIdx,
        };
        $.post('cart_ps.jsp', params, function(data){
            // 배송비 계산
            if (data.error === 1) {
                data.overseasDelivery = 0;
                data.overseasInsuranceFee = 0;
                alert(data.message);
            }

            $('#totalDeliveryCharge').text(gd_money_format(data.overseasDelivery));
            $('#totalDeliveryChargeAdd').text(gd_add_money_format(data.overseasDelivery));
            $('input[name=totalDeliveryCharge]').val(data.overseasDelivery);
            $('input[name=deliveryInsuranceFee]').val(data.overseasInsuranceFee);
            gd_set_real_settle_price();
        });
    }

    /**
     * 주문고객 정보와 배송지 정보 동일 처리
     */
    function gd_order_info_same()
    {
        var orderKey = new Array('orderName', 'orderCountryCode', 'orderZonecode', 'orderZipcode', 'orderState', 'orderCity', 'orderAddress', 'orderAddressSub', 'orderPhonePrefixCode', 'orderPhone', 'orderCellPhonePrefixCode', 'orderCellPhone');
        var receiverKey = new Array('receiverName', 'receiverCountryCode', 'receiverZonecode', 'receiverZipcode', 'receiverState', 'receiverCity', 'receiverAddress', 'receiverAddressSub', 'receiverPhonePrefixCode', 'receiverPhone', 'receiverCellPhonePrefixCode', 'receiverCellPhone');
        var sameCheck = $('#shippingSameCheck:checked').val();

        if (sameCheck == 'on') {
            var standardKey = orderKey;
        } else {
            var standardKey = receiverKey;
        }

        for (var i = 0; i < standardKey.length; i++) {
            var orderObj = $('select[name=\''+orderKey[i]+'\']:eq(0), input[name=\''+orderKey[i]+'\']:eq(0)');
            var receiverObj = $('select[name=\''+receiverKey[i]+'\']:eq(0), input[name=\''+receiverKey[i]+'\']:eq(0)');
            if (sameCheck == 'on') {
                if (_.isUndefined(orderObj.val())) {
                    continue;
                }

                // 값 입력
                receiverObj.val(orderObj.val());

                // 셀렉트박스 동적 업데이트 처리
                if (receiverObj[0].tagName == 'SELECT') {
                    receiverObj.trigger("chosen:updated");
                }

                if (receiverKey[i] == 'receiverZipcode' && orderObj.val() !='') {
                    $('input[name=receiverZipcode]').val(orderObj.val());
                    $('#receiverZipcodeText').html('(' + orderObj.val() + ')');
                    $('#receiverZipcodeText').show();
                } else if (receiverKey[i] == 'receiverZipcode') {
                    $('#receiverZipcodeText').html('');
                    $('#receiverZipcodeText').hide();
                }
            } else {
                if (_.isUndefined(receiverObj.val())) {
                    continue;
                }

                // 값 삭제
                receiverObj.val('');

                // 셀렉트박스 동적 업데이트 처리
                if (receiverObj[0].tagName == 'SELECT') {
                    receiverObj.trigger("chosen:updated");
                }

                if (receiverKey[i] == 'receiverZipcode') {
                    $('#receiverZipcodeText').html('');
                    $('#receiverZipcodeText').hide();
                }
            }
        }

        // 지역별 배송비 실시간 추가
        $('input[name=receiverAddress], input[name=receiverAddressSub]').trigger('blur');
    }

    /**
     * 배송지관리 주소 가져와 입력하기
     *
     * @param data
     */
    function gd_set_delivery_shipping_address(data, shippingNo)
    {
        if (!_.isUndefined(data.shippingName)) {
            var nameTails = '';
            if (shippingNo > 0) {
                nameTails = 'Add[' + shippingNo + ']';
            }

            $('input[name="receiverName' + nameTails + '"]').val(data.shippingName);
            $('input[name="receiverZonecode' + nameTails + '"]').val(data.shippingZonecode);
            $('select[name="receiverCountryCode' + nameTails + '"]').val(data.shippingCountryCode).trigger('chosen:updated');
            $('input[name="receiverCity' + nameTails + '"]').val(data.shippingCity);
            $('input[name="receiverState' + nameTails + '"]').val(data.shippingState);
            $('input[name="receiverAddress' + nameTails + '"]').val(data.shippingAddress);
            $('input[name="receiverAddressSub' + nameTails + '"]').val(data.shippingAddressSub);
            $('input[name="receiverPhonePrefixCode' + nameTails + '"]').val(data.shippingPhonePrefixCode).trigger('chosen:updated');
            $('input[name="receiverPhone' + nameTails + '"]').val(data.shippingPhone);
            $('input[name="receiverCellPhonePrefixCode' + nameTails + '"]').val(data.shippingCellPhonePrefixCode).trigger('chosen:updated');
            $('input[name="receiverCellPhone' + nameTails + '"]').val(data.shippingCellPhone);

            if (data.shippingZipcode !='') {
                $('input[name="receiverZipcode' + nameTails + '"]').val(data.shippingZipcode);
                $('#receiverZipcodeText' + nameTails).html('(' + data.shippingZipcode + ')');
                $('#receiverZipcodeText' + nameTails).show();
            }

            // 지역별 배송비 실시간 추가
            $('input[name="receiverAddress' + nameTails + '"], input[name="receiverAddressSub' + nameTails + '"]').trigger('blur');
        }
    }

    /**
     * 현재 결제 금액 체크
     * 우선순위 : 지역배송비 > 주문쿠폰 > 배송비쿠폰 > 마일리지 > 예치금
     *
     * @param exceptMode 제외할 모드
     */
    function gd_set_real_settle_price(exceptMode, isTax)
    {
        // 상품 금액
        var goodsPrice = parseFloat('98080');
        // 배송비
        var deliveryPrice = parseFloat($('input[name=totalDeliveryCharge]').val());
        // 전체 금액
        var settlePrice = goodsPrice + deliveryPrice;
        // 상품 할인 차감
        var goodsDcPrice = parseFloat('0');
        if (goodsDcPrice > 0) {
            settlePrice = settlePrice - goodsDcPrice;
        }

        // 상품 쿠폰 차감
        var goodsCouponDcPrice = parseFloat($('input[name=totalCouponGoodsDcPrice]').val());
        if (goodsCouponDcPrice > 0) {
            settlePrice = settlePrice - goodsCouponDcPrice;
        }

        // 마이앱 할인 차감
        var myappDcPrice = parseFloat('0');
        if (myappDcPrice > 0) {
            settlePrice = settlePrice - myappDcPrice;
        }

        // 회원 할인 차감
        var totalMemberDcPrice = parseFloat($('input[name=totalMemberDcPrice]').val());
        var totalMemberOverlapDcPrice = parseFloat($('input[name=totalMemberOverlapDcPrice]').val());
        var totalSettlePrice = parseFloat(settlePrice) - totalMemberDcPrice - totalMemberOverlapDcPrice;


        // 실제 결제금액
        var realSettlePrice = totalSettlePrice;

        // 지역별 배송비 합산
        if ($('input[name=deliveryAreaCharge]').val() > 0) {
            var deliveryAreaCharge = parseInt($('input[name=deliveryAreaCharge]').val());
            realSettlePrice += deliveryAreaCharge;
            $('#deliveryAreaCharge').text(numeral(deliveryAreaCharge).format());
            $('#rowDeliverAreaCharge').removeClass('dn');
        } else {
            $('#deliveryAreaCharge').text(numeral(0).format());
            $('#rowDeliverAreaCharge').addClass('dn');
        }

        // 배송비 무료 차감


        // 해외배송 보험료 합산
        if ($('input[name=deliveryInsuranceFee]').val() > 0) {
            var deliveryInsuranceFee = parseInt($('input[name=deliveryInsuranceFee]').val());
            realSettlePrice += deliveryInsuranceFee;
            $('#deliveryInsuranceFee').text(gd_money_format(deliveryInsuranceFee));
            $('#deliveryInsuranceFeeAdd').text(gd_add_money_format(deliveryInsuranceFee));
            $('#rowDeliveryInsuranceFee').removeClass('dn');
        } else {
            $('#deliveryInsuranceFee').text(numeral(0).format());
            $('#rowDeliveryInsuranceFee').addClass('dn');
        }

        if (exceptMode != 'coupon') {
            // 쿠폰기본설정에서 쿠폰만 사용일때 처리
            if ($('input[name="chooseCouponMemberUseType"]').val() == 'coupon' && $('input[name="couponApplyOrderNo"]').val() != '') {
                var memberDcPrice = totalMemberDcPrice + totalMemberOverlapDcPrice;
                if (memberDcPrice > 0) {
                    realSettlePrice += memberDcPrice;
                }
            }

            // 주문쿠폰 적용 금액
            if ($('input[name="totalCouponOrderDcPrice"]').val() > 0) {
                var originOrderPrice = 98080 - totalMemberDcPrice - totalMemberOverlapDcPrice;
                var originOrderPriceWithoutMember = 98080;
                // 쿠폰기본설정에서 쿠폰만 사용일때 처리
                if ($('input[name="chooseCouponMemberUseType"]').val() == 'coupon' && $('input[name="couponApplyOrderNo"]').val() != '') {
                    originOrderPrice = originOrderPriceWithoutMember;
                }

                if (!_.isUndefined(originOrderPrice) && $('input[name="totalCouponOrderPrice"]').val() > originOrderPrice) {
                    var useTotalCouponOrderDcPrice = parseFloat(originOrderPrice);
                } else {
                    var useTotalCouponOrderDcPrice = parseFloat($('input[name="totalCouponOrderPrice"]').val());
                }
                $('input[name="totalCouponOrderDcPrice"]').val(useTotalCouponOrderDcPrice);
                $('#useDisplayCouponDcPrice').text(numeral(useTotalCouponOrderDcPrice).format());
            } else {
                var useTotalCouponOrderDcPrice = 0;
            }

            // 배송비쿠폰 적용 금액
            if ($('input[name="totalCouponDeliveryDcPrice"]').val() > 0) {
                // var originDeliveryCharge = numeral().unformat($('#totalDeliveryCharge').text()) + numeral().unformat($('#deliveryAreaCharge').text());
                var originDeliveryCharge = numeral().unformat($('#totalDeliveryCharge').text()) + numeral().unformat($('#deliveryAreaCharge').text()) + numeral().unformat($('#regularTotalDeliveryCharge').val()); // 20210316
                if (!_.isUndefined($('input[name="deliveryFree"]')) && $('input[name="deliveryFree"]').val() == 'y') {
                    originDeliveryCharge -= numeral().unformat($('#totalDeliveryCharge').text());
                }
                if (!_.isUndefined(originDeliveryCharge) && $('input[name="totalCouponDeliveryPrice"]').val() > originDeliveryCharge) {
                    var useTotalCouponDeliveryDcPrice = parseFloat(originDeliveryCharge);
                } else {
                    var useTotalCouponDeliveryDcPrice = parseFloat($('input[name="totalCouponDeliveryPrice"]').val());
                }
                $('input[name="totalCouponDeliveryDcPrice"]').val(useTotalCouponDeliveryDcPrice);
                $('#useDisplayCouponDelivery').text(numeral(useTotalCouponDeliveryDcPrice).format());
            } else {
                var useTotalCouponDeliveryDcPrice = 0;
            }

            // 실 결제금액
            realSettlePrice -= (useTotalCouponOrderDcPrice + useTotalCouponDeliveryDcPrice);
        }

        if (exceptMode != 'mileage') {
            // 구매자가 작성한 마일리지 금액
            if ($('input[name=\'useMileage\']').val() > 0) {
                var useMileage = parseInt($('input[name=\'useMileage\']').val());
            } else {
                var useMileage = 0;
            }


            realSettlePrice -= useMileage;
        }

        if (exceptMode != 'deposit') {
            // 구매자가 작성한 예치금 금액
            if ($('input[name=\'useDeposit\']').val() > 0) {
                var useDeposit = parseInt($('input[name=\'useDeposit\']').val());
            } else {
                var useDeposit = 0;
            }
            realSettlePrice -= useDeposit;
        }

        // 금액 화면 출력
        if (_.isUndefined(exceptMode)) {
            // 20200831 regular // $('#totalSettlePrice').html(gd_money_format(realSettlePrice));
            $('#totalAddSettlePrice').html(gd_add_money_format(realSettlePrice));
            $('#totalSettlePriceView').html(gd_money_format(realSettlePrice));
            $('#totalSettlePriceLast').html(gd_add_money_format(realSettlePrice)); //regular 20200908
            $('#totalAddSettlePriceView').html(gd_add_money_format(realSettlePrice));
            $('input[name=settlePrice]').val(realSettlePrice);

            // 해외PG 최종승인 금액 및 통화 설정
            var settleKind = $('input[name=settleKind]:checked').val();
            if (!_.isUndefined(settleKind)) {
                if (settleKind.substring(0, 1) == 'o') {
                    var selectedOverseasSettleKind = $('[id=settlekind_overseas_' + settleKind + ']');
                    var overseasSettlePrice = fx.convert($('input[name=settlePrice]').val(), {to: selectedOverseasSettleKind.data('settle-currency')});
                    var overseasDecimal = selectedOverseasSettleKind.data('settle-decimal');
                    var overseasDecimalFormat = selectedOverseasSettleKind.data('settle-format');
                    $('#overseasSettelprice_' + settleKind).html(selectedOverseasSettleKind.data('settle-symbol') + ' ' + numeral(overseasSettlePrice.toRealFixed(overseasDecimal, overseasDecimalFormat)).format('0,' + overseasDecimalFormat));
                    $('input[name=overseasSettlePrice]').val(overseasSettlePrice.toRealFixed(overseasDecimal, overseasDecimalFormat));
                    $('input[name=overseasSettleCurrency]').val(selectedOverseasSettleKind.data('settle-currency'));
                }
            }

            // 금액이 0원이 되는 경우에 대한 처리
            if (realSettlePrice == 0) {
                $('.payment_progress .payment_progress_list').hide();
            } else {
                $('.payment_progress .payment_progress_list').show();
            }
        }

        // 세금계산서 가능여부 노출 (세금정보 조건에 따라 실결제금액이 0원인 경우 세금계산서 발행 불가 처리)
        var taxRealSettlePrice = realSettlePrice;
        var taxMileageFl = 'n',
            taxDepositFl = 'n',
            taxDeliveryFl = 'y';

        if (taxMileageFl == 'y') {
            taxRealSettlePrice += numeral().unformat($('input[name="useMileage"]').val());
        }

        if (taxDepositFl == 'y') {
            taxRealSettlePrice += numeral().unformat($('input[name="useDeposit"]').val());
        }

        if (taxDeliveryFl == 'n') {
            taxRealSettlePrice -= numeral().unformat($('#totalDeliveryCharge').text());
        }

        if (taxRealSettlePrice <= 0) {
            $('#taxReceiptView').hide();
        } else {
            $('#taxReceiptView').show();
        }

        return realSettlePrice;
    }

    function gd_mileage_disable_check(disableValue)
    {
        if(disableValue === 'y'){
            //disable 처리
            $('input[name=\'useMileage\'], #useMileageAll').closest('span').addClass('disabled');
            $('input[name=\'useMileage\'], #useMileageAll').attr('disabled', 'disabled');
        }
        else {
            //disable 해제
            $('input[name=\'useMileage\'], #useMileageAll').closest('span').removeClass('disabled');
            $('input[name=\'useMileage\'], #useMileageAll').attr('disabled', false);
        }
    }

    /**
     * 마일리지 안내문구 출력
     */
    function gd_mileage_info_write(message)
    {
        var prefixMessage = "※ ";
        var addHtml = '<span>';
        for(i=0; i<message.length; i++) {
            addHtml += prefixMessage + message[i] + "<br/>";
        }
        addHtml += '</span>';
        $(".js-mileageInfoArea").html(addHtml);
    }

    /**
     * 마일리지 사용 제한 체크
     */
    function gd_mileage_use_check(setUseOption, setUseCheck, setUseCalculationFl)
    {
        mileageUse.minimumHold = parseInt(mileageUse.minimumHold);
        mileageUse.minimumLimit = parseInt(mileageUse.minimumLimit);
        mileageUse.orderAbleLimit = parseInt(mileageUse.orderAbleLimit);
        mileageUse.orderAbleStandardPrice = parseInt(mileageUse.orderAbleStandardPrice);
        mileageUse.maximumLimit = parseInt(mileageUse.maximumLimit);
        mileageUse.oriMaximumLimit = parseInt(mileageUse.oriMaximumLimit);

        // 회원 보유 마일리지
        var memMileage = parseInt('0.00');

        // 현재 결제 금액
        var realSettlePrice = gd_set_real_settle_price('mileage');
        // 배송비가 제외된 금액 (할인등은 포함되어 있는 상태)
        var goodsPrice = gd_get_goodsSalesPrice(realSettlePrice);

        // 배송비 포함 여부를 통해 비교 결제금액을 정의
        if(mileageUse.useDeliveryFl === 'n'){
            var realSettleDeliveryPrice = goodsPrice;
        }
        else {
            var realSettleDeliveryPrice = realSettlePrice;
        }

        // 실제 사용할 수 있는 최소 마일리지
        var realMinMileage = parseInt(Math.min(mileageUse.minimumLimit, realSettleDeliveryPrice));

        // 실제 사용 할 수 있는 최대 마일리지 ( ex: 배송비를 제외한 상품 함계급액이 2000원, 회원 마일리지 5000원일시 2000원 까지 사용 가능)
        var realMaxMileage = parseInt(Math.min(mileageUse.maximumLimit, realSettleDeliveryPrice, memMileage));

        // 마일리지 사용 불가능한 상태의 input 을 입력방지
        if(mileageUse.usableFl === 'n'){
            gd_mileage_disable_check('y');
        }
        else {
            gd_mileage_disable_check('n');
        }

        // 마일리리 사용 가능, 사용 불가 이유 문구 출력 수정을 위함.
        var gdArrMileageWrite =  new Array();

        // 마일리지 "최소 상품구매금액 제한"에 따른 플래그값
        var fl = 'n';

        // 마일리지 "최소 상품구매금액 제한"에 따른 마일리지 사용 조건 체크
        if(mileageUse.orderAbleLimit > 0){
            // orderAbleStandardPrice : 기본설정의 구매금액 기준 + 사용설정의 할인금액 미포함, 포함 가격이 적용된 기준
            if(mileageUse.orderAbleStandardPrice < mileageUse.orderAbleLimit){
                fl = 'y';
            }
        }

        // *** 1. 보유 마일리지에 대한 제한조건 체크

        // 회원 보유 마일리지 체크
        if(memMileage < 1){
            gd_mileage_disable_check('y');
            return;
        }

        // 마일리지 사용설정 - 최소 보유마일리지 제한
        if(mileageUse.minimumHold > 0){
            // '회원 보유마일리지'가 '최소 보유마일리지 제한' 보다 작을 경우
            if(memMileage < mileageUse.minimumHold){
                if(mileageUse.minimumLimit <= mileageUse.minimumHold){
                    gdArrMileageWrite.push("0원이상 보유해야 사용이 가능합니다.");
                }
                else {
                    // '최소 사용마일리지 제한' > '최소 보유마일리지 제한' > 회원 보유 마일리지
                    gdArrMileageWrite.push("최소 0원이상 사용해야 합니다.");
                }
                if(fl == 'y') {
                    gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                }
                gd_mileage_info_write(gdArrMileageWrite);
                gd_mileage_disable_check('y');
                return;
            }
        }

        // 마일리지 사용설정 - 최소 사용마일리지 제한
        if(mileageUse.minimumLimit > 0){
            // '회원 마일리지' 보다 '최소 사용마일리지 제한' 보다 작을 경우
            if(memMileage < mileageUse.minimumLimit){
                if(mileageUse.minimumHold <= mileageUse.minimumLimit){
                    gdArrMileageWrite.push("최소 0원이상 사용해야 합니다.");
                }
                else {
                    // '최소 보유마일리지 제한' > '최소 사용마일리지 제한' > 회원 보유 마일리지
                    gdArrMileageWrite.push("0원이상 보유해야 사용이 가능합니다.");
                }
                if(fl == 'y') {
                    gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                }
                gd_mileage_info_write(gdArrMileageWrite);
                gd_mileage_disable_check('y');
                return;
            }
        }

        // 마일리지 사용설정 - 최소 사용마일리지 제한
        if(mileageUse.minimumLimit > 0){
            // 결제금액이 '최소 사용마일리지 제한' 보다 작을 경우
            if(realSettleDeliveryPrice < mileageUse.minimumLimit){
                var messageMaxMileage = memMileage;
                if(mileageUse.oriMaximumLimit > 0){
                    if(mileageUse.oriMaximumLimit > realSettleDeliveryPrice){
                        messageMaxMileage = Math.min(mileageUse.oriMaximumLimit, memMileage);
                    }
                }
                gdArrMileageWrite.push(__('%1$s%2$s부터 %3$4$s까지 사용 가능합니다.', [numeral(mileageUse.minimumLimit).format(), '원', numeral(messageMaxMileage).format(), '원']));
                if(fl == 'y') {
                    gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                }
                gd_mileage_info_write(gdArrMileageWrite);
                gd_mileage_disable_check('y');
                return;
            }
        }

        // *** 3. 사용가능 마일리지 범위 정보 노출

        if(realMinMileage > realMaxMileage){
            //최소 사용가능 마일리지가 최대 사용가능 마일리지보다 클때
            gdArrMileageWrite.push("마일리지 사용조건이 충족되지 않아 사용이 불가합니다.");
            gd_mileage_info_write(gdArrMileageWrite);
            gd_mileage_disable_check('y');
            return;
        }
        else if(realMinMileage === realMaxMileage){
            //최소 사용가능 마일리지가 최대 사용가능 마일리지와 같을때
            gdArrMileageWrite.push(__('%1$s%2$s만 사용 가능합니다.', [numeral(realMaxMileage).format(), '원']));
            gd_mileage_disable_check('n');
            if(fl == 'y') {
                gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                gd_mileage_disable_check('y');
            }
            gd_mileage_info_write(gdArrMileageWrite);

        }
        else {
            //최소 사용가능 마일리지가 최대 사용가능 마일리지보다 작을때
            if(realMinMileage < 1){
                gdArrMileageWrite.push(__('%1$s%2$s까지 사용 가능합니다.', [numeral(realMaxMileage).format(), '원']));
            }
            else {
                gdArrMileageWrite.push(__('%1$s%2$s부터 %3$s%4$s까지 사용 가능합니다.', [numeral(realMinMileage).format(), '원', numeral(realMaxMileage).format(), '원']));
            }
            gd_mileage_disable_check('n');
            if(fl == 'y') {
                gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                gd_mileage_disable_check('y');
            }
            gd_mileage_info_write(gdArrMileageWrite);

        }

        // *** 4. 사용가능 마일리지 범위 체크 및 결제금액 계산

        if(setUseOption === 'y'){
            var useMileage = parseInt($('input[name=\'useMileage\']').val());

            if(setUseCheck === 'y'){
                if(useMileage < realMinMileage){
                    gd_mileage_abort(__('%1$s 사용은 최소 %2$s%3$s입니다.', ['적립금', numeral(realMinMileage).format(), '원']), realMinMileage);
                }
                if(useMileage > realMaxMileage){
                    gd_mileage_abort(__('%1$s 사용은 최대 %2$s%3$s입니다.', ['적립금', numeral(realMaxMileage).format(), '원']), realMaxMileage);
                }
            }
            else {
                if(useMileage < realMinMileage){
                    $('input[name=\'useMileage\']').val(realMinMileage);
                }
                else if(useMileage > realMaxMileage){
                    $('input[name=\'useMileage\']').val(realMaxMileage);
                }
                else { }
            }

            if(setUseCalculationFl === 'y'){
                // 결제 금액 계산
                gd_set_recalculation();
                gd_set_real_settle_price();
            }
        }
    }

    /**
     * 마일리지 "최소 상품구매금액 제한" 문구 반복 출력을 위함.
     */
    function gd_mileage_goods_total_check_message()
    {
        return ("상품 합계 금액이 0원 이상인 경우에만 사용 가능합니다.");
    }

    /**
     * 마일리지를 잘못 입력한 경우 처리
     */
    function gd_mileage_abort(message, useMileage)
    {
        // 경고출력
        if (!_.isUndefined(message) && message !== null) {
            alert(message);
        }

        // 값 대입
        if (_.isUndefined(useMileage)) {
            $('input[name=\'useMileage\']').val('');
        } else {
            $('input[name=\'useMileage\']').val(useMileage);
        }
    }

    /**
     * 마일리지 전액 사용하기
     */
    function gd_mileage_use_all()
    {
        // 마일리지 쿠폰 중복사용 체크
        var checkMileageCoupon = gd_choose_mileage_coupon('mileage');
        if (!checkMileageCoupon) {
            return false;
        }
        var allCheck = $('#useMileageAll:checked').val();

        // 현재 결제 금액
        var realSettlePrice = gd_set_real_settle_price('mileage');
        if(mileageUse.useDeliveryFl === 'n'){
            // 마일리지 사용의 배송비 제외 설정에 따른 배송비 체크
            realSettlePrice = gd_get_goodsSalesPrice(realSettlePrice);
        }

        var memberMileage = parseInt("0.00");
        var checkMileage = Math.min(mileageUse.maximumLimit, realSettlePrice, memberMileage);

        if (allCheck == 'on') {
            $('input[name=\'useMileage\']').val(checkMileage);

            gd_mileage_use_check('y', 'y', 'y');
        }
        else {
            $('input[name=\'useMileage\']').val('');

            gd_set_recalculation();
            gd_set_real_settle_price();
        }
    }

    /**
     * 예치금 사용 제한 체크
     */
    function gd_deposit_use_check()
    {
        // 예치금 작성한 금액이 있는지 체크
        if ($('input[name=\'useDeposit\']').val() < 0) {
            return;
        }

        // 현재 결제 금액
        var realSettlePrice = gd_set_real_settle_price('deposit');
        var memberDeposit = parseInt(0.00);
        var ownDeposit = parseInt(0.00);
        var checkDeposit = memberDeposit;

        if (realSettlePrice < memberDeposit) {
            checkDeposit = realSettlePrice;
        }
        if (realSettlePrice > ownDeposit) {
            checkDeposit = ownDeposit;
        }

        // 구매자가 작성한 예치금 금액
        var useDeposit = parseInt($('input[name=\'useDeposit\']').val());

        // 예치금 사용 제한 체크
        if (useDeposit > checkDeposit) {
            $('input[name=\'useDeposit\']').val(checkDeposit);
        }

        // 결제 금액 계산
        gd_set_real_settle_price();
    }

    /**
     * 예치금 전액 사용하기
     */
    function deposit_use_all()
    {
        // 현재 결제 금액
        var realSettlePrice = gd_set_real_settle_price('deposit');
        var allCheck = $('#useDepositAll:checked').val();
        var memberDeposit = parseInt(0.00);
        var checkDeposit = memberDeposit;

        if (realSettlePrice < memberDeposit) {
            checkDeposit = realSettlePrice;
        }

        if (allCheck == 'on') {
            $('input[name=\'useDeposit\']').val(checkDeposit);
        } else {
            $('input[name=\'useDeposit\']').val('');
        }

        // 결제 금액 계산
        gd_set_real_settle_price();
    }

    /**
     * 결제 방법에 따른 결제 수단
     */
    function gd_settlekind_toggle()
    {
        // 초기 결제수단 처리
        /* 웹앤모바일 결제수단UI 튜닝 21-12-21 - 기존 페이코 간편결제 관련 처리 삭제 */
        // ? isset(settle.payco)
        // var settleKind = $('#settlekind_payco').find('input').first().val();
        // gd_payco_toggle(settleKind);
        // :
        /* 웹앤모바일 튜닝 끝 */
        var settleKind = $('#settlekind_general').find('input').first().val();
        $('#settlekind_general').find('input').first().prop('checked', true);
        $('label[for=settleKind_' + settleKind + ']').addClass('on')
        // / /* 웹앤모바일 결제수단UI 튜닝 21-12-21 - 기존 페이코 간편결제 관련 처리 삭제 */

        // 결제수단 선택
        gd_settlekind_selector(settleKind);
    }

    /**
     * 결제 수단을 초기화
     */
    function gd_payment_reset()
    {
        // 주문 채널을 기본 shop 으로 처리
        $('[name="orderChannelFl"]').val('shop');

    }

    /**
     * PAYCO 결제 클릭시
     */
    function gd_payco_toggle(settleKind)
    {
        // 초기화
        gd_payment_reset()

        // 주문 채널
        $('[name="orderChannelFl"]').val('payco');

        // 해당 주문 체크
        $('#settleKind_payco_' + settleKind).prop('checked', true).next('label').addClass('on');

        // 다른 주문 체크 해제
        $('label[for*=settleKind_][class="choice_s on"]').each(function(i, val) {
            $(this).removeClass('on');
        });


        // 결제방법 체크
        gd_settlekind_selector(settleKind);
    }

    /**
     * 결제수단 선택
     *
     * @param settleKind
     * @returns 
     */
    function gd_settlekind_selector(settleKind)
    {
        // 결제수단 값이 없는 경우 반드시 해당 settleKind를 radio 버튼에 checked 표기 해줘야 한다.
        // 만약 이부분 누락되면 결제수단 카드로 열리는 경우가 발생
        if (_.isUndefined(settleKind)) {
            settleKind = $('label[for*=settleKind_][class="choice_s on"]').prev('input[type=radio]').val();
            $('label[for*=settleKind_][class="choice_s on"]').prev('input[type=radio]').prop('checked', true);
        }

        // 결제수단 선택에 따른 입력 폼 전환
        $('[id*="settlekind_general_"]').hide();
        $('[id*="settlekind_overseas_"]').hide();

        if ($('[name="orderChannelFl"]').val() == 'shop') {
            // 일반 PG 안내 / 설정
            $('[id=settlekind_general_' + settleKind + ']').show();

            // 해외PG 최종승인 금액 및 통화 설정 (국가 변경시 배송비 실시간 적용 처리)
            if (settleKind.substring(0, 1) == 'o') {
                // 해외 PG 안내 / 설정
                $('[id=settlekind_overseas_' + settleKind + ']').show();
                gd_set_real_settle_price();
            }
        }

        // 영수증 선택 리셋
        gd_receipt_reset();

        // 영수증 선택
        gd_receipt_selector();
    }

    /**
     * 영수증 선택 리셋
     * - 우선 처리 모드에 따라서 영수증 종류 기본 선택 처리
     */
    function gd_receipt_reset()
    {
        // 선택된 결제 방법
        var strSettleKind = $('input[name=settleKind]:checked').val();

        // 현금영수증 (소득공제/지출증빙) 보이지 않도록 강제 처리
        $('input[name="receiptFl"]').prop('checked', false).next('label').removeClass('on');

        // 영수증 신청 안함 보이게 처리
        $('#nonReceiptView').show();

        // 사용 안함을 기본 체크 처리
        if (strSettleKind.substring(0, 1) != 'g' || 'r' == 'n'){
        $('#receiptNon').eq(0).prop('checked', true).next('label').addClass('on');
    }

        // 결제 방법의 코드가 일반 인 경우
        if (strSettleKind.substring(0, 1) == 'g') {
            // 영수증 신청 안함 안보이게 처리
            $('#nonReceiptView').hide();

            // 현금영수증을 기본 체크 처리
            $('#receiptCash').eq(0).prop('checked', true).next('label').addClass('on');
        }

    }

    /**
     * 영수증 선택
     *
     * @param string mode 모드에 따른 처리 (null : 일반 처리, zero : 전액결제 처리)
     */
    function gd_receipt_selector(mode)
    {
        var useReceiptCode = {"0":"gb","5":"gz"};
        var useCashReceiptCode = 'gb';
        var strSettleKind = $('input[name=settleKind]:checked').val();

        $('#receiptSelect').hide();
        if (typeof strSettleKind != 'undefined') {
            $.each(useReceiptCode, function(i, val) {
                if (strSettleKind == val) {
                    $('#receiptSelect').show();
                    return false;
                }
            });
        }

        // 전액 결제인 경우 영수증 항목 보이기
        if (mode == 'zero') {
            $('#receiptSelect').show();
        }

        // 영수증 관련 선택
        gd_receipt_display();

        // 현금 영수증 설정 (무통장입금인 경우에만 출력, 계좌이체와 가상계좌는 PG사 창에서 처리)
        if (strSettleKind == useCashReceiptCode) {
            $('#cashReceiptView').show();
            $('.cash_receipt_non').show();
            $('.cash_receipt_pg').hide();
        } else {
            $('#cashReceiptView').hide();
            $('.cash_receipt_non').hide();
            $('.cash_receipt_pg').show();
        }

        // 전액 결제인 경우 영수증 항목 보이기
        if(mode == 'zero') {
            $('#cashReceiptView').hide();
            $('.cash_receipt_non').show();
            $('.cash_receipt_pg').hide();
        }

    }

    /**
     * 영수증 관련 선택
     *
     * @param string clearChecker 해제 관련
     */
    function gd_receipt_display()
    {
        var useCode = {
            t: 'tax_info',
            r: 'cash_receipt_info'
        };
        var checkedBox = $('input[name=receiptFl]:checked');
        var target = eval('useCode.' + checkedBox.val());

        $('.js_receipt').addClass('dn');
        $('#' + target).removeClass('dn');

        if (checkedBox.val() == 'r') {
            gd_cash_receipt_toggle();
        }

    }

    /**
     * 현금영수증 인증방법 선택
     * (소득공제용 - 휴대폰 번호(c), 지출증빙용 - 사업자번호(b))
     */
    function gd_cash_receipt_toggle()
    {
        var certCode = $('input[name=\'cashUseFl\']:checked').val();
        $('label[for=cashCert_' + certCode + ']').addClass('on');

        if (certCode == 'd') {
            $('input[name=\'cashCertFl\']').val('c');
            $('#certNoHp').show();
            $('#certNoBno').hide();
        } else {
            $('input[name=\'cashCertFl\']').val('b');
            $('#certNoHp').hide();
            $('#certNoBno').show();
        }
    }

    /**
     * 주문시 Exception 발생하는 경우 결제버튼 복원
     */
    function callback_not_ordable()
    {
        $('.order-buy').prop("disabled", false);
        $('.order-buy em').html("결제하기");
    }

    /**
     * validator onkeyup 함수
     * @param element
     * @param event
     * @returns 
     */
    function onkeyup(element, event) {
        if (check_key_code2(event)) {
            return true;
        }
        if ($.isFunction(replace_keyup[$(element).data('pattern')])) {
            replace_keyup[$(element).data('pattern')](element);
        }
    }

    var regexp_test = function (string, pattern) {
        if (string === undefined || string.length < 1) {
            return false;
        }
        return pattern.test(string);
    };

    var replace_pattern = function (string, pattern, c) {
        if (string === undefined || string.length < 1) {
            return '';
        }
        return string.replace(pattern, c);
    };

    var replace_keyup = {
        gdEngNum: function (element) {
            element.value = replace_pattern(element.value, /[^\da-zA-Z]/g, '');
        },
        gdEngKor: function (element) {
            // IE11에서 초중종성 분리되는 현상때문에 test 후 replace 처리로 변경
            if (regexp_test(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/)) {
                element.value = replace_pattern(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/g, '');
            }
        },
        gdEngKorNum: function (element) {
            // IE11에서 초중종성 분리되는 현상때문에 test 후 replace 처리로 변경
            if (regexp_test(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣0-9\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/)) {
                element.value = replace_pattern(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣0-9\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/g, '');
            }

        },
        gdNum: function (element) {
            element.value = replace_pattern(element.value, /[^\d]/g, '');
        },
        gdEng: function (element) {
            element.value = replace_pattern(element.value, /[^a-zA-Z]/g, '');
        },
        gdKor: function (element) {
            if (regexp_test(element.value, /[^가-힣ㄱ-ㅎㅏ-ㅣ\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/)) {
                element.value = replace_pattern(element.value, /[^가-힣ㄱ-ㅎㅏ-ㅣ\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/g, '');
            }
        },
        gdMemberId: function (element) {
            element.value = replace_pattern(element.value, /[^\da-zA-Z\.\-_@]/g, '');
        },
        gdMemberNmGlobal: function (element) {
            // IE11에서 초중종성 분리되는 현상때문에 test 후 replace 처리로 변경
            if (regexp_test(element.value, /[\/\'\"\\\|]/)) {
                element.value = replace_pattern(element.value, /[\/\'\"\\\|]/g, '');
            }
        }
    };

    /**
     * jquery validation의 키 체크 함수
     * @param event
     * @returns 
     */
    function check_key_code2(event) {
        // Avoid revalidate the field when pressing one of the following keys
        /* Shift       => 16 Ctrl        => 17 Alt         => 18
         Caps lock   => 20 End         => 35 Home        => 36
         Left arrow  => 37 Up arrow    => 38 Right arrow => 39
         Down arrow  => 40 Insert      => 45 Num lock    => 144 AltGr key   => 225*/
        var excludedKeys = [
            16, 17, 18, 20, 35, 36, 37,
            38, 39, 40, 45, 144, 225
        ];

        return event.which === 9 || $.inArray(event.keyCode, excludedKeys) !== -1;
    }

    function gd_reflect_apply_delivery(mode) {
        switch (mode) {
            case 'shippingBasic':
                // 웹앤모바일 수정 21-12-21 - 기본 배송지 선택 시 회원정보 반영 > 나의 배송지에 추가합니다 가 숨겨지는 것 주석처리
                // $('input[name="reflectApplyDelivery"]').prop('checked', false).closest('div').hide();
                break;
            default:
                $('input[name="reflectApplyDelivery"]').closest('div').show();
                break;
        }

        gd_display_memberinfo_apply();
    }

    /**
     * 마일리지 쿠폰 중복사용 체크
     */
    function gd_choose_mileage_coupon(type) {
        if (type == undefined) {
            return false;
        }

        // 마일리지 쿠폰 중복사용 체크
        if ($('input[name=chooseMileageCoupon]').length > 0) {
            if ($('input[name=chooseMileageCoupon]').val() == 'y') {
                if (type == 'mileage') {
                    // 마일리지 입력시 체크
                    if ($('input[name=totalCouponGoodsDcPrice]').length > 0 && $('input[name=totalCouponGoodsMileage]').length > 0) {
                        var totalCouponGoodsDcPrice = $('input[name=totalCouponGoodsDcPrice]').val();
                        var totalCouponGoodsMileage = $('input[name=totalCouponGoodsMileage]').val();

                        if (totalCouponGoodsDcPrice > 0 || totalCouponGoodsMileage > 0 || ($('input[name=couponApplyOrderNo]').val() != '' && $('input[name=couponApplyOrderNo]').length > 0)) {
                            alert('마일리지와 쿠폰은 동시에 사용하실 수 없습니다.');
                            $('input[name=useMileage]').val('');
                            $("#useMileageAll").attr('checked', false);
                            $('label[for=useMileageAll]').removeClass('on');
                            return false;
                        }
                    }
                } else {
                    // 쿠폰사용 클릭시 체크
                    if ($('input[name=useMileage]').val() != '' && $('input[name=useMileage]').val() != 0) {
                        alert('마일리지와 쿠폰은 동시에 사용하실 수 없습니다.');
                        return false;
                    }
                }
            }
        }

        return true;
    }

    // 주문서 변경에 따른 상품 금액 정보 변경 처리
    function gd_set_recalculation()
    {
        // console.log('gd_set_recalculation ');
        // console.log('gd_set_recalculation ' + parseInt($('input[name="useMileage"]').val()));
        // 20200914 [[
        if (isNaN(parseInt($('input[name="useMileage"]').val()))) {
            $("#useMileageAll").attr('checked', false);
            $('label[for=useMileageAll]').removeClass('on');
        } else {
        }
        // 20200914 ]]

        // 마일리지 사용시 / 주문쿠폰 적용시 재계산
        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });
        $.ajax({
            method: "POST",
            data: {
                'mode': 'set_recalculation',
                'cartIdx': cartIdx,
                'totalCouponOrderDcPrice': $('input:hidden[name="totalCouponOrderDcPrice"]').val(),
                'deliveryFree': $('input:hidden[name="deliveryFree"]').val(),
                'useMileage': $('input[name="useMileage"]').val(),
                'totalDeliveryCharge' : $('input[name=totalDeliveryCharge]').val(),
                'deliveryAreaCharge' : $('input[name=deliveryAreaCharge]').val(),
            },
            cache: false,
            async: false,
            url: "../order/order_ps.jsp",
            success: function (data) {
                if (data) {
                    var totalGoodsDcPrice = data.totalGoodsDcPrice;
                    var totalSumMemberDcPrice = data.totalMemberDcPrice + data.totalMemberOverlapDcPrice;
                    var totalCouponGoodsDcPrice = data.totalCouponGoodsDcPrice;
                    var totalMemberMileage = data.totalMemberMileage;
                    var totalGoodsMileage = data.totalGoodsMileage;
                    var totalMileage = data.totalMileage;
                    var totalMyappDcPrice = data.totalMyappDcPrice;

                    var totalMemberDcPrice = totalGoodsDcPrice + totalSumMemberDcPrice + totalCouponGoodsDcPrice + totalMyappDcPrice;

                    $('input[name=totalMemberDcPrice]').val(data.totalMemberDcPrice);
                    $('input[name=totalMemberOverlapDcPrice]').val(data.totalMemberOverlapDcPrice);
                    $('input[name=totalMemberMileage]').val(data.totalMemberMileage);
                    $('input[name=totalCouponGoodsDcPrice]').val(totalCouponGoodsDcPrice);


                    $('.total-member-dc-price').html(numeral(totalMemberDcPrice).format());
                    $('.member-dc-price').html(numeral(totalSumMemberDcPrice).format());
                    $('.total-member-mileage').html(numeral(totalMileage).format());
                    $('.goods-mileage').html(numeral(totalGoodsMileage).format());
                    $('.member-mileage').html(numeral(totalMemberMileage).format());

                    var totalDeliveryCharge = data.totalDeliveryCharge;
                    // console.log('gd_set_recalculation totalDeliveryCharge ' + totalDeliveryCharge);
                    $('.goods-coupon-dc-price').html(numeral(data.totalCouponGoodsDcPrice).format());
                    $('.goods-coupon-add-mileage').html(numeral(data.totalCouponGoodsMileage).format());

                    $('.goods-coupon-dc-price-without-member').html(numeral(data.totalCouponGoodsDcPrice).format());
                    $('.goods-coupon-add-mileage-without-member').html(numeral(data.totalCouponGoodsMileage).format());
                    $('.total-member-dc-price-without-member').html(numeral(data.totalGoodsDcPrice + data.totalCouponGoodsDcPrice + data.totalMyappDcPrice).format());
                    $('.total-member-mileage-without-member').html(numeral(totalMileage).format());

                    $('input[name=totalDeliveryCharge]').val(totalDeliveryCharge);
                    // 20201102 // $('#totalDeliveryCharge').html(numeral(parseInt(totalDeliveryCharge)).format()); // 20201102

                    mileageUse = data.mileageUse;
                }
            }
        });
    }

    /**
     * 결제금액에서 상품금액만 구하기 (배송비 제외)
     * @param realSettlePrice
     * @returns {number|*}
     */
    function gd_get_goodsSalesPrice(realSettlePrice)
    {
        var deliveryFreePrice = parseInt($('input[name="totalDeliveryFreePrice"]').val());
        var deliveryPrice = 0;
        if (deliveryFreePrice > 0) {
            var deliveryAreaPrice = parseInt($('input[name="deliveryAreaCharge"]').val());
            var deliveryDcPrice = parseInt($('input[name="totalCouponDeliveryDcPrice"]').val());
            if (deliveryAreaPrice > 0) {
                deliveryPrice = deliveryPrice + deliveryAreaPrice;
            }
            if (deliveryDcPrice > 0) {
                deliveryPrice = deliveryPrice - deliveryDcPrice;
            }
        } else {
            var deliveryBasicPrice = parseInt($('input[name="totalDeliveryCharge"]').val());
            var deliveryAreaPrice = parseInt($('input[name="deliveryAreaCharge"]').val());
            var deliveryDcPrice = parseInt($('input[name="totalCouponDeliveryDcPrice"]').val());
            if (deliveryBasicPrice > 0) {
                deliveryPrice = deliveryPrice + deliveryBasicPrice;
            }
            if (deliveryAreaPrice > 0) {
                deliveryPrice = deliveryPrice + deliveryAreaPrice;
            }
            if (deliveryDcPrice > 0) {
                deliveryPrice = deliveryPrice - deliveryDcPrice;
            }
        }

        realSettlePrice = realSettlePrice - deliveryPrice;

        return realSettlePrice;
    }

    /**
     * 결제 페이지 호출 확인 후 결제
     */
    function pgSettleStartAfterCheck() {
        if (typeof pgSettleStart === 'function') {
            pgSettleStart();
        } else {
            console.log('pgSettle fail');
            return false;
        }
    }


    function gd_display_memberinfo_apply() {
        if ($('#memberinfoApplyTr1').css('display') == 'none' && $('#memberinfoApplyTr2').css('display') == 'none') {
            $('#memberinfoApplyTr').css('display', 'none');
        } else {
            $('#memberinfoApplyTr').css('display', '');
        }
    }


    var resetMileage = function() {
        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });
        var param = {
            mode: 'set_mileage',
            cartSno: cartIdx,
            totalDeliveryCharge : $('input[name=totalDeliveryCharge]').val(),
            deliveryAreaCharge : $('input[name=deliveryAreaCharge]').val(),
            totalCouponOrderDcPrice: $('input:hidden[name="totalCouponOrderDcPrice"]').val(),
        };
        $.post('cart_ps.jsp', param, function(data){
            mileageUse = data.mileageUse;

            gd_mileage_use_check('n', 'n', 'n');
        });
    }

    function set_delivery_visit() {
        var deliveryVisitFl = false;
        var deliveryVisit = 'n';
        var visitAddressUseFl;
        var $infoArea = $('.shipping_info_table');
        $.each($("tr.order-goods-layout"), function () {
            if ($(this).find('.delivery-method-fl').val() == 'visit' && $(this).find('.visit-address-use-fl').val() == 'y') {
                deliveryVisitFl = true;
                if (visitAddressUseFl !== false) {
                    visitAddressUseFl = true;
                } else {
                    visitAddressUseFl = false;
                }
            } else {
                visitAddressUseFl = false;
            }
        });

        if (deliveryVisitFl === true) {
            var deliveryMethodVisitArea = '';
            var defaultDeliveryMethodVisitArea = '';
            var deliveryMethodVisitCnt = 0;
            $.each($('.delivery-method-fl'), function(key, target){
                if ($(target).val() == 'visit') {
                    if (!deliveryMethodVisitArea && $.trim($('.delivery-method-visit-area').eq(key).val())) {
                        deliveryMethodVisitArea = defaultDeliveryMethodVisitArea = $('.delivery-method-visit-area').eq(key).val();
                    } else {
                        deliveryMethodVisitCnt++;
                    }
                }
            });
            if (deliveryMethodVisitCnt > 0) {
                deliveryMethodVisitArea = deliveryMethodVisitArea + ' 외 ' + deliveryMethodVisitCnt + '건';
            }

            if (visitAddressUseFl === true) {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').addClass('dn');
                deliveryVisit = 'y';
            } else {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').removeClass('dn');
                deliveryVisit = 'a';
            }
            $infoArea.find('tr.orderVisitTr, tr.orderVisitTr tr').removeClass('dn');

            $('.delivery-method-visit-area-txt:eq(0)').html(deliveryMethodVisitArea);
            $('input[name="visitAddress"]').val(defaultDeliveryMethodVisitArea);
            $('input[name="visitName"]').val($('input[name="orderName"]').val());
            $('input[name="visitPhone"]').val($('input[name="orderCellPhone"]').val());
        } else {
            $infoArea.find('tr.orderVisitTr').addClass('dn');
            $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').removeClass('dn');
            deliveryVisit = 'n';
        }

        $('input[name="deliveryVisit"]').val(deliveryVisit);


        return deliveryVisit;
    }
    set_delivery_visit();

    function set_shipping_delivery_visit(shippingNo) {
        var deliveryVisitFl = false;
        var deliveryVisit = 'n';
        var visitAddressUseFl;
        var $infoArea = $('.shipping_info_table:eq(' + shippingNo + ')');
        if ($('input[name="selectGoods[' + shippingNo + ']"]').val()) {
            var data = $.parseJSON($('input[name="selectGoods[' + shippingNo + ']"]').val());

            for (var i in data) {
                if (data[i]['goodsCnt'] > 0) {
                    if (data[i]['deliveryMethodFl'] == 'visit' && data[i]['visitAddressUseFl'] == 'y') {
                        deliveryVisitFl = true;
                        if (visitAddressUseFl !== false) {
                            visitAddressUseFl = true;
                        } else {
                            visitAddressUseFl = false;
                        }
                    } else {
                        visitAddressUseFl = false;
                    }
                }
            }
        } else {
            $.each($("tr.order-goods-layout"), function () {
                if ($(this).find('.delivery-method-fl').val() == 'visit') {
                    deliveryVisitFl = true;
                    if (visitAddressUseFl !== false && $(this).find('.visit-address-use-fl').val() == 'y') {
                        visitAddressUseFl = true;
                    } else {
                        visitAddressUseFl = false;
                    }
                } else {
                    visitAddressUseFl = false;
                }
            });
        }

        if (deliveryVisitFl === true) {
            var deliveryMethodVisitArea = '';
            var defaultDeliveryMethodVisitArea = '';
            var deliveryMethodVisitCnt = 0;
            for (var i in data) {
                if (data[i]['goodsCnt'] > 0 && data[i]['deliveryMethodFl'] == 'visit') {
                    if (!deliveryMethodVisitArea && $.trim(data[i]['deliveryMethodVisitArea'])) {
                        deliveryMethodVisitArea = defaultDeliveryMethodVisitArea = data[i]['deliveryMethodVisitArea'];
                    } else {
                        deliveryMethodVisitCnt++;
                    }
                }
            }
            if (deliveryMethodVisitCnt > 0) {
                deliveryMethodVisitArea += ' 외 ' + deliveryMethodVisitCnt + '건';
            }

            if (visitAddressUseFl === true) {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr, .add-select-goods-tr)').addClass('dn');
                deliveryVisit = 'y';
            } else {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr, .add-select-goods-tr)').removeClass('dn');
                deliveryVisit = 'a';
            }
            $infoArea.find('tr.orderVisitTr, tr.orderVisitTr tr').removeClass('dn');

            $infoArea.find('.delivery-method-visit-area-txt').html(deliveryMethodVisitArea);
            $infoArea.find('input[name^="visitAddress"]').val(defaultDeliveryMethodVisitArea);
        } else {
            $infoArea.find('tr.orderVisitTr').addClass('dn');
            $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').removeClass('dn');
            deliveryVisit = 'n';
        }

        if (shippingNo == 0) {
            $('input[name="deliveryVisit"]').val(deliveryVisit);
            $('input[name="visitName"]').val($('input[name="orderName"]').val());
            $('input[name="visitPhone"]').val($('input[name="orderCellPhone"]').val());
        }
        $infoArea.find('.shipping-delivery-visit').val(deliveryVisit);

        return deliveryVisit;
    }

    function set_shipping_btn(shippingNo, deliveryVisit) {

        switch (deliveryVisit) {
            case 'y':
                if (shippingNo == 0) {
                    $('.shipping-add-btn').addClass('dn');
                    $('.shipping-visit-add-btn').removeClass('dn');
                } else {
                    $('.shipping-remove-btn:eq(' + (shippingNo - 1) + ')').addClass('dn');
                    $('.shipping-visit-remove-btn:eq(' + (shippingNo - 1) + ')').removeClass('dn');
                }
                break;
            case 'a':
            case 'n':
                if (shippingNo == 0) {
                    $('.shipping-add-btn').removeClass('dn');
                    $('.shipping-visit-add-btn').addClass('dn');
                } else {
                    $('.shipping-remove-btn:eq(' + (shippingNo - 1) + ')').removeClass('dn');
                    $('.shipping-visit-remove-btn:eq(' + (shippingNo - 1) + ')').addClass('dn');
                }
                break;
        }
    }

    // 14세 이상 동의 설정 사용 시 휴대폰 본인인증 호출
    function authCellPhone() {
        $(".pop_cert_ly").hide();
        $('#layerDim').addClass('dn');

        var protocol = location.protocol;
        var callbackUrl = "https://pocketsalad.co.kr:443/member/authcellphone/dreamsecurity_result.jsp";
        window.open(protocol + "//hpauthdream.godo.co.kr/module/Mobile_hpauthDream_Main.jsp?callType=certGuest&returnUrl=%2Forder%2Forder.jsp&shopUrl=" + callbackUrl + "&cpid=", "auth_popup", "top=30, left=50, status=0, width=425, height=650");
    }

    // 14세 이상 동의 설정 사용 시 아이핀 본인인증 호출
    function authCellIpin() {
        $(".pop_cert_ly").hide();
        $('#layerDim').addClass('dn');

        var popupWindow = window.open("/member/ipin/ipin_main.jsp?callType=certGuest&returnUrl=%2Forder%2Forder.jsp", "popupCertKey", "top=100, left=200, status=0, width=417, height=490");
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

<!-- 웹앤모바일 튜닝 - 2020-12-07, 샛별배송 -->
<script>
    var showMorningDeliveryPopup = false;
    setTimeout(function() {
        showMorningDeliveryPopup = true;
    }, 2000);
    $(function() {

        // 비밀번호, 경비실 호출, 자유출입, 기타방법 클릭시 css 수정
        $('#morning_delivery_method_password').click(function(){
            $('#pass_text').show();
            $('#etc_text').hide();
        });
        $('#morning_delivery_method_security_come , #morning_delivery_method_free').click(function(){
            $('#pass_text').hide();
            $('#etc_text').hide();
        });
        $('#morning_delivery_method_etc').click(function(){
            $('#pass_text').hide();
            $('#etc_text').show();
        });

        // 경비실 클릭시 특이사항 노출
        $('#morning_delivery_security_office').click(function(){
            $('#security_text').show();
        });

        $('#morning_delivery_door , #morning_delivery_courier_box , #morning_delivery_place').click(function(){
            $('#security_text').hide();
        });

        // 문앞 클릭 시 공동현관 출입방법 노출
        $('#morning_delivery_door').click(function(){
            $('#delivery_morning_come').show();
        });

        $('#morning_delivery_security_office, #morning_delivery_courier_box, #morning_delivery_place').click(function(){
            $('#delivery_morning_come').hide();
        });

        // 택배함 클릭 시 택배함 정보 노출
        $('#morning_delivery_courier_box').click(function(){
            $('#courier_text').show();
        });

        $('#morning_delivery_door, #morning_delivery_security_office, #morning_delivery_place').click(function(){
            $('#courier_text').hide();
        });

        // 기타 장소 클릭 시 세부사항 노출
        $('#morning_delivery_place').click(function(){
            $('#morning_etc_text').show();
        });

        $('#morning_delivery_door, #morning_delivery_security_office, #morning_delivery_courier_box').click(function(){
            $('#morning_etc_text').hide();
        });

        // 장소 변경시 이전 값 초기화
        $('input[name=morning_delivery_arrive]').change(function(){
            var selected = $(this).val();
            if(selected == 'door'){
                $('input[name=security_text]').val('');
                $('input[name=courier_text]').val('');
                $('input[name=etc_text]').val('');
            }else if(selected == 'security_office'){
                $('input[name=morning_delivery_method]').each(function(){
                    $(this).attr('checked', false);
                    $(this).parent().children('label').removeClass('on');
                    $('input[name=morning_delivery_pass]').val('');
                    $('input[name=morning_delivery_etc]').val('');
                });

                $('input[name=courier_text]').val('');
                $('input[name=etc_text]').val('');

                $('#pass_text').hide();
                $('#etc_text').hide();
            }else if(selected == 'courier_box'){
                $('input[name=morning_delivery_method]').each(function(){
                    $(this).attr('checked', false);
                    $(this).parent().children('label').removeClass('on');
                    $('input[name=morning_delivery_pass]').val('');
                    $('input[name=morning_delivery_etc]').val('');
                });

                $('input[name=security_text]').val('');
                $('input[name=etc_text]').val('');

                $('#pass_text').hide();
                $('#etc_text').hide();
            }else if(selected == 'place'){
                $('input[name=morning_delivery_method]').each(function(){
                    $(this).attr('checked', false);
                    $(this).parent().children('label').removeClass('on');
                    $('input[name=morning_delivery_pass]').val('');
                    $('input[name=morning_delivery_etc]').val('');
                });

                $('input[name=security_text]').val('');
                $('input[name=courier_text]').val('');

                $('#pass_text').hide();
                $('#etc_text').hide();
            }

        });


        $('#deliveryMorning').click(function(){
            $('.deliveryMorningDiv').show();
            $('#delivery_info_morning').show();
            $('#delivery_info_parcel').hide();
            $('.deliveryParcelUl').hide();
            $('.deliveryMorningUl').show();

            // 새벽배송 클릭 시 출입정보 저장 노출
            $('#delivery_morning_save').show();

            // 새벽배송 클릭 시 받으실 장소 출력
            $('#delivery_morning_arrive').show();
			
			// 배송일 
			$('#parcelSelectDay').attr('selected' , false);
        });

        $('#deliveryParcel').click(function(){
            $('.deliveryMorningDiv').hide();
            $('#delivery_info_morning').hide();
            $('#delivery_info_parcel').show();
            $('.deliveryParcelUl').show();
            $('.deliveryMorningUl').hide();

            // 일반택배 클릭 시 출입정보 저장 미노출
            $('#delivery_morning_save').hide();


            // 일반택배 클릭 시 받으실 장소 및 해당 유형 미출력
            $('#delivery_morning_arrive').hide();
            $('#delivery_morning_come').hide();
            $('#morning_etc_text').hide();
            $('#security_text').hide();
            $('#courier_text').hide();
            $('#etc_text').hide();
            $('#pass_text').hide();

            // 일반택배 클릭 시 새벽배송 모두 초기화
            // 출입정보
            $('#door_information_save').attr('checked', false);
            $('#door_information_save').parent().children('label').removeClass('on');
            // 문앞
            $('#morning_delivery_door').attr('checked', false);
            $('#morning_delivery_door').parent().children('label').removeClass('on');
            // 경비실
            $('#morning_delivery_security_office').attr('checked', false);
            $('#morning_delivery_security_office').parent().children('label').removeClass('on');
            // 택배함
            $('#morning_delivery_courier_box').attr('checked', false);
            $('#morning_delivery_courier_box').parent().children('label').removeClass('on');
            // 기타 장소
            $('#morning_delivery_place').attr('checked', false);
            $('#morning_delivery_place').parent().children('label').removeClass('on');
            // 비밀번호
            $('#morning_delivery_method_password').attr('checked', false);
            $('#morning_delivery_method_password').parent().children('label').removeClass('on');
            // 경비실호출
            $('#morning_delivery_method_security_come').attr('checked', false);
            $('#morning_delivery_method_security_come').parent().children('label').removeClass('on');
            // 자유출입
            $('#morning_delivery_method_free').attr('checked', false);
            $('#morning_delivery_method_free').parent().children('label').removeClass('on');
            // 기타방법
            $('#morning_delivery_method_etc').attr('checked', false);
            $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

            // 비밀번호 text
            $('#pass_text').find('input').val('');
            // 기타방법 text
            $('#etc_text').find('input').val('');

            // 경비실 text
            $('input[name=security_text]').val('');

            // 택배함 text
            $('input[name=courier_text]').val('');

            // 기타 장소 text
            $('input[name=etc_text]').val('');

			// 배송일 
			$('#morningSelectDay').attr('selected' , false);

        });


        var $input = $("input[name=receiverAddress]");
        $input.on('input', function() {

            var goodsNoArr = [];
            $('.order-goods-layout').each(function(){
                goodsNoArr.push($(this).data('goodsno'));
            });
            var params = {
                dataType : "text",
                zonecode : frmOrder.receiverZonecode.value,
                zipcode : frmOrder.receiverZonecode.value,
                address : frmOrder.receiverAddress.value,
                goodsNoArr : goodsNoArr
            };
            if(frmOrder.receiverZonecode.value==''){
                $('.delivery_type_info').html('');
                return false;
            }
            $.ajax({
                url : "../delivery/ajax_chk_delivery_area.jsp",
                type : "post",
                dataType : "text",
                data : params,
                async : false,
                success : function (data) {
                    if(data=='morning'){
                        $('.delivery_type_info').text('고객님이 선택하신 주소지는 "새벽배송" 가능지역입니다');
                        $('#deliveryMorning').parent().show();
                        /* 주소 변경 시 새벽배송, 택배배송 기록 초기화 */
                        //새벽배송

                        $('#deliveryMorning').attr('checked' , false);
                        $('#deliveryMorning').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_password').attr('checked', false);
                        $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_free').attr('checked', false);
                        $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_etc').attr('checked', false);
                        $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                        $('input[name=morning_delivery_pass]').val('');
                        // 택배배송
                        $('#deliveryParcel').attr('checked' , false);
                        $('#deliveryParcel').parent().children('label').removeClass('on');
                        
						
                        $('#delivery_info').css('display', 'none');

						$('#delivery_morning_date').find('option:first').prop('selected' , true);
						
                        $('#delivery_morning_date').show();
                        $('#delivery_parcel_date').hide();
						
                        /* END */
                        /*
                        $('#deliveryMorning').attr('checked' , false);
                        $('#deliveryMorning').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_password').attr('checked', false);
                        $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_free').attr('checked', false);
                        $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_etc').attr('checked', false);
                        $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                        $('input[name=morning_delivery_pass]').val('');
                        // 택배배송
                        $('#deliveryParcel').attr('checked' , false);
                        $('#deliveryParcel').parent().children('label').removeClass('on');
                        $('input[name=selectDay]').each(function(){
                            $(this).attr('checked', false);
                            $(this).parent().children('label').removeClass('on');
                        });
                        $('#delivery_morning_date').css('display', 'none');
                        $('#delivery_parcel_date').css('display', 'none');
                        $('#delivery_info').css('display', 'none');
                        */
                        /* END */

                    }else if(data=='parcel' || data=='impossible'){
                        $('.delivery_type_info').text('고객님이 선택하신 주소지는 "택배배송" 가능지역입니다');
                        $('#deliveryMorning').parent().hide();
                        /* 주소 변경 시 새벽배송, 택배배송 기록 초기화 */
                        // 새벽배송
                        // 받으실 장소, 출입방법, 출입 정보 저장 필드 안보이게
                        $('#delivery_morning_arrive').hide();
                        $('#delivery_morning_come').hide();
                        $('#delivery_morning_save').hide();
                        // END
                        $('#deliveryMorning').attr('checked' , false);
                        $('#deliveryMorning').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_password').attr('checked', false);
                        $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_free').attr('checked', false);
                        $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_etc').attr('checked', false);
                        $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                        $('input[name=morning_delivery_pass]').val('');
                        // 택배배송
                        $('#deliveryParcel').attr('checked' , true);
                        $('#deliveryParcel').prop('checked' , 'checked');
                        $('#deliveryParcel').parent().children('label').addClass('on');
						
						$('#delivery_parcel_date').find('option:first').prop('selected' , true);

                        $('#delivery_morning_date').hide();
                        $('#delivery_parcel_date').show();
                        $('#delivery_info').show();
                        /* END */
                    }
                },
                error : function (res) {
                    console.log(res);
                }
            });

            chkDeliveryType();
        });



        $("input[name=shippingAddress]").on('input', function() {
            var goodsNoArr = [];
            $('.order-goods-layout').each(function(){
                goodsNoArr.push($(this).data('goodsno'));
            });
            var params = {
                dataType : "text",
                zonecode : frmOrder.shippingZonecode.value,
                address : frmOrder.shippingAddress.value,
                goodsNoArr : goodsNoArr
            };
            if(frmOrder.shippingZonecode.value==''){
                $('.delivery_type_info').html('');
                $('.deliveryMorningDiv').hide();
                $('#delivery_info_morning').hide();
                $('#delivery_info_parcel').show();
                $('.deliveryParcelUl').show();
                $('.deliveryMorningUl').hide();
                $('#deliveryMorning').parent().hide();
                return false;
            }
            $.ajax({
                url : "../delivery/ajax_chk_delivery_area.jsp",
                type : "post",
                dataType : "text",
                data : params,
                async : false,
                success : function (data) {

                    if(data=='morning'){
                        $('.delivery_type_info').html('고객님이 선택하신 주소지는 "새벽배송" 가능지역입니다');
                        $('#deliveryMorning').parent().show();

                        /* 주소 변경 시 새벽배송, 택배배송 기록 초기화 */
                        //새벽배송

                        $('#deliveryMorning').attr('checked' , false);
                        $('#deliveryMorning').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_password').attr('checked', false);
                        $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_free').attr('checked', false);
                        $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_etc').attr('checked', false);
                        $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                        $('input[name=morning_delivery_pass]').val('');
                        // 택배배송
                        $('#deliveryParcel').attr('checked' , false);
                        $('#deliveryParcel').parent().children('label').removeClass('on');
                        
						
                        $('#delivery_info').css('display', 'none');

						$('#delivery_morning_date').find('option:first').prop('selected' , true);
						
                        $('#delivery_morning_date').show();
                        $('#delivery_parcel_date').hide();
                        /* END */
						
                        //새벽배송
                        /*
                        $('#deliveryMorning').attr('checked' , false);
                        $('#deliveryMorning').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_password').attr('checked', false);
                        $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_free').attr('checked', false);
                        $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_etc').attr('checked', false);
                        $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                        $('input[name=morning_delivery_pass]').val('');
                        // 택배배송
                        $('#deliveryParcel').attr('checked' , false);
                        $('#deliveryParcel').parent().children('label').removeClass('on');
                        $('input[name=selectDay]').each(function(){
                            $(this).attr('checked', false);
                            $(this).parent().children('label').removeClass('on');
                        });
                        $('#delivery_morning_date').css('display', 'none');
                        $('#delivery_parcel_date').css('display', 'none');
                        $('#delivery_info').css('display', 'none');
                        */
                        /* END */

                    }else if(data=='parcel' || data=='impossible'){
                        $('.delivery_type_info').html('고객님이 선택하신 주소지는 "택배배송" 가능지역입니다');
                        //$('#deliveryMorning').parent().hide();

                        /* 주소 변경 시 새벽배송, 택배배송 기록 초기화 */
                        //새벽배송
                        $('#deliveryMorning').attr('checked' , false);
                        $('#deliveryMorning').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_password').attr('checked', false);
                        $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_free').attr('checked', false);
                        $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                        $('#morning_delivery_method_etc').attr('checked', false);
                        $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                        $('input[name=morning_delivery_pass]').val('');
                        // 택배배송
                        $('#deliveryParcel').attr('checked' , true);
                        $('#deliveryParcel').prop('checked' , 'checked');
                        $('#deliveryParcel').parent().children('label').addClass('on');
                        
						$('#delivery_parcel_date').find('option:first').prop('selected' , true);
						
                        $('#delivery_morning_date').hide();
                        $('#delivery_parcel_date').show();
                        $('#delivery_info').show();
                        /* END */
                    }
                },
                error : function (res) {
                    console.log(res);
                }
            });

            chkDeliveryType();
        });

        var goodsNoArr = [];
        $('.order-goods-layout').each(function(){
            goodsNoArr.push($(this).data('goodsno'));
        });
        var params = {
            dataType : "text",
            zonecode : frmOrder.receiverZonecode.value,
            zipcode : frmOrder.receiverZonecode.value,
            address : frmOrder.receiverAddress.value,
            goodsNoArr : goodsNoArr
        };
        if(frmOrder.receiverZonecode.value==''){
            $('.delivery_type_info').html('');
            $('.delivery_type_info').html('');
            $('.deliveryMorningDiv').hide();
            $('#delivery_info_morning').hide();
            $('#delivery_info_parcel').show();
            $('.deliveryParcelUl').show();
            $('.deliveryMorningUl').hide();
            $('#deliveryMorning').parent().hide();
            return false;
        }
        $.ajax({
            url : "../delivery/ajax_chk_delivery_area.jsp",
            type : "post",
            dataType : "text",
            data : params,
            async : false,
            success : function (data) {

                if(data=='morning'){
                    $('.delivery_type_info').text('고객님이 선택하신 주소지는 "새벽배송" 가능지역입니다');
                    $('#deliveryMorning').parent().show();

                    /* 주소 변경 시 새벽배송, 택배배송 기록 초기화 */
                    //새벽배송

                    $('#deliveryMorning').attr('checked' , false);
                    $('#deliveryMorning').parent().children('label').removeClass('on');

                    $('#morning_delivery_method_password').attr('checked', false);
                    $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                    $('#morning_delivery_method_free').attr('checked', false);
                    $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                    $('#morning_delivery_method_etc').attr('checked', false);
                    $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                    $('input[name=morning_delivery_pass]').val('');
                    // 택배배송
                    $('#deliveryParcel').attr('checked' , false);
                    $('#deliveryParcel').parent().children('label').removeClass('on');
                    
                    $('#delivery_info').css('display', 'none');

					$('#delivery_morning_date').find('option:first').prop('selected' , true);
					
                    $('#delivery_morning_date').show();
                    $('#delivery_parcel_date').hide();
                    /* END */

                }else if(data=='parcel' || data=='impossible'){
                    $('.delivery_type_info').text('고객님이 선택하신 주소지는 "택배배송" 가능지역입니다');
                    $('#deliveryMorning').parent().hide();

                    //새벽배송
                    $('#deliveryMorning').attr('checked' , false);
                    $('#deliveryMorning').parent().children('label').removeClass('on');

                    $('#morning_delivery_method_password').attr('checked', false);
                    $('#morning_delivery_method_password').parent().children('label').removeClass('on');

                    $('#morning_delivery_method_free').attr('checked', false);
                    $('#morning_delivery_method_free').parent().children('label').removeClass('on');

                    $('#morning_delivery_method_etc').attr('checked', false);
                    $('#morning_delivery_method_etc').parent().children('label').removeClass('on');

                    $('input[name=morning_delivery_pass]').val('');
                    // 택배배송
                    $('#deliveryParcel').attr('checked' , true);
                    $('#deliveryParcel').prop('checked' , 'checked');
                    $('#deliveryParcel').parent().children('label').addClass('on');
					
					$('#delivery_parcel_date').find('option:first').prop('selected' , true);
					
                    $('#delivery_morning_date').hide();
                    $('#delivery_parcel_date').show();
                    $('#delivery_info').show();
                    /* END */
                }
            },
            error : function (res) {
                console.log(res);
            }
        });

        chkDeliveryType();

    });


    function chkDeliveryType()
    {
        $obj = $(".deliveryType:checked");
        var deliveryType = $obj.val();
        $obj2 = $(".tr_morning_delivery_type");
        if (deliveryType == 'morning') { // 새벽배송인 경우
            $('#deliveryType_morning').attr("checked", true).prop("checked", true);
            $('#deliveryType_morning').next("label").addClass("on");
            $('#deliveryType_parcel').prop("checked", false).removeAttr("checked");
            $('#deliveryType_parcel').next("label").removeClass("on");
            $obj2.show();
        } else { // 택배배송인 경우
            $obj2.hide();
            $('#deliveryType_morning').prop("checked", false).removeAttr("checked");
            $('#deliveryType_morning').next("label").removeClass("on");
            $('#deliveryType_parcel').attr("checked", true).prop("checked", true);
            $('#deliveryType_parcel').next("label").addClass("on");
        }
    }

    (function ($) {
        var originalVal = $.fn.val;
        $.fn.val = function (value) {
            var res = originalVal.apply(this, arguments);

            if (this.is('input:text') && arguments.length >= 1) {
                // this is input type=text setter
                this.trigger("input");
            }

            return res;
        };
    })(jQuery);
</script>
<!-- 튜닝 END -->

<!-- LABBIT GA 향상된 전자상거래 관련 세팅 -->
<script>
    var option1, option2, option3;
    var opt_result = '';
</script>

<!-- 정기배송 상품 결제 -->

<script>
    option3 = '닭가슴살 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '크래미 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '그린 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '채소만 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '레드칠리 로스트 닭가슴살 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>

<script>
    var labbit_total_price = "107,080";
    var labbit_shipping = "9000";
    var labbit_products = window.labbit_products || [];
    var variant = opt_result ? opt_result.slice(0, -1) : '';
    if ('{$product_name}' != '') {
        labbit_products.push({
            'name': '하루에 한 끼를 샐러드로 5일',
            'id': '1000000376',
            'price': parseInt('29,820'.replace(/[^0-9]/g, '')) / parseInt(1) + '',
            'quantity': 1,
        'variant' : variant
    });
    }
    console.log('variant : ' + variant);
    opt_result = '';
</script>


<script>
    option3 = '크래미 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '닭가슴살 비엔나 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '치즈 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '닭가슴살볼 옥수수톡 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>
<script>
    option3 = '훈제오리 샐러드 x4';
    option3 = option3 + ',';
    opt_result += option3;
    console.log(opt_result);
</script>

<script>
    var labbit_total_price = "107,080";
    var labbit_shipping = "9000";
    var labbit_products = window.labbit_products || [];
    var variant = opt_result ? opt_result.slice(0, -1) : '';
    if ('{$product_name}' != '') {
        labbit_products.push({
            'name': '2주 정기배송 샐러드 주 5일',
            'id': '260',
            'price': parseInt('68,260'.replace(/[^0-9]/g, '')) / parseInt(1) + '',
            'quantity': 1,
        'variant' : variant
    });
    }
    console.log('variant : ' + variant);
    opt_result = '';
</script>

<!-- 정기배송 상품 결제 세팅 끝 -->

<!-- 일반 상품 결제 -->

<!-- 일반 상품 결제 세팅 끝 -->

<!-- LABBIT GA 향상된 전자상거래 관련 세팅 끝-->
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