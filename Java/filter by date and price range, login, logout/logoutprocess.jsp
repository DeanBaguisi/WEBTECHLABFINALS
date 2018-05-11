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

</head>

<body>
   <%
        session.removeAttribute("username");
        session.removeAttribute("password");
        session.invalidate();
        response.sendRedirect("login.jsp");
   %>
    </body>
</html>
