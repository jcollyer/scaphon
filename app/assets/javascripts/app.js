$(function(){
  //paypal - not sure why i need to do this
  var paypal = $('#initial_paypal_code');
  var ppcode = $('#new_pp_code');
  var code = paypal.text();
  ppcode.append(code);
});

