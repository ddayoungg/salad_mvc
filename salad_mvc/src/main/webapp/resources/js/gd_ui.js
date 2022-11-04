$(function(){
    if ($('#scroll_right, #scroll_left').length > 0) {
        $('#scroll_right, #scroll_left').gb_quick_menu({
            //HEADER_ID: '#header_warp'
        });
    }
	// top�쇰줈 �대룞
	$('.btn_scroll_top a').click(
		function() {
			$('html, body').stop().animate({scrollTop: $('body').offset().top}, 300);
			return false;
		}
	);
});

$(function(){
    var cateArray = new Array('','','','');
    var arrayNum = 0;
    var menupage = 0;
    var total_width = $('.gnb_menu_box').innerWidth();
    var gd_display_cate = function(){
        var depth1 = 0;
        $('.gnb_menu_box > ul > li').each(function(){
            depth1 += $(this).innerWidth();
            if(depth1 > total_width){
                arrayNum++;
                depth1 =0;
                depth1 += $(this).innerWidth();
                cateArray[arrayNum] += "<li>"+$(this).html()+"</li>";
            }else{
                cateArray[arrayNum] += "<li>"+$(this).html()+"</li>";
            }
        });
        $('.gnb_menu_box > ul').html(cateArray[0]);
        $('#header .gnb .depth0').css({
            'overflow':'visible',
            'height':'100%',
        });
    };
    gd_display_cate();
    /* �곷떒 硫붾돱 */
    var gd_topmenu = function(){
        $('.depth0 li').on({
            'mouseover':function(){
                $(this).find('> ul').stop(true,true).fadeIn('fast');
                $(this).find('> a').addClass('active');
                //console.log('open');
            },
            'mouseleave':function(){
                $(this).find('> ul').stop(true,true).fadeOut('fast');
                $(this).find('> a').removeClass('active');
                //console.log('hide');
            }
        });
    };
    gd_topmenu();

    /* 硫붾돱 �곗륫 踰꾪듉 */
    $('.gnb_right').on({
        'click':function(){
            if(arrayNum > menupage){
                menupage++;
                if(menupage == arrayNum) $(this).find('a').addClass('active');
                $('.gnb_left').find('a').removeClass('active');
                $('.gnb_menu_box > ul').html(cateArray[menupage]);
                gd_topmenu();
            }
        }
    });
    /* 硫붾돱 醫뚯륫 踰꾪듉 */
    $('.gnb_left').on({
        'click':function(){
            if(arrayNum >= menupage && menupage != 0){
                menupage--;
                if(menupage == 0) $(this).find('a').addClass('active');
                $('.gnb_right').find('a').removeClass('active');
                $('.gnb_menu_box > ul').html(cateArray[menupage]);
                gd_topmenu();
            }
        }
    });



    /* �꾩껜硫붾돱 踰꾪듉 */
    /*
    $('.gnb_all').on({
        'click':function(){
            if($('.gnb_allmenu').css('display') =='none') $('.gnb_allmenu').stop(true,true).slideDown('fast');
            else $('.gnb_allmenu').slideUp('fast');

        }
    });
    */

    $ ( '.layer_type .sub_depth0 li'). on ({
        'mouseover': function () {
            $ (this) .find ( '> ul'). stop (true, true) .fadeIn ( 'fast');
            $ (this) .find ( '> a'). addClass ( 'active');
            //console.log('open ');
        },
        'mouseleave': function () {
            $ (this) .find ( '> ul'). stop (true, true) .fadeOut ( 'fast');
            $ (this) .find ( '> a'). removeClass ( 'active');
            //console.log('hide ');
        }
    });

    /* �댁쇅紐� �덉븘�댁퐯 ���� �좏깮��(援�린) */
    $('.top_country_list1 .country_tit').on({
        'click':function(){
            if($(this).parent().find('ul').css('display') =='none'){
                $(this).addClass('active');
                $(this).parent().find('ul').slideDown('fast');
            }else{
                $(this).parent().find('ul').slideUp('fast');
                $(this).removeClass('active');
            }
        }
    });

    /* �댁쇅紐� �덉븘�댁퐯 ���� �좏깮��(援�린,�몄뼱) */
    $('.top_country_list2 .country_tit').on({
        'click':function(){
            if($(this).parent().find('ul').css('display') =='none'){
                $(this).addClass('active');
                $(this).parent().find('ul').slideDown('fast');
            }else{
                $(this).parent().find('ul').slideUp('fast');
                $(this).removeClass('active');
            }
        }
    });

    /* location 寃쎈줈 */
    $('.location_select').on({
        'mouseenter':function() {
            if ($(this).find('ul').css('display') == 'none') {
                $(this).find('.location_tit').addClass('active');
                $(this).find('ul').slideDown('fast');
            }
        },
        'mouseleave':function() {
            $(this).find('ul').slideUp('fast');
            $(this).find('.location_tit').removeClass('active');
        }
    });

    /* �곷떒 留덉씠�섏씠吏� �덉씠�� */
    $('.top_mypage_cont').on({
        'mouseenter':function(){
            if($(this).find('ul').css('display') =='none'){
                $(this).find('.top_mypage_tit').addClass('active');
                $(this).find('ul').show();
            }
        },
        'mouseleave':function(){
            $(this).find('ul').hide();
            $(this).find('.top_mypage_tit').removeClass('active');
        }
    });

    /* �곷떒 寃��� */
    $('.top_search_cont input[name="keyword"]').on({
        'focus':function(){
            if($("input[name=recentCount]").val() > 0) {
                $(this).parents().find('.search_cont').show();
            }
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

    /* �덉씠��, 異붽� �댁슜 */
    $('.btn_common_box, .btn_layer').find('a').on({
        'click':function(e){
            var tg = $(this).attr('href');
            if(tg.substr(0, 1) == '#'){
                e.preventDefault();
                if($(tg).css('display') == 'none'){
                    $(tg).show();
                    $(tg).find('.ly_close').attr('href',tg);
                }else{
                    $(tg).hide();
                }
            }
        }
    });
    $('.ly_close').on({
        click:function(){
            var tg = $(this).attr('href');
            if (tg.substr(0, 1) == '#') {
                $(tg).hide();
            }

            if ($(this).parents('.js_password_layer').length) {
                $('.js_password_layer').find('input[name="writerPw"]').val('');
            }
        }
    });
});

function gd_btn_all_menu_close(){
    $('.gnb_allmenu').slideUp('fast');
}

$(document).ready(function() {
    /* �듦��� */
    var qs_id = $('#quick_search');
    var cname = qs_id.attr('class');
    var position, position_m;

    if(cname == 'q_left'){
        position = qs_id.innerWidth();
        qs_id.css('left','-'+position+'px');
    }else if(cname == 'q_right'){
        position = qs_id.innerWidth();
        qs_id.css('right','-'+position+'px');
    }else{
		$(window).load(function(){
			position = qs_id.innerHeight();
			qs_id.css('top','-'+position+'px');
		});
    }
    position_m = position;

    function gd_quick_motion(){
		
        if(cname == 'q_left'){
            if(qs_id.css('left') == '0px') position_m = '-'+ position;
            else position_m = 0;
			
            qs_id.animate({
            left : position_m
            }, 500, function(){
                //console.log(position_m);
            });
        }else if(cname =='q_right'){
            if(qs_id.css('right') == '0px') position_m = '-'+ position;
            else position_m = 0;

            qs_id.animate({
            right : position_m
            }, 500, function(){
                //console.log(position_m);
            });
        } else {
            if(qs_id.css('top') == '0px') position_m = '-'+ position;
            else position_m = 0;
			
            qs_id.animate({
            top : position_m
            }, 500, function(){
                //console.log(position_m);
            });

        }
        if(position_m == 0) $('.quick_search_cont').addClass('on');
        else $('.quick_search_cont').removeClass('on');
    }
    $('#quick_search .btn_quick_search_open, #quick_search .btn_quick_search_close').on({
        'click':function(){
            gd_quick_motion();
        }
    });

    /* �듦��� 而щ윭 & �쒗깮議곌굔 */
    $('.color_box span label, .benefit_box span label').on({
        'click':function(){
            if(!$(this).parent().find('input').is(':checked')) $(this).addClass('active');
            else $(this).removeClass('active');
        }
    });

	$('.btn_all_menu_open').on('click',function(){
        gd_btn_all_menu_open();
    });

});

// �덉씠�대컯�� �쇳꽣�뺣젹 �뚮윭洹몄씤 (理쒖긽��)
jQuery.fn.center = function() {
    var top = ($(window).height() - this.outerHeight()) / 2;
    var left = ($(window).width() - this.outerWidth()) / 2;

    this.css({
        position:'absolute',
        margin:0,
        top: (top > 0 ? top : 0) + 'px',
        left: (left > 0 ? left : 0) + 'px'
    });

    return this;
};

// �덉씠�대컯�� �쇳꽣�뺣젹 �뚮윭洹몄씤 (�꾩옱�꾩튂)
jQuery.fn.currentCenter = function() {
    this.css({
        'position': 'fixed',
        'left': '50%',
        'top': '50%'
    });

    this.css({
        'margin-left': -this.outerWidth() / 2 + 'px',
        'margin-top': -this.outerHeight() / 2 + 'px'
    });

    return this;
};

/* �ㅽ겕濡ㅻ같��(�ㅻⅨ履�) */
(function (){
   $.fn.gb_quick_menu = function(options){
      //珥덇린媛�
      var defaults = {
         HEADER_ID: '.scroll_wrap',
         FIXED_CLS: 'ban_fixed',
         FIXED_SIZE :1450,
         LEFT_QUICK_ID : '#scroll_left',
         CONTENTS_WARP : '#wrap',
      };
      //珥덇린媛� �듭뀡 諛곗뿴 ����
      var options = $.extend({}, defaults, options);
      var el = $(this);
      var scqTop = 0;
      var quickTop = $(options.HEADER_ID).offset().top-49;
      var qucik_left = $(options.LEFT_QUICK_ID).css('left');

        $(window).on({
            'resize':function(){
                //gd_leftmove();
            },
            'scroll':function(){	
                var win_width = $(window).innerWidth();
                scqTop = $(this).scrollTop();
                if(scqTop <= quickTop){
                    el.removeClass(options.FIXED_CLS).removeAttr('style');
                }else{
                    if(win_width > options.FIXED_SIZE){
                        el.addClass(options.FIXED_CLS).removeAttr('style');
                    }else{
                        el.removeClass(options.FIXED_CLS).removeAttr('style');
                        el.stop(true,true).css('top', (scqTop-quickTop+20));

                    }
                }
            }
        });
		/*
        var gd_leftmove = function(){
            var win_width = $(window).innerWidth();
            if(win_width <= options.FIXED_SIZE){
                gd_left_animate(qucik_left);
            }else{
                gd_left_animate(0);
            }
        };
        var gd_left_animate = function(left_quick_position){
            $('#wrap').stop(true,true).animate({
                'marginLeft':left_quick_position,
            },'5000',function(){

            });
        };
        $(window).load(function(){
        gd_leftmove();
        })
		*/
   };
})(jQuery);

// 泥댄겕諛뺤뒪 泥섎━ 濡쒖쭅 珥덇린��
function gd_init_checkbox_ui() {
    $(document).on('click', 'input[type=radio]', function(e){
        $(this).parents('form:first').find("input[name='" + $(this).prop("name") + "']").each(function() {
            if ($(this).prop("checked")) {
                $("label[for=" + $(this).attr("id") + "]").addClass("on");
            } else {
                $("label[for=" + $(this).attr("id") + "]").removeClass("on");
            }
        });
    });

    $(document).on('click', 'input[type=checkbox]', function(e){
        if($(this).prop('readonly') === false) {
            if($(this).prop("checked")) {
                $("label[for="+$(this).attr("id")+"]").addClass("on");
            } else {
                $("label[for="+$(this).attr("id")+"]").removeClass("on");
            }
        } else {
            e.preventDefault();
        }
    });
}

// �쇰뵒�ㅻ컯��,泥댄겕諛뺤뒪 �대�吏��� �ㅽ겕由쏀듃
function gd_trigger_checkbox_ui() {
    var $input = $('input[type=radio], input[type=checkbox]');
    // �쒗뵆由우뿉�� check 泥섎━�� 寃쎌슦 �덉쇅泥섎━ 異붽�
    if(!$input.find('label.on')){
        $input.each(function(){
            var $item = $("label[for="+$(this).attr("id")+"]");
            if($(this).prop("checked")) {
                $item.addClass("on");
            } else {
                $item.removeClass("on");
            }
        });
    }
}

// 泥댄겕諛뺤뒪 �꾩껜 �좏깮
function gd_checkbox_all() {
    // 泥댄겕諛뺤뒪 �꾩껜 �좏깮 �대깽��
    if ($(':checkbox.gd_checkbox_all').length > 0) {
        // �대깽�� 以묐났 �ㅽ뻾�� 留됱븘以���.
        $(':checkbox.gd_checkbox_all').off('click');
        $(':checkbox.gd_checkbox_all').click(function (e) {
            var $target = $(e.target);
            var targetName = $target.data('target-name');
            var targetId = $target.data('target-id');
            var targetFormName = $target.data('target-form');
            if (typeof targetFormName == 'undefined') targetFormName = "";
            if (_.isUndefined(targetId)) {
                $(targetFormName + ' :checkbox[name="' + targetName + '"]').prop('checked', !$target.prop('checked')).trigger('click');
            } else {
                $(targetFormName + ' :checkbox[id*="' + targetId + '"]').prop('checked', !$target.prop('checked')).trigger('click');
            }
        });
    }
}

// �덉씠�� 諛뺤뒪 �대깽��
function gd_center_layer(){
    //$('.btn_open_layer').off('click');
    $(document).on('click', '.btn_open_layer', function() {
        // @qnibus �덉씠�� �덉뿉 �덉씠�닿� �덈뒗 寃쎌슦 醫낆냽�� 蹂댁씠吏� �딅뒗 �덉씠�닿� �대� �좎엳�� �덉씠�� 湲곗��쇰줈 center 泥섎━ �섏뼱 蹂댁뿬�� �덉씠�꾩썐�� 源⑥쭚
        $('.layer_wrap').removeAttr('style');
		$('body').css('overflow','hidden');
        var target = $(this).attr('href');
        $(target).removeClass('dn');
        $('#layerDim').removeClass('dn');
        $(target).find('> div').center();

        return false;
    });

    $(document).on('click', '.layer_wrap .layer_close, .btn_box .btn_cancel', function(){
        $(this).closest('.layer_wrap').addClass('dn');
        // 李쎌씠 2媛� �댁긽 �좎엳�� 寃쎌슦 Dim泥섎━ �덈릺寃�
        if (!$('.layer_wrap').is(':visible')) {
            $('#layerDim').addClass('dn');
			$('body').removeAttr('style');
        }
        return false;
    });
}

// �덉씠�� 諛뺤뒪 李쎈떕湲� (�꾩옱 �대젮 �덈뒗 李쎈쭔 �ル뒗��)
function gd_close_layer() {
    if ($('.layer_wrap').is(':visible') || $('#layerDim').is(':visible')) {
        if ($('.layer_wrap .layer_close, .btn_box .btn_cancel').length > 0) {
            $('.layer_wrap .layer_close, .btn_box .btn_cancel').trigger('click');
        } else {
            // �ㅻ쭔 �좎엳�� 寃쎌슦
            $('.layer_wrap').addClass('dn');
            $('#layerDim').addClass('dn');
        }
    }
}

// chosen ���됲듃 諛뺤뒪
function gd_select_remodeling() {
    var selector = '.chosen-select';
    var config = {
        disable_search_threshold: 10,
        no_results_text: __('寃��됯껐怨쇨� �놁뒿�덈떎.')
    };

    if ($(selector).length > 0) $(selector).chosen(config);
}

// 移댄듃�� �덉씠��
function gd_carttab_layer() {
    $('.cart_tab_list li > a').on({
        'click':function() {
            if ($(this).hasClass('btn_alert_login') == false) {
                $('.btn_shop_cart_box .btn_shop_cart_close').show();
                $(this).parent().addClass('on').siblings().removeClass('on');
                $('#shop_cart_wrap .shop_cart_cont > .cart_tab_box').eq($(this).index()).fadeIn('fast').siblings().removeClass('on').hide();
                $('.shop_cart_cont').slideDown('fast');
                gd_cart_tab_action($(this).attr('href'));
            }
        }
    });

    $('.btn_shop_cart_box .btn_shop_cart_open, .btn_shop_cart_box .btn_shop_cart_close').on({
        'click':function() {
            if ($('.shop_cart_cont').css('display') != 'none') {
                $('.shop_cart_cont').slideUp('fast');
                $('.btn_shop_cart_box .btn_shop_cart_close').hide();
                $('.btn_shop_cart_box .btn_shop_cart_open').show();
                $('.cart_tab_list li').removeClass('on');
            } else {
                $('.cart_tab_list li').eq(0).addClass('on');
                $('.cart_tab_box').eq(0).addClass('on');
                $('.shop_cart_cont').slideDown('fast');
                $('.btn_shop_cart_box .btn_shop_cart_close').show();
                $('.btn_shop_cart_box .btn_shop_cart_open').hide();
                $('#shop_cart_wrap .shop_cart_cont > .cart_tab_box').hide().eq(0).fadeIn('fast');
                gd_cart_tab_action('#cart_tab_today');
            }

            $('.chart_view_horizontal ul').slick('reinit');
        }
    });
}

// �뚯씪泥⑤� 袁몃�湲�
function gd_file_attach() {
    $(document).on('change', '.file_upload_sec .file', function(){
        var i = $(this).val();
        $('label[for=' + $(this).attr('id') + ']').find('.file_text').val(i);
    });
}

/*
 移댄뀒怨좊━/釉뚮옖�� 移댄뀒怨좊━ 留덉슦�� �ㅻ쾭
 */
function gd_menu_over() {

    $(document).on('mouseenter mouseleave', 'img.gd_menu_over', function (event) {
        $(this).attr({
            src: $(this).attr('data-other-src')
            , 'data-other-src': $(this).attr('src')
        });

    });

    $(document).on('mouseenter', 'span.gd_menu_over', function (event) {
        var width = $(this).closest("strong").width();
        var height = $(this).closest("strong").height() - 7;
        $(this).html("<img src='" + $(this).data('other-src') + "' style='max-width:" + width + "px;max-height:" + height + "px'>");

    });

    $(document).on('mouseleave', 'span.gd_menu_over', function (event) {
        $(this).html($(this).data('other-text'));
    });
}

function gd_btn_all_menu_open(){

    $.ajax({
        method: "POST",
        cache: false,
        url: "../goods/goods_ps.php",
        data: "mode=get_all_category",
        success: function(data) {
            var getData = $.parseJSON(data);
            if(data =='false') {
                $(".gnb_allmenu_box").html('');
            }else{
                var addHtml = '<div class="gnb_allmenu" style="display:none;"><div class="gnb_allmenu_box">'
                addHtml += '<ul>';
                $.each(getData, function (categoryKey, categoryVal) {
                    $.each(categoryVal, function (key, val) {
                        addHtml += '<li style="width:20%;"><div class="all_menu_cont"><a href="../goods/goods_list.php?cateCd='+val.cateCd+'">'+val.cateNm+'</a>';
                        if(val.children) {
                            addHtml += '<ul class="all_depth1">';
                            $.each(val.children, function (key1, val1) {
                                addHtml += '<li><a href="../goods/goods_list.php?cateCd='+val1.cateCd+'">'+val1.cateNm+'</a>';
                                if(val1.children) {
                                    addHtml += '<ul class="all_depth2">';
                                    $.each(val1.children, function (key2, val2) {
                                        addHtml += '<li><a href="../goods/goods_list.php?cateCd='+val2.cateCd+'">'+val2.cateNm+'</a>';
                                        if(val2.children) {
                                            addHtml += '<ul class="all_depth3">';
                                            $.each(val2.children, function (key3, val3) {
                                                addHtml += '<li><a href="../goods/goods_list.php?cateCd='+val3.cateCd+'">'+val3.cateNm+'</a></li>';
                                            });
                                            addHtml += '</ul>';
                                        }
                                        addHtml += '</li>';
                                    });
                                    addHtml += '</ul>';
                                }
                                addHtml += '</li>';
                            });
                            addHtml += '</ul>';
                        }
                        addHtml += '</div></li>';
                    });
                });
                addHtml += '</ul>';
                addHtml += '</div><span class="btn_all_menu_close" onClick="gd_btn_all_menu_close();">�꾩껜硫붾돱�リ린</span><span class="btn_all_menu_close btn_all_menu_close2" onClick="gd_btn_all_menu_close();">�꾩껜硫붾돱�リ린</span></div>'
                $(".gnb_allmenu_wrap").html(addHtml);
                $('.gnb_allmenu').stop(true,true).slideDown('fast');
            }
        },
        error: function (data) {
            alert(data.message);
        }
    });

};

// �⑥닔 �몄텧

$(document).ready(function() {
    gd_init_checkbox_ui();
    gd_trigger_checkbox_ui();
    gd_checkbox_all();
    gd_center_layer();
    gd_carttab_layer();
    gd_select_remodeling();
    gd_file_attach();
	gd_menu_over();




});

