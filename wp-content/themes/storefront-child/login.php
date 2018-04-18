<?php /* Template Name: login */ ?>
<?php
  if(is_user_logged_in())
    wp_redirect(get_site_url());
?>
<?php get_header(); ?>

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

            <p class="error-message text text-danger hidden"></p>
            <input type="submit" name="register_checkout" class="btn btn-primary" value="Sign Up"/>

          </form>
        </div>
      </div>

    </div>
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
  </div>
  <div class="row">
    <div class="col-md-12 text-center">
      <div class="panel panel-default">
        <div class="panel-body">
          <p>Or</p>
          <button class="social-login">Connect with Facebook</button>
          <button class="social-login">Connect with Gmail</button>
        </div>
      </div>
    </div>
  </div>
</div>


<?php get_footer(); ?>
