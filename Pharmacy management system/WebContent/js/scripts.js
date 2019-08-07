function show_password(){
	var field = document.getElementById("password");
	if(field.type == "password"){
			field.type = "text";
	}
	else if(field.type == "text"){
		field.type = "password";
	}
}

function validate(){
	var id = document.getElementById("id");
	var title = document.getElementById("title");
	var quantity = document.getElementById("quantity");
	var price = document.getElementById("price");
	if(id.value.length == 0){
		alert("Medicine Id can not be empty");
		this.load();
	}
	else if(title.value.length == 0){
		alert("Title can not be empty");
		this.load();
	}
	else if(quantity.value.length == 0){
		alert("quantity can not be empty");
		this.load();
	}
	else if(price.value.length == 0){
		alert("price can not be empty");
		this.load();
	}
	else{
		document.getElementById("form").submit();
	}
}