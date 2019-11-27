<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- CSS -->
  <link href="../assets/styles/travelbud.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
  <div class="sign-in-container">
    <form action="AuthController">
      <div class="card grey lighten-3">
        <div class="card-content black-text">
          <span class="card-title">Travel Bud</span>
          <div class="row col s12">
            <div class="center col s6">
              <img src="../assets/images/logo.png" width="120" height="100" alt="logo" />
            </div>
            <div class="input-field col s6">
              <input placeholder="email" id="email" name="email" type="text" class="validate" value="${authHelper.data.email}">
              <label for="email">Email</label>
            </div>
            <div class="input-field col s6">
              <input id="password" type="password" name="password" class="validate" value="${authHelper.data.password}">
              <label for="password">Password</label>
            </div>
          </div>
          <div class="card-action pull-right">
            <button class="btn waves-effect waves-light" type="submit">Sign In
              <i class="material-icons right">send</i>
            </button>
          </div>
        </div>
      </div>
    </form>
  </div>
  <!-- JavaScript CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>

</html>