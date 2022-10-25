<%@page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String a=request.getParameter("Flight_name");
String b=request.getParameter("from");
String c=request.getParameter("to");
String d=request.getParameter("Fare");
String e=request.getParameter("no_of_pass");
String g=request.getParameter("b1");
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
	PreparedStatement ps=con.prepareStatement("insert into addtable(flight_name,from_place,to_place,fare,no_of_pass) values(?,?,?,?,?)"); 
	 ps.setString(1, a);
	 ps.setString(2, b);
	 ps.setString(3, c);
	 ps.setInt(4, Integer.parseInt(d));
	 ps.setInt(5,Integer.parseInt(e));
	 ps.execute();
}

 
 
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
        
        <p style="font-size:20px;color:#5C5C5C;">Thank you for adding new Flight</p>
        
    <br><br>
        </div>
        
	</div>
</div>
</body>
</html>