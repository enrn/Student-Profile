<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
	
	<img src="<c:url value="resources/images/header.jpg"/>"/>
	  </div>
	 <div class="col-sm-2">
      
    </div>
    <div class="col-sm-8">
      <h2>Add Student</h2>
    <form class="form-horizontal" action="/saveStudent" method="POST">
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
    <label class="control-label col-sm-4" for="address">Address:</label>
    <div class="col-sm-8">
      <input type="text" name="address" class="form-control" id="address" placeholder="Address">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="phone">phone number:</label>
    <div class="col-sm-8">
      <input type="text" name="phone" class="form-control" id="phone" placeholder="phone ">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="aemail">alternate email:</label>
    <div class="col-sm-8">
      <input type="text" name="alternate_email" class="form-control" id="aemail">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="uemail">Ucmo email:</label>
    <div class="col-sm-8">
      <input type="text" name="ucmo_email" class="form-control" id="uemail" placeholder="E@ucmo.edu">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="concentration">Concentration:</label>
    <div class="col-sm-8">
      <input type="text" name="concentration" class="form-control" id="concentration" placeholder=" concentration">
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
      <input type="text" name="gre_quantitative" class="form-control" id="gre_quantitative">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="gpa">gpa:</label>
    <div class="col-sm-8">
      <input type="text" name="gpa" class="form-control" id="gpa">
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

