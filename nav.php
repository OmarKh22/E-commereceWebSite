  <!-- start navbar1 -->
  <div class="nav1">
    <div class="nav1-content">
        <!-- <h2 href="index.php"> <span class="logo" >NEMO</span> </h2> -->
        <!-- <a href="index.php"><span class="logo" >NEMO</span></a> -->
        <a href="index.php" class="nemo">NEMO</a>
        <input type="text">
        <a href=""><i class="fas fa-search"></i></a>
        <div class="links">
          
            <a href="signin.php"><i class="fas fa-user"></i> Hello, Sign In</a>
            <a href="cart.php"><i class="fas fa-shopping-cart"></i>Cart</a>
        </div>
        <?php
  session_start();
    
    if(isset($_SESSION["User_ID"])){
         echo $_SESSION["Name"]; 
           }
           ?>
    </div>
</div>
<!-- end navbar1 -->

<!-- start navbar2 -->
<div class="nav2">
<div class="nav2-content">
    <ul>
        <li><a href="category.php?cat_id=1">Jewelry& Accesories</a></li>
        <li><a href="category.php?cat_id=2">Sales</a></li>
        <li><a href="category.php?cat_id=3">Home& Living</a></li>
        <li><a href="category.php?cat_id=5">Clothing& Shoes</a></li>
        <li><a href="category.php?cat_id=4">Sports,Books& More</a></li>
    </ul>
    
   
</div>
</div>