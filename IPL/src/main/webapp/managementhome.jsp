<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>Welcome to Management home</h1>
<h1>${msg}</h1>
<body>
	<a href="ViewAllTeams"><button>View Teams</button></a>
	<a href="ViewAllPlayer"><button>View Players</button></a>
</body>
</html>-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Management Home</title>
  <style>
    body {

      background-image: url("https://i.pinimg.com/originals/81/dd/d3/81ddd367e580ac8909ea032cca1a50ca.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0;
      height: 100vh;
      overflow: hidden;
    }

    .custom-toast {
      position: fixed;
      bottom: 16px;
      right: 16px;
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

    .card {
      margin: 0px 20px;
      text-align: center;
      border: 1px solid #ddd;
      border-radius: 10px;
      width: 300px;
      box-shadow: 10px 10px 15px darkblue;
    }

    .card img {

      width: 100%;
      border-radius: 10px 10px 0 0;
      height: 230px;
    }

    .card-body {
      padding: 10px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .btn-primary {
      width: 100%;
      box-shadow: 8px 8px 5px darkgrey;
      font-size: 18px;
      font-family: 'Lobster', cursive;
      font-style: italic;
    }

    a {
      text-decoration: none;
      padding: 10px;
    }

    .container {
      display: flex;
      margin-top: 300px;
    }

    .container-fluid {
      width: 400px;
      margin-top: 5px;
    }
    .table {
      height: 268px;
      box-shadow: 10px 10px 15px darkblue;

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
      margin-bottom: 150px;
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

    td {
      font-family: 'Lobster', cursive;
      font-style: italic;
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
  <div class="container">
    <div class="container-fluid">
      <table class="table table-bordered first">
        <tr class="table-danger">
          <td colspan="2" style="text-align: center;" class="td player-details">
            <span style="font-size: 1.5em; font-family: 'Arial', sans-serif; color: #3498db;">Management Details</span>
          </td>
        </tr>
        <tr class="table-primary">
          <td class="td">Name:</td>
          <td class="td">${management.getName()}</td>
        </tr>
        <tr class="table-secondary">
          <td class="td">Mobile:</td>
          <td class="td">${management.getMob()}</td>
        </tr>
        <tr class="table-primary">
          <td class="td">Designation:</td>
          <td class="td">${management.getDesignation()}</td>
        </tr>

      </table>
    </div>

    <div class="card">
      <img src="https://t4.ftcdn.net/jpg/04/26/13/71/360_F_426137121_u2zwsANOFCMcAZyAKAA9jJu1GCWxWaLG.jpg"
        class="card-img-top" alt="Image 1">
      <div class="card-body">
        <a href="ViewAllTeams" class="btn btn-primary">View Teams</a>
      </div>
    </div>

    <div class="card">
      <img
        src="https://img1.cgtrader.com/items/4504445/5a3f2ab57d/large/cricket-player-avatar-3d-icon-3d-model-5a3f2ab57d.jpg"
        class="card-img-top" alt="Image 2">
      <div class="card-body">
        <a href="ViewAllPlayer" class="btn btn-primary">View Players</a>
      </div>
    </div>
  </div>

  <div id="customToast" class="toast custom-toast bg-success" role="alert" aria-live="assertive" aria-atomic="true"
    data-delay="5000">
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

    $(document).ready(function () {
      $('.toast').toast('show');
    });
  </script>

</body>

</html>