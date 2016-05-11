<div class="container border-cont">
	<div class="row">

        <div class="col-md-12 form-custom">
        	<table class="table table-hover">
                <thead>
                <tr>
                    <th>Season</th>
                    <th>Year</ht>
                    <th>Date</th>
                    <th>Opponent</th>
                    <th>Result</th>
                    <th>Home Score</th>
                    <th>Opponent Score</th>
                </tr>
                </thead>
                <tbody>

                <?php foreach (($game?:array()) as $item): ?>
                <tr>
                    <td> <?php echo $item['season_name']; ?> </td>
                    <td> <?php echo $item['season_year']; ?> </td>
                    <td> <?php echo $item['date']; ?> </td>
					<td> <?php echo $item['opponent_name']; ?> </td>
                    <td> <?php echo $item['result']; ?> </td>
                    <td> <?php echo $item['home_score']; ?> </td>
                    <td> <?php echo $item['opponent_score']; ?> </td>
                </tr>
                <?php endforeach; ?>

                </tbody>
            </table>
        </div>
    </div>       
</div>