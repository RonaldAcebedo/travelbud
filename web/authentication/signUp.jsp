<%-- 
    Document   : signUp
    Created on : Nov 26, 2019, 8:32:00 AM
    Author     : luise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



<body>
      <head>
            <!--Import Google Icon Font-->
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <!-- CSS -->
            <link href="../assets/styles/travelbud.css" rel="stylesheet" type="text/css" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <link rel="icon" href="assets/images/logo.png">
            <link href="//cdn.muicss.com/mui-0.9.43/css/mui.min.css" rel="stylesheet" type="text/css" />
            <link href="assets/styles/travelbud.css" rel="stylesheet" type="text/css"/>

      </head>
      <header class="mui-appbar mui--z1">
        <div class="mui-container">
            <table>
                <tr class="mui--appbar-height">
                    <td><img src="assets/images/lotus.png" width="276" height="48" alt="lotus"/></td>

                    <td class="mui--text-right">
                        <ul class="mui-list--inline mui--text-body2">
                            <li><a href="../calculator/travelcalculator1.jsp">calculate</a></li>
                            <li><a href="../authentication/signUp.jsp">sign up</a></li>
                            <li><a href="../authentication/signIn.jsp">log in</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
    </header>
  <div class="sign-in-container">
    <form action="AuthenticationController" method="post">
      <div class="card grey lighten-3">
        <div class="card-content black-text">
          <span class="card-title">Sign Up</span>
          <div class="row col s6">
            <div class="input-field col s6">
              <input  id="name" type="text" class="validate">
              <label for="name">Name</label>
            </div>
            <div class="input-field col s6">
              <input id="email" type="text" class="validate">
              <label for="email">Email</label>
            </div>
            <div class="input-field col s6">
              <input id="address" type="text" class="validate">
              <label for="address">Address</label>
            </div>
            <div class="input-field col s6">
              <input id="password" type="password" class="validate">
              <label for="password">Password</label>
            </div>
            <div class="input-field col s6">
              <input id="password_confirm" type="password" class="validate">
              <label for="password_confirm">Confirm Password</label>
            </div>
            <div class="input-field col s6">
                <select class="browser-default validate">
                  <option value="" disabled selected>Airline</option>
                  <option value="1">American</option>
                </select>
            </div>

          </div>
          <div class="card-action pull-right">
            <button class="btn waves-effect waves-light" type="submit" name="action">Sign Up
              <i class="material-icons right">submit</i>
            </button>
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
  <!-- JavaScript CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>

</html>
