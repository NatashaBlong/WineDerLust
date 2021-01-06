<!DOCTYPE html>
<html lang="en">
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
						<li><a href="#">Search</a></li>
						<li><a href="Login.jsp">Login</a></li>
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
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/home.jpg" data-speed="0.8"></div>
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
	<!-- Page Body -->
	<%
	String wine_name = request.getParameter("wine_name");
	System.out.println(wine_name);
	boolean flag = DBfilter.selectedWine(wine_name);
	if (flag) { 
	for (int i = 0; i< DBfilter.filtetedWines.size(); i++)
	{
		System.out.print(DBfilter.filtetedWines.get(i) + " - ");
	}
	
	%>
	<div class="winepage page-body">
		<div class="winepage_content container">
			<div class="row">
				<div class="col-sm-7">
					<center>
					  <h1><%out.println(DBfilter.filtetedWines.get(1));%></h1> <!-- wine_name -->
					  <h3><%out.println(DBfilter.filtetedWines.get(4));%> <%out.println(DBfilter.filtetedWines.get(3));%> <%out.println(DBfilter.filtetedWines.get(6));%></h3> <!-- style , wine_type variety-->
					  <img class="winepage-img" src="wineImg/<%out.println(DBfilter.filtetedWines.get(0));%>.jpg" width="200px" height="300px"> <!-- id -->
					  <div class="winepage-btns">
					  <button class="add-cellar" onclick="addCellar(<%out.println(DBfilter.filtetedWines.get(0));%>, <%out.println(DBfilter.ID);%>)">Save Wine </button>
					  <button class="add-cart" onclick="addCart(<%out.println(DBfilter.filtetedWines.get(0));%>, <%out.println(DBfilter.ID);%>)">Add to Cart</button>
					  </div>
					</center>
					</div>
					<div class="col-sm-4 wine-details-content">
					  <h2>Wine Details</h2>
					  <ul class="details-list">
						<li class="wine-details">Rating: <%out.println(DBfilter.filtetedWines.get(7));%> Stars</li> <!-- rating -->
						<li class="wine-details">Vintage: <%out.println(DBfilter.filtetedWines.get(5));%></li> <!-- vintage -->
						<li class="wine-details">Producer: <span id="wine-producer"><%out.println(DBfilter.filtetedWines.get(10));%></span></li> <!-- producer -->
						<li class="wine-details">Origin: <span id="wine-origin"><%out.println(DBfilter.filtetedWines.get(11));%>, <%out.println(DBfilter.filtetedWines.get(12));%></span></li> <!-- origin -->
						<li class="wine-details">Taste Notes: <span class="wine-notes"><%out.println(DBfilter.filtetedWines.get(13));%></span></li> <!--  notes -->
						<li class="wine-details">Food Pairings: <span class="wine-food"><%out.println(DBfilter.filtetedWines.get(14));%></span></li> <!-- pairing -->
						<li class="wine-details">$<span class="wine-price"><%out.println(DBfilter.filtetedWines.get(2));%>.00</span></li> <!-- price -->
					  </ul>
					</div>
					<div class="col-sm-1"></div>
			  </div>
		</div>
	</div>
	<% } 
	else { %>
		<h1>We somehow lost the wine on the way here. Please try again later...</h1>
<%  } %>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<!-- Footer Logo -->
				<div class="col-lg-3 footer_col">
					<div class="footer_logo">
						<div class="footer_logo_subtitle">Winederlust</div>
						<!-- EDIT: corrected Winederlust -->
					</div>
				</div>

				<!-- Footer About -->
				<div class="col-lg-6 footer_col">
					<div class="footer_about">
						<center><div class="copyright">
							<p style="line-height: 1.2;">Copyright Winederlust &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved </a></p>
							<!-- EDIT: corrected Winederlust -->
						</div></center>
					</div>
				</div>

				<!-- Footer Contact -->
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