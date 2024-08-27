<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
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
<title>WatchStream</title>
</head>
<body>

	<div class="header">

		<nav>
			<!-- <img alt="logo" src="/images/logo.png" class="logo"> -->
			<h1 class = siteName>WATCHSTREAM</h1>
	
			<div>
				<button class="lang_btn">
					English &nbsp<img src="/images/down-icon.png">
				</button>

				<a href="http://localhost:8080/login"><button class = "sign-in">Sign-In</button></a>
			</div>
		</nav>

		<div class="header-content">
			<h1>The biggest Indian hits. The best Indian stories.</h1>
			<h1>All streaming here.</h1>
			<p>Watch anywhere. Cancel anytime.</p>
			<p>Ready to watch? Enter your email to create or restart your
				membership.</p>
			<form action= "register" class="email_signup">
				<input type="email" placeholder="Email Adddress" required="required">
				<a href="http://localhost:8080/register"><button type="submit">Get Started ></button></a>
			</form>
		</div>

	</div>

	<div class="separate"></div>

	<div class="features">
		<div class="row">
			<div class="text-col">
				<h2>Enjoy on your TV</h2>
				<p>Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV,
					Blu-ray players and more.</p>

			</div>

			<div class="img-col">
				<img class="sda" src="/images/feature-1.png">
			</div>
		</div>
	</div>

	<div class="separate"></div>

	<div class="features">
		<div class="row">

			<div class="img-col">
				<img class="sda" src="/images/feature-2.png">
			</div>

			<div class="text-col">
				<h2>Download your shows to watch offline</h2>
				<p>Save your favourites easily and always have something to
					watch.</p>

			</div>
		</div>
	</div>

	<div class="separate"></div>

	<div class="features">
		<div class="row">
			<div class="text-col">
				<h2>Watch everywhere</h2>
				<p>Stream unlimited movies and TV shows on your phone, tablet,
					laptop, and TV.</p>

			</div>

			<div class="img-col">
				<img class="sda" src="/images/feature-3.png">
			</div>
		</div>
	</div>

	<div class="separate"></div>

	<div class="features">
		<div class="row">

			<div class="img-col">
				<img class="sda" src="/images/feature-4.png">
			</div>

			<div class="text-col">
				<h2>Create profiles for kids</h2>
				<p>Send children on adventures with their favourite characters
					in a space made just for them—free with your membership.</p>

			</div>
		</div>
	</div>

	<div class="separate"></div>

	<div class="faq">
		<h2>Frequently asked questions</h2>

		<ul class="accordian">
			<li><input type="radio" name="accordian" id="first"> <label
				for="first">What is Streamwatch?</label>
				<div class="content">
					<p>Streamwatch is a streaming service that offers a wide variety of
						award-winning TV shows, movies, anime, documentaries and more – on
						thousands of internet-connected devices.</p>
					<p>You can watch as much as you want, whenever you want,
						without a single ad – all for one low monthly price. There's
						always something new to discover, and new TV shows and movies are
						added every week!</p>
				</div></li>
			<li><input type="radio" name="accordian" id="second"> <label
				for="second">How much does Streamwatch cost?</label>
				<div class="content">
					<p>Watch Streamwatch on your smartphone, tablet, Smart TV, laptop,
						or streaming device, all for one fixed monthly fee. Plans range
						from ₹ 149 to ₹ 649 a month. No extra costs, no contracts.</p>
				</div></li>
			<li><input type="radio" name="accordian" id="third"> <label
				for="third">Where can I watch?</label>
				<div class="content">
					<p>Watch anywhere, anytime. Sign in with your Streamwatch account
						to watch instantly on the web at Streamwatch.com from your personal
						computer or on any internet-connected device that offers the
						Streamwatch app, including smart TVs, smartphones, tablets, streaming
						media players and game consoles.</p>
					<p>You can also download your favourite shows with the iOS,
						Android, or Windows 10 app. Use downloads to watch while you're on
						the go and without an internet connection. Take Streamwatch with you
						anywhere.</p>
				</div></li>
			<li><input type="radio" name="accordian" id="fourth"> <label
				for="fourth">How do I cancel?</label>
				<div class="content">
					<p>Streamwatch is flexible. There are no annoying contracts and no
						commitments. You can easily cancel your account online in two
						clicks. There are no cancellation fees – start or stop your
						account anytime.</p>

				</div></li>
			<li><input type="radio" name="accordian" id="fifth"> <label
				for="fifth">What can I watch on Streamwatch?</label>
				<div class="content">
					<p>Streamwatch has an extensive library of feature films,
						documentaries, TV shows, anime, award-winning Streamwatch originals,
						and more. Watch as much as you want, anytime you want.</p>
				</div></li>
			<li><input type="radio" name="accordian" id="sixth"> <label
				for="sixth">Is Streamwatch good for kids?</label>
				<div class="content">
					<p>The Streamwatch Kids experience is included in your membership
						to give parents control while kids enjoy family-friendly TV shows
						and films in their own space.</p>
					<p>Kids profiles come with PIN-protected parental controls that
						let you restrict the maturity rating of content kids can watch and
						block specific titles you don’t want kids to see.</p>
				</div></li>
		</ul>
		
		<small>Ready to watch? Enter your email to create or restart your
				membership.</small>
		<form class="email_signup">
				<input type="email" placeholder="Email Adddress" required="required">
				<button type="submit">Get Started ></button>
			</form>
	</div>
	
	<div class="separate"></div>
	
	<div class= "footer">
		<h2>Questions? call 000-000-000-0000</h2>
		
		<div class = "row">
			<div class="col">
				<a href="">FAQ</a>
				<a href="">Media Center</a>
				<a href="">Ways to Watch</a>
				<a href="">Cookies Preferences</a>
				<a href="">Speed Test</a>
			</div>
			
			<div class="col">
				<a href="">Help Center</a>
				<a href="">Investor Relations</a>
				<a href="">Terms of Use</a>
				<a href="">Corporate Information</a>
				<a href="">Legal Notice</a>
			</div>
			
			<div class="col">
				<a href="">Account</a>
				<a href="">Jobs</a>
				<a href="">Privacy</a>
				<a href="">Contact Us</a>
				<a href="">Only on Streamwatch</a>
			</div>
		</div>
		
		<button class="lang_btn">English &nbsp <img src="/images/down-icon.png">
		</button>
		
		<p>Streamwatch India</p>
	</div>


</body>
</html>






