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
    hellooooo
    <sql:setDataSource driver="com.mysql.jdbc.Driver"
            user="root" password=""
            url="jdbc:mysql://localhost:3306/transient"/>
    
    <sql:query var="result">
        
       Select * from house;
       
        <sql:param>
                ${param.name}
            </sql:param>
    </sql:query>
                
    <%  
        String startdate = request.getParameter("startdate");
        String enddate = request.getParameter("enddate");
        
    %>
    
    <p>
        
    </p>
    
        <%= request.getParameter("houseId")%>
         ${param.name}       
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