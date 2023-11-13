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
<style>
    .hidden-form {
        display: none;
    }
</style>
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
                        <li>> </li>
                        <li><a href="product-category.php">Product Tax Calculator </a></li>
                        <li>> </li>
                        <li><a href="product-category.php"> Calculate Tax</a></li>
                        <li>> </li>
                        <li>
                            <select id="calculationSelect" onchange="showForm()">
                                <option>Select Calculation Tax .. .</option>
                                <option value="vatModal">Paye As You Earn (PAYE)</option>
                                <option value="payeModal">Custom Import Duty</option>
                                <option value="importModal">VAT Calculator</option>
                            </select>
                        </li>
                    </ul>
                </div>
                <div class="product">
                    <div class="row">
                        <div class="col-md-5">
                            <p class="prod-slider" id="vatModalForm" class="hidden-form">
                            <form action="" method="post">
                                <?php $csrf->echoInputField(); ?>
                                <div class="row">
                                    <div class="col-md-4">
                                        VAT Calculator
                                    </div>
                                    <div class="col-md-8">

                                        <div class="form-group">
                                            <label for=""> Amount * : </label>
                                            <input class="form-control" type="text" name="grossIncome" placeholder="Income eg Ksh 600,000">
                                        </div>

                                        <div class="form-group">
                                            <label for=""> VAT Rate * : <i><small>In % </small></i> </label>
                                            <input class="form-control" type="number" name="rate" min="1" max="40" value="0">
                                        </div>

                                        <div class="form-group">
                                            <label for="">Options * : </label>
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
                            </p>
                            <p class="prod-slider" id="payeModalForm" class="hidden-form">
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
                                            <label for=""> Payment Period *: </label>
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
                            </p>
                            <p class="prod-slider" id="importModalForm" class="hidden-form">
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
                                            <label for=""> Vehicle Engine Size*: <i><small>In Cc</small></i> </label>
                                            <input class="form-control" type="number" name="rate" min="1" max="40" value="0">
                                        </div>
                                        <div class="form-group">
                                            <label for=""></label>
                                            <input type="submit" class="btn btn-success" value="Calculate" name="form1">
                                        </div>
                                    </div>
                                </div>
                            </form>
                            </p>
                        </div>
                        <div class="col-md-7">

                            <div class="p-review">
                                <div class="rating">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis temporibus optio animi qui labore modi nisi ad
                                    ipisci vel neque architecto repudiandae voluptatibus quisquam quos obcaecati iusto, fuga aperiam nostrum officiis.

                                </div>
                            </div>
                            <div class="p-short-des">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis temporibus optio animi qui labore modi nisi ad
                                    ipisci vel neque architecto repudiandae voluptatibus quisquam quos obcaecati iusto, fuga aperiam nostrum officiis.

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function showForm() {
        // Get the selected value from the dropdown
        var selectedOption = document.getElementById("calculationSelect").value;

        // Hide all forms
        document.getElementById("vatModalForm").classList.add("hidden-form");
        document.getElementById("payeModalForm").classList.add("hidden-form");
        document.getElementById("importModalForm").classList.add("hidden-form");

        // Show the selected form
        document.getElementById(selectedOption + "Form").classList.remove("hidden-form");
    }
</script>

<?php require_once('footer.php'); ?>