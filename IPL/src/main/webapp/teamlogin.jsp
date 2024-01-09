<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Team Login</title>

    <style>
        body {
            background-image: url("https://wallpapercave.com/wp/wp7104783.jpg");
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

         label{
         	color: mediumvioletred;
         }
         form{
         	 margin: 0px auto;
         	 backdrop-filter: blur(5px);
        background-color: rgba(255, 255, 255, 0.5);
        border-radius: 10px;
        padding: 20px;  
        
         }
        
		.custom-toast {
            position: fixed;
            top: 16px;
            right: 40%;
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
		.toast-body {
			font-family: 'Lobster', cursive; /* Use Lobster font or replace with another preferred font */
        font-style: italic;
		}
    </style>
    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5  blur-container">
        <form action="teamlogin" method="post" class="border rounded p-3 shadow-sm col-md-4 ">
            <h1 class="text-center mb-4" style="font-family: 'Arial', sans-serif; color: mediumvioletred;">Team Login</h1>
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
                <a class="btn btn-primary btn-block" href="signup?role=team">Create account</a>
            </div>
        </form>
    </div>
    <div id="customToast" class="toast custom-toast bg-danger" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
			<div class="toast-header">
                
                <!-- Close button moved to top right -->
                <button type="button" class="close" data-dismiss="toast" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="toast-body">
                ${msg}
            </div>
        </div>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script>    
        $(document).ready(function(){
            $('.toast').toast('show');
        });
    </script>
</body>
</html>

