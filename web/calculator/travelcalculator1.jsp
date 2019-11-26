<%-- 
    Document   : travelcalculator1
    Created on : Nov 26, 2019, 7:24:45 AM
    Author     : luise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>travel bud</title>
    <link rel="icon" href="logo.png">
    <link href="//cdn.muicss.com/mui-0.9.43/css/mui.min.css" rel="stylesheet" type="text/css" />
    <link href="travelbud.css" rel="stylesheet" type="text/css"/>
    <script src="//cdn.muicss.com/mui-0.9.43/js/mui.min.js"></script>
    <style>
        html,
        body {
            height: 100%;
        }

        html,
        body,
        input,
        textarea,
        button {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
        }


        /**
        * Header CSS
        */
        header {
            position: fixed;
            margin: 25px;
            top: 0;
            right: 0;
            left: 0;
            /*z-index: 2;*/
            background-image: url("background.jpg");
            border: 10px solid white;
        }

        header ul.mui-list--inline {
            margin-bottom: 0;
        }

        header a {
            color: blue;
            font:  24px impact;
}

        header table {
            width: 100%;
        }
        
        /* The side navigation menu */
        .sidenav {
          height: 100%; /* 100% Full-height */
          width: 300px; /* 0 width - change this with JavaScript */
          position: fixed; /* Stay in place */
          z-index: 1; /* Stay on top */
          top: 0; /* Stay at the top */
          left: 0;
          background-color: #111; /* Black*/
          overflow-x: hidden; /* Disable horizontal scroll */
          padding-top: 60px; /* Place content 60px from the top */
          transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
        }

        /* The navigation menu links */
        .sidenav a {
          padding: 8px 8px 8px 32px;
          text-decoration: none;
          font-size: 25px;
          color: #818181;
          display: block;
          transition: 0.3s;
        }

        /* When you mouse over the navigation links, change their color */
        .sidenav a:hover {
          color: #f1f1f1;
        }

        /* Position and style the close button (top right corner) */
        .sidenav .closebtn {
          position: absolute;
          top: 0;
          right: 25px;
          font-size: 36px;
          margin-left: 50px;
        }


        /**
        * Content CSS
        */
        #content-wrapper {
            min-height: 100%;

        /* sticky footer */
            box-sizing: border-box;
            margin-bottom: -100px;
            padding-bottom: 100px;
            background-image: url("background.jpg");
            border: 10px solid white;
            font:  48px impact;
            color: blue;
        }


        /**
        * Footer CSS
        */
        footer {
            box-sizing: border-box;
            height: 100px;
            background-image: url("background.jpg");
            border: 10px solid white;
            padding-top: 35px;
            font:  24px impact;
        }
        
        /* Add padding to container elements */
        .container {
          padding: 16px;
          padding-left: 300px;
          padding-top: 100px;
        }
        
        .col-container {
            margin-top: 300px;
            clear: both;
            position: relative;
            display: table; /* Make the container element behave like a table */
            width: 100%; /* Set full-width to expand the whole page */
        }

        .col {
            display: table-cell; /* Make elements inside the container behave like table cells */
        }
        
        
    </style>
  </head>
  <body>
    <header class="mui-appbar mui--z1">
        <div class="mui-container">
            <table>
                <tr class="mui--appbar-height">
                    <td><img src="assets/images/lotus.png" width="276" height="48" alt="lotus"/></td>

                    <td class="mui--text-right">
                        <ul class="mui-list--inline mui--text-body2">
                            <li><a href="index.html">home</a></li>
                            <li><a href="#">log out</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
        
    </header>
    <form action="AuthenticationController" method="post">
        
        <div id="content-wrapper" class="mui--text-center">
        <div class="col-container">
          <div class="col">
            <p>Sign-In Time</p>
            <input type="text" name="sign_in_time" />
            <p>Scheduled Flying Time</p>
            <input type="text" name="flying_time" />
            <p>Scheduled Type</p>
            <input type="text" name="schedule_type" />
          </div>


          <div class="col">
            <p>Doors Must Close By: </p>
            <br>
            <p>
                <select name="schedule_type">
                    <option value="0">Choose Schedule</option>
                    <option value="1">Domestic</option>
                </select>
            </p>
            <p>
                <select name="airline_type">
                    <option value="0">Choose Airline:</option>
                    <option value="1">American</option>
                </select>
            </p>
            <button class="btn waves-effect waves-light" type="submit" name="action">Calculate!</button>
        </div>
            
            
          </div>
        </div>

    </form>
    

    </div>
    <footer>
        <div class="mui-container mui--text-center">
            Made and designed by:  Tres Amigos
        </div>
    </footer>
  </body>
</html>
