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

var ready;
ready = function() {

  // ...your javascript goes here...


  // paypal - ensure document is ready
  var paypal = $('#initial_paypal_code');
  var ppcode = $('#new_pp_code');
  var code = paypal.text();
  ppcode.append(code);


  // fixed elements setup
  var footerHeight = document.getElementById("footer").offsetHeight;
  var navHeight = document.getElementById("nav").offsetHeight;
  var content = document.getElementById("content");

  content.style.marginBottom = footerHeight + "px";
  content.style.marginTop = navHeight + "px";

};

$(document).ready(ready);
$(document).on('page:load', ready);
