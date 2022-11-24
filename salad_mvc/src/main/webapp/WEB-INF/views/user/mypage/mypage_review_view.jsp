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
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-955276942"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-955276942');
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#MyRevMainBtn").click(function(){ //목록 - 나의후기 리스트로이동
		location.href="mypage_review_list.do";
	});//click
	
});
</script>
</head>

<body class="body-board body-list pc"  >
<div class="content">
<div class="board_zone_sec">
    <div  class="board_zone_tit" >


		<h2>나의 상품후기</h2>
		
		
    </div>
<div class="board_zone_cont" id="board_content">
        <div class="board_zone_view">
            <div class="board_view_tit">
                <h3>
                     <strong>${revTitle}</strong>
                </h3>
            </div>
            <div class="board_view_info">
                <span class="view_info_idip" ><strong>${revName} </strong></span>
                <span class="view_info_day"><em>${revWriteDate}</em></span>
                <span class="view_info_hits"><strong>조회수</strong> ${revHits} </span></div>
                
            <div class="board_view_content">
            
                <div class="view_goods_select">
                    <div class="view_goods_select_item">
                        <span class="view_select_item_img">
                                <img src="http://localhost/salad_mvc/resources/images/product/${prdBodyThum}" width=100px height=100px >
                        </span>
                      <span class="view_select_item_info">
                            <em>${prdName}</em>
                            <strong>판매금액 ${price}원</strong>
                        </span>
                        
                    </div>
                    <div class="view_goods_select_item">    
                        <span class="view_select_item_img" style="margin:10px 30px 10px 0">
                        	<img src="http://localhost/salad_mvc/resources/images/review/${revImg}" width=150px height=200px >
                        </span>
                        <span class="view_select_item_info" style="margin:10px 30px 10px 0">
                            ${revCont}
                        </span>
                    </div>    
                        
                        
                    </div>
                </div>


            <div class="board_view_comment">
                <div class="view_comment js_comment_area" data-bdId="goodsreview" data-sno="17846">
                </div>
            </div>

        </div>

        <div class="btn_right_box" style="display: flex; justify-content: space-between; margin: 20px 0px; width: 90%">
        	<div>
				<input type="button" class="btn_board_list" value="이전"  class="button">
				<input type="button" class="btn_board_list" value="다음" class="button">
			</div>
			<div>
				<input type="button" class="btn_board_list" value="삭제" id="delBtn" class="button">
				<input type="button" class="btn_board_list" value="수정" id="edBtn" class="button" style="width: 150px;">
				<input type="button" class="btn_board_list" value="목록" id="MyRevBtn" class="button">
			</div>
		</div>
    </div>
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