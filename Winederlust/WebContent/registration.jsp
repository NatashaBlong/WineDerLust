<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="images/Logo.png">
    <title>Create Account</title>

    <!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  </head>

  <body class="text-center">
<%@ page import="java.io.*" %> 
<%@ page import="Winederlust.*" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

    <form class="form" action="registration.jsp" method="get">
      <img class="mb-4" src="images/Logo.png" alt="" width="180" height="170">
      <h1 class="h3 mb-3 font-weight-normal">Register</h1>
 
  
      <input type="fName" id="inputFname" class="form-control" placeholder="First Name" required>
            
      <input type="lName" id="inputlName" class="form-control" placeholder="Last Name" required>
           
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required>
      
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      

      <input type="repeatPassword" id="inputRepeatPassword" class="form-control" placeholder="RepeatPassword" required>
  
  	  <input type="checkbox" name="ageCheck" value="ageCheck" checked required> I certify that I am 21+ years old.<br>
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
      <p class="mt-5 mb-3 text-muted">&copy; Winederlust 2018</p>
    </form>
<%	
	String fName = request.getParameter("fName");
	String lName = request.getParameter("lName");
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	String repeatPass = request.getParameter("repeatPassword");

if ((fName != null && !fName.trim().equals("")) && (lName != null && !lName.trim().equals("")) && (email != null && !email.trim().equals("")) && (pass != null && !pass.trim().equals("")) &&
   (repeatPass != null && !repeatPass.trim().equals(""))) {
	
	DBentry DBentry = new DBentry();
	
		boolean flag = DBentry.addCustomer(fName, lName, email, pass);
		if(flag) { %><script type="text/javascript">window.location.replace("Login.jsp");</script> <% }
			else { %><script type="text/javascript">alert("Registration Failed, please try again!");</script><%	}
	} %>
  </body>
</html>