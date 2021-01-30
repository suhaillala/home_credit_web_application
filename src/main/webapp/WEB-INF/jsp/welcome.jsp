<%@page session="false"%>
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
    <main class="page landing-page">
    
  
        <section class="clean-block clean-hero" style="height: 10%; width: 100%;background-image:url(&quot;assets/img/tech/ssdi.jpg&quot;);color:rgba(9, 162, 255, 0.85);">
            <div class="text">
                <h2>Welcome!</h2>
                <p>Click below to find out your loan eligibility.</p><button class="btn btn-outline-light btn-lg" type="button" onClick="location.href='${pageContext.request.contextPath}/submitLoanApplication'">Click Here</button></div>
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

