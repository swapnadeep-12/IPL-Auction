<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>Welcome to player login</h1>
<h1>${msg}</h1>
<body>

	<form action="playerlogin">
		UserName:<input type="text" name=username placeholder="enter your username"><br><br>
		Password:<input type="password" name="password" placeholder="enter your Password"><br><br>
		<button>Login</button>  <button type="reset">Cancel</button>
		
	</form>
</body>
</html>-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Login</title>
    <style>
    	body {
            background-image: url("https://assetsblog.bsbportal.com/wp-content/uploads/2022/04/IPL-and-more-scaled.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            padding: 20px;
            height: 100vh;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center; 
        }
       form{
       	 backdrop-filter: blur(5px);
        background-color: rgba(255, 255, 255, 0.5);
        border-radius: 10px;
        padding: 20px; 
       }
    </style>

    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5 form-container">
        
	  <div >
        <form action="playerlogin" class="border rounded p-3 shadow-sm col-md-4 sp">
        	<h1 class="text-center mb-4" style="font-family: 'Arial', sans-serif; color: #3498db;">Player Login</h1>
            <div class="form-group">
                <label for="username">UserName:</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Enter your password" required>
            </div>
            <div class="form-row justify-content-center">
                <button type="submit" class="btn btn-primary btn-block">Login</button>
                <button type="reset" class="btn btn-secondary btn-block">Cancel</button>
                 <a class="btn btn-primary btn-block" href="signup?role=Player">create account</a>
            </div>
        </form>
        
       
	</div>
       
    </div>

    <!-- Optional: Add Bootstrap JS and Popper.js -->
    <!-- Note: jQuery is required for Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <script>
    $(document).ready(function(){
        var msg = '<%= request.getAttribute("msg") %>';
       if (msg !== 'null' && msg.trim() !== '') {
            alert(msg);
        }
    });
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
