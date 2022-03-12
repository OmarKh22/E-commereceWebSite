

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>E-commerce</title>
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Twinkle+Star&display=swap" rel="stylesheet">
</head>

<body>
  <!-- start navbar2 -->
  <?php include 'nav.php'; ?>
  <div class="imgg">
    <!-- <img src="imges/bigsale.jfif" alt="big sale"> -->
  </div>
  <!-- end navbar2 -->
  
  <!-- start products -->
  <div class="products">
    <h2>Popular Gifts Right Now</h2>
    <div class="container">
      <div class="row">
      <?php 
        
        include 'database.php';
       
      
        $sql = mysqli_query($conn, 'SELECT * FROM products where Product_ID < 10');
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
       <?php } ?>
        
      </div>
      
    </div>
  </div>

  <!-- end products -->
  <!-- start description -->
  <div class="desc">
    <h2>What is <span>NEMO</span> ? </h2>
    <h3>Read Our Wonderfully weird story</h3>
    <div class="desc_content">
      <div>
        <h5>A community doing good</h5>
        <p>Etsy is a global online marketplace, where people come together to make, sell,
          buy, and collect unique items. We’re also a community pushing
          for positive change for small businesses, people, and the planet.
          Here are some of the ways we’re making a positive impact, together.</p>
      </div>
      <div>
        <h5>A community doing good</h5>
        <p>Etsy is a global online marketplace, where people come together to make, sell,
          buy, and collect unique items. We’re also a community pushing
          for positive change for small businesses, people, and the planet.
          Here are some of the ways we’re making a positive impact, together.</p>
      </div>
    </div>
  </div>
  <!-- end description -->

  <!-- start footer -->
  <?php include 'footer.php'; ?>

  <!-- end footer -->




  <script src="js/main.js"></script>
</body>

</html>