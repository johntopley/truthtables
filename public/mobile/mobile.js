if (window.navigator.standalone) {
  $("#installation").hide();
  var $container = $("#container");
  $container.attr("id", "jqt");
  $container.show();
  jQT = new $.jQTouch({
    statusBar: "black",
    preloadImages: [
    "/false.png",
    "/info.png",
    "/table.png",
    "/true.png",
    "/mobile/jqtouch/themes/apple/img/backButton.png",
    "/mobile/jqtouch/themes/apple/img/chevron.png",
    "/mobile/jqtouch/themes/apple/img/listGroup.png",
    "/mobile/jqtouch/themes/apple/img/pinstripes.png",
    "/mobile/jqtouch/themes/apple/img/selection.png",
    "/mobile/jqtouch/themes/apple/img/thumb.png",
    "/mobile/jqtouch/themes/apple/img/toggle.png",
    "/mobile/jqtouch/themes/apple/img/toggleOn.png",
    "/mobile/jqtouch/themes/apple/img/toolbar.png",
    "/mobile/jqtouch/themes/apple/img/toolButton.png"
    ]
  });
} else {
  $("#installation").show();
  var ctx = document.getCSSCanvasContext("2d", "arrow", 30, 30);
  ctx.fillStyle = "rgb(255,255,255)";
  ctx.beginPath();
  ctx.moveTo(0, 0);
  ctx.lineTo(30, 0);
  ctx.lineTo(15,23);
  ctx.closePath();
  ctx.fill();
}