<!DOCTYPE html>

<html lang="en">

<head>


    <meta charset="UTF-8">


    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>Bootstrap HTML5 Modal with Three Forms</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <style>
        .modal {
            display: none;
            /* Initially, hide all modals */
        }
    </style>
</head>

<body>
    <div class="breadcrumb mb_30">
        <ul>
            <li><a href="#">Home</a></li>
            <li>></li>
            <li><a href="#">Product Tax Calculator</a></li>
            <li>></li>
            <li>Calculate Tax</li>
            <li>></li>
            <li>
                <select id="calculationSelect" onchange="showForm()">
                    <option>Select Calculation Tax ..</option>
                    <option value="vatModal">Paye As You Earn (PAYE)</option>
                    <option value="payeModal">Custom Import Duty</option>
                    <option value="importModal">VAT Calculator</option>
                </select>
            </li>
        </ul>
    </div>

    <div id="vatModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">


                    <h5 class="modal-title">PAYE Calculation</h5>


                    <button type="button" class="close" data-dismiss="modal">&times;</button>


                </div>
                <div class="modal-body">


                    <form>


                        <div class="form-group">


                            <label for="basicSalary">Basic Salary:</label>


                            <input type="number" id="basicSalary" class="form-control" placeholder="Enter basic salary">
                        </div>
                        <div class="form-group">
                            <label for="payePercentage">PAYE Percentage:</label>
                            <input type="number" id="payePercentage" class="form-control"
                                placeholder="Enter PAYE percentage">
                        </div>
                        <button type="button" class="btn btn-primary" onclick="calculatePAYE()">Calculate PAYE</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>


                </div>


            </div>


        </div>


    </div>



    <div id="payeModal" class="modal fade" role="dialog">


        <div class="modal-dialog">


            <div class="modal-content">


                <div class="modal-header">
                    <h5 class="modal-title">Custom Import Duty Calculation</h5>


                    <button type="button" class="close" data-dismiss="modal">&times;</button>


                </div>


                <div class="modal-body">
                    <form>


                        <div class="form-group">


                            <label for="goodsValue">Goods Value:</label>


                            <input type="number" id="goodsValue" class="form-control" placeholder="Enter goods value">


                        </div>
                        <div class="form-group">
                            <label for="importDutyRate">Import Duty Rate:</label>
                            <input type="number" id="importDutyRate" class="form-control"
                                placeholder="Enter import duty rate">
                        </div>
                        <button type="button" class="btn btn-primary" onclick="calculateImportDuty()">Calculate Import
                            Duty</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>


                </div>
            </div>
        </div>