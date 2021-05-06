<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

<link rel="styleSheet" href="<%= request.getContextPath()%>/css/style.css">
</head>
<body>
	<!-- 
	
	ENCORE UNE FOIS C'EST PAS ICI QUE TU DOIS METTRE LE FORMULAIRE
	C 'EST DANS LA PAGE CREATEUSER.JSP
	http://localhost:8080/Listing/createUser
	
	
	<h2 align = center>REGISTRATION</h2>
	<br><br><br><br><br>
	
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
	<br>
	<br>
	<p class=class_blablagauche>blablablabla...en bas à gauche</p>;
	<br><br>
	<form action="" style="height: 5px ">;
	
	
	</form>
	<div id="deplacement"><button></button></div>
	<button > Create Account</button>
	
	-->
	
	<div class="container">
		<h1>Bienvenue </h1>
		
		<p>
			Bla bla bla et bla 
		</p>
	
	<button type="button" class="btn btn-info">
		<a href="<%= request.getContextPath() %>/listingUser">List user</a>
	</button></b>
	
	<button type="button" class="btn btn-info">
		<a href="<%= request.getContextPath() %>/createUser">Ajout user</a>
	</button>
	
	<p class=class_blablabas>blablablablablabla tout en bas</p>;
	
</div>
	</body>
</html>