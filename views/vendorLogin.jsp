<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Way 2 Policy Vendor Login Form</title>
<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


<!-- Spring Csss, Scripts and Images -->

<spring:url value="/res/static/styles/indexstyle.css" var="indexStyle" />
<link href="${indexStyle}" rel="stylesheet" />

<spring:url value="/res/static/images" var="images" />
<!-- End Spring Css, Scripts and Images -->

</head>
<body>
	<div class="form">



		<div class="tab-content">
			<button type="button" class="button button-block2" disabled>Vendor</button>
			<br> 
			 <a href="http://localhost:8085/Way2Policy/">
                	<img src="${images}\logo.png" alt="ebar ki hobe" width="65" height="65" style="margin-left:230px;">
                </a>

			<h1>Welcome Vendor of Way 2 Policy</h1>
			
			
			
			
			<!-- Form begins here!-->
			<form:form action="vendorLoginCheck" modelAttribute="vendorCheck"
				method="post">

		<!-- Condition Check begins -->
			<c:if test="${loginStatus eq -2 }">
					<div class="form-group">
						<div class="alert alert-danger alert-dismissible">
							<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
							<p style="color:red"><strong>Error!</strong> Password Mismatch</p>
						</div>
					</div>
				</c:if>
                <c:if test="${loginStatus eq -1 }">
					<div class="form-group">
						<div class="alert alert-danger alert-dismissible">
							<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
							<p style="color:red"><strong>Error!</strong> Invalid User Name.</p>
						</div>
					</div>
				</c:if>
                
				
			<!-- Condition Check ends -->

				<div class="field-wrap">
					<form:label path="id">
                          Id<span class="req">*</span>
					</form:label>
					<form:input path="id" type="text" name="username"
						required="required" autocomplete="off" />
				</div>


				<div class="field-wrap">
					<form:label path="password">
                        Password<span class="req">*</span>
					</form:label>
					<form:input path="password" type="password" name="password"
						required="required" autocomplete="off" />
				</div>
				<p class="register">
					<a href="<c:url value="/newVendorRegistration" />">New Vendor? Register Here</a>
				</p>
				<button type="submit" name="loginadmin" 
					class="button button-block" />Submit</button>

			</form:form>


		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script type="text/javascript"
	src='<spring:url value="/res/static/scripts/index.js"/>'></script>

	

</body>
</html>