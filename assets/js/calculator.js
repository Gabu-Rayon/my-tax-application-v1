
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


//to pri the taxation calculation
function printContent(el) {
    var restorePage = document.body.innerHTML;
    var printContent = document.getElementById(el).outerHTML;
    document.body.innerHTML = printContent;
    window.print();
    document.body.innerHTML = restorePage;
}