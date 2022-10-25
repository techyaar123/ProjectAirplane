

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
  <style>
  
    *{
  background-color:black;
  color:white;
  },
  
 
  </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>See Flight</title>


    <!-- Nav bar starts here -->
    <nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="Welcome.html" style="color:#e3f2fd;">Abhi's Travel</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon" style="background-color:grey"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link "style="color:grey" aria-current="page" href="AllPassengerList.jsp" >All Passenger List</a>
        <a class="nav-link" style="color:grey" href="AddFlight.html">Add Flight</a>
        <a class="nav-link" style="color:white" href="SeeFlight.jsp">See Flight</a>
        <a class="nav-link" style="color:grey" href="index.html">Log out</a>
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
	PreparedStatement ps=con.prepareStatement("select * from addtable");
	ResultSet rs=ps.executeQuery();
	out.println("<table border=1 width='75%' class='table table-dark w-auto' style='margin-left:auto;margin-right:auto'>");
	out.println("<tr><th>Flight_id<th>Flight_name<th>to<th>from<th>fare<th>no_of_pass</tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getInt(1)+" <td> "+rs.getString(2)+" <td> "+rs.getString(3)+" <td> "
	+rs.getString(4)+" <td> "+rs.getInt(5)+" <td> "+rs.getInt(6));
	}
	out.println("</table>");}
	catch(Exception ae)
	{
		ae.printStackTrace();
	}%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>