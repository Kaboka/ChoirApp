<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <title>
        </title>
        <link rel="stylesheet" href="https://s3.amazonaws.com/codiqa-cdn/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
        <link rel="stylesheet" href="my.css" />
        <script src="https://s3.amazonaws.com/codiqa-cdn/jquery-1.7.2.min.js">
        </script>
        <script src="https://s3.amazonaws.com/codiqa-cdn/mobile/1.2.0/jquery.mobile-1.2.0.min.js">
        </script>
        <script src="my.js">
        </script>
        <!-- User-generated css -->
        <style>
        </style>
        <!-- User-generated js -->
        <script>
            try {

    $(function() {

    });

  } catch (error) {
    console.error("Your javascript has an error: " + error);
  }
        </script>
    </head>
    <body>
        <!-- Home -->
<div data-role="page" id="page1">
    <div data-role="content">
        <form action="">
            <input type="hidden" name="id" value="${member.id}"/>
            <div data-role="fieldcontain">
                <label for="textinput13">
                    First name
                </label>
                <input name="firstName" id="textinput13" placeholder="" value="${member.firstName}" type="text">
            </div>
            <div data-role="fieldcontain">
                <label for="textinput14">
                    Last name
                </label>
                <input name="lastName" id="textinput14" placeholder="" value="${member.lastName}" type="text">
            </div>
            <div data-role="fieldcontain">
                <label for="selectmenu2">
                    Voice
                </label>
                <select id="selectmenu" name="voiceCode">
                    <option value="option1">
                        Option 1
                    </option>
                </select>
            </div>
            <div id="checkboxes" data-role="fieldcontain">
                <fieldset data-role="controlgroup" data-type="vertical">
                    <legend>
                        Roles
                    </legend>
                    <c:forEach var="role" items="${roles}">
                        <c:set var="checked" value="" scope="page"/>
                        <c:forEach var="memberRole" items="${member.roles}">
                            <c:if test="${role.code == memberRole.code}">
                                <c:set var="checked" value="checked='checked'" scope="page"/>
                            </c:if>
                            </c:forEach> 
                                <input id="checkbox" name="" data-theme="c" type="checkbox" vale="${role.code}" ${checked}>
                                <label for="checkbox">
                                 ${role.name}
                                </label>
                    </c:forEach>
                </fieldset>
            </div>
            <div data-role="fieldcontain">
                <label for="textinput15">
                    Date of birth
                </label>
                <input name="dateOfBirth" id="textinput15" placeholder="" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${member.dateOfBirth}'/>" type="date">
            </div>
            <div data-role="fieldcontain">
                <label for="textinput16">
                    Street
                </label>
                <input name="street" id="textinput16" placeholder="" value="${member.street}" type="text">
            </div>
            <div class="ui-grid-a">
                <div class="ui-block-a">
                    <div data-role="fieldcontain">
                        <label for="textinput18">
                            Zipcode
                        </label>
                        <input name="zipCode" id="textinput18" placeholder="" value="${member.zipCode}" type="text">
                    </div>
                </div>
                <div class="ui-block-b">
                    <div data-role="fieldcontain">
                        <label for="textinput19">
                            City
                        </label>
                        <input name="city" id="textinput19" placeholder="" value="${member.city}" type="text">
                    </div>
                </div>
            </div>
            <div data-role="fieldcontain">
                <label for="textinput17">
                    Phone
                </label>
                <input name="phone" id="textinput17" placeholder="" value="${member.phone}" type="tel">
            </div>
            <div data-role="fieldcontain">
                <label for="textinput20">
                    Email
                </label>
                <input name="email" id="textinput20" placeholder="" value="${member.email}" type="email">
            </div>
            <div data-role="fieldcontain">
                <label for="textinput21">
                    Password
                </label>
                <input name="password" id="textinput21" placeholder="" value="" type="text">
            </div>
            <div class="ui-grid-b">
                <div class="ui-block-a">
                    <input type="submit" value="Save" data-mini="true">
                </div>
                <div class="ui-block-b">
                    <input type="submit" value="Cancel" data-mini="true">
                </div>
                <div class="ui-block-c">
                    <input type="submit" value="Reset" data-mini="true">
                </div>
            </div>
        </form>
    </div>
</div>
    </body>
</html>
