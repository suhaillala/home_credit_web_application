<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Online Loan Eligibility</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link rel="stylesheet" href="assets/css/NZDropdown-Singlee.css">
    <link rel="stylesheet" href="assets/css/smoothproducts.css">
</head>

<body>
    <jsp:include page="menu.jsp" />
    
       
    <main class="page blog-post">
        <section class="clean-block dark">
        
               <div class="container">
            
            <div class="block-heading">
                    <h2 class="text-info">Help</h2>
                    <p>Stuck? All the information available here!</p>
                </div>
               
              
            	<section>
						<h3 class="text-info">Guide to fill the Loan Application Form</h3>
						<p>A typical Loan Application form requires that that all the fields to be properly filled with the information as depicted above.</p>
						<p>Our system then takes all the necessary information provided by you for processing and provides result on whether you are approved or not.</p>
				</section>
               
                    <h4 class="text-info">Sample Loan Eligibility Form</h4>
                
                <form>
                    <div class="form-group"><label for="email">Annual Income</label><label class="text-danger" for="email">&nbsp; &nbsp;Average dollar earnings per annum - Must be integer</label><input class="form-control" type="number" id="password" placeholder="100000" readonly=""></div>
                    <div
                        class="form-group"><label for="password">Previous Loan Amount (if any)</label><label class="text-danger" for="email">&nbsp; &nbsp;Dollar amount of previous loan, 0 for first-time loan seekers - Must be integer</label><input class="form-control" type="number"
                            id="password-2" placeholder="15000" readonly=""></div>
            <div class="form-group"><label for="password">Gender</label>
                <div>
                    <fieldset>
                        <div class="custom-control custom-radio"><input type="radio" id="customRadio1" class="custom-control-input" name="customRadio" checked=""><label class="custom-control-label" for="customRadio1">Male</label></div>
                        <div class="custom-control custom-radio"><input type="radio" id="customRadio2" class="custom-control-input" name="customRadio"><label class="custom-control-label" for="customRadio2">Female</label></div>
                    </fieldset>
                    <fieldset></fieldset>
                </div>
            </div>
            <div class="form-group"><label for="password">Car Ownership</label><label class="text-danger" for="email">&nbsp; &nbsp;Current car ownership. Joint-owners should select 'Yes'.&nbsp;</label>
                <div>
                    <fieldset></fieldset>
                    <fieldset>
                        <div class="custom-control custom-radio custom-control-inline"><input type="radio" id="customRadioInline1" class="custom-control-input" name="customRadioInline" checked=""><label class="custom-control-label" for="customRadioInline1">Yes</label></div>
                        <div class="custom-control custom-radio custom-control-inline"><input type="radio" id="customRadioInline2" class="custom-control-input" name="customRadioInline"><label class="custom-control-label" for="customRadioInline2">No</label></div>
                    </fieldset>
                    <fieldset></fieldset>
                </div>
            </div>
            <div class="form-group"><label for="password">Number of Kids in Household</label><label class="text-danger" for="email">&nbsp; &nbsp;Children below 18 residing in the house - Must be Integer</label><input class="form-control" type="number" id="password-1" readonly=""
                    placeholder="2"></div>
            <div class="form-group"><label for="password">Marital Status</label><select class="form-control" style="height: 28px;padding-top: 3px;padding-bottom: 3px;font-size: 12px;width: 100%;" readonly=""><option value="12" selected="">Single / Unmarried</option><option value="13">Married</option><option value="14">Civil Marriage</option><option value="15">Separated</option><option value="16">Widow</option></select></div>
            <div
                class="form-group"><label for="password">Education</label><label class="text-danger" for="email">Choose 'Academic Degree' if you are holding Bachelor's or higher. For Associate's, choose 'Higher Education'.</label><select class="form-control" style="height: 28px;padding-top: 3px;padding-bottom: 3px;font-size: 12px;width: 100%;"
                    readonly=""><option value="12" selected="">Academic Degree</option><option value="13">Higher Education</option><option value="14">Incomplete Higher</option><option value="15">Lower Secondary</option><option value="16">Secondary / Secondary Special</option></select></div>
                <div
                    class="form-group"><label for="password">Occupation</label><label class="text-danger" for="email">&nbsp; &nbsp;Choose 'Others' if your occupation is not listed</label><select class="form-control" style="height: 28px;padding-top: 3px;padding-bottom: 3px;font-size: 12px;width: 100%;"
                        readonly=""><option value="12" selected="">Accountant</option><option value="13">Cleaning Staff</option><option value="14">Cooking Staff</option><option value="15">Core Staff</option><option value="16">Drivers</option><option value="17">Tech Staff (High Skilled)</option><option value="18">HR Staff</option><option value="19">IT Staff</option><option value="20">Laborers</option><option value="21">Laborers (Low Skilled)</option><option value="22">Managers</option><option value="23">Medicine Staff</option><option value="24">Private Service Staff</option><option value="25">Realty Agents</option><option value="26">Sales Staff</option><option value="27">Secretaries</option><option value="28">Security Staff</option><option value="29">Waiters / Barmen</option><option value="30">Others</option></select></div>
                    <div
                        class="form-group"><label for="password">Birth Date</label><label class="text-danger" for="email">&nbsp; &nbsp;Date of Birth as per government records</label><input class="form-control" type="date" readonly=""></div>
                        <div class="form-group"><label for="password">Employment Date</label><label class="text-danger" for="email">&nbsp; &nbsp;Date of joining current employment as per Tax returns. Students should select current date.</label><input class="form-control" type="date"
                                readonly=""></div><label class="text-danger" for="email">Press 'Submit' once you are done with the form</label><button class="btn btn-primary disabled btn-block" type="submit" disabled="">Submit</button></form>
                        </div>
        </section>
    </main>
 <jsp:include page="footer.jsp" />
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="assets/js/smoothproducts.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>