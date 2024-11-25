<?php
include_once "../shared/config.php";
include_once "../shared/head.php";

$selectCustomers = "SELECT id, first_name, last_name FROM customers";
$customers = mysqli_query($connect, $selectCustomers);

$selectProducts = "SELECT id, title FROM products";
$products = mysqli_query($connect, $selectProducts);

if(isset($_POST['submitOrder'])){
    $amount = $_POST['amount'];
    $is_taxable = $_POST['is_taxable'];
    $discount = $_POST['discount'];
    $date_received = date("Y-m-d H:i:s");
    $date_delivered = date("Y-m-d H:i:s");
    $notes = !empty($_POST['notes']) ? $_POST['notes'] : 'No notes';
    $customer_id = $_POST['customer_id'];
    $product_id = $_POST['product_id'];

    $insertOrder = "INSERT INTO orders values (null, $amount, '$is_taxable', $discount, '$date_received', '$date_delivered', '$notes', $product_id, $customer_id)";

    $doneInsert = mysqli_query($connect, $insertOrder);

    header("Location: /yasmin/tasks/study/orders/index.php");

    $_SESSION['message'] = "Insert Order Successfully";

}

?>

<div class="container col-6">
    <div class="card m-2">
            <h5 class="m-3">
                CREATE NEW Order
                <a href="/yasmin/tasks/study/orders/" class="btn btn-light float-end text-dark fs-5 fw-medium">SHOW</a>
            </h5>
            <div class="card-body">
                <div class="title-card">
                    <h2>Orders Of Customers</h2>
                </div>
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Order Amount: </label>
                        <input type="number" class="form-control" name="amount" placeholder="Please, Enter Order Amount.">
                    </div>
                    <div class="form-group">
                        <label>Is Taxable: </label>
                        <select name="is_taxable" class="form-control">
                            <option selected disabled>Please Selected</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Discount: </label>
                        <input type="number" class="form-control" name="discount" placeholder="Please, Enter Order Discount.">
                    </div>
                    <div class="form-group">
                        <label>Date Received: </label>
                        <input type="date" class="form-control" name="date_received">
                    </div>
                    <div class="form-group">
                        <label>Date Delivered: </label>
                        <input type="date" class="form-control" name="date_delivered">
                    </div>
                    <div class="form-group">
                        <label>Notes: </label>
                        <textarea class="form-control" name="notes" placeholder="Leave a comment here for us"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Customer Id: </label>
                        <select class="form-control" name="customer_id">
                            <option selected disabled>-- Select Customer --</option>
                            <?php foreach($customers as $cus): ?>
                                <option value="<?= $cus['id'] ?>">
                                    <?= $cus['first_name'] . ' ' . $cus['last_name'] ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Product Id: </label>
                        <select class="form-control" name="product_id">
                            <option selected disabled>-- Select Product --</option>
                            <?php foreach($products as $pro): ?>
                                <option value="<?= $pro['id'] ?>">
                                    <?= $pro['title']?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="d-flex justify-content-center ">
                        <button type="submit" class="btn btn-light text-dark mt-3 px-5 py-2 fw-medium text-capitalize" name="submitOrder">submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<?php 

include_once "../shared/foot.php" ?>