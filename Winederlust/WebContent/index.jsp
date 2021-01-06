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

		<!-- Wines, price, score (or rating) -->
		<div class="wines">
			<div class="container">
				<form action="filterPage.jsp" method="get">
					<div class="row">
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="style" class="app-select form-control">
								<option value="null">Style</option>
								<option value="Dry">Dry</option>
								<option value="Semi-Sweet">Semi-Sweet</option>
								<option value="Sweet">Sweet</option>
							</select>
						</div>
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="color" class="app-select form-control">
								<option value="null">Color</option>
								<option value="Red">Red</option>
								<option value="White">White</option>
								<option value="Rose">Rose</option>
								<option value="Sparkling">Sparkling</option>
								<option value="Dessert">Dessert</option>
							</select>
						</div>
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="vintage" class="app-select form-control">
								<option value="null">Latest Vintage</option>
								<option value="1925">1925</option>
								<option value="1950">1950</option>
								<option value="1970">1970</option>
								<option value="1995">1995</option>
								<option value="2017">2017</option>
							</select>
						</div>
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="price" class="app-select form-control">
								<option value="null">Maximum Price</option>
								<option value="25">Cheap</option>
								<option value="150">Mid-Range</option>
								<option value="700">Pricey</option>
								<option value="20000">Expensive</option>
							</select>
						</div>
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="rating" class="app-select form-control">
								<option value="null">Minimum Rating</option>
								<option value="1">Greater than 1 Star</option>
								<option value="2">Greater than 2 Stars</option>
								<option value="3">Greater than 3 Stars</option>
								<option value="4">Greater than 4 Stars</option>
								<option value="5">Greater than 5 Stars</option>
							</select>
						</div>
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="notes" class="app-select form-control">
								<option value="null">Notes</option>
								<option value="Aromatic">Aromatic</option>
								<option value="Balanced">Balanced</option>
								<option value="Berries">Berries</option>
								<option value="Bold">Bold</option>
								<option value="Buttery">Buttery</option>
								<option value="Caramelized">Caramelized</option>
								<option value="Classic">Classic</option>
								<option value="Complex">Complex</option>
								<option value="Cream">Cream</option>
								<option value="Crisp">Crisp</option>
								<option value="Dry">Dry</option>
								<option value="Flinty">Flinty</option>
								<option value="Floral">Floral</option>
								<option value="Fresh">Fresh</option>
								<option value="Fruity">Fruity</option>
								<option value="Green">Green</option>
								<option value="Light">Light</option>
								<option value="Lush">Lush</option>
								<option value="Nutty">Nutty</option>
								<option value="Rich">Rich</option>
								<option value="Perfumed">Perfumed</option>
								<option value="Savory">Savory</option>
								<option value="Spritzy">Spritzy</option>
								<option value="Sticky">Sticky</option>
								<option value="Structured">Structured</option>
								<option value="Sweet">Sweet</option>
								<option value="Traditional">Traditional</option>
								<option value="Tropical">Tropical</option>
								<option value="Warming">Warming</option>
								<option value="Youthful">Youthful</option>
							</select>
						</div>	
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="food_pairing" class="app-select form-control">
								<option value="null">Food Pairing</option>
								<option value="Beef">Beef</option>
								<option value="Blue Cheeses">Blue Cheeses</option>
								<option value="Cakes">Cakes</option>
								<option value="Caramel">Caramel</option>
								<option value="Cheddar">Cheddar</option>
								<option value="Chicken">Chicken</option>
								<option value="Chocolate">Chocolate</option>
								<option value="Crab">Crab</option>
								<option value="Cream">Cream</option>
								<option value="Duck">Duck</option>
								<option value="Fish">Fish</option>
								<option value="Fruit-based Desserts">Fruit-based Desserts</option>
								<option value="Game Birds">Game Birds</option>
								<option value="Goose">Goose</option>
								<option value="Gruyere">Gruyere</option>
								<option value="Salads">Salads</option>
								<option value="Shellfish">Shellfish</option>
								<option value="Green Vegetables">Green Vegetables</option>
								<option value="Gruyere">Gruyere</option>
								<option value="Goat Cheese">Goat Cheese</option>
								<option value="Feta">Feta</option>
								<option value="Lamb">Lamb</option>
								<option value="Lobster">Lobster</option>
								<option value="Manchego">Manchego</option>
								<option value="Mushrooms">Mushrooms</option>
								<option value="Parmesan">Parmesan</option>
								<option value="Pork">Pork</option>
								<option value="Root Vegetables">Root Vegetables</option>
								<option value="Squashes">Squashes</option>
								<option value="Tomato-based Dishes">Tomato-based Dishes</option>
								<option value="Turkey">Turkey</option>
								<option value="Venison">Venison</option>
							</select>
						</div>
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="variety" class="app-select form-control">
							<option value="null">Grape Varietal</option>
							<option value="Bordeaux Blend">Bordeaux Blend</option>
							<option value="Brachetto">Brachetto</option>
							<option value="Cabernet">Cabernet</option>
							<option value="Champagne Blend">Champagne Blend</option>
							<option value="Chardonnay">Chardonnay</option>
							<option value="Grenache">Grenache</option>
							<option value="Merlot">Merlot</option>
							<option value="Pinot Noir">Pinot Noir</option>
							<option value="Port Blend Red">Port Blend Red</option>
							<option value="Rare Rose Blend">Rare Rose Blend</option>
							<option value="Rare White Blend">Rare White Blend</option>
							<option value="Riesling">Riesling</option>
							<option value="Savagnin">Savagnin</option>
							<option value="Southern Rhone Blend">Southern Rhone Blend</option>
							<option value="Tokaji Blend">Tokaji Blend</option>
							<option value="Zinfandel">Zinfandel</option>
							</select>
						</div>	
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="region" class="app-select form-control">
								<option value="null">Region</option>
								<option value="Alsace">Alsace</option>
								<option value="Barsac">Barsac</option>
								<option value="Bordeaxu">Bordeaxu</option>
								<option value="Brachetto dAqui">Brachetto dAqui</option>
								<option value="California">California</option>
								<option value="Champagne Blanc de Blancs">Champagne Blanc de Blancs</option>
								<option value="Champagne Brut">Champagne Brut</option>
								<option value="Champagne Rose">Champagne Rose</option>
								<option value="Chateauneuf-du-Pape">Chateauneuf-du-Pape</option>
								<option value="Cotes de Provence">Cotes de Provence</option>
								<option value="Le Montrachet">Le Montrachet</option>
								<option value="Montilla-Moriles">Montilla-Moriles</option>
								<option value="Napa Valley">Napa Valley</option>
								<option value="Pessac-Leognan">Pessac-Leognan</option>
								<option value="Saint-Emilion Grand Cru">Saint-Emilion Grand Cru</option>
								<option value="Sauternes">Sauternes</option>
								<option value="Trempealeau">Trempealeau</option>
								<option value="Tokaj">Tokaj</option>
								<option value="Vintage Port">Vintage Port</option>
								<option value="Pessac-Leognan">Pessac-Leognan</option>
							</select>
						</div>	
									
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
							<select name="country" class="app-select form-control">
								<option value="null">Country</option>
								<option value="Australia">Australia</option>
								<option value="China">China</option>
								<option value="Cyprus">Cyprus</option>
								<option value="France">France</option>
								<option value="Germany">Germany</option>
								<option value="Greece">Greece</option>
								<option value="Hungary">Hungary</option>
								<option value="Italy">Italy</option>
								<option value="New Zealand">New Zealand</option>
								<option value="Portugal">Portugal</option>
								<option value="Spain">Spain</option>
								<option value="South Africa">South Africa</option>
								<option value="Switzerland">Switzerland</option>
								<option value="United States">United States</option>
							</select>
						</div>
						
						<div class="col-lg-2 col-md-6 col-xs-6 filters">
						<input type="Submit" class="btn btn-default btn-round" style="color:red; background-color:white;" value="Filter" onclick="DBfilter.setFilterTrue()">		
						</div>
					</div>
				</form> <br>
											
	<%  
		boolean flag = DBfilter.initDisplay();
		
		if(flag) 
		{ %>
			<nav aria-label=...>
			   <div class=pagination>
			        <a id="previous-page" href="javascript:void(0)" aria-label=Previous><span aria-hidden=true>&laquo;</span></a>
			   </div>
			 </nav>
			<div id="page" class ="row">
				<%	for (int i=0; i<DBfilter.filtetedWines.size(); i++) { %>
				<div class="specificWine" style="display: inline-block;">
					<img src="wineImg/<%out.println(DBfilter.filtetedWines.get(i));%>.jpg" alt="" class="img-responsive" style="height:250px; width:100%;"> <%i++;%>
					<p class="wineDetails"><strong><a href="SpecificWine.jsp?wine_name=<%out.println(DBfilter.filtetedWines.get(i));%>"><%out.println(DBfilter.filtetedWines.get(i));%></a></strong> <%i++;%> </p>
					<h4 class="wineDetails">$<%out.println(DBfilter.filtetedWines.get(i));%>.00</h4> <%i++;%>
					<p class="wineDetails">
						<%out.println(DBfilter.filtetedWines.get(i)); i++;%> - <%out.println(DBfilter.filtetedWines.get(i)); i++;%><br>
						<%out.println(DBfilter.filtetedWines.get(i)); i++;%> - <%out.println(DBfilter.filtetedWines.get(i)); i++;%><br>
						<%out.println(DBfilter.filtetedWines.get(i));%> Stars <%i = i + 8;%>
					</p>
				</div>
				<% 	} %>
			</div>
			<%	} else { %>
					<h2>No results found!<h2>
			<% } %>		
		</div> <!-- Container -->	
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