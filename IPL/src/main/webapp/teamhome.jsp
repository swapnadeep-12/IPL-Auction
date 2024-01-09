<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<title>Team home</title>
	<style>
		body{
			background-image: url("https://res.cloudinary.com/people-matters/image/upload/q_auto,f_auto/v1665723752/1665723750.jpg");
			background-repeat: no-repeat;
			background-size: cover;
			margin: 0;
            padding: 0;
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
        .player-details span {
        font-weight: bold; /* Add bold styling if desired */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add a subtle text shadow */
    }

        .container-fluid {
            height: 100%;
            display: flex;
            flex-direction: row;
           	margin: 2% auto;
            padding: 50px;
        }
		
        .first {
            width: 30%;
            height:247px;
             margin-bottom: 80px;
            margin-left: 100px; /* Adjust the margin for left alignment */
             border-collapse: collapse;
             box-shadow: 10px 10px 15px red;
             
        }
       
        .second {
        	 width: 33%;
             margin-bottom: 40px;
              margin-left: 300px; /* Adjust the margin for left alignment */
              border-collapse: collapse; 
            /*  box-shadow: 10px 0px 15px red; */
            height:70%;
             max-height: 550px;
             
        }
        .td {
            padding: 15px;
        } 
        .btn {
        	 width: 100%;
        	 height: 100%;
        	 flex:1;
			border-radius: 5px;
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
            <li><a href="#">Home</a></li>
            <li><a href="#">about</a></li>
            <li><a href="#">support</a></li>
            <li><a href="logout">Log Out</a></li>
            
        </ul>
        
    </nav>
			<%-- <%List<Player> list=(List<Player>)request.getAttribute(players); %> --%>
		<div class="container-fluid">
        <table class="table table-bordered first">
            <tr class="table-danger">
    			<td colspan="2" style="text-align: center;" class="td player-details">
        			<span style="font-size: 1.5em; font-family: 'Arial', sans-serif; color: #3498db;">Team Details</span>
    			</td>
			</tr>
            <tr class="table-primary">
                <td class="td">Name:</td>
                <td class="td">${team.getName()}</td>
            </tr>
            <tr class="table-success">
                <td class="td">Status:</td>
                
                	<s:choose>
                		<s:when test="${team.isStatus()==true}"><td class="td">Active</td></s:when>
                		<s:otherwise><td class="td">Inactive</td></s:otherwise>
                	</s:choose>
                
            </tr>
            <tr class="table-secondary">
                <td class="td">Wallet:</td>
                <td class="td">${team.getWallet()}Cr</td>
            </tr>
            </table>
            	
            	<%-- <s:choose>
            		<s:when test="${player==null}">
            			<table class="table  second" style="max-height: 200px;">
            	 	<tr class="table-danger">
    			<td colspan="4" style="text-align: center;" class="td player-details">
        			<span style="font-size: 1.5em; font-family: 'Arial', sans-serif; color: #3498db;">Existing Players</span>
    			</td>
				</tr>
				<tr class="table-info">
					<td colspan="4" style=" text-align: center;">
					<b style="font-size: 18px;font-family: 'Lobster', cursive; font-style: italic;">
         				There is no player in this Team</b>
         				</td>
					
				</tr>
				<tr>
            			<td colspan="4" class="td but" style="padding: 0;" rowspan="2">
            				<div style="display: flex;">
            				<a href="viewavailableplayers" class="btn btn-primary">Buy Players</a>
            				<a href="teamlogin.jsp" class="btn btn-secondary">back</a>
            				</div>
            			</td>
            		</tr>
				</table>
            		</s:when>
            		<s:otherwise> --%>
            			<table class="table  second">
            	 	<tr class="table-danger">
    			<td colspan="5" style="text-align: center;" class="td player-details">
        			<span style="font-size: 1.5em; font-family: 'Arial', sans-serif; color: #3498db;">Existing Players</span>
    			</td>
				</tr>
				<tr class="table-info">
					<td><b>Name</b></td>
					<td><b>Role</b></td>
					<td><b>Price</b></td>
					<td><b>Country</b></td>
					<td><b>Release Player</b></td>
				</tr>
				
            	 	<s:forEach var="player" items="${player}">
            	 	  <tr class="table-success">
            			<td>${player.getName()}</td>
            			<td>${player.getRole()}</td>
            			<td>${player.getPrice()}Cr</td>
            			<td>${player.getCountry()}</td>
            			<td><a href="releaseplayer?id=${player.getId()}" class="btn btn-primary">Release</a></td>
            		  </tr>
            		</s:forEach>
            		<tr>
            			<td colspan="5" class="td but" style="padding: 0;" rowspan="2">
            				<div style="display: flex;">
            				<a href="viewavailableplayers" class="btn btn-primary">Buy Players</a>
            				<a href="teamlogin.jsp" class="btn btn-secondary">back</a>
            				</div>
            			</td>
            		</tr>
            	 </table>
            		<%-- </s:otherwise>
            	</s:choose> --%>
            	 
            	</div>
            
	
	
	
			<s:choose>
				<s:when test="${msg.equals(null)}"><div></div></s:when>
				<s:otherwise>
					<div id="customToast" class="toast custom-toast bg-success" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
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
				</s:otherwise>
			</s:choose>
			
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