<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="images/Logo.png">
    <title>Signin to Winederlust</title>

    <!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="styles/Login.css" rel="stylesheet"> 
  </head>

  <body class="text-center">
<%@ page import="java.io.*" %> 
<%@ page import="Winederlust.*" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

	<div id="form-container">
    <form class="form-signin" action="index.jsp" method="get">
      <img class="mb-4" src="images/Logo.png" alt="" width="180" height="170">
      <h1 class="h3 mb-3 font-weight-normal">Account Information</h1>
 
      <label for="inputfName" class="sr-only">First Name/label>
      <input type="fName" id="inputFname" class="form-control" placeholder="First Name">
            
      <label for="inputlName" class="sr-only">Last Name</label>
      <input type="lName" id="inputlName" class="form-control" placeholder="Last Name">
           
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address">
      
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password">
      
      <label for="inputRepeatPassword" class="sr-only">Repeat Password</label>
      <input type="password" id="inputRepeatPassword" class="form-control" placeholder="RepeatPassword">
      
      
      	<select name="Month" class="app-select form-control">
		<option value="null">Month</option>
		<option value="1">January</option>
		<option value="2">February</option>
		<option value="3">March</option>
		<option value="4">April</option>
		<option value="5">May</option>
		<option value="6">June</option>
		<option value="7">July</option>
		<option value="8">August</option>
		<option value="9">September</option>
		<option value="10">October</option>
		<option value="11">November</option>
		<option value="12">December</option>
	</select>
	
	<select name="Day" class="app-select form-control">
		<option value="null">Day</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
		<option value="16">16</option>
		<option value="17">17</option>
		<option value="18">18</option>
		<option value="19">19</option>
		<option value="20">20</option>
		<option value="21">21</option>
		<option value="22">22</option>
		<option value="23">23</option>
		<option value="24">24</option>
		<option value="25">25</option>
		<option value="26">26</option>
		<option value="27">27</option>
		<option value="28">28</option>
		<option value="29">29</option>
		<option value="30">30</option>
		<option value="31">31</option>
	</select>
	
      <label for="inputYear" class="sr-only">Year</label>
      <input type="year" id="inputYear" class="form-control" placeholder="Year">
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      <p class="mt-5 mb-3 text-muted">&copy; Winederlust 2018</p>
    </form>

	</div>
	<script src="JS/cookies.js"></script>
  </body>
</html>