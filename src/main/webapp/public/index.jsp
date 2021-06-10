<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from multipurposethemes.com/admin/rhythm-admin-template/bs5/main/forms_wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 05:23:41 GMT -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="https://skilledin.file.core.windows.net/pics/SGN_06_07_2021_1623056953999.png?st=2021-06-07T09%3A03%3A32Z&se=2023-06-08T09%3A03%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=sA%2BxpPxQZ9AVyzGyMS6s6RHf%2Bgk%2B%2FI9QX%2FQUJ3AVHB0%3D">

<title>SkilledIn</title>

<!-- Vendors Style-->
<link rel="stylesheet" href="public/css/vendors_css.css">

<!-- Style-->
<link rel="stylesheet" href="public/css/style.css">
<link rel="stylesheet" href="public/css/skin_color.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous" />
</head>

<body
	class="hold-transition light-skin sidebar-mini theme-success fixed">

	<div class="wrapper">
		<div id="loader"></div>


		<header class="main-header">
			<div class="d-flex align-items-center logo-box justify-content-start">
				<!-- Logo -->
				<a href="index.html" class="logo"> <!-- logo-->
					<div class="logo-mini w-50">
						<span class="light-logo"><img
							src="public/img/SGN_06_07_2021_1623056953999.png"
							alt="logo" style="max-width: 128%; margin-top: 22px;"></span>
					</div> <!--  	<div class="logo-lg" style="margin-top: 4px; margin-left: -31px;">
						<span class="light-logo"><img
							src="https://skilledin.file.core.windows.net/pics/skilledIn.png?st=2021-06-06T03%3A58%3A18Z&se=2023-06-07T03%3A58%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=FgZFn%2BdbvdWO0VS4Ora%2FHS1sAYI9zO5GOhdcWEEwNXI%3D"
							alt="logo"></span> <span class="dark-logo"><img
							src="../images/logo-light-text.png" alt="logo"></span>
					</div>
					-->
				</a>
			</div>
			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<div class="app-menu">
					<ul class="header-megamenu nav">
						<li class="btn-group nav-item"><a href="#"
							class="waves-effect waves-light nav-link push-btn btn-primary-light"
							data-toggle="push-menu" role="button"> <i
								data-feather="align-left"></i>
						</a></li>

					</ul>
				</div>

				<div class="navbar-custom-menu r-side">
					<ul class="nav navbar-nav">
						<li class="btn-group nav-item d-lg-inline-flex d-none"><a
							href="#" data-provide="fullscreen"
							class="waves-effect waves-light nav-link full-screen btn-warning-light"
							title="Full Screen"> <i data-feather="maximize"></i>
						</a></li>
						<!-- Notifications -->
						<li class="dropdown notifications-menu">
							<ul class="dropdown-menu animated bounceIn">

								<li class="header">
									<div class="p-20">
										<div class="flexbox">
											<div>
												<h4 class="mb-0 mt-0">Notifications</h4>
											</div>
											<div>
												<a href="#" class="text-danger">Clear All</a>
											</div>
										</div>
									</div>
								</li>

								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu sm-scrol">
										<li><a href="#"> <i class="fa fa-users text-info"></i>
												Curabitur id eros quis nunc suscipit blandit.
										</a></li>
										<li><a href="#"> <i
												class="fa fa-warning text-warning"></i> Duis malesuada justo
												eu sapien elementum, in semper diam posuere.
										</a></li>
										<li><a href="#"> <i class="fa fa-users text-danger"></i>
												Donec at nisi sit amet tortor commodo porttitor pretium a
												erat.
										</a></li>
										<li><a href="#"> <i
												class="fa fa-shopping-cart text-success"></i> In gravida
												mauris et nisi
										</a></li>
										<li><a href="#"> <i class="fa fa-user text-danger"></i>
												Praesent eu lacus in libero dictum fermentum.
										</a></li>
										<li><a href="#"> <i class="fa fa-user text-primary"></i>
												Nunc fringilla lorem
										</a></li>
										<li><a href="#"> <i class="fa fa-user text-success"></i>
												Nullam euismod dolor ut quam interdum, at scelerisque ipsum
												imperdiet.
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul>
						</li>

						<%
						String userName = (String) session.getAttribute("userName");
						if (userName == null) {
							userName = "Google User";
						}
						%>

						<!-- User Account-->
						<li class="dropdown user user-menu"><a href="#"
							class="waves-effect waves-light dropdown-toggle w-auto l-h-12 bg-transparent py-0 no-shadow"
							data-bs-toggle="dropdown" title="User">
								<div class="d-flex pt-5">
									<div class="text-end me-10">
										<input type="hidden" id="hdnSession"
											data-value=" ${sessionScope.userName}" />
										<p class="pt-5 fs-14 mb-0 fw-700 text-primary">
											<%=userName%>
										</p>
										<small class="fs-10 mb-0 text-uppercase text-mute">User</small>
									</div>
									<img src="public/img/SGN_06_07_2021_1623056953999.png"
										class="avatar rounded-10 bg-primary-light h-40 w-40" alt="" />
								</div>
						</a>
							<ul class="dropdown-menu animated flipInX">
								<li class="user-body"><a class="dropdown-item" href="/home"><i
										class="ti-user text-muted me-2"></i> Home</a>
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="/perform_logout"><i class="ti-lock text-muted me-2"></i>
										Logout</a></li>
							</ul></li>

					</ul>
				</div>
			</nav>
		</header>

		<aside class="main-sidebar">
			<!-- sidebar-->
			<section class="sidebar position-relative">

				<div class="multinav">
					<div class="multinav-scroll" style="height: 100%;">
						<!-- sidebar menu-->
						<ul class="sidebar-menu" data-widget="tree">
							<li><a href="/home"> <i
									class="fas fa-home"></i><span>Home</span> <span
									class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/dashboard"> <i class="fas fa-chart-bar"></i>
									<span>Dashboard</span>
							</a></li>
							<li ><a href="/team"> <i
									class="fas fa-users"></i> <span>Team</span> <span
									class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/team"> <i
									class="fas fa-code"></i> <span>About Us</span> <span
									class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/team"> <i
									class="fas fa-folder"></i> <span>Something</span> <span
									class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>




						</ul>


					</div>
				</div>
			</section>
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div class="container-full">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="d-flex align-items-center">
						<div class="me-auto">
							<h4 class="page-title">SkilledIn Form</h4>
							<div class="d-inline-block align-items-center">
								<nav>
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="/home"><i
												class="mdi mdi-home-outline"></i></a></li>
										<li class="breadcrumb-item" aria-current="page">SkilledIn Form</li>
										<li class="breadcrumb-item active" aria-current="page">Role Predictor</li>
									</ol>
								</nav>
							</div>
						</div>

					</div>
				</div>

				<!-- Main content -->
				<section class="content">





					<!-- Validation wizard -->
					<div class="box">
						<div class="box-header with-border">
							<h4 class="box-title">Fill this form for get prediction</h4>

						</div>
						<!-- /.box-header -->
						<div class="box-body wizard-content">
							<form action="#" class="validation-wizard wizard-circle"
								id="role-form">
								<!-- Step 1 -->
								<h6>Academics</h6>
								<section>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q2" class="form-label"> Operating
													Systems : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q1"
													name="q1" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />



											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q2" class="form-label"> Algorithms : <span
													class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q2"
													name="q2" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q3" class="form-label"> Programming
													Concepts : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q3"
													name="q3" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q4" class="form-label"> Software
													Engineering : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q4"
													name="q4" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q5" class="form-label"> Computer
													Networks : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q5"
													name="q5" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>
										<!--  	<div class="col-md-6">
											<div class="form-group">
												<label for="wlocation2" class="form-label"> Select
													City : <span class="danger">*</span>
												</label> <select class="form-select required" id="wlocation2"
													name="location">
													<option value="">Select City</option>
													<option value="India">India</option>
													<option value="USA">USA</option>
													<option value="Dubai">Dubai</option>
												</select>
											</div>
										</div>
										-->
										<div class="col-md-6">
											<div class="form-group">
												<label for="q6" class="form-label"> Electronics
													Subjects : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q6"
													name="q6" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q7" class="form-label"> Computer
													Architecture : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q7"
													name="q7" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q8" class="form-label"> Mathematics : <span
													class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q8"
													name="q8" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q9" class="form-label"> Communication
													Skills : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q9"
													name="q9" placeholder="out of 100" min="0" max="100"
													autocomplete="nope" required />
											</div>
										</div>

									</div>
								</section>
								<!-- Step 2 -->
								<h6>Technical</h6>
								<section>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q10" class="form-label">Preferred
													working hour(s) : <span class="danger">*</span>
												</label> <input type="number" class="form-control required" id="q10"
													placeholder="Enter a valid hour" min="0" max="24" required />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q15" class="form-label">can work long
													time before system? : <span class="danger">*</span>
												</label> <select name="q15" id="q15" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row">

										<div class="col-md-6">
											<div class="form-group">
												<label for="q11" class="form-label">How would you
													rate yourself in Logical quotient : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q11"
													name="q11" placeholder="out of 10" min="0" max="10"
													autocomplete="nope" required />
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label for="q16" class="form-label">Self-learning
													capability? : <span class="danger">*</span>
												</label> <select name="q16" id="q16" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>

									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q12" class="form-label">Number of
													hackathon(s) participated : <span class="danger">*</span>
												</label> <input type="text" class="form-control required" id="q12"
													name="q121" placeholder="Enter a valid number" min="0"
													max="100" autocomplete="nope" required />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q17" class="form-label">Extra-courses
													did? : <span class="danger">*</span>
												</label> <select name="q17" id="q17" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
									</div>


									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q13" class="form-label"> Coding skills
													rating : <span class="danger">*</span>
												</label> <input type="number" class="form-control required" id="q13"
													placeholder="out of 10" min="0" max="10" required />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q18" class="form-label">Certifications :
													<span class="danger">*</span>
												</label> <select name="q18" id="q18" class="form-select required">
													<option disabled selected>SELECT</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q14" class="form-label">Public Speaking
													Rating : <span class="danger">*</span>
												</label> <input type="number" class="form-control required" id="q14"
													placeholder="out of 10" min="0" max="10" required />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q19" class="form-label">Workshops : <span
													class="danger">*</span>
												</label> <select name="q19" id="q19" class="form-select required">
													<option disabled selected>SELECT</option>
												</select>
											</div>
										</div>
									</div>
								</section>


								<!-- Step 3 -->
								<h6>Intrests</h6>
								<section>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q20" class="form-label">Talent tests
													taken? : <span class="danger">*</span>
												</label> <select name="q20" id="q20" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q21" class="form-label">Olympiads? : <span
													class="danger">*</span>
												</label> <select name="q21" id="q21" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
									</div>




									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q22" class="form-label">reading and
													writing skills : <span class="danger">*</span>
												</label> <select name="q22" id="q22" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="poor" value="poor">poor</option>
													<option name="medium" value="medium">medium</option>
													<option name="excellent" value="excellent">excellent</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q23" class="form-label">memory
													capability score : <span class="danger">*</span>
												</label> <select name="q23" id="q23" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="poor" value="poor">poor</option>
													<option name="medium" value="medium">medium</option>
													<option name="excellent" value="excellent">excellent</option>
												</select>
											</div>
										</div>
									</div>



									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q24" class="form-label">Interested
													subjects : <span class="danger">*</span>
												</label> <select name="q24" id="q24" class="form-select required">
													<option disabled selected>SELECT</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q25" class="form-label">Interested
													career area : <span class="danger">*</span>
												</label> <select name="q25" id="q25" class="form-select required">
													<option disabled selected>SELECT</option>
												</select>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q26" class="form-label">Higher studies
													or job : <span class="danger">*</span>
												</label> <select name="q26" id="q26" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="higherstudies" value="higherstudies">higher
														studies</option>
													<option name="job" value="job">job</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q27" class="form-label">Type of company
													Interested : <span class="danger">*</span>
												</label> <select name="q27" id="q27" class="form-select required">
													<option disabled selected>SELECT</option>
												</select>
											</div>
										</div>
									</div>



									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q28" class="form-label">Taken inputs
													from seniors or elders : <span class="danger">*</span>
												</label> <select name="q28" id="q28" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q29" class="form-label">Interested in
													games : <span class="danger">*</span>
												</label> <select name="q29" id="q29" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
									</div>




								</section>
								<!-- Step 4 -->
								<h6>Miscellaneous</h6>
								<section>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q30" class="form-label">Interested Type
													of Books : <span class="danger">*</span>
												</label> <select name="q30" id="q30" class="form-select required">
													<option disabled selected>SELECT</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q31" class="form-label">Interested in
													salary/work? : <span class="danger">*</span>
												</label> <select name="q31" id="q31" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="salary" value="salary">salary</option>
													<option name="Work" value="Work">work</option>
												</select>
											</div>
										</div>
									</div>



									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q32" class="form-label">In a
													Relationship? : <span class="danger">*</span>
												</label> <select name="q32" id="q32" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q33" class="form-label">Gentle or Tuff
													behavior? : <span class="danger">*</span>
												</label> <select name="q33" id="q33" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="gentle" value="gentle">gentle</option>
													<option name="stubborn" value="stubborn">stubborn</option>
												</select>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q34" class="form-label">Management or
													Technical? : <span class="danger">*</span>
												</label> <select name="q34" id="q34" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="Management" value="Management">Management</option>
													<option name="Technical" value="Technical">Technical</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q36" class="form-label">hard/smart
													worker : <span class="danger">*</span>
												</label> <select name="q36" id="q36" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="smart worker" value="smart worker">smart
														worker</option>
													<option name="hard worker" value="hard worker">hard
														worker</option>
												</select>
											</div>
										</div>
									</div>




									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="q37" class="form-label">Worked in teams
													ever? : <span class="danger">*</span>
												</label> <select name="q37" id="q37" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="q38" class="form-label">Introvert? : <span
													class="danger">*</span>
												</label> <select name="q38" id="q38" class="form-select required">
													<option disabled selected>SELECT</option>
													<option name="yes" value="yes">YES</option>
													<option name="no" value="no">NO</option>
												</select>
											</div>
										</div>
									</div>

								</section>
							</form>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->

				</section>
				<!-- /.content -->
			</div>
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<div class="pull-right d-none d-sm-inline-block">
				
			</div>
			&copy;
			<script>
				document.write(new Date().getFullYear())
			</script>
			<a href="http://skilledin.ml">SkilledIn-Labs</a>.
			All Rights Reserved.
		</footer>

		<!-- /.control-sidebar -->

		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
<div class="sticky-toolbar">
		<a href="#" data-bs-toggle="tooltip" data-bs-placement="left"
			title="Email" class="waves-effect waves-light  btn-warning mb-5 btn-sm"
			target="_blank"> <span class="fas fa-envelope"><span
				class="path1"></span><span class="path2"></span></span>
		</a> <a href="#" data-bs-toggle="tooltip" data-bs-placement="left"
			title="Github" class="waves-effect waves-light btn-flat mb-5 btn-sm"
			target="_blank"> <span class="fab fa-github"></span>
		</a> <a id="chat-popup" href="#" data-bs-toggle="tooltip"
			data-bs-placement="left" title="LinkedIn"
			class="waves-effect waves-light btn btn-info btn-flat btn-sm">
			<span class="fab fa-linkedin"><span class="path1"></span><span
				class="path2"></span></span>
		</a>
	</div>

	<div id="chat-box-body">
		<div id="chat-circle"
			class="waves-effect waves-circle btn btn-circle btn-lg btn-warning l-h-70">
			<div id="chat-overlay"></div>
			<span class="icon-Group-chat fs-30"><span class="path1"></span><span
				class="path2"></span></span>
		</div>

		<div class="chat-box">
			<div
				class="chat-box-header p-15 d-flex justify-content-between align-items-center">
				<div class="btn-group">
					<button
						class="waves-effect waves-circle btn btn-circle btn-primary-light h-40 w-40 rounded-circle l-h-45"
						type="button" data-bs-toggle="dropdown">
						<span class="icon-Add-user fs-22"><span class="path1"></span><span
							class="path2"></span></span>
					</button>
					<div class="dropdown-menu min-w-200">
						<a class="dropdown-item fs-16" href="#"> <span
							class="icon-Color me-15"></span> New Group
						</a> <a class="dropdown-item fs-16" href="#"> <span
							class="icon-Clipboard me-15"><span class="path1"></span><span
								class="path2"></span><span class="path3"></span><span
								class="path4"></span></span> Contacts
						</a> <a class="dropdown-item fs-16" href="#"> <span
							class="icon-Group me-15"><span class="path1"></span><span
								class="path2"></span></span> Groups
						</a> <a class="dropdown-item fs-16" href="#"> <span
							class="icon-Active-call me-15"><span class="path1"></span><span
								class="path2"></span></span> Calls
						</a> <a class="dropdown-item fs-16" href="#"> <span
							class="icon-Settings1 me-15"><span class="path1"></span><span
								class="path2"></span></span> Settings
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item fs-16" href="#"> <span
							class="icon-Question-circle me-15"><span class="path1"></span><span
								class="path2"></span></span> Help
						</a> <a class="dropdown-item fs-16" href="#"> <span
							class="icon-Notifications me-15"><span class="path1"></span><span
								class="path2"></span></span> Privacy
						</a>
					</div>
				</div>
				<div class="text-center flex-grow-1">
					<div class="text-dark fs-18">SkilledIn Labs</div>
					<div>
						<span class="badge badge-sm badge-dot badge-primary"></span> <span
							class="text-muted fs-12">Active</span>
					</div>
				</div>
				<div class="chat-box-toggle">
					<button id="chat-box-toggle"
						class="waves-effect waves-circle btn btn-circle btn-danger-light h-40 w-40 rounded-circle l-h-45"
						type="button">
						<span class="icon-Close fs-22"><span class="path1"></span><span
							class="path2"></span></span>
					</button>
				</div>
			</div>
			<div class="chat-box-body">
				<div class="chat-box-overlay"></div>
				<div class="chat-logs">
					<div class="chat-msg user">
						<div class="d-flex align-items-center">
							<span class="msg-avatar"> <img
								src="public/img/r28_a.png" class="avatar avatar-lg">
							</span>
							<div class="mx-10">
								<a href="#" class="text-dark hover-primary fw-bold">SkilledIn-Bot</a>
								<p class="text-muted fs-12 mb-0">2 Hours</p>
							</div>
						</div>
						<div class="cm-msg-text">Hi there, How can I help you?</div>
					</div>
					<div class="chat-msg self">
						<div class="d-flex align-items-center justify-content-end">
							<div class="mx-10">
								<a href="#" class="text-dark hover-primary fw-bold">You</a>
								<p class="text-muted fs-12 mb-0">3 minutes</p>
							</div>
							<span class="msg-avatar"> <img
								src="public/img/SGN_06_07_2021_1623056953999.png" class="avatar avatar-lg">
							</span>
						</div>
						<div class="cm-msg-text">My name is user.</div>
					</div>
					<div class="chat-msg user">
						<div class="d-flex align-items-center">
							<span class="msg-avatar"> <img
								src="public/img/r28_a.png" class="avatar avatar-lg">
							</span>
							<div class="mx-10">
								<a href="#" class="text-dark hover-primary fw-bold">SkilledIn-Bot</a>
								<p class="text-muted fs-12 mb-0">40 seconds</p>
							</div>
						</div>
						<div class="cm-msg-text">
							Nice to meet you User.<br>How can i help you?
						</div>
					</div>
				</div>
				<!--chat-log -->
			</div>
			<div class="chat-input">
				<form>
					<input type="text" id="chat-input" placeholder="Send a message..." />
					<button type="submit" class="chat-submit" id="chat-submit">
						<span class="icon-Send fs-22"></span>
					</button>
				</form>
			</div>
		</div>
	</div>

	<!-- Page Content overlay -->

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<!-- Vendor JS -->
	<script src="public/js/vendors.min.js"></script>
	<script src="public/js/pages/chat-popup.js"></script>
	<script src="../assets/icons/feather-icons/feather.min.js"></script>
	<script
		src="../assets/vendor_components/jquery-steps-master/build/jquery.steps.js"></script>
	<script
		src="../assets/vendor_components/jquery-validation-1.17.0/dist/jquery.validate.min.js"></script>
	<script src="../assets/vendor_components/sweetalert/sweetalert.min.js"></script>

	<!-- Rhythm Admin App -->
	<script src="public/js/template.js"></script>

	<!-- custom script -->
	<script type="text/javascript" src="public/js/index.js"></script>

	<script
		src="../assets/vendor_components/sweetalert/jquery.sweet-alert.custom.js"></script>



</body>

<!-- Mirrored from multipurposethemes.com/admin/rhythm-admin-template/bs5/main/forms_wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 05:23:44 GMT -->

</html>