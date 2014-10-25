$(function(){
  //paypal - ensure document is ready
  var paypal = $('#initial_paypal_code');
  var ppcode = $('#new_pp_code');
  var code = paypal.text();
  ppcode.append(code);


  var footerHeight = document.getElementById("footer").offsetHeight;
  var navHeight = document.getElementById("nav").offsetHeight;
  var topBarHeight = document.getElementById("top-bar").offsetHeight;
  var content = document.getElementById("content");

  content.style.marginBottom = footerHeight + "px";
  content.style.marginTop = navHeight + topBarHeight + "px";
  // document.getElementById("footer-buffer").style.paddingBottom = height + 'px';
});

