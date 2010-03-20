var jQT = new $.jQTouch({
  icon: "apple-touch-icon.png",
  //addGlossToIcon: false,
  startupScreen: "apple-touch-startup.png",
  statusBar: "black-translucent",
  preloadImages: [
    "/mobile/jqtouch/themes/apple/img/back_button.png",
    "/mobile/jqtouch/themes/apple/img/back_button_clicked.png",
    "/mobile/jqtouch/themes/apple/img/button_clicked.png",
    "/mobile/jqtouch/themes/apple/img/grayButton.png",
    "/mobile/jqtouch/themes/apple/img/whiteButton.png",
    "/mobile/jqtouch/themes/apple/img/loading.gif"
  ]
});
function drawArrow() {
  var ctx = document.getCSSCanvasContext("2d", "arrow", 30, 30);
  ctx.fillStyle = "rgb(255,255,255)";
  ctx.beginPath();
  ctx.moveTo(0, 0);
  ctx.lineTo(30, 0);
  ctx.lineTo(15,23);
  ctx.closePath();
  ctx.fill();
}
$(document).ready(function() {
  if (!window.navigator.standalone) {
    drawArrow();
  }
});