<div class="container">
    <div class="jumbotron">
      <h1 class="text-center">Add A Player To A Game</h1>
        <div class="container border-cont">
            <div class="row">

                <div class="col-md-12 form-custom">
                    <?php if ($success): ?>
                        <div class="alert alert-success" role="alert">
                            <p> <?php echo $message; ?> </p>
                        </div>
                    <?php endif; ?>
                    <h3>Add Player To Game</h3>
                    <form class="form" method="POST" action="addPlayerToGame">
                        <div class="col-md-6">
                            <div class="form-group ">
                                <label for="name">Game</label>
                                <select class="form-control" name="gamePlayed" id="gamePlayed">
                                    <?php foreach (($game?:array()) as $item): ?>
                                        <option value="<?php echo $item['game_id']; ?>"> <?php echo $item['date']; ?> </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group ">
                                <label for="name">Season</label>
                                <select class="form-control" name="season" id="season">
                                    <?php foreach (($seasons?:array()) as $item): ?>
                                        <option value="<?php echo $item['idSeason']; ?>"> <?php echo $item['season_name']; ?> <?php echo $item['season_year']; ?> </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">Player</label>
                                <select class="form-control" name="player" id="player">
                                    <?php foreach (($players?:array()) as $item): ?>
                                        <option value="<?php echo $item['player_id']; ?>"> <?php echo $item['first_name']; ?> <?php echo $item['last_name']; ?> </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="points">Points</label>
                                <input type="number" class="form-control" id="points" name="points" placeholder="Points" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="rebounds">Rebounds</label>
                                <input type="number" class="form-control" id="rebounds" name="rebounds" placeholder="Rebounds" required>
                            </div>
                            <div class="form-group">
                                <label for="assists">Assists</label>
                                <input type="number" class="form-control" id="assists" name="assists" placeholder="assists" required>
                            </div>
                            <div class="form-group">
                                <label for="steals">Steals</label>
                                <input type="number" class="form-control" id="steals" name="steals" placeholder="Steals" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="blocks">Blocks</label>
                                <input type="number" class="form-control" id="blocks" name="blocks" placeholder="Blocks" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary custom-btn-2">Submit</button>
                    </form>


                    <br /><hr />

                </div>



            </div>
        </div>
    </div>
</div>