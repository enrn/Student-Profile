<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Change Password</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
   
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .page-header{
      	margin-top:-40px;
      }
      .row.content {height:auto;}
    }
  </style>
</head>
<body>

  
<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2">
      
    </div>
    <div class="col-sm-8">
    <div class="page-header text-center" style="margin-top: 00px;">
	
	<img src="<c:url value="resources/images/header.jpg"/>"/>
	  </div>
	  <div class="col-sm-3" style="text-align:left; padding-left: 0px">
      
  <c:import url="/resources/images/AdvisorLinks.jsp" />
    </div>
    
    <div class="col-sm-6">
    
      <h2>Change Password </h2>
    <form class="form-horizontal" action="/updateChangePasswordByAdvisor" method="post">
  <div class="form-group">
    <label class="control-label col-sm-6" for="pass">New Password:</label>
    <div class="col-sm-6">
      <input type="text" name="password" class="form-control" id="pass">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-6" for="pwd">Confirm Password:</label>
    <div class="col-sm-6"> 
      <input type="password" name="confirm password" class="form-control" id="pwd">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <label style="color:red">${message}</label>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Update</button>
    </div>
  </div>
</form>
     
      </div>
      <div class="col-sm-3">
      <span style="float:right;">
    Welcome, ${adObject.first_name}||<label style="color:red;"><a href="Logout">Logout</a></label>
    </span>
    </div>
    
    </div>
    <div class="col-sm-2">
          </div>
  </div>
</div>

</body>
</html>

