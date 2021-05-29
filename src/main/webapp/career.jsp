<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>CodePen - Survey Form</title>
<link rel="stylesheet" href="./style.css">

</head>
<body>
	<!-- partial:index.partial.html -->
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/career.css">
<title>Survey Form</title>
</head>

<body>

	<header>
		<h1 id="title">Survey Form</h1>
		<p id="description">Form created as a playground</p>
	</header>

	<div class="form-outer">
		<form action="#" id="survey-form" autocomplete="on">

			<div class="form-column">

				<div class="name">
					<label for="name" id="name-label">Name</label> <input type="text"
						name="new-name" id="name" placeholder="Enter your name"
						autocomplete="nope" required>
				</div>

				<div class="email">
					<label for="email" id="email-label">Email</label> <input
						type="email" name="email" id="email"
						placeholder="Enter your email" autocomplete="false" required>
				</div>

				<div class="dropdown">
					<label for="dropdown">Favorite Music</label> <select name="music"
						id="dropdown">
						<option disabled selected>SELECT AN OPTION</option>
						<option value="deep-house">Deep House</option>
						<option value="techno-house">Techno House</option>
						<option value="acid-jazz">Acid Jazz</option>
						<option value="bachata">Bachata</option>
						<option value="merengue">Merengue</option>
						<option value="salsa">Salsa</option>
					</select>
				</div>

				<div class="textarea">
					<label for="comments">Comments</label>
					<textarea name="comments" placeholder="Any comment?" id="comments"
						cols="25" rows="4"></textarea>
				</div>

			</div>
			<div class="form-column">

				<div class="last-name">
					<label for="last-name" id="last-name-label">Last Name</label> <input
						type="text" name="last-name" id="last-name"
						placeholder="Enter your last name" autocomplete="nope" required>
				</div>

				<div class="number">
					<label for="number" id="number-label">Age</label> <input
						type="number" name="age" id="number" placeholder="Enter your age"
						min="1" max="130" required>
				</div>

				<div class="radio-buttons">
					<h3>Sex</h3>

					<div class="radio-button">
						<input type="radio" name="sex" value="male" id="male"> <label
							for="male"> <span class="radio-button-span"></span> Male
						</label>
					</div>

					<div class="radio-button">
						<input type="radio" name="sex" value="female" id="female">
						<label for="female"> <span class="radio-button-span"></span>
							Female
						</label>
					</div>

				</div>

				<div class="checkboxes">
					<h3>Sport Interests</h3>
					<div class="sport-column">

						<label for="football"> <input type="checkbox"
							value="sports" id="football"> <span class="checkbox-text">Football</span>
						</label> <label for="tennis"> <input type="checkbox"
							value="sports" id="tennis"> <span class="checkbox-text">Tennis</span>
						</label> <label for="table-tennis"> <input type="checkbox"
							value="sports" id="table-tennis"> <span
							class="checkbox-text">Table Tennis</span>
						</label>
					</div>

					<div class="sport-column">

						<label for="baseball"> <input type="checkbox"
							value="sports" id="baseball"> <span class="checkbox-text">Baseball</span>
						</label> <label for="basketball"> <input type="checkbox"
							value="sports" id="basketball"> <span
							class="checkbox-text">Basketball</span>
						</label> <label for="volleyball"> <input type="checkbox"
							value="sports" id="volleyball"> <span
							class="checkbox-text">Volleyball</span>
						</label>
					</div>
				</div>
				<div class="outer-button">
					<input type="submit" value="Submit" id="submit">
				</div>
			</div>

		</form>
	</div>

</body>

</html>
<!-- partial -->

</body>
</html>
