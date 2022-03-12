<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales</title>
    <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Twinkle+Star&display=swap" rel="stylesheet">
</head>
<body>
  <?php include 'nav.php'; ?>


  <div class="container">
      <div class="row">
      <?php 
        if(isset($_GET['cat_id'])){
            $cat_id=$_GET['cat_id'];
        include 'database.php';
        // session_start();
        $sql = mysqli_query($conn, "SELECT * FROM products where ID='$cat_id'");
        $row  = mysqli_fetch_all($sql,MYSQLI_ASSOC);
        
        foreach($row as $x) {

        ?>
        

          <div class="col-4">
            <div class="products-content">
              <div class="card" style="width: 15rem;">
                <img src="<?php echo $x['img'];?>" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="img-name"><?php echo $x['Name'] ; ?></h5>
                  <p class="img-text"><?php echo $x['Description'] ; ?></p>
                  <h4 class="price"><?php echo $x['Rate'] ; ?></h4>
                  <h4 class="price"><?php echo $x['Price'] ; ?></h4>
                  <a href="cart.php?id=<?php echo $x['Product_ID'] ; ?>  " class="btn btn-primary">Add To cart</a>
                </div>
              </div>
            </div>
          </div>
       <?php }} ?>
        
      </div>
      
    </div>





  <?php include 'footer.php'; ?>

    
</body>
</html>