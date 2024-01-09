<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %> 
<!--<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>Welcome to player signuppage</h1>
<body>

	
	 <special:form action="playersignup" modelAttribute="player">
	 	Name:<special:input path="name"/><br><br>
		Username:<special:input path="username"/><br><br>
		Password:<special:input path="password"/><br><br>
		Role:<special:select path="role">
			<special:option value="">Select</special:option>
			<special:option value="batsman">BatsMan</special:option>
			<special:option value="bowler">Bowler</special:option>
			<special:option value="allrounder">AllRounder</special:option>
			<special:option value="wicket-Keeper">Wicket-Keeper</special:option>
		</special:select><br><br>
		Country:<special:input path="country"/><br><br>
		Base-Price:<special:input path="price"/><br><br>
		<special:button>SignUp</special:button>&nbsp; &nbsp; <special:button type="reset">Cancel</special:button>
	</special:form>
</body>
</html>-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Player Signup</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add custom styles -->
    <style>
        body {
            background-image: url("https://c8.alamy.com/comp/2J0FMX8/west-bangal-india-march-18-2022-ipl-indian-premier-league-logo-on-phone-screen-stock-image-2J0FMX8.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            padding: 20px;
            height: 100vh;
            overflow: hidden;
        }

        .signup-form {
            max-width: 484px;
            margin: 0 auto;
            margin-left: 10px;
        }

        .special-form {
            max-width: 421px;
            background-color:li;
            padding: 20px;
            border-radius: 8px;
            
            margin-top: 20px;
            
        }

        .form-group {
            display: flex;
            flex-direction: column;
            
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
    </style>
</head>
<body>
    <div class="container">
        <div class="signup-form">
            <special:form action="playersignup" modelAttribute="player" class="mt-4 special-form">
                <h1 class="text-center mb-4" style="font-family: 'Arial', sans-serif; color: #3498db;">Player Signup</h1>
                <div class="form-group">
                    <special:label path="name">Name:</special:label>
                    <special:input path="name" class="form-control"/>
                </div>
                <div class="form-group">
                    <special:label path="username">Username:</special:label>
                    <special:input path="username" class="form-control"/>
                </div>
                <div class="form-group">
                    <special:label path="password">Password:</special:label>
                    <special:input path="password" type="password" class="form-control"/>
                </div>
                <div class="form-group">
                    <special:label path="price">Price:</special:label>
                    <special:input path="price" class="form-control"/>
                </div>
                <div class="form-group">
                    <special:label path="role">Role:</special:label>
                    <special:select path="role" class="form-control">
                        <special:option value="">Select One</special:option>
                        <special:option value="batsman">Batsman</special:option>
                        <special:option value="bowler">Bowler</special:option>
                        <special:option value="allrounder">Allrounder</special:option>
                        <special:option value="wicket_keeper_batsman">Wicket Keeper Batsman</special:option>
                    </special:select>
                </div>
                <div class="form-group">
                    <special:label path="country">Country:</special:label>
                    <special:input path="country" class="form-control"/>
                </div>
                <div class="form-group-buttons">
                    <special:button class="btn btn-primary">Signup</special:button>
                    <special:button type="reset" class="btn btn-danger">Cancel</special:button>
                    <special:button class="btn btn-success"><a href="playerlogin.jsp">Already Have an Account</a></special:button>
                </div>
            </special:form>
        </div>
    </div>
</body>
</html>
