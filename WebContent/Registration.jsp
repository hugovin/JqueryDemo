<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<style>
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>
<link rel="stylesheet" href="resources/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="resources/css/main.css">

<script src="resources/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

	<!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->

	<div class="navbar navbar-inverse navbar-fixed-top"></div>

	<div class="container">
		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="row span8 offset2">
			<legend>New Dealer Registration</legend>
		</div>
		<section>
			<div class="row offset2">
				<div class="span3">
					<h3>
						<span class="badge badge-success">1. Dealer Information</span>
					</h3>
				</div>
				<div class="span3">
					<span class="badge">2. Payment</span>
				</div>
				<div class="span2">
					<span class="badge">3. Confirmation</span>
				</div>

			</div>
		</section>
		<hr class="span8 offset2">

		<div class="form-horizontal well span8 offset2">
			<section>
				<legend>Login Information</legend>
				<div id="emailControl" class="control-group">
					<label class="control-label" for="inputEmail">Email</label>
					<div class="controls ">
						<input type="text" id="inputEmail" placeholder="Email"> <span
							id="spanEmailError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="passwordControl" class="control-group">
					<label class="control-label " for="inputPassword">Password</label>
					<div class="controls ">
						<input type="password" id="inputPassword" placeholder="Password">
						<span id="spanPasswordError" class="help-inline hide">Invalid
							Password</span>
					</div>
				</div>
				<div id="confirmPasswordControl" class="control-group">
					<label class="control-label " for="inputConfirmPassword">Confirm
						Password</label>
					<div class="controls ">
						<input type="password" id="inputConfirmPassword"
							placeholder="Re-enter your password"> <span
							id="spanConfirmPasswordError" class="help-inline hide">Password
							Must match</span>
					</div>
				</div>
			</section>
			<hr />
			<section>
				<legend>Company Information</legend>
				<div id="userControl" class="control-group">
					<label class="control-label" for="inputUser">Display User</label>
					<div class="controls ">
						<input type="text" id="inputUser" placeholder="User"> <span
							id="spanUserError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="dealerControl" class="control-group">
					<label class="control-label" for="inputDealer">Dealer Id</label>
					<div class="controls ">
						<input type="text" id="inputDealer" placeholder="Dealer Id">
						<span id="spanDealerError" class="help-inline hide">Dealer
							cannot be empty</span>
					</div>
				</div>
				<div id="companyControl" class="control-group">
					<label class="control-label" for="inputCompany">Company</label>
					<div class="controls ">
						<input type="text" id="inputCompany" placeholder="Company">
						<span id="spanCompanyError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="webControl" class="control-group">
					<label class="control-label" for="inputWebSite">WebSite</label>
					<div class="controls ">
						<input type="text" id="inputWebSite"
							placeholder="www.yourcompany.com"> <span
							id="spanWebError" class="help-inline hide"></span>
					</div>
				</div>

				<div id="phoneControl" class="control-group">
					<label class="control-label" for="inputPhone">Phone Number</label>
					<div class="controls ">
						<input type="text" id="inputPhone" placeholder="000 000 0000">
						<span id="spanPhoneError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="streetControl" class="control-group">
					<label class="control-label" for="inputStreet">Street</label>
					<div class="controls ">
						<input type="text" id="inputStreet" placeholder="Street">
						<span id="spanStreetError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="cityControl" class="control-group">
					<label class="control-label" for="inputCity">Street</label>
					<div class="controls ">
						<input type="text" id="inputCity" placeholder="City"> <span
							id="spanCityError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="zipControl" class="control-group">
					<label class="control-label" for="inputZip">Zip Code</label>
					<div class="controls ">
						<input type="text" id="inputZip" placeholder="00000"> <span
							id="spanZipError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="countryControl" class="control-group">
					<label class="control-label" for="selectCountry">Country</label>
					<div class="controls ">
						<select id="selectCountry">
							<option value="AE">UAE</option>
							<option value="US">USA</option>
							<option value="IN">India</option>
							<option value="CR">CR</option>
						</select> <span id="spanCountryError" class="help-inline hide"></span>
					</div>
				</div>
				<div id="remarksControl" class="control-group">
					<label class="control-label" for="areaRemarks">Remarks</label>
					<div class="controls ">
						<textarea id="areaRemarks" rows="3"></textarea>
						<span id="spanRemarksError" class="help-inline hide"></span>
					</div>
				</div>
				<div class="form-actions">
					<button type="button" class="btn btn-primary">Save and Continue</button>
					<button type="button" id="btnClear"  class="btn btn-danger">Clear</button>
				</div>
			</section>
		</div>

	</div>
	<!-- /container -->

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-1.8.1.min.js"><\/script>')
	</script>

	<script src="resources/js/vendor/bootstrap.min.js"></script>


	<script src="resources/js/main.js"></script>
	<script src="resources/js/Registration.js"></script>
	<script src="resources/js/utils.js"></script>


</body>
</html>