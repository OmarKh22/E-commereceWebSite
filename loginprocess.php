<?php
session_start();
if(isset($_POST['email']))
{
    extract($_POST);
    include 'database.php';
    $password=  $_POST['password']  ;
    $sql=mysqli_query($conn,"SELECT * FROM users where E_mail='$email' and Password='$password'");
    $row  = mysqli_fetch_array($sql);
    if(is_array($row))
    {
        $_SESSION["User_ID"] = $row['User_ID'];
        $_SESSION["E_mail"]=$row['E_mail'];
        $_SESSION["Name"]=$row['Name'];
        
        header('Location: http://localhost/E-commerce/index.php'); 
    }
    else
    {
        echo "Invalid Email ID/Password";
    }
}
?>