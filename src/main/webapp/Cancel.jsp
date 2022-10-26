

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ page import="javax.servlet.http.Cookie"%>
  
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
       
        <a class="nav-link" style="color:grey" href="booking.html">Booking</a>
        <a class="nav-link" style="color:white" href="Cancel.jsp">Cancel Ticket</a>
        <a class="nav-link" style="color:grey" href="Logout.jsp">Log out</a>
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
String res=null;

try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/airplane","root","root");
Cookie cookie = null;
Cookie[] cookies = null;

// Get an array of Cookies associated with the this domain
cookies = request.getCookies();
if(cookies!=null)
{
	
	 
	res=cookies[1].getValue();
}
	
	PreparedStatement ps=con.prepareStatement("select Personid,firstName,lastName,identityNumber,phone_no from addPassenger where bookedBy='"+res+"';");
	ResultSet rs=ps.executeQuery();
	out.println("<table border=1 width='55%' class='table table-dark w-auto' style='margin-left:auto;margin-right:auto'> ");
	out.println("<tr><th>Flight_id<th>First Name<th>Last Name<th>identity number<th>phone no<th>Cancel</tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getInt(1)+" <td> "+rs.getString(2)+" <td> "+rs.getString(3)+" <td> "
	+rs.getInt(4)+" <td> "+rs.getInt(5)+" <td> "+ "<form action='DeleteTicket.jsp'><button class='btn btn-primary' type='submit' name='flightId' value='"+rs.getInt(1)+"'>Cancel</button></form>");
	}
	out.println("</table>");
	
}
	catch(Exception ae)
	{
		ae.printStackTrace();
	}
	

	%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>