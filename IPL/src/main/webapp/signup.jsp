<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        button {
            margin-top: 10px;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1 class="mt-4" style="text-align: center">Welcome to Signup Page</h1>
        <form action="signup">

            <div class="mb-3">
                <h2>Choose your Role</h2>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="Management" name="role" id="management">
                    <label class="form-check-label" for="management">Management</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="Team" name="role" id="team">
                    <label class="form-check-label" for="team">Team</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="Player" name="role" id="player">
                    <label class="form-check-label" for="player">Player</label>
                </div>
            </div>

            <button type="submit" class="btn btn-success">Submit</button>&nbsp;
            <button type="button" class="btn btn-secondary">Cancel</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html> -->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
       /*  background-image: url("https://cdn.cbeditz.com/cbeditz/large/11649407194vigjsmjcdafarl9ru1wxm91gh7bwnnd229g4ajmnhgl6phdquign3wiou8cmnjhnoryugqnif71bmifshfnbuucv06k1zrexhcot.jpg"); */
         background-image: url("https://res.cloudinary.com/people-matters/image/upload/q_auto,f_auto/v1665723752/1665723750.jpg");   
        background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            padding: 20px;
            height: 100vh;
            overflow: hidden;
    }

    .container {
        margin-top: 50px;
      max-width: 1300px; /* Adjust the maximum width of the container */
    }

    .card {
      margin-top: 20px;
      width: 100%; /* Increase card width */
      box-shadow: 10px 10px 15px darkred;
    }

    .card img {
      width: 100%;
      height: 250px; /* Adjust the height of the image */
      object-fit: cover;
      
    }
   .btn{
    font-size: 18px;
        font-family: 'Lobster', cursive; /* Use Lobster font or replace with another preferred font */
        font-style: italic;
        box-shadow: 8px 8px 5px darkgrey;
   }

    .card .btn {
      width: 100%; /* Make button full width */
    }
    .card-body{
        padding: .50rem;
    }
    .form-div{
        height: 303px;
    }
    .mb-3{
        height: 250px;
        margin-bottom: 0.1rem!important;
        display: flex;
      flex-direction: column;
     background-image: url(https://thumbs.dreamstime.com/b/assam-india-august-ipl-logo-phone-screen-stock-image-194752544.jpg);
     background-repeat: no-repeat;
            background-size: cover;
    }
    .form-check{
        margin-bottom: 10px;
        margin-left: 40px;
    }
    .form-div button{
        width: 136px;
        height: 35px;
        border-radius: 0.25rem;
        box-shadow: 8px 8px 5px darkgrey;
    }
    .form-check-label{
        font-size: 18px;
        font-family: 'Lobster', cursive; /* Use Lobster font or replace with another preferred font */
        font-style: italic;
        text-shadow: 1px 1px grey;
    }
    .form-check-input {
     width:18px; /* Increase the radio button size */
     height: 18px;
     margin-right: 10px;
    }
    p{
        font-size: 18px;
        font-family: 'Lobster', cursive; /* Use Lobster font or replace with another preferred font */
        font-style: italic;
        text-shadow: 1px 1px grey;
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
  <title>Home Page</title>
</head>
<body>
	 <nav class="main">
    
       
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">about</a></li>
            <li><a href="#">support</a></li>
            <li><a href="#">Log Out</a></li>
            
        </ul>
        
    </nav>
    
<div class="container">
  <div class="row">
    <div class="col-md-3">
      <div class="card">
        <img src="https://www.shutterstock.com/shutterstock/photos/1952528557/display_1500/stock-vector-cricket-team-logo-creative-cricket-icon-logo-vector-1952528557.jpg" class="card-img-top" alt="Card Image">
        <div class="card-body text-center">
          <a href="managementlogin.jsp" class="btn btn-primary">Management Login</a>
        </div>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card">
        <img src="https://en.pimg.jp/083/414/991/1/83414991.jpg" class="card-img-top" alt="Card Image">
        <div class="card-body text-center">
            <a href="playerlogin.jsp" class="btn btn-primary">Player Login</a>
        </div>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card">
        <img src="https://www.shutterstock.com/image-vector/cricket-sport-team-club-logo-600nw-2077079890.jpg" class="card-img-top" alt="Card Image">
        <div class="card-body text-center">
            <a href="teamlogin.jsp" class="btn btn-primary">Team Login</a>
        </div>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card">
        <div class="form-div">
        <form action="signup">
          <div class="mb-3">
              <div style="text-align: center; margin-bottom: 25px; margin-top: 5px;"><p>Sign Up</p></div> 
              <div class="form-check">
                  <input class="form-check-input" type="radio" value="Management" name="role" id="management">
                  <label class="form-check-label" for="management">Management</label>
              </div>
              <div class="form-check">
                  <input class="form-check-input" type="radio" value="Team" name="role" id="team">
                  <label class="form-check-label" for="team">Team</label>
              </div>
              <div class="form-check">
                  <input class="form-check-input" type="radio" value="Player" name="role" id="player">
                  <label class="form-check-label" for="player">Player</label>
              </div>
          </div>
          <div class="card-body">
          <button type="submit" class="btn-success">Submit</button>
          <button type="button" class="btn-secondary">Cancel</button>
        </div>
      </form>
    </div>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
