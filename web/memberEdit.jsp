<%-- 
    Document   : memberEdit
    Created on : Feb 26, 2013, 2:52:00 AM
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
        <h1 style="color: black;">Member Edit</h1>
        <!-- h1>Ikke blå</h1 -->
        <form
            action="FrontController"
            method="post">
            <input type="hidden" name="id" value="${member.id}"/>
            <table border="0" cellspacing="0" cellpadding="4">
                <tr> <!-- table row = række -->
                    <th>First name:</th> <!-- table header cell -->
                    <td colspan="2">
                        <input type="text" name="firstName" size="50" value="${member.firstName}"/>
                    </td> <!-- table data cell -->
                </tr>
                <tr> 
                    <th id="lnr" >Last name:</th>
                    <td colspan="2">
                        <input type="text" name="lastName" size="50" value="${member.lastName}"/>
                    </td>
                </tr>

                <tr> 
                    <th>Voice:</th>
                    <td colspan="2">
                        <select name="voiceCode">
                            <c:forEach var="voice" items="${voices}">
                                <c:when test="${voice.code==member.voie.code}">
                                    <option selected="${member.voice.code}">${member.voice.name}</option>
                                </c:when>
                                <option value="${voice.code}">${voice.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>Roles:</th>
                    <td colspan="2">
                        <c:forEach var="role" items="${roles}">
                            <c:forEach var="memberRole" items="${member.roles}">
                                    <c:choose>
                                        <c:when test="${memberRole.code==role.code}">
                                            <input type="checkbox" name="roleCodes" value="${role.code}" checked/>${role.name}<br/>
                                        </c:when>
                                        <c:otherwise>
                                            <input type="checkbox" name="roleCodes" value="${role.code}"/>${role.name}<br/>
                                        </c:otherwise>
                                    </c:choose>
                            </c:forEach> 
                        </c:forEach>
                    </td>
                </tr>
                <tr> 
                    <th>Date of birth:</th>
                    <td colspan="2">
                        <input type="date" name="dateOfBirth" value="${member.dateOfBirth}" />
                    </td>
                </tr>
                <tr> 
                    <th>Street:</th>
                    <td colspan="2"><input type="text" name="street"  size="50" value="${member.street}"/></td>
                </tr>
                <tr> 
                    <th>District:</th>
                    <td><input type="text" name="zipCode" maxlength="4" size="4" placeholder="Zip" value="${member.zipCode}"/></td>
                    <td style="text-align: right;"><input type="text" placeholder="City goes here" name="city" size="35" value="${member.city}" /></td>
                </tr>
                <tr> 
                    <th>Phone:</th>
                    <td colspan="2"><input type="text" name="phone"  size="50" value="${member.phone}"/></td>
                </tr>
                <tr> 
                    <th>Email:</th>
                    <td colspan="2"><input type="email" name="email"  size="50" value="${member.email}"/></td>
                </tr>
                <tr> 
                    <th>Password:</th>
                    <td colspan="2"><input type="password" name="password" size="50" /></td>
                </tr>
                <tr class="ButtonRow">
                    <td colspan="3">
                        <button type="submit" name="command" value="saveMember">Save</button>
                        <button type="submit" name="command" value="cancelMember">Cancel</button>
                        <button type="reset" >Reset</button>
                    </td>
                </tr>
            </table> 
        </form>

    </body>
</html>
