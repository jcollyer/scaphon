$(function(){
  //paypal - ensure document is ready
  var paypal = $('#initial_paypal_code');
  var ppcode = $('#new_pp_code');
  var code = paypal.text();
  ppcode.append(code);
});

