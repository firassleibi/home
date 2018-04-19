<?php /* Template Name: login */ ?>
<?php
  global $errors,$login_errors,$wp;
  if(is_user_logged_in())
    wp_redirect(get_site_url());
?>
<?php get_header(); ?>

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
							<p class="text text-danger"><?php echo $login_errors ?></p>
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
							<p class="text text-danger"><?php echo $errors ?></p>
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


<?php get_footer(); ?>
