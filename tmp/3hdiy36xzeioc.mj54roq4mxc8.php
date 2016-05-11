<div class="container border-cont">
	<div class="row">

        <div class="col-md-12 form-custom">
        	<table class="table table-hover">
                <thead>
                <tr>
                    <th>School</th>
                    <th>Mascot</th>
                </tr>
                </thead>
                <tbody>

                <?php foreach (($teams?:array()) as $item): ?>
                <tr>
                    <td> <?php echo $item['opponent_name']; ?> </td>
                    <td> <?php echo $item['opponent_mascot']; ?> </td>
                </tr>
                <?php endforeach; ?>

                </tbody>
            </table>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Year</th>
                </tr>
                </thead>
                <tbody>

                <?php foreach (($seasons?:array()) as $item): ?>
                    <tr>
                        <td> <?php echo $item['season_name']; ?> </td>
                        <td> <?php echo $item['season_year']; ?> </td>
                    </tr>
                <?php endforeach; ?>

                </tbody>
            </table>
            </div>
        </div>
        </div>
    </div>       
</div>