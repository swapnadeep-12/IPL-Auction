<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>${msg}</h1>
<body>

<h1>Welcome to Management login</h1>
	<form action="managementlogin">
		Username:<input type="text" name="username" placeholder="Enter your username">
		Password:<input type="text" name="password" placeholder="Enter your Password">
		<button>Submit</button>  <button type="reset">Cancel</button>
	</form>
</body>
</html>-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Login</title>
	<style >
		 body {
            background-image: url("https://c8.alamy.com/comp/2J0G02G/west-bangal-india-march-18-2022-tata-ipl-logo-on-phone-screen-stock-image-2J0G02G.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            padding: 20px;
            height: 100vh;
            overflow: hidden;
        }
        label{
        	color: #3498db;
        }
        .mlogin
        {
        	backdrop-filter:blur(5px);
        	margin: 0 auto;
        }
	</style>
    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        

        <form action="managementlogin" class="border  p-3  col-md-4 mlogin">
        	<h1 class="text-center mb-1" style="font-family: 'Arial', sans-serif; color: #3498db;">Management Login</h1>
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
                <a class="btn btn-primary btn-block" href="signup?role=Management">create account</a>
            </div>
        </form>

        
    </div>
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


