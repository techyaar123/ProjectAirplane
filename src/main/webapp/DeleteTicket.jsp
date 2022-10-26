<%@page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.Cookie"%>
 
<% 
Connection con=null;
String res=null;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/airplane","root","root");
 
 Cookie cookie = null;
 Cookie[] cookies = null;

 // Get an array of Cookies associated with the this domain
 cookies = request.getCookies();
 if(cookies!=null)
{
	
	 
	res=cookies[1].getValue();
}
}catch(Exception u)
{
	u.printStackTrace();
}

	PreparedStatement ps=con.prepareStatement("delete from addPassenger where bookedBy = '"+res+"';"); 
	
	 ps.execute();
	 


 
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Flight</title>
</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">Success</h2>
        <img src="./check.png" width="100px">
        
        <p style="font-size:20px;color:#5C5C5C;">Thank you , your ticket was cancelled </p>
        
    <br><br>
        </div>
        
	</div>
</div>
</body>
</html>