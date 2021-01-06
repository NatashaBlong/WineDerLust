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
<link rel="stylesheet" href="CSS/style.css">
<title>Winederlust About Us</title>
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
						<li><a href="#">Search</a></li>
						<li><a href="#" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">My Account</a></li>
							<div id="id01" class="modal">
								<form class="modal-content animate" action="registration.jsp">
									<div class="imgcontainer">
										<span
											onclick="document.getElementById('id01').style.display='none'"
											class="close" title="Close Modal">&times;</span> 
											<img src="images/Logo.png" alt="Avatar" class="avatar">
									</div>
									<div class="container">
										<label for="uname"><b>Email</b></label> <input type="text" placeholder="Enter Username" name="uname" required> 
										<label for="psw"><b>Password</b></label> <input type="password" placeholder="Enter Password" name="psw" required>
										<button type="submit">Login</button>
										<button href="registration.jsp" type="submit">Register</button>
										<label> <input type="checkbox" checked="checked" name="remember"> Remember me
										<button type="button" onclick="document.getElementById('id01')" class="cancelbtn" style="float: right;">Cancel</button><br><br>
										</label>
									</div>
								</form>
							</div>

							<script> var modal = document.getElementById('id01');
									 window.onclick = function(event) {
    								 if (event.target == modal) {
        							 modal.style.display = "none"; } } </script>
						<li><a href="Cart.jsp"><img class="cellar grow" src="images/cellar.png" alt="cellar"></a></li>
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
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/grapesInHands.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_subtitle page_subtitle">Winederlust</div>
							<div class="home_title">Wine-der-lust / noun - A Strong Desire to drink wines from around the world.</div>
							<div class="home_text ml-auto mr-auto">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="scroll_icon"></div>
	</div>

	<!-- Intro -->

	<div class="intro">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="intro_content">
						<div class="intro_subtitle page_subtitle">About US</div>
						<div class="intro_title"><h2>Bringing Wine and People Together</h2></div>
						<div class="intro_text">
							<p>Natasha Blong and Hannah Lebakken are two computer science students with a passion to use technology to bring people together through a universal Winederlust that warms any heart and quenches every desire.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-8">
							<div class="intro_image"><img src="images/home.jpg" alt="https://unsplash.com/@quanle2819"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- About Us -->
	<div class="aboutUs">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container">
						<div class="section_subtitle page_subtitle">About Us</div>
						<div class="section_title"><h1>Meet the Developers</h1></div>
					</div>
				</div>
			</div>
			<div class="row chefs_row row-eq-height">

				<!-- Natasha -->
				<div class="col-xl-6 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
					<div class="aboutUs">
						<div class="aboutUs_image"><img src="images/NatashaBlong.png" alt=""></div>
						<div class="aboutUs_content text-center">
							<div class="aboutUs_name">Natasha Blong</div>
							<div class="aboutUs_subtitle">Fullstack Developer</div></br>
							<div class="aboutUs_text">
								<p>Information about Natasha Blong</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Chef -->
				<div class="col-xl-6 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
					<div class="aboutUs">
						<div class="aboutUs_image"><img src="images/HannahLebakken.png" alt=""></div>
						<div class="aboutUs_content text-center">
							<div class="aboutUs_name">Hannah Lebakken</div>
							<div class="aboutUs_subtitle">Fullstack Developer</div></br>
							<div class="aboutUs_text">
								<p>Information about Hannah Lebakken</p>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	
</div> <!-- End of Super Container -->
		
		<!-- Footer -->
	<footer class="footer">
		<div class="container">
				<!-- Footer Contact -->
				<div class="col-lg-12 footer_col">
					<div class="row">
					  <div class="col-lg-4">
							<center><div class="footer_contact_text">Like Us on Facebook</div></center>
					  </div>
					  <div class="col-lg-4">
							<center><div class="footer_contact_text">Follow us on Twitter</div></center>
					  </div>
					  <div class="col-lg-4">
							<center><div class="footer_contact_text">Follow us on Instagram</div></center>
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
<script src="JS/custom.js"></script>
</body>
</html>