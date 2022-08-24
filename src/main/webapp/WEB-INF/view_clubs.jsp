<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Book Share</title>
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
				<a class="btn btn-secondary m-2" href="/login" role="button"
					id="login_btn"> LogIn/Register</a>

			</div>
			<!-- Right elements -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->
	<h1 class="header">
		Hello,
		<c:out value="${user.userName}"></c:out>
	</h1>

	<div class="container">
	
		<div class="col-3"></div>
		<table class="table table-hover col-6">
			<thead>
				<tr>
					<th scope="col">Club</th>
					<th scope="col">Location</th>
					<th scope="col">Organizer</th>
					<th scope="col"># Of Members</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="club" items="${clubs}">
				<tr>
					<th scope="row"><a href="/clubs/${club.id}"><c:out value="${club.name}"></c:out></a></th>
					<td><c:out value="${club.location}"></c:out></td>
					<td><c:out value="${club.organizer.userName}"></c:out></td>
					<td><c:out value="${club.users.size()}"></c:out></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<div class="col-3"></div>

	</div>


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