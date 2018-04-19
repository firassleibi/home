(function (jQuery) {
    window.$ = jQuery.noConflict();
})(jQuery);
jQuery(document).ready(function($) {
  $("#step-billing .next").click(function(){
    payment();
  });
  $("#step-payment .back").click(function(){
    billing();
  });
});

function billing(){
  $("#step-billing").removeClass("hidden");
  $("#step-payment").addClass("hidden");
  $('#billing-tab').attr('class','current');
  $('#payment-tab').attr('class','');
  $('#thank-tab').attr('class','');
  $('html, body').animate({
      scrollTop: $(".entry-content").offset().top
  }, 100);

}

function shipping(){
  $("#step-billing").addClass("hidden");
  $("#step-shipping").removeClass("hidden");
  $("#step-payment").addClass("hidden");
  $('#billing-tab').attr('class','visited');
  $('#shipping-tab').attr('class','current');
  $('#payment-tab').attr('class','');
  $('#thank-tab').attr('class','');
  $('html, body').animate({
      scrollTop: $(".entry-content").offset().top
  }, 100);
}

function payment(){
  $("#step-billing").addClass("hidden");
  $("#step-payment").removeClass("hidden");
  $('#billing-tab').attr('class','visited');
  $('#payment-tab').attr('class','current');
  $('#thank-tab').attr('class','');
  $('html, body').animate({
      scrollTop: $(".entry-content").offset().top
  }, 100);
}

(function (jQuery) {
    window.$ = jQuery.noConflict();
})(jQuery);
jQuery(document).ready(function($) {
  $('#user_login').attr( 'placeholder', 'Email Address' );
  $('#user_pass').attr( 'placeholder', 'Password' );
  $('#user_login').attr('class','form-control');
  $('#user_pass').attr('class','form-control');

});

function validate(){
  return (function( $ ) {
    if($("#email").val()==""){
      $(".error-message").removeClass('hidden');
      $(".error-message").html("Email cannot be empty.");
      return false;
    }
    if($("#password").val()==""){
      $(".error-message").removeClass('hidden');
      $(".error-message").html("Password cannot be empty.");
      return false;
    }
    else if($("#password").val()!=$("#confirm_password").val()){
      $(".error-message").removeClass('hidden');
      $(".error-message").html("Passwords do not match.");
      return false;
    }

})( jQuery );

}

function login_validate(){
  return (function( $ ) {
    if($("#login_email").val()==""){
      $(".login-error-message").removeClass('hidden');
      $(".login-error-message").html("Email cannot be empty.");
      return false;
    }
    if($("#login_password").val()==""){
      $(".login-error-message").removeClass('hidden');
      $(".login-error-message").html("Password cannot be empty.");
      return false;
    }

})( jQuery );

}
