
	<jsp:include page="./Homepage.jsp"></jsp:include>
	
	<!-- Login form starts -->
	
	<div class="container rounded" style="width:80%;height:600px;margin-top:8%;">
		<div class="shadow rounded card d-inline-flex flex-row w-100 h-100">		
			<img alt="" class="d-inline-flex justify-content-start " src="data:image/png;base64,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" style="width:50%">
			<div class="d-inline-flex justify-content-center align-items-center h-100 " id="grad1" style="width:50%">
				<form action="./Login" method="POST">
					<div class="form-group">
				    	<label for="exampleInputEmail1">User Name</label>
				    	<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" placeholder="Enter User Name">
				  	</div>
				  	<div class="form-group">
				    	<label for="password">Password</label>
				    	<input type="password" class="form-control" id="password" name = "password" placeholder="Password">
				  	</div>
				  	<div class="form-check">
						<input class="form-check-input" type="checkbox" onclick="show_password()" value="" id="defaultCheck1">
					  	<label class="form-check-label" for="defaultCheck1" >Show password</label>
					</div>
					<br>
				  	<button type="submit" class="btn btn-primary">Sign in</button>
				</form>
			</div>
		</div>
	</div>
	
	<!-- Login form ends -->
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>