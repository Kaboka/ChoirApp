<%-- 
    Document   : main
    Created on : 25-02-2013, 16:17:53
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choir Main page</title>
    </head>
    <body>
        <h1>Choir Main page</h1>
        <p>Logged in member ${loggedIn.name}</p>
        <a href="FrontController?command=listMembers">Show Memberlist</a>
    </body>
</html>
