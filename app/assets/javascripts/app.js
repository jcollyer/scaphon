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

  $("#close-flash").click(function(){
    $("#flash").fadeOut();
  });

  var passwordMatch = function() {
    var password = $("#user_password").val();
    var passwordConf = $("#user_password_confirmation").val();
    if (password != passwordConf) {
      alert("please match passwords, thanks!");
    }
  };

  var editUserSubmit = $("#edit_user_submit");
  editUserSubmit.click(function(){
    passwordMatch();
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
