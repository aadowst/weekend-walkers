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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
<title>Book Share</title>
</head>
<body>

	<h1>
		Hello,
		<c:out value="${user.userName}"></c:out>
	</h1>

	<div class="container">

		<div class="row text-center">
			<h1>
				<c:out value="${club.name}"></c:out>
			</h1>
		</div>
		<div class="col-4">
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th scope="col" class="text-center">Information</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Established date: <fmt:formatDate value="${club.createdAt}" pattern="MMMM dd, yyyy"></fmt:formatDate></th>
					</tr>
					<tr>
						<th scope="row">Location: <c:out value="${club.location}"></c:out> </th>
					</tr>
					<tr>
						<th scope="row">Organizer: <c:out value="${club.organizer.userName}"></c:out></th>
					</tr>
				</tbody>
			</table>
		</div>
		<table class="table table-hover col-8">
			<thead>
				<tr>
					<th scope="col">Member</th>
					<th scope="col">Join Date</th>
					<th scope="col">Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="club" items="${club.users}">
					<tr>
						<th scope="row"><c:out value="${club.userName}"></c:out></th>
						<td><fmt:formatDate value="${club.createdAt}" pattern="MMMM dd, yyyy"></fmt:formatDate></td>
						<td><c:out value="${club.email}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
		
		<table class="table table-hover row">
			<thead>
				<tr>
					<th scope="col">New Request</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="club" items="${clubs}">
					<tr>
						<th scope="row">bowen</th>
						<td>Approve or Deny</td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>


	</div>
	
	<a class="btn btn-primary" href="/clubs/${id}/edit" role="button">Edit Club</a>
	<a class="btn btn-primary" href="/clubs/${id}/delete" role="button">Delete Club</a>


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