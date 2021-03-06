<?php
global $errors,$login_errors;

function theme_add_bootstrap() {

  wp_enqueue_style( 'bootstrap-css', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css' );
  wp_enqueue_style( 'font-awesome-css', 'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
  wp_enqueue_script( 'bootstrap-js', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js' );
  wp_enqueue_script( 'google-api-js', 'https://apis.google.com/js/client:platform.js?onload=start' );
  wp_enqueue_script( 'scripts-js', get_stylesheet_directory_uri()."/assets/js/scripts.js" );
  /*
  wp_enqueue_style( 'design-css', get_stylesheet_directory_uri()."/assets/css/design.css");
  if(isMobile())
    wp_enqueue_style( 'fluid-css', get_stylesheet_directory_uri()."/assets/css/fluid.css");
    */


}

function custom_scripts(){
  global $post;
  if( is_page() || is_single() )
  {
      switch($post->post_name)
      {
          case 'login':
          wp_enqueue_script( 'login-js', get_stylesheet_directory_uri()."/assets/js/login.js" );
          break;
          case 'checkout':
          wp_enqueue_script( 'checkout-js', get_stylesheet_directory_uri()."/assets/js/checkout.js" );
          break;

      }
  }

}

function create_account(){
    global $errors;
    if(isset($_POST['custom_register'])){
      $email = ( isset($_POST['signup-email']) ? $_POST['signup-email'] : '' );
      $user = ( isset($_POST['signup-email']) ? $_POST['signup-email'] : '' );
      $pass = ( isset($_POST['signup-password']) ? $_POST['signup-password'] : '' );
      if(strlen($pass)>=8){
        if (!email_exists( $email ) ) {
           $user_id = wp_create_user( $user, $pass, $email );
           if( !is_wp_error($user_id) ) {
               //user has been created
               $user = new WP_User( $user_id );
               $user->set_role( 'customer' );
               //Redirect
               wp_set_current_user($user_id);
               wp_set_auth_cookie($user_id);
               wp_redirect( $_POST['signup-url'] );
               exit;
           } else {
             exit;
              if( is_wp_error( $user_id ) ) {
                 $errors =  $user_id->get_error_message();
              }
        }
      }else{
        $errors ="Email already registered.";
      }
    }else{
      $errors = "Password should be more than 8 characters";
    }
  }

}

add_action('init','create_account');

function custom_login(){
    global $login_errors;


    if(isset($_POST['custom_login'])){
      $username = esc_attr($_POST['login_email']);
    	$password = esc_attr($_POST['login_password']);
    	$remember = "true";
      $login_data = array();
    	$login_data['user_login'] = $username;
    	$login_data['user_password'] = $password;
    	$login_data['remember'] = $remember;
      $user_verify = wp_signon( $login_data, false );
      if ( is_wp_error($user_verify) )
    	{
    	   $login_errors = "Email or Password is wrong, Please try again.";
       }else{
          wp_redirect($_POST['url']);
          exit;
       }
  }

}

add_action('init','custom_login');

add_action( 'wp_enqueue_scripts', 'theme_add_bootstrap' );


add_action('wp_footer','custom_scripts');
// Replacing the button add to cart by a link to the product in Shop and archives pages

// The custom replacement button function
function custom_product_button(){
    // HERE your custom button text and link
    $button_text = __( "Custom text", "woocommerce" );
    $button_link = '#';

    // Display button
    echo '<a class="button" href="'.$button_link.'">' . $button_text . '</a>';
}

// Replacing the single product button add to cart by a custom button for a specific product category
add_action( 'woocommerce_single_product_summary', 'replace_single_add_to_cart_button', 1 );
function replace_single_add_to_cart_button() {
    global $product;

    //remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 30 );
    //add_action( 'woocommerce_single_product_summary', 'custom_product_button', 30 );
}

// Replacing the button add to cart by a link to the product in Shop and archives pages for as specific product category
add_filter( 'woocommerce_loop_add_to_cart_link', 'replace_loop_add_to_cart_button', 10, 2 );
function replace_loop_add_to_cart_button( $button, $product  ) {
    // Only for product category ID 64
    /*
    if( has_term( '64', 'product_cat', $product->get_id() ) ){
        $button_text = __( "View product", "woocommerce" );
        $button = '<a class="button" href="' . $product->get_permalink() . '">' . $button_text . '</a>';
    }*/
    $button_text = "Add to bag";
    if ( $product->is_type( 'variable' ) ) {
      $button = '<a href="' . $product->get_permalink() . '"><div class="progress-btn" data-progress-style="fill-back">
	  <div class="btn">'.$button_text.'</div>
	  <div class="progress"></div>
	</div></a>';
    }
    else
      $button = '<a  onclick="add_to_cart('.$product->get_id().')" href="javascript:;"><div class="progress-btn" data-progress-style="fill-back">
	  <div class="btn">'.$button_text.'</div>
	  <div class="progress"></div>
	</div></a>';
    return $button;
}

function isMobile(){
  $useragent=$_SERVER['HTTP_USER_AGENT'];
    if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4)))

  return true;
  else
    return false;
}

function getCart(){
  if(isset($_POST['get_cart'])){
    global $woocommerce;
    $items = $woocommerce->cart->get_cart();

      foreach($items as $item => $values) {
          $_product =  wc_get_product( $values['data']->get_id());
          $image = wp_get_attachment_image_src( get_post_thumbnail_id( $_product->get_id() ), 'single-post-thumbnail' );
          echo "<div class='row'>";
          echo "<div class='col col-xs-3'><img src='".$image[0]."' data-id='".$_product->get_id()."'></div>";
          echo "<div class='col col-xs-9'>";
          echo "<b>".$_product->get_title().'</b>  <br> Quantity: '.$values['quantity'].'<br>';
          $price = get_post_meta($values['product_id'] , '_price', true);
          echo "  Price: ".$price." ".get_option('woocommerce_currency')."<br>";

          echo "</div>";
          echo "</div>";
          echo "<div class='border'></div>";

      }
      exit;
  }

}

add_action('init','getCart');

function add_modal(){?>
  <div class="cart-modal modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><i class="fa fa-check-circle"></i>Added to your bag</h4>
        </div>
        <div class="modal-body">

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
          <a href="<?php echo get_permalink( wc_get_page_id( 'checkout' ) ) ?>"><button type="button" class="btn btn-primary">Checkout Now</button></a>
        </div>
      </div>
    </div>
  </div>
</div>
<?php
}

add_action('wp_footer','add_modal');

function facebookLoginScript(){
  global $wp;
  $current_url = home_url(add_query_arg(array(),$wp->request));
  ?>
  <script>
  function checkLoginState() {
    FB.login(function(response){
      window.location = "./?token="+response.authResponse.accessToken+"&url=<?php echo $current_url ?>";
      }, {scope: 'public_profile,email,user_birthday'});

  }
  </script>
<?php
}

add_action('wp_footer','facebookLoginScript');

function facebookLogin(){
  require_once 'vendor/autoload.php';
  if(isset($_GET['token'])){
    $current_url =$_GET['url'];
    $accesstoken = $_GET['token'];
    $fb = new Facebook\Facebook([
    'app_id' => '1938522249536428',
    'app_secret' => '06f055fd8b2c90182ffdea5773787eb7',
    'default_graph_version' => 'v2.11',
    ]);

    try {
    // Returns a `Facebook\FacebookResponse` object
      $response = $fb->get('/me?fields=id,name,email,first_name,last_name', $accesstoken);
    } catch(Facebook\Exceptions\FacebookResponseException $e) {
      exit;
    } catch(Facebook\Exceptions\FacebookSDKException $e) {
      exit;
    }

    $fbuser = $response->getGraphUser();
    $firstname = $fbuser['first_name'];
    $lastname = $fbuser['last_name'];
    $args = array(
        'meta_key'     => 'facebook_id',
        'meta_value'   => $fbuser['id'],
    );

    if(count(get_users($args))==0){
      $user = get_user_by( 'email', $fbuser['email'] );
      if(!$user){
        $user_id = wp_create_user( $fbuser['email'], uniqid(), $fbuser['email'] );
        if( !is_wp_error($user_id) ) {
            //user has been created
            $user = new WP_User( $user_id );
            $user->set_role( 'customer' );
            wp_update_user( array( 'ID' => $user_id, 'first_name' => $firstname ) );
            wp_update_user( array( 'ID' => $user_id, 'last_name' => $lastname ) );
            update_user_meta( $user_id, 'facebook_id', $fbuser['id'] );
            //Redirect
            wp_set_current_user($user_id);
            wp_set_auth_cookie($user_id);
            wp_redirect( $current_url );
            exit;
        }
      }
      else {
        update_user_meta( $user->ID, 'facebook_id', $fbuser['id'] );
        wp_set_current_user($user->ID);
        wp_set_auth_cookie($user->ID);
        wp_redirect( $current_url );
        exit;
      }

    }
    else{
      $user_id = get_users($args)[0]->ID;
      wp_set_current_user($user_id);
      wp_set_auth_cookie($user_id);
      wp_redirect( $current_url );
      exit;
    }

    exit;
  }
}
add_action('init','facebookLogin');



function addGoogleLibrary() {
?>
<script src="https://apis.google.com/js/client:platform.js?onload=start" async defer>
</script>
<script>
  gapi.load('auth2', function() {
      auth2 = gapi.auth2.init({
        client_id: '159363141544-ge7tui0kk2veq293qsg5d5dgf8lgg1j7.apps.googleusercontent.com',
      });
    });
</script>
<?php
}
add_action( 'wp_head', 'addGoogleLibrary' );

function googleLogin(){

  $oauth2token_url = "https://accounts.google.com/o/oauth2/token";
$clienttoken_post = array(
"code" => $code,
"client_id" => $client_id,
"client_secret" => $client_secret,
"redirect_uri" => $redirect_uri,
"grant_type" => "authorization_code"
);

$curl = curl_init($oauth2token_url);

  if(isset($_GET['google_token'])){
    require_once 'google/autoload.php';
    $CLIENT_ID = "159363141544-ge7tui0kk2veq293qsg5d5dgf8lgg1j7.apps.googleusercontent.com";
    $code = $_POST['token'];
    $client_secret = "Y93Asg6L5t-D6K2ucDJYPeqp";
    $oauth2token_url = "https://accounts.google.com/o/oauth2/token";
    $clienttoken_post = array(
    "code" => $code,
    "client_id" => $CLIENT_ID,
    "client_secret" => $client_secret,
    "redirect_uri" => "http://dealgo.ae",
    "grant_type" => "authorization_code"
    );

    $curl = curl_init($oauth2token_url);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $clienttoken_post);
    curl_setopt($curl, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

    $json_response = curl_exec($curl);
    curl_close($curl);

    $authObj = json_decode($json_response);

    if (isset($authObj->refresh_token)){
        //refresh token only granted on first authorization for offline access
        //save to db for future use (db saving not included in example)
        global $refreshToken;
        $refreshToken = $authObj->refresh_token;
    }

    $accessToken = $authObj->access_token;
    $userDetails = file_get_contents('https://www.googleapis.com/oauth2/v1/userinfo?access_token=' . $accessToken);
    $userData = json_decode($userDetails);
    $google_id = $userData->id;
    $email = $userData->email;
    $firstname = $userData->given_name;
    $lastname = $userData->family_name;
    $args = array(
        'meta_key'     => 'google_id',
        'meta_value'   => $google_id,
    );

    if(count(get_users($args))==0){
      $user = get_user_by( 'email', $email );
      if(!$user){
        $user_id = wp_create_user( $email, uniqid(), $email );
        if( !is_wp_error($user_id) ) {
            //user has been created
            $user = new WP_User( $user_id );
            $user->set_role( 'customer' );
            wp_update_user( array( 'ID' => $user_id, 'first_name' => $firstname ) );
            wp_update_user( array( 'ID' => $user_id, 'last_name' => $lastname ) );
            update_user_meta( $user_id, 'google_id', $google_id );
            //Redirect
            wp_set_current_user($user_id);
            wp_set_auth_cookie($user_id);
            echo "success";
            exit;
        }
      }
      else {
        update_user_meta( $user->ID, 'google_id', $google_id );
        wp_set_current_user($user->ID);
        wp_set_auth_cookie($user->ID);
        echo "success";
        exit;
      }

    }
    else{
      $user_id = get_users($args)[0]->ID;
      wp_set_current_user($user_id);
      wp_set_auth_cookie($user_id);
      echo "success";
      exit;
    }

    exit;
  }
}
add_action('init','googleLogin');
 ?>
