<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="utf-8">
<title>Survey V1</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="../../../../../../cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.css">
<link rel="stylesheet" href="assets/css/thankyou.css">
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
				<div class="form-area position-relative">
					<div class="wizard-forms">
						<div class="survey-content-area survey-content-two">
							<div class="survey-top-title text-center position-relative">
								<h2>Your Results are here...</h2>
							</div>
							<div class="survey-form-area clearfix">
								<div class="survey-form-content">
									<div class="survey-form-img">
										<img src="assets/img/sbg4.png" alt="">
									</div>
									<div class="survey-form-field">
										<div class="survey-thankyou">
											<img src="assets/img/chth.png" alt="">
											<h1>"${roleName}"</h1>
											<p>Your submission has been received</p>
											<h2>ThankYou For Survey</h2>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="actions">
							<ul>
								<li><span class="js-btn-prev" title="Previous"><a
										href="index.html">Go Back</a></span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script
		src="../../../../../../cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/form-step.js"></script>
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


<!-- Mirrored from jthemes.net/themes/html/BeWizard/Survey/Survey.V1/thank-you.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 May 2021 10:15:09 GMT -->
</html>
