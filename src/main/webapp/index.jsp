<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from jthemes.net/themes/html/BeWizard/Survey/Survey.V1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 May 2021 10:15:16 GMT -->
<head>
<meta charset="utf-8">
<title>Survey V1</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">

<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.css">
<link rel="stylesheet" href="assets/css/style.css">
<body>
	<div class="wrapper">
		<div class="wizard-content-1 clearfix">
			<div class="steps d-none clearfix">
				<ul class="tablist multisteps-form__progress">
					<li class="multisteps-form__progress-btn "></li>
					<li class="multisteps-form__progress-btn js-active current"></li>
					<li class="multisteps-form__progress-btn"></li>
				</ul>
			</div>
			<div class="step-inner-content clearfix position-relative">
				<form class="multisteps-form__form" action="/thankyou.jsp"
					id="wizard" method="POST">
					<div class="form-area position-relative">

						<!-- step 0 -->
						<div class="multisteps-form__panel  js-active"
							data-animation="scaleIn">
							<div class="wizard-forms position-relative">
								<div class="survey-content-area survey-content-two">
									<div class="survey-top-title text-center position-relative">
										<h2>SkilledIn</h2>
									</div>
									<div class="survey-form-area clearfix">
										<div class="survey-form-content">
											<div class="survey-form-img">
												<img src="assets/img/sbg1.png" alt="">
											</div>
											<div class="survey-form-field">
												<h3>Tell us about yourself</h3>
												<div class="q-depth-input-area">
													<div class="input-depth position-relative">
														<input type="text" name="social_name"
															placeholder="What is social name">
														<div class="in-icon text-center">
															<i class="fas fa-user"></i>
														</div>
													</div>
													<div class="input-depth position-relative">
														<input type="text" name="social_place"
															placeholder="Where you Live">
														<div class="in-icon text-center">
															<i class="fas fa-map-marker-alt"></i>
														</div>
													</div>
													<div class="input-depth position-relative">
														<input type="Email" name="social_mail"
															placeholder="Your Mail">
														<div class="in-icon text-center">
															<i class="fas fa-envelope"></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="wizard-progress">
									<span>1 of 4 Completed</span>
									<div class="progress">
										<div class="progress-bar"></div>
									</div>
								</div>
								<div class="actions">
									<ul>
										<li><span class="js-btn-next" title="NEXT">NEXT
												Question</span></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- step 1 -->
						<div class="multisteps-form__panel" data-animation="scaleIn">
							<div class="wizard-forms">
								<div class="survey-content-area survey-content-two">
									<div class="survey-top-title text-center position-relative">
										<h2>SkilledIn</h2>
									</div>
									<!--  -->

									<div class="survey-form-area clearfix">
										<div class="survey-form-content">
											<div class="survey-form-img">
												<img src="assets/img/sbg3.png" alt="">
											</div>
											<div class="survey-form-field survey-rate-content">
												<h3>How to Be conversational?</h3>
												<p>What you think Your Company Rating Deserve</p>
												<div class="survey-ratting clearfix position-relative">
													<div id="stars" class="starrr"></div>
													<span class="survey-rate-text">You selects <span
														id="count">0</span> star(s)
													</span>
												</div>
												<p>How you Contact to our Company</p>
												<div class="survey-connect-option position-relative">
													<select name="share_option">
														<option value="">Twitter</option>
														<option value="">Facebook</option>
														<option value="">Instagram</option>
														<option value="">Youtube</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="wizard-progress">
									<span>2 of 4 Completed</span>
									<div class="progress">
										<div class="progress-bar" style="width: 50%"></div>
									</div>
								</div>
								<div class="actions">
									<ul>
										<li><span class="js-btn-prev" title="prev">Previous
												Question</span></li>
										<li><span class="js-btn-next" title="NEXT">NEXT
												Question</span></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- step 2 -->
						<div class="multisteps-form__panel" data-animation="scaleIn">
							<div class="wizard-forms">
								<div class="survey-content-area">
									<div class="survey-top-title text-center position-relative">
										<h2>SkilledIn</h2>
									</div>
									<div class="survey-form-area clearfix">
										<div class="survey-form-content">
											<div class="survey-form-img">
												<img src="assets/img/sbg2.png" alt="">
											</div>
											<div class="survey-form-field">
												<h3>Select Subject</h3>

												<ul>
													<li><label> <input type="radio"
															name="survey_cat" value="Somewhat Negative"
															class="exp-option-box" checked="checked"> <span
															class="checkmark-border position-relative"></span> <span
															class="exp-label">Somewhat Negative</span>
													</label></li>
													<li><label> <input type="radio"
															name="survey_cat" value="Somewhat positive"
															class="exp-option-box"> <span
															class="checkmark-border position-relative"></span> <span
															class="exp-label">Somewhat positive</span>
													</label></li>
													<li><label> <input type="radio"
															name="survey_cat" value="Neutral" class="exp-option-box">
															<span class="checkmark-border position-relative"></span>
															<span class="exp-label">Neutral</span>
													</label></li>
													<li><label> <input type="radio"
															name="survey_cat" value="Very posting"
															class="exp-option-box"> <span
															class="checkmark-border position-relative"></span> <span
															class="exp-label">Very posting</span>
													</label></li>
													<li><label> <input type="radio"
															name="survey_cat" value="Very negative"
															class="exp-option-box"> <span
															class="checkmark-border position-relative"></span> <span
															class="exp-label">Very negative</span>
													</label></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="wizard-progress">
									<span>3 of 4 Completed</span>
									<div class="progress">
										<div class="progress-bar" style="width: 75%"></div>
									</div>
								</div>
								<div class="actions">
									<ul>
										<li><span class="js-btn-prev" title="Previous">Previous
												Question</span></li>
										<li><button type="submit" class="js-btn-next"
												title="NEXT">Submit Question</button></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</form>
			</div>
		</div>

	</div>

	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<script src="assets/js/jquery.validate.min.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- <script src="assets/js/switch.js"></script> -->
	<script>
		$("#customFile").change(function() {
			filename = this.files[0].name
		});
		$(".custom-file-input").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label").addClass("selected")
							.html(fileName);
				});
	</script>
</body>


<!-- Mirrored from jthemes.net/themes/html/BeWizard/Survey/Survey.V1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 May 2021 10:15:19 GMT -->
</html>
