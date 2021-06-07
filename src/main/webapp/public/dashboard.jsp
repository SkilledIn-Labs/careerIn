<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from multipurposethemes.com/admin/rhythm-admin-template/bs5/main/index2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 05:22:39 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="https://multipurposethemes.com/admin/rhythm-admin-template/bs5/images/favicon.ico">

<title>SkilledIn - Dashboard</title>

<!-- Vendors Style-->
<link rel="stylesheet" href="public/css/vendors_css.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous" />
<!-- Style-->
<link rel="stylesheet" href="public/css/style.css">
<link rel="stylesheet" href="public/css/skin_color.css">

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
							src="https://skilledin.file.core.windows.net/pics/SGN_06_07_2021_1623056953999.png?st=2021-06-07T09%3A03%3A32Z&se=2023-06-08T09%3A03%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=sA%2BxpPxQZ9AVyzGyMS6s6RHf%2Bgk%2B%2FI9QX%2FQUJ3AVHB0%3D"
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
									<img src="../images/avatar/avatar-1.png"
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
							<li class="treeview"><a href="/home"> <i class="fas fa-home"></i><span>Home</span>
									<span class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/dashboard"> <i class="fas fa-chart-bar"></i>
									<span>Dashboard</span>
							</a></li>
							<li class="treeview"><a href="/team"> <i
									class="fas fa-users"></i> <span>Team</span> <span
									class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li class="treeview"><a href="/team"> <i
									class="fas fa-code"></i> <span>About Us</span> <span
									class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li class="treeview"><a href="/team"> <i
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

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div class="container-full">
				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-xl-8 col-12">
							<div class="box">
								<div class="box-body">
									<div class="row">
										<div class="col-xl-3 col-md-6 col-12">
											<div class="d-flex align-items-center mb-15 mb-lg-0">
												<div
													class="me-15 bg-danger w-60 h-60 rounded-circle text-center l-h-70">
													<i class="fs-24 fa fa-user"></i>
												</div>
												<div>
													<p class="text-fade fs-16 mb-0">Patients</p>
													<h3 class="fw-500 my-0">1,421</h3>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-md-6 col-12">
											<div class="d-flex align-items-center mb-15 mb-lg-0">
												<div
													class="me-15 bg-warning w-60 h-60 rounded-circle text-center l-h-70">
													<i class="fs-24 fa fa-user-md"></i>
												</div>
												<div>
													<p class="text-fade fs-16 mb-0">Staffs</p>
													<h3 class="fw-500 my-0">1,521</h3>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-md-6 col-12">
											<div class="d-flex align-items-center mb-15 mb-md-0">
												<div
													class="me-15 bg-success w-60 h-60 rounded-circle text-center l-h-70">
													<i class="fs-24 fa fa-hospital-o"></i>
												</div>
												<div>
													<p class="text-fade fs-16 mb-0">Rooms</p>
													<h3 class="fw-500 my-0">2,415</h3>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-md-6 col-12">
											<div class="d-flex align-items-center mb-15 mb-md-0">
												<div
													class="me-15 bg-info w-60 h-60 rounded-circle text-center l-h-70">
													<i class="fs-24 fa fa-ambulance"></i>
												</div>
												<div>
													<p class="text-fade fs-16 mb-0">Ambulance</p>
													<h3 class="fw-500 my-0">15</h3>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xl-6 col-12">
									<div class="box">
										<div class="box-header">
											<h4 class="box-title">Patients</h4>
										</div>
										<div class="box-body">
											<p class="mb-0 text-muted">Total Patients</p>
											<h3 class="text-success mt-0">412,154 People</h3>
											<div class="d-md-flex align-items-center">
												<div id="patient_overview" class="min-h-250"></div>
												<div class="d-md-block d-flex">
													<div class="d-flex align-items-center me-md-0 me-15">
														<div class="me-10 bg-success w-30 h-30 rounded"></div>
														<div>
															<p class="text-fade mb-0">New</p>
															<h4 class="fw-500 my-0">64</h4>
														</div>
													</div>
													<div class="d-flex align-items-center my-20 me-md-0 me-15">
														<div class="me-10 bg-warning w-30 h-30 rounded"></div>
														<div>
															<p class="text-fade mb-0">Recovered</p>
															<h4 class="fw-500 my-0">73</h4>
														</div>
													</div>
													<div class="d-flex align-items-center me-md-0 me-15">
														<div class="me-10 bg-danger w-30 h-30 rounded"></div>
														<div>
															<p class="text-fade mb-0">In Treatment</p>
															<h4 class="fw-500 my-0">48</h4>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-12">
									<div class="box">
										<div class="box-header">
											<h4 class="box-title">Daily Revenue Report</h4>
										</div>
										<div class="box-body">
											<h3 class="text-primary mt-0">
												$32,485 <small class="text-muted">$12,458</small>
											</h3>
											<div id="recent_trend"></div>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-12">
									<div class="box">
										<div class="box-header">
											<h4 class="box-title">Next Patient</h4>
										</div>
										<div class="box-body">
											<div class="news-slider owl-carousel owl-sl">
												<div>
													<div class="d-flex align-items-center mb-10">
														<div class="me-15">
															<img src="../images/avatar/1.jpg"
																class="w-auto avatar avatar-lg rounded10 bg-primary-light"
																alt="" />
														</div>
														<div class="d-flex flex-column flex-grow-1 fw-500">
															<p class="hover-primary text-fade mb-1 fs-14">Shawn
																Hampton</p>
															<span class="text-dark fs-16">Emergency
																appointment</span>
														</div>
														<div>
															<a href="#"
																class="waves-effect waves-circle btn btn-circle btn-primary-light btn-sm mx-15"><i
																class="fa fa-phone"></i></a>
														</div>
													</div>
													<div
														class="d-flex justify-content-between align-items-end mt-40 py-10 bt-dashed border-top">
														<div>
															<p class="mb-0 text-muted">
																<i class="fa fa-clock-o me-5"></i> 10:00 <span
																	class="mx-20">$ 30</span>
															</p>
														</div>
														<div>
															<div class="dropdown">
																<a data-bs-toggle="dropdown" href="#"
																	class="base-font mx-30"><i
																	class="ti-more-alt text-muted"></i></a>
																<div class="dropdown-menu dropdown-menu-end">
																	<a class="dropdown-item" href="#"><i
																		class="ti-import"></i> Import</a> <a class="dropdown-item"
																		href="#"><i class="ti-export"></i> Export</a> <a
																		class="dropdown-item" href="#"><i
																		class="ti-printer"></i> Print</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item" href="#"><i
																		class="ti-settings"></i> Settings</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div>
													<div class="d-flex align-items-center mb-10">
														<div class="me-15">
															<img src="../images/avatar/2.jpg"
																class="w-auto avatar avatar-lg rounded10 bg-primary-light"
																alt="" />
														</div>
														<div class="d-flex flex-column flex-grow-1 fw-500">
															<p class="hover-primary text-fade mb-1 fs-14">Polly
																Paul</p>
															<span class="text-dark fs-16">USG + Consultation</span>
														</div>
														<div>
															<a href="#"
																class="waves-effect waves-circle btn btn-circle btn-primary-light btn-sm mx-15"><i
																class="fa fa-phone"></i></a>
														</div>
													</div>
													<div
														class="d-flex justify-content-between align-items-end mt-40 py-10 bt-dashed border-top">
														<div>
															<p class="mb-0 text-muted">
																<i class="fa fa-clock-o me-5"></i> 10:30 <span
																	class="mx-20">$ 50</span>
															</p>
														</div>
														<div>
															<div class="dropdown">
																<a data-bs-toggle="dropdown" href="#"
																	class="base-font mx-30"><i
																	class="ti-more-alt text-muted"></i></a>
																<div class="dropdown-menu dropdown-menu-end">
																	<a class="dropdown-item" href="#"><i
																		class="ti-import"></i> Import</a> <a class="dropdown-item"
																		href="#"><i class="ti-export"></i> Export</a> <a
																		class="dropdown-item" href="#"><i
																		class="ti-printer"></i> Print</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item" href="#"><i
																		class="ti-settings"></i> Settings</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div>
													<div class="d-flex align-items-center mb-10">
														<div class="me-15">
															<img src="../images/avatar/3.jpg"
																class="w-auto avatar avatar-lg rounded10 bg-primary-light"
																alt="" />
														</div>
														<div class="d-flex flex-column flex-grow-1 fw-500">
															<p class="hover-primary text-fade mb-1 fs-14">Johen
																Doe</p>
															<span class="text-dark fs-16">Laboratory screening</span>
														</div>
														<div>
															<a href="#"
																class="waves-effect waves-circle btn btn-circle btn-primary-light btn-sm mx-15"><i
																class="fa fa-phone"></i></a>
														</div>
													</div>
													<div
														class="d-flex justify-content-between align-items-end mt-40 py-10 bt-dashed border-top">
														<div>
															<p class="mb-0 text-muted">
																<i class="fa fa-clock-o me-5"></i> 11:00 <span
																	class="mx-20">$ 70</span>
															</p>
														</div>
														<div>
															<div class="dropdown">
																<a data-bs-toggle="dropdown" href="#"
																	class="base-font mx-30"><i
																	class="ti-more-alt text-muted"></i></a>
																<div class="dropdown-menu dropdown-menu-end">
																	<a class="dropdown-item" href="#"><i
																		class="ti-import"></i> Import</a> <a class="dropdown-item"
																		href="#"><i class="ti-export"></i> Export</a> <a
																		class="dropdown-item" href="#"><i
																		class="ti-printer"></i> Print</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item" href="#"><i
																		class="ti-settings"></i> Settings</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-12">
									<div class="box">
										<div class="box-header">
											<h4 class="box-title">Laboratory tests</h4>
										</div>
										<div class="box-body">
											<div class="news-slider owl-carousel owl-sl">
												<div>
													<div class="d-flex align-items-center mb-10">
														<div class="d-flex flex-column flex-grow-1 fw-500">
															<p class="hover-primary text-fade mb-1 fs-14">
																<i class="fa fa-link"></i> Shawn Hampton
															</p>
															<span class="text-dark fs-16">Beta 2 Microglobulin</span>
															<p class="mb-0 fs-14">
																Marker Test <span class="badge badge-dot badge-primary"></span>
															</p>
														</div>
														<div>
															<div class="dropdown">
																<a data-bs-toggle="dropdown" href="#"
																	class="base-font mx-30"><i
																	class="ti-more-alt text-muted"></i></a>
																<div class="dropdown-menu dropdown-menu-end">
																	<a class="dropdown-item" href="#"><i
																		class="ti-import"></i> Import</a> <a class="dropdown-item"
																		href="#"><i class="ti-export"></i> Export</a> <a
																		class="dropdown-item" href="#"><i
																		class="ti-printer"></i> Print</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item" href="#"><i
																		class="ti-settings"></i> Settings</a>
																</div>
															</div>
														</div>
													</div>
													<div
														class="d-flex justify-content-between align-items-end py-10">
														<div>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light">Details</a>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light">Contact
																Patient</a>
														</div>
														<div>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light"><i
																class="fa fa-check"></i> Archive</a>
														</div>
													</div>
												</div>
												<div>
													<div class="d-flex align-items-center mb-10">
														<div class="d-flex flex-column flex-grow-1 fw-500">
															<p class="hover-primary text-fade mb-1 fs-14">
																<i class="fa fa-link"></i> Johen Doe
															</p>
															<span class="text-dark fs-16">Keeping pregnant</span>
															<p class="mb-0 fs-14">
																Prga Test <span class="badge badge-dot badge-primary"></span>
															</p>
														</div>
														<div>
															<div class="dropdown">
																<a data-bs-toggle="dropdown" href="#"
																	class="base-font mx-30"><i
																	class="ti-more-alt text-muted"></i></a>
																<div class="dropdown-menu dropdown-menu-end">
																	<a class="dropdown-item" href="#"><i
																		class="ti-import"></i> Import</a> <a class="dropdown-item"
																		href="#"><i class="ti-export"></i> Export</a> <a
																		class="dropdown-item" href="#"><i
																		class="ti-printer"></i> Print</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item" href="#"><i
																		class="ti-settings"></i> Settings</a>
																</div>
															</div>
														</div>
													</div>
													<div
														class="d-flex justify-content-between align-items-end py-10">
														<div>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light">Details</a>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light">Contact
																Patient</a>
														</div>
														<div>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light"><i
																class="fa fa-check"></i> Archive</a>
														</div>
													</div>
												</div>
												<div>
													<div class="d-flex align-items-center mb-10">
														<div class="d-flex flex-column flex-grow-1 fw-500">
															<p class="hover-primary text-fade mb-1 fs-14">
																<i class="fa fa-link"></i> Polly Paul
															</p>
															<span class="text-dark fs-16">USG + Consultation</span>
															<p class="mb-0 fs-14">
																Marker Test <span class="badge badge-dot badge-primary"></span>
															</p>
														</div>
														<div>
															<div class="dropdown">
																<a data-bs-toggle="dropdown" href="#"
																	class="base-font mx-30"><i
																	class="ti-more-alt text-muted"></i></a>
																<div class="dropdown-menu dropdown-menu-end">
																	<a class="dropdown-item" href="#"><i
																		class="ti-import"></i> Import</a> <a class="dropdown-item"
																		href="#"><i class="ti-export"></i> Export</a> <a
																		class="dropdown-item" href="#"><i
																		class="ti-printer"></i> Print</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item" href="#"><i
																		class="ti-settings"></i> Settings</a>
																</div>
															</div>
														</div>
													</div>
													<div
														class="d-flex justify-content-between align-items-end py-10">
														<div>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light">Details</a>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light">Contact
																Patient</a>
														</div>
														<div>
															<a href="#"
																class="waves-effect waves-light btn btn-sm btn-primary-light"><i
																class="fa fa-check"></i> Archive</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-12">
									<div class="box">
										<div class="box-header">
											<h4 class="box-title">Overal appointment</h4>
										</div>
										<div class="box-body">
											<div id="appointment_overview"></div>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-12">
									<div class="box">
										<div class="box-header">
											<h4 class="box-title">Patients Pace</h4>
										</div>
										<div class="box-body">
											<div id="patients_pace"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-12">
							<div class="box">
								<div class="box-header with-border">
									<h4 class="box-title">Available Doctors</h4>
									<p class="mb-0 pull-right">Today</p>
								</div>
								<div class="box-body">
									<div class="inner-user-div3">
										<div class="d-flex align-items-center mb-30">
											<div class="me-15">
												<img src="../images/avatar/avatar-1.png"
													class="avatar avatar-lg rounded10 bg-primary-light" alt="" />
											</div>
											<div class="d-flex flex-column flex-grow-1 fw-500">
												<a href="#" class="text-dark hover-primary mb-1 fs-16">Dr.
													Jaylon Stanton</a> <span class="text-fade">Dentist</span>
											</div>
											<div class="dropdown">
												<a class="px-10 pt-5" href="#" data-bs-toggle="dropdown"><i
													class="ti-more-alt"></i></a>
												<div class="dropdown-menu dropdown-menu-end">
													<a class="dropdown-item flexbox" href="#"> <span>Inbox</span>
														<span class="badge badge-pill badge-info">5</span>
													</a> <a class="dropdown-item" href="#">Sent</a> <a
														class="dropdown-item" href="#">Spam</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item flexbox" href="#"> <span>Draft</span>
														<span class="badge badge-pill badge-default">1</span>
													</a>
												</div>
											</div>
										</div>
										<div class="d-flex align-items-center mb-30">
											<div class="me-15">
												<img src="../images/avatar/avatar-10.png"
													class="avatar avatar-lg rounded10 bg-primary-light" alt="" />
											</div>
											<div class="d-flex flex-column flex-grow-1 fw-500">
												<a href="#" class="text-dark hover-danger mb-1 fs-16">Dr.
													Carla Schleifer</a> <span class="text-fade">Oculist</span>
											</div>
											<div class="dropdown">
												<a class="px-10 pt-5" href="#" data-bs-toggle="dropdown"><i
													class="ti-more-alt"></i></a>
												<div class="dropdown-menu dropdown-menu-end">
													<a class="dropdown-item flexbox" href="#"> <span>Inbox</span>
														<span class="badge badge-pill badge-info">5</span>
													</a> <a class="dropdown-item" href="#">Sent</a> <a
														class="dropdown-item" href="#">Spam</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item flexbox" href="#"> <span>Draft</span>
														<span class="badge badge-pill badge-default">1</span>
													</a>
												</div>
											</div>
										</div>
										<div class="d-flex align-items-center mb-30">
											<div class="me-15">
												<img src="../images/avatar/avatar-11.png"
													class="avatar avatar-lg rounded10 bg-primary-light" alt="" />
											</div>
											<div class="d-flex flex-column flex-grow-1 fw-500">
												<a href="#" class="text-dark hover-success mb-1 fs-16">Dr.
													Hanna Geidt</a> <span class="text-fade">Surgeon</span>
											</div>
											<div class="dropdown">
												<a class="px-10 pt-5" href="#" data-bs-toggle="dropdown"><i
													class="ti-more-alt"></i></a>
												<div class="dropdown-menu dropdown-menu-end">
													<a class="dropdown-item flexbox" href="#"> <span>Inbox</span>
														<span class="badge badge-pill badge-info">5</span>
													</a> <a class="dropdown-item" href="#">Sent</a> <a
														class="dropdown-item" href="#">Spam</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item flexbox" href="#"> <span>Draft</span>
														<span class="badge badge-pill badge-default">1</span>
													</a>
												</div>
											</div>
										</div>
										<div class="d-flex align-items-center mb-30">
											<div class="me-15">
												<img src="../images/avatar/avatar-12.png"
													class="avatar avatar-lg rounded10 bg-primary-light" alt="" />
											</div>
											<div class="d-flex flex-column flex-grow-1 fw-500">
												<a href="#" class="text-dark hover-info mb-1 fs-16">Dr.
													Roger George</a> <span class="text-fade">General
													Practitioners</span>
											</div>
											<div class="dropdown">
												<a class="px-10 pt-5" href="#" data-bs-toggle="dropdown"><i
													class="ti-more-alt"></i></a>
												<div class="dropdown-menu dropdown-menu-end">
													<a class="dropdown-item flexbox" href="#"> <span>Inbox</span>
														<span class="badge badge-pill badge-info">5</span>
													</a> <a class="dropdown-item" href="#">Sent</a> <a
														class="dropdown-item" href="#">Spam</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item flexbox" href="#"> <span>Draft</span>
														<span class="badge badge-pill badge-default">1</span>
													</a>
												</div>
											</div>
										</div>
										<div class="d-flex align-items-center">
											<div class="me-15">
												<img src="../images/avatar/avatar-15.png"
													class="avatar avatar-lg rounded10 bg-primary-light" alt="" />
											</div>
											<div class="d-flex flex-column flex-grow-1 fw-500">
												<a href="#" class="text-dark hover-warning mb-1 fs-16">Dr.
													Natalie doe</a> <span class="text-fade">Physician</span>
											</div>
											<div class="dropdown">
												<a class="px-10 pt-5" href="#" data-bs-toggle="dropdown"><i
													class="ti-more-alt"></i></a>
												<div class="dropdown-menu dropdown-menu-end">
													<a class="dropdown-item flexbox" href="#"> <span>Inbox</span>
														<span class="badge badge-pill badge-info">5</span>
													</a> <a class="dropdown-item" href="#">Sent</a> <a
														class="dropdown-item" href="#">Spam</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item flexbox" href="#"> <span>Draft</span>
														<span class="badge badge-pill badge-default">1</span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box bg-success box-inverse">
								<div class="box-header">
									<h4 class="box-title">Doctor of the Month</h4>
								</div>
								<div class="box-body text-center">
									<div class="mb-0">
										<img src="../images/avatar/avatar-12.png" width="100"
											class="rounded-circle bg-info-light" alt="user">
										<h3 class="mt-20 mb-0">Dr. Johen Doe</h3>
										<p class="mb-0">Cardiologists</p>
									</div>
								</div>
								<div class="p-20">
									<div class="row">
										<div class="col-6 be-1">
											<div class="d-flex align-items-center">
												<img src="../images/health-1.png"
													class="img-fluid me-10 w-50" alt="" />
												<div>
													<h2 class="mb-0 text-white">10</h2>
													<p class="mb-0 text-white-50">Operations</p>
												</div>
											</div>
										</div>
										<div class="col-6">
											<div class="d-flex align-items-center">
												<img src="../images/health-2.png"
													class="img-fluid me-10 w-50" alt="" />
												<div>
													<h2 class="mb-0 text-white">47</h2>
													<p class="mb-0 text-white-50">Patients</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="box">
								<div class="box-header no-border">
									<h4 class="box-title">Admission by Division</h4>
								</div>
								<div class="box-body pt-0">
									<div id="chart124"></div>
									<div class="row mt-25">
										<div class="col-6">
											<p class="mb-5">
												<span class="badge badge-dot badge-success"></span>
												Cardiology
											</p>
											<p class="mb-5">
												<span class="badge badge-dot badge-info"></span>
												Endocrinology
											</p>
											<p class="mb-0">
												<span class="badge badge-dot badge-danger"></span>
												Physicians
											</p>
										</div>
										<div class="col-6">
											<p class="mb-5">
												<span class="badge badge-dot badge-warning"></span>
												Dermatology
											</p>
											<p class="mb-5">
												<span class="badge badge-dot badge-primary"></span>
												Orthopedics
											</p>
											<p class="mb-0">
												<span class="badge badge-dot badge-secondary"></span>
												Immunology
											</p>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right d-none d-sm-inline-block">
				<ul
					class="nav nav-primary nav-dotted nav-dot-separated justify-content-center justify-content-md-end">
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">FAQ</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Purchase
							Now</a></li>
				</ul>
			</div>
			&copy;
			<script>
				document.write(new Date().getFullYear())
			</script>
			<a href="https://www.multipurposethemes.com/">Multipurpose Themes</a>.
			All Rights Reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar">

			<div class="rpanel-title">
				<span class="pull-right btn btn-circle btn-danger"
					data-toggle="control-sidebar"><i
					class="ion ion-close text-white"></i></span>
			</div>
			<!-- Create the tabs -->
			<ul class="nav nav-tabs control-sidebar-tabs">
				<li class="nav-item"><a href="#control-sidebar-home-tab"
					data-bs-toggle="tab" class="active"><i
						class="mdi mdi-message-text"></i></a></li>
				<li class="nav-item"><a href="#control-sidebar-settings-tab"
					data-bs-toggle="tab"><i class="mdi mdi-playlist-check"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<div class="flexbox">
						<a href="javascript:void(0)" class="text-grey"> <i
							class="ti-more"></i>
						</a>
						<p>Users</p>
						<a href="javascript:void(0)" class="text-end text-grey"><i
							class="ti-plus"></i></a>
					</div>
					<div class="lookup lookup-sm lookup-right d-none d-lg-block">
						<input type="text" name="s" placeholder="Search" class="w-p100">
					</div>
					<div class="media-list media-list-hover mt-20">
						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-success" href="#"> <img
								src="../images/avatar/1.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Tyler</strong></a>
								</p>
								<p>Praesent tristique diam...</p>
								<span>Just now</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-danger" href="#"> <img
								src="../images/avatar/2.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Luke</strong></a>
								</p>
								<p>Cras tempor diam ...</p>
								<span>33 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-warning" href="#"> <img
								src="../images/avatar/3.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-primary" href="#"> <img
								src="../images/avatar/4.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-success" href="#"> <img
								src="../images/avatar/1.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Tyler</strong></a>
								</p>
								<p>Praesent tristique diam...</p>
								<span>Just now</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-danger" href="#"> <img
								src="../images/avatar/2.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Luke</strong></a>
								</p>
								<p>Cras tempor diam ...</p>
								<span>33 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-warning" href="#"> <img
								src="../images/avatar/3.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-primary" href="#"> <img
								src="../images/avatar/4.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="fs-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

					</div>

				</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<div class="flexbox">
						<a href="javascript:void(0)" class="text-grey"> <i
							class="ti-more"></i>
						</a>
						<p>Todo List</p>
						<a href="javascript:void(0)" class="text-end text-grey"><i
							class="ti-plus"></i></a>
					</div>
					<ul class="todo-list mt-20">
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_1"
							class="filled-in"> <label for="basic_checkbox_1"
							class="mb-0 h-15"></label> <!-- todo text --> <span
							class="text-line">Nulla vitae purus</span> <!-- Emphasis label -->
							<small class="badge bg-danger"><i class="fa fa-clock-o"></i>
								2 mins</small> <!-- General tools such as edit or delete-->
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_2"
							class="filled-in"> <label for="basic_checkbox_2"
							class="mb-0 h-15"></label> <span class="text-line">Phasellus
								interdum</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 4 hours</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_3"
							class="filled-in"> <label for="basic_checkbox_3"
							class="mb-0 h-15"></label> <span class="text-line">Quisque
								sodales</span> <small class="badge bg-warning"><i
								class="fa fa-clock-o"></i> 1 day</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_4"
							class="filled-in"> <label for="basic_checkbox_4"
							class="mb-0 h-15"></label> <span class="text-line">Proin
								nec mi porta</span> <small class="badge bg-success"><i
								class="fa fa-clock-o"></i> 3 days</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_5"
							class="filled-in"> <label for="basic_checkbox_5"
							class="mb-0 h-15"></label> <span class="text-line">Maecenas
								scelerisque</span> <small class="badge bg-primary"><i
								class="fa fa-clock-o"></i> 1 week</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_6"
							class="filled-in"> <label for="basic_checkbox_6"
							class="mb-0 h-15"></label> <span class="text-line">Vivamus
								nec orci</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 1 month</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_7"
							class="filled-in"> <label for="basic_checkbox_7"
							class="mb-0 h-15"></label> <!-- todo text --> <span
							class="text-line">Nulla vitae purus</span> <!-- Emphasis label -->
							<small class="badge bg-danger"><i class="fa fa-clock-o"></i>
								2 mins</small> <!-- General tools such as edit or delete-->
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_8"
							class="filled-in"> <label for="basic_checkbox_8"
							class="mb-0 h-15"></label> <span class="text-line">Phasellus
								interdum</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 4 hours</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_9"
							class="filled-in"> <label for="basic_checkbox_9"
							class="mb-0 h-15"></label> <span class="text-line">Quisque
								sodales</span> <small class="badge bg-warning"><i
								class="fa fa-clock-o"></i> 1 day</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_10"
							class="filled-in"> <label for="basic_checkbox_10"
							class="mb-0 h-15"></label> <span class="text-line">Proin
								nec mi porta</span> <small class="badge bg-success"><i
								class="fa fa-clock-o"></i> 3 days</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
					</ul>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

	</div>
	<!-- ./wrapper -->

	<!-- ./side demo panel -->
	<div class="sticky-toolbar">
		<a href="#" data-bs-toggle="tooltip" data-bs-placement="left"
			title="Buy Now"
			class="waves-effect waves-light btn btn-success btn-flat mb-5 btn-sm"
			target="_blank"> <span class="icon-Money"><span
				class="path1"></span><span class="path2"></span></span>
		</a> <a href="#" data-bs-toggle="tooltip" data-bs-placement="left"
			title="Portfolio"
			class="waves-effect waves-light btn btn-danger btn-flat mb-5 btn-sm"
			target="_blank"> <span class="icon-Image"></span>
		</a> <a id="chat-popup" href="#" data-bs-toggle="tooltip"
			data-bs-placement="left" title="Live Chat"
			class="waves-effect waves-light btn btn-warning btn-flat btn-sm">
			<span class="icon-Group-chat"><span class="path1"></span><span
				class="path2"></span></span>
		</a>
	</div>
	<!-- Sidebar -->

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
					<div class="text-dark fs-18">Mayra Sibley</div>
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
								src="../images/avatar/2.jpg" class="avatar avatar-lg">
							</span>
							<div class="mx-10">
								<a href="#" class="text-dark hover-primary fw-bold">Mayra
									Sibley</a>
								<p class="text-muted fs-12 mb-0">2 Hours</p>
							</div>
						</div>
						<div class="cm-msg-text">Hi there, I'm Jesse and you?</div>
					</div>
					<div class="chat-msg self">
						<div class="d-flex align-items-center justify-content-end">
							<div class="mx-10">
								<a href="#" class="text-dark hover-primary fw-bold">You</a>
								<p class="text-muted fs-12 mb-0">3 minutes</p>
							</div>
							<span class="msg-avatar"> <img
								src="../images/avatar/3.jpg" class="avatar avatar-lg">
							</span>
						</div>
						<div class="cm-msg-text">My name is Anne Clarc.</div>
					</div>
					<div class="chat-msg user">
						<div class="d-flex align-items-center">
							<span class="msg-avatar"> <img
								src="../images/avatar/2.jpg" class="avatar avatar-lg">
							</span>
							<div class="mx-10">
								<a href="#" class="text-dark hover-primary fw-bold">Mayra
									Sibley</a>
								<p class="text-muted fs-12 mb-0">40 seconds</p>
							</div>
						</div>
						<div class="cm-msg-text">
							Nice to meet you Anne.<br>How can i help you?
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


	<!-- Vendor JS -->
	<script src="public/js/vendors.min.js"></script>
	<script src="public/js/pages/chat-popup.js"></script>
	<script src="../assets/icons/feather-icons/feather.min.js"></script>

	<script
		src="../assets/vendor_components/apexcharts-bundle/dist/apexcharts.js"></script>
	<script
		src="../assets/vendor_components/OwlCarousel2/dist/owl.carousel.js"></script>


	<!-- Rhythm Admin App -->
	<script src="public/js/template.js"></script>
	<script src="public/js/pages/dashboard2.js"></script>

</body>

<!-- Mirrored from multipurposethemes.com/admin/rhythm-admin-template/bs5/main/index2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 05:22:42 GMT -->
</html>
