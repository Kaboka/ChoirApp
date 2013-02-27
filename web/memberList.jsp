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
        <form>
        <table>
            <c:forEach var="member" items="${members}">
                <tr><td>
                <c:out value="${member.name}"></c:out>
                <input type="hidden" name="id" value="${member.id}"/>
                    </td>
                    <td>
                        <button type="submit" name="command" value="viewMember">View</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
        </form>
        <form>
        <button type="submit" name="command" value="main">Back to Main</button>
        <button type="submit" name="command" value="createMember">Create Member</button>
        </form>
    </body>
</html>
