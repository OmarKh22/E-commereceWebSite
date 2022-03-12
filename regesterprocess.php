<?php
$name= $_POST['name']; 
$email= $_POST['email']; 
$pass= $_POST['password']; 
$userType= $_POST['userType'];

include("database.php");

$sql=mysqli_query($conn,"SELECT * FROM users where E_mail='$email'");

if(mysqli_num_rows($sql) > 0)
{
     echo "Email Id Already Exists"; 
    header ("Location: regester.php?status=error");

	exit;
}
else if(isset($_POST['email']))
 {
    
    
    $query="INSERT INTO users ( Name, E_mail , Password, User_type ) VALUES ('$name', '$email', '$pass' , '$userType')";
    
    $sql=mysqli_query($conn,$query) or die("Could Not Perform the Query");
    
    mysqli_close($conn);
    header ("Location: http://localhost/E-commerce/signin.php?status=success");
    
 
 }

 