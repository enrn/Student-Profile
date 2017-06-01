<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Student Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.page-header {
		margin-top: -40px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="page-header text-center" style="margin-top: 00px;">

					<img src="<c:url value="resources/images/header.jpg"/>" width=100% />
				</div>
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<h2>Congratulation Your Account has successfully Created!!!</h2>



				</div>
				<div class="col-sm-3"></div>
				<div class="col-sm-3">
					<label>Welcome, <label>${studentObject.first_name}</label>||<span style="color: red;"><a href="StudentLogout">Logout</a></span></label>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

</body>
</html>

