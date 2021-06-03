<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link rel="stylesheet" type="text/css" href="assets/css/menu.css">
<!-- <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"> -->


<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous" />
<link rel="stylesheet" href="assets/css/role.css" />
<title>Survey Form</title>
</head>

<body>

	<nav class="main-menu">
		<div>
			<a class="logo" href="/index.jsp"> </a>
		</div>
		<div class="settings"></div>
		<div class="scrollbar" id="style-1">
			<ul>
				<li><a href="/index.jsp"> <i class="fa fa-home fa-lg"></i>
						<span class="nav-text">Home</span>
				</a></li>
				<li><a href="/login.jsp"> <i class="fa fa-user fa-lg"></i>
						<span class="nav-text">Login</span>
				</a></li>
				<li><a href="/team.jsp"> <i
						class="fa fa-envelope-o fa-lg fas fa-users"></i> <span
						class="nav-text">Team</span>
				</a></li>





				<li><a href="/about.jsp"> <i
						class="fa fa-question-circle fa-lg"></i> <span class="nav-text">About
							Us</span>
				</a></li>





				<li><a href="/"> <i
						class="fa fa-heart-o fa-lg fas fa-envelope"></i> <span
						class="share">


							<div class="addthis_default_style addthis_32x32_style">

								<div style="position: absolute; margin-left: 56px; top: 3px;">




									<a href="https://www.facebook.com/sharer/sharer.php?u="
										target="_blank" class="share-popup"> <!-- <i class="share-popup fab fa-facebook-square"></i> -->
										<img
										src="http://icons.iconarchive.com/icons/danleech/simple/512/facebook-icon.png"
										width="30px" height="30px"></a> <a
										href="https://twitter.com/share" target="_blank"
										class="share-popup"><img
										src="https://cdn1.iconfinder.com/data/icons/metro-ui-dock-icon-set--icons-by-dakirby/512/Twitter_alt.png"
										width="30px" height="30px"></a> <a
										href="https://plusone.google.com/_/+1/confirm?hl=en&url=_URL_&title=_TITLE_
	"
										target="_blank" class="share-popup"><img
										src="http://icons.iconarchive.com/icons/danleech/simple/512/google-plus-icon.png"
										width="30px" height="30px"></a>



								</div>
								<!-- <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4ff17589278d8b3a"></script>
						   
								
								  
								
							   -->
					</span> <span class="twitter"></span> <span class="google"></span> <span
						class="fb-like"> <iframe
								src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Ffacebook.com%2Fstartific&amp;width&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35"
								scrolling="no" frameborder="0"
								style="border: none; overflow: hidden; height: 35px;"
								allowTransparency="true"></iframe>

					</span> <span class="nav-text"> </span>

				</a></li>




				</li>
				<ul class="about">
					<li><a href="/perform_logout"> <class
								class="fa fa-lightbulb-o fa-lg fas fa-sign-out-alt"></class> </i> <span
							class="nav-text"> logout </span>

					</a></li>
				</ul>
	</nav>







	<header>
		<h1 id="title">Role Predictor</h1>
		<p id="description">Enter your marks for respective subjects.</p>
		<input type="hidden" id="hdnSession"
			data-value=" ${sessionScope.userName}" />


	</header>
	<form id="survey-form" autocomplete="on"></form>
	<section class="form-outer" id="first-form">
		<div class="form-column">
			<div class="email">
				<label for="q1" id="name-label">Operating Systems</label> <input
					type="text" name="q1" id="q1" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>
			<div class="algo">
				<label for="q2" id="name-label">Algorithms</label> <input
					type="text" name="q2" id="q2" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>
			<div class="pc">
				<label for="q3" id="name-label">Programming Concepts</label> <input
					type="text" name="q3" id="q3" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>
			<div class="se">
				<label for="q4" id="name-label">Software Engineering</label> <input
					type="text" name="q4" id="q4" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>

			<div class="cn">
				<label for="q5" id="name-label">Computer Networks</label> <input
					type="text" name="q5" id="q5" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>

			<!--
				<div class="email">
					<label for="email" id="email-label">Email</label> 
					<input type="email" name="email" id="email"
						placeholder="Enter your email" autocomplete="false" required>
				</div>
				-->
		</div>
		<div class="form-column">
			<div class="elect">
				<label for="q6" id="name-label">Electronics Subjects</label> <input
					type="text" name="q6" id="q6" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>

			<div class="cn">
				<label for="q7" id="name-label">Computer Architecture</label> <input
					type="text" name="q7" id="q7" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>

			<div class="cn">
				<label for="q8" id="name-label">Mathematics</label> <input
					type="text" name="q8" id="q8" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>

			<div class="cn">
				<label for="q9" id="name-label">Communication Skills</label> <input
					type="text" name="q9" id="q9" placeholder="% out of 100"
					autocomplete="nope" required />
			</div>


			<div class="outer-button">
				<input type="submit" value="Next" id="next_2" />
			</div>
		</div>
	</section>
	<!-- second section -->

	<section class="form-outer" id="second-form">
		<div class="form-column">
			<div class="number">
				<label for="q10" id="number-label">Preferred working hour(s)
					per day</label> <input type="number" name="q10" id="q10"
					placeholder="Enter a valid hour" min="0" max="24" required />
			</div>
			<div class="number">
				<label for="q11" id="number-label">How would you rate
					yourself in Logical quotient</label> <input type="number" name="q11"
					id="q11" placeholder="Enter a valid number" min="1" max="10"
					required />
			</div>


			<div class="number">
				<label for="q12" id="number-label">Number of hackathon(s)
					participated</label> <input type="number" name="q12" id="q12"
					placeholder="Enter a valid number" min="0" max="100" required />
			</div>


			<div class="number">
				<label for="q13" id="number-label"> coding skills rating</label> <input
					type="number" name="q13" id="q13" placeholder="out of 10" min="0"
					max="100" required />
			</div>

			<div class="number">
				<label for="q14" id="number-label">Public Speaking Points</label> <input
					type="number" name="q14" id="q14" placeholder="out of 10" min="0"
					max="10" required />
			</div>

			<!--
				<div class="email">
					<label for="email" id="email-label">Email</label>
					<input type="email" name="email" id="email"
						placeholder="Enter your email" autocomplete="false" required>
				</div>
				-->
		</div>
		<div class="form-column">
			<div class="dropdown">
				<label for="q15">can work long time before system?</label> <select
					name="q15" id="q15">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>
			<div class="dropdown">
				<label for="q16"> self-learning capability?</label> <select
					name="q16" id="q16">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q17">Extra-courses did?</label> <select name="q17"
					id="q17">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q18">Certifications</label> <select name="q18" id="q18">
					<option disabled selected>SELECT</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q19">Workshops</label> <select name="q19" id="q19">
					<option disabled selected>SELECT</option>
				</select>
			</div>

			<div class="outer-button">
				<input type="submit" value="next" id="next_3" />
			</div>
		</div>
	</section>

	<!-- third form -->
	<section class="form-outer" id="third-form">
		<div class="form-column">

			<div class="dropdown">
				<label for="q20">talent tests taken?</label> <select name="q20"
					id="q20">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>
			<div class="dropdown">
				<label for="q21">olympiads?</label> <select name="q21" id="q21">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q22">reading and writing skills</label> <select
					name="q22" id="q22">
					<option disabled selected>SELECT</option>
					<option name="poor" value="poor">poor</option>
					<option name="medium" value="medium">medium</option>
					<option name="excellent" value="excellent">excellent</option>
				</select>
			</div>
			<div class="dropdown">
				<label for="q23">memory capability score</label> <select name="q23"
					id="q23">
					<option disabled selected>SELECT</option>
					<option name="poor" value="poor">poor</option>
					<option name="medium" value="medium">medium</option>
					<option name="excellent" value="excellent">excellent</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q24">Interested subjects</label> <select name="q24"
					id="q24">
					<option disabled selected>SELECT</option>
				</select>
			</div>

			<!--
				<div class="email">
					<label for="email" id="email-label">Email</label>
					<input type="email" name="email" id="email"
						placeholder="Enter your email" autocomplete="false" required>
				</div>
				-->
		</div>
		<div class="form-column">


			<div class="dropdown">
				<label for="q25">interested career area </label> <select name="q25"
					id="q25">
					<option disabled selected>SELECT</option>
				</select>
			</div>


			<div class="dropdown">
				<label for="q26">Higher Studies OR JOb</label> <select name="q26"
					id="q26">
					<option disabled selected>SELECT</option>
					<option name="higherstudies" value="higherstudies">higher
						studies</option>
					<option name="job" value="job">job</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q27">Type of company Interested</label> <select
					name="q27" id="q27">
					<option disabled selected>SELECT</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q28">Taken inputs from seniors or elders</label> <select
					name="q28" id="q28">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>



			<div class="dropdown">
				<label for="q29">interested in games</label> <select name="q29"
					id="q29">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>


			<div class="outer-button">
				<input type="submit" value="Next" id="next_4" />
			</div>
		</div>
	</section>


	<!-- fouth form -->
	<section class="form-outer" id="fourth-form">
		<div class="form-column">

			<div class="dropdown">
				<label for="q30">Interested Type of Books</label> <select name="q30"
					id="q30">
					<option disabled selected>SELECT</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q31">interested in salary/work?</label> <select
					name="q31" id="q31">
					<option disabled selected>SELECT</option>
					<option name="salary" value="salary">salary</option>
					<option name="Work" value="Work">work</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q32">In a Relationship?</label> <select name="q32"
					id="q32">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q33">Gentle or Tuff behavior?</label> <select name="q33"
					id="q33">
					<option disabled selected>SELECT</option>
					<option name="gentle" value="gentle">gentle</option>
					<option name="stubborn" value="stubborn">stubborn</option>
				</select>
			</div>
			<div class="dropdown">
				<label for="q34">Management or Technical?</label> <select name="q34"
					id="q34">
					<option disabled selected>SELECT</option>
					<option name="Management" value="Management">Management</option>
					<option name="Technical" value="Technical">Technical</option>
				</select>
			</div>



		</div>
		<div class="form-column">
			<!-- note 35 and 31 same in dataset need to maintain record also 35['salary','work'] but 31['salary','Work']  -->
			<div class="dropdown">
				<label for="q35">Salary/work</label> <select name="q35" id="q35">
					<option disabled selected>SELECT</option>
					<option name="salary" value="salary">salary</option>
					<option name="work" value="work">work</option>
				</select>
			</div>

			<div class="dropdown">
				<label for="q36">hard/smart worker</label> <select name="q36"
					id="q36">
					<option disabled selected>SELECT</option>
					<option name="smart worker" value="smart worker">smart
						worker</option>
					<option name="hard worker" value="hard worker">hard worker</option>
				</select>
			</div>


			<div class="dropdown">
				<label for="q37">worked in teams ever?</label> <select name="q37"
					id="q37">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>
			<div class="dropdown">
				<label for="q38">Introvert?</label> <select name="q38" id="q38">
					<option disabled selected>SELECT</option>
					<option name="yes" value="yes">YES</option>
					<option name="no" value="no">NO</option>
				</select>
			</div>


			<div class="outer-button">
				<input type="submit" value="Submit" id="submit" />
			</div>
		</div>

	</section>

	</form>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<script type="text/javascript" src="assets/js/index.js">
	
</script>

</html>