<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %> 
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add custom styles -->
   <!-- <style>
        /* You can add custom styles here */
        /* For example, to set a specific width for the form */
        .signup-form {
            max-width: 400px;
            margin: 0 auto;
        }
    </style>
</head>-->
<!-- <body>
    <div class="container">
        <h1 style="text-align: center">Welcome to Player Signup Page</h1>
        <div class="signup-form">
            <special:form action="playerupdate" modelAttribute="player" class="mt-4">
            	<div class="form-group">
                    id:<special:input path="id" readonly="true" class="form-control"/>
                </div>
                <div class="form-group">
                    Name:<special:input path="name" class="form-control"/>
                </div>
                <div class="form-group">
                    Username:<special:input path="username" class="form-control"/>
                </div>
                <div class="form-group">
                    Password:<special:input path="password" type="password" class="form-control"/>
                </div>
                <div class="form-group">
                    Price:<special:input path="price" class="form-control"/>
                </div>
                <div class="form-group">
                    Role:<special:select path="role" class="form-control">
                        <special:option value="">Select One</special:option>
                        <special:option value="batsman">Batsman</special:option>
                        <special:option value="bowler">Bowler</special:option>
                        <special:option value="allrounder">Allrounder</special:option>
                        <special:option value="wicket_keeper_batsman">Wicket Keeper Batsman</special:option>
                    </special:select>
                </div>
                <div class="form-group">
                    Country:<special:input path="country" readonly="true" class="form-control"/>
                </div>
                <div class="form-group">
                    Status:<special:input path="status" readonly="true" class="form-control"/>
                </div>
                <div class="form-group">
                    <special:button class="btn btn-primary">Update</special:button>
                    <special:button type="reset" class="btn btn-secondary">Cancel</special:button>
                    <special:button class="btn btn-secondary"><a href="playerlogin.jsp">Already Have an Account</a></special:button>
                </div>
                
            </special:form>
        </div>
    </div>

    <!-- Include Bootstrap JS if needed -->
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
<!-- </body>
</html>-->



<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Player Details</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Include Bootstrap Icons for eye icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        /* Your existing styles */
		*{
			box-sizing: border-box;
			margin: 0%;
			padding: 0%;
		}
        .small-label {
            font-size: 0.8rem;
            color: blanchedalmond;
        }

        .signup-form {
            max-width: 480px;
            margin: 150px auto;
            max-height: 600px; /* Set the maximum height for the form */
            overflow-y: auto; /* Add scrollbar if needed */
            
            border-radius: 15px;
            padding: 20px;
            backdrop-filter: blur(5px);
        }

        /* .special-form {
            background: #ffffff;
            padding: 10px;
            border-radius: 6px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            max-height: 600px;
            overflow-y: auto;
        } */
		.special-form {
            background: none;
            padding: 10px;
            border-radius: 6px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 10px;
        }

        .form-group input,
        .form-group select {
            font-size: 0.8rem;
            padding: 6px;
            margin-bottom: 3px;
        }

        .form-group-buttons .btn {
            font-size: 0.8rem;
            padding: 6px 15px; /* Adjust the padding for wider buttons */
        }

        h1 {
            font-family: 'Arial', sans-serif;
            color: #3498db;
            font-size: 1rem;
            margin-bottom: 8px;
        }
        a{
        	text-decoration: none;
        	color: white;
        }
        .input-group-append button {
            align-self: center;
        }
        .btn{
       	 padding: 0.25rem 0.75rem;
       	     border-left: none;
        }
        .container {
   			 margin-left: 0;
    		padding-left: 50px;
			margin-bottom: 50px;
		}
		 body{
			background-image: url("https://wallpapercave.com/wp/wp6194569.jpg");
			background-repeat: no-repeat;
			background-size: cover;
			margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
		} 
		.btn-outline-secondary {
   		 color: #6c757d;
   		 /* border-color: #6c757d; */
   		 background-color: white;
		}
		*{
    margin: 0%;
    padding: 0%;
	}
	ul{
    float:right;
    list-style-type: none;
    margin-top: 10px;
    margin-right: -138px;
}


ul li{
    display: inline-block;
}
ul li a{
    text-decoration: none;
    color: #ff7600;
    border: 1px solid transparent;
    height:10px;
    margin: 23px;
    font-size: 16px;
}
ul li a:hover{
     
    color: red;
    transition: 0.6s ease;
    text-decoration: none;
   
    height: auto;
    width: auto;
    
}

.main{
    max-width: 1200px;
    margin: auto;
}
    </style>
</head>
<body>
	<nav class="main">
        <ul>
            <li><a href="playerhome">Home</a></li>
            <li><a href="#">about</a></li>
            <li><a href="#">support</a></li>
            <li><a href="logout">Log Out</a></li>
            
        </ul>
        </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="signup-form">
                    <special:form action="playerupdate" modelAttribute="player" class="mt-3 special-form">
                        <h1 class="text-center mb-2">Edit Player</h1>

                        <!-- Row 1 -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="small-label">ID:</label>
                                <special:input path="id" readonly="true" class="form-control"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="small-label">Name:</label>
                                <special:input path="name" class="form-control"/>
                            </div>
                        </div>

                        <!-- Row 2 -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="small-label">Username:</label>
                                <special:input path="username" class="form-control"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="small-label">Password:</label>
                                <div class="input-group">
                                    <special:input path="password" type="password" class="form-control" id="passwordField"/>
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button" onclick="togglePasswordVisibility()">
                                            <i class="fa-solid fa-eye-slash"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Row 3 -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="small-label">Price:</label>
                                <special:input path="price" class="form-control"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="small-label">Role:</label>
                                <special:select path="role" class="form-control">
                                    <special:option value="">Select One</special:option>
                                    <special:option value="batsman">Batsman</special:option>
                                    <special:option value="bowler">Bowler</special:option>
                                    <special:option value="allrounder">Allrounder</special:option>
                                    <special:option value="wicket_keeper_batsman">Wicket Keeper Batsman</special:option>
                                </special:select>
                            </div>
                        </div>

                        <!-- Row 4 -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="small-label">Country:</label>
                                <special:input path="country" readonly="true" class="form-control"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="small-label">Status:</label>
                                <special:input path="status" readonly="true" class="form-control"/>
                            </div>
                        </div>

                        <!-- Button Row -->
                        <div class="form-row form-group-buttons">
                            <div class="form-group col-md-4">
                                <special:button class="btn btn-primary btn-block">Save</special:button>
                            </div>
                            <div class="form-group col-md-4">
                                <special:button type="reset" class="btn btn-danger btn-block">Cancel</special:button>
                            </div>
                            <div class="form-group col-md-4">
                                <special:button class="btn btn-secondary btn-block"><a href="playerlogin.jsp">Existing Account</a></special:button>
                            </div>
                        </div>
                    
                    </special:form>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS if needed -->
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

    <script>
        function togglePasswordVisibility() {
            var passwordField = document.getElementById("passwordField");
            if (passwordField.type === "password") {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }
    </script>
</body>
</html>





