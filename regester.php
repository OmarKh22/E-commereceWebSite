<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce</title><link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Twinkle+Star&display=swap" rel="stylesheet">
</head>
<body>
    <?php include 'nav.php'; ?>
    <div class="login">
        <div class="login-container">
            <div class="login-content">
                <h2>Looks like you are noe here..!</h2>
                <h5>Please sign up to see our offers</h5>
            </div>
            <?php
            if(isset ($_GET["status"])){
                if($_GET["status"]=="error"){
                    echo "<p>Email is alrady exites</p>";
                }
            }?>
            <div class="login-form">
                
                <form method="post" action="regesterprocess.php">
                <input type="hidden" name="userType" value="customer">
                <label>Your name *</label>
                <br>
                <input type="text" name="name">
                <br>   
                <label for="">Email address *</label>
                <br>
                <input type="email" name="email">
                <br>
                <label>Password *</label>
                <br>
                <input type="password"  name="password">
                <br>
                <label for="">Password confirm *</label>
                <br>
                <input type="password"  name="password confirm">
                <br>
                <button type="submit" >Regester</button>
                <br>
                <!-- <button>Continue with Google</button>
                <br>
                <button>Continue with Facebook</button> -->
                <p>By clicking Sign in or Continue with Google, Facebook, you agree to
                    Etsy's Terms of Use and Privacy Policy. <br> Etsy may send you
                    communications; you may change your preferences in your account
                    settings. <br> We'll never post without your permission</p>
                </form>
            </div>
        </div>
    </div>
    <?php include 'footer.php'; ?>

</body>
</html>