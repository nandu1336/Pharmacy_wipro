/**
 * 
 */

function show_password(){
	var field = document.getElementById("password");
	if(field.type == "password"){
			field.type = "text";
	}
	else if(field.type == "text"){
		field.type = "password";
	}
}
