<?php
require_once('header.php');

// Check if the form is submitted
if (isset($_POST['form1'])) {
    // Get user input values
    $grossIncome = floatval($_POST['grossIncome']);
    $vatRate = floatval($_POST['rate']);

    // Calculate VAT amount
    $vatDivisor = 1 + ($vatRate / 100);
    $priceBeforeVat = $grossIncome / $vatDivisor;
    $vatAmount = $grossIncome - $priceBeforeVat;
}

?>
<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $calculate_tax_title = $row['calculate_tax_title'];
    $calculate_tax_banner = $row['calculate_tax_banner'];
}
?>

<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $calculate_tax_banner; ?>);">
    <div class="inner">
        <h1><?php echo $calculate_tax_title; ?></h1>
    </div>
</div>
<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb mb_30">
                    <ul>
                        <li><a href="<?php echo BASE_URL; ?>">Home</a></li>
                        <li>></li>
                        <li><a href="product-category.php">Product Category</a></li>
                        <li>></li>
                        <li><a href="product-category.php">Calculate Tax</a></li>
                    </ul>
                </div>

                <div class="product">
                    <div class="row">
                        <div class="col-md-5 modal" id="modelSwitch">
                            <div id="prod-pager">
                                <form action="" method="post">
                                    <?php $csrf->echoInputField(); ?>
                                    <div class="row">
                                        <div class="col-md-4">
                                            VAT Calculator
                                        </div>
                                        <div class="col-md-8">

                                            <div class="form-group">
                                                <label for=""> Amount *: </label>
                                                <input class="form-control" type="text" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> VAT Rate *: <i><small>In % </small></i> </label>
                                                <input class="form-control" type="number" name="rate" min="1" max="40" value="0">
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="">Options *:  </label>
                                                <input class="form-control" type="radio" name="add_vat">Add VAT
                                                <input class="form-control" type="radio" name="remove_vat">Remove VAT
                                            </div>
                                            <div class="form-group">
                                                <label for=""></label>
                                                <input type="submit" class="btn btn-success" value="Calculate" name="form1">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-5 modal" id="modelSwitch">
                            <div id="prod-pager">
                                <form action="" method="post">
                                    <?php $csrf->echoInputField(); ?>
                                    <div class="row">
                                        <div class="col-md-4">
                                            Pay As You Earn (PAYE)
                                        </div>
                                        <div class="col-md-8">

                                            <div class="form-group">
                                                <label for=""> Year of taxation *: </label>
                                                <input class="form-control" type="year" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Payment Period *:  </label>
                                                <input class="form-control" type="radio" name="rate" min="1" max="40" value="0">
                                                <input class="form-control" type="radio" name="rate" min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Gross Salary*: </label>
                                                <input class="form-control" type="text" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Contribution Benefit *: </label>
                                                <input class="form-control" type="text" name="rate" min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Do you have a disability excemption certificate? *: </label>
                                                <input class="form-control" type="radio" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                                <input class="form-control" type="radio" name="rate" min="1" max="40" value="0">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Do you have a Mortgage? *: </label>
                                                <input class="form-control" type="radio" name="rate" min="1" max="40" value="0">
                                                <input class="form-control" type="radio" name="rate" min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Do you have a Home Ownership *: </label>
                                                <input class="form-control" type="radio" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                                <input class="form-control" type="radio" name="rate" min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""></label>
                                                <input type="submit" class="btn btn-success" value="Calculate" name="form1">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-5 modal" id="modelSwitch">
                            <div id="prod-pager">
                                <form action="" method="post">
                                    <?php $csrf->echoInputField(); ?>
                                    <div class="row">
                                        <div class="col-md-4">
                                            Motor Vehicle Import Duty
                                        </div>
                                        <div class="col-md-8">

                                            <div class="form-group">
                                                <label for=""> Vehicle Month of Manufacture *: </label>
                                                <input class="form-control" type="month" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Vehicle Year of Manufacture *: </label>
                                                <input class="form-control" type="number" name="rate" min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Vehicle Make *: </label>
                                                <input class="form-control" type="text" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Vehicle Body Type*: </label>
                                                <input class="form-control" type="number" name="rate" min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Vehicle Model*: </label>
                                                <input class="form-control" type="text" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for="">  Vehicle Engine Size*: <i><small>In Cc</small></i> </label>
                                                <input class="form-control" type="number" name="rate" min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""></label>
                                                <input type="submit" class="btn btn-success" value="Calculate" name="form1">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="p-title">
                                Progressive Income Tax
                            </div>
                            <div class="p-review">
                                <div class="rating">
                                <?php
                                    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['form1'])) {
                                        // Get the user input values
                                        $grossIncome = isset($_POST['grossIncome']) ? floatval($_POST['grossIncome']) : 0;
                                        $vatRate = isset($_POST['rate']) ? floatval($_POST['rate']) : 0;

                                        // Calculate VAT amount
                                        $vatAmount = ($grossIncome * $vatRate) / (100 + $vatRate);
                                        $priceBeforeVat = $grossIncome - $vatAmount;

                                        // Display the results in the progressive div
                                        echo '<div class="p-price">';
                                        echo '<i><small>Amount Before VAT:</small></i> Ksh' . number_format($priceBeforeVat, 2) . '<br>';
                                        echo '<i><small>VAT @ </small></i>' . $vatRate . '%: Ksh ' . number_format($vatAmount, 2) . '<br>';
                                        echo '<i><small>Total Amount (including VAT): </small></i> Ksh' . number_format($grossIncome, 2);
                                        echo '</div>';
                                    }
                                    ?>

                                </div>
                            </div>
                            <div class="p-short-des">
                                <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis recusandae voluptates quidem rem laboriosam. Possimus quisquam accusantium molestiae. Quisquam quibusdam praesentium molestiae ipsum sapiente eveniet velit voluptatibus libero, ad quos?
                                </p>
                            </div>
                            <form action="" method="post">
                                <div class="p-quantity">
                                    <div class="row">
                                        <div class="col-md-12 mb_20">
                                            The VAT rate used for this calculations is the rate applied for all vatable goods in in Kenya. This result is only
                                            a guideline. Please note the calculator, does not take into consideration zero rated and exempt goods.
                                        </div>
                                        <div class="col-md-12">
                                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facilis, ratione nobis? Incidunt magni ipsa officia facilis, corrupti porro eaque assumenda mollitia ab necessitatibus, iusto ipsum culpa nemo dicta minus optio.
                                        </div>

                                    </div>

                                </div>
                                <div class="p-price">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis temporibus optio animi qui labore modi nisi ad
                                    ipisci vel neque architecto repudiandae voluptatibus quisquam quos obcaecati iusto, fuga aperiam nostrum officiis.
                                </div>
                            </form>
                            <div class="share">
                                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptates, labore dignissimos! Id quod doloremque fuga ev
                                eniet totam culpa ratione mollitia, at reprehenderit dicta cumque aliquam molestiae. Accusantium officiis placeat obcaecati!
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>