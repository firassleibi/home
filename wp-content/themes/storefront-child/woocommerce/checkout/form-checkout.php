<?php
global $errors;
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if(!is_user_logged_in()){
?>
<nav>
		<ol class="cd-multi-steps text-bottom count">
			<li class="current"><a href="#">Login</a></li>
			<li><em>Billing</em></li>
			<li><em>Shipping</em></li>
			<li><em>Thank You</em></li>
		</ol>
	</nav>
<div class="container-fluid checkout-login-page">
  <div class="row flex">

    <div class="col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading">Login</div>
        <div class="panel-body">
          <?php
          $args = array(
             'redirect' => get_permalink( wc_get_page_id( 'checkout' ) ),
             'label_username' =>'',
             'label_password' =>'',
             'form_id' => 'checkout_login'
         );
          ?>
          <?php wp_login_form($args)?>
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
            <input type="submit" name="register_checkout" class="btn btn-primary" value="Sign Up"/>

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
					<button class="social-login facebook"><i class="fa fa-facebook"></i> Connect with Facebook</button>
          <button class="social-login google"><i class="fa fa-google"></i> Connect with Gmail</button>
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
		<ol class="cd-multi-steps text-bottom count">
			<li id="login-tab" class="visited"><a href="#">Login</a></li>
			<li id="billing-tab" class="current"><a href="#">Billing</a></li>
			<li id="shipping-tab"><a href="#">Shipping</a></li>
			<li id="payment-tab"><a href="#">Payment</a></li>
			<li id="thank-tab"><a href="#">Thank You</a></li>
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
							<button type="button" class="btn btn-primary pull-right next">Next</button>
						</div>
					</div>
					<div class="panel panel-default hidden"  id="step-shipping">
						<div class="panel-body">
							<?php do_action( 'woocommerce_checkout_shipping' ); ?>
							<button type="button" class="btn btn-primary back">Back</button>
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
            echo "<b>".$_product->get_title().'</b>  <br> Quantity: '.$values['quantity'].'<br>';
            $price = get_post_meta($values['product_id'] , '_price', true);
            echo "  Price: ".$price." ".get_option('woocommerce_currency')."<br>";

        }
				?>
				<hr/>
				<b>Total:</b> <?php echo WC()->cart->get_cart_total(); ?>
				<a href="<?php echo get_permalink( wc_get_page_id( 'cart' ) ); ?>"><button class="btn btn-default pull-right" type="button">Edit Cart</button></a>
			</div>
		</div>
	</div>
</div>

<?php do_action( 'woocommerce_after_checkout_form', $checkout ); ?>
