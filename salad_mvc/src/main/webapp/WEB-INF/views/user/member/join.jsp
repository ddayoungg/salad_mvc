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
    <meta name="csrf-token" content="MTY2NjY4NDQ1MDMyODY5OTU2MDc0MTg3OTYwODg5OTc4NzI4MjgxNDA0" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/member/join.jsp">
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
	<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/member/member.css?ts=1662983268" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/swiper.css?ts=1610501674" />

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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T16%3A54%3A11%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3Anull%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22join.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/moment.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/locale/ko.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_member2.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/datetimepicker/bootstrap-datetimepicker.js?v=2020120404"></script>
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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/member/join.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
        <!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
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
	
	
<body id="body" class="body-member body-join pc"  >
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
					<li><a href="../member/join_method.jsp">회원가입</a></li>
					<li><a href="../member/login.jsp">로그인</a></li>

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

                      <strong><b><a href="../order/cart.jsp" class="z">0</a></b></strong>

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
                    <em><a href="#" class="local_home">HOME</a> > 회원가입 > 정보입력</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->
<div class="content_box">
	<div class="join_base_wrap">
		<div class="member_tit">
			<h2>회원가입</h2>
			<ol>
				<li class="page_on"><span>01</span> 정보입력<span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/member/icon_join_step_on.png" alt=""></span></li>
				<li><span>02</span> 가입완료</li>
			</ol>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">
			<form id="formJoin" name="formJoin" action="https://www.pocketsalad.co.kr/member/member_ps.jsp" method="post">
				<input type="hidden" name="rncheck" value="">
				<input type="hidden" name="dupeinfo" value="">
				<input type="hidden" name="pakey" value="">
				<input type="hidden" name="foreigner" value="">
				<input type="hidden" name="adultFl" value="">
				<input type="hidden" name="mode" value="join">

				<!-- 회원가입/정보 기본정보 --><div class="base_info_box">
    
	  <h3>기본정보</h3>
 

    <span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span>

    <div class="base_info_sec">
        <table border="0" cellpadding="0" cellspacing="0">
		
		<colgroup>
                <col width="25%">
                <col width="75%">
            </colgroup>

            <tbody>
            <tr>
                <th><span class="important">아이디</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="memId" name="memId" data-pattern="gdMemberId">
                    </div>
                </td>

            </tr>
            <tr class="">
                <th><span class="important">비밀번호</span></th>
                <td class="member_password">
                    <div class="member_warning">
                        <input type="password" id="newPassword" name="memPw" autocomplete="off" placeholder="">
                    </div>
                </td>
            </tr>
            <tr class="">
                <th><span class="important">비밀번호 확인</span></th>
                <td>
                    <div class="member_warning">
                        <input type="password" class="check-id" name="memPwRe" autocomplete="off">
                    </div>
                </td>
            </tr>
            <tr>
                <th><span class="important">이름</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" name="memNm" data-pattern="gdMemberNmGlobal" value="" maxlength="30" >
                    </div>
                </td>
            </tr>
            <tr>
                <th><span>이메일</span></th>
                <td class="member_email">
                    <div class="member_warning">
						<input type="hidden" name="email" id="email">
                        <input type="text" name="email_head" id="email_head" value="" style="width:160px;margin-right:7px;">@
						<input type="text" name="email_next" id="email_next" value="" style="width: 181px;">
                        <select id="emailDomain" name="emailDomain" class="chosen-select" style="width:189px;">
                            <option value="self">직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="daum.net">daum.net</option>
                            <option value="nate.com">nate.com</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="icloud.com">icloud.com</option>
                        </select>

                       
                    </div>
					<div class="member_warning js_email"></div>
<!--                    <div class="form_element">-->
<!--                        <input type="checkbox" id="maillingFl" name="maillingFl" value="y" >-->
<!--                        <label for="maillingFl" class="check_s ">다양한 할인 혜택과 이벤트 정보 메일 수신에 동의합니다.</label>-->
<!--                    </div>-->
                </td>
            </tr>
            <tr>
                <th><span >휴대폰번호</span></th>
                <td class="member_address">
                    <div class="address_postcode">
                        <input type="text" id="cellPhone" name="cellPhone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value=""   style="width: calc( 100% - 187px) ;">

                        <!-- s onnomad -->
                        <button class="btn_post_search" type="button" id="btnAuthPhoneVf" style="width:165px;">
                            인증번호받기
                        </button>
                        <input style="margin-top:5px;display: none" type="text" id="cellPhoneVf" name="cellPhoneVf" maxlength="5" placeholder="인증번호입력" data-pattern="gdNum" >
                        <button style="display: none" class="btn_post_search" type="button" id="btnAuthPhoneVfCheck">
                            인증하기
                        </button>
                        <button style="display: none" class="btn_post_search" type="button" id="btnAuthPhoneVfRe">
                            재전송
                        </button>
                        <p id="vfInfo" style="float:left; margin: 10px 0 0 10px;color:#e10505;display: none;">인증이 완료 되었습니다!</p>
                        <script>
                            var vfNum;
                            var isVfChecked = false;

                            $("#btnAuthPhoneVf").click(function() {
                                if($("#cellPhone").val() && $("#cellPhone").val().length > 8) {
                                    $.ajax({
                                        url: '/member/member_ps.jsp',
                                        type: "POST",
                                        data: {
                                            mode: 'smsCpVf',
                                            cellPhone: $("#cellPhone").val()
                                        }
                                    }).done(function(res) {
                                        if(res.success) {
                                            $("#btnAuthPhoneVf").hide();
                                            $("#cellPhoneVf").show();
                                            $("#btnAuthPhoneVfRe").show();
                                            $("#btnAuthPhoneVfCheck").show();
                                            vfNum = res.vfNum;
                                        }
                                        else {
                                            alert("인증번호 발송이 실패하였습니다. 휴대폰 번호를 확인해 주세요.");
                                        }
                                    });
                                }
                                else {
                                    alert("인증번호 발송이 실패하였습니다. 휴대폰 번호를 확인해 주세요.");
                                }
                                $("#vfInfo").hide();
                            });
                            $("#btnAuthPhoneVfRe").click(function() {
                                $("#btnAuthPhoneVf").click();
                            });
                            $("#btnAuthPhoneVfCheck").click(function() {
                                if(vfNum && vfNum == $("#cellPhoneVf").val()) {
                                    $("#cellPhone").attr("readonly", true);
                                    $("#cellPhoneVf").hide();
                                    $("#btnAuthPhoneVfRe").hide();
                                    $("#btnAuthPhoneVfCheck").hide();
                                    $("#vfInfo").text("인증이 완료 되었습니다!").show();
                                    isVfChecked = true;
                                }
                                else {
                                    $("#vfInfo").text("인증번호가 잘못 입력되었습니다!").show();
                                }

                            });
                        </script>
                        <!-- e onnomad -->
                    </div>
<!--                    <div class="form_element">-->
<!--                        <input type="checkbox" id="smsFl" name="smsFl" value="y" >-->
<!--                        <label for="smsFl" class="check_s ">다양한 할인 혜택과 이벤트 정보 SMS 수신에 동의합니다.</label>-->
<!--                    </div>-->
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- //base_info_sec -->
</div>
<!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
				<!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
				<!-- 회원가입/정보 부가정보 --><div class="addition_info_box">
    <h3>부가정보</h3>
    <div class="addition_info_sec">
        <table border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="25%">
                <col width="75%">
            </colgroup>
            <tbody>
            <tr>
                <th><span>추천인 아이디</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="recommId" name="recommId" value="">
                    </div>
                </td>
            </tr>
            <tr>
                <th><span>휴면회원 방지기간</span></th>
                <td>
                    <div class="member_warning">
                        <div class="form_element">
                            <ul>
                                <li>
                                    <input type="radio" id="expirationFl1" name="expirationFl" value="1" >
                                    <label for="expirationFl1" class="choice_s ">1년</label>
                                </li>
                                <li>
                                    <input type="radio" id="expirationFl3" name="expirationFl" value="3" >
                                    <label for="expirationFl3" class="choice_s ">3년</label>
                                </li>
                                <li>
                                    <input type="radio" id="expirationFl5" name="expirationFl" value="5" >
                                    <label for="expirationFl5" class="choice_s ">5년</label>
                                </li>
                                <li>
                                    <input type="radio" id="expirationFl0" name="expirationFl" value="999" >
                                    <label for="expirationFl0" class="choice_s ">탈퇴 시 - 평생회원</label>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //member_warning -->

                    <!-- 평생회원 이벤트 안내문구 -->
                    <div class="member_warning_info dn">
                        <div class="info_title">평생회원 이벤트</div>
                        <div class="info_text">
                            휴면회원 방지기간을 ‘탈퇴 시’로 변경하시면,<br>
                            휴면회원으로 전환되지 않으며 고객님의 정보가 탈퇴 시까지 안전하게 보관됩니다.<br>
                        </div>
                    </div>
                    <!-- 평생회원 이벤트 안내문구 -->
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- //addition_info_sec -->
</div>
<!-- //addition_info_box -->

<!-- 회원가입/정보 부가정보 -->

				<!-- s_onnomad_210712_약관동의영역 HM -->
				<div class="nd-agreement">
					<table class="">
						<tbody>
						<tr>
							<th>
								<span class="important">이용약관동의</span>
							</th>
							<td>
								<div class="join_agreement_cont join_view">
									<div class="join_agreement_box nd-all-agree">
										<div class="form_element">
											<input type="checkbox" id="allAgree"/>
											<label class="check" for="allAgree"> <em>모든 약관을 확인하고 전체 동의합니다.</em></label>
											<span>(전체동의, 선택항목도 포함됩니다.)</span>
										</div>
									</div>
									<!-- //join_agreement_box -->

									<style>
										.join_agreement_cont .join_agreement_box .form_element span, .body-join .nd-agreement .form_element span a {
											font-size:12px !important;
											background-size: 8%;
											background-position: 91% 50%;
											font-weight: normal;
										}
										.body-join .nd-agreement .nd-sms-mail .nd-check-area {
											padding: 15px 0 0 15px;
										}
									</style>
									<div class="join_agreement_box js_terms_view">
										<div class="form_element">
											<input type="checkbox" id="termsAgree1" value="y" name="agreementInfoFl" class="require" />
											<label class="check_s" for="termsAgree1"><strong>(필수)</strong> <b>이용약관</b></label>
											<span style="margin-left: 100px;"><a href="../service/agreement.jsp" target="_blank">전체보기</a></span>
										</div>
										<!--                            <div class="agreement_box">-->
										<!--                                
										<!--                            </div>-->
										<!-- //agreement_box -->
									</div>
									<!-- //join_agreement_box -->

									<div class="join_agreement_box js_terms_view">
										<div class="form_element">
											<input type="checkbox" id="termsAgree2" value="y" name="privateApprovalFl" class="require" />
											<label class="check_s" for="termsAgree2"><strong>(필수)</strong> <b>개인정보 수집 및 이용</b></label>
											<span style="margin-left: 32px;"><a href="../service/pprivate.jsp" target="_blank">전체보기</a></span>
										</div>
										<!--                            <div class="agreement_box">-->
										<!--                                
										<!--                            </div>-->
										<!-- //agreement_box -->
									</div>
									<!-- //join_agreement_box -->
									<div class="nd-sms-mail">
										<div class="form_element">
											<input type="checkbox" id="receptAgree" value="y" name="receptAgree" class="nd-recept-agree"/>
											<label class="check_s" for="receptAgree"><strong>(선택)</strong> <b>정보 수신 동의</b></label>
										</div>
										<div class="nd-check-area receptAgree-input">
											<div class="form_element">
												<input type="checkbox" id="smsFl" value="y" name="smsFl" value="y" />
												<label for="smsFl" class="check_s ">SMS</label>
											</div>
											<div class="form_element">
												<input type="checkbox" id="maillingFl" value="y" name="maillingFl" value="y" />
												<label for="maillingFl" class="check_s ">이메일</label>
											</div>
										</div>

									</div>

									<div class="join_agreement_box">
										<div class="form_element" id="termsAgreeDiv">
											<input type="checkbox" id="termsAgree" value="y" name="under14ConsentFl"/>
											<label class="check check_s" for="termsAgree"><strong>(필수)</strong> <em>본인은 만 14세 이상입니다</em></label>
										</div>
									</div>
								</div>
								<!-- //join_agreement_cont -->
							</td>
						</tr>
						</tbody>
					</table>
				</div>
				<script>


					var isAllCheck = false;
					var $allAgree = $("input#allAgree");
					var $aggreInputs = $allAgree.closest('.join_view').find('input');

					function toggleAllAgreeInput() {
						var isCheck = $allAgree.is(':checked');
						if(isCheck) {
							$allAgree.prop( "checked", false );
							$allAgree.next().removeClass("on");

						}
						else {
							$allAgree.prop( "checked", true );
							$allAgree.next().addClass("on");
						}
					}

					$allAgree.change(function () {
						var isCheck = $allAgree.is(':checked');
						$aggreInputs.each(function (index){
							if(isCheck) {
								if(!$(this).prop("checked")) {
									$(this).click();
								}
								isAllCheck = true;
							}
							else {
								if($(this).prop("checked")) {
									$(this).click();
								}
								isAllCheck = false;
							}
						});
					});

					$allAgree.closest('.join_view').find('input').change(function () {
						$aggreInputs.each(function (index){
							isAllCheck = true;
							if($($aggreInputs[index]).attr('id') != 'allAgree' && !$($aggreInputs[index]).prop("checked")) {
								isAllCheck  = false;
								if($allAgree.is(':checked')) {
									toggleAllAgreeInput();
								}
								return false;
							}
						});

						if(isAllCheck && !$allAgree.is(':checked')) {
							toggleAllAgreeInput();
						}
					});

					var $maggre = $("input#receptAgree");
					var $maggreInputs = $(".receptAgree-input").find('input');
					$maggre.change(function () {
						var isCheck = $maggre.is(':checked');
						$maggreInputs.each(function (index){
							if(isCheck) {
								if(!$(this).prop("checked")) {
									$(this).click();
								}
							}
						});
					});
					$maggreInputs.change(function () {
						var isMaggreCheck = true;
						$maggreInputs.each(function (index){
							if(!$($maggreInputs[index]).prop("checked")) {
								isMaggreCheck = false;
							}
						});
						if(!isMaggreCheck) {
							$maggre.prop( "checked", false );
							$maggre.next().removeClass("on");
						}
						else {
							$maggre.prop( "checked", true );
							$maggre.next().addClass("on");
							$maggre.change();
						}
					});

				</script>
				<!-- e_onnomad_210712_약관동의영역 HM -->

				<div class="btn_center_box">
<!--					<button type="button" id="btnCancel" class="btn_member_cancel">취소</button>-->
					<button type="button" class="btn_comfirm js_btn_join" value="회원가입">가입하기</button>
				</div>
				<!-- //btn_center_box -->
			</form>
		</div>
		<!-- //member_cont -->
	</div>
	<!-- //join_base_wrap -->
</div>
<!-- //content_box -->
<script type="text/javascript">
	var paycoProfile = [];
    var naverProfile = [];
	var thirdPartyProfile = Array;
	var kakaoProfile = [];
	var appleProfile = null;

	$(document).ready(function () {
		var $formJoin = $('#formJoin');

		$(':text:first', $formJoin).focus();

		$('#btnCancel', $formJoin).click(function (e) {
			e.preventDefault();
			top.location.href = '/';
		});

		if ($('.js_datepicker').length) {
			$('.js_datepicker').datetimepicker({
				locale: 'ko',
				format: 'YYYY-MM-DD',
				dayViewHeaderFormat: 'YYYY MM',
				viewMode: 'days',
				ignoreReadonly: true,
				debug: false,
				keepOpen: false
			});
		}

		$('#btnPostcode').click(function (e) {
			e.preventDefault();
			$('#address-error, #addressSub-error').remove();
			$(':text[name=address], :text[name=addressSub]').removeClass('text_warning');
			gd_postcode_search('zonecode', 'address', 'zipcode');
		});

		$('#btnCompanyPostcode').click(function (e) {
			e.preventDefault();
			$('#comAddress-error, #comAddressSub-error').remove();
			$(':text[name=comAddress], :text[name=comAddressSub]').removeClass('text_warning');
			gd_postcode_search('comZonecode', 'comAddress', 'comZipcode');
		});





		$('#email_head').keyup(function () {
			if($('#email_head').val() != '' && $('#email_next').val() != ''){
				$("#email").val($('#email_head').val() + "@" + $('#email_next').val());
			} else {
				$("#email").val("");
			}
		});

		$('#email_next').keyup(function () {
			if($('#email_head').val() != '' && $('#email_next').val() != ''){
				$("#email").val($('#email_head').val() + "@" + $('#email_next').val());
			} else {
				$("#email").val("");
			}
		});

        gd_select_email_domain2('email_next');

		gd_member2.init($formJoin);

		$('.js_btn_join').click({form: $formJoin}, gd_member2.save);
	});


    /**
     * 회원가입시 Exception 발생하는 경우 회원가입 버튼 복원
     */
    function callback_not_disabled()
    {
        $('.js_btn_join').prop("disabled", false);
        $('.js_btn_join em').html("회원가입");
    }

	function gd_select_email_domain2(name,select) {
		if (typeof select === 'undefined') {
			select = 'emailDomain';
		}
		var $email = $(':text[name=' + name + ']');
		var $emailDomain = $('select[id='+select+']');
		$emailDomain.on('change', function (e) {
			var emailValue = $email.val();			
			var indexOf = emailValue.indexOf('@');
			if (indexOf == -1) {
				if ($emailDomain.val() === 'self') {										
					$("#email_next").val("");
				} else {
					$email.val($emailDomain.val());
					if($('#email_head').val() != '' && $('#email_next').val() != ''){
						$("#email").val($('#email_head').val() + "@" + $('#email_next').val());
					} else {
						$("#email").val("");
					}
				}
				$email.trigger('focusout');
			} else {
				if ($emailDomain.val() === 'self') {
					//$email.val(emailValue.substring(0, indexOf + 1));
					$("#email_next").val("");
					$email.focus();
				} else {
					$email.val(emailValue.substring(0, indexOf + 1) + $emailDomain.val());
					$email.trigger('focusout');
				}
			}
		});
	}
</script>


<!--이지어드민 실시간주문알림 입니다. 삭제시 알림톡 전송이 안됩니다.-->
<!--<script  
   src="//code.jquery.com/jquery-2.2.4.min.js"  
   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="  
   crossorigin="anonymous"></script>-->

<script>
   $('#formJoin').submit(function(){        
       var cust_id = $("input[name=memId]").val();
       var name =  $("input[name=memNm]").val();
       var mobile = $("#cellPhone").val();
	   
       var data = {};
       data["action" ] = "join_set";
       data["domain" ] = "atower2015";
       data["userid" ] = "atower2015";
       data["cust_id"] = cust_id;
       data["name"   ] = name;
       data["mobile" ] = mobile;
       $.ajax({
           url : "//kakao.ezapps.co.kr/class/class_godo_alimtalk.jsp",
           data : data,
          dataType : "jsonp",
          jsonp    : "callback",
          success : function( resp )
          {
        console.log("success"+$("#cellPhone").val());
          },
          error : function(request,status,error)
          {
       console.log("error"+error);
   }
      });
  });

</script>    
<!--이지어드민 실시간주문알림 입니다. 삭제시 알림톡 전송이 안됩니다.-->


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
			<strong><a href="../order/cart.jsp" class="z">0</a></strong>

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
                { event: "setEmail", email: "", hash_method: "sha256" },
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