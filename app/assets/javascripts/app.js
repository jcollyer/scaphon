var ready;
ready = function() {

  // ...your javascript goes here...

  $(window).scroll(function(){
    opcity = Math.ceil($("body").scrollTop() * 0.1) * 0.1;
    $("#nav").css("background","rgba(255,255,255, "+opcity+")");
  });

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

  var checkAllButton = $(".check-all");
  checkAllButton.click(function(){
    var checked = $(this).closest('table').find(':checkbox');
    var allChecked = $(this).hasClass("all-checked");
      // debugger;
    if (!allChecked){
      checked.prop( "checked", true );
      $(this).addClass("all-checked");
    } else {
      checked.prop( "checked", false );
      $(this).removeClass("all-checked");
    };
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
