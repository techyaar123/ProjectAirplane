<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="javax.servlet.http.Cookie"%>
      <%@page import ="java.sql.*" %>
     
   <%
String a=request.getParameter("userName");
String b=request.getParameter("password");
String c=request.getParameter("LoginAs");
String g=request.getParameter("b4");
if(c.equals("Admin"))
{
	response.sendRedirect("Welcome.html");
	}
	else
	{
		
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
			PreparedStatement ps=con.prepareStatement("select * from addUser where username='"+a+"' and password='"+b+"';"); 
			int x=0;
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				x++;
			}
			if(x==0)
			{
				response.sendRedirect("Error2.html");
			}else{
				
			}
			}catch(Exception e)
			{
				response.sendRedirect("index.html");
			}
			
			 
		}

		 
		 
		 Cookie firstName = new Cookie("username", a);
		 firstName.setMaxAge(60*60*24);
		 response.addCookie(firstName);
			}

%>
<!doctype html>
<html lang="en">
<style>
*{
background-color:black;
color:white;
}
</style>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Airplane Booking</title>


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
        <a class="nav-link" style="color:grey" href="Cancel.jsp">Cancel Ticket</a>
        <a class="nav-link" style="color:grey" href="Logout.jsp">Log out</a>
      </div>
    </div>
  </div>
</nav>
 <!-- Nav bar ends here -->



    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
  <body >
  <%
  out.println(" <marquee scrollamount='20' style='color:white;background-color:black' height='50px'><h1>Welcome "+a+"</h1></marquee>");
   %>
  
  <div style="background-color:black; padding-left:100px ; ">
  <br>
  <br>
  <div class="container">
  <div class="row">
   <div class="col-sm">
   <div class="card" style="width: 18rem;display:inline-block;margin-bottom:20px" >
  <img class="card-img-top" width="285" height="140" class="d-block w-100" src="./airplane-flying-cloudy-sky.jpg" alt="Card image cap">
  
  <div class="card-body">
    <h5 class="card-title">Book a flight</h5>
    <p class="card-text">Book a flight in simplest way.</p>
    <a href="booking.html" class="btn btn-primary">Book Flight</a>
  </div>
</div>
</div>
 <div class="col-sm">
  <div class="card" style="width: 18rem;display:inline-block;margin-bottom:20px" >
  <img class="card-img-top" width="285" height="140" class="d-block w-100" src="./list.jpg" alt="Card image cap">
  
  <div class="card-body">
    <h5 class="card-title">Cancel a flight</h5>
    <p class="card-text">Cancel anytime with 100% refund.</p>
    <a href="Cancel.jsp" class="btn btn-primary">Cancel</a>
  </div>
  </div>
  
</div>

  
</div>
</div>
</div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>