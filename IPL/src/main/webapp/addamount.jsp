<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	
	
	<form action="addamount">
	
		ID:<input name="id" type="text" value="" readonly="readonly">
		Add Amount:<input type="text" name="amount" placeholder="enter amount">
		
		<button>Add amount</button> <button type="reset">Cancel</button>
</form>
</body>
</html>-->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Add Amount Form</title>
  <style>
  body {
	background-image:
		url("https://images.unsplash.com/photo-1611187401884-254eb9d99ed6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D");
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	height: 100vh;
	overflow: hidden;
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
	color: #3498db;
	border: 1px solid transparent;
	height: 10px;
	margin: 23px;
	font-size: 16px;
}

ul li a:hover {
	color: blue;
	transition: 0.6s ease;
	text-decoration: none;
	height: auto;
	width: auto;
}

.main {
	max-width: 1200px;
	margin: auto;
}
form{
	width: 350px;
	float: right;
	margin: 170px;
	 backdrop-filter: blur(5px);
}
	
	
	h1 {
            font-family: 'Arial', sans-serif;
            color: #3498db;
            font-size: 2rem;
            margin-bottom: 8px;
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
<%int id=Integer.parseInt(request.getParameter("id")); %>
<div class="container">
  <form action="addamount" class="border p-4">
    <h1 class="mb-4" style="text-align: center;">ADD AMOUNT</h1>

    <div class="form-group">
      <label for="id">ID:</label>
      <input type="text" class="form-control" id="id" name="id" value="<%=id%>" readonly>
    </div>

    <div class="form-group">
      <label for="amount">Add Amount:</label>
      <input type="text" class="form-control" id="amount" name="amount" placeholder="Enter amount">
    </div>

     <div class="form-group row">
      <div class="col">
        <button type="submit" class="btn btn-primary btn-block">Add Amount</button>
      </div>
      <div class="col">
        <button type="reset" class="btn btn-secondary btn-block">Cancel</button>
      </div>
    </div>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
