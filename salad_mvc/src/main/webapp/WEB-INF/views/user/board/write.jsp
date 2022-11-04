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
    <meta name="csrf-token" content="MTY2NjcwNDIyMjMyMjA4NzgwMDMwMjA5NDE0MzYyMzkwMDYwNTIxMTg3" />


    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/board/write.jsp?noheader=y&amp;memNo=85762&amp;mypageFl=y&amp;bdId=qa">
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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A23%3A42%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22write.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData="></script>
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

<body class="body-board body-write pc"  >
<div class="content">
<div class="board_zone_sec">


	<div class="board_zone_tit">
		<h2>1:1 문의</h2>
	</div>	

	<div class="board_zone_cont">
		<form name="frmWrite" id="frmWrite" action="./board_ps.jsp" method="post" enctype="multipart/form-data" class="frmWrite">
			<input type="hidden" name="bdId" value="qa">
			<input type="hidden" name="sno" value="">
			<input type="hidden" name="mode" value="write">
			<!--<input type="hidden" name="chkSpamKey" id="chkSpamKey">-->
			<input type="hidden" name="returnUrl" value="noheader=y&memNo=85762&mypageFl=y&bdId=qa">

			<div class="board_zone_write">
				<div class="board_write_box">
					<table class="board_write_table">
						<colgroup>
							<col style="width:12%" />
							<col style="width:88%" />
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">말머리</th>
							<td>
								<div class="category_select"  style="width:312px;">
									<select class=" tune" id="category" name="category" style="width:127px;"><option value="">문의 유형을 선택해주세요.</option><option value="[정기배송] 수령일 변경"  >[정기배송] 수령일 변경</option><option value="[정기배송] 제품 변경"  >[정기배송] 제품 변경</option><option value="[정기배송] 주소지 변경"  >[정기배송] 주소지 변경</option><option value="반품/환불/교환 문의"  >반품/환불/교환 문의</option><option value="기타 문의"  >기타 문의</option><option value="오배송/불량 문의"  >오배송/불량 문의</option><option value="입금확인 문의"  >입금확인 문의</option></select>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">작성자</th>
							<td>
								테스터
							</td>
						</tr>
						<tr>
							<th scope="row">제목</td>
							<td><input type="text" name="subject" value=""></td>
						</tr>
						<tr>
							<th scope="row">본문</th>
							<td class="write_editor">
								<div class="form_element">
									<em>해당글은 비밀글로만 작성이 됩니다.</em>
								</div>
								<textarea id="editor" name="contents" cols="30" rows="10" style="width:805px; "></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">첨부파일</th>
							<td id="uploadBox">


								<div class="file_upload_sec">
									<label for="attach">
										<input type="text" class="file_text" title="파일 첨부하기" readonly="readonly">
									</label>
									<div class="btn_upload_box">
										<button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
										<input type="file" id="attach" name="upfiles[]" class="file" title="찾아보기"/>
										<span class="btn_gray_list"><button type="button" id="addUploadBtn" class="btn_gray_big"><span>+ 추가</span></button></span>
									</div>
								</div>

							</td>
						</tr>
						</tbody>
					</table>
				</div>
				<!-- //board_write_box -->

			</div>
			<!-- //board_zone_write -->

			<div class="btn_center_box">
				<button type="button" class="btn_before" onclick="javascript:history.back()"><strong>이전</strong></button>
				<button type="submit" class="btn_write_ok"><strong>저장</strong></button>
			</div>

		</form>
	</div>
	<!-- //board_zone_cont -->

</div>
<!-- //board_zone_sec -->


<script type="text/javascript">
	var cfgUploadFl = 'y';
	var cfgEditorFl = 'y';
	var bdId = 'qa';
	var bdSno = '';
	gd_select_email_domain('writerEmail');
</script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_write.js" charset="utf-8"></script>
<script type="text/template" class="template">
	<div class="file_upload_sec">
		<label for="attach<%-- <%=idx%> --%>">
			<input type="text" class="file_text" title="파일 첨부하기" readonly="readonly">
		</label>
		<div class="btn_upload_box">
			<button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
			<input type="file" id="attach<%-- <%=idx%> --%>" name="upfiles[]" class="file" title="찾아보기"/>
			<span class="btn_gray_list"><button type="button" class="btn_gray_big" onclick="gd_remove_upload(this)"><span>- 삭제</span></button></span>
		</div>
	</div>
</script>
<script type="text/javascript">
	var editorPath = '/data/skin/front/kaimen_pc_n/js/smart';
</script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/smart/js/HuskyEZCreator.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/smart/js/editorLoad.js"></script>
<div id="addGoodsLayer" class="dn"></div>
<div id="addOrderLayer" class="dn"></div>
<script id="selectGoodsTblTr" type="text/html">
	<div class="goods_select_item js_select_item">
    <span class="select_item_img">
        <input type="hidden" name="goodsNo[]" value="<%-- <%=goodsNo%> --%>">
        <a href="../goods/goods_view.jsp?goodsNo=<%-- <%=goodsNo%> --%>" target="_blank">
			<img src="<%-- <%=goodsImgageSrc%> --%>" height="80" width="80" alt="">
		</a>
    </span>
    <span class="select_item_info">
        <em><%-- <%=goodsName%> --%></em>
        <strong><%-- <%=goodsPrice%> --%></strong>
        <button type="button" class="btn_goods_item_del js_select_remove"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_goods_del.png" alt="선택 상품 삭제"></button>
    </span>
	</div>
</script>
<script id="selectOrderTblTr" type="text/html">
	<div class="goods_select_item js_select_item">
        <span class="select_item_img">
            <input type="hidden" name="orderGoodsNo[]" value="<%-- <%=orderGoodsNo%> --%>">
            <a href="../goods/goods_view.jsp?goodsNo=<%-- <%=orderGoodsNo%> --%>" target="_blank">
				<img src="<%-- <%=goodsImgageSrc%> --%>" alt="">
			</a>
        </span>
        <span class="select_item_info">
            <em><%-- <%=goodsName%> --%></em>
            <div><%-- <%=optionName%> --%></div>
            <strong><%-- <%=goodsPrice%> --%></strong>
            <button type="button" class="btn_goods_item_del js_select_remove"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_goods_del.png" alt="선택 상품 삭제"></button>
        </span>
	</div>
</script>

	<link rel="stylesheet" href="http://localhost/salad_mvc/resources/css/selectric.css">
	<script src="http://localhost/salad_mvc/resources/js/jquery.selectric.js"></script>
	<script>
		$(function() {
		  $('select').selectric();
		});
	</script>

</div>
<!-- //content -->
<!-- 절대! 지우지마세요 : Start -->
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="900" height="500"></iframe>
<!-- 절대! 지우지마세요 : End -->

</body>
</html>