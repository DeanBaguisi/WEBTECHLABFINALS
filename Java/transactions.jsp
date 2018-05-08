<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Homeseek - Transaction</title>
  <!-- Bootstrap CSS CDN -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Our Custom CSS -->
  <link rel="stylesheet" href="css/style.css"> </head>

<body>
    
    <sql:setDataSource driver="com.mysql.jdbc.Driver"
            user="root" password=""
            url="jdbc:mysql://localhost:3306/products"/>

             <sql:query var="result">
                
                Select * from products;
             </sql:query>
  <div class="wrapper">
    <!-- Sidebar Holder -->
    <nav id="sidebar">
      <div class="sidebar-header text-uppercase">
        <h3>Homeseek</h3>
        <strong>HS</strong>
      </div>
      <ul class="list-unstyled components">
        <li class="active">
          <a href="index.jsp">
            <i class="glyphicon glyphicon-home"></i> Home </a>
        </li>
        <li>
          <a href="transactions.jsp">
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
      <div class="py-5 bg-light mr-auto w-25">
        <div class="container">
          <div class="row">
            <h1 class="text-center text-uppercase text-primary">Transaction</h1>
          </div>
        </div>
      <div class="py-5 bg-light mr-auto w-25">
        <div class="container">
          <div class="row">
            <h1 class="text-center text-uppercase text-primary">Transaction</h1>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <c:foreach var="row" items="${result.rows}"> </c:foreach>
              <table class="table">
                <thead>
                  <tr>
                    <th>House Name</th>
                    <th>Date</th>
                    <th>Remarks</th>
                    <th>Amount</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>${row.prodid}</td>
                    <td>${row.description}</td>
                    <td>${row.price}</td>
                    <td>
                      <img src="${row.price}">
                    </td>
                    <td>
                      <img src="${row.price}">
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
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
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 10px;right:10px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:250px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;
    <img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16">
  </pingendo>
</body>

</html>