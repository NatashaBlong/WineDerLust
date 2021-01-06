<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="images/Logo.png">
    <title>Login</title>

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

    <form class="form-signin" action="index.jsp" method="get">
      <img class="mb-4" src="images/Logo.png" alt="" width="180" height="170">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address">
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password">
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    </form>
   <Center><p class="h3 mb-3 font-weight-normal"><h1>Don't have an account?</h1></p>
    <button class="btn btn-lg btn-primary btn-block" style="width:60%;" onclick="location.href='registration.jsp'">Register</button></Center>
          <p class="mt-5 mb-3 text-muted">&copy; Winederlust 2018</p>
<%	
	String email = request.getParameter("email");
	String pass = request.getParameter("password");

	if (email != null && !email.trim().equals("")) {
		DBfilter DBfilter = new DBfilter();
		boolean flag = DBfilter.userLookup(email, pass);
		if(flag) { %>
			<script type="text/javascript">window.location.replace("index.jsp");</script>
		<% }
		else { %><script type="text/javascript">window.location.replace("registration.jsp");</script><%	}
	} %>
  </body>
</html>