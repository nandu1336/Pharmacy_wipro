<jsp:include page="./Homepage.jsp"></jsp:include>    
<%@ page import="java.sql.*" %>

 	<div class="d-flex float-right w-30" style="margin-right:3%;margin-top:15%;margin-bottom:1%">
		<form class="d-inline-flex form-inline">
    		<input class="form-control mr-2 " type="search" id="keyword" placeholder="Search" aria-label="Search">
    		<button class="btn btn-outline-secondary my-2  float-right" onclick="searchItem()" type="submit">Search</button>
	 	</form>
	</div>	
	<div class="card container " style="margin-top:15%;background-color:rgba(0,0,0,0.5);background-opacity:.4;">
	
  <h3 class="text-white">STOCK</h3>         
  <table class="table text-white bg-transparent " >
    <thead>
      <tr>
        <th>Medicine ID</th>
        <th>Title</th>
        <th>Qty</th>
         <th>Unit Price</th>
      </tr>
    </thead>
    <tbody id="myTable">
  
    <% 
    ResultSet set = (ResultSet)request.getAttribute("resultSet");
    if(set  != null){
    	while(set.next()){ %>
    	<tr>
	       <td><%out.print(set.getString(1)); %></td>
	       <td><%out.print(set.getString(2)); %></td>
	       <td><%out.print(set.getString(3)); %></td>
	       <td><%out.print(set.getString(4)); %></td>
      	</tr>
    <%}
    }
    else{
    	System.out.println("ResultSet is empty");
    	} %>
   </tbody>
    
  </table>
</div>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
  $("#keyword").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>
</html>