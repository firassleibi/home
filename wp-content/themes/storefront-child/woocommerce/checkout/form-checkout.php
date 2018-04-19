<?php
global $errors,$login_errors,$wp;
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if(!is_user_logged_in()){
?>
<nav>
		<ol class="cd-multi-steps text-center custom-icons">
			<li id="login-tab" class="current"><span><i class="fa fa-user"></i></span></li>
			<li id="billing-tab"><span><i class="fa fa-truck"></i></span></li>
			<li id="payment-tab"><span><i class="fa fa-credit-card"></i></span></li>
			<li id="thank-tab"><span><i class="fa fa-check"></i></span></li>
		</ol>
	</nav>
<div class="container-fluid checkout-login-page">
  <div class="row flex">

    <div class="col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading">Login</div>
        <div class="panel-body">
					<form method="POST" onsubmit="return login_validate()">
            <div class="form-group">
              <input name="login_email" type="email" id="login_email" placeholder="Email Address" class="form-control"/>
            </div>
            <div class="form-group">
              <input name="login_password" type="password" id="login_password" placeholder="Password" class="form-control"/>
            </div>

						<?php if($login_errors!=''){ ?>
							<p class="login-error-message text text-danger"><?php echo $login_errors ?></p>
						<?php } ?>
            <p class="login-error-message text text-danger hidden"></p>
						<input type="hidden" name="url" value="<?php echo home_url(add_query_arg(array(),$wp->request))?>"/>
            <input type="submit" name="custom_login" class="btn btn-primary" value="Login"/>

          </form>
        </div>
				<div class="panel-footer text-right">
					<a href="<?php echo get_site_url()?>/recover-password/">Forgot password?</a>
				</div>
      </div>
    </div>
		<div class="col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading">New Customer</div>
        <div class="panel-body">
          <form method="POST" onsubmit="return validate()">
            <div class="form-group">
              <input name="signup-email" type="email" id="email" placeholder="Email Address" class="form-control"/>
            </div>
            <div class="form-group">
              <input name="signup-password" type="password" id="password" placeholder="Password" class="form-control"/>
            </div>
            <div class="form-group">
              <input type="password" id="confirm_password" placeholder="Confirm Password" class="form-control"/>
            </div>
						<?php if($errors!=''){ ?>
							<p class="error-message text text-danger"><?php echo $errors ?></p>
						<?php } ?>
            <p class="error-message text text-danger hidden"></p>
						<input type="hidden" name="signup-url" value="<?php echo home_url(add_query_arg(array(),$wp->request))?>"/>
            <input type="submit" name="custom_register" class="btn btn-primary" value="Sign Up"/>

          </form>
        </div>
      </div>

    </div>
  </div>
  <div class="row">
    <div class="col-md-12 text-center">
      <div class="panel panel-default">
        <div class="panel-body">
          <p>Or</p>
					<button onclick="checkLoginState()" class="social-login facebook"><i class="fa fa-facebook"></i> Connect with Facebook</button>
          <button onclick="google_sign_in()" class="social-login google"><i class="fa fa-google"></i> Connect with Gmail</button>
        </div>
      </div>
    </div>
  </div>
</div>
<?php
	return;
}
wc_print_notices();

do_action( 'woocommerce_before_checkout_form', $checkout );

// If checkout registration is disabled and not logged in, the user cannot checkout


?>
<nav>
		<ol class="cd-multi-steps text-center custom-icons">
			<li id="login-tab" class="visited"><span><i class="fa fa-user"></i></span></li>
			<li id="billing-tab" class="current"><a onclick="billing()"  href="javascript:0"><i class="fa fa-truck"></i></a></li>
			<li id="payment-tab"><a onclick="payment()"  href="javascript:0"><i class="fa fa-credit-card"></i></a></li>
			<li id="thank-tab"><span><i class="fa fa-check"></i></span></li>
		</ol>
	</nav>
<div class="row">
	<div class="col-md-9">
		<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( wc_get_checkout_url() ); ?>" enctype="multipart/form-data">

			<?php if ( $checkout->get_checkout_fields() ) : ?>

				<?php do_action( 'woocommerce_checkout_before_customer_details' ); ?>
				<div id="customer_details">
					<div class="panel panel-default" id="step-billing">
						<div class="panel-body">
							<?php do_action( 'woocommerce_checkout_billing' ); ?>
							<?php do_action( 'woocommerce_checkout_shipping' ); ?>
							<button type="button" class="btn btn-primary pull-right next">Next</button>
						</div>
					</div>
				</div>

				<?php do_action( 'woocommerce_checkout_after_customer_details' ); ?>
				<div class="panel panel-default hidden" id="step-payment">
					<div class="panel-heading">
						<h3><?php _e( 'Your order', 'woocommerce' ); ?></h3>
					</div>
					<div class="panel-body">
						<?php do_action( 'woocommerce_checkout_before_order_review' ); ?>
						<?php do_action( 'woocommerce_checkout_order_review' ); ?>
						<button type="button" class="btn btn-primary back">Back</button>

					</div>
				</div>
			<?php endif; ?>







			<?php do_action( 'woocommerce_checkout_after_order_review' ); ?>

		</form>
	</div>
	<div class="col-md-3">
		<div class="panel panel-default order-summary">
			<div class="panel-heading">Order Summary</div>
			<div class="panel-body">
		<?php
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
				?>
				<b>Total:</b> <?php echo WC()->cart->get_cart_total(); ?>
				<a href="<?php echo get_permalink( wc_get_page_id( 'cart' ) ); ?>"><button class="btn btn-default pull-right" type="button">Edit Cart</button></a>
			</div>
		</div>
	</div>
</div>

<?php do_action( 'woocommerce_after_checkout_form', $checkout ); ?>
