<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student List</title>
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
	  
	 <div class="container-fluid">
      <h2>List Of Student</h2>
    <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Ucmo Email</th>
                        <th>Concentration</th>
                        <th>Entry Date</th>
                        <th>Gre verbal</th>
                        <th>Gre Quantative</th>
                        <th>Gpa</th>
                        <th>Edit</th>
                        <th>delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${studentList}" var="std">
                        <tr>
                        	<th><c:out value="${std.student_id}"/></th>
                        	<th><c:out value="${std.first_name}"/></th>
                        	<th><c:out value="${std.last_name}"/></th>
                        	<th><c:out value="${std.address}"/></th>
                        	<th><c:out value="${std.alternate_email}"/></th>
                        	<th><c:out value="${std.ucmo_email}"/></th>
                        	<th><c:out value="${std.concentration}"/></th>
                        	<th><c:out value="${std.program_entry_date}"/></th> 
                        	<th><c:out value="${std.gre_verbal}"/></th>
                        	<th><c:out value="${std.gre_quantitative}"/></th>
                        	<th><c:out value="${std.gpa}"/></th>
             				<th><a href="editStudent?id=<c:out value='${std.student_id}'/>">Edit</a></th> 
                            <th><a href="deleteStudent?id=<c:out value='${std.student_id}'/>">Delete</a></th>
                                                    	
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
     
      </div>
     </div>
    
    <div class="col-sm-2">
          </div>
  </div>
  </div>

</body>
</html>

