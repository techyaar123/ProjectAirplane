

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String a=request.getParameter("from");
String b=request.getParameter("to");

%>
<!doctype html>
<html lang="en">
  <head>
  <style>
  
  *{
  background-color:black;
  color:white;
  }
  </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>See Flight</title>


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
        <a class="nav-link" style="color:white;" href="booking.html">Booking</a>
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
  <br>
    <%@page import="java.sql.*"%>
<%Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/airplane","root","root");
	if(a.equals(b)==false)
	{
	PreparedStatement ps=con.prepareStatement("select * from addtable where to_place='"+b+"' and from_place='"+a+"';");
	ResultSet rs=ps.executeQuery();
	out.println("<table border=1 width='55%' class='table table-dark w-auto'> ");
	out.println("<tr><th>Flight_id<th>Flight_name<th>to<th>from<th>fare<th>no_of_pass<th>Book</tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getInt(1)+" <td> "+rs.getString(2)+" <td> "+rs.getString(3)+" <td> "
	+rs.getString(4)+" <td> "+rs.getInt(5)+" <td> "+rs.getInt(6)+ "<td><form action='PassengerDetails.jsp'><button class='btn btn-primary' type='submit' name='flight_Id' value='"+rs.getInt(1)+"'>Book</button></form>");
	}
	out.println("</table>");
	}else{
		out.println("<div class='alert alert-dark' role='alert'>To and From cannot be same!</div>");
	}
}
	catch(Exception ae)
	{
		ae.printStackTrace();
	}
	

	%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>