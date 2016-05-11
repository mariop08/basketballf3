<div class="container border-cont">
	<div class="row">

        <div class="col-md-12 form-custom">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date</th>
                    <th>Points</th>
                    <th>Rebounds</th>
                    <th>Assists</th>
                    <th>Steals</th>
                    <th>Blocks</th>
                </tr>
                </thead>
                <tbody>

                <?php foreach (($playerGames?:array()) as $item): ?>
                    <tr>
                        <td> <?php echo $item['first_name']; ?> </td>
                        <td> <?php echo $item['last_name']; ?> </td>
                        <td> <?php echo $item['date']; ?> </td>
                        <td> <?php echo $item['points']; ?> </td>
                        <td> <?php echo $item['rebounds']; ?> </td>
                        <td> <?php echo $item['assists']; ?> </td>
                        <td> <?php echo $item['steals']; ?> </td>
                        <td> <?php echo $item['blocks']; ?> </td>
                    </tr>
                <?php endforeach; ?>

                </tbody>
            </table>
        </div>
    </div>       
</div>