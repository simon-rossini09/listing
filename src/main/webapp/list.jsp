<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

</head>
<body>

<div class="container">
	
	<div class="row">
	
	<!-- Affichage de la liste des utilisateurs avec boostrap -->
	
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Firstname</th>
		      <th scope="col">Lastname</th>
		      <th scope="col">Email</th>
		      <th scope="col">Adresse</th>
		      <th scope="col">City</th>
		      <th scope="col">Tél</th>
		      
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach var="user" items="${users}">
		    <tr>
		      <th scope="row">${user.id }</th>
		      <td>${user.firstname }</td>
		      <td>${user.lastname }</td>
		      <td>${user.e_mail }</td>
		      <td>${user.adress }</td>
		      <td>${user.city }</td>
		      <td>${user.phone_number }</td>
		    </tr>
		    </c:forEach>
		  </tbody>
	</table>
	
	<!--  -->
		</div>
		
		<button type="button" class="btn btn-info">
			<a href="<%= request.getContextPath() %>/createUser">Ajout user</a>
		</button>
	</div>
</body>
</html>