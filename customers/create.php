<?php
include_once "../shared/config.php";
include_once "../shared/head.php";

if(isset($_POST['submitCustomer'])){
    $_SESSION['message'] = "Insert Customer Successfully";
}

?>

<div class="container col-6">
    <div class="card m-2">
            <h5 class="m-3">
                CREATE NEW
                <a href="./index.php" class="btn btn-light float-end text-dark fs-5 fw-medium">SHOW</a>
            </h5>
            <div class="card-body">
                <div class="title-card">
                    <h2>Customers</h2>
                </div>
                <form action="./customer_request.php" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>first name: </label>
                        <input type="text" class="form-control" name="first_name" placeholder="Please, Enter Your Name.">
                    </div>
                    <div class="form-group">
                        <label>last name: </label>
                        <input type="text" class="form-control" name="last_name" placeholder="Please, Enter Your Name.">
                    </div>
                    <div class="form-group">
                        <label>email: </label>
                        <input type="mail" class="form-control" name="email" placeholder="Please, Enter Your Email.">
                    </div>
                    <div class="form-group">
                        <label>Password: </label>
                        <input type="password" class="form-control" name="password" placeholder="Please, Enter Your Password.">
                    </div>
                    <div class="form-group">
                        <label>age: </label>
                        <input type="number" class="form-control" name="age" placeholder="Please, Enter Your Age.">
                    </div>
                    <div class="form-group">
                        <label>phone: </label>
                        <input type="number" class="form-control" name="phone" placeholder="Please, Enter Your Number.">
                    </div>
                    <div class="form-group">
                        <label>country: </label>
                        <input type="text" class="form-control" name="country" placeholder="Please, Enter Your Country.">
                    </div>
                    <div class="form-group">
                        <label>address: </label>
                        <input type="text" class="form-control" name="address" placeholder="Please, Enter Your Address.">
                    </div>
                    <div class="form-group">
                        <label>Image: </label>
                        <input type="file" class="form-control" name="image" accept="image/*">
                    </div>
                    <div class="form-group">
                        <label>gender: </label>
                        <select name="gender" class="form-control">
                            <option selected disabled>Choose Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>
                    <div class="d-flex justify-content-center ">
                        <button type="submit" class="btn btn-light text-dark mt-3 px-5 py-2 fw-medium text-capitalize" name="submitCustomer">submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<?php include_once "../shared/foot.php" ?>