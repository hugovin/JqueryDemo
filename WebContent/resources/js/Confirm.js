 
$(document).ready(function() {
    jQuery("#btnConfirm").attr("disabled", true);
     
    var $box = $("#scrollPane"),
    $inner = $("> .inner", $box),
    innerOuterHeight = $inner.outerHeight();
    boxHeight = $box.height();
    boxOffsetTop = $box.offset().top;
     
    jQuery("#scrollPane").scroll(function() {
        if (Math.ceil(boxHeight - $inner.offset().top + boxOffsetTop) >= innerOuterHeight ) {
        jQuery("#btnConfirm").removeAttr("disabled").removeClass('btn btn-small').addClass("button blue");
    }
 });
});