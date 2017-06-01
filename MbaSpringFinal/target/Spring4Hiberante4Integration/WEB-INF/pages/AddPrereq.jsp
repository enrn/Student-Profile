<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Prerequisites</title>
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
	
	<img src="images/header.jpg">This is header
	  </div>
	 <div class="col-sm-2">
      
    </div>
    <div class="col-sm-8">
      <h2>Add Prerequisites</h2>
    <form class="form-horizontal" action="/addPrereq" method="POST">
    <div class="form-group">
    <label class="control-label col-sm-4" for="Prereq">Prereq name:</label>
    <div class="col-sm-8">
      <input type="text" name="prereq_name" class="form-control" id="Prereq">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="prefix">Prereq Prefix:</label>
    <div class="col-sm-8">
      <input type="text" name="prereq_prefix" class="form-control" id="prefix" placeholder="eg OS">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-4" for="number">Prereq number:</label>
    <div class="col-sm-8">
      <input type="text" name="prereq_number" class="form-control" id="number" placeholder="eg OS512">
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

