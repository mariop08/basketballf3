<div class="container">
    <div class="row"></div>
    <div class="jumbotron">
         <h1 class="text-center">Cal State Fullerton Athletics</h1>
         <img class="img-responsive center-block" src="images/titans.png"/>
         <h3 class="text-center">Men's Basketball</h3>
	</div>
    <div>
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
    </div>
</div>