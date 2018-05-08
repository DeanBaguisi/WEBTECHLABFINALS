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
  <!-- Bootstrap CSS CDN -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Our Custom CSS -->
  <link rel="stylesheet" href="css/style.css"> </head>

<body>
    
     <sql:setDataSource driver="com.mysql.jdbc.Driver"
            user="root" password=""
            url="jdbc:mysql://localhost:3306/products"/>
 
            <sql:query var="result">
            SELECT prodid, description, price, CONCAT('data:image;base64,', TO_BASE64(image)) AS image
            FROM products
            WHERE category = ?
            ORDER BY description
            
            <sql:param>
                ${param.name}
            </sql:param>
        </sql:query>

  <div class="wrapper">

    <!-- Page Content Holder -->
    <div id="content">
      <div class="py-5 bg-light mr-auto w-25" id="out">
        <div class="container" >
          <div class="row">
            <h1 class="text-center">Available Units</h1>
            <c:forEach var="rows" items="${result.rows}">
                <div class="col-md-4 p-4">
                    <img class="img-fluid d-block rounded-circle mx-auto" src="${rows.image_path}" width="300" height="200">
                    <p class="my-4">
                      <i>${rows.prodid}<br>
                          ${rows.category}</i>
                    </p>
                    <p>
                      <b>${rows.house_address}</b>
                      <br>Goof for ${rows.house_capacity}</p>
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

      </div>
    </div>
  </div>

</body>

</html>