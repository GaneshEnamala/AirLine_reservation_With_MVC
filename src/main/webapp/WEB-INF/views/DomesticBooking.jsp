<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>
<link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css"
	type="text/css" rel="stylesheet" />
		
	<style>
body {
	background-image: url("aeroplane1.png");
	opacity: 100%;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  
</style>
</head>
<body class="bg-img2">
<ul>
  <li><a href="index">Home</a></li>
  <li><a href="userhome">Bookings</a></li>
  <li><a href="userlogin">Login/Register</a></li>
  <li><a href="adminlogin">Authorized Login</a></li>
  <li><a href="contactus">Contact</a></li>
  <li><a href="about">About</a></li>
</ul>
<h2 align="center" style="color:Black">Welcome to Domestic Flights</h2>
	<div class="d-flex justify-content-center">

	<form method="post" action="BookFlight">
	<div class="form-group row">
				<div class="col-sm-12">
       	<label for="from" >From</label>
		<select name="from" id="from" required >
		<option value="Vishakapatnam" >Vishakapatnam</option>
		<option value="Hyderabad" >Hyderabad</option>
		<option value="vijayawada" >Vijayawada</option>
		<option value="Delhi" >Delhi</option>
		<option value="Mumbai" >Mumbai</option>
		<option value="Chennai" >Chennai</option>
		<option value="Thirupathi" >Thirupathi</option>
		<option value="Kolkatta" >Kolkatta</option>
		<option value="Banglore" >Banglore</option>
		</select>
		</div>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-12">
      
      	<label for="to" >To</label>
		<select name="to" id="from" required >
		<option value="Hyderabad" >Hyderabad</option>
		<option value="Vishakapatnam" >Vishakapatnam</option>
		<option value="vijayawada" >Vijayawada</option>
		<option value="Delhi" selected>Delhi</option>
		<option value="Mumbai" >Mumbai</option>
		<option value="Chennai" >Chennai</option>
		<option value="Thirupathi" >Thirupathi</option>
		<option value="Kolkatta" >Kolkatta</option>
		<option value="Banglore" >Banglore</option>
		</select>
		</div>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-12">
			Travel Date<input type="date" name="date" id="date" min="2022-07-15" max="2022-12-31" required>
			</div>
			</div>
		
      
        <button type="submit" class="btn btn-dark"> Find Flights </button>
        <a href="Booking" class="btn btn-warning"> Go back </a>
        <a href="index" class="btn btn-danger"> Home </a>
    </form>
    </div>
</body>
</html>