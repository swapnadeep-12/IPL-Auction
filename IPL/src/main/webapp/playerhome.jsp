<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Player Home Page</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background-color: #f8f9fa; /* Set a background color */
        }
        .custom-toast {
            position: fixed;
            top: 16px;
            left: 560px;
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
        .player-details span {
        font-weight: bold; /* Add bold styling if desired */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add a subtle text shadow */
    }

        .container-fluid {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 20px;
        }

        .table {
            width: 30%;
             margin-bottom: 80px;
            margin-left: 844px; /* Adjust the margin for left alignment */
             border-collapse: collapse;
             box-shadow: 10px 10px 15px darkred;
        }
        .td {
            padding: 15px; /* Adjust padding for cells */
        }
		.btn-container {
        display: flex;
        justify-content: space-between;
    }

    .btn-div1,
    .btn-div2 {
        flex: 1; /* Make the buttons take up equal width within the container */
    }

    .btn {
        width: 100%;
        padding: 15px;
    }
     body{
			background-image: url("https://wallpapercave.com/wp/wp3995858.jpg");
			background-repeat: no-repeat;
			background-size: cover;
			margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
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
    <div class="container-fluid">
        <table class="table table-bordered">
            <tr class="table-danger">
    			<td colspan="2" style="text-align: center;" class="td player-details">
        			<span style="font-size: 1.5em; font-family: 'Arial', sans-serif; color: #3498db;">Player Details</span>
    			</td>
			</tr>
            <tr class="table-primary">
                <td class="td">Name:</td>
                <td class="td">${player.getName()}</td>
            </tr>
            <tr class="table-success">
                <td class="td">Username:</td>
                <td class="td">${player.getUsername()}</td>
            </tr>
            <tr class="table-secondary">
                <td class="td">Team:</td>
                <td class="td">${player.getTeam().getName()}</td>
            </tr>
            <tr class="table-success">
                <td class="td">Role:</td>
                <td class="td">${player.getRole()}</td>
            </tr>
            <tr class="table-info">
                <td class="td">Country:</td>
                <td class="td">${player.getCountry()}</td>
            </tr>
            <tr class="table-warning">
                <td class="td">Price:</td>
                <td class="td">${player.getPrice()}</td>
            </tr>
            <tr class="table-info">
                <td class="td">Status:</td>
                <td class="td">${player.getStatus()}</td>
            </tr>
            <!-- Update the last <td> element with class "but" -->
<tr class="but">
    <td colspan="2" class="td" style="padding: 0;">
        <div class="btn-container">
            <div class="btn-div1">
                <a href="playerlogin.jsp"><button class="btn btn-primary">Back</button></a>
            </div>
            <div class="btn-div2">
                <a href="editplayer"><button class="btn btn-success">EDIT</button></a>
            </div>
        </div>
    </td>
</tr>

        </table>
         
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
    <script>
    
        $(document).ready(function(){
            $('.toast').toast('show');
        });
    </script>
</body>
</html>
