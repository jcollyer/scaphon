var ready;
ready = function() {

  //nav scroll animation color
  var theBody = $("body");
  var theNav  = $("#nav");
  $(window).scroll(function(){
    opcity = Math.ceil(theBody.scrollTop() * 0.1) * 0.1;
    theNav.css("background","rgba(255,255,255, "+opcity+")");
  });


  // fixed elements setup
  var nav = document.getElementById("nav");
  var footer = document.getElementById("footer");
  var content = document.getElementById("content");
  if (nav) {var navHeight = nav.offsetHeight;};
  if (footer){var footerHeight = footer.offsetHeight;};
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

  var windowHeight = $(window).height() - 88;
  $("#user-table").css("height",windowHeight);

};
$(document).ready(ready);
$(document).on('page:load', ready);

 // paypal - ensure document is ready
  var paypal = $('#initial_paypal_code');
  var ppcode = $('#new_pp_code');
  var code = paypal.text();
  ppcode.append(code);
