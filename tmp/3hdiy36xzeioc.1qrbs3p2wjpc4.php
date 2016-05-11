
<div class="container border-cont">
    <div class="row my-cont">
        <div class="col-md-6 form-custom right-border">
            <?php if ($success): ?>
                <div class="alert alert-success" role="alert">
                    <p> <?php echo $message; ?> </p>
                </div>
            <?php endif; ?>
            <h3>Add Team</h3>
            <form class="form" method="POST" action="addTeam">
                <div class="form-group">
                    <label for="name">School Name</label>
                    <input type="text" class="form-control" id="name" name="teamName" placeholder="Enter School Name" required>
                </div>
                <div class="form-group ">
                    <label for="mascot">School Mascot</label>
                    <input type="text" class="form-control" id="mascot" name="teamMascot" placeholder="Enter School Mascot" required>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>

            <br /><hr />

        </div>

        <div class="col-md-6 form-custom">
            <h3>Add Season</h3>
            <form class="form" method="POST" action="addSeason">
                <div class="form-group">
                    <label for="name">Season Name</label>
                    <input type="text" class="form-control" id="seasonName" name="seasonName" placeholder="Enter Season Name" required>
                </div>
                <div class="form-group ">
                    <label for="mascot">Season Year</label>
                    <input type="text" class="form-control" id="seasonYear" name="seasonYear" placeholder="Enter Season Year" required>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>

            <br /><hr />
    </div>

    <div class="row"><br/><br/></div>

    <div class="row"><br/><br/></div>

</div>
