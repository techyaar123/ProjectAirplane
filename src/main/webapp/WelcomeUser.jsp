<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <a class="nav-link "style="color:grey" aria-current="page" href="AllPassengerList.jsp" >All Passenger List</a>
        <a class="nav-link" style="color:grey" href="Booking.html">Booking</a>
        <a class="nav-link" style="color:grey" href="Cancel">Cancel Ticket</a>
        <a class="nav-link" style="color:grey" href="index.html">Log out</a>
      </div>
    </div>
  </div>
</nav>
 <!-- Nav bar ends here -->



    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
  <body >
   <marquee scrollamount="20" style="color:white;background-color:black" height="50px"><h1>Welcome Admin</h1></marquee>
   
  
  <div style="background-color:black; padding-left:100px ; ">
  <br>
  <br>
  <div class="container">
  <div class="row">
   <div class="col-sm">
   <div class="card" style="width: 18rem;display:inline-block;margin-bottom:20px" >
  <img class="card-img-top" width="285" height="140" class="d-block w-100" src="./airplane-flying-cloudy-sky.jpg" alt="Card image cap">
  
  <div class="card-body">
    <h5 class="card-title">Add Flight</h5>
    <p class="card-text">Add Flights to the inventory.</p>
    <a href="AddFlight.html" class="btn btn-primary">Add Flights</a>
  </div>
</div>
</div>
 <div class="col-sm">
  <div class="card" style="width: 18rem;display:inline-block;margin-bottom:20px" >
  <img class="card-img-top" width="285" height="140" class="d-block w-100" src="./list.jpg" alt="Card image cap">
  
  <div class="card-body">
    <h5 class="card-title">All Passenger List</h5>
    <p class="card-text">See all the Passenger Details.</p>
    <a href="AllPassengerList.jsp" class="btn btn-primary">See Passenger List</a>
  </div>
  </div>
  
</div>
 <div class="col-sm">
  <div class="card" style="width: 18rem;display:inline-block" >
  <img class="card-img-top" width="285" height="140" class="d-block w-100" src="./flight.jpg" alt="Card image cap">
  
  <div class="card-body">
    <h5 class="card-title">See Flight Details</h5>
    <p class="card-text">See all the Flights Details.</p>
    <a href="SeeFlight.jsp" class="btn btn-primary">See Flights Details</a>
  </div>
  </div>
  
</div>
</div>
</div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>