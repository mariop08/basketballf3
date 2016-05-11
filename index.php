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

$f3->set('logger',$logger = new Log('stuff.log'));


$f3->route('GET /',
    function($f3) {
			$f3->set('title', 'CSUF Basketball - Home');
    		$f3->set('content', 'main.html');
    		echo \Template::instance()->render('template.html');
    }
);
$f3->route('GET /addGames',
	function($f3) {
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
);
$f3->route('GET /addPlayers',
	function($f3) {
		if($f3->exists('SESSION.message'))
		{

			$f3->set('success', 'set');
			$f3->set('message', $f3->get('SESSION.message'));
			$f3->clear('SESSION.message');
		}

		$player = new DB\SQL\Mapper($f3->get('DB'),'player');

		$f3->set('title', 'CSUF Basketball - Dashboard');
		$f3->set('players', $player->find());

		$f3->set('title', 'CSUF Basketball - Add Players');
		$f3->set('content', 'addPlayers.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /addTeams',
	function($f3) {

		if($f3->exists('SESSION.message'))
		{

			$f3->set('success', 'set');
			$f3->set('message', $f3->get('SESSION.message'));
			$f3->clear('SESSION.message');
		}

		$f3->set('title', 'CSUF Basketball - Add Teams');
		$f3->set('content', 'addTeams.html');
		echo \Template::instance()->render('template.html');
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
$f3->route('GET /about',
	function($f3) {

		$f3->set('content', 'about.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('GET /contact',
	function($f3) {
		$f3->set('content', 'contact.html');
		echo \Template::instance()->render('template.html');
	}
);
$f3->route('POST /authenticate',
	function($f3) {

		$userEmail = $f3->get('POST.email');
		$userPassword = $f3->get('POST.pswd');

		echo $userEmail.$userPassword;

		$user= new DB\SQL\Mapper($f3->get('DB'),'administrators');

		$auth = new \Auth($user, array('id' => 'email', 'pw' => 'password'));

		$login_result = $auth->login($userEmail,$userPassword);


		if($login_result)
		{
			$f3->get('logger')->write('User:'.$userEmail." logged in. ". $login_result);

			$f3->reroute('/contact');
		}
		else
		{
			$f3->reroute('/');
		}

	}
);
$f3->route('POST /addTeam',
	function($f3) {

		$teamName = $f3->get('POST.teamName');
		$teamMascot = $f3->get('POST.teamMascot');

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

		$seasonName = $f3->get('POST.seasonName');
		$seasonYear = $f3->get('POST.seasonYear');

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

		$player->first_name = $f3->get('POST.playerFName');
		$player->last_name = $f3->get('POST.playerLName');
		$player->jersey_number= $f3->get('POST.playerNumber');
		$player->class= $f3->get('POST.playerClass');
		$player->save();

		$f3->set('SESSION.message', 'Player Added successfully');

		$f3->reroute('/addPlayers');

	}
);

$f3->route('POST /addGame',
	function($f3) {
		$season = $f3->get('POST.gameSeason');
		$date = $f3->get('POST.gameDate');
		$opponent = $f3->get('POST.gameOpponentTeam');
		$result = $f3->get('POST.gameResult');
		$homeScore = $f3->get('POST.gameHomeScore');
		$opponentScore = $f3->get('POST.gameOpponentScore');

		$f3->get('logger')->write('New Game Added: '.$season.', '.$date.', '.$opponent.', '.$result.', '.$homeScore.', '.$opponentScore.', ');

		$day1 = date('Y-m-d H:i:s', $date);

		$game = new DB\SQL\Mapper($f3->get('DB'),'game');

		$game->opponent = $opponent;
		$game->result = $result;
		$game->home_score = $homeScore;
		$game->opponent_score = $opponentScore;
		$game->season_id = $opponent;
		$game->date = $day1;

		$game->save();

		$f3->set('SESSION.message', 'Game Added successfully');

		$f3->reroute('/addGames');

	}
);

$f3->run();
