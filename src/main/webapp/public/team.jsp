<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from multipurposethemes.com/admin/rhythm-admin-template/bs5/main/doctor_list.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 05:22:48 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://multipurposethemes.com/admin/rhythm-admin-template/bs5/images/favicon.ico">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous" />
    <title>Rhythm Admin - Dashboard</title>
  
	<!-- Vendors Style-->
	<link rel="stylesheet" href="public/css/vendors_css.css">
	  
	<!-- Style-->  
	<link rel="stylesheet" href="public/css/style.css">
	<link rel="stylesheet" href="public/css/skin_color.css">	

</head>
<body class="hold-transition light-skin sidebar-mini theme-success fixed">
	
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
							<li><a href="/about"> <i
									class="fas fa-code"></i> <span>About Us</span> <span
									class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/privacy"> <i
									class="fas fa-user-secret"></i> <span>Privacy</span> <span
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
					<h4 class="page-title">Team</h4>
					<div class="d-inline-block align-items-center">
						<nav>
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#"><i class="mdi mdi-home-outline"></i></a></li>
								<li class="breadcrumb-item active" aria-current="page">Team</li>
							</ol>
						</nav>
					</div>
				</div>
				
			</div>
		</div>  

		<!-- Main content -->
		<section class="content">
		<div class="col-12 col-lg-12 col-xl-12">
		<div class="box box-body analytics-info" style="text-align:center;">
										<h1 class="box-title">Meet the people who make awesome
						stuffs</h1>
									</div>
		</div>
			<div class="row">

			  <div class="col-12 col-lg-4">
				<div class="box ribbon-box">
				  <div class="ribbon-two ribbon-two-primary"><span>Prof-Incharge</span></div>
				  <div class="box-header no-border p-0">				
					<a href="#">
					  <img class="img-fluid" style="height:425px;width:380px" src="public/img/teams/sc_dutta375x375.jpg" alt="Prof Incharge">
					</a>
				  </div>
				  <div class="box-body">
						<div class="user-contact list-inline text-center">
							<a href="#" class="btn btn-circle mb-5 btn-facebook"><i class="fab fa-github"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-primary"><i class="fab fa-whatsapp"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-twitter"><i class="fab fa-linkedin"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-warning"><i class="fa fa-envelope"></i></a>				
						</div>
					  <div class="text-center">
						<h3 class="my-10"><a href="#">SC Dutta</a></h3>
						<h6 class="user-info mt-0 mb-10 text-fade">Associate Professor, BIT SINDRI</h6>
					  </div>
				  </div>
				</div>
			  </div>
			  <div class="col-12 col-lg-4">
				<div class="box ribbon-box">
				  <div class="ribbon-two ribbon-two-danger"><span>AI/Backend</span></div>
				  <div class="box-header no-border p-0" style="margin-left:17px;">				
					<a href="#">
					  <img class="img-fluid" src="public/img/teams/raj2.jpg" alt="" style="height:425px;width:350px;">
					</a>
				  </div>
				  <div class="box-body">
					  <div class="text-center">
						<div class="user-contact list-inline text-center">
							<a href="#" class="btn btn-circle mb-5 btn-facebook"><i class="fab fa-github"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-primary"><i class="fab fa-whatsapp"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-twitter"><i class="fab fa-linkedin"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-warning"><i class="fa fa-envelope"></i></a>				
						</div>
						<h3 class="my-10"><a href="#">Utkarsh Raj</a></h3>
						<h6 class="user-info mt-0 mb-10 text-fade">AI & Backend Engineer</h6>
					  </div>
				  </div>
				</div>
			  </div>
			  <div class="col-12 col-lg-4">
				<div class="box ribbon-box">
				  <div class="ribbon-two ribbon-two-success"><span>Full Stack</span></div>
				  <div class="box-header no-border p-0">				
					<a href="#">
					  <img class="img-fluid"  style="height:425px;width:380px;" src="public/img/teams/yash_webdeveloper_2.jpg" alt="">
					</a>
				  </div>
				  <div class="box-body">
					  <div class="text-center">
						<div class="user-contact list-inline text-center">
							<a href="#" class="btn btn-circle mb-5 btn-facebook"><i class="fab fa-github"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-primary"><i class="fab fa-whatsapp"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-twitter"><i class="fab fa-linkedin"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-warning"><i class="fa fa-envelope"></i></a>				
						</div>
						<h3 class="my-10"><a href="#">Yashwant Narayan</a></h3>
						<h6 class="user-info mt-0 mb-10 text-fade">Full Stack Developer</h6>
					  </div>
				  </div>
				</div>
			  </div>
			  <div class="col-12 col-lg-4">
				<div class="box ribbon-box">
				<div class="ribbon-two ribbon-two-info"><span>UI/UX</span></div>
				  <div class="box-header no-border p-0">				
					<a href="#">
					  <img class="img-fluid" style="height:425px;width:590px;" src="public/img/teams/soda375.png" alt="">
					</a>
				  </div>
				  <div class="box-body">
					  <div class="text-center">
						<div class="user-contact list-inline text-center">
							<a href="#" class="btn btn-circle mb-5 btn-facebook"><i class="fab fa-github"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-primary"><i class="fab fa-whatsapp"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-twitter"><i class="fab fa-linkedin"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-warning"><i class="fa fa-envelope"></i></a>				
						</div>
						<h3 class="my-10"><a href="#">Sodagar Hemberom</a></h3>
						<h6 class="user-info mt-0 mb-10 text-fade">UI/UX & Graphics Designer</h6>
					  </div>
				  </div>
				</div>
			  </div>
			  <div class="col-12 col-lg-4">
				<div class="box ribbon-box">
				  <div class="ribbon-two ribbon-two-info"><span>Data Scientist</span></div>
				  <div class="box-header no-border p-0">				
					<a href="#">
					  <img class="img-fluid" style="height:425px;width:380px;" src="public/img/teams/sid.jpg" alt="">
					</a>
				  </div>
				  <div class="box-body">
					  <div class="text-center">
						<div class="user-contact list-inline text-center">
							<a href="#" class="btn btn-circle mb-5 btn-facebook"><i class="fab fa-github"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-primary"><i class="fab fa-whatsapp"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-twitter"><i class="fab fa-linkedin"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-warning"><i class="fa fa-envelope"></i></a>				
						</div>
						<h3 class="my-10"><a href="#">Sidharth Gupta</a></h3>
						<h6 class="user-info mt-0 mb-10 text-fade">Data Scientist & Content Developer</h6>
					  </div>
				  </div>
				</div>
			  </div>
			  <div class="col-12 col-lg-4">
				<div class="box ribbon-box">
				<div class="ribbon-two ribbon-two-info"><span>QA</span></div>
				  <div class="box-header no-border p-0">				
					<a href="#">
					  <img class="img-fluid" style="height:425px;width:380px;" src="public/img/teams/sonu.jpg" alt="">
					</a>
				  </div>
				  <div class="box-body">
					  <div class="text-center">
						<div class="user-contact list-inline text-center">
							<a href="#" class="btn btn-circle mb-5 btn-facebook"><i class="fab fa-github"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-primary"><i class="fab fa-whatsapp"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-twitter"><i class="fab fa-linkedin"></i></a>
							<a href="#" class="btn btn-circle mb-5 btn-warning"><i class="fa fa-envelope"></i></a>				
						</div>
						<h3 class="my-10"><a href="#">Sonu Tudu</a></h3>
						<h6 class="user-info mt-0 mb-10 text-fade">QA ENGINEER & TESTING</h6>
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
				
			</div>
			&copy;
			<script>
				document.write(new Date().getFullYear())
			</script>
			<a href="http://skilledin.ml">SkilledIn-Labs</a>.
			All Rights Reserved.
		</footer>

  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
	
	<!-- ./side demo panel -->
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
	
	
	<!-- Vendor JS -->
	<script src="public/js/vendors.min.js"></script>
	<script src="public/js/pages/chat-popup.js"></script>
    <script src="assets/icons/feather-icons/feather.min.js"></script>	
	
	<!-- Rhythm Admin App -->
	<script src="public/js/template.js"></script>
	
	

</body>

<!-- Mirrored from multipurposethemes.com/admin/rhythm-admin-template/bs5/main/doctor_list.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 05:22:53 GMT -->
</html>
