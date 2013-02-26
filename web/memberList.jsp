<%-- 
    Document   : memberList
    Created on : 25-02-2013, 17:58:32
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member list</title>
    </head>
    <body>
        <h1>Member list</h1>
        <table>
            <c:forEach var="member" items="${members}">
                <tr><td><a href="FrontController?command=viewMembers&id=${member.id}">
                <c:out value="${member.name}"></c:out></a><tr><td>
            </c:forEach>
        </table>
        <form>
        <button type="submit" name="command" value="main">Back to Main</button>
        </form>
    </body>
</html>
