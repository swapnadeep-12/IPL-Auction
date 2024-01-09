<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add custom styles -->
    <style>
        /* You can add custom styles here */
        /* For example, to set a specific width for the form */
        .signup-form {
            max-width: 484px;
            margin: 0 auto;
        }
        .special-form {
            max-width: 421px;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
			box-shadow: 15px 15px 10px darkgrey;
            margin-top: 20px;
        }
        .form-group-buttons {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        a{
        	text-decoration: none;
        	color: white;
        }
        body{
			background-image: url("https://c8.alamy.com/comp/2J0FMXM/west-bangal-india-march-18-2022-ipl-indian-premier-league-logo-on-phone-screen-stock-image-2J0FMXM.jpg");
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
		
    </style>
</head>

<body>
	<div class="container">
	
	<div class="signup-form">
	<special:form action="teamsignup" modelAttribute="team" class="mt-4 special-form">
		<h1 class="text-center mb-4" style="font-family: 'Arial', sans-serif; color: #3498db;">Team Signup</h1>
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
                    Wallet:<special:input path="wallet" class="form-control"/>
                </div>
                 <div class="form-group-buttons">
                    <special:button class="btn btn-primary">SignUp</special:button>
                    <special:button type="reset" class="btn btn-danger">Cancel</special:button>
                    <special:button class="btn btn-success"><a href="teamlogin.jsp">Already Have an Account</a></special:button>
                </div>
	</special:form>
	</div>
	</div>
</body>
</html>