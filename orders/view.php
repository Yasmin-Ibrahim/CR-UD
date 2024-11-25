<?php 
include_once "../shared/config.php";
include_once "../shared/head.php";

if(isset($_GET['view'])){
    $id = $_GET['view'];
    $select = "SELECT * FROM `join_all_data` WHERE order_id = $id";
    $row = mysqli_fetch_assoc(mysqli_query($connect, $select));
}

?>

<div class="container col-md-4">
    <h5 class="m-3"> SHOW ORDER: <?= $row['order_id'] ?></h5>
    <div class="card m-2">
        <div class="card-body">
            <h6>Customer Name: <?= $row['first_name'] . ' ' . $row['last_name'] ?></h6>
            <hr>
            <h6>Customer ID: <?= $row['customer_id'] ?></h6>
            <hr>
            <h6>Email: <?= $row['email'] ?></h6>
            <hr>
            <h6>Country: <?= $row['country'] ?></h6>
            <hr>
            <h6>Address: <?= $row['address'] ?></h6>
            <hr>
            <h6>Phone: <?= $row['phone'] ?></h6>
            <hr>
            <h6>Product ID: <?= $row['product_id'] ?></h6>
            <hr>
            <h6>Product Name: <?= $row['title'] ?></h6>
            <hr>
            <h6>Price: <?= $row['price'] ?></h6>
            <hr>
            <h6>Category: <?= $row['category'] ?></h6>
            <hr>
            <h6>Amount: <?= $row['amount'] ?></h6>
            <hr>
            <h6>Date Received: <?= $row['date_received'] ?></h6>
            <hr>
            <h6>Date Delivered: <?= $row['date_delivered'] ?></h6>
            <hr>
            <a href="/yasmin/tasks/study/orders/customer_orders.php?customer_id=<?= $row['customer_id'] ?>"
                class="btn btn-light d-flex justify-content-center text-dark px-5 fs-5 fw-medium">BACK</a>
        </div>
    </div>
</div>

<?php include_once "../shared/foot.php"; ?>