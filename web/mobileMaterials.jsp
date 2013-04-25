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
        $("li").click(function(){
            var id = $(this).data("record");
            $.ajax({ url : "MaterialServlet?id=" + id,
                    cache : false,
                    dataType : "json",
                    success : dataReady});
        });
        
        function dataReady(data){
            $("#detail").html("<h3>" + data.title + "</h3>" +
                    "<p>Type: " + data.type + "<br/>" +
                    "Description: " + data.description + "<br/>" +
                    "Music Description: " + data.musicDescription + "</p>");
        }
    });

  } catch (error) {
    console.error("Your javascript has an error: " + error);
  }
        </script>
    </head>
    <body>
        
        
        <!-- HOME -->
        <div data-role="page" id="page1">
            <div data-theme="a" data-role="header">
                <h3 class="header">
                    Materials
                </h3>
            </div>
            <div data-role="content">
                <ul class="materialList" data-role="listview" data-divider-theme="b" data-inset="true" data-filter="true">
                    <li data-role="list-divider" role="heading">
                        Materials
                    </li>
                    <c:forEach var="material" items="${materials}">
                    <li data-theme="c" data-record="${material.id}">
                        <a href="#details" data-transition="slide">
                            <c:out value="${material.title}"></c:out>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div data-theme="a" data-role="footer" data-position="fixed">
                <h3 class="footer">
                    Choir
                </h3>
            </div>
        </div>
        
        <!-- PAGE FOR MATERIAL DETAILS -->
        <div data-role="page" id="details">
            <div data-theme="a" data-role="header">
                <a data-role="button" data-direction="reverse" data-transition="slide" href="#page1" data-icon="arrow-l" data-iconpos="left" class="ui-btn-left">
                    Materials
                </a>
                <h3 class="header">
                    Details
                </h3>
            </div>
            <div data-role="content" id="detail">
                
            </div>
            <div data-theme="a" data-role="footer" data-position="fixed">
                <h3 class="footer">
                    Choir
                </h3>
            </div>
        </div>
    </body>
</html>
