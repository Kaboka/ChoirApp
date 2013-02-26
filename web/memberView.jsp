<%-- 
    Document   : memberView
    Created on : Feb 26, 2013, 2:51:32 AM
    Author     : Nicklas Hemmingsen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <hr/>
        <form action="FrontController" method="POST">
          <input type="hidden" name="id" value="${members.id}">
            <table border="1">
                <tr>
                    <th>ID</th>
                    <td>${members.id}</td>
                </tr>
                <tr>
                    <th>Name: </th>
                    <td>
                        ${members.firstName} ${members.lastName}
                    </td>
                </tr>
                <tr>
                    <th>Date of Birth: </th>
                    <td>
                        ${members.dateOfBirth}
                    </td>
                </tr>
                <tr>
                    <th>Voice: </th>
                    <td>
                        ${members.voice.name}
                    </td>
                </tr>
                <tr>
                    <th>Roles: </th>
                    <td>
                        <ul>
                             <c:forEach var="role" items="${members.roles}">
                                <li>${role.code} ${role.name}</li>
                             </c:forEach>
                        </ul>
                    </td>
                </tr
                <tr>
                    <th>Street: </th>
                    <td>
                        ${members.street}
                    </td>
                </tr>
                <tr>
                    <th>zipCode: </th>
                    <td>
                        ${members.zipCode}
                    </td>
                </tr>
                <tr>
                    <th>City: </th>
                    <td>
                        ${members.city}
                    </td>
                </tr>
                <tr>
                    <th>Email: </th>
                    <td>
                        ${members.email}
                    </td>
                </tr>
                <tr>
                    <th>Phone: </th>
                    <td>
                        ${members.phone}
                    </td>
                </tr>
                <tr>
                    <th>Password: </th>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" name="command" value="editMembers">Edit</button>
                        <button type="submit" name="command" value="listMembers">Return to MemberList</button>
                    </td>
                    
                </tr>
                    
            </table>
        </form>
    </body>
</html>
