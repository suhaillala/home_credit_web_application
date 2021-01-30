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

	<style>
	  .required:after {
	    content:" *";
	    color: red;
	  }
	</style>
</head>

<body>
    <jsp:include page="menu.jsp" />
    
  
    
    <main class="page contact-us-page">
        <section class="clean-block clean-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Contact Us</h2>
                 </div>
                 <form:form action="/contact-us" method="post" modelAttribute="contactUSBean" id="contactUSform">
                   <div class="form-group" ><label class="required">Name</label><form:input class="form-control" path="name" /></div>
                    <div class="form-group"><label class="required">Subject</label><form:input class="form-control" path="subject" /></div>
                    <div class="form-group"><label class="required">Email</label><form:input class="form-control" path="email" /></div>
                    <div class="form-group"><label class="required">Message</label><form:textarea class="form-control" path="message" /></div>
                    <div class="form-group"><input type="submit" class="btn btn-primary btn-block" disabled="disabled" value = "Send" /></div>
                </form:form>
            </div>
        </section>
    </main>
<jsp:include page="footer.jsp" />
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="assets/js/smoothproducts.min.js"></script>
    <script src="assets/js/theme.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			$('#contactUSform :input').keyup(function() {
				var empty = false;
			    $("#contactUSform :input").map(function(){
			         if( $(this).val() == "" ) 
			        	 empty = true;
			    });
			    if (empty) {
	                $('.btn').attr('disabled', 'disabled'); 
	            } else {
	                $('.btn').removeAttr('disabled'); 
	            }
			});
		});
	</script>
</body>

</html>