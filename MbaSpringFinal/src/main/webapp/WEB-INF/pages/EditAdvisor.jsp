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
    <div class="page-header text-center" style="margin-top:00px; ">
	
	<img src="<c:url value="resources/images/header.jpg"/>"/>
	  </div>
	 <div class="col-sm-3" style="text-align:left; padding-left: 0px">
      
  <c:import url="/resources/images/QuickLinks.jsp" />
      
    </div>
    <div class="col-sm-8">
      <h2>Add Advisor</h2>
    <form class="form-horizontal" action="/updateAdvisor" method="POST">
    
    <div class="form-group">
    
    <div class="col-sm-8">
      <input type="hidden" name="advisor_id" class="form-control" id="fname" value="${advisorObject.advisor_id}">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-4" for="fname">First name:</label>
    <div class="col-sm-8">
      <input type="text" name="first_name" class="form-control" id="fname" value="${advisorObject.first_name}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="lname">Last name:</label>
    <div class="col-sm-8">
      <input type="text" name="last_name" class="form-control" id="lname" value="${advisorObject.last_name}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="email">Email:</label>
    <div class="col-sm-8">
      <input type="text" name="email" class="form-control" id="email" value="${advisorObject.email}">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="phone">phone number:</label>
    <div class="col-sm-8">
      <input type="text" name="phone" class="form-control" id="phone" value="${advisorObject.phone}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="Department">Department:</label>
    <div class="col-sm-8">
      <input type="text" name="department" class="form-control" id="Department" value="${advisorObject.department}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="status">Active/Inactive:</label>
    <div class="col-sm-8">
      <select name="status">
       <option value="${advisorObject.status}">${advisorObject.status}</option>
      <option value="Active">Active</option>
      <option value="Inactive">Inactive</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="status">Role:</label>
    <div class="col-sm-8">
      <select name="role">
       <option value="${advisorObject.role}">${advisorObject.role}</option>
      <option value="advisor">Advisor</option>
      <option value="director">Director</option>
      </select>
    </div>
  </div>
  
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-8">
      <input type="submit" name="submit" value="Update" class="btn btn-default">
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

