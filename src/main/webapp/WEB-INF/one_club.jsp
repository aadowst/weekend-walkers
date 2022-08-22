<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<title>Book Share</title>
</head>
<body>

	<h1>
		Hello,
		<%-- <c:out value="${user.userName}"></c:out> --%> 
	</h1>

	<div class="container">
		<div class="col-4">
		
		</div>
		<table class="table table-hover col-8">
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
					<th scope="row"><c:out value="${club.name}"></c:out></th>
					<td><c:out value="${club.location}"></c:out></td>
					<td><c:out value="${club.organizer}"></c:out></td>
					<td><c:out value="${club.users}"></c:out></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		

	</div>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>