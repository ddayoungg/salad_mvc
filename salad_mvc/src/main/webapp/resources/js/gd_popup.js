/**
 * �앹뾽 泥섎━ �ㅽ겕由쏀듃
 * @author Shin Donggyu <artherot@godo.co.kr>
 */

var popupCode = new Array();

$(function() {
    $.ajax({
        type: 'GET',
        url: '../popup/popup_ps.php',
        data: {'mode':'popupOpen','currentUrl':location.href},
        dataType: 'json',
        async: true
    }).done(function(data) {
        if (_.isUndefined(data.error)) {
            var popupCookie = $.cookie();
            for(var key in popupCookie){
                for(var i=0;i<data.length; i++) {
                    if(key === data[i].popupCode){
                        data.splice(i,1);
                        break;
                    }
                }
            }
            $.each(data, function (key, value) {
                if (value.popupKindFl == 'window') {
                    gd_main_popup_window(value);
                } else {
                    if (value.popupSkin == 'top') {
                        gd_main_popup_top(value);
                    } else {
                        gd_main_popup_layer(value, value.popupKindFl);
                    }
                }
            });
        }
    });
});

/**
 * �쇰컲�앹뾽李�
 */
function gd_main_popup_window(v) {
    var property = new Array();
    if (v.sizeTypeW == '%') {
        v.popupSizeW = ($(window).width() * (Number(v.popupSizeW) / 100)) - 100;
    }
    if (v.sizeTypeH == '%') {
        v.popupSizeH = ($(window).height() * (Number(v.popupSizeH) / 100)) - 102;
    }
    property.push('scrollbars=no, toolbar=no');
    if (v.popupSizeW != '') {
        property.push('width='+v.popupSizeW);
    }
    if (v.popupSizeH != '') {
        property.push('height='+v.popupSizeH);
    }
    if (v.popupPositionT != '') {
        property.push('top='+v.popupPositionT);
    }
    if (v.popupPositionL != '') {
        property.push('left='+v.popupPositionL);
    }
    var property = property.join(',');
    var win = window.open('../popup/popup.php?sno='+v.sno, v.popupCode, property);
    if (win) {
        win.focus();
    }
}

/**
 * 怨좎젙�덉씠�� & �대룞�덉씠��
 */
function gd_main_popup_layer(v, type) {
    if (v.sizeTypeW == '%') {
        v.popupSizeW = ($(window).width() * (Number(v.popupSizeW) / 100)) - 100;
    }
    if (v.sizeTypeH == '%') {
        v.popupSizeH = ($(window).height() * (Number(v.popupSizeH) / 100)) - 102;
    }
    var cssAttr = {'position':'absolute','overflow':'hidden', 'z-index':'300'};
    if (v.popupSizeW != null && v.popupSizeW != '') {
        cssAttr.width = (v.popupSizeW+36)+'px';
    }

    popupCode.push(v.popupCode);

    v.popupSizeH = (v.todayUnSee == 'y') ? v.popupSizeH+117 : v.popupSizeH+67;

    if (v.popupSizeH != null && v.popupSizeH != '') {
        cssAttr.height = v.popupSizeH+'px';
    }
    if (v.popupPositionT != null && v.popupPositionT != '') {
        cssAttr.top = v.popupPositionT+'px';
    } else {
        cssAttr.top = '0px';
    }
    if (v.popupPositionL != null && v.popupPositionL != '') {
        cssAttr.left = v.popupPositionL+'px';
    } else {
        cssAttr.left = '0px';
    }

    cssAttr.paddingBottom = '10px';

    var ele = $('<div />').attr('id', v.popupCode).attr('class', 'main_popup_layer').css(cssAttr);
    $.ajax({
        type: 'GET'
        , url: '../popup/popup.php?sno='+v.sno
        , async: false
        , success: function(data) {
            ele.append(data);
        }
    });
    ele.appendTo('body');

    gd_main_popup_layer_mousedown(v);

    if (type == 'move') {
        ele.drags();
    }
}

/**
 * �대┃�� �앹뾽 留� �꾨줈 �몄텧 泥섎━
 */
function gd_main_popup_layer_mousedown(v) {
    $('.main_popup_layer').on('mousedown', function(){
        for(var k in popupCode) {
            if (popupCode[k] != $(this).attr('id')) {
                $('#' + popupCode[k]).css('z-index', 200);
            }
        }
        if (v.popupCode == $(this).attr('id')) {
            $(this).css('z-index', 2000);
        }
    })
}

/**
 * �곷떒 怨좎젙 �덉씠��
 */
function gd_main_popup_top(v) {
    var cssAttr = {'z-index':'100', 'position':'absolute', 'top':'0', 'left':'0', 'width':'100%'};
    var ele = $('<div />').attr('id', v.popupCode).css(cssAttr);
    $.ajax({
        type: 'GET'
        , url: '../popup/popup.php?sno='+v.sno
        , async: false
        , success: function(data) {
            ele.append(data);
        }
    });
    ele.appendTo('.top_area');
}

/**
 * �곷떒 怨좎젙 �덉씠�� �リ린
 */
function gd_hide_top_popup(type, code, t) {
    var hideHeight = maxHeight = minusHeight = 0;
    $('div[id^="popupCode_"]:visible .pc_top_banner').each(function(){
        if (code != $(this).parent().prop('id')) {
            if ($(this).height() > maxHeight) {
                maxHeight = $(this).height();
            }
        } else {
            hideHeight = $(this).height();
        }
    });

    if (hideHeight > maxHeight && (hideHeight - maxHeight) > 0) {
        minusHeight = hideHeight - maxHeight;
    }

    if (minusHeight > 0) {
        if ($('#scroll_left').length > 0) {
            var lTop = Number($('#scroll_left').css('top').replace('px', '')) - minusHeight;
            sLeftTotalHeight -= minusHeight;
            $('#scroll_left').css('top', lTop + 'px');
        }
        if ($('#scroll_right').length > 0) {
            var rTop = Number($('#scroll_right').css('top').replace('px', '')) - minusHeight;
            sRightTotalHeight -= minusHeight;
            $('#scroll_right').css('top', rTop + 'px');
        }
        $('.top_area').height($('.top_area').height() - minusHeight);
    }

    switch (type) {
        case '1':
            gd_popup_cookie(code, t);
            break;
        case '2':
            $('#' + code).hide();
            break;
    }
}

var sLeftHeight = sRightHeight = sLeftTotalHeight = sRightTotalHeight = 0;
$(window).scroll(function(){
    if (sRightHeight > 0) {
        var sRightTop = sRightTotalHeight - sRightHeight;
        if (sRightTop > $(window).scrollTop()) {
            $('#scroll_right').css('top', sRightTotalHeight - $(window).scrollTop() + 'px');
        }
    }
    if (sLeftHeight > 0) {
        var sLeftTop = sLeftTotalHeight - sLeftHeight;
        if (sLeftTop > $(window).scrollTop()) {
            $('#scroll_left').css('top', sLeftTotalHeight - $(window).scrollTop() + 'px');
        }
    }
});

(function($) {
    $.fn.drags = function(opt) {

        opt = $.extend({handle:"",cursor:"move"}, opt);

        if(opt.handle === "") {
            var $el = this;
        } else {
            var $el = this.find(opt.handle);
        }

        return $el.css('cursor', opt.cursor).on("mousedown", function(e) {
            if(opt.handle === "") {
                var $drag = $(this).addClass('draggable');
            } else {
                var $drag = $(this).addClass('active-handle').parent().addClass('draggable');
            }
            var z_idx = $drag.css('z-index'),
                drg_h = $drag.outerHeight(),
                drg_w = $drag.outerWidth(),
                pos_y = $drag.offset().top + drg_h - e.pageY,
                pos_x = $drag.offset().left + drg_w - e.pageX;
            $drag.css('z-index', 1000).parents().on("mousemove", function(e) {
                $('.draggable').offset({
                    top:e.pageY + pos_y - drg_h,
                    left:e.pageX + pos_x - drg_w
                }).on("mouseup", function() {
                    $(this).removeClass('draggable').css('z-index', z_idx);
                });
            });
            e.preventDefault(); // disable selection
        }).on("mouseup", function() {
            if(opt.handle === "") {
                $(this).removeClass('draggable');
            } else {
                $(this).removeClass('active-handle').parent().removeClass('draggable');
            }
        });

    }
})(jQuery);