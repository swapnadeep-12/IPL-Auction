<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style>
	/* .container{
		margin-top: 100px;
	} */
	body {

      background-image: url("https://resources.pulse.icc-cricket.com/photo-resources/2019/06/02/00f94ee7-3430-457d-863a-7c316368df15/2.jpeg?width=2000&height=1125");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0;
      height: 100vh;
      overflow: hidden;
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
            <li><a href="teamhome">Home</a></li>
            <li><a href="#">about</a></li>
            <li><a href="#">support</a></li>
            <li><a href="logout">Log Out</a></li>
            
        </ul>
        </nav>
	<div class="container">
	
	<table class="table table-bordered">
		<thead class="thead-dark">
			 <tr>
                <th>Name</th>
                <th>Role</th>
                <th>Price</th>
                <th>Country</th>
                <th>Buy Players</th>
                
            </tr>
		</thead>
		<tbody>
			<special:forEach var="players" items="${players}">
				<tr class="table-info">
					<td>${players.getName()}</td>
                    <td>${players.getRole()}</td>
                    <td>${players.getPrice()}Cr</td>
                    <td>${players.getCountry()}</td>
                    <td><a href="buyplayer?id=${players.getId()}" class="btn btn-primary">BUY</a></td>
                   
				</tr>
			</special:forEach>
		</tbody>
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