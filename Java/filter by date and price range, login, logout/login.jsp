<%-- 
    Document   : index
    Created on : 05 4, 18, 8:41:32 AM
    Author     : 
--%>
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
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/theme.css" type="text/css"> </head>


  <body>  

  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-3"> </div>
        <div class="col-md-6">
          <div class="card text-white bg-info border border-info m-2 p-4">
            <div class="card-body">
              <img class="img-fluid d-block" src="images/HS.png">
                <hr>
                <form action="loginprocess.jsp" method="post">
                <div class="form-group">
                  <input type="username" name="username" class="form-control" placeholder="Username"> </div>
                <div class="form-group">
                  <input type="password" name="password" class="form-control" placeholder="Password"> </div>
                  <button type="submit">Log In<i class="glyphicon glyphicon-search"></i></button>
              </form>
            </div>
          </div>
          <div class="col-md-12 mt-3 text-center">
            <p class="text-dark">© Copyright 2018 Group 3 WebtechLab - All rights reserved.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>

</html>