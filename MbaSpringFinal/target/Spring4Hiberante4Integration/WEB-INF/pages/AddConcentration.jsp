<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Concentration</title>
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
      <h2>Add Concentration</h2>
    <form class="form-horizontal" action="/addConcentration" method="POST">
    <div class="form-group">
    <label class="control-label col-sm-4" for="cname">Concentration name:</label>
    <div class="col-sm-8">
      <input type="text" name="concentration_name" class="form-control" id="cname" placeholder="eg Account">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="degree_code">Degree Code:</label>
    <div class="col-sm-8">
      <input type="text" name="degree_code" class="form-control" id="degree_code" placeholder="eg C125">
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

