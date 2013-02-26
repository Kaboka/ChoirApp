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
      <table border="0" cellspacing="0" cellpadding="4">
	<tr> <!-- table row = række -->
	  <th>First name:</th> <!-- table header cell -->
	  <td colspan="2">
	    <input type="text" name="firstName" size="50" value="${members.firstName}"/>
	    </td> <!-- table data cell -->
	  </tr>
	<tr> 
	  <th id="lnr" >Last name:</th>
	  <td colspan="2">
	    <input type="text" name="lastName" size="50" value="${members.lastName}"/>
	    </td>
	  </tr>
	
	<tr> 
	  <th>Voice:</th>
	  <td colspan="2">
	    <select name="voiceCode">
<!--	    <c:forEach var="voice" items="${voices}">
	      <option value="${voice.code}">${voice.name}</option>
            </c:forEach>-->
            <input type="checkbox" name="roleCodes" value="ADM"/>Administrator<br/>
	    <input type="checkbox" name="roleCodes" value="BRD"/>Board member<br/>
	    <input type="checkbox" name="roleCodes" value="RPT"/>Repertoire group member<br/>
	    <input type="checkbox" name="roleCodes" value="MOD"/>Clothing group member<br/>
	      </select>
	    </td>
	  </tr>
	<tr>
	  <th>Roles:</th>
	  <td colspan="2">
<!--	  <c:forEach var="role" items="${roles}">
	    <input type="checkbox" name="roleCodes" value="${role.code}"/>${role.name}<br/>  
	    </c:forEach>-->
              <option value="0">Other</option>
	      <option value="1">1st soprano</option>
	      <option value="2">2nd soprano</option>
	      <option value="4">1st alto</option>
	      <option value="8">2nd alto</option>
	      <option value="16">1st tenor</option>
	      <option value="32">2nd tenor</option>
	      <option value="64">1st bass</option>
	      <option value="128">2nd bass</option>
	      <option value="256">Conductor</option>
	      <option value="512">Pianist</option>
	    </td>
	  </tr>
	<tr> 
	  <th>Date of birth:</th>
	  <td colspan="2">
	    <input type="date" name="dateOfBirth" />
	    </td>
	  </tr>
	<tr> 
	  <th>Street:</th>
	  <td colspan="2"><input type="text" name="street"  size="50"/></td>
	  </tr>
	<tr> 
	  <th>District:</th>
	  <td><input type="text" name="zipCode" maxlength="4" size="4" placeholder="Zip"/></td>
	  <td style="text-align: right;"><input type="text" placeholder="City goes here" name="city" size="35" /></td>
	  </tr>
	<tr> 
	  <th>Phone:</th>
	  <td colspan="2"><input type="text" name="phone"  size="50"/></td>
	  </tr>
	<tr> 
	  <th>Email:</th>
	  <td colspan="2"><input type="email" name="email"  size="50"/></td>
	  </tr>
	<tr> 
	  <th>Password:</th>
	  <td colspan="2"><input type="password" name="password" size="50" /></td>
	  </tr>
	<tr class="ButtonRow">
	  <td colspan="3">
            <button type="submit" name="command" value="saveMembers">Save</button>
            <button type="submit" name="command" value="cancelMembers">Cancel</button>
            <button type="reset" >Reset</button>
	    </td>
	  </tr>
	</table> 
      </form>
    
    </body>
</html>
