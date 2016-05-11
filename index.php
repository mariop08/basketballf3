<?php
$f3 = require('/fatfree-master/lib/base.php');

$f3->set('DEBUG',3);
if ((float)PCRE_VERSION<7.9)
	trigger_error('PCRE version is out of date');

$f3->set('DB',
new DB\SQL(
    'mysql:host=localhost;port=3306;dbname=mydb',
    'testuser',
    '123456'
)
);

$f3->set('logger',$logger = new Log('records.log'));


$f3->route('GET /',
    function($f3) {
    	$game = new DB\SQL\Mapper($f3->get('DB'),'gameCombined');
		$f3->set('game', $game->find());

		$f3->set('title', 'CSUF Basketball - Home');
		$f3->set('content', 'main.html');
		echo \Template::instance()->render('template.html');
    }
);
$f3->route('GET /addGames',
	function($f3) {

		if($f3->exists('SESSION.user'))
		{
			if($f3->exists('SESSION.message'))
			{

				$f3->set('success', 'set');
				$f3->set('message', $f3->get('SESSION.message'));
				$f3->clear('SESSION.message');
			}
			$season = new DB\SQL\Mapper($f3->get('DB'),'season');
			$team = new DB\SQL\Mapper($f3->get('DB'),'opponents');

			$f3->set('teams', $team->find());
			$f3->set('seasons', $season->find());

			$f3->set('title', 'CSUF Basketball - Add Games');
			$f3->set('content', 'addGames.html');
			echo \Template::instance()->render('template.html');
		}
		else{

			$f3->set('SESSION.message', 'Please login to access administrative features');
			$f3->reroute('/login');
		}


	}
);
$f3->route('GET /addPlayers',
	function($f3) {

		if ($f3->exists('SESSION.user')) {
			if ($f3->exists('SESSION.message')) {

				$f3->set('success', 'set');
				$f3->set('message', $f3->get('SESSION.message'));
				$f3->clear('SESSION.message');
			}

			$f3->set('title', 'CSUF Basketball - Add Players');
			$f3->set('content', 'addPlayers.html');
			echo \Template::instance()->render('template.html');
		} else {

			$f3->set('SESSION.message', 'Please login to access administrative features');
			$f3->reroute('/login');
		}
	}
);
$f3->route('GET /addPlayerToGame',
	function($f3) {

		if ($f3->exists('SESSION.user')) {
			if ($f3->exists('SESSION.message')) {

				$f3->set('success', 'set');
				$f3->set('message', $f3->get('SESSION.message'));
				$f3->clear('SESSION.message');
			}

			$player = new DB\SQL\Mapper($f3->get('DB'), 'player');
			$game = new DB\SQL\Mapper($f3->get('DB'), 'game');
			$season = new DB\SQL\Mapper($f3->get('DB'), 'season');

			$f3->set('players', $player->find());
			$f3->set('game', $game->find());
			$f3->set('seasons', $season->find());

			$f3->set('title', 'CSUF Basketball - Add Player To Game');
			$f3->set('content', 'addPlayerToGame.html');
			echo \Template::instance()->render('template.html');
		} else {

			$f3->set('SESSION.message', 'Please login to access administrative features');
			$f3->reroute('/login');
		}
	}
);
$f3->route('GET /addTeams',
	function($f3) {

		if ($f3->exists('SESSION.user')) {
			if ($f3->exists('SESSION.message')) {

				$f3->set('success', 'set');
				$f3->set('message', $f3->get('SESSION.message'));
				$f3->clear('SESSION.message');
			}

			$f3->set('title', 'CSUF Basketball - Add Teams');
			$f3->set('content', 'addTeams.html');
			echo \Template::instance()->render('template.html');
		} else {

			$f3->set('SESSION.message', 'Please login to access administrative features');
			$f3->reroute('/login');
		}
	}

);
$f3->route('GET /viewGames',
	function($f3) {
		$game = new DB\SQL\Mapper($f3->get('DB'),'gameCombined');
		$f3->set('game', $game->find());

		$f3->set('title', 'CSUF Basketball - View Games');
		$f3->set('content', 'viewGames.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /viewPlayers',
	function($f3) {
		$player = new DB\SQL\Mapper($f3->get('DB'),'player');
		$f3->set('players', $player->find());

		$f3->set('title', 'CSUF Basketball - View Players');
		$f3->set('content', 'viewPlayers.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /viewTeams',
	function($f3) {
		$season = new DB\SQL\Mapper($f3->get('DB'),'season');	
		$team = new DB\SQL\Mapper($f3->get('DB'),'opponents');
		$f3->set('teams', $team->find());
		$f3->set('seasons', $season->find());

		$f3->set('title', 'CSUF Basketball - View Teams');
		$f3->set('content', 'viewTeams.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /viewPlayersGames',
	function($f3) {	
		$playerGames = new DB\SQL\Mapper($f3->get('DB'),'playergames');
		$f3->set('playerGames', $playerGames->find());

		$f3->set('title', 'CSUF Basketball - View Player Games');
		$f3->set('content', 'viewPlayersGames.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /about',
	function($f3) {

		$f3->set('content', 'login.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /login',
	function($f3) {

		if($f3->exists('SESSION.message'))
		{
			$f3->set('error',  $f3->get('SESSION.message'));
			$f3->clear('SESSION.message');
		}

		$f3->set('content', 'login.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /logout',
	function($f3) {

		if($f3->exists('SESSION.user'))
		{
			$f3->set('SESSION.message', 'Logged Out Successfully');
			$f3->clear('SESSION.user');
			$f3->reroute('login');
		}

		$f3->reroute('login');
	}
);
$f3->route('POST /authenticate',
	function($f3) {

		//Get info from POST and clean
		$userEmail = $f3->clean($f3->get('POST.email'));
		$userPassword = $f3->clean($f3->get('POST.pswd'));

		$user= new DB\SQL\Mapper($f3->get('DB'),'administrators');

		$auth = new \Auth($user, array('id' => 'email', 'pw' => 'password'));

		$login_result = $auth->login($userEmail,$userPassword);
		
		if($login_result)
		{
			$f3->get('logger')->write('User:'.$userEmail." logged in. ");
			$f3->set('SESSION.user', $userEmail);

			$f3->reroute('/addTeams');
		}
		else
		{

			$f3->set('SESSION.message', 'Incorrect Login Information, Please Try Again');
			$f3->reroute('/login');
		}

	}
);
$f3->route('POST /addTeam',
	function($f3) {

		$teamName = $f3->clean($f3->get('POST.teamName'));
		$teamMascot = $f3->clean($f3->get('POST.teamMascot'));

		$f3->get('logger')->write('New Team Added: '.$teamName.', '.$teamMascot);

		$team = new DB\SQL\Mapper($f3->get('DB'),'opponents');

		$team->opponent_name = $teamName;
		$team->opponent_mascot = $teamMascot;
		$team->save();

		$f3->set('SESSION.message', 'Team Added successfully');

		$f3->reroute('/addTeams');

	}
);
$f3->route('POST /addSeason',
	function($f3) {

		$seasonName = $f3->clean($f3->get('POST.seasonName'));
		$seasonYear = $f3->clean($f3->get('POST.seasonYear'));

		$f3->get('logger')->write('New Season Added: '.$seasonName.','.$seasonYear);

		$season = new DB\SQL\Mapper($f3->get('DB'),'season');

		$season->season_name = $seasonName;
		$season->season_year = $seasonYear;
		$season->save();

		$f3->set('SESSION.message', 'Season Added successfully');

		$f3->reroute('/addTeams');


	}
);
$f3->route('POST /addPlayer',
	function($f3) {

		$player = new DB\SQL\Mapper($f3->get('DB'),'player');

		$player->first_name = $f3->clean($f3->get('POST.playerFName'));
		$player->last_name = $f3->clean($f3->get('POST.playerLName'));
		$player->jersey_number= $f3->clean($f3->get('POST.playerNumber'));
		$player->class= $f3->clean($f3->get('POST.playerClass'));
		$player->save();

		$f3->set('SESSION.message', 'Player Added successfully');

		$f3->reroute('/addPlayers');

	}
);

$f3->route('POST /addPlayerToGame',
	function($f3) {

		$game = $f3->clean($f3->get('POST.gamePlayed'));
		$season = $f3->clean($f3->get('POST.season'));
		$player = $f3->clean($f3->get('POST.player'));
		$points = $f3->clean($f3->get('POST.points'));
		$rebounds = $f3->clean($f3->get('POST.rebounds'));
		$assists = $f3->clean($f3->get('POST.assists'));
		$steals = $f3->clean($f3->get('POST.steals'));
		$blocks = $f3->clean($f3->get('POST.blocks'));

		$stats = new DB\SQL\Mapper($f3->get('DB'),'stats');

		$f3->get('logger')->write('Player Added To Game: '.$game.', '.$player.', '.$points.', '.$rebounds.', '.$assists.', '.$steals.', '.$blocks.', ');

		$stats->PlayerID = $player;
		$stats->GameID = $game;
		$stats->SeasonID = $season;
		$stats->points = $points;
		$stats->rebounds = $rebounds;
		$stats->assists = $assists;
		$stats->steals = $steals;
		$stats->blocks = $blocks;
		$stats->save();

		$f3->set('SESSION.message', 'Player Added To Game successfully');

		$f3->reroute('/addPlayerToGame');

	}
);


$f3->route('POST /addGame',
	function($f3) {
		$season = $f3->clean($f3->get('POST.gameSeason'));
		$date = $f3->clean($f3->get('POST.gameDate'));
		$opponent = $f3->clean($f3->get('POST.gameOpponentTeam'));
		$result = $f3->clean($f3->get('POST.gameResult'));
		$homeScore = $f3->clean($f3->get('POST.gameHomeScore'));
		$opponentScore = $f3->clean($f3->get('POST.gameOpponentScore'));

		$f3->get('logger')->write('New Game Added: '.$season.', '.$date.', '.$opponent.', '.$result.', '.$homeScore.', '.$opponentScore.', ');

		$day1 = strtotime($date);

		$game = new DB\SQL\Mapper($f3->get('DB'),'game');

		$game->opponent = $opponent;
		$game->result = $result;
		$game->home_score = $homeScore;
		$game->opponent_score = $opponentScore;
		$game->season_id = $season;
		$game->date = $date;

		$game->save();

		$f3->set('SESSION.message', 'Game Added successfully');

		$f3->reroute('/addGames');

	}
);

$f3->run();
