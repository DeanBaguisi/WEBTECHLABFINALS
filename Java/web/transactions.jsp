<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Homeseek</title>
  <!-- Bootstrap CSS CDN -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Our Custom CSS -->
  <link rel="stylesheet" href="css/style.css"> </head>

<body>
    
    <sql:setDataSource driver="com.mysql.jdbc.Driver"
            user="root" password=""
            url="jdbc:mysql://localhost:3306/transient"/>

             <sql:query var="reserve">
                
                Select * from house natural join reservation ;
             </sql:query>
              
             <sql:query var="rental">
                
                Select * from house natural join reservation ;
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
            <a href="customer.jsp">
            <i class="glyphicon glyphicon-user"></i> Customer Profile </a>    
        </li>
        <li> 
          <a href=notification.html>
            <i class="glyphicon glyphicon-globe"></i> Notification </a>
        </li>
        <li>
          <a href="logoutprocess.jsp    ">
            <i class="glyphicon glyphicon-log-out"></i> Logout </a>
        </li>
      </ul>
    </nav>
    <!-- Page Content Holder -->
    <div id="content">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
              <i class="glyphicon glyphicon-align-left"></i>
              <span>Toggle Sidebar</span>
            </button>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              
            </ul>
          </div>
        </div>
      </nav>
      <div class="py-5 bg-light mr-auto w-25">
        <div class="container">
          <div class="row">
            <h1 class="text-center">Transaction</h1>
          </div>
        </div>
        <div class="container">
             <h2>RESERVATIONS</h2>
          <div class="row">
              
                <div class="col-lg-12">
                    <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">House Name</th>
                            <th scope="col">Reservation Fee</th>
                            <th scope="col">Status</th>
                            <th scope="col">Start Date</th>
                            <th scope="col">End Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${reserve.rows}">
                            <tr>
                                <td>${row.house_name}</td>
                                <td>${row.current_reservation_fee}</td>
                                <td>${row.reservation_status}</td>
                                <td>${row.reservation_startdate}</td>
                                <td>${row.reservation_endate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                </div>                    
            
            
            
          </div>
        </div>
          
          
       <div class="container">
            <h2>RENTALS</h2>
          <div class="row">
              
                <div class="col-lg-12">
                    <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">House Name</th>
                            <th scope="col">Rental Fee</th>
                            <th scope="col">Status</th>
                            <th scope="col">Start Date</th>
                            <th scope="col">End Date</th>
                            <th scope="col">Remarks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${rental.rows}">
                            <tr>
                                <td>${row.house_name}</td>
                                <td>${row.current_rental_fee}</td>
                                <td>${row.rental_status}</td>
                                <td>${row.rental_startdate}</td>
                                <td>${row.rental_enddate}</td>
                            </tr>
                        </c:forEach>
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
</body>

</html>