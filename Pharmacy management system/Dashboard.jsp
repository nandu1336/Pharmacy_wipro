<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="./css/styles.css">
<script type="text/javascript" src="js/scripts.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title><% out.print(request.getAttribute("title")); %></title>
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-dark">
		<a class="navbar-brand btn border-white text-light" href="./Login">Pharmacy</a>
	
		<%  String user = (String)request.getSession().getAttribute("user");
			if(user != null){
		%>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			</ul>
			<i class="material-icons"><a class=" nav-link float-right d-inline text-white" href="./Logout">exit_to_app</a></i>
		</div>
		<%} %>
	</nav>
	<div class="container " style="width:1000px;height:400px;margin-top:15%;">
		<div class="d-inline flex w-70 h-100 ">
			<!--  Row one starts  -->
			<div class="row d-inline-flex align-start w-100 h-50 " style="margin-right:0%;margin-bottom:2%;">
				
				<!-- Row one column one -->	
				<div class="card h-100" style="width:48%;margin-right:2%;">
					<div class="d-flex w-100 h-50 bg-dark" style="">
						<a class="btn btn-primary" style="width:50%;height:50%;margin-top:5%;margin-left:25%;" href="./Add">Add</a>
					</div>
					<div class="d-flex w-100 h-50 bg-dark" style="display:block;">
						<p class="text-light" style="margin-top:5%;margin-left:20%;">Add new medicine into the inventory.</p>
					</div>
				</div>
				<!-- Row one column two -->
				<div class="card d-inline-flex justify-content-center align-center h-100" style="width:48%;">
					<div class="d-flex w-100 h-50 bg-dark" style="">
						<a class="btn btn-primary" style="width:50%;height:50%;margin-top:5%;margin-left:25%;" href="./Edit">Edit</a>
					</div>
					<div class="d-flex w-100 h-50 bg-dark" style="display:block;">
						<p class="text-light" style="margin-top:5%;margin-left:20%;">Add new medicine into the inventory.</p>
					</div>
				</div>
			</div>
			<div class="row d-inline-flex align-end w-100 h-50 " style="margin-right:0%">
				
				<!-- Row one column one -->	
				<div class="card h-100" style="width:48%;margin-right:2%;">
					<div class="d-flex w-100 h-50 bg-dark" style="">
						<a class="btn btn-primary" style="width:50%;height:50%;margin-top:5%;margin-left:25%;" href="./Delete">Delete</a>
					</div>
					<div class="d-flex w-100 h-50 bg-dark" style="display:block;">
						<p class="text-light" style="margin-top:5%;margin-left:20%;">Add new medicine into the inventory.</p>
					</div>
				</div>
				<!-- Row one column two -->
				<div class="card d-inline-flex justify-content-center align-center h-100" style="width:48%;">
					<div class="d-flex w-100 h-50 bg-dark" style="">
						<a class="btn btn-primary" style="width:50%;height:50%;margin-top:5%;margin-left:25%;" href="./Review">Review</a>
					</div>
					<div class="d-flex w-100 h-50 bg-dark" style="display:block;">
						<p class="text-light" style="margin-top:5%;margin-left:20%;">Add new medicine into the inventory.</p>
					</div>
				</div>
			</div>
		</div> 
	</div>
<div class="fixed-bottom bg-dark d-inline-flex justify-content-center text-white" style="height:50px;"><p class="">footer</p></div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>