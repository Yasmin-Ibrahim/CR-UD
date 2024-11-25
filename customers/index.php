<?php 
include_once "../shared/config.php";
include_once "../shared/head.php";

$select = "SELECT * FROM `customers` ORDER BY `customers`.`id` DESC ";
$data = mysqli_query($connect, $select);

$count = 1;

if(isset($_GET['delete'])){
    $id = $_GET['delete'];

    $select_del = "SELECT * FROM `customers` WHERE id = $id";
    $data_del = mysqli_query($connect, $select_del);
    $row_del = mysqli_fetch_assoc($data_del);
    $old_image = $row_del['image'];

    if($old_image != 'default.jpg'){
        unlink("./upload/$old_image");
    }

    $del = "DELETE FROM customers WHERE id = $id ";
    mysqli_query($connect, $del);

    header("location: /yasmin/tasks/study/customers/index.php");
}

if(isset($_GET['clear'])){
    session_unset();
    session_destroy();
    header("Location: /yasmin/tasks/study/customers/index.php");
}
?>

<div class="container col-md-6">
    <div class="card m-2">
            <h5 class="m-3">
                LIST ALL CUSTOMER TABLE
                <a href="./create.php" class="btn btn-light float-end text-dark fs-5 fw-medium">CREATE NEW</a>
            </h5>
            <?php if(isset($_SESSION['message'])): ?>
                <div class="alert alert-success">
                    <?= $_SESSION['message'] ?>
                    <a href="/yasmin/tasks/study/customers/index.php?clear=done" value="done" name="clear" class="btn-close float-end" aria-label="Close"></a>
                </div>
            <?php endif; ?>
            <div class="card-body">
                <form action="./search.php" method="post">
                    <div class="form-group my-4">
                        <div class="row">
                            <div class="col-md-10">
                                <input id="myInput" type="text" placeholder="Search By Name or Phone" class="form-control my-0" name="search-value">
                            </div>
                            <div class="col-md-2">
                                <div class="d-grid">
                                    <button class="btn btn-info" name="search">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <table id="myTable" class="table txet-center">
                    <thead>
                        <tr class=" text-capitalize">
                            <th>id</th>
                            <th>full name</th>
                            <th>phone</th>
                            <th colspan="4">action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($data as $item): ?>
                            <tr>
                                <td><?= $count++ ?></td>
                                <td><?= $item['first_name'] . '  ' . $item['last_name'] ?></td>
                                <td><?= $item['phone'] ?></td>
                                <td>
                                    <a href="/yasmin/tasks/study/orders/customer_orders.php?customer_id=<?= $item['id'] ?>">His Order</a>
                                </td>
                                <td>
                                    <a href="/yasmin/tasks/study/customers/view.php?view=
                                        <?= $item['id'] ?>">
                                            <i class="text-info fa-solid fa-eye"></i>
                                    </a>
                                </td>
                                <td>
                                    <a onclick = "return confirm('Are You Sure From The Delete Operation?')" href="/yasmin/tasks/study/customers/index.php?delete=
                                    <?= $item['id'] ?>">
                                        <i class="text-danger fa-solid fa-trash"></i>
                                </a>
                                </td>
                                <td>
                                    <a href="/yasmin/tasks/study/customers/update.php?edit=
                                    <?= $item['id'] ?>">
                                        <i class="text-warning fa-solid fa-pen-to-square"></i>
                                        </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

<?php
if(isset($_SESSION['message'])){
    echo "<script>
        setTimeout(() => {
            window.location.replace('/yasmin/tasks/study/customers/index.php?clear=done');
        }, 2000);
    </script>";
}

include_once "../shared/foot.php"; ?>