function add_to_cart(pid){
  jQuery.get( "./?post_type=product&add-to-cart="+pid, function( data ) {
    jQuery.post("./",{get_cart:true},function(data){
      jQuery('#myModal .modal-body').html(data);
      jQuery('#myModal').modal('show');
    });

  });
  return false;

}


window.fbAsyncInit = function() {
    FB.init({
      appId      : '1938522249536428',
      cookie     : true,
      xfbml      : true,
      version    : 'v2.11'
    });

    FB.AppEvents.logPageView();

  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));


function google_sign_in(){
  auth2.grantOfflineAccess().then(signInCallback);
}

function signInCallback(authResult){
  if (authResult['code']) {
    jQuery.post( "./?google_token",{token:authResult['code']}, function( data ) {
      if(data=='success')
        location.reload();
    });
  }
}
