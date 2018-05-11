<%-- 
    Document   : profile
    Created on : 05 9, 18, 9:07:19 AM
   
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Homeseek</title>
  <!-- Bootstrap CSS CDN -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Our Custom CSS -->
  <link rel="stylesheet" href="css/style.css"> 
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver"
            user="root" password=""
            url="jdbc:mysql://localhost:3306/transient"/>

             <sql:query var="result">
                
                Select * from users where user_id = '1';
             </sql:query>
        
        
             <c:forEach var="rows" items="${result.rows}">
             <p >
                 <img src=""/><br>
                 First Name:${rows.given_name}<br>
                 Last Name:${rows.last_name}<br>
                 Gender:${rows.gender}<br>
                 ContactNo:${rows.contact_no}<br>
                 Email Address:${rows.email_address}<br>
             </p>
             </c:forEach>
          
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
    </body>
</html>
