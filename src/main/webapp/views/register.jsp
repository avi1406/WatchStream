<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:ital,wght@0,200;1,400&family=Trispace:wght@600&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:ital,wght@0,200;0,700;1,400&family=Trispace:wght@600&display=swap"
	rel="stylesheet">
<title>Streamwatch</title>
</head>
<body>

	<div class="header">

		<nav>
			<img alt="logo" src="/images/landmark_Logo.png" class="logo">

		</nav>


		<div class="login">
			<h1>User Register</h1>
			<form class="email_signup" action = "register" method = "post" modelAttribute = "user">
				<input type="email" placeholder="Email" required="required" name = "email"> 
				<input type="password" placeholder="Password" required="required" name = "password">

				<button type="submit">Register</button>
			</form>
			
			<div class ="help">
			<div>
			<input type="checkbox" name="remember" class = "remember"> <label for="remember">Remember
				me</label>
			</div>

			<p>Need help?</p>
			</div>

		</div>

	</div>

	<div class="separate"></div>

	<div class="footer">
		<h2>Questions? call 000-000-000-0000</h2>

		<div class="row">
			<div class="col">
				<a href="">FAQ</a> <a href="">Media Center</a> <a href="">Ways
					to Watch</a> <a href="">Cookies Preferences</a> <a href="">Speed
					Test</a>
			</div>

			<div class="col">
				<a href="">Help Center</a> <a href="">Investor Relations</a> <a
					href="">Terms of Use</a> <a href="">Corporate Information</a> <a
					href="">Legal Notice</a>
			</div>

			<div class="col">
				<a href="">Account</a> <a href="">Jobs</a> <a href="">Privacy</a> <a
					href="">Contact Us</a> <a href="">Only on Netflix</a>
			</div>
		</div>

		<button class="lang_btn">
			English &nbsp <img src="/images/down-icon.png">
		</button>

		<p>Streamwatch India</p>
	</div>


</body>
</html>






