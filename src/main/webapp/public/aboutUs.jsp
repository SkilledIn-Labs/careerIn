<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="public/img/SGN_06_07_2021_1623056953999.png">

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
				<a href="/" class="logo"> <!-- logo-->
					<div class="logo-mini w-50">
						<span class="light-logo"><img
							src="public/img/SGN_06_07_2021_1623056953999.png" alt="logo"
							style="max-width: 128%; margin-top: 22px;"></span>
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
							<li><a href="/home"> <i class="fas fa-home"></i><span>Home</span>
									<span class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/dashboard"> <i class="fas fa-chart-bar"></i>
									<span>Dashboard</span>
							</a></li>
							<li><a href="/team"> <i class="fas fa-users"></i> <span>Team</span>
									<span class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/about"> <i class="fas fa-code"></i> <span>About
										Us</span> <span class="pull-right-container"> </span>
							</a>
								<ul class="treeview-menu">
								</ul></li>
							<li><a href="/privacy"> <i class="fas fa-user-secret"></i>
									<span>Privacy</span> <span class="pull-right-container">
								</span>
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
							<h4 class="page-title">About Us</h4>
							<div class="d-inline-block align-items-center">
								<nav>
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="#"><i
												class="mdi mdi-home-outline"></i></a></li>
										<li class="breadcrumb-item" aria-current="page">SkilledIn</li>
										<li class="breadcrumb-item active" aria-current="page">About
											Us</li>
									</ol>
								</nav>
							</div>
						</div>

					</div>
				</div>

				<!-- Main content -->
				<section class="content">

					<div class="row">

						<div class="col-12">
							<div class="box">
								<div class="box-body">
									<!-- Nav tabs -->
									<ul class="nav nav-pills rounded nav-justified">
										<li class="nav-item"><a href="#navpills-1"
											class="nav-link active" data-bs-toggle="tab"
											aria-expanded="false">General</a></li>
										<li class="nav-item"><a href="#navpills-2"
											class="nav-link" data-bs-toggle="tab" aria-expanded="false">Report</a>
										</li>
										<li class="nav-item"><a href="#navpills-3"
											class="nav-link" data-bs-toggle="tab" aria-expanded="true">Future
												Scope</a></li>
										<li class="nav-item"><a href="#navpills-4"
											class="nav-link" data-bs-toggle="tab" aria-expanded="true">References</a>
										</li>
									</ul>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
							<div class="box">
								<div class="box-body">
									<!-- Tab panes -->
									<div class="tab-content">
										<div id="navpills-1" class="tab-pane active">
											<!-- Categroy 1 -->
											<div class=" tab-pane animation-fade active" id="category-1"
												role="tabpanel">
												<div
													class="panel-group panel-group-simple panel-group-continuous"
													id="accordion2" aria-multiselectable="true" role="tablist">
													<!-- Question 1 -->
													<div class="panel">
														<div class="panel-heading" id="question-1" role="tab">
															<a class="panel-title" aria-controls="answer-1"
																aria-expanded="true" data-bs-toggle="collapse"
																href="#answer-1" data-parent="#accordion2"> Who we
																are? </a>
														</div>
														<div class="panel-collapse collapse show" id="answer-1"
															aria-labelledby="question-1" role="tabpanel"
															data-bs-parent="#category-1">
															<div class="panel-body">We are a team of 5
																roommates along with our professor in charge of Computer
																Science Engineering Dept. of BIT Sindri. We are skilled
																in development, designing, data manipulation, machine
																learning, AI and testing. We, the developers of
																SkilledIn wants you to choose the career you fit in the
																best.</div>
														</div>
													</div>
													<!-- End Question 1 -->
													<!-- Question 2 -->
													<div class="panel">
														<div class="panel-heading" id="question-2" role="tab">
															<a class="panel-title" aria-controls="answer-2"
																aria-expanded="false" data-bs-toggle="collapse"
																href="#answer-2" data-parent="#accordion2"> What is
																this project? </a>
														</div>
														<div class="panel-collapse collapse" id="answer-2"
															aria-labelledby="question-2" role="tabpanel"
															data-bs-parent="#category-1">
															<div class="panel-body">This project is user
																friendly and simple to use. Simply sign up, login, fill
																the 4 sections of the form namely academics, technical,
																interests and miscellaneous and go to the dashboard to
																see what career role fits best for your personality and
																skill set.</div>
														</div>
													</div>
													<!-- End Question 2 -->
													<!-- Question 3 -->
													<div class="panel">
														<div class="panel-heading" id="question-3" role="tab">
															<a class="panel-title" aria-controls="answer-3"
																aria-expanded="false" data-bs-toggle="collapse"
																href="#answer-3" data-parent="#accordion2"> How to
																use this project? </a>
														</div>
														<div class="panel-collapse collapse" id="answer-3"
															aria-labelledby="question-3" role="tabpanel"
															data-bs-parent="#category-1">
															<div class="panel-body">This project is user
																friendly and simple to use. Simply sign up, login, fill
																the 4 sections of the form namely academics, technical,
																interests and miscellaneous and go to the dashboard to
																see what career role fits best for your personality and
																skill set</div>
														</div>
													</div>
													<!-- End Question 3 -->
													<!-- Question 4 -->
													<div class="panel">
														<div class="panel-heading" id="question-4" role="tab">
															<a class="panel-title" aria-controls="answer-4"
																aria-expanded="false" data-bs-toggle="collapse"
																href="#answer-4" data-parent="#accordion2"> How to
																contribute? </a>
														</div>
														<div class="panel-collapse collapse" id="answer-4"
															aria-labelledby="question-4" role="tabpanel"
															data-bs-parent="#category-1">
															<div class="panel-body">
																Go to Github page of <a target="_blank"
																	href="https://github.com/skilledIn-Labs/careerIn">SkilledIn</a>
																and clone the careerin project. Follow steps specified
																in Readme.md to make contribution
															</div>
														</div>
													</div>
													<!-- End Question 4 -->
												</div>
											</div>
											<!-- End Categroy 1 -->
										</div>
										<div id="navpills-2" class="tab-pane">
											<!-- Categroy 2 -->
											<div class="tab-pane animation-fade" id="category-2"
												role="tabpanel">
												<div
													class="panel-group panel-group-simple panel-group-continuous"
													id="accordion" aria-multiselectable="true" role="tablist">
													<!-- Question 5 -->
													<div class="panel">
														<div class="panel-heading" id="question-5" role="tab">
															<a class="panel-title" aria-controls="answer-5"
																aria-expanded="true" data-bs-toggle="collapse"
																href="#answer-5" data-parent="#accordion"> Project
																Report </a>
														</div>
														<div class="panel-collapse collapse show" id="answer-5"
															aria-labelledby="question-5" role="tabpanel"
															data-bs-parent="#category-2">
															<div class="panel-body">
																<iframe
																	src="https://docs.google.com/document/d/e/2PACX-1vQKpIQMAntckERp9NXmV53QJLQnEm8_xh3Ez_YAc47RgyCfJa-k_t47kzY3Iwy5P9gN8DEtEgMtxfZ5/pub?embedded=true#toolbar=0&navpanes=0&scrollbar=0"
																	style="border: 0; margin-left: 15%; width: 60vw; height: 110vh;"></iframe>
															</div>
														</div>
													</div>
													<!-- End Question 5 -->
												</div>
											</div>
											<!-- End Categroy 2 -->
										</div>
										<div id="navpills-3" class="tab-pane">
											<!-- Categroy 3 -->
											<div class="tab-pane animation-fade" id="category-3"
												role="tabpanel">
												<div
													class="panel-group panel-group-simple panel-group-continuous"
													id="accordion1" aria-multiselectable="true" role="tablist">
													<!-- Question 8 -->
													<div class="panel">
														<div class="panel-heading" id="question-8" role="tab">
															<a class="panel-title" aria-controls="answer-8"
																aria-expanded="true" data-bs-toggle="collapse"
																href="#answer-8" data-parent="#accordion1"> Web
																Scraping </a>
														</div>
														<div class="panel-collapse collapse show" id="answer-8"
															aria-labelledby="question-8" role="tabpanel"
															data-bs-parent="#category-3">
															<div class="panel-body">Scraping the Web for latest
																trends, demands & requirements of the market using
																advanced AI techniques to give more insights on the
																current market needs.</div>
														</div>
													</div>
													<!-- End Question 8 -->
													<!-- Question 9 -->
													<div class="panel">
														<div class="panel-heading" id="question-9" role="tab">
															<a class="panel-title" aria-controls="answer-9"
																aria-expanded="false" data-bs-toggle="collapse"
																href="#answer-9" data-parent="#accordion1"> Self
																Correction loop. </a>
														</div>
														<div class="panel-collapse collapse" id="answer-9"
															aria-labelledby="question-9" role="tabpanel"
															data-bs-parent="#category-3">
															<div class="panel-body">A Self Correcting/feedback
																loop can be integrated to enhance the correctness or
																efficiency of the prediction based on the selected
																option from the end user. It will show the difference
																between prediction from our model and actual interest of
																the student.</div>
														</div>
													</div>
													<!-- End Question 9 -->
													<!-- Question 10 -->
													<div class="panel">
														<div class="panel-heading" id="question-10" role="tab">
															<a class="panel-title" aria-controls="answer-10"
																aria-expanded="false" data-bs-toggle="collapse"
																href="#answer-10" data-parent="#accordion1"> Reverse
																Prediction </a>
														</div>
														<div class="panel-collapse collapse" id="answer-10"
															aria-labelledby="question-10" role="tabpanel"
															data-bs-parent="#category-3">
															<div class="panel-body">After analyzing the model
																based on the current dataset a predictive algorithm can
																be implemented to find what are the desired inputs i.e.
																marks or interests one should have to achieve his/her
																desired goal.</div>
														</div>
													</div>
													<!-- End Question 10 -->


													<!-- Question 11 -->
													<div class="panel">
														<div class="panel-heading" id="question-11" role="tab">
															<a class="panel-title" aria-controls="answer-11"
																aria-expanded="false" data-bs-toggle="collapse"
																href="#answer-11" data-parent="#accordion3">
																Enhanced WebApp </a>
														</div>
														<div class="panel-collapse collapse" id="answer-11"
															aria-labelledby="question-11" role="tabpanel"
															data-bs-parent="#category-4">
															<div class="panel-body">Various tests like
																technical, analytical, logical, memory based,
																psychometry, general awareness, interests and skill
																based tests can be implemented using advanced web apps
																and AI. Thes test will be the input for the model
																instead of feeding it manually which makes the model
																more reliable and efficient.</div>
														</div>
													</div>
													<!-- End Question 11 -->
												</div>
											</div>
											<!-- End Categroy 3 -->
										</div>
										<div id="navpills-4" class="tab-pane">
											<!-- Categroy 4 -->
											<div class="tab-pane animation-fade" id="category-4"
												role="tabpanel">
												<div
													class="panel-group panel-group-simple panel-group-continuous"
													id="accordion3" aria-multiselectable="true" role="tablist">

													<!-- Question 12 -->
													<div class="panel">
														<div class="panel-heading" id="question-12" role="tab">
															<a class="panel-title" aria-controls="answer-12"
																aria-expanded="true" data-bs-toggle="collapse"
																href="#answer-12" data-parent="#accordion3">
																References </a>
														</div>
														<div class="panel-collapse collapse show" id="answer-12"
															aria-labelledby="question-12" role="tabpanel"
															data-bs-parent="#category-4">
															<div class="panel-body">
																<a
																	href="https://www.sciencepubco.com/index.php/ijet/article/view/11738/4565">
																	[1]https://www.sciencepubco.com/index.php/ijet/article/view/11738/4565</a>
																<br> <a
																	href="https://storage.googleapis.com/skilledin/Tree0_ClassApplicationsDeveloper.png">[2]Application
																	Developer Tree Visualization <br>
																</a> <a href="skilledin.ml"> [3]http://www.skilledin.ml
																	<br>
																</a> <a href="https://github.com/SkilledIn-Labs/careerIn">[4]
																	https://github.com/SkilledIn-Labs/careerIn <br>
																</a> <a
																	href="https://www.sciencepubco.com/index.php/ijet/article/view/11738">[5]
																	https://www.sciencepubco.com/index.php/ijet/article/view/11738</a>
																<br> <a
																	href="https://github.com/KLGLUG/student-career-area-prediction-using-machine-learning">[6]https://github.com/KLGLUG/student-career-area-prediction-using-machine-learning</a>
																<br> <a href="h2o.ai">[7]https://www.h2o.ai/ <br></a>
																<a href="spring.io">[8] https://spring.io/ <br></a>
																<a href="https://console.cloud.google.com/">[9]https://console.cloud.google.com/
																	<br>
																</a> <a href="https://www.freepik.com ">[10]https://www.freepik.com
																	<br>
																</a> <a href="https://graphviz.org/">[11]https://graphviz.org/
																	<br>
																</a> <a href="https://www.postman.com/">[12]https://www.postman.com/</a>
															</div>
															<br>
														</div>
													</div>
													<!-- End Question 12 -->

												</div>
											</div>
											<!-- End Categroy 4 -->
										</div>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
					</div>
					<!-- /.row -->

				</section>
				<!-- /.content -->
			</div>
		</div>
		<!-- /.content-wrapper -->
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right d-none d-sm-inline-block"></div>
			&copy;
			<script>
				document.write(new Date().getFullYear())
			</script>
			<a href="http://skilledin.ml">SkilledIn-Labs</a>. All Rights
			Reserved.
		</footer>


		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- ./side demo panel -->
	<div class="sticky-toolbar">
		<a href="#" data-bs-toggle="tooltip" data-bs-placement="left"
			title="Email"
			class="waves-effect waves-light  btn-warning mb-5 btn-sm"
			target="_blank"> <span class="fas fa-envelope"><span
				class="path1"></span><span class="path2"></span></span>
		</a> <a href="https://github.com/SkilledIn-Labs/" data-bs-toggle="tooltip" data-bs-placement="left"
			title="Github" class="waves-effect waves-light btn-flat mb-5 btn-sm"
			target="_blank"> <span class="fab fa-github"></span>
		</a> <a id="chat-popup" href="#" data-bs-toggle="tooltip"
			data-bs-placement="left" title="LinkedIn"
			class="waves-effect waves-light btn btn-info btn-flat btn-sm"> <span
			class="fab fa-linkedin"><span class="path1"></span><span
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
							<span class="msg-avatar"> <img src="public/img/r28_a.png"
								class="avatar avatar-lg">
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
								src="public/img/SGN_06_07_2021_1623056953999.png"
								class="avatar avatar-lg">
							</span>
						</div>
						<div class="cm-msg-text">My name is user.</div>
					</div>
					<div class="chat-msg user">
						<div class="d-flex align-items-center">
							<span class="msg-avatar"> <img src="public/img/r28_a.png"
								class="avatar avatar-lg">
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
	<script src="../assets/icons/feather-icons/feather.min.js"></script>

	<script src="public/js/template.js"></script>
</body>
</html>
