<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
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

        <div class="navbar navbar-inverse navbar-fixed-top">

        </div>

        <div class="container">

            <!-- Main hero unit for a primary marketing message or call to action -->
            
                
			<div class="form-horizontal well span5 offset3">
			<legend>PSO Demo</legend>
				<div id="emailControl" class="control-group">
					<label class="control-label" for="inputEmail">Email</label>
					<div class="controls ">
						<input type="text" id="inputEmail" placeholder="Email">
						 <span id="spanEmailError" class="help-inline hide">Invalid email</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label " for="inputPassword">Password</label>
					<div class="controls ">
						<input type="password" id="inputPassword" placeholder="Password">
						<a href="#" class="help-block">Forgot Password?</a>
					</div>
				</div>
				<div class="control-group">
				<div class="controls">					
					<button id="btnSignIn" class="btn">Sign in</button>
				</div>
				<hr/>
				<div class="row offset3">
				   <div class="span4"><a href="#">New User?</a></div>
				</div>
			</div>



		</div> <!-- /container -->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.8.1.min.js"><\/script>')</script>

        <script src="resources/js/vendor/bootstrap.min.js"></script>

        <script src="resources/js/main.js"></script>
        <script src="resources/js/Login.js"></script>

        
    </body>
</html>