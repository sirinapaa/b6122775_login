<?php include('server.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <title>USER REGISTRATION</title>
    <link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>
    <div class="header">
        <h2>Register</h2>
        </div>
    <form method="post" action="register.php">
        <!-- display validation -->
        <?php include('errors.php'); ?>
        <div class="input-group">
            <label>Username</label>
            <input type="text" name="username">
        </div>
        <div class="input-group">
            <label>Phone</label>
            <input type="text" name="phone">
        </div>
        <div class="input-group">
            <label>Email</label>
            <input type="text" name="email">
        </div>
        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password">
        </div>
        <div class="input-group">
            <button type="submit" name="register" class="btn">Register</button>
        </div>
        &nbsp;
        <p>
            Already a member? <a href="login.php">Sign in</a>
        </p>
    </form>
</body>
</html>