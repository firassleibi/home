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
