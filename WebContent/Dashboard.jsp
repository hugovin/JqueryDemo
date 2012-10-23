<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0069)https://dl.dropbox.com/u/832330/plastique/pages/dashboard/stats.html# -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<meta charset="utf-8">
<!-- Always force latest IE rendering engine or request Chrome Frame -->
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<title>user DashBoard</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<style>
body {
	
}
</style>
<link rel="stylesheet" href="resources/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="resources/css/main.css">


<script src="resources/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>


<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
</head>
<body>

	<nav id="secondary" class="main-nav black-box"
		style="background-color: solid #4A4A54 !important">

		<div class="profile-menu">

			<div class="pull-left">
				<div class="avatar">
					<img src="resources/img/avatar.png">
				</div>
			</div>

			<div class="pull-left">
				<div class="title">User</div>
				<div class="btn-group">
					<button class="button mini inset black">
						<i class="icon-search"></i>
					</button>
					<button class="button mini inset black">Projects</button>
					<button class="button mini inset black dropdown-toggle"
						data-toggle="dropdown">
						<i class="icon-cog"></i>
					</button>
					<ul class="dropdown-menu black-box-dropdown">
						<li><a href="">Action</a></li>
						<li><a href="">Another action</a></li>
						<li><a href="">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="">Separated link</a></li>
					</ul>

				</div>
			</div>

			<div class="pull-right profile-menu-nav-collapse">
				<button class="button black">
					<i class="icon-reorder"></i>
				</button>
			</div>

		</div>

		<ul class="secondary-nav-menu">
			<li class="active"><a href="#"> <i class="icon-dashboard"></i>
					Stats
			</a></li>

			<li><a href="#" id="modal-link"> Notification #1 </a></li>

			<li id="notification-full-image"><a href="#"> Notification
					#2 </a></li>

			<li id="notification-small-image"><a href="#"> Notification
					#3 </a></li>
		</ul>

	</nav>



	<section id="main">
		<div class="top-nav">
			<div class="container-fluid">
				<div class="row-fluid search-button-bar-container">
					<div class="span12">
						<ul class="breadcrumb">
							<li><a href=""><i class="icon-home"></i> Some</a></li>
							<li><a href="">Nice</a></li>
							<li><a href="">Breadcrumbs</a></li>
							<li class="active"><a href="">Here</a></li>
						</ul>
						<a class="search-button-trigger"
							href=""><i
							class="icon-search"></i></a>
					</div>
				</div>

				<div class="row-fluid search-bar-nav">
					<div class="span12">
						<form>
							<input type="text" class="search" placeholder="Search...">
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span6">
					<div class="row-fluid">
						<div class="span12"></div>
					</div>

					<div class="row-fluid">
						<div class="span12">
							<table class="table table-striped table-bordered box">
								<thead>
									<tr>
										<th colspan="2">Table title</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Webhosting:</td>
										<td><strong>VPS Server 1</strong></td>
									</tr>
									<tr>
										<td>Available space:</td>
										<td>239/1000 GB used</td>
									</tr>
									<tr>
										<td>MySQL databases:</td>
										<td class="red">5/5 used</td>
									</tr>
									<tr>
										<td>Email accounts:</td>
										<td class="red">25/25 used</td>
									</tr>
									<tr>
										<td>Ruby version:</td>
										<td>1.9.3</td>
									</tr>
									<tr>
										<td>Rails version:</td>
										<td>3.0.1</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="2">
											<div class="clearfix" style="padding: 0 5px;">
												<div class="pull-left">
													<a href="" class="button blue">Approve</a> <a href=""
														class="button">Reject</a>
												</div>
											</div>
										</td>
									</tr>
								</tfoot>
							</table>

						</div>
					</div>

				</div>

				<div class="span6">
					<div class="row-fluid">
						<div class="span12">
							<div class="tabbable black-box" style="margin-bottom: 18px;">

								<div class="tab-header">
									My orders <span class="pull-right"> <span
										class="options">
											<div class="btn-group">
												<a class="dropdown-toggle" data-toggle="dropdown"><i
													class="icon-cog"></i></a>
												<ul class="dropdown-menu black-box-dropdown dropdown-left">
													<li><a href="">Action</a></li>
													<li><a href="">Another action</a></li>
													<li><a href="">Something else here</a></li>
													<li class="divider"></li>
													<li><a href="">Separated link</a></li>
												</ul>
											</div>
									</span>
									</span>
								</div>

								<ul class="nav nav-tabs">
									<li class=""><a href="#tab1" data-toggle="tab"><i
											class="icon-globe"></i> New orders</a></li>
									<li class="active"><a href="#tab2" data-toggle="tab"><i
											class="icon-hdd"></i> Past Orders</a></li>
								</ul>
								<div class="tab-content">

									<div class="tab-pane" id="tab1">
										<div class="separator">
											<div class="inner-well clearfix">
												<div class="pull-left">Some Text</div>

												<div class="pull-right">
													<input rel="confirm-check" type="checkbox" id="JRUuL"
														class="checky" checked="checked"> <label
														for="JRUuL" class="checky"><span></span></label>
												</div>
											</div>

											<div class="inner-well clearfix">
												<div class="pull-left">Some Other Text</div>

												<div class="pull-right">
													<input rel="confirm-check" type="checkbox" id="KU2sr"
														class="checky"> <label for="KU2sr" class="checky"><span></span></label>
												</div>
											</div>
										</div>
										<div class="separator">
											<div class="inner-well">
												<div id="stats1"
													style="width: 100%; height: 100px; padding: 0px; position: relative;">
													<canvas class="base" width="100" height="100"></canvas>
													<canvas class="overlay" width="100" height="100"
														style="position: absolute; left: 0px; top: 0px;"></canvas>
													<div class="tickLabels" style="font-size: smaller">
														<div class="xAxis x1Axis" style="color: #fff">
															<div class="tickLabel"
																style="position: absolute; text-align: center; left: -5px; top: 100px; width: 25px">Dec</div>
															<div class="tickLabel"
																style="position: absolute; text-align: center; left: 27px; top: 100px; width: 25px">Jan</div>
															<div class="tickLabel"
																style="position: absolute; text-align: center; left: 59px; top: 100px; width: 25px">Feb</div>
														</div>
														<div class="yAxis y1Axis" style="color: #fff">
															<div class="tickLabel"
																style="position: absolute; text-align: right; top: 88px; right: 100px; width: 0px">0</div>
															<div class="tickLabel"
																style="position: absolute; text-align: right; top: 67px; right: 100px; width: 0px">1000</div>
															<div class="tickLabel"
																style="position: absolute; text-align: right; top: 46px; right: 100px; width: 0px">2000</div>
															<div class="tickLabel"
																style="position: absolute; text-align: right; top: 25px; right: 100px; width: 0px">3000</div>
															<div class="tickLabel"
																style="position: absolute; text-align: right; top: 4px; right: 100px; width: 0px">4000</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="padded">
											<div id="fix-stats">
												<p>
													<a rel="action"
														class="button mini rounded inset light-gray">Delete
														stats</a>
												</p>

												<div style="display: none;" rel="confirm-action">

													<div class="inner-well clearfix">
														<b>Are you sure?</b>
														<div class="pull-right">
															<input rel="confirm-check" type="checkbox" id="SzLcS"
																class="checky"> <label for="SzLcS"
																class="checky green"><span></span></label>
														</div>
													</div>

													<div class="clearfix vpadded">
														<div class="pull-left">
															<a href="" class="button red" rel="confirm-do"
																style="display: none;">Delete</a>
														</div>
														<div class="pull-right">
															<a href="" class="button gray" rel="confirm-cancel">Cancel</a>
														</div>
													</div>

												</div>

											</div>
										</div>
									</div>

									<div class="tab-pane active" id="tab2">
										<div class="separator">
											<div class="inner-well">
												<div id="stats2"
													style="width: 100%; height: 100px; padding: 0px; position: relative;"></div>
											</div>
										</div>
										<div class="separator">
											<div class="inner-well clearfix">
												<div class="pull-left">Comments</div>
											</div>

											<div class="inner-well clearfix">
												<div class="pull-left">Dates</div>

											</div>
										</div>
										<div class="padded">
											<div id="fix-stats2">
												<p>
													<a rel="action"
														class="button mini rounded inset light-gray">Delete
														stats</a>
												</p>

												<div style="display: none;" rel="confirm-action">

													<div class="inner-well clearfix">
														<b>Are you sure?</b>
														<div class="pull-right">
															<input rel="confirm-check" type="checkbox" id="UF63A"
																class="checky"> <label for="UF63A"
																class="checky green"><span></span></label>
														</div>
													</div>

													<div class="clearfix vpadded">
														<div class="pull-left">
															<a
																href=""
																class="button red" rel="confirm-do"
																style="display: none;">Delete</a>
														</div>
														<div class="pull-right">
															<a
																href=""
																class="button gray" rel="confirm-cancel">Cancel</a>
														</div>
													</div>

												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row-fluid">
						<div class="span12">
							<div class="black-box tex">
								<div class="tab-header">Recent comments</div>
								<ul class="recent-comments">



									<li class="separator">
										<div class="avatar pull-left">
											<img src="resources/img/avatar.png">
										</div>

										<div class="article-post">
											<div class="user-info">Posted by jordan, 3 days ago</div>
											<div class="user-content">Vivamus sed auctor nibh
												congue, ligula vitae tempus pharetra... Vivamus sed auctor
												nibh congue, ligula vitae tempus pharetra... Vivamus sed
												auctor nibh congue, ligula vitae tempus pharetra...</div>

											<div class="btn-group">
												<button class="button black mini">
													<i class="icon-pencil"></i> Edit
												</button>
												<button class="button black mini">
													<i class="icon-remove"></i> Delete
												</button>
												<button class="button black mini">
													<i class="icon-ok"></i> Approve
												</button>
											</div>
										</div>
									</li>



									<li class="separator">
										<div class="avatar pull-left">
											<img src="resources/img/avatar.png">
										</div>

										<div class="article-post">
											<div class="user-info">Posted by jordan, 3 days ago</div>
											<div class="user-content">Vivamus sed auctor nibh
												congue, ligula vitae tempus pharetra... Vivamus sed auctor
												nibh congue, ligula vitae tempus pharetra... Vivamus sed
												auctor nibh congue, ligula vitae tempus pharetra...</div>

											<div class="btn-group">
												<button class="button black mini">
													<i class="icon-pencil"></i> Edit
												</button>
												<button class="button black mini">
													<i class="icon-remove"></i> Delete
												</button>
												<button class="button black mini">
													<i class="icon-ok"></i> Approve
												</button>
											</div>
										</div>
									</li>


									<li class="separator" style="text-align: center"><a
										href="">View
											all</a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</section>

	<script src="resources/js/application.js" type="text/javascript"></script>
	<script src="resources/js/docs.js" type="text/javascript"></script>
	<script src="resources/js/docs_charts.js" type="text/javascript"></script>
	<script src="resources/js/documentation.js" type="text/javascript"></script>
	<script src="resources/js/prettify.js" type="text/javascript"></script>
	<link href="resources/css/prettify.css" media="screen" rel="stylesheet"
		type="text/css">

	<script type="text/javascript">
		prettyPrint()
	</script>



</body>
</html>