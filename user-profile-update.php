<?php require_once('header.php'); ?>

<?php
// Check if the customer is logged in or not
if(!isset($_SESSION['customer'])) {
    header('location: '.BASE_URL.'logout.php');
    exit;
} else {
    // If customer is logged in, but admin make him inactive, then force logout this user.
    $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=? AND cust_status=?");
    $statement->execute(array($_SESSION['customer']['cust_id'],0));
    $total = $statement->rowCount();
    if($total) {
        header('location: '.BASE_URL.'logout.php');
        exit;
    }
}
?>

<?php
if (isset($_POST['form1'])) {

    $valid = 1;

    if(empty($_POST['cust_name'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_123."<br>";
    }

    if(empty($_POST['cust_phone'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_124."<br>";
    }

    if(empty($_POST['cust_address'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_125."<br>";
    }

    if(empty($_POST['cust_county'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_126."<br>";
    }

    if(empty($_POST['cust_town'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_127."<br>";
    }

    if(empty($_POST['cust_zip'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_129."<br>";
    }

    if($valid == 1) {

        // update data into the database
        $statement = $pdo->prepare("UPDATE tbl_customer SET cust_name=?,  cust_phone=?, cust_county=?, cust_address=?, cust_town=?, cust_location=?, cust_zip=? WHERE cust_id=?");
        $statement->execute(array(
                    strip_tags($_POST['cust_name']),
                    strip_tags($_POST['cust_phone']),
                    strip_tags($_POST['cust_county']),
                    strip_tags($_POST['cust_address']),
                    strip_tags($_POST['cust_town']),
                    strip_tags($_POST['cust_location']),
                    strip_tags($_POST['cust_zip']),
                    $_SESSION['customer']['cust_id']
                ));  
       
        $success_message = LANG_VALUE_130;

        $_SESSION['customer']['cust_name'] = $_POST['cust_name'];
        $_SESSION['customer']['cust_phone'] = $_POST['cust_phone'];
        $_SESSION['customer']['cust_county'] = $_POST['cust_county'];
        $_SESSION['customer']['cust_address'] = $_POST['cust_address'];
        $_SESSION['customer']['cust_town'] = $_POST['cust_town'];
        $_SESSION['customer']['cust_zip'] = $_POST['cust_zip'];
    }
}
?>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php require_once('user-sidebar.php'); ?>
            </div>
            <div class="col-md-12">
                <div class="user-content">
                    <h3>
                        <?php echo LANG_VALUE_117; ?>
                    </h3>
                    <?php
                    if($error_message != '') {
                        echo "<div class='error' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$error_message."</div>";
                    }
                    if($success_message != '') {
                        echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$success_message."</div>";
                    }
                    ?>
                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label for=""><?php echo LANG_VALUE_102; ?> *</label>
                                <input type="text" class="form-control" name="cust_name"
                                    value="<?php echo $_SESSION['customer']['cust_name']; ?>">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for=""><?php echo LANG_VALUE_94; ?> *</label>
                                <input type="text" class="form-control" name=""
                                    value="<?php echo $_SESSION['customer']['cust_email']; ?>" disabled>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for=""><?php echo LANG_VALUE_104; ?> *</label>
                                <input type="text" class="form-control" name="cust_phone"
                                    value="<?php echo $_SESSION['customer']['cust_phone']; ?>">
                            </div>
                            <div class="col-md-12 form-group">
                                <label for=""><?php echo LANG_VALUE_105; ?> *</label>
                                <textarea name="cust_address" class="form-control" cols="30" rows="10"
                                    style="height:70px;"><?php echo $_SESSION['customer']['cust_address']; ?></textarea>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for=""><?php echo LANG_VALUE_106; ?> *</label>
                                <select name="cust_county" class="form-control">
                                    <?php
                                $statement = $pdo->prepare("SELECT * FROM tbl_counties ORDER BY county_name ASC");
                                $statement->execute();
                                $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                foreach ($result as $row) {
                                    ?>
                                    <option value="<?php echo $row['county_id']; ?>"
                                        <?php if($row['county_id'] == $_SESSION['customer']['cust_county']) {echo 'selected';} ?>>
                                        <?php echo $row['county_name']; ?></option>
                                    <?php
                                }
                                ?>
                                </select>
                            </div>

                            <div class="col-md-6 form-group">
                                <label for=""><?php echo LANG_VALUE_107; ?> *</label>
                                <input type="text" class="form-control" name="cust_town"
                                    value="<?php echo $_SESSION['customer']['cust_town']; ?>">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Location *</label>
                                <input type="text" class="form-control" name="cust_location"
                                    value="<?php echo $_SESSION['customer']['cust_location']; ?>">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for=""><?php echo LANG_VALUE_109; ?> *</label>
                                <input type="text" class="form-control" name="cust_zip"
                                    value="<?php echo $_SESSION['customer']['cust_zip']; ?>">
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary" value="<?php echo LANG_VALUE_5; ?>" name="form1">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>