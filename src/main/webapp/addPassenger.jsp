<%@page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.Cookie"%>
<%
String a=request.getParameter("First_Name");
String b=request.getParameter("Last_Name");
String c=request.getParameter("Identification_Id");
String d=request.getParameter("phone_no");
String e=request.getParameter("address");
String f=request.getParameter("payment");
String g=request.getParameter("b2");
String h=request.getParameter("FId");
%>  
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
if(g.equals("submit"))
{
	PreparedStatement ps=con.prepareStatement("insert into addPassenger(firstName,lastName,identityNumber,phone_no,address,flightid,paymentType,bookedBy) values(?,?,?,?,?,?,?,?)"); 
	 ps.setString(1, a);
	 ps.setString(2, b);
	 ps.setInt(3, Integer.parseInt(c));
	 ps.setInt(4, Integer.parseInt(d));
	 ps.setString(5,e);
	 ps.setInt(6,Integer.parseInt(h));
	 ps.setString(7,f);
	 ps.setString(8,res);
	 ps.execute();
	 PreparedStatement ps2=con.prepareStatement("update addtable set no_of_pass= no_of_pass -1 where flight_id= "+h);
	 ps2.execute();
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
        
        <p style="font-size:20px;color:#5C5C5C;">Thank you for booking flight with us </p>
        <%
        out.println("<h1>"+res+"</h1>");
        %>
    <br><br>
        </div>
        
	</div>
</div>
</body>
</html>