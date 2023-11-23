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


    // update data into the database
    $statement = $pdo->prepare("UPDATE tbl_customer SET 
                            cust_b_name=?,  
                            cust_b_phone=?, 
                            cust_b_county=?, 
                            cust_b_address=?, 
                            cust_b_town=?, 
                            cust_b_location=?,
                            cust_b_zip=?,
                            cust_s_name=?, 
                            cust_s_phone=?, 
                            cust_s_county=?, 
                            cust_s_address=?, 
                            cust_s_town=?, 
                            cust_s_location=?, 
                            cust_s_zip=? 

                            WHERE cust_id=?");
    $statement->execute(array(
                            strip_tags($_POST['cust_b_name']),
                            strip_tags($_POST['cust_b_phone']),
                            strip_tags($_POST['cust_b_county']),
                            strip_tags($_POST['cust_b_address']),
                            strip_tags($_POST['cust_b_town']),
                            strip_tags($_POST['cust_b_location']),
                            strip_tags($_POST['cust_b_zip']),
                            strip_tags($_POST['cust_s_name']),
                            strip_tags($_POST['cust_s_phone']),
                            strip_tags($_POST['cust_s_county']),
                            strip_tags($_POST['cust_s_address']),
                            strip_tags($_POST['cust_s_town']),
                            strip_tags($_POST['cust_s_location']),
                            strip_tags($_POST['cust_s_zip']),
                            $_SESSION['customer']['cust_id']
                        ));  
   
    $success_message = LANG_VALUE_122;

    $_SESSION['customer']['cust_b_name'] = strip_tags($_POST['cust_b_name']);
    $_SESSION['customer']['cust_b_phone'] = strip_tags($_POST['cust_b_phone']);
    $_SESSION['customer']['cust_b_country'] = strip_tags($_POST['cust_b_county']);
    $_SESSION['customer']['cust_b_address'] = strip_tags($_POST['cust_b_address']);
    $_SESSION['customer']['cust_b_town'] = strip_tags($_POST['cust_b_town']);
    $_SESSION['customer']['cust_b_location'] = strip_tags($_POST['cust_b_location']);
    $_SESSION['customer']['cust_b_zip'] = strip_tags($_POST['cust_b_zip']);
    $_SESSION['customer']['cust_s_name'] = strip_tags($_POST['cust_s_name']);
    $_SESSION['customer']['cust_s_phone'] = strip_tags($_POST['cust_s_phone']);
    $_SESSION['customer']['cust_s_county'] = strip_tags($_POST['cust_s_county']);
    $_SESSION['customer']['cust_s_address'] = strip_tags($_POST['cust_s_address']);
    $_SESSION['customer']['cust_s_town'] = strip_tags($_POST['cust_s_town']);
    $_SESSION['customer']['cust_s_location'] = strip_tags($_POST['cust_s_location']);
    $_SESSION['customer']['cust_s_zip'] = strip_tags($_POST['cust_s_zip']);
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
                            <div class="col-md-6">
                                <h3><?php echo LANG_VALUE_86; ?></h3>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_102; ?></label>
                                    <input type="text" class="form-control" name="cust_b_name"
                                        value="<?php echo $_SESSION['customer']['cust_b_name']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_104; ?></label>
                                    <input type="text" class="form-control" name="cust_b_phone"
                                        value="<?php echo $_SESSION['customer']['cust_b_phone']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_106; ?></label>
                                    <select name="cust_b_county" class="form-control">
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM tbl_counties ORDER BY county_name ASC");
                                        $statement->execute();
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            ?>
                                        <option value="<?php echo $row['county_id']; ?>"
                                            <?php if($row['county_id'] == $_SESSION['customer']['cust_b_county']) {echo 'selected';} ?>>
                                            <?php echo $row['county_name']; ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_105; ?></label>
                                    <textarea name="cust_b_address" class="form-control" cols="30" rows="10"
                                        style="height:100px;"><?php echo $_SESSION['customer']['cust_b_address']; ?></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="">Town</label>
                                    <input type="text" class="form-control" name="cust_b_town"
                                        value="<?php echo $_SESSION['customer']['cust_b_town']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="">Location</label>
                                    <input type="text" class="form-control" name="cust_b_location"
                                        value="<?php echo $_SESSION['customer']['cust_b_location']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_109; ?></label>
                                    <input type="text" class="form-control" name="cust_b_zip"
                                        value="<?php echo $_SESSION['customer']['cust_b_zip']; ?>">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h3><?php echo LANG_VALUE_87; ?></h3>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_102; ?></label>
                                    <input type="text" class="form-control" name="cust_s_name"
                                        value="<?php echo $_SESSION['customer']['cust_s_name']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_104; ?></label>
                                    <input type="text" class="form-control" name="cust_s_phone"
                                        value="<?php echo $_SESSION['customer']['cust_s_phone']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_106; ?></label>
                                    <select name="cust_s_country" class="form-control">
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM tbl_counties ORDER BY county_name ASC");
                                        $statement->execute();
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            ?>
                                        <option value="<?php echo $row['county_id']; ?>"
                                            <?php if($row['county_id'] == $_SESSION['customer']['cust_s_county']) {echo 'selected';} ?>>
                                            <?php echo $row['county_name']; ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_105; ?></label>
                                    <textarea name="cust_s_address" class="form-control" cols="30" rows="10"
                                        style="height:100px;"><?php echo $_SESSION['customer']['cust_s_address']; ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="">Town</label>
                                    <input type="text" class="form-control" name="cust_s_town"
                                        value="<?php echo $_SESSION['customer']['cust_s_town']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="">Location</label>
                                    <input type="text" class="form-control" name="cust_s_location"
                                        value="<?php echo $_SESSION['customer']['cust_s_location']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_109; ?></label>
                                    <input type="text" class="form-control" name="cust_s_zip"
                                        value="<?php echo $_SESSION['customer']['cust_s_zip']; ?>">
                                </div>
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