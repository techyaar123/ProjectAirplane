<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.sql.*" %>
   <%
String a=request.getParameter("user");
String b=request.getParameter("pass");
String g=request.getParameter("b3");

%>
<% 
Connection con=null;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/airplane","root","root");
}catch(Exception u)
{
	u.printStackTrace();
}
if(g.equals("submit"))
{
	try{
	PreparedStatement ps=con.prepareStatement("insert into addUser(username,password) values(?,?)"); 
	 ps.setString(1, a);
	 ps.setString(2, b);
	
	int rows=ps.executeUpdate();
	}catch(Exception e)
	{
		response.sendRedirect("Error.html");
	}
	
	 
}

 
 
 %>
 
 <!DOCTYPE html>
<html>
<style>
*{
color:white;
background-color:black;
}

</style>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Booking </title>
   <!-- Nav bar starts here -->
      <nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" style="color:#e3f2fd;">Abhi's Travel</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon" style="background-color:grey"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link " style="color:grey;"aria-current="page" href="index.html" >Home</a>
        
        <a class="nav-link" style="color:grey;" href="About.html">About Us</a>
        <a class="nav-link" style="color:grey;" href="Login.html">Login</a>
      </div>
    </div>
  </div>
</nav>
 <!-- Nav bar ends here -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body style="background-color:black">
<div class="container" style="margin-left:auto;margin-right:auto;">
	<div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">Success</h2>
        <img src="./check.png" width="100px">
        
        <p style="font-size:20px;color:#5C5C5C;">Thank you for Registering with us</p>
        
    <br><br>
        </div>
        
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>