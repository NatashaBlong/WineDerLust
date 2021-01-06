<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome!</title>
</head>
<body>
<%@ page import="java.io.*" %> 
<%@ page import="Winederlust.*" %>

<h2>Welcome!</h2>
<p>Your most recent order was for <%out.println(request.getParameter("quantity"));%><%out.println(request.getParameter("order"));%>.</p>
<form  action="logout.jsp" method="get">
<input type="submit" Value="Logout" ></input>
</form>
</body>
</html>