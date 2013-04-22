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
    $(".memberList").on("expand",function(){
                        id = $(this).data('record');
                        console.log(id);
                        $.ajax({url: "MaterialServlet?id=" + id  , cache: false, dataType: "json", success : dataReady});
                    });
                    function dataReady(data){
                        alert(JSON.stringify(data));
                        $("#" + id).html("<li> Date of Birth:" + data.dateOfBirth + "</li>");
                        $("#" + id).append("<li> Voice:" + data.voice.name + "</li>");
                        $("#" + id).append("<li> Roles:" + data.roles.name + "</li>");                        
                        $("#" + id).append("<li> Street:" + data.street + "</li>");
                        $("#" + id).append("<li> Zipcode:" + data.zipCode + "</li>");
                        $("#" + id).append("<li> City:" + data.city + "</li>");
                        $("#" + id).append("<li> Email:<a href=':mailto'" + data.email + "rel='external'>"+ data.email + "</a></li>");
                        $("#" + id).append("<li> Phone: <a href=':tel'" + data.phone + "rel='external'>"+ data.phone + "</a></li>");
                    };

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
            <div data-theme="a" data-role="header">
                <h3 class="header">
                    Materials
                </h3>
            </div>
            <div data-role="content">
                <a data-role="button" data-inline="true" href="#sheets" data-transition="none">
                    Sheets
                </a>
                <a data-role="button" data-inline="true" href="#audio" data-transition="none">
                    Audio
                </a>
            </div>
            <div data-theme="a" data-role="footer" data-position="fixed">
                <h3 class="footer">
                    Choir
                </h3>
            </div>
        </div>
        
        <!--PAGE FOR SHEETS LIST-->
        <div data-role="page" id="sheets">
            <div data-theme="a" data-role="header">
                <h3 class="header">
                    Materials
                </h3>
            </div>
            <div data-role="content">
                <a data-role="button" data-inline="true" href="#sheets" data-transition="none">
                    Sheets
                </a>
                <a data-role="button" data-inline="true" href="#audio" data-transition="none">
                    Audio
                </a>
                <ul data-role="listview" data-divider-theme="b" data-inset="true">
                    <li data-role="list-divider" role="heading">
                        Sheets
                    </li>
                    <li data-theme="c">
                        <a href="#details" data-transition="slide">
                            Name of material
                        </a>
                    </li>
                </ul>
            </div>
            <div data-theme="a" data-role="footer" data-position="fixed">
                <h3 class="footer">
                    Choir
                </h3>
            </div>
        </div>
        
        <!--PAGE FOR AUDIO LIST-->
        <div data-role="page" id="audio">
            <div data-theme="a" data-role="header">
                <h3 class="header">
                    Materials
                </h3>
            </div>
            <div data-role="content">
                <a data-role="button" data-inline="true" href="#sheets" data-transition="none">
                    Sheets
                </a>
                <a data-role="button" data-inline="true" href="#audio" data-transition="none">
                    Audio
                </a>
                <ul data-role="listview" data-divider-theme="b" data-inset="true">
                    <li data-role="list-divider" role="heading">
                        Audio
                    </li>
                    <li data-theme="c">
                        <a href="#details" data-transition="slide">
                            Name of material
                        </a>
                    </li>
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
            <div data-role="content">
                HERE GOES MATERIAL DETAILS
            </div>
            <div data-theme="a" data-role="footer" data-position="fixed">
                <h3 class="footer">
                    Choir
                </h3>
            </div>
        </div>
    </body>
</html>