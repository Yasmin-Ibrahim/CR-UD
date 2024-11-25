<?php
include_once "../shared/config.php";
include_once "../shared/head.php";

if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $select = "SELECT * FROM customers WHERE id = $id";
    $data = mysqli_query($connect, $select);
    $row = mysqli_fetch_array($data);

    if(isset($_POST['update'])){
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $age = $_POST['age'];
        $phone = $_POST['phone'];
        $country = $_POST['country'];
        $address = $_POST['address'];
        $gender = $_POST['gender'];

        if(empty($_FILES['image']['name'])){
            $image_name = $row['image'];
        }else{
            $image_name = rand(0,255) . rand(0,255) . $_FILES['image']['name'];
            $image_tmp = $_FILES['image']['tmp_name'];
            $location = "./upload/$image_name";
            move_uploaded_file($image_tmp, $location);

            $old_image = $row['image'];
            if($old_image != 'default.jpg'){
                unlink("./upload/$old_image");
            }
        }
    
        $update = "UPDATE customers SET first_name = '$first_name', last_name = '$last_name', email = '$email', password = '$password', age = $age, phone = '$phone', country = '$country', address = '$address', image = '$image_name', gender = '$gender' WHERE id = $id";
    
        $add_up = mysqli_query($connect, $update);
    
        header("Location:/yasmin/tasks/study/customers/index.php");

        $_SESSION['message'] = "Update Customer Successfully";

    }
}

?>

<div class="container col-6">
    <div class="card my-2">
            <h5 class="m-3">
                UPDATE NOW
                <a href="./index.php" class="btn btn-light float-end text-dark fs-5 fw-medium">BACK</a>
            </h5>
            <div class="card-body">
                <div class="title-card">
                    <h2>Customers</h2>
                </div>
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>first name: </label>
                        <input type="text" class="form-control" name="first_name" 
                            value="<?= $row['first_name'] ?>">
                    </div>
                    <div class="form-group">
                        <label>last name: </label>
                        <input type="text" class="form-control" name="last_name"
                            value="<?= $row['last_name'] ?>">
                    </div>
                    <div class="form-group">
                        <label>email: </label>
                        <input type="mail" class="form-control" name="email" 
                            value="<?= $row['email'] ?>">
                    </div>
                    <div class="form-group">
                        <label>Password: </label>
                        <input type="password" class="form-control" name="password" 
                            value="<?= $row['password'] ?>">
                    </div>
                    <div class="form-group">
                        <label>age: </label>
                        <input type="number" class="form-control" name="age" 
                            value="<?= $row['age'] ?>">
                    </div>
                    <div class="form-group">
                        <label>phone: </label>
                        <input type="number" class="form-control" name="phone"
                            value="<?= $row['phone'] ?>">
                    </div>
                    <div class="form-group">
                        <label>country: </label>
                        <input type="text" class="form-control" name="country" 
                            value="<?= $row['country'] ?>">
                    </div>
                    <div class="form-group">
                        <label>address: </label>
                        <input type="text" class="form-control" name="address" 
                            value="<?= $row['address'] ?>">
                    </div>
                    <div class="form-group">
                        <label>image: </label>
                        <img src="./upload/<?= $row['image'] ?>" width="50">
                        <input type="file" class="form-control"
                                name="image" accept="image/*">
                    </div>
                    <div class="form-group">
                        <label>gender: </label>
                        <select name="gender" class="form-control">
                        <?php if($row['gender'] == "male"): ?>
                            <option value="male" selected>Male</option>
                            <option value="female">Female</option>
                        <?php else: ?>
                            <option value="female" selected>Female</option>
                            <option value="male">Male</option>
                        <?php endif; ?>
                        </select>
                    </div>
                    <div class="d-flex justify-content-center ">
                        <button type="submit" class="btn btn-warning text-dark mt-3 px-5 py-2 fw-medium text-capitalize" name="update">update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


<?php include_once "../shared/foot.php" ?>