<jsp:include page="./Homepage.jsp"></jsp:include>
</head>
<body style="background-image:url(https://www.galaxyeduworld.com/images/pharmacy-colleges-in-bangalore.jpg);background-position: center;background-attachment:fixed; background-repeat:no-repeat; background-size:cover;background-opacity:0.4;">
<% String status = (String)request.getAttribute("status");
	if(status ==  "200"){%>
	<script type="text/javascript">
		alert("Medicine details are successfully added.");
	</script>
<%} %>
	<div class="container " style="width:35%;height:450px;margin-top:20%; align-center">
		<div class="card d-inline-flex flex-row-center w-100 h-100 bg-transparent">
			<div class="d-inline-flex justify-content-center align-items-top h-100" id="grad1" style="width:100%;">	
				<form action="./Add" method="POST" id="form" style="margin-top:5%;" >
					<div class="form-group">
						<label for="id" style="font-weight:bold; font-size:18px;">Enter Medicine ID</label>
						<input type="text" class="form-control" id="id" name="id" placeholder="med_ID" >
					</div>
					<div class="form-group">
						<label for="title" style="font-weight:bold; font-size:18px;">Enter title</label>
						<input type="text"  class="form-control" id="title" name="title" placeholder="title">
					</div>
					<div class="form-group">
						<label for="qty" style="font-weight:bold; font-size:18px;">Enter quantity</label><br>
						<input type="number" class="form-control" id="quantity" name="quantity" placeholder="Qty">
					</div>
					<div class="form-group">
						<label for="price" style="font-weight:bold; font-size:18px;">Enter Unit Price</label><br>
						<input type="number" class="form-control" id="price" placeholder="Unit Price">
					</div>
					<input type="button" class="btn btn-secondary" value="Add" style="margin-left:35%;background-color:#1c8adb;" onclick="validate()">
				</form>
			</div>
		</div>
	</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>