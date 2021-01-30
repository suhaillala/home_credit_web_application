<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Online Application to Predict Home Loan Eligibility & Estimated Amount</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link rel="stylesheet" href="assets/css/NZDropdown-Singlee.css">
    <link rel="stylesheet" href="assets/css/smoothproducts.css">
    
    <style>
	  .required:after {
	    content:" *";
	    color: red;
	  }
	</style>
</head>

<body>
    <jsp:include page="menu.jsp" />
    <main class="page login-page">
        <section class="clean-block clean-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Loan Eligibility Form</h2>
                </div>
                <form:form action="/submitLoanApplication" method="post" modelAttribute="userLoanFrom" id="loanformc" >
                    <div class="form-group"><label class="required">Annual Income</label>
                    	<form:input class="form-control item numeric" path="totalIncome" id="income" />
                    </div>
                    <div class="form-group"><label  class="required">Previous Loan Amount (if any)</label>
                    	<form:input class="form-control numeric" path="totalCredit" id="credit" />
                    </div>
                    <div class="form-group"><label  class="required">Gender</label>
                        <div>
                            <fieldset>
                                <div class="custom-control custom-radio">
                                	<form:radiobutton path="gender" value="M"  checked="checked" /><label>Male</label>
                                </div>
                                <div class="custom-control custom-radio">
                                	<form:radiobutton path="gender" value="F"  /><label>Female</label>
                                </div>
                            </fieldset>
                            <fieldset></fieldset>
                        </div>
                    </div>
                    <div class="form-group"><label for="password" class="required">Car Ownership</label>
                        <div>
                            <fieldset></fieldset>
                            <fieldset>
                                <div class="custom-control custom-radio custom-control-inline">
                                	<form:radiobutton path="ownCar" value="true"  checked="checked" /><label>Yes</label></div>
                                <div class="custom-control custom-radio custom-control-inline">
                                	<form:radiobutton path="ownCar" value="false" /><label>No</label></div>
                            </fieldset>
                            <fieldset></fieldset>
                        </div>
                    </div>
                    <div class="form-group"><label for="password" class="required">Having Landline Phone</label>
                        <div>
                            <fieldset></fieldset>
                            <fieldset>
                                <div class="custom-control custom-radio custom-control-inline">
                                	<form:radiobutton path="phoneFlag" value="true"  checked="checked"  /><label>Yes</label></div>
                                <div class="custom-control custom-radio custom-control-inline">
                                	<form:radiobutton path="phoneFlag" value="false" /><label>No</label></div>
                            </fieldset>
                            <fieldset></fieldset>
                        </div>
                    </div>
                    <div class="form-group"><label for="password" class="required">Number of Kids in Household</label>
                    	<form:input class="form-control numeric" path="noOfChildren"  />
                    </div>
                    <div class="form-group"><label for="password" class="required">Marital Status</label>
	                     <form:select path="familyStatus" class="form-control" style="height: 28px;padding-top: 3px;padding-bottom: 3px;font-size: 12px;width: 100%;">
	                     	<form:option value="Single / Unmarried" selected="">Single / Unmarried</form:option>
	                    	<form:option value="Married">Married</form:option>
	                    	<form:option value="Civil Marriage">Civil Marriage</form:option>
	                    	<form:option value="Separated">Separated</form:option>
	                    	<form:option value="Widow">Widow</form:option>
	                    </form:select>
                    </div>
                    <div class="form-group"><label for="password" class="required">Education</label>
                    <form:select path="educationType" class="form-control" style="height: 28px;padding-top: 3px;padding-bottom: 3px;font-size: 12px;width: 100%;">
	                    <form:option value="Academic Degree" selected="">Academic Degree</form:option>
	                    <form:option value="Higher Education">Higher Education</form:option>
	                    <form:option value="Incomplete Higher">Incomplete Higher</form:option>
	                    <form:option value="Lower Secondary">Lower Secondary</form:option>
	                    <form:option value="Secondary / Secondary Special">Secondary / Secondary Special</form:option>
                    </form:select>
                    </div>
                 	<div class="form-group"><label for="password" class="required">Occupation</label>
	                 	<form:select path="occupation" class="form-control" style="height: 28px;padding-top: 3px;padding-bottom: 3px;font-size: 12px;width: 100%;">
		                 	<form:option value="Accountant" selected="">Accountant</form:option>
		                 	<form:option value="Cleaning Staff">Cleaning Staff</form:option>
		                 	<form:option value="Cooking Staff">Cooking Staff</form:option>
		                 	<form:option value="Core Staff">Core Staff</form:option>
		                 	<form:option value="Drivers">Drivers</form:option>
		                 	<form:option value="Tech Staff (High Skilled)">Tech Staff (High Skilled)</form:option>
		                 	<form:option value="HR Staff">HR Staff</form:option>
		                 	<form:option value="IT Staff">IT Staff</form:option>
		                 	<form:option value="Laborers">Laborers</form:option>
		                 	<form:option value="Laborers (Low Skilled)">Laborers (Low Skilled)</form:option>
		                 	<form:option value="Managers">Managers</form:option>
		                 	<form:option value="Medicine Staff">Medicine Staff</form:option>
		                 	<form:option value="Private Service Staff">Private Service Staff</form:option>
		                 	<form:option value="Realty Agents">Realty Agents</form:option>
		                 	<form:option value="Sales Staff">Sales Staff</form:option>
		                 	<form:option value="Secretaries">Secretaries</form:option>
		                 	<form:option value="Security Staff">Security Staff</form:option>
		                 	<form:option value="Waiters / Barmen">Waiters / Barmen</form:option>
		                 	<form:option value="Others">Others</form:option>
	                 	</form:select>
                 	</div>
                	<div class="form-group"><label class="required">Birth Date</label>
                		<form:input type="date" path="dob"  />
                	</div>
                    <div class="form-group"><label  class="required">Employment Date</label>
                    	<form:input  type="date" path="employedDays" />
                    </div>
                    <input type="submit" class="btn btn-primary btn-block bttn" value="Submit" id="btnn" />
        		</form:form>
             </div>
        </section>
    </main>
<jsp:include page="footer.jsp" />
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="assets/js/smoothproducts.min.js"></script>
    <script src="assets/js/jquery.numeric.min.js"></script>
    <script src="assets/js/theme.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			$(".numeric").numeric();
		});
	</script>
</body>

</html>