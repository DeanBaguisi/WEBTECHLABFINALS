<%-- 
    Document   : index
    Created on : 05 4, 18, 8:41:32 AM
    Author     : 
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
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
  <link rel="stylesheet" href="css/style.css"> 
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
     <script src="script/customer.js"></script>
      <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
</head>

<body>
    
     <sql:setDataSource driver="com.mysql.jdbc.Driver"
            user="root" password=""
            url="jdbc:mysql://localhost:3306/transient"/>

             <sql:query var="result">
                
                Select * from house;
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
            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
              <i class="glyphicon glyphicon-align-left"></i>
              <span>Toggle Sidebar</span>
            </button>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                   
                        <p> <input type="text" name="name" id="name">
                            <button type="submit" onclick="OpenPage()">Search<i class="glyphicon glyphicon-search"></i></button>
                        </p>                       
                    
               
                <script type="text/javascript">
                    function OpenPage()
                    {
                            var add = document.getElementById('name').value;
                            var url = 'search.jsp?name='+add;
                            $.get(url, function(response)
                            {
                                    $('#out').html(response);
                            });
                    }
                    
                </script>
              </li>
            </ul>
          </div>
            
        </div>
      </nav>
         <div class="row">
                <div class="col-lg-2 col-sm-12">
                    Filter by:
                </div>
                <div class="col-lg-3 col-sm-12">
                    <div class="form-group">
                        <label>Check-in:</label>
                        <input type="date" class="form-control" required="required" id="checkIn"> </div>
                        <div class="form-group">
                        <label>Check-out:</label>
                        <input type="date" class="form-control" id="checkOut"> </div>
                        <button class="btn btn-lg btn-secondary" onClick="byDate()"> Date </button>
                    
                        <script type="text/javascript">
                        
                            function byDate()
                            {
                            
                                var start = document.getElementById('checkIn').value;
                                var end = document.getElementById('checkOut').value;
                                var url = 'date.jsp?startdate='+start+'&enddate='+end;
                                $.get(url, function(response)
                                {
                                    $('#out').html(response);
                                });
                            }
               
                        </script>
      
                </div>
                <div class="col-lg-3 col-sm-12">
                    <div class="form-group">
                        <label>Minimum Price:</label>
                        <input type="number" class="form-control" required="required" id="minPrice"> </div>
                    <div class="form-group">
                        <label>Maximum:</label>
                        <input type="number" class="form-control" id="maxPrice"> </div>
                    <button class="btn btn-lg btn-secondary" onClick="byPriceRange()"> Range </button>
                    
                        <script type="text/javascript">
                        
                            function byPriceRange()
                            {
                            
                                var min = document.getElementById('minPrice').value;
                                var max = document.getElementById('maxPrice').value;
                                var url = 'price.jsp?minPrice='+min+'&maxPrice='+max;
                                $.get(url, function(response)
                                {
                                    $('#out').html(response);
                                });
                            }
               
                        </script>
      
                </div>
             
                <div class="col-lg-3 col-sm-12">
                    <button class="btn btn-lg btn-secondary" onClick="byPrice()"> Cheapest </button>
                    <script type="text/javascript">
                        
                    function byPrice()
                    {
                            
                            var url = 'filterPriceCheap.jsp';
                            $.get(url, function(response)
                            {
                                    $('#out').html(response);
                            });
                    }
               
                    </script>
      
                </div>
                <div class="col-lg-3 col-sm-12">
                    <button class="btn btn-lg btn-secondary" onClick="byPriceExpe()"> Expensive </button>
                    <script type="text/javascript">
                        
                    function byPriceExpe()
                    {
                            
                            var url = 'filterPriceExpe.jsp';
                            $.get(url, function(response)
                            {
                                    $('#out').html(response);
                            });
                    }
               
                    </script>
      
                </div>
                <div class="col-lg-3 col-sm-12">
                    <button class="btn btn-lg btn-secondary" onclick="byAvailability"> Available </button>
                    <script type="text/javascript">
                        
                    function byAvailability()
                    {
                            
                            var url = 'filterAvailable.jsp';
                            $.get(url, function(response)
                            {
                                    $('#out').html(response);
                            });
                    }
               
                    </script>
                    
                </div>
            </div>
      <div class="py-5 bg-light mr-auto w-25" id="out">
        <div class="container" >
           
          <div class="row">
            <h1 class="text-center">Available Units</h1>
            <c:forEach var="rows" items="${result.rows}">
                <div class="col-md-4 p-4 m-2">
                    <img class="img-fluid d-block rounded-circle mx-auto" src="${rows.image_path}" width="300" height="200"/>
                    <p class="my-4">
                      <i>${rows.house_name}<br>
                         Rental Fee: PHP ${rows.current_rental_fee}</i>
                    </p>
                    <p>
                      <b>${rows.house_address}</b>
                      <br>Good for ${rows.house_capacity}</p>
                    <a class="btn btn-lg btn-primary" href="reserve.jsp"> Reserve/Avail </a>
                    <br><br>
                  </div>                    
            </c:forEach>

            <div class="col-md-4 p-4">
              <img class="img-fluid d-block rounded-circle mx-auto" src="images/137627804_x.jpeg" width="300" height="200">
              <p class="my-4">
                <i>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec. </i>
              </p>
              <p>
                <b>J. L. Fish</b>
                <br>UI designer</p>
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