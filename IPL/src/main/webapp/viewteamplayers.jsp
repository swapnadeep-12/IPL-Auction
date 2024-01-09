<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">



<style>
		body {

      background-image: url("https://e0.365dm.com/17/06/1600x900/skysports-england-bangladesh-kia-oval_3970888.jpg?20170605104646");
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
    th{
    	font-family: 'Lobster', cursive; /* Use Lobster font or replace with another preferred font */
        font-style: italic;
       
       
    }
     .container{
    
     max-width: 706px; 
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
	<%String msg=(String)request.getAttribute("msg"); 
	if(msg!=null)
	 {%>
	 
	 ${msg}
	 <%} else{ %>
	 	<div class="container">
		<table class="table ">
		<thead class="thead-dark">
			<tr>
	 			<th>Name</th>
	 			<th>Role</th>
	 		</tr>	 		
		</thead>
		<tbody>
	 		<special:forEach var="player" items="${players}">
	 			<tr class="table-info">
	 			<th>${player.getName()}</th>
	 			<th>${player.getRole()}</th>
	 		</tr>
	 			
	 		
	 		</special:forEach>	
	 		</tbody>
	 	</table>
	 </div>
	 <%} %>

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