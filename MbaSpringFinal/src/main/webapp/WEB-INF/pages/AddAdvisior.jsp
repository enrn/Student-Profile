<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Advisior</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <style>
   
   .error {
   color: red;
   }
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      
      .page-header{
      	margin-top:-40px;
      }
      .row.content {height:auto;}
    }
  </style>
</head>
<body ng-app="">

  
<div  class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2">
      
    </div>
    <div class="col-sm-8">
    <div class="page-header text-center" style="margin-top: 00px;">
	
	<img src="<c:url value="resources/images/header.jpg"/>"/>
	  </div>
	 <div class="col-sm-3">
      <c:import url="/resources/images/QuickLinks.jsp" />
    </div>
    <div class="col-sm-8">
    <span style="float:right;">
    Welcome, ${adObject.first_name}||<label style="color:red;"><a href="Logout">Logout</a></label>
    </span>
      <h2>Add Advisor</h2>
    <form class="form-horizontal" name="myform" action="/saveAdvisor" method="POST">
    <div class="form-group">
    <label class="control-label col-sm-4" for="fname">First name:</label>
    <div class="col-sm-8">
      <input type="text" name="first_name" class="form-control" id="fname" placeholder="first name" ng-model="first_name" required="required">
          <span class="error" ng-show="myform.first_name.$touched && myform.first_name.$invalid">First name required.</span>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="lname">Last name:</label>
    <div class="col-sm-8">
      <input type="text" name="last_name" class="form-control" id="lname" placeholder="Last name">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="email">Email:</label>
    <div class="col-sm-8">
      <input type="email" name="email" class="form-control" id="email" placeholder="email" ng-model="email" required="required">
      <span class="error" ng-show="myform.email.$touched && myform.email.$invalid">email required.</span>
      <span class="error" ng-show="myform.email.$error.email">email not valid</span>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="phone">phone number:</label>
    <div class="col-sm-8">
      <input type="text" name="phone" class="form-control" id="phone" placeholder="phone " ng-model="phone" required="required">
      <span class="error" ng-show="myform.phone.$touched && myform.phone.$invalid">phone number required.</span>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="Department">Department:</label>
    <div class="col-sm-8">
      <input type="text" name="department" class="form-control" id="Department">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="password">Password:</label>
    <div class="col-sm-8">
      <input type="password" name="password" class="form-control" id="password" ng-model="emailReg" required="required">
      <span class="error" ng-show="myform.password.$touched && myform.password.$invalid">password required.</span>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="cpassword">Confirm Password:</label>
    <div class="col-sm-8">
      <input type="password" name="cpassword" class="form-control" id="cpassword"  ng-pattern="emailReg" ng-model="emailReg1" required="required">
      <span class="error" ng-show="myform.cpassword.$touched && myform.cpassword.$invalid">password required.</span>
     <span class="error"  ng-show="myform.cpassword.$error.pattern">password did no match</span>
      
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="status">Active/Inactive:</label>
    <div class="col-sm-8">
      <select name="status">
       <option >select</option>
      <option value="active">Active</option>
      <option value="inactive">Inactive</option>
      </select>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="role">Role:</label>
    <div class="col-sm-8">
      <select name="role">
       <option >select</option>
      <option value="advisor">Advisor</option>
      <option value="director">Director</option>
      </select>
    </div>
  </div>
  
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-8">
      <input type="submit" name="submit" value="Add" class="btn btn-default">
    </div>
  </div>
        
    </form>
     
      </div>
      <div class="col-sm-1">
      
    </div>
    
    </div>
    <div class="col-sm-2">
          </div>
  </div>
</div>

</body>
</html>

