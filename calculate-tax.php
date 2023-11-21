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
                            <select id="calculationSelect" class="form-control select2 mid-cat" onchange="showForm()">
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
                                                <input class="form-control" type="text" id="yearInput"
                                                    pattern="[0-9]{4}" name="year_taxation" placeholder="2023">
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
                                                <label for=""> Vehicle Month of Manufacture *: </label>
                                                <select name="manafacturer" class="form-control ">
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
                                                <select name="manafacturer" class="form-control ">
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
                                                <select name="manafacturer" class="form-control ">
                                                    <option value="">Select Vehicle Maker</option>
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
                                                <select name="manafacturer" class="form-control ">
                                                    <option value="">Select Vehicle Body Type</option>
                                                    <?php
                                                      $statement = $pdo->prepare("SELECT * FROM tbl_vehicle_body_type ORDER BY body_type ASC");
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
                                                <input class="form-control" type="text" name="vehicle_model"
                                                    placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Vehicle Engine Size*: <i><small>In Cc</small></i>
                                                </label>
                                                <input class="form-control" type="number" name="vehicle_weight" min="1"
                                                    max="40" value="0">
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
                                                <label for=""> Motor Cycle Month of Manufacture *: </label>
                                                <select name="manafacturer_month" class="form-control ">
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
                                                <select name="manafacturer_y" class="form-control ">
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
                                                <label for=""> Motor Cycle Make *: </label>
                                                <select name="manafacturer_m" class="form-control ">
                                                    <option value="">Select Vehicle Maker</option>
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
                                                <select name="body_type_m" class="form-control ">
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
                                                    placeholder="Income eg Ksh 600,000">
                                            </div>

                                            <div class="form-group">
                                                <label for=""> Motor Cycle Engine Size*: <i><small>In Cc</small></i>
                                                </label>
                                                <input class="form-control" type="number" name="motor_weight" min="1"
                                                    max="40" value="0">
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
         $paymentPeriod = $_POST['p_monthly'] ? 'Monthly' : 'Yearly';
                                         
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
             [170000, 0.1],
             [240000, 0.25],
             [320000, 0.3],
             [99999999, 0.32],
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

         // Calculate insurance relief
         $insuranceRelief = min($grossSalary * 0.07, $insurancePremium);

         // Calculate home ownership relief
         $homeOwnershipRelief = 0;
         if ($homeOwnership === 'Yes') {
             $homeOwnershipRelief = min($grossSalary * 0.2, $homeOwnershipDeposit);
         }

         // Deduct reliefs from taxable income
         $taxableIncome -= $mortgageRelief + $insuranceRelief + $homeOwnershipRelief;

         // Calculate PAYE based on tax slabs
         $payeAmount = 0;
         foreach ($taxSlabs as $slabIndex => $slab) {
             if ($taxableIncome > $slab[0]) {
                 $payeAmount += ($slab[0] - $slab[1]) * $slab[0];
                 $taxableIncome -= $slab[0];
             } else {
                 $payeAmount += $taxableIncome * $slab[0];
                 break;
             }
         }
                                        
         // Calculate net salary
         $netSalary = $grossSalary - $payeAmount;

         // Display results
         //  echo "Gross Pay: Kes " . number_format($grossSalary, 2) . "\n";
         //  echo "<br>";
         //  echo "Contribution Benefit: Kes " . number_format($contributionBenefit, 2) . "\n";
         //  echo "<br>";
         //  echo "Total Deductions: Kes " . number_format($contributionBenefit + $mortgageRelief + $insuranceRelief + $homeOwnershipRelief, 2) . "\n";
         //  echo "<br>";
         //  echo "Taxable Pay: Kes " . number_format($taxableIncome, 2) . "\n";
         //  echo "<br>";
         //  echo "Personal Relief: Kes 2,400.00\n";
         //  echo "<br>";
         //  echo "Insurance Relief: Kes 360.00\n";
         //  echo "<br>";
         //  echo "PAYE: Kes " . number_format($payeAmount, 2) . "\n";
         //  echo "<br>";
         //  echo "Net Salary: Kes " . number_format($netSalary, 2) . "\n";

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
         echo "</table>";

     } elseif(isset($_POST['form3'])) {
                                    
         // Code for processing Import Duty calculation
         // Retrieve form input values
         $manufacturingMonth = $_POST['manufacturing_month'];
         // Add more variables as needed for the import duty calculation
         // Calculate Import Duty amount (example calculation, you may need to replace this with actual calculation)
         $importDutyAmount = 1000; // Adjust this formula based on your requirements
         // Display the Import Duty calculation result
         echo "Import Duty Calculation Result: $importDutyAmount";

     } elseif(isset($_POST['form4'])) {
                                    
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