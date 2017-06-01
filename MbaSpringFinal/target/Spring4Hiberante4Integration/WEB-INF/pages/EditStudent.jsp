<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Edit student</title>
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
    <div class="page-header text-center">
	
	<img src="images/header.jpg">
	  </div>
	 <div class="col-sm-2">
      
    </div>
    <div class="col-sm-8">
      <h2>Edit Student</h2>
     
      
    <form class="form-horizontal" action="/updateStudent" method="POST">
    <div class="form-group">
    <label class="control-label col-sm-4" for="fname">First name:</label>
    <div class="col-sm-8">
      <input type="text" name="first_name" class="form-control" id="fname" value="${studentObject.first_name}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="lname">Last name:</label>
    <div class="col-sm-8">
      <input type="text" name="last_name" class="form-control" id="lname" value="${studentObject.last_name}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="address">Address:</label>
    <div class="col-sm-8">
      <input type="text" name="address" class="form-control" id="address" value="${studentObject.address}">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="phone">phone number:</label>
    <div class="col-sm-8">
      <input type="text" name="phone" class="form-control" id="phone" value="${studentObject.phone}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="aemail">alternate email:</label>
    <div class="col-sm-8">
      <input type="text" name="alternate_email" class="form-control" id="aemail" value="${studentObject.alternate_email}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="uemail">Ucmo email:</label>
    <div class="col-sm-8">
      <input type="text" name="ucmo_email" class="form-control" id="uemail" value="${studentObject.ucmo_email}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="concentration">Concentration:</label>
    <div class="col-sm-8">
      <input type="text" name="concentration" class="form-control" id="concentration" value="${studentObject.concentration}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="gre_verbal">gre_verbal:</label>
    <div class="col-sm-8">
      <input type="text" name="gre_verbal" class="form-control" id="gre_verbal" value="${studentObject.gre_verbal}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="gre_quantitative">gre_quantitative:</label>
    <div class="col-sm-8">
      <input type="text" name="gre_quantitative" class="form-control" id="gre_quantitative" value="${studentObject.gre_quantitative}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="gpa">gpa:</label>
    <div class="col-sm-8">
      <input type="text" name="gpa" class="form-control" id="gpa" value="${studentObject.gpa}">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-8">
      <input type="submit" name="submit" value="Update" class="btn btn-default">
    </div>
  </div>
        
    </form>
     
      </div>
      <div class="col-sm-2">
      
    </div>
    
    </div>
    <div class="col-sm-2">
          </div>
  </div>
</div>

</body>
</html>

