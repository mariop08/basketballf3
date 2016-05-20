#CSUF Basketball App
###Mario Pena & Burton Lister Aley

Libraries and Frameworks: Bootstrap, Lavish Bootstrap, F3(Fat-Free Framework)

Database operations are handled with F3 SQL mapper
####Example of Hydrating SQL Mapper
```
$user = new DB\SQL\Mapper($f3->get('DB'),'administrators');
```

##GET Routes
URL|Description
----|----
/addGames|Form page to add new Games
/addPlayers|Form page to add Players
/addPlayerToGame|Form page to add Player to a specific Game
/addTeams|Form page to add Seasons and Teams
/viewGames|End user page of Game information
/viewTeams|End user page of Team information
/viewPlayersGames|End user page of Player specific information e.g shots assists
/login|End user form page for admins to enter login information
/logout|Handles the removal of SESSION variable and logout function


##POST Routes
URL|Description
---|-----------
/authenticate|Handles the authentication and SESSION assignment to a given admin
/addTeam|Handles the insertion of Team records into the database with an ORM
/addSeason|Handles the insertion of Season records into the database with an ORM
/addPlayer|Handles the insertion of Player records into the database with an ORM
/addPlayerToGame|Handles the insertion of Stat records into the database with an ORM
/addGame|Handles the insertion of Game records into the database with an ORM