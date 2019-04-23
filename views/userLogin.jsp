<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Way 2 Policy User Login Form</title>
<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- Spring Csss, Scripts and Images -->

<spring:url value="/res/static/styles/indexstyle.css" var="indexStyle" />
<link href="${indexStyle}" rel="stylesheet" />

<spring:url value="/res/static/images" var="images" />

<!-- End Spring Css, Scripts and Images -->


</head>
<body>
	<div class="form">



		<div class="tab-content">
			<button type="button" class="button button-block2">User</button>
			<br> <a href="http://localhost:8085/Way2Policy/"> <img
				src="${images}\logo.png" alt="ebar ki hobe" width="65" height="65"
				style="margin-left: 230px;">
			</a>


			<h1>Welcome User of Way 2 Policy</h1>
			


			<form:form action="userLoginCheck" method="post"
				modelAttribute="userCheck">
				
				<c:if test="${loginStatus eq -2 }">
				<!-- <div class="form-group"> -->
				<!-- <div class="alert alert-danger alert-dismissible"> -->
				<div class="alert alert-warning">
					<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
					<p style="color: red">
						<strong>Error!</strong> Password Mismatch
					</p>
				</div>
				<!-- </div> -->
			</c:if>
			<c:if test="${loginStatus eq -1 }">
				<!-- <div class="form-group"> -->
				<!-- <div class="alert alert-danger alert-dismissible"> -->
				<div class="alert alert-warning">
					<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
					<p style="color: red">
						<strong>Error!</strong> Invalid User Name.
					</p>
				</div>
				<!-- </div> -->
			</c:if>


				<div class="field-wrap">
					<form:label path="emailId">
                          Email Id<span class="req">*</span>
					</form:label>
					<form:input path="emailId" type="text" name="username"
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
					<a href="<c:url value="/newUserRegistration" />">New User?
						Register Here</a>
				</p>
				</br>
				<p class="register">
					<a href="<c:url value="/forgotPassword" />">Forgot Password? Click Here.</a>
				</p>

				<button type="submit" name="loginadmin" class="button button-block" />Login</button>
			</form:form>





		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script type="text/javascript"
		src='<spring:url value="/res/static/scripts/index.js"/>'>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
	</script>




</body>
</html>