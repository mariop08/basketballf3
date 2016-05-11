<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $title; ?></title>
    <script src="js/jquery-2.0.3.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <link href="css/lavish-bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/custom.css" rel="stylesheet" type="text/css">
    <link href="css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
  <!-- Modal added this to implement a login modal -->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="loginModalLabel">Login</h4>
        </div>
        <div class="modal-body">
          <form method="POST" action="authenticate">  <!-- Add action and method here-->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Email">
              </div>
              <div class="form-group">
                <label for="pswd">Password</label>
                <input type="password" class="form-control" id="pswd" name="pswd" placeholder="Password">
              </div>
            <input type="submit" class="btn btn-primary" value="Login">
            <input type="button" class="btn btn-default" data-dismiss="modal" value="Close">
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- End of Modal change -->


    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img class="navbar-header" src ="images/logo.png"/>
          <a class="navbar-brand" href="/basketballf3/">CSUF Basketball</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Add Statistics <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="addTeams">Add Teams</a></li>
                <li><a href="addPlayers">Add Players</a></li>
                <li><a href="addGames">Add Games</a></li>
                <li><a href="addPlayerToGame">Add Player To Game</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">View Statistics <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="viewTeams">View Teams</a></li>
                <li><a href="viewPlayers">View Players</a></li>
                <li><a href="viewGames">View Games</a></li>
                <li><a href="viewPlayersGames">View Player's Games</a></li>
              </ul>
            </li>
            <li><a href="about">About</a></li>
            <li><a href="contact">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#" data-toggle="modal" data-target="#loginModal">
            <button type="button" class="btn btn-info">Login</button></a>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>