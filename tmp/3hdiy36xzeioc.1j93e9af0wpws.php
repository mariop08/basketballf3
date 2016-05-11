<div class="container border-cont">
	<div class="row">

        <div class="col-md-12 form-custom">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Number</th>
                    <th>Class</th>
                </tr>
                </thead>
                <tbody>

                <?php foreach (($players?:array()) as $item): ?>
                    <tr>
                        <td> <?php echo $item['first_name']; ?> </td>
                        <td> <?php echo $item['last_name']; ?> </td>
                        <td> <?php echo $item['jersey_number']; ?> </td>
                        <td> <?php echo $item['class']; ?> </td>
                    </tr>
                <?php endforeach; ?>

                </tbody>
            </table>
        </div>
    </div>       
</div>