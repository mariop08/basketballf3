<div class="container">
    <div class="jumbotron">
      <h1 class="text-center">Add A Player</h1>
        <div class="container border-cont">
            <div class="row">

                <div class="col-md-12 form-custom">
                    <?php if ($success): ?>
                        <div class="alert alert-success" role="alert">
                            <p> <?php echo $message; ?> </p>
                        </div>
                    <?php endif; ?>
                    <h3>Add Player</h3>
                    <form class="form-inline" method="POST" action="addPlayer">
                        <div class="form-group">
                            <label for="name">First Name</label>
                            <input type="text" class="form-control" id="name" name="playerFName" placeholder="First Name" required>
                        </div>
                        <div class="form-group ">
                            <label for="mascot">Last Name</label>
                            <input type="text" class="form-control" id="mascot" name="playerLName" placeholder="Last Name" required>
                        </div>
                        <div class="form-group ">
                            <label for="mascot">Number</label>
                            <input type="text" class="form-control" id="mascot" name="playerNumber" placeholder="Number" required>
                        </div>
                        <div class="form-group">
                            <label for="playerClass">Class</label>
                            <select class="form-control" name="playerClass" id="playerClass">
                                <option value="Freshman">Freshman</option>
                                <option value="Sophomore">Sophomore</option>
                                <option value="Junior">Junior.</option>
                                <option value="Senior">Senior</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary custom-btn-2">Submit</button>
                    </form>


                    <br /><hr />

                </div>



            </div>
        </div>
    </div>
</div>