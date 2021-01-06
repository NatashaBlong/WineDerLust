<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Venue template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css"><!-- Might not need -->

<title>Winederlust Home</title>
</head>
<body>
<%@ page import="java.io.*" %> 
<%@ page import="Winederlust.*" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<% DBfilter DBfilter = new DBfilter(); %>

<div class="super_container">

	<!-- Header -->
	<header class="header">
		<div class="container-full">
	  <div class="row">
	    <div class="col-lg-3">
				<div class="header_content d-flex flex-row align-items-center justify-content-start">
					<div class="logo">
						<a href="#">
							<div class="col-lg-3 footer_col">
								<div class="footer_logo cellar grow">
									<a href="index.jsp" class="footer_logo_subtitle">Winederlust</a>
								</div>
							</div>
						</a>
					</div>
				</div>
	    </div>
	    <div class="col-lg-9">
				<div class="header_content d-flex flex-row align-items-center justify-content-end">
				<nav class="main_nav">
					<ul class="d-flex flex-row align-items-center justify-content-end">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="AboutUs.jsp">About Us</a></li>
						<li><a href="Login.jsp">My Account</a></li>
						<li><a href="Cellar.jsp"><img class="cellar grow" src="images/cellar.png" alt="cellar"></a></li>
						<li><a href="Cart.jsp"><img class="cellar grow" src="images/Cart.png" alt="Cart"></a></li>
					</ul>
				</nav>
			</div>
	    </div>
	  </div>
	</div>
	</header>

	<!-- Hamburger -->

	<div class="hamburger_bar trans_400 d-flex flex-row align-items-center justify-content-start">
		<div class="hamburger">
			<div class="menu_toggle d-flex flex-row align-items-center justify-content-start">
				<span>menu</span>
				<div class="hamburger_container">
					<div class="menu_hamburger">
						<div class="line_1 hamburger_lines" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
						<div class="line_2 hamburger_lines" style="visibility: inherit; opacity: 1;"></div>
						<div class="line_3 hamburger_lines" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/home.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_subtitle page_subtitle">Your Cart</div>
							<div class="home_text ml-auto mr-auto">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="scroll_icon"></div>
	</div>

		<!-- Wines, price, score (or rating) -->
		<div class="wines">
			<div class="container">
				<div class="col-lg-12 col-md-12 col-xs-12 border border-secondary rounded">
					<H1>Wine Cart:</H1>
					
				</div>
	
			</div> <!-- Wines -->
		</div> <!-- End of Super Container -->
		
		<!-- Footer -->
	<footer class="footer">
		<div class="container">
				<!-- Footer Contact -->
				<div class="col-lg-12 footer_col">
					<div class="row">
					  <div class="col-lg-4">
							<center><a href="https://www.facebook.com/"><img class="FooterLinks grow" src="images/Facebook.png" alt="Facebook Link"></a></center>
					  </div>
					  <div class="col-lg-4">
							<center><a href="https://twitter.com/?lang=en"><img class="FooterLinks grow" src="images/Twitter.png" alt="Facebook Link"></a></center>
					  </div>
					  <div class="col-lg-4">
							<center><a href="https://www.instagram.com/?hl=en"><img class="FooterLinks grow" src="images/Instagram.png" alt="Facebook Link"></a></center>
					  </div>
					</div>
				</div>
				<!-- Footer About -->

					<div class="footer_about">
						<center><div class="copyright">
						<p style="line-height: 1.2;">Copyright Winederlust &copy;2018 All rights reserved </a></p>
						</div></center>
				</div>
		</div>
	</footer>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="JS/scripts.js"></script>
</body>
</html>