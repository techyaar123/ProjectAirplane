<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String a=request.getParameter("flight_Id");

%> 

<!DOCTYPE html>
<html>
<head>
<style>
*{
background-color:black;
color:white;

}
</style>
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
<form class="form-control" action="addPassenger.jsp" style="background-color:black">
 <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">First Name</label>
    <input type="text" class="form-control" name ="First_Name" id="exampleInputPassword1" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Last Name</label>
    <input type="text" class="form-control" name ="Last_Name" id="exampleInputPassword1" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Identification Number</label>
    <input type="number" class="form-control" name ="Identification_Id" id="exampleInputPassword1" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Phone no</label>
    <input type="number" class="form-control" name ="phone_no" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Address</label>
    <input type="text" class="form-control" name ="address" id="exampleInputPassword1">
  </div>
  <% 
   out.println(" <div class='mb-3'> <label for='exampleInputPassword1' class='form-label'>Flight_id</label> <input type='text' class='form-control' name ='FId' value='"+a+"'id='exampleInputPassword1' readonly></div>");
  %>  
<br>
  <button type="submit"  class="btn btn-primary" name="b2" value="submit">Book now</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>