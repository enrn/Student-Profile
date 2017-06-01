<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome Student</title>
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
				<div class="page-header text-center" style="margin-top:00px; ">

					<img src="<c:url value="resources/images/header.jpg"/>" />
				</div>
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<h3>Please Complete all the Questions</h3>
					<form class="form" action="/submitQuestions" method="post">
						<div class="form-group" style="text-align:left">
							<label class="control-label col-sm-10" for="q1" >How many classes do you plan to take each fall / spring semester?
</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="q1" name="Answer1"
									required="required">
							</div>
						</div>
						<div class="form-group" style="text-align:left">
							<label class="control-label col-sm-10" for="q2">How many classes to you plan to take in the summer?</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="q2"
									required="required" name="Answer2">
							</div>
						</div>
						<div class="form-group" style="text-align:left">
							<label class="control-label col-sm-10" for="q3">Do you plan to work while pursuing your MBA?</label>
							<div class="col-sm-5">
								<input type="qestion" class="form-control" id="q2"
									required="required" name="Answer3">
							</div>
						</div>
						
						<div class="form-group" style="text-align:left">
							<label class="control-label col-sm-10" for="q4">How many classes to you plan to take in the summer?</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="q2"
									required="required" name="Answer4">
							</div>
						</div>
						<div class="form-group" style="text-align:left">
							<label class="control-label col-sm-10" for="q5">If so, how many hours a week do you plan to work?
</label>
							<div class="col-sm-5">
								<textarea name="Answer5" class="form-control" cols="5" rows="3"
									id="q3" required="required"></textarea>
							</div>
						</div>
						<div class="form-group" style="text-align:left">
							
							<div class="col-sm-5">
								<input name="Student_id" class="form-control" type="hidden" value="${studentObject.student_id}">
							</div>
						</div>
						
						<div class="form-group" style="text-align:left">
							<label class="control-label col-sm-10" for="academicCode">Academic
								code of conduct.</label>
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label><input type="checkbox" name="Academic_code_read"
										value="Yes" required="required"> I accept all academic
										code of conduct</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default" value="submit">Submit</button>
							</div>
						</div>
					</form>

				</div>
				<div class="col-sm-3"><label>Welcome, <label >${studentObject.first_name}</label>||<label style="color:red;"><a href="StudentLogout">Logout</a></label></label></div>
				
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

</body>
</html>

