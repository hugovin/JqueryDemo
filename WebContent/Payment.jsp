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
									<li><a href="./Confirmation.jsp">Step 3 - Confirm</a></li>

								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="box">
					<div class="tab-header">Dealer Registration</div>
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
										
											<ul>
												<li>
													<ul class="cards">
														<li class="visa">Visa</li>
														<li class="visa_electron">Visa Electron</li>
														<li class="mastercard">MasterCard</li>
														<li class="maestro">Maestro</li>
														<li class="discover">Discover</li>
													</ul>
												</li>

												<li><label for="card_number">Card number</label> <input
													type="text" name="card_number" id="card_number"></li>

												<li class="vertical">
													<ul>
														<li><label for="expiry_date">Expiry date <small>mm/yy</small></label>
															<input type="text" name="expiry_date" id="expiry_date"
															maxlength="5"></li>

														<li><label for="cvv">CVV</label> <input type="text"
															name="cvv" id="cvv" maxlength="3"></li>
													</ul>
												</li>

												<li class="vertical maestro"
													style="display: none; opacity: 0;">
													<ul>
														<li><label for="issue_date">Issue date <small>mm/yy</small></label>
															<input type="text" name="issue_date" id="issue_date"
															maxlength="5"></li>

														<li><span class="or">or</span> <label
															for="issue_number">Issue number</label> <input
															type="text" name="issue_number" id="issue_number"
															maxlength="2"></li>
													</ul>
												</li>

												<li><label for="name_on_card">Name on card</label> <input
													type="text" name="name_on_card" id="name_on_card">
												</li>
											</ul>
										
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
									<div class="accordion-inner">Anim pariatur cliche...</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="tab-header">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseTwo">Pay Purchase
										Order</a>
								</div>
								<div id="collapseTwo" class="accordion-body collapse">
									<div class="accordion-inner">Anim pariatur cliche...</div>
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