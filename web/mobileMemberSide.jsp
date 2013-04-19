
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    var id = $(this).attr('data');
                    $("#memberList").on("expand",function(){
                        alert("id" + id);
                        $.ajax({url: "MemberServlet?id=" + id  , cache: false, dataType: "json", success : dataReady});
                    });
                    function dataReady(data){
                        alert();
                        $("#data").text("<div> First name:" + data.street + "</div>");
                    };
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
                <div id="memberList" data-role="collapsible-set">
                    <c:forEach var="member" items="${members}">
                        <div data-role="collapsible" data-collapsed="true" data="${member.id}">
                            <h3>
                                <c:out value="${member.name}"></c:out>
                                <c:out value="${member.id}"></c:out>
                                </h3>
                                <div id="data"></div>
                            </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>