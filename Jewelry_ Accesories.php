<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jewelry&Accesories</title>
    <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Twinkle+Star&display=swap" rel="stylesheet">
</head>
<body>
  <?php include 'nav.php'; ?>
  <div class="products">
    <h2>Popular Gifts Right Now</h2>
    <div class="container">
      <div class="row">
        <?php session_start();
        include 'database.php';
        $sql = mysqli_query($conn, "SELECT Name FROM users where 1=1");
        $row  = mysqli_fetch_array($sql);
        var_dump($row);
        foreach($row as $x) {
          var_dump($x);

        ?>

          <div class="col-4">
            <div class="products-content">
              <div class="card" style="width: 18rem;">
                <img src="imges/post-2" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="img-name"><?php echo $x['Name'] ?></h5>
                  <p class="img-text"><?php echo $x['Description'] ?></p>
                  <h4 class="price">100$</h4>
                  <a href="cart.php?id=<?php echo $x['Product_ID'] ?>" class="btn btn-primary">Add To cart</a>
                </div>
              </div>
            </div>
          </div>
        <?php
        }
        ?>
      </div>
    </div>
  </div>
  <?php include 'footer.php'; ?>

    
</body>
</html>