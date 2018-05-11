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
</head>

<body>
        <%
            try{
                String username = request.getParameter("username");   
                String password = request.getParameter("password");
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/transient?user=root&password=");    
                PreparedStatement pst = conn.prepareStatement("SELECT * FROM users WHERE (username=? AND password=?) AND user_type = 'user'");
                pst.setString(1, username);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                        
                
                if(rs.next()){           
                    response.sendRedirect("index.jsp");
                }else{
                    response.sendRedirect("login.jsp");
                }    
            }catch(Exception e){       
                    out.println("Something went wrong !! Please try again");       
            }      
        %>
    </body>
</html>
