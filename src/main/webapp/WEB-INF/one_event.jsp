<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<!-- CSS only -->
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Create an Event</title>
</head>

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
					src="/images/WWLogo.png" height="85" alt="" loading="" id="logo"
					class="rounded-circle" />
				</a>
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="/events">Dashboard</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/events/new">Post
							an Event</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->
			<div class="d-flex align-items-center">
				<!-- Icon -->
				<a class="text-reset me-3" href="#"> <i
					class="fas fa-shopping-cart"></i>
				</a>

				<!-- Notifications -->
				<!--       <div class="dropdown">
        <a
          class="text-reset me-3 dropdown-toggle hidden-arrow"
          href="#"
          id="navbarDropdownMenuLink"
          role="button"
          data-bs-toggle="dropdown"
          aria-expanded="false"
        >
          <i class="fas fa-bell"></i>
          <span class="badge rounded-pill badge-notification bg-danger">1</span>
        </a>
        <ul
          class="dropdown-menu dropdown-menu-end"
          aria-labelledby="navbarDropdownMenuLink"
        >
          <li>
            <a class="dropdown-item" href="#">Some news</a>
          </li>
          <li>
            <a class="dropdown-item" href="#">Another news</a>
          </li>
          <li>
            <a class="dropdown-item" href="#">Something else here</a>
          </li>
        </ul>
      </div> -->

				<!-- right drop down menu -->
				<div class="btn-group m-2 my-menu">
					<button type="button" class="btn btn-info dropdown-toggle"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false" id="nav-btn">Menu</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/events">View all Events</a> <a
							class="dropdown-item" href="/clubs">View all Clubs</a> <a
							class="dropdown-item" href="/clubs/new">Create a Club</a> <a
							class="dropdown-item" href="/events/new">Create an Event</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/logout">LogOut</a>
					</div>
				</div>

				<a class="btn btn-secondary" href="/logout" role="button">LogOut</a>
				<a class="btn btn-secondary m-2" href="/" role="button"
					id="login_btn"> LogIn/Register</a>

			</div>
			<!-- Right elements -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->
	<row class="d-flex justify-content-between mx-4">
	<h1 class="d-flex justify-content-start">
		Hey,
		<c:out value="${user.userName }" />
	</h1>
	<h1 class="d-flex justify-content-end">hhsh</h1>
	<%-- <div class="form-group d-flex justify-content-between my-2">
    <form:label path="rsvp" class="w-25">Open to Public? </form:label>
    <form:checkbox path="rsvp" class="w-75" value="true" /> --%>

	</row>


	<!-- JavaScript Bundle with Popper -->


	<div class="container">

		<div class="d-flex justify-content-between align-items-center">

			<h6 class="float-right">
				<a href="/events">Back to the Events</a>
			</h6>
		</div>

		<div class="content d-flex">
			<div class="content-left col-4 " id="googleMap"
				style="height: 400px;">INSERT GOOGLE MAPS</div>
			<div class="content-right list col-8 ">
			<h2 class="header d-flex justify-content-center align-items-center">Join Us On: <fmt:formatDate value="${event.createdAt}" pattern="MMMM dd, yyyy"></fmt:formatDate>
			</h2> 
			
			
			
				<ul class="list-group list-group-flush m-3">
					<h3>
						<li class="list-group-item">Hosted By: <c:out value="${event.hostedBy.name}"></c:out></li>
					</h3>
					<h3>
						<li class="list-group-item">Event Name: <c:out value="${event.name}"></c:out></li>
					</h3>
					<h3>
						<li class="list-group-item">Date: <fmt:formatDate value="${event.createdAt}" pattern="MMMM dd, yyyy"></fmt:formatDate></li>
					</h3>
					<h3>
						<li class="list-group-item">Location: <c:out value="${event.location}"></c:out></li>
					</h3>
					<h3>
						<li class="list-group-item"><c:if test = "${event.openToPublic == true}"><h3>Open to Public: Yes</h3></c:if><c:if test = "${event.openToPublic == false}"><h3>Open to Public: No</h3></c:if></li>
					</h3>
					
				</ul>
				
			</div>

		</div>
		</div>

		<!-- <script>
  function myMap() {
  var mapProp= {
    center:new google.maps.LatLng(51.508742,-0.120850),
    zoom:5,
  };
  
  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

  } -->

		<script src="/js/script.js"></script>
		</script>
		<script async defer
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA246nlIjYYGu89FdDHR5g0NiJbIyr9L3k&callback=initMap"></script>


		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
			integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
			integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
			crossorigin="anonymous"></script>
</body>

</html>