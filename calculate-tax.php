<?php
require_once('header.php');


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

table {
    border-collapse: collapse;
    width: 100%;
}

th,
td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #f2f2f2;
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
                        <li><a href="<?php echo BASE_URL; ?>">Home</a>
                        </li>
                        <li>> </li>
                        <li><a href="product-category.php">Product Tax Calculator </a></li>
                        <li>> </li>
                        <li><a href="product-category.php"> Calculate Tax</a></li>
                        <li>> </li>
                        <li>
                            <select id="calculationSelect" class="form-control select2 " onchange="showForm()">
                                <option>Select Calculation Tax .. .</option>
                                <option value="vatModal">VAT Calculator</option>
                                <option value="payeModal">Paye As You Earn (PAYE)</option>
                                <option value="importModal">Motor Vehicle Import Duty </option>
                                <option value="importMotorModal">Motor Cycle Import Duty </option>
                            </select>
                        </li>
                    </ul>
                </div>
                <div class="product">
                    <div class="row">
                        <div class="col-md-5">
                            <p class="prod-slider">
                            <div id="vatModalForm" class="hidden-form">
                                <form action="" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                                    <?php $csrf->echoInputField(); ?>
                                    <div class="row">
                                        <div class="col-md-4">
                                            VAT Calculator
                                        </div>
                                        <div class="col-md-8">

                                            <div class="form-group">
                                                <label for=""> Amount * : </label>
                                                <input class="form-control" type="text" name="grossIncome"
                                                    placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> VAT Rate * : <i><small>In % </small></i> </label>
                                                <input class="form-control" type="number" name="rate" min="1" max="40"
                                                    value="0">
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="add_vat" id="addVat">
                                                <label class="form-check-label" for="AddVat">
                                                    Add VAT
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="remove_vat"
                                                    id="removeVat">
                                                <label class="form-check-label" for="removeVat">
                                                    Remove VAT
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label for=""></label>
                                                <input type="submit" class="btn btn-success" value="Calculate"
                                                    name="form1">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            </p>
                            <p class="prod-slider">
                            <div id="payeModalForm" class="hidden-form">
                                <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                                    <?php $csrf->echoInputField(); ?>
                                    <div class="row">
                                        <div class="col-md-4">
                                            Pay As You Earn (PAYE)
                                        </div>
                                        <div class="col-md-8">

                                            <div class="form-group">
                                                <label for=""> Year of taxation *: </label>
                                                <select name="year_taxation" class=" select2 mid-cat2">
                                                    <option value="">Select Year of taxation *</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_years ORDER BY year ASC");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['year']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Payment Period *: </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" value="Monthly" type="radio"
                                                    name="p_monthly" id="pMonthly">
                                                <label class="form-check-label" for="Month">
                                                    Month
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" value="Yearly" type="radio"
                                                    name="p_yearly" id="pYearly">
                                                <label class="form-check-label" for="Year">
                                                    Year
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Gross Salary*: </label>
                                                <input class="form-control" type="text" name="grossIncome"
                                                    placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Contribution Benefit *: </label>
                                                <input class="form-control" type="text" name="contribution_benefit"
                                                    min="1" max="40" value="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Do you have a disability excemption certificate? *:
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" value="Yes"
                                                    name="disability_yes" id="dYes">
                                                <label class="form-check-label" for="Yes">
                                                    Yes
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" value="No"
                                                    name="disability_no" id="dNo">
                                                <label class="form-check-label" for="No">
                                                    No
                                                </label>
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Do you have a Mortgage? *: </label>
                                            </div>

                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="mortgage_yes"
                                                    id="mortgageYes">
                                                <label class="form-check-label" for="Yes">
                                                    Yes
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="mortgage_no"
                                                    id="mortgageNo">
                                                <label class="form-check-label" for="No">
                                                    No
                                                </label>
                                            </div>

                                            <div class="form-group" id="mortgageInterestId">
                                                <label for=""> Mortgage Interest: </label>
                                                <input class="form-control" type="text" id="mortgageInterest"
                                                    name="mortgage_interest" placeholder="Mortgage Interest eg  12 %">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Do you have a life insurance policy? *: </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="insurance_yes"
                                                    id="insuranceYes">
                                                <label class="form-check-label" for="Yes">
                                                    Yes
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="insurance_no"
                                                    id="insurancerNo">
                                                <label class="form-check-label" for="No">
                                                    No
                                                </label>
                                            </div>

                                            <div class="form-group" id="insurancePremiumId">
                                                <label for=""> Insurance Premium: </label>
                                                <input class="form-control" type="text" id="insurancePremium"
                                                    name="insurance_premium" placeholder=" 0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Do you have a Home Ownership Savings Plan ? *: </label>
                                            </div>

                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="home_yes"
                                                    id="homeYes">
                                                <label class="form-check-label" for="Yes">
                                                    Yes
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="home_no" id="homeNo">
                                                <label class="form-check-label" for="No">
                                                    No
                                                </label>
                                            </div>
                                            <div class="form-group" id="homeOwnershipDepositId">
                                                <label for="">Home Ownership Total Deposit: </label>
                                                <input class="form-control" type="text" id="homeOwnership"
                                                    name="home_ownershipDeposit" placeholder="0">
                                            </div>
                                            <div class="form-group">
                                                <label for=""></label>
                                                <input type="submit" class="btn btn-success" value="Calculate"
                                                    name="form2">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            </p>
                            <p class="prod-slider">
                            <div id="importModalForm" class="hidden-form">
                                <form action="" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                                    <?php $csrf->echoInputField(); ?>
                                    <div class="row">
                                        <div class="col-md-4">
                                            Motor Vehicle Import Duty
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label for=""> Vehicle Retail Price*: </label>
                                                <input class="form-control" type="text" name="vehicle_price"
                                                    placeholder="e.g. Kes 1 200 000">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Vehicle Month of Manufacture *: </label>
                                                <select name="manufacturing_month" class="select2 ">
                                                    <option value="">Select Manafuacturing Month</option>
                                                    <?php
                                                      $statement = $pdo->prepare("SELECT * FROM tbl_months ORDER BY month ASC");
                                                      $statement->execute();
                                                      $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                      foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['month']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Vehicle Year of Manufacture *: </label>
                                                <select name="manufacturing_year" class="select2 ">
                                                    <option value="">Select Vehicle Manufacturing Year</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_years ORDER BY year ASC");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['year']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Vehicle Make *: </label>
                                                <select name="manufacturer" class=" select2 ">
                                                    <option value="">Select Vehicle Manufacturer</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_vehicle_makers ORDER BY vehicle_makers ASC");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['vehicle_makers']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Vehicle Body Type*: </label>
                                                <select name="body_type" class="select2">
                                                    <option value="">Select Vehicle Body Type</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_vehicle_body_type");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['body_type']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Vehicle Model*: </label>
                                                <select name="vehicle_model" class="select2">
                                                    <option value="">Select Vehicle Model Type *</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM  tbl_vehicle_models");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['model_id']; ?>">
                                                        <?php echo $row['vehicle_model']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Vehicle Engine Size*: <i><small>In Cc</small></i>
                                                </label>

                                                <select name="vehicle_weight" class="select2">
                                                    <option value="">Select Vehicle Engine Size *</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_vehicle_engine_size");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['engine_id']; ?>">
                                                        <?php echo $row['engine_size']; ?> Cc
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for=""></label>
                                                <input type="submit" class="btn btn-success" value="Calculate"
                                                    name="form3">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            </p>
                            <p class="prod-slider">
                            <div id="importMotorModalForm" class="hidden-form">
                                <form action="" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                                    <?php $csrf->echoInputField(); ?>
                                    <div class="row">
                                        <div class="col-md-4">
                                            Motor Cycle Import Duty
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label for=""> Motor Cycle Retail Price*: </label>
                                                <input class="form-control" type="text" name="motor_cycle_price"
                                                    placeholder="e.g. Kes 1 200 000">
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Motor Cycle Month of Manufacture *: </label>
                                                <select name="manafacturer_m" class="select2 ">
                                                    <option value="">Select Manafuacturing Month</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_months ORDER BY month ASC");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['month']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Motor Cycle Year of Manufacture *: </label>
                                                <select name="manafacturer_y" class="select2 ">
                                                    <option value="">Select Motor Cycle Manufacturing Year</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_years ORDER BY year ASC");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['year']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Motor Cycle Make *: </label>
                                                <select name="manafacturer_c" class=" select2 ">
                                                    <option value="">Select Motor Cycle Maker</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_motors_cycle_makers ORDER BY motor_cycle_makers ASC");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                        ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['motor_cycle_makers']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Motor Cycle Body Type*: </label>
                                                <select name="body_t" class="select2 ">
                                                    <option value="">Select Vehicle Body Type</option>
                                                    <?php
                                                         $statement = $pdo->prepare("SELECT * FROM tbl_motor_cycle_body_type ORDER BY motor_cycle_body_type ASC");
                                                         $statement->execute();
                                                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                                         foreach ($result as $row) {
                                                    ?>
                                                    <option value="<?php echo $row['id']; ?>">
                                                        <?php echo $row['motor_cycle_body_type']; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    
                                                ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for=""> Motor Cycle Model*: </label>
                                                <input class="form-control" type="text" name="motor_model"
                                                    placeholder="e.g. A5 TDI">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Motor Cycle Engine Size*: <i><small>In Cc</small></i>
                                                </label>
                                                <input class="form-control" type="number" name="motor_weight"
                                                    placeholder=" e.g. 1800 CC">
                                            </div>
                                            <div class="form-group">
                                                <label for=""></label>
                                                <input type="submit" class="btn btn-success" value="Calculate"
                                                    name="form3">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            </p>
                        </div>
                        <div class="col-md-7">

                            <div class="p-review">
                                <div class="rating">
                                    <!------------Display the output-------->
                                    <?php
     // Code for processing PAYE calculation
     if (isset($_POST['form1'])) {
         $grossIncome = floatval($_POST['grossIncome']);
         $vatRate = floatval($_POST['rate']);
                                          
         $addVat = isset($_POST['add_vat']);
         $removeVat = isset($_POST['remove_vat']);
                                          
         $vatDivisor = 1 + ($vatRate / 100);
         $priceBeforeVat = $grossIncome / $vatDivisor;
         $vatAmount = $grossIncome - $priceBeforeVat;
                                          
         echo "<table>";
         echo "<tr>";
         echo "<th>Parameter</th>";
         echo "<th>Value</th>";
         echo "</tr>";
                                          
         echo "<tr>";
         echo "<td>Gross Income (excluding VAT)</td>";
         echo "<td>Kes $priceBeforeVat</td>";
         echo "</tr>";
                                          
         echo "<tr>";
         echo "<td>VAT Rate (%)</td>";
         echo "<td>$vatRate%</td>";
         echo "</tr>";
                                          
         echo "<tr>";
         echo "<td>VAT Amount</td>";
         echo "<td>Kes $vatAmount</td>";
         echo "</tr>";
                                          
         if ($addVat) {
             echo "<tr>";
             echo "<td>Gross Amount (including VAT)</td>";
             echo "<td>Kes $grossIncome</td>";
             echo "</tr>";
         } elseif ($removeVat) {
             echo "<tr>";
             echo "<td>Gross Amount (excluding VAT)</td>";
             echo "<td>Kes $priceBeforeVat</td>";
             echo "</tr>";
         } else {
             echo "<tr>";
             echo "<td colspan=2><strong>Please select either 'Add VAT' or 'Remove VAT'</strong></td>";
             echo "</tr>";
         }
                                          
         echo "</table>";
     } elseif (isset($_POST['form2'])) {

                                         
         // Retrieve form input values
         $year = $_POST['year_taxation'];
        //  $paymentPeriod = $_POST['p_monthly'] ? 'Monthly' : 'Yearly';
         $paymentPeriod = isset($_POST['p_monthly']) ? 'Monthly' : (isset($_POST['p_yearly']) ? 'Yearly' : '');

                                         
         $grossSalary = str_replace(',', '', $_POST['grossIncome']);
         $contributionBenefit = $_POST['contribution_benefit'];
         //  $disabilityExemption = $_POST['disability_yes'] === 'on' ? 'Yes' : 'No';
         $disabilityExemption = isset($_POST['disability_yes']) ? $_POST['disability_yes'] : $_POST['disability_no'];
         $mortgagePlan = isset($_POST['mortgage_yes']) ? $_POST['mortgage_yes'] : $_POST['mortgage_no'];
         $insurancePolicy = isset($_POST['insurance_yes']) ? $_POST['insurance_yes'] : $_POST['insurance_no'];
         $homeOwnership = isset($_POST['home_yes']) ? $_POST['home_yes'] : $_POST['home_no'];
                                         
         //  $mortgagePlan = $_POST['mortgage_yes'] === 'on' ? 'Yes' : 'No';
         $mortgageInterest = $_POST['mortgage_interest'];
         //  $insurancePolicy = $_POST['insurance_yes'] === 'on' ? 'Yes' : 'No';
         $insurancePremium = $_POST['insurance_premium'];
         //  $homeOwnership = $_POST['home_yes'] === 'on' ? 'Yes' : 'No';
         $homeOwnershipDeposit = $_POST['home_ownershipDeposit'];

         // Define tax slabs and corresponding percentages
         $taxSlabs = [
            [12298, 0.1],
            [23885, 0.15],
            [35472, 0.2],
            [47059, 0.25],
            [99999999, 0.3],
        ];

         // Calculate taxable income
         $taxableIncome = $grossSalary - $contributionBenefit;

         // Apply disability exemption if applicable
         if ($disabilityExemption === 'Yes') {
             $taxableIncome -= 10000;
         }

   // Calculate mortgage relief
$mortgageRelief = 0;
if ($mortgagePlan === 'Yes') {
    $mortgageRelief = min($grossSalary * 0.25, $mortgageInterest);
}

// Ensure $mortgageRelief is numeric
$mortgageRelief = is_numeric($mortgageRelief) ? $mortgageRelief : 0;

// Calculate insurance relief
$insuranceRelief = min($grossSalary * 0.07, $insurancePremium);

// Ensure $insuranceRelief is numeric
$insuranceRelief = is_numeric($insuranceRelief) ? $insuranceRelief : 0;

// Calculate home ownership relief
$homeOwnershipRelief = 0;
if ($homeOwnership === 'Yes') {
    $homeOwnershipRelief = min($grossSalary * 0.2, $homeOwnershipDeposit);
}

// Ensure $homeOwnershipRelief is numeric
$homeOwnershipRelief = is_numeric($homeOwnershipRelief) ? $homeOwnershipRelief : 0;

// Deduct reliefs from taxable income
$taxableIncome -= $mortgageRelief + $insuranceRelief + $homeOwnershipRelief;
 
    // Calculate PAYE based on tax slabs
    $payeAmount = 0;
    foreach ($taxSlabs as $slab) {
        if ($taxableIncome > $slab[0]) {
            $payeAmount += $slab[0] * $slab[1];
            $taxableIncome -= $slab[0];
        } else {
            $payeAmount += $taxableIncome * $slab[1];
            break;
        }
    }

    // Calculate net salary
    $netSalary = $grossSalary - $payeAmount;


         echo "<table>";
         echo "<tr>";
         echo "<th>Description</th>";
         echo "<th>Amount</th>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>Gross Salary</td>";
         echo "<td>Kes " . number_format($grossSalary, 2) . "</td>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>Contribution Benefit     </td>";
         echo "<td>Kes " . number_format($contributionBenefit, 2) . "</td>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>Total Deductions</td>";
         echo "<td>Kes " .  number_format($contributionBenefit + $mortgageRelief + $insuranceRelief + $homeOwnershipRelief, 2)  . "</td>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>Taxable Pay</td>";
         echo "<td>Kes " .  number_format($taxableIncome, 2) . "</td>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>Personal Relief</td>";
         echo "<td>Kes $insurancePremium</td>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>Insurance Relief</td>";
         echo "<td>Kes $insuranceRelief</td>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>PAYE</td>";
         echo "<td>Kes " . number_format($payeAmount, 2) . " </td>";
         echo "</tr>";
         echo "<tr>";
         echo "<td>Net Salary</td>";
         echo "<td>Kes " . number_format($netSalary, 2) . " </td>";
         echo "</tr>";
         echo "<td>What is this PAYE income tax calculator?</td>";
         echo "<td>This is an independent calculator to help the public quickly
          understand and calculate Pay As You Earn (PAYE) income tax in Kenya as set out by the 
          Kenya Revenue Authority (KRA). Employees and employers alike can use this calculator to under the statutory contributions
           liable under the income tax system of Kenya.
         Note : This KRA income tax calculator has been updated to include the new KRA income tax rates effective 1st January 
         2018 and allows comparison with the salary income tax rates for the year ending 31st December, 2017. For more visit:
            <a href='https://www.pesabazaar.com/'>pesabazaar</a> </td>";
         echo "</tr>";
         echo "</table>";

     } elseif  (isset($_POST['form3'])) {
        // Retrieve form input values
        $vehiclePrice = floatval(str_replace(',', '', $_POST['vehicle_price']));
        $manufacturingMonth = $_POST['manufacturing_month'];
        $manufacturingYear = $_POST['manufacturing_year'];
        $manufacturer = $_POST['manufacturer'];
        $bodyType = $_POST['body_type'];
        $vehicleModel = $_POST['vehicle_model'];
        $vehicleWeight = $_POST['vehicle_weight'];
    
        // Perform import duty calculation logic
        // KRA provides the current Retail Selling Price (CRSP) for the vehicle
        $crsp = $vehiclePrice;
    
        // Apply depreciation to get Customs Value
        $customsValue = $crsp * 0.85;
    
        // Calculate Import Duty (35% of Customs Value)
        $importDuty = $customsValue * 0.35;
    
        // Calculate Excise Duty (20% of Customs Value + Import Duty)
        $exciseDuty = ($customsValue + $importDuty) * 0.20;
    
        // Calculate VAT (16% of Customs Value + Import Duty + Excise Duty)
        $vat = ($customsValue + $importDuty + $exciseDuty) * 0.16;
    
        // Calculate IDF Fee (3.5% of Customs Value)
        $idfFee = $customsValue * 0.035;
    
        // Calculate RDL Fee (2% of Customs Value)
        $rdlFee = $customsValue * 0.02;
    
        // Display results in a table
        echo "<table>";
        echo "<tr><th>Description</th><th>Amount</th></tr>";
        echo "<tr><td>CRSP Value</td><td>Kes $vehiclePrice</td></tr>";
        echo "<tr><td>Customs Value</td><td>Kes " . number_format($customsValue, 2) . "</td></tr>";
        echo "<tr><td>Import Duty</td><td>Kes " . number_format($importDuty, 2) . "</td></tr>";
        echo "<tr><td>Excise Duty</td><td>Kes " . number_format($exciseDuty, 2) . "</td></tr>";
        echo "<tr><td>VAT</td><td>Kes " . number_format($vat, 2) . "</td></tr>";
        echo "<tr><td>IDF Fee</td><td>Kes " . number_format($idfFee, 2) . "</td></tr>";
        echo "<tr><td>RDL Fee</td><td>Kes " . number_format($rdlFee, 2) . "</td></tr>";
        echo "</tr>";
         echo "<td>How Is Car Duty Calculated In Kenya?</td>";
         echo "<td>The Current Retail Selling Price (CRSP) of your vehicle is provided by the KRA.
          The KRA compares the CRSP value and the actual invoice value of the car and uses the higher of the 
          two. Customs value is then calculated by applying the depreciation to the CRSP value. The excise duty,
           import duty, VAT and the IDF Fee are all calculated from the customs value.


         This calculation is as follows:
         '<br>''<br>'
         KRA provide the current Retail Selling Price (CRSP) for your vehicle.
         '<br>''<br>'
         Customs Value is the CRSP value with depreciation applied.
         '<br>''<br>'
         Import Duty is 35% of the Customs Value.
         '<br>''<br>'
         Excise Duty is 20% of the Customs Value + Import Duty.
         '<br>''<br>'
         VAT is 16% of the Customs Value + Import Duty + Excise Duty.
         '<br>''<br>'
         IDF Fee 3.5% of the Customs Value.
         '<br>''<br>'
         RDL Fee is 2% of the Customs Value.</td>";
         echo "</tr>";
        echo "</table>";
    } elseif (isset($_POST['form4'])) {
         // Import duty calculation for Motor Cycle
        // Retrieve form input values
        $motorCyclePrice = floatval(str_replace(',', '', $_POST['motor_cycle_price']));
        $manufacturingM = $_POST['manufacturing_m'];
        $manufacturingY = $_POST['manufacturing_y'];
        $manufacturer_c = $_POST['manufacturer_c'];
        $bodyT = $_POST['body_t'];
        $vehicleM = $_POST['motor_model'];
        $motor_weight = $_POST['motor_weight'];
    
        // Perform import duty calculation logic
        // KRA provides the current Retail Selling Price (CRSP) for the vehicle
        $motorcrsp = $motorCyclePrice;
    
        // Apply depreciation to get Customs Value
        $motorcustomsValue = $motorcrsp * 0.85;
    
        // Calculate Import Duty (35% of Customs Value)
        $motorimportDuty = $motorcustomsValue * 0.35;
    
        // Calculate Excise Duty (20% of Customs Value + Import Duty)
        $motorexciseDuty = ($motorcustomsValue + $motorimportDuty) * 0.20;
    
        // Calculate VAT (16% of Customs Value + Import Duty + Excise Duty)
        $motorvat = ($motorcustomsValue + $motorimportDuty + $motorexciseDuty) * 0.16;
    
        // Calculate IDF Fee (3.5% of Customs Value)
        $motoridfFee = $motorcustomsValue * 0.035;
    
        // Calculate RDL Fee (2% of Customs Value)
        $motor_rdlFee = $motorcustomsValue * 0.02;
    
        // Display results in a table
        echo "<table>";
        echo "<tr><th>Description</th><th>Amount</th></tr>";
        echo "<tr><td>CRSP Value</td><td>Kes $motorCyclePrice</td></tr>";
        echo "<tr><td>Customs Value</td><td>Kes " . number_format($motorcustomsValue, 2) . "</td></tr>";
        echo "<tr><td>Import Duty</td><td>Kes " . number_format($motorimportDuty, 2) . "</td></tr>";
        echo "<tr><td>Excise Duty</td><td>Kes " . number_format($motorexciseDuty, 2) . "</td></tr>";
        echo "<tr><td>VAT</td><td>Kes " . number_format($motorvat, 2) . "</td></tr>";
        echo "<tr><td>IDF Fee</td><td>Kes " . number_format($motoridfFee, 2) . "</td></tr>";
        echo "<tr><td>RDL Fee</td><td>Kes " . number_format($motor_rdlFee, 2) . "</td></tr>";
        echo "</tr>";
         echo "<td>How Is Car Duty Calculated In Kenya?</td>";
         echo "<td>The Current Retail Selling Price (CRSP) of your vehicle is provided by the KRA.
          The KRA compares the CRSP value and the actual invoice value of the car and uses the higher of the 
          two. Customs value is then calculated by applying the depreciation to the CRSP value. The excise duty,
           import duty, VAT and the IDF Fee are all calculated from the customs value.


         This calculation is as follows:
         '<br>''<br>'
         KRA provide the current Retail Selling Price (CRSP) for your vehicle.
         '<br>''<br>'
         Customs Value is the CRSP value with depreciation applied.
         '<br>''<br>'
         Import Duty is 35% of the Customs Value.
         '<br>''<br>'
         Excise Duty is 20% of the Customs Value + Import Duty.
         '<br>''<br>'
         VAT is 16% of the Customs Value + Import Duty + Excise Duty.
         '<br>''<br>'
         IDF Fee 3.5% of the Customs Value.
         '<br>''<br>'
         RDL Fee is 2% of the Customs Value.</td>";
         echo "</tr>";
        echo "</table>";
     } else {
         // Display a default message or any other content when no form is submitted
         echo "Select a Taxation calculation to perform.";

     }
?>
                                </div>
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
    document.getElementById("importMotorModalForm").classList.add("hidden-form");

    // Show the selected form
    document.getElementById(selectedOption + "Form").classList.remove("hidden-form");
}


/***
 * JavaScript to dynamically show/hide the mortgage interest, insurance premium, and home ownership total deposit fields based on the user's selection. 
 * 
 * 
 */
const mortgageInterestId = document.getElementById('mortgageInterestId');
const insurancePremiumId = document.getElementById('insurancePremiumId');
const homeOwnershipDepositId = document.getElementById('homeOwnershipDepositId');

const mortgageYes = document.getElementById('mortgageYes');
const mortgageNo = document.getElementById('mortgageNo');
const insuranceYes = document.getElementById('insuranceYes');
const insuranceNo = document.getElementById('insurancerNo');
const homeYes = document.getElementById('homeYes');
const homeNo = document.getElementById('homeNo');

// Hide all input fields initially
mortgageInterestId.style.display = 'none';
insurancePremiumId.style.display = 'none';
homeOwnershipDepositId.style.display = 'none';

// Uncheck all radio buttons before checking the newly selected one
function uncheckAllRadioGroup(groupName) {
    const radioGroup = document.getElementsByName(groupName);
    for (let i = 0; i < radioGroup.length; i++) {
        if (radioGroup[i].checked) {
            radioGroup[i].checked = false;
        }
    }
}

// Handle mortgage radio buttons
mortgageYes.addEventListener('click', () => {
    uncheckAllRadioGroup('mortgage');
    mortgageInterestId.style.display = 'block';
    mortgageYes.checked = true;
});

mortgageNo.addEventListener('click', () => {
    mortgageInterestId.style.display = 'none';
    mortgageYes.checked = false; // Explicitly uncheck YES when NO is selected
});

// Handle insurance radio buttons
insuranceYes.addEventListener('click', () => {
    uncheckAllRadioGroup('insurance');
    insurancePremiumId.style.display = 'block';
    insuranceYes.checked = true;
});

insuranceNo.addEventListener('click', () => {
    insurancePremiumId.style.display = 'none';
    insuranceYes.checked = false; // Explicitly uncheck YES when NO is selected
});

// Handle home ownership radio buttons
homeYes.addEventListener('click', () => {
    uncheckAllRadioGroup('home');
    homeOwnershipDepositId.style.display = 'block';
    homeYes.checked = true;
});

homeNo.addEventListener('click', () => {
    homeOwnershipDepositId.style.display = 'none';
    homeYes.checked = false; // Explicitly uncheck YES when NO is selected
});
</script>

<?php require_once('footer.php'); ?>