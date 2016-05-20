<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 form-custom">

            <?php if ($error): ?>
                <div class="alert alert-danger" role="alert">
                    <p> <?php echo $error; ?> </p>
                </div>
            <?php endif; ?>

            <h3>Login</h3><br />

            <form method="POST" action="authenticate">  <!-- Add action and method here-->
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <label for="pswd">Password</label>
                    <input type="password" class="form-control" id="pswd" name="pswd" placeholder="Password" required>
                </div>
                <input type="submit" class="btn btn-primary custom-btn" value="Login">
            </form>

        </div>
    </div>
</div>