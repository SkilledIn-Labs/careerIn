<%@page import="ai.skilledin.careerin.dao.models.Roles"%>
<%@page
	import="ai.skilledin.careerin.dao.models.PredictionResponseWrapper"%>
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
	href="favicon.ico">

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
				<a href="/" class="logo"> <!-- logo-->
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
		//java code
		<%
		PredictionResponseWrapper prediction = (PredictionResponseWrapper) session.getAttribute("prediction");
		String[] names = new String[100];
		Double[] values = new Double[100];
		String[] img = new String[100];

		Double sum3 = 0D;
		Double others=0D;
		//System.out.println(prediction);
		if (prediction != null) {
			Double sum=0D;
			Double temp=0D;
			for (int i = 0; i < prediction.getRoleName().size(); i++) {
				names[i] = prediction.getRoleName().get(i).getRole_name();
				values[i] = Double.parseDouble(String.format("%.2f", prediction.getValues().get(i) * 100));
				img[i] = prediction.getRoleName().get(i).getImg();
				
				sum+=values[i];
				if(i<=9){
					temp+=values[i];
				}
			}
			sum3 = values[0] + values[1] + values[2];
			others = sum-temp;
		} else {
			for (int i = 0; i < 100; i++) {
				names[i] = "_blank";
				values[i] = 0D;
				img[i] = "https://www.endivesoftware.com/wp-content/uploads/2019/08/hybrid-application.svg";

			}
			sum3 = 0D;
			others=0D;
		}
		%>
		<!-- Content Wrapper. Contains page content -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div class="container-full">
				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-xl-12 col-16">
							<div class="box">
								<div class="box-header">
									<h4 class="box-title">Our Predictions</h4>
								</div>
								<div class="box-body">
									<div class="row">
										<div class="col-xl-2 col-md-3 col-6">
											<div class="box bg-success">
												<div class="box-body text-center">
													<div
														class="bg-info-light rounded10 p-20 mx-auto w-100 h-100">
														<img src="<%=img[0]%>" class="" alt="" />
													</div>
													<div class="box-header"></div>
													<p class="text-fade mt-15 mb-5"><%=names[0]%>
													</p>
													<h2 class="mt-0"><%=values[0] + "%"%></h2>
												</div>
											</div>
										</div>
										<div class="col-xl-2 col-md-3 col-6">
											<div class="box">
												<div class="box-body text-center">
													<div
														class="bg-info-light rounded10 p-20 mx-auto w-100 h-100">
														<img src="<%=img[1]%>" class="" alt="" />
													</div>
													<div class="box-header"></div>
													<p class="text-fade mt-15 mb-5"><%=names[1]%>
													</p>
													<h2 class="mt-0"><%=values[1] + "%"%></h2>
												</div>
											</div>
										</div>
										<div class="col-xl-2 col-md-3 col-6">
											<div class="box">
												<div class="box-body text-center">
													<div
														class="bg-info-light rounded10 p-20 mx-auto w-100 h-100">
														<img src="<%=img[2]%>" class="" alt="" />
													</div>
													<div class="box-header"></div>
													<p class="text-fade mt-15 mb-5"><%=names[2]%>
													</p>
													<h2 class="mt-0"><%=values[2] + "%"%></h2>
												</div>
											</div>
										</div>
										<div class="col-xl-2 col-md-3 col-6">
											<div class="box">
												<div class="box-body text-center">
													<div
														class="bg-info-light rounded10 p-20 mx-auto w-100 h-100">
														<img src="<%=img[3]%>" class="" alt="" />
													</div>
													<div class="box-header"></div>
													<p class="text-fade mt-15 mb-5"><%=names[3]%>
													</p>
													<h2 class="mt-0"><%=values[3] + "%"%></h2>
												</div>
											</div>
										</div>
										<div class="col-xl-2 col-md-4 col-6">
											<div class="box">
												<div class="box-body text-center">
													<div
														class="bg-info-light rounded10 p-20 mx-auto w-100 h-100">
														<img src="<%=img[4]%>" class="" alt="" />
													</div>
													<div class="box-header"></div>
													<p class="text-fade mt-15 mb-5"><%=names[4]%>
													</p>
													<h2 class="mt-0"><%=values[4] + "%"%></h2>
												</div>
											</div>
										</div>
										<div class="col-xl-2 col-md-4 col-6">
											<div class="box">
												<div class="box-body text-center">
													<div
														class="bg-info-light rounded10 p-20 mx-auto w-100 h-100">
														<img src="<%=img[5]%>" class="" alt="" />
													</div>
													<div class="box-header"></div>

													<p class="text-fade mt-15 mb-5"><%=names[5]%>
													</p>
													<h2 class="mt-0"><%=values[5] + "%"%></h2>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
						<div class="col-xl-12 col-12">
								<div class="box">
									<div class="box-body analytics-info">
										<h4 class="box-title">Probability Distribution</h4>
										<div id="nested-pie" style="height: 400px;"></div>
									</div>
								</div>
							</div>
						
						
							<div class="col-xl-6 col-12">
								<div class="box">
									<div class="box-header">
										<h4 class="box-title">Top 3 results</h4>
									</div>
									<div class="box-body">
										<p class="mb-0 text-muted">Total Roles</p>
										<h3 class="text-success mt-0">38</h3>
										<div class="d-md-flex align-items-center">
											<div id="patient_overview" class="min-h-250"></div>
											<div class="d-md-block d-flex">
												<div class="d-flex align-items-center me-md-0 me-15">
													<div class="me-10 bg-success w-30 h-30 rounded"></div>
													<div>
														<p class="text-fade mb-0"><%=names[0]%></p>
														<h4 class="fw-500 my-0"><%=values[0] + "%"%></h4>
													</div>
												</div>
												<div class="d-flex align-items-center my-20 me-md-0 me-15">
													<div class="me-10 bg-warning w-30 h-30 rounded"></div>
													<div>
														<p class="text-fade mb-0"><%=names[1]%></p>
														<h4 class="fw-500 my-0"><%=values[1] + "%"%></h4>
													</div>
												</div>
												<div class="d-flex align-items-center me-md-0 me-15">
													<div class="me-10 bg-danger w-30 h-30 rounded"></div>
													<div>
														<p class="text-fade mb-0"><%=names[2]%></p>
														<h4 class="fw-500 my-0"><%=values[2] + "%"%></h4>
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
										<h4 class="box-title">Recent Trends</h4>
									</div>
									<div class="box-body">
										<h3 class="text-primary mt-0">
											<%=names[0] %><small class="text-muted"></small>
										</h3>
										<div id="recent_trend"></div>
									</div>
								</div>
							</div>


							


							<div class="col-xl-6 col-12">
								<div class="box">
									<div class="box-header">
										<h4 class="box-title">Top Two</h4>
									</div>
									<div class="box-body">
										<div id="two-chart"></div>
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
				
			</div>
			&copy;
			<script>
				document.write(new Date().getFullYear())
			</script>
			<a href="http://skilledin.ml">SkilledIn-Labs</a>.
			All Rights Reserved.
		</footer>

	
				<!-- /.tab-pane -->
			</div>
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
		</a> <a href="https://github.com/SkilledIn-Labs/" data-bs-toggle="tooltip" data-bs-placement="left"
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
	<script src="../assets/icons/feather-icons/feather.min.js"></script>

	<script
		src="../assets/vendor_components/apexcharts-bundle/dist/apexcharts.js"></script>
	<script
		src="../assets/vendor_components/OwlCarousel2/dist/owl.carousel.js"></script>


	<!-- Rhythm Admin App -->
	<script src="public/js/template.js"></script>
	<!-- 
	<script src="public/js/pages/dashboard2.js"></script> 

	<script src="public/js/pages/echart-pie-doghnut.js"></script>-->
	<script src="/assets/vendor_components/echarts/dist/echarts.js"></script>

	<script type="text/javascript">
	
	

var options = {
        series: [<%=values[0]%>, <%=values[1]%>, <%=values[2]%>],
        chart: {
            height: 250,
            type: 'radialBar',
            toolbar : {
				show : true,
			}
        },
        stroke: {
            lineCap: "round",
        },
        plotOptions: {
            radialBar: {
                dataLabels: {
                    name: {
                        fontSize: '22px',
                    },
                    value: {
                        fontSize: '16px',
                    },
                    total: {
                        show: true,
                        label: 'Total',
                        formatter: function(w) {
                            // By default this function returns the average of all series. The below is just an example to show the use of custom formatter function
                            return <%=sum3%>	
                        }
                    }
                }
            }
        },
        colors: ['#3246D3', '#ffa800', '#ee3158'],
        labels: ['<%=names[0]%>', '<%=names[1]%>', "<%=names[2]%>" ],
		};

		var chart = new ApexCharts(document.querySelector("#patient_overview"),
				options);
		chart.render();

		var options2 = {
			series : [ {
				name : 'India',
				data : [ 76, 85, 101, 98, 87, 105, 91 ]
			}, {
				name : 'USA',
				data : [ 44, 55, 57, 56, 61, 58, 63 ]
			} ],
			chart : {
				type : 'bar',
				foreColor : "#bac0c7",
				height : 270,
				toolbar : {
					show : true,
				}
			},
			plotOptions : {
				bar : {
					endingShape : 'rounded',
					horizontal : false,
					columnWidth : '50%',
				},
			},
			dataLabels : {
				enabled : false,
			},
			grid : {
				show : false,
			},
			stroke : {
				show : true,
				width : 2,
				colors : [ 'transparent' ]
			},
			colors : [ '#ee3158', '#3246D3' ],
			xaxis : {
				categories : [ '2015', '2016', '2017', '2018', '2019', '2020',
						'2021' ],

			},
			yaxis : {

			},
			legend : {
				show : true,
			},
			fill : {
				opacity : 1
			},
			tooltip : {
				y : {
					formatter : function(val) {
						return "$ " + val + " thousands"
					}
				},
				marker : {
					show : true,
				},
			}
		};

		var chart2 = new ApexCharts(document.querySelector("#recent_trend"),
				options2);
		chart2.render();
		

	    var options = {
	        series: [{
	                name: "<%=names[0]%>",
	                data: [28, 15, 30, 18, 35, 13, 43]
	            },
	            {
	                name: "<%=names[1]%>",
	                data: [10, 39, 20, 36, 15, 32, 17]
	            }
	        ],
	        chart: {
	            height: 200,
	            type: 'line',
	            toolbar: {
	                show: true
	            }
	        },
	        colors: ['#ee3158', '#1dbfc1'],
	        dataLabels: {
	            enabled: false,
	        },
	        stroke: {
	            curve: 'smooth'
	        },
	        grid: {
	            show: false,
	        },
	        xaxis: {
	            categories: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Set', 'Sun'],
	        },
	        legend: {
	            show: true,
	        },
	        xaxis: {
	            axisBorder: {
	                show: false
	            },
	            axisTicks: {
	                show: false,
	            },
	            labels: {
	                show: false,
	            }
	        },
	        yaxis: {
	            axisBorder: {
	                show: false
	            },
	            axisTicks: {
	                show: false,
	            },
	            labels: {
	                show: false,
	            }
	        },
	    };

	    var chart = new ApexCharts(document.querySelector("#two-chart"), options);
	    chart.render();
	    
	    
	    var nestedChart = echarts.init(document.getElementById('nested-pie'));
        var option = {
            
           tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },

                // Add legend
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data: ['<%=names[0]%>','<%=names[1]%>','<%=names[2]%>','<%=names[3]%>','<%=names[4]%>','<%=names[5]%>','<%=names[6]%>','<%=names[7]%>','<%=names[8]%>','<%=names[9]%>','Others']
                },

                // Add custom colors
                color: ['#689f38', '#38649f', '#389f99', '#ee1044', '#ff8f00'],

                // Display toolbox
                toolbox: {
                    show: true,
                    orient: 'vertical',
                    feature: {
                        mark: {
                            show: true,
                            title: {
                                mark: 'Markline switch',
                                markUndo: 'Undo markline',
                                markClear: 'Clear markline'
                            }
                        },
                        dataView: {
                            show: true,
                            readOnly: false,
                            title: 'View data',
                            lang: ['View chart data', 'Close', 'Update']
                        },
                        magicType: {
                            show: true,
                            title: {
                                pie: 'Switch to pies',
                                funnel: 'Switch to funnel',
                            },
                            type: ['pie', 'funnel']
                        },
                        restore: {
                            show: true,
                            title: 'Restore'
                        },
                        saveAsImage: {
                            show: true,
                            title: 'Same as image',
                            lang: ['Save']
                        }
                    }
                },

                // Enable drag recalculate
                calculable: false,

                // Add series
                series: [

                    // Inner
                    {
                        name: 'Countries',
                        type: 'pie',
                        selectedMode: 'single',
                        radius: [0, '40%'],

                        // for funnel
                        x: '15%',
                        y: '7.5%',
                        width: '40%',
                        height: '85%',
                        funnelAlign: 'right',
                        max: 1548,

                        itemStyle: {
                            normal: {
                                label: {
                                    position: 'inner'
                                },
                                labelLine: {
                                    show: false
                                }
                            },
                            emphasis: {
                                label: {
                                    show: true
                                }
                            }
                        },

                        data: [
                            {value: <%=values[8]%>, name: '<%=names[8]%>'},
                            {value: <%=values[9]%>, name: '<%=names[9]%>'},
                            {value: <%=others%>, name: 'Others'}
                        ]
                    },

                    // Outer
                    {
                        name: 'Countries',
                        type: 'pie',
                        radius: ['60%', '85%'],

                        // for funnel
                        x: '55%',
                        y: '7.5%',
                        width: '35%',
                        height: '85%',
                        funnelAlign: 'left',
                        max: 1048,

                        data: [
                            {value:<%=values[0]%>, name: '<%=names[0]%>'},
							{value:<%=values[1]%>, name: '<%=names[1]%>'},
							{value:<%=values[2]%>, name: '<%=names[2]%>'},
							{value:<%=values[3]%>, name: '<%=names[3]%>'},
							{value:<%=values[4]%>, name: '<%=names[4]%>'},
							{value:<%=values[5]%>, name:'<%=names[5]%>'},
							{value:<%=values[6]%>, name: '<%=names[6]%>'},
							{value:<%=values[7]%>, name:'<%=names[7]%>'}
                        ]
                    }
                ]
        };    
       
    
        nestedChart.setOption(option);
		
	</script>


</body>


<!-- Mirrored from multipurposethemes.com/admin/rhythm-admin-template/bs5/main/index2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Jun 2021 05:22:42 GMT -->
</html>
