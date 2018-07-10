$(document).ready =>
    $("#form").hide()
    $("nav#pages").css "left", "-80px"
    $("nav#user-nav").css "right", "-80px"
    navLeftOpen = false;
    navRightOpen = false;
    showPageOpen = false;
    $("#nav-button-left").click =>
        if navLeftOpen then $("nav#pages").css "left", "-80px"
        else $("nav#pages").css "left", "0px"
        navLeftOpen = !navLeftOpen
    $("#nav-button-right").click =>
        if navRightOpen then $("nav#user-nav").css "right", "-80px"
        else $("nav#user-nav").css "right", "0px"
        navRightOpen = !navRightOpen    
    $("nav .button-container").hover =>
        $("nav .bar").addClass("hidden-i")
    , =>
        $("nav .bar").removeClass("hidden-i")
    $("nav#pages li").click ->
        $(".center-bar .alterable").text($(this).text())
    $(".show").click =>
        if !showPageOpen then $("#form").show()
        else $("#form").hide()
        showPageOpen = !showPageOpen
    $("#form .close").click =>
        $("#form").hide()
        $(".product-type").attr("value", $(this).text().toLowerCase().trim())
