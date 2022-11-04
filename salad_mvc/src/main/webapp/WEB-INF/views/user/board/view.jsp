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
    <meta name="csrf-token" content="MTY2NjcwMzQzMDQ1MTU0NzE0ODAzNDU1MjczMDIyNDk1ODYxOTMzMzEw" />


    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/board/view.jsp?noheader=y&amp;bdId=notice&amp;sno=97">
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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A10%3A30%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22view.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData="></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_common.js"></script>
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

</head>

<body class="body-board body-view pc"  >
<div class="content">
<div class="board_zone_sec">

  <div  class="board_zone_tit" >


		<h2></h2>
    </div>
    <div class="board_zone_cont" id="board_content">
        <div class="board_zone_view">

            <div class="board_view_tit">
                <h3>
                    닭가슴살 슬라이스 3종 리뉴얼 출시
                </h3>
            </div>
            <div class="board_view_info">
                <span class="view_info_idip" >
                    <strong>관리자</strong>
                </span>
                <span class="view_info_day">
                    <em>2022.10.09</em>
                </span>
                <span class="view_info_hits">
<strong>조회수</strong> 52                </span>
            </div>
            <!-- //board_view_info -->



            <div class="board_view_content">

                <div class="view_goods_select">


                </div>
                <!-- //view_goods_select -->

                <div class="seem_cont">
                    <div style="margin:10px 0 10px 0">
                        <p>안녕하세요, 포켓샐러드입니다.</p><p>&nbsp;</p><p>포켓닭의 닭가슴살 슬라이스 3종(갈비맛 / 양념치킨맛/ 커리맛) 상품이 리뉴얼되어 출시되었습니다.</p><p>&nbsp;</p><p>이전 제품 대비 나트륨은 줄이고, 더 두텁고 촉촉하고 부드러운 식감의 닭가슴살 슬라이스를 만나보실 수 있습니다.</p><p>&nbsp;</p><p>단백질 보충 및 든든한 식단 관리에 도움이 될 식단템이 되었으면 좋겠어요.</p><p>&nbsp;</p><p>오늘도 건강하고 맛있는 한 끼 되세요.&nbsp;</p><p>&nbsp;</p><p>포켓샐러드&nbsp;</p>
                    </div>
                </div>
                <!-- //seem_cont -->


            </div>
            <!-- //board_view_content -->


            <div class="board_view_comment">

                <div class="view_comment js_comment_area" data-bdId="notice" data-sno="97">

                </div>

            </div>
            <!-- //board_view_comment -->

        </div>
        <!-- //board_zone_view -->

        <div class="btn_right_box">
<button type="button" class="btn_board_list" onclick="gd_btn_list('notice')"><strong>목록</strong></button>        </div>

    </div>
    <!-- //board_zone_cont -->

    <!-- N : 관련게시글 영역 시작 -->
    <div class="board_zone_cont">
        <div class="board_zone_list">
            <table class="board_list_table">
                <colgroup>
                    <col style="width:6%">  <!-- 번호 -->
                    <col>					<!-- 제목 -->
                    <col style="width:15%"> <!-- 추천 -->
                    <col style="width:10%"> <!-- 조회 -->
                </colgroup>
                <thead style="display:none;">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>날짜</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>

        </div>
        <!-- //board_zone_list -->
    </div>
    <!-- //board_zone_cont -->
    <!-- N : 관련게시글 영역 끝 -->

    <!-- N : 리스트화면 노출 시작 -->
    <!-- N : 리스트화면 노출 끝 -->

</div>
<!-- //board_zone_sec -->


<!-- 레이어 호출시 딤처리 -->
<div id="layerDim" class="dn">&nbsp;</div>
<!-- //레이어 호출시 딤처리 -->
<!-- 비밀글 클릭시 인증 레이어 -->
<div id="lyPassword_view" class="dn layer_wrap password_layer" style="height: 226px">
    <div class="layer_wrap_cont">
        <div class="ly_tit">
            <h4>비밀번호 인증</h4>
        </div>
        <div class="ly_cont">
            <div class="scroll_box">
                <p>글 작성시 설정한 비밀번호를 입력해 주세요.</p>
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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_view.js" charset="utf-8"></script>
</div>
<!-- //content -->
<!-- 절대! 지우지마세요 : Start -->
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="900" height="500"></iframe>
<!-- 절대! 지우지마세요 : End -->

</body>
</html>