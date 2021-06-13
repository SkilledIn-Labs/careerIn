<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Landing Page</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
<link rel='stylesheet' href='/assets/css/login.css'>


</head>

<body>

	<!-- partial:index.partial.html -->
	<h2>Sign Up / Login</h2>
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form name='signup-form' onsubmit="submitSignUp()">
				<h1>Create Account</h1>
				<div class="social-container">
					<a href="/oauth2/authorization/github" class="social"><i
						class="fab fa-github"></i></a> <a href="/oauth2/authorization/google"
						class="social"><i class="fab fa-google-plus-g"></i></a> <a
						href="/oauth2/authorization/linkdin" class="social"><i
						class="fab fa-facebook-f"></i></a>
				</div>
				<span>or use your email for registration</span> <input type="text"
					placeholder="Name" name="name" id="name" /> <input type="email"
					placeholder="Email" name="email" id="email" /> <input
					type="password" name="password" placeholder="Password"
					id="password" />
				<button>Sign Up</button>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form name='signin-form' action="perform_login" method='POST'>
				<h1>Sign in</h1>
				<div class="social-container">
					<a href="/oauth2/authorization/github" class="social"><i
						class="fab fa-github"></i></a> <a href="/oauth2/authorization/google"
						class="social"><i class="fab fa-google-plus-g"></i></a> <a
						href="/oauth2/authorization/facebook" class="social"><i
						class="fab fa-facebook-f"></i></a>
				</div>
				<span>or use your account</span> <input type="email" name="username"
					placeholder="Email" /> <input type="password" name="password"
					placeholder="Password" /> <a href="#">Forgot your password?</a>
				<button>Sign In</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal
						info</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Enter your personal details and start journey with us</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>


	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- partial -->
	<script type="text/javascript">
	var urlParams;
	$(document).ready(function() {
		urlParams = new URLSearchParams(window.location.search);
		const name = urlParams.get('name');
		const email = urlParams.get('email');
		const error = urlParams.get('error');
		if(!!email){
			swal({
				  title: "Account Created!",
				  text: "Please login using the same credentials!",
				  icon: "success",
				  button: "Go Back!",
				});
		}
	if(error === 'true'){
		swal({
			  title: "Login Failed",
			  text: "Check Your Login Credentials",
			  icon: "warning",
			  buttons: "Login Again!",
			});

	}
	});
                        const signUpButton = document.getElementById('signUp');
                        const signInButton = document.getElementById('signIn');
                        const container = document.getElementById('container');
                        signUpButton.addEventListener('click', () => {

                            container.classList.add("right-panel-active");
                        });
                        signInButton.addEventListener('click', () => {
                            container.classList.remove("right-panel-active");
                        });

                        function submitSignUp() {
                            console.log("signup");
                            var name = $("#name").val();
                            var email = $("#email").val();
                            var password = $("#password").val();
                            var settings = {
                                "url": "/api/register",
                                "method": "POST",
                                "timeout": 0,
                                "headers": {
                                    "Content-Type": "application/json",
                                },
                                "data": JSON.stringify({
                                    "name": name,
                                    "username": email,
                                    "password": password,
                                    "isEnable": true
                                }),
                            };
                            $.ajax(settings).done(function(response) {
                                console.log(response);
                            });
                        }
                        
                     /**   window.fbAsyncInit = function() {
                          FB.init({
                            appId      : '{your-app-id}',
                            cookie     : true,
                            xfbml      : true,
                            version    : '{api-version}'
                          });
                            
                          FB.AppEvents.logPageView();   
                            
                        };

                        (function(d, s, id){
                           var js, fjs = d.getElementsByTagName(s)[0];
                           if (d.getElementById(id)) {return;}
                           js = d.createElement(s); js.id = id;
                           js.src = "https://connect.facebook.net/en_US/sdk.js";
                           fjs.parentNode.insertBefore(js, fjs);
                         }(document, 'script', 'facebook-jssdk')); **/
                    </script>


</body>

</html>