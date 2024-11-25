<?php

include_once "../shared/config.php";

if(isset($_POST['submitCustomer'])){
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $age = $_POST['age']; 
    $phone = $_POST['phone']; 
    $country = $_POST['country']; 
    $address = $_POST['address'];
    $gender = $_POST['gender'];

    // code image 
    $image_name = "default.jpg";
    if(!empty($_FILES['image']['name'])){
        $image_name = rand(0,255) . rand(0,255) . $_FILES['image']['name'];
        $image_tmp = $_FILES['image']['tmp_name'];
        $location = "./upload/$image_name";
        move_uploaded_file($image_tmp, $location);
    }
}else{
    header("location: /yasmin/tasks/study/shared/error.php");
}

$sql = "INSERT INTO customers VALUES(NULL, '$first_name', '$last_name', '$email', '$password', $age, '$phone', '$country', '$address','$image_name', '$gender')";

$sure = mysqli_query($connect,$sql);

header("location:/yasmin/tasks/study/customers/index.php");

?>