<?php 
include_once "../shared/config.php";
include_once "../shared/head.php";

// $select = "SELECT * FROM `customers` ORDER BY `customers`.`id` DESC ";
// $data = mysqli_query($connect, $select);

// $count = 1;

if(isset($_GET['view'])){
    $id = $_GET['view'];
    $select = "SELECT * FROM `customers` WHERE id = $id";
    $row = mysqli_fetch_assoc(mysqli_query($connect, $select));
}

if(isset($_POST['remove_image'])){
    $id = $_POST['id'];
    $old_image = $_POST['old_image'];

    unlink("./upload/$old_image"); 

    $set_def_img = "UPDATE `customers` SET image = 'default.jpg' WHERE id = $id";
    $do = mysqli_query($connect, $set_def_img);
    header("Location: /yasmin/tasks/study/customers/view.php?view=$id");
}
?>

<div class="container col-md-4">
    <h5 class="m-3"> SHOW CUSTOMER: <?= $row['id'] ?></h5>
    <div class="card m-2">
        <img src="./upload/<?= $row['image'] ?>" class="img-fluid img-top">
        <?php if($row['image'] != 'default.jpg'): ?>
            <form method="POST">
                <input type="hidden" name="id" value="<?= $row['id'] ?>">
                <input type="hidden" name="old_image" value="<?= $row['image'] ?>">
                <button name="remove_image" class="btn btn-danger w-100">remove image</button>
            </form>
        <?php endif; ?>

        <div class="card-body">
            <h6>Full Name: <?= $row['first_name'] . " " . $row['last_name'] ?></h6>
            <hr>
            <h6>Email: <?= $row['email'] ?></h6>
            <hr>
            <h6>Password: <?= $row['password'] ?></h6>
            <hr>
            <h6>Age: <?= $row['age'] ?></h6>
            <hr>
            <h6>Phone: <?= $row['phone'] ?></h6>
            <hr>
            <h6>Country: <?= $row['country'] ?></h6>
            <hr>
            <h6>Address: <?= $row['address'] ?></h6>
            <hr>
            <h6>Gender: <?= $row['gender'] ?></h6>
            <hr>
            <a href="./index.php" class="btn btn-light d-flex justify-content-center text-dark px-5 fs-5 fw-medium">BACK</a>
        </div>
    </div>
</div>

<?php include_once "../shared/foot.php"; ?>