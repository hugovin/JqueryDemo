<%@page import="java.sql.Date"%>
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
<link rel="stylesheet" href="resources/css/payment.css">

<script src="resources/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

</head>
<body class="LoginBody">
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

	<!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->
	<div class="container">
		<div class="Registration-wrapper">
			<div id="login" class="Registration-wrapper span7 offset3"
				style="display: block;">
				<div class="top-nav">
					<div class="container-fluid">
						<div class="row-fluid search-button-bar-container">
							<div class="span8">
								<ul class="breadcrumb">
									<li><a href="./Registration.jsp">Step 1 - Dealer
											Information</a></li>
									<li class="active"><a href="./Payment.jsp">Step 2 -
											Payment</a></li>
									<li><a href="./Confirm.jsp">Step 3 - Confirm</a></li>

								</ul>
								<a class="search-button-trigger" href="./Login.jsp"><i class="icon-home"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="box">
					<div class="tab-header">Payment</div>
					<div class=" form-horizontal padded">
						<div class="accordion" id="accordion2">
							<div class="accordion-group">
								<div class="tab-header">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseOne">Pay with
										Credit Card </a>
								</div>
								<div id="collapseOne" class="accordion-body collapse in">
									<div class="accordion-inner">
										<div class=" form-horizontal padded">
											<div id="carImagesControl" class="control-group">

												<div class="controls">
													<ul class="cards">
														<li class="visa">Visa</li>
														<li class="visa_electron">Visa Electron</li>
														<li class="mastercard">MasterCard</li>
														<li class="maestro">Maestro</li>
														<li class="discover">Discover</li>
													</ul>
												</div>
											</div>
											<div id="cardNameControl" class="control-group">
												<label class="control-label " for="name_on_card">Name
													on card</label>
												<div class="controls">
													<input type="text" name="name_on_card" id="name_on_card"
														placeholder="John Doe"> <span id="spanNameError"
														class="help-inline hide"></span>
												</div>
											</div>
											<div id="cardControl" class="control-group">
												<label class="control-label" for="card_number">Card
													Number</label>
												<div class="controls">
													<input type="text" class="input-large" name="card_number"
														id="card_number" placeholder="0000 0000 0000 0000">
													<span id="spanCardError" class="help-inline hide">Invalid
														Card Number</span>
												</div>
											</div>
											<div id="expireControl" class="control-group">
												<label class="control-label " for="expiry_date">Expiry
													date <small>mm/yy</small>
												</label>
												<div class="controls">
													<input type="text" placeholder="mm/yy" name="expiry_date"
														id="expiry_date" maxlength="5" class=""> <span
														id="spanExpireError" class="help-inline hide"></span>
												</div>
											</div>
											<div id="ccvControl" class="control-group">
												<label class="control-label " for="cvv">CVV</label>
												<div class="controls">
													<input type="text" name="cvv" placeholder="000" id="cvv"
														maxlength="3" class=""> <span id="spanCcvError"
														class="help-inline hide"></span>
												</div>
											</div>

											<div class="control-group">
												<div class="controls">
													<button id="btnSignIn" class="button blue">Pay Now</button>
													<span id="spanAccountError" class="help-inline hide error">Unable
														to Validate this Card</span>

												</div>
												<div id="divSpinner" class="row span1 hide">
													<div class="span4" id="spinnerPlaceHolder"></div>
												</div>
											</div>
										</div>


									</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="tab-header">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseTwo">Pay With
										Check</a>
								</div>
								<div id="collapseTwo" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class=" form-horizontal padded">
											<div id="payWithControl" class="control-group">
												<label class="control-label " for="">Send your check
													to:</label>
												<div class="controls">
													<address>
														<strong>Neustar .</strong><br>21575 Ridgetop Circle <br>
														Sterling, VA 20166<br> <abbr title="Phone">P:</abbr>
														+1 (571) 434 5400
													</address>

													<address>
														<strong>Support</strong><br> <a
															href="mailto:corporatesupport@neustar.biz">corporatesupport@neustar.biz</a>
													</address>
												</div>
												<div class="control-group">
													<div class="controls">
														<button id="btnPayCheck" class="button blue">I will send
															the check</button>
														<span id="spanAccountError" class="help-inline hide error">Unable
															to Validate this Card</span>

													</div>
												</div>
											</div>
										</div>
										<blockquote>
											<small>Send it within the next 30 days</small>
										</blockquote>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
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
	<script src="resources/js/jquery.creditCardValidator.js"></script>
	<script src="resources/js/Payment.js"></script>
	<script src="resources/js/utils.js"></script>



</body>
</html>