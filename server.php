<?php
    $username = "";
    $phone = "";
    $email = "";
    $errors = array();

    
    $db = mysqli_connect('localhost','root','','useraccount');

    
    if (isset($_POST['register'])){
        $username = mysqli_real_escape_string($db, $_POST['username']);
        $phone = mysqli_real_escape_string($db, $_POST['phone']);
        $email = mysqli_real_escape_string($db, $_POST['email']);
        $password = mysqli_real_escape_string($db, $_POST['password']);

        if(empty($username)){
            array_push($errors, "username is required");
        }
        if(empty($phone)){
            array_push($errors, "phone is required");
        }
        if(empty($email)){
            array_push($errors, "email is required");
        }
        if(empty($password)){
            array_push($errors, "password is required");
        }
        
        if(count($errors) == 0){
            $password = md5($password);
            $sql = "INSERT INTO users (username, phone, email, password ) VALUES('$username','$phone','$email','$password')";
            mysqli_query($db, $sql);
            $_SESSION['username'] = $username;
            $_SESSION['success'] = "You are now logged in";
            header('location: index.php');
        }
    }

    //log user in from login page
    if(isset($_POST['login'])){
        $username = mysqli_real_escape_string($db, $_POST['username']);
        $password = mysqli_real_escape_string($db, $_POST['password']);

        if(empty($username)){
            array_push($errors, "Username is required");
            
        }
        if(empty($password)){
            array_push($errors, "password is required");
        }

        if(count($errors) == 0){
            $password = md5($password);
            $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
            $result = mysqli_query($db, $query);
            if(mysqli_num_rows($result) == 1){
                //log user in
                $_SESSION['username'] = $username;
                $_SESSION['success'] = "You are now logged in";
                header('location: index.php');
            }else{
                array_push($errors, "wrong username/password combination");
                
            }
        }
    }

    //logout
    if(isset($_GET['logout'])){
        session_destroy();
        unset($_SESSION['username']);
        header('location: login.php');
    }
?>