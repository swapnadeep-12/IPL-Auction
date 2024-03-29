<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>Insert title here</title>
<style>
body {
	background-image:
		url("https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Lords-Cricket-Ground-Pavilion-06-08-2017.jpg/800px-Lords-Cricket-Ground-Pavilion-06-08-2017.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	height: 100vh;
	overflow: hidden;
}
/* Custom styles for toast */
.custom-toast {
	position: fixed;
	top: 16px;
	right: 616px;
	min-width: 300px;
	max-width: 400px;
	border-radius: 20px;
}

.toast .close {
	position: absolute;
	top: 0;
	right: 0;
	padding: 5px 10px;
}

* {
	margin: 0%;
	padding: 0%;
}

ul {
	float: right;
	list-style-type: none;
	margin-top: 10px;
	margin-right: -138px;
	margin-bottom: 70px;
}

ul li {
	display: inline-block;
}

ul li a {
	text-decoration: none;
	color: #ff7600;
	border: 1px solid transparent;
	height: 10px;
	margin: 23px;
	font-size: 16px;
}

ul li a:hover {
	color: red;
	transition: 0.6s ease;
	text-decoration: none;
	height: auto;
	width: auto;
}

.main {
	max-width: 1200px;
	margin: auto;
}

td {
	font-family: 'Lobster', cursive;
	/* Use Lobster font or replace with another preferred font */
	font-style: italic;
}
/*  .table{
    	 backdrop-filter: blur(5px);
    } */
.custom-form {
	width: 240px;
	margin-right: 214px;
	float: right;
	margin-top: -29px;
}
</style>
</head>
<body>

	<nav class="main">
		<ul>
			<li><a href="managementhome.jsp">Home</a></li>
			<li><a href="#">about</a></li>
			<li><a href="#">support</a></li>
			<li><a href="logout">Log Out</a></li>

		</ul>

	</nav>
	<div id="customToast" class="toast custom-toast bg-danger" role="alert"
		aria-live="assertive" aria-atomic="true" data-delay="5000">
		<div class="toast-header">

			<!-- Close button moved to top right -->
			<button type="button" class="close" data-dismiss="toast"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="toast-body">${msg}</div>
	</div>
	<div class="container">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Team Name</th>
					<th>Wallet</th>
					<th>Status</th>
					<th>Player</th>
					<th>Change Status</th>
					<th>Change Amount</th>
				</tr>
			</thead>
			<tbody>
				<special:forEach var="team" items="${team}">
					<tr class="table-info">
						<td>${team.getName()}</td>
						<td>${team.getWallet()}Cr</td>
						<special:choose>
							<special:when test="${team.isStatus()==true}">
								<td>Active</td>
							</special:when>
							<special:otherwise>
								<td>Inactive</td>
							</special:otherwise>
						</special:choose>

						<td><a href="viewplayers?id=${team.getTid()}"
							class="btn btn-primary">View Players</a></td>
						<special:choose>
							<special:when test="${team.isStatus()==true}">
								<td><a href="changestatus?id=${team.getTid()}"
									class="btn btn-danger">Change status</a></td>
							</special:when>
							<special:otherwise>
								<td><a href="changestatus?id=${team.getTid()}"
									class="btn btn-success">Change status</a></td>
							</special:otherwise>
						</special:choose>
						
							 <td><a href="addamount.jsp?id=${team.getTid()}" class="btn btn-secondary">Add Amount</a>
							 	<%-- <div class="b" style="display: none;">
							 	<form action="addamount">
	
								ID:<input name="id" type="text" value="${team.getTid()}" readonly="readonly">
								Add Amount:<input type="text" name="amount" placeholder="enter amount">
			
								<button>Add amount</button> <button type="reset">Cancel</button>
								</form></div> --%>
							 </td> 
						
						
						<%-- <td><button id="buto" class="btn btn-secondary"
								value="${team.getTid()}">Add Amount</button></td> --%>

					</tr>
				</special:forEach>
			</tbody>
		</table>
	</div>


		
		 <form action="addamount" class=" p-4 custom-form" style="visibility: hidden;">
    
    
    <div class="form-group" >
     <!--  <label for="amount">Add Amount:</label> -->
     <input name="id" type="text" value="1" class="form-control" readonly="readonly">
     </div>
     
     <div class="form-group" >
      <input type="text" class="form-control" id="amount" name="amount" placeholder="Enter amount">
    </div>
    
    <div class="d-flex justify-content-between">
      <button type="submit" class="btn btn-primary">Add Amount</button>
      <button type="reset" class="btn btn-secondary">Cancel</button>
    </div>
  </form> 
	
	
	<!-- Include Bootstrap JS and Popper.js -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<script>
    
        $(document).ready(function(){
            $('.toast').toast('show');
        });
        /* $('.a').click(function(){
        	 $(this).closest('td').find('.a').hide();
        	 $(this).closest('td').find('.b').show();
        }) */
    </script>
</body>
</html>