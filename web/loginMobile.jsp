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
/*            .ui-page{ margin-left: 150px; margin-right: 150px}*/
        </style>
        <!-- User-generated js -->
        
        <script>
            try {

    $(function() {
        $("a").click(function(){
            $("form").submit();
        });
    });

  } catch (error) {
    console.error("Your javascript has an error: " + error);
  }
        </script>
    </head>
    <body>
        <!-- Home -->
        <div data-role="page" id="page1" >
            <div data-theme="" data-role="header">
                <h3>
                    Log in
                </h3>
            </div>
            <div data-role="content">
                <form action="FrontController?command=login">
                    <div data-role="fieldcontain" id="userName">
                        <label for="userName">
                            Username
                        </label>
                        <input name="userName" id="userName" placeholder="username" value="User Name" type="text" />
                    </div>
                    <div data-role="fieldcontain" id="password">
                        <label for="password">
                            Password
                        </label>
                        <input name="password" id="password" placeholder="password" value="Password" type="password" />
                    </div>
                    <a data-role="button" data-transition="none" data-theme="a">
                        Log in
                    </a>
                </form>
            </div>
        </div>
    </body>
</html>