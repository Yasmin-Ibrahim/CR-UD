<?php
include_once "../shared/config.php";
include_once "../shared/head.php";

$selectCustomers = "SELECT id, first_name, last_name FROM customers";
$customers = mysqli_query($connect, $selectCustomers);

$selectProducts = "SELECT id, title FROM products";
$products = mysqli_query($connect, $selectProducts);

if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $select = "SELECT * FROM orders WHERE id = $id";
    $data = mysqli_query($connect, $select);
    $row = mysqli_fetch_array($data);

    if(isset($_POST['update'])){
        $amount = $_POST['amount'];
        $is_taxable = $_POST['is_taxable'];
        $discount = $_POST['discount'];
        $date_received = $_POST['date_received'];
        $date_delivered = $_POST['date_delivered'];
        $customer_id = $_POST['customer_id'];
        $product_id = $_POST['product_id'];
    
        $update = "UPDATE orders SET amount = $amount, is_taxable = '$is_taxable', discount = $discount, date_received = '$date_received', date_delivered = '$date_delivered', customer_id = $customer_id, product_id = $product_id  WHERE id = $id";
    
        $add_up = mysqli_query($connect, $update);
    
        header("Location:/yasmin/tasks/study/orders/index.php");

        $_SESSION['message'] = "Update Order Successfully";
    }
}

?>

<div class="container col-6">
    <div class="card m-2">
            <h5 class="m-3">
                Update Order
                <a href="/yasmin/tasks/study/orders/" class="btn btn-light float-end text-dark fs-5 fw-medium">SHOW</a>
            </h5>
            <div class="card-body">
                <div class="title-card">
                    <h2>Orders Of Customers</h2>
                </div>
                <form method="post">
                    <div class="form-group">
                        <label>Order Amount: </label>
                        <input type="number" class="form-control" name="amount" value="<?= $row['amount'] ?>">
                    </div>
                    <div class="form-group">
                        <label>Is Taxable: </label>
                        <select class="form-control" name="is_taxable">
                            <?php if($row['is_taxable'] == 'yes'): ?>
                                <option selected value="yes">yes</option>
                                <option value="no">no</option>
                            <?php else: ?>
                                <option selected value="no">no</option>
                                <option value="yes">yes</option>
                            <?php endif; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Discount: </label>
                        <input type="number" class="form-control" name="discount" value="<?= $row['discount'] ?>">
                    </div>
                    <div class="form-group">
                        <label>Date Received: </label>
                        <input type="date" class="form-control" name="date_received" value="<?= $row['date_received'] ?>">
                    </div>
                    <div class="form-group">
                        <label>Date Delivered: </label>
                        <input type="date" class="form-control" name="date_delivered" value="<?= $row['date_delivered'] ?>">
                    </div>
                    <div class="form-group">
                        <label>Customer Id: </label>
                        <select class="form-control" name="customer_id">
                            <?php foreach($customers as $cus): ?>
                                <?php if($cus['id'] == $row['customer_id']): ?>
                                    <option selected value="<?= $cus['id'] ?>">
                                        <?= $cus['first_name'] . ' ' . $cus['last_name'] ?>
                                    </option>
                                    <?php else: ?>
                                        <option value="<?= $cus['id'] ?>">
                                            <?= $cus['first_name'] . ' ' . $cus['last_name'] ?>
                                        </option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Product Id: </label>
                        <select class="form-control" name="product_id">
                            <?php foreach($products as $pro): ?>
                                <?php if($pro['id'] == $row['product_id']): ?>
                                    <option selected value="<?= $pro['id'] ?>">
                                        <?= $pro['title']?>
                                    </option>
                                    <?php else: ?>
                                        <option value="<?= $pro['id'] ?>">
                                            <?= $pro['title']?>
                                        </option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="d-flex justify-content-center ">
                        <button type="submit" class="btn btn-warning text-dark mt-3 px-5 py-2 fw-medium text-capitalize" name="update">update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<?php 

include_once "../shared/foot.php" ?>