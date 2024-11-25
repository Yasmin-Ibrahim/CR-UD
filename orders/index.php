<?php 
include_once "../shared/config.php";
include_once "../shared/head.php";

$select = "SELECT * FROM `orders` ORDER BY `orders`.`id` DESC ";
$data = mysqli_query($connect, $select);

$count = 1;

if(isset($_GET['del'])){
    $id = $_GET['del'];

    $del = "DELETE FROM orders WHERE id = $id ";
    mysqli_query($connect, $del);

    header("location: /yasmin/tasks/study/orders/index.php");
}

if(isset($_GET['clear'])){
    session_unset();
    session_destroy();
    // header("Location: /yasmin/tasks/study/orders/index.php");
}

?>

<div class="container col-md-6">
    <div class="card m-2">
            <h5 class="m-3">
                LIST ALL ORDERS TABLE
                <a href="./create.php" class="btn btn-light float-end text-dark fs-5 fw-medium">CREATE NEW</a>
            </h5>
            <?php if(isset($_SESSION['message'])): ?>
                <div class="alert alert-success">
                    <?= $_SESSION['message'] ?>
                    <a href="/yasmin/tasks/study/orders/index.php?clear=done" value="done" name="clear" class="btn-close float-end" aria-label="Close"></a>
                </div>
            <?php endif; ?>
            <div class="card-body">
                <table class="table txet-center">
                    <tr class=" text-capitalize">
                        <th>id</th>
                        <th>amount</th>
                        <th>date received</th>
                        <th>date delivered</th>
                        <th colspan="3">action</th>
                    </tr>
                    <?php foreach($data as $item): ?>
                        <tr>
                            <td><?= $count++ ?></td>
                            <td><?= $item['amount'] ?></td>
                            <td><?= $item['date_received'] ?></td>
                            <td><?= $item['date_delivered'] ?></td>
                            <td>
                                <a href="/yasmin/tasks/study/orders/view.php?view=<?= $item['id'] ?>">
                                    <i class="text-info fa-solid fa-eye"></i>
                                </a>
                            </td>
                            <td>
                                <a href="/yasmin/tasks/study/orders/index.php?del=<?= $item['id'] ?>">
                                    <i class="text-danger fa-solid fa-trash"></i>
                                </a>
                            </td>
                            <td>
                                <a href="/yasmin/tasks/study/orders/update.php?edit=<?= $item['id'] ?>">
                                    <i class="text-warning fa-solid fa-pen-to-square"></i>
                                </a>
                            </td>
                            
                        </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
    </div>

<?php 
if(isset($_SESSION['message'])){
    echo "<script>
        setTimeout(() => {
            window.location.replace('/yasmin/tasks/study/orders/index.php?clear=done');
        }, 2000);
    </script>";
}

include_once "../shared/foot.php"; ?>