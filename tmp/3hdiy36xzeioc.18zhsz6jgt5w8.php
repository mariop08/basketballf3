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
          </ul>

          <?php if ($SESSION['user']): ?>
            
              <ul class="nav navbar-nav navbar-right">
                <li><a href="logout">
                <button type="button" class="btn btn-info">Logout</button></a>
                </li>
              </ul>
            
            <?php else: ?>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="login">
                  <button type="button" class="btn btn-info">Login</button></a>
                </li>
              </ul>
            
          <?php endif; ?>

        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>