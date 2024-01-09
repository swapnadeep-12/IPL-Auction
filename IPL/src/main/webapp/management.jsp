<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="special"
	uri="http://www.springframework.org/tags/form"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>Welcome to Management signup</h1>
<body>

	
	
	<special:form action="managementsignup" modelAttribute="management">
		Username:<special:input path="username"/><br><br>
		Password:<special:input path="password"/><br><br>
		<special:button>SignUp</special:button>&nbsp; &nbsp; <special:button type="reset">Cancel</special:button>
	</special:form>
</body>
</html>-->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Management Signup</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Add custom styles -->
<style>
.signup-form {
	max-width: 484px;
	margin: 80px auto; /* Adjust the margin value */
	margin-left: 689px;
	background-color: transparent;
}

.special-form {
	max-width: 421px;
	background: #ffffff;
	padding: 20px;
	border-radius: 8px;
	margin-top: 20px;
	background-color: transparent;
	transform: rotate(-10deg);
	margin-left:
}

.form-group-buttons {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

a {
	text-decoration: none;
	color: white;
}

body {
	background-image:
		url("https://c8.alamy.com/comp/2J0FN0J/west-bangal-india-march-18-2022-ipl-indian-premier-league-logo-on-phone-screen-stock-image-2J0FN0J.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	padding: 20px;
	height: 100vh;
	overflow: hidden;
}

</style>
</head>

<body>

	<div class="container">

		<div class="signup-form">

			<special:form action="managementsignup" modelAttribute="management"
				class="mt-4 special-form">
				<h1 class="text-center mb-4"
					style="font-family: 'Arial', sans-serif; color: #3498db;">Management
					Signup</h1>
				<div class="form-group">
					Name:
					<special:input path="name" class="form-control" />
				</div>
				<div class="form-group">
					Username:
					<special:input path="username" class="form-control" />
				</div>

				<div class="form-group">
					Password:
					<special:input path="password" type="password" class="form-control" />
				</div>
				<div class="form-group">
					Mob:
					<special:input path="mob" class="form-control" />
				</div>
				<div class="form-group">
					Designation:
					<special:select path="designation" class="form-control">
						<special:option value="">Select</special:option>
						<special:option value="Chairman">Chairman</special:option>
						<special:option value="Secretary">Secretary</special:option>
						<special:option value="President">President</special:option>
					</special:select>
				</div>
				<div class="form-group-buttons">
					<special:button class="btn btn-primary">SignUp</special:button>
					<special:button type="reset" class="btn btn-danger">Cancel</special:button>
					<special:button class="btn btn-success">
						<a href="managementlogin.jsp">Already Have an Account</a>
					</special:button>
				</div>
			</special:form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>

