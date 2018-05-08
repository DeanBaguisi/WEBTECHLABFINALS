<%-- 
    Document   : reserve.jsp
    Created on : 05 8, 18, 4:40:29 PM
    Author     : Vea Edriana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
  <title>Homeseek - Reserve</title>
  <!-- Bootstrap CSS CDN -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Our Custom CSS -->
  <link rel="stylesheet" href="css/style.css"> </head>

<body>
  <div class="wrapper">
    <!-- Sidebar Holder -->
    <nav id="sidebar">
      <div class="sidebar-header text-uppercase">
        <h3>Homeseek</h3>
        <strong>HS</strong>
      </div>
      <ul class="list-unstyled components">
        <li class="active">
          <a href="main.html">
            <i class="glyphicon glyphicon-home"></i> Home </a>
        </li>
        <li>
          <a href="transaction.html">
            <i class="glyphicon glyphicon-transfer"></i> Transaction </a>
        </li>
        <li>
          <a href="notification.html">
            <i class="glyphicon glyphicon-globe"></i> Notification </a>
        </li>
        <li>
          <a href="customer.jsp">
            <i class="glyphicon glyphicon-user"></i> Customer Profile </a>
        </li>
        <li>
          <a href="index.html">
            <i class="glyphicon glyphicon-log-out"></i> Logout </a>
        </li>
      </ul>
    </nav>
    <!-- Page Content Holder -->
    <div id="content">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" id="sidebarCollapse" class="btn btn-primary navbar-btn">
              <i class="glyphicon glyphicon-menu-hamburger"></i>
            </button>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              <li>
                <a href="#">
                  <i class="glyphicon glyphicon-search"></i> Search </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="py-5 bg-light mr-auto">
        <div class="container">
          <div class="row">
            <h1 class="text-center text-uppercase text-info">Mountain Lodge</h1>
            <div class="col-md-4 p-4 mb-3">
              <img class="img-fluid d-block rounded-circle mx-auto" src="images/lodge 1.jpeg" height="200" width="360">
              <img class="img-fluid d-block rounded-circle mx-auto" src="images/lodge 2.jpeg" height="200" width="360">
              <img class="img-fluid d-block rounded-circle mx-auto" src="images/lodge 3.jpeg" height="200" width="360">
              <img class="img-fluid d-block rounded-circle mx-auto" src="images/lodge 4.jpeg" height="200" width="360">
              <img class="img-fluid d-block rounded-circle mx-auto" src="images/lodge 5.jpeg" height="200" width="360">
              <img class="img-fluid d-block rounded-circle mx-auto" src="images/lodge 6.jpeg" height="200" width="360">
              <button class="glyphicon glyphicon-chevron-left" onclick="plusDivs(-1)"></button>
              <button class="glyphicon glyphicon-chevron-right" onclick="plusDivs(+1)"></button>
            </div>
            <div class="col-md-6">
              <p class="text-primary">
                <br>
                <b>Baguio, 1.5 km to Baguio City Center</b>
              </p>
              <p>Location: &nbsp;
                <b>27 Leonard Wood Road, Baguio, Benguet, Philippines</b>
              </p>
              <p class="text-dark">Mountain Lodge and Restaurant features a charming lobby lounge with a fireplace overlooking the scenic forest reserves of the Teacher's Camp. Local tour arrangements, luggage storage, and laundry service are also offered. Wi-Fi access is
                free of charge. </p>
              <p>Price: &nbsp;
                <b></b>
              </p>
              <br> </div>
          </div>
        </div>
      </div>
      <div class="col-md-5">
        <form class="">
          <div class="form-group">
            <label>Number of Nights:</label>
            <input type="number" class="form-control form-control-sm" placeholder="Enter number of nights" required="required" min="1">
            <small class="form-text text-muted"></small>
          </div>
          <div class="form-group">
            <label>Start:</label>
            <input type="date" class="form-control" required="required"> </div>
          <div class="form-group">
            <label>End:</label>
            <input type="date" class="form-control"> </div>
          <div class="form-group">
            <label>Number of Tenants: </label>
            <input type="number" class="form-control" placeholder="Enter number of tenats" min="1"> </div>
          <div class="form-group">
            <label>Price:</label>
            <input type="password" class="form-control" disabled=""> </div>
          <a href="" class="btn btn-primary" type="submit">Reserve</a>
        </form>
      </div>
    </div>
        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Js CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
          $(document).ready(function () {
                       $('#sidebarCollapse').on('click', function () {
                           $('#sidebar').toggleClass('active');
                       });
                   });
        </script>
      </div>
    </div>
  </div>
</div>
</body>

</html>