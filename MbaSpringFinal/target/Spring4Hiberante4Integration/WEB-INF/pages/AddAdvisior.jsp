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
  <style>
   
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      
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
	
	<img src="<c:url value="resources/images/header.jpg"/>"/>
	  </div>
	 <div class="col-sm-2">
      
    </div>
    <div class="col-sm-8">
      <h2>Add Advisor</h2>
    <form class="form-horizontal" action="/saveAdvisor" method="POST">
    <div class="form-group">
    <label class="control-label col-sm-4" for="fname">First name:</label>
    <div class="col-sm-8">
      <input type="text" name="first_name" class="form-control" id="fname" placeholder="first name">
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
      <input type="text" name="email" class="form-control" id="email" placeholder="email">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="phone">phone number:</label>
    <div class="col-sm-8">
      <input type="text" name="phone" class="form-control" id="phone" placeholder="phone ">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="Department">Department:</label>
    <div class="col-sm-8">
      <input type="text" name="department" class="form-control" id="Department">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="status">Active/Inactive:</label>
    <div class="col-sm-8">
      <select name="status">
       <option >select</option>
      <option value="Active">Active</option>
      <option value="Inactive">Inactive</option>
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
      <div class="col-sm-2">
      
    </div>
    
    </div>
    <div class="col-sm-2">
          </div>
  </div>
</div>

</body>
</html>

