<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Student</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <style>
   .error {
   color: red;
   }
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
<body ng-app="">

  
<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2">
      
    </div>
    <div class="col-sm-8">
    <div class="page-header text-center" style="margin-top:00px; ">
	
	<img src="<c:url value="resources/images/header.jpg"/>"/>
	  </div>
	 <div class="col-sm-3" style="text-align:left; padding-left: 0px">
      
  <c:import url="/resources/images/QuickLinks.jsp" />
</div>
    <div class="col-sm-6">
      <h2>Add Student</h2>
    <form class="form-horizontal"  name="myform" action="/saveStudent" method="POST">
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
      <input type="text" name="last_name" class="form-control" id="lname" placeholder="Last name" ng-model="last_name" required="required">
      <span class="error" ng-show="myform.last_name.$touched && myform.last_name.$invalid">Last name required.</span>
    </div>
    
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="address">Address:</label>
    <div class="col-sm-8">
      <input type="text" name="address" class="form-control" id="address" placeholder="Address" ng-model="address" required="required">
      <span class="error" ng-show="myform.address.$touched && myform.address.$invalid">Address required.</span>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="phone">phone number:</label>
    <div class="col-sm-8">
      <input type="text" name="phone" class="form-control" id="phone" placeholder="phone " ng-model="phone" required="required">
      <span class="error" ng-show="myform.phone.$touched && myform.phone.$invalid">Phone number required.</span>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="aemail">alternate email:</label>
    <div class="col-sm-8">
      <input type="text" name="alternate_email" class="form-control" id="aemail">
      <span class="error" ng-show="myform.alternate_email.$touched && myform.alternate_email.$invalid">email required.</span>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="uemail">Ucmo email:</label>
    <div class="col-sm-8">
      <input type="email" name="ucmo_email" class="form-control" id="uemail" placeholder="E@ucmo.edu" ng-model="ucmo_email" required="required">
      <span class="error" ng-show="myform.ucmo_email.$touched && myform.ucmo_email.$invalid">Ucmo email required.</span>
      <span class="error" ng-show="myform.ucmo_email.$error.email">
    Not valid email!</span>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="concentration">Concentration:</label>
    <div class="col-sm-8">
      <select name="concentration">
       <option >select Concentration</option>
       <c:forEach items="${concentrationList}" var="conc">
      <option value="${conc.concentration_name}">${conc.concentration_name}</option>
      </c:forEach>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="gre_verbal">gre_verbal:</label>
    <div class="col-sm-8">
      <input type="text" name="gre_verbal" class="form-control" id="gre_verbal">
      
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="gre_quantitative">gre_quantitative:</label>
    <div class="col-sm-8">
      <input type="text" name="gre_quantitative" class="form-control" id="gre_quantitative" >
     
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="gpa">gpa:</label>
    <div class="col-sm-8">
      <input type="text" name="gpa" class="form-control" id="gpa" ng-model="gpa" required="required">
      <span class="error" ng-show="myform.gpa.$touched && myform.gpa.$invalid">GPA required.</span>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-8">
      <input type="hidden" name="password" class="form-control" value="mba123">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-8">
      <input type="submit" name="submit" value="Add" class="btn btn-default">
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

