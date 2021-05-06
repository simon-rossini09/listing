<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>listing</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

</head>
<body>
	
	<c:forEach var="listUser"items="${list}">
	
	</c:forEach>
	
	<!-- Formulaire de bootstrap qu'il faut adapter à mon projet -->
	<div class="container">
	<form class="row g-3" action="<%= request.getContextPath()%>/createUser" method="post">
		 <div class="col-md-6">
	    <label for="inputEmail4" class="form-label">Firstname</label>
	    <input type="text" class="form-control" id="inputEmail4" name="firstname">
	  </div>
	  <div class="col-md-6">
	    <label for="inputPassword4" class="form-label">Lastname</label>
	    <input type="text" class="form-control" id="inputPassword4" name="lastname">
	  </div>
	  
	  <div class="col-md-6">
	    <label for="inputEmail4" class="form-label">Email</label>
	    <input type="email" class="form-control" id="inputEmail4" name="e_mail">
	  </div>
	  <div class="col-md-3">
	    <label for="inputPassword4" class="form-label">Password</label>
	    <input type="password" class="form-control" id="inputPassword4" name="password">
	  </div>
	  
	  <div class="col-md-3">
	    <label for="inputPassword4" class="form-label">Confirm Password</label>
	    <input type="password" class="form-control" id="inputPassword4" name="confirm_password">
	  </div>
	  
	  <div class="col-12">
	    <label for="inputAddress" class="form-label">Address</label>
	    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" name="adress"> 
	  </div>
	  <div class="col-md-6">
	    <label for="inputCity" class="form-label">City</label>
	    <input type="text" class="form-control" id="inputCity" name="city">
	  </div>
	  <div class="col-md-6">
	    <label for="inputCity" class="form-label">Phone</label>
	    <input type="text" class="form-control" id="inputCity" name="phone_number">
	  </div>
	  <div class="col-12">
	    <button type="submit" class="btn btn-primary">Je crée mon compte</button>
	  </div>
      
	</form>
	
	<br>
	<button type="button" class="btn btn-info">
		<a href="<%= request.getContextPath() %>/listingUser">Retour à la liste</a>
	</button>
	<!-- Fin formulaire bootstrap -->
	<!-- 
	
	JE suis laà
	
	merci
	
	
	equest.getContextPath()%>/createUser" method="post">
	<label for="first_name">First Name</label>
	<input type="text" id="first name">;
	
	<label for="last_name">Last Name</label>
	<input type="text" id="last name">;
	
	<label for="e_mail">E-mail</label>
	<input type="text" id="e_mail">;
	
	<label for="password">Password</label> 
	<input type="text" id="password">;
	
	<br><br><br>
	
	<label for="confirm_password">Confirm password</label>
	<input type="text" id="confirm_password">
	
	<label for="adress">Adress</label>
	<input type="text" id="adress">
	
	
	<label for="phone_number">Phone Number</label>
	<input type="text" id="phone_number"/>
	
	<label for="city">City</label>
	<input type= select id="Londres, Berlin, Paris, Rome">;
	<br>
	 
	<p class=blablagauche>blablablabla...en bas à gauche</p>
	
	<button><a href="% request.getContextPath();%>/listUser">Afficher la liste des utilisateurs</a></button>
	<button type=submit> Create Account</button>
	
	</form>
	-->
	</div>
</body>
</html>