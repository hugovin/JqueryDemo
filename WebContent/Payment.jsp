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
						<span class="badge ">1. Dealer Information</span>
					</h3>
				</div>
				<div class="span3">
					<span class="badge badge-success">2. Payment</span>
				</div>
				<div class="span2">
					<span class="badge">3. Confirmation</span>
				</div>

			</div>
		</section>
		<hr class="span8 offset2">

		<div class="form-horizontal well span8 offset2">
			<div class="accordion" id="accordion2">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseOne">Pay with Credit Card </a>
					</div>
					<div id="collapseOne" class="accordion-body collapse in">
						<div class="accordion-inner">
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">Pay With Check</a>
					</div>
					<div id="collapseTwo" class="accordion-body collapse">
						<div class="accordion-inner">Anim pariatur cliche...</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">Pay Purchase Order</a>
					</div>
					<div id="collapseTwo" class="accordion-body collapse">
						<div class="accordion-inner">Anim pariatur cliche...</div>
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

	<script src="resources/js/utils.js"></script>


</body>
</html>