<div class="container">
    <div class="row"></div>
    <div class="jumbotron">
      <h1 class="text-center">Add A Game</h1>
      <h3 class="text-center">Make sure to add the players and schools before creating a game</h3>
        <div class="container border-cont">
            <div class="row">

                    <div class="col-md-12 form-custom">
                    <?php if ($success): ?>
                        <div class="alert alert-success" role="alert">
                            <p> <?php echo $message; ?> </p>
                        </div>
                    <?php endif; ?>
                        <h3>Add Game</h3>
                        <form class="form" method="POST" action="addGame">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Season</label>
                                    <select class="form-control" name="gameSeason" id="gameSeason">
                                        <?php foreach (($seasons?:array()) as $item): ?>
                                            <option value="<?php echo $item['idSeason']; ?>"> <?php echo $item['season_name']; ?> <?php echo $item['season_year']; ?> </option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                  <script>
                                  $(function() {
                                    $( "#gameDate" ).datepicker({ dateFormat: 'yy-mm-dd' });
                                  });
                                  </script>
                                <div class="form-group">
                                    <label for="gameDate">Date</label>
                                    <input type="text" class="form-control" id="gameDate" name="gameDate" placeholder="Date" required>
                                </div>
                                <div class="form-group ">
                                    <label for="name">Opponent</label>
                                    <select class="form-control" name="gameOpponentTeam" id="gameOpponentTeam">
                                        <?php foreach (($teams?:array()) as $item): ?>
                                            <option value="<?php echo $item['opponent_id']; ?>"> <?php echo $item['opponent_name']; ?> </option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label for="gameResult">Result</label>
                                    <select class="form-control" name="gameResult" id="gameResult">
                                        <option value="W"> Win  </option>
                                        <option value="L"> Loss </option>
                                        <option value="D"> Draw </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="homeScore">Home Score</label>
                                    <input type="text" class="form-control" id="homeScore" name="gameHomeScore" placeholder="Home Score" required>
                                </div>
                                <div class="form-group">
                                    <label for="opponentScore">Opponent Score</label>
                                    <input type="text" class="form-control" id="opponentScore" name="gameOpponentScore" placeholder="Opponent Score" required>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary  col-md-offset-5 custom-btn">Submit</button>
                        </form>

                    </div>
                </div>
        </div>
    </div>
</div>
