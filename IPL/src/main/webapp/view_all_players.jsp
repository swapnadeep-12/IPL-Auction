<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<title>All Available players</title>
<style>
	body {

      background-image: url("https://resources.pulse.icc-cricket.com/photo-resources/2019/05/31/72f16edb-2162-4a77-a6a7-39870bdae9ef/IMG20190530121613-01.jpeg?width=2000&height=1125");
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
    td{
    	font-family: 'Lobster', cursive; /* Use Lobster font or replace with another preferred font */
        font-style: italic;
       
       
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
	<div class="container">
	<table class="table table-bordered">
		<thead class="thead-dark">
			 <tr>
                <th>Player Name</th>
                <th>Base price</th>
                <th>Country</th>
                <th>Role</th>
                <th>Status</th>
                <th>Change_Status</th>
            </tr>
		</thead>
		<tbody>
			<special:forEach var="players" items="${players}">
				<tr class="table-info">
					<td>${players.getName()}</td>
                    <td>${players.getPrice()}</td>
                    <td>${players.getCountry()}</td>
                    <td>${players.getRole()}</td>
                    <td>${players.getStatus()}</td>
                    
                    <td><a href="changestatusforplayer?id=${players.getId()}" class="btn btn-success">Change status</a></td>
                    
                   
				</tr>
			</special:forEach>
		</tbody>
	</table>
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