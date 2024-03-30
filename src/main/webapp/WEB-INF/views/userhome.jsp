<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<style type="text/css">
body {
	background-image: url("aeroplane3.jpg");
	opacity: 100%;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: brown;
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
  background-color: red;
}

</style>
</head>
<body>
<ul>
  <li><a href="index">Home</a></li>
  <li><a href="Booking">Book now</a></li>
  <li><a href="UserBookings">My Bookings</a></li>
  <li><a href="CancelTickect">Cancel Ticket</a></li>
  <li><a href="PrintTicket">Print Ticket</a></li>
  <li><a href="userlogin">Logout</a></li>
</ul>

</html>