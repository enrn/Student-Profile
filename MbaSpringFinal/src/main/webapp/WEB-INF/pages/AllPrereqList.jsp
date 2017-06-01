<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Prereq List</title>
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
 
    }
  </style>
</head>
<body>

  
<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-1">
      
    </div>
    <div class="col-sm-10">
    <div class="page-header text-center" style="margin-top:00px; ">
	
	<img src="<c:url value="resources/images/header.jpg"/>" width=100%/>
	  </div>
	  
	 <div class="container-fluid">
	  <div class="col-sm-2" style="text-align:left; padding-left: 0px">
      
  <c:import url="/resources/images/QuickLinks.jsp" />
    </div>
    <div class="col-sm-10">
    <label>List of Prereq</label>
    <span style="float:right;">
    Welcome, ${adObject.first_name}||<label style="color:red;"><a href="Logout">Logout</a></label>
    </span>
     <div style="overflow-x:auto;border-radius:5px 0 0 5px;">
    <table class="table table-hover table-bordered" >
                    <thead style="background-color: #337ab7; ">
                    <tr>
                        <th>Id</th>
                        <th>Prereq name</th>
                        <th>Prereq Number</th>
                        <th>Prereq Prefix</th>
                        <th>Status</th>
                        
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${prereqList}" var="pre">
                        <tr>
                        	<th><c:out value="${pre.prereq_id}"/></th>
                        	<th><c:out value="${pre.prereq_name}"/></th>
                        	
                        	<th><c:out value="${pre.prereq_number}"/></th>
                        	<th><c:out value="${pre.prereq_prefix}"/></th>
                        	<th><c:out value="${pre.status}"/></th>
                        	
             				<th><a href="editPrereq?id=<c:out value='${pre.prereq_id}'/>">Edit</a></th> 
                                                    	
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                </div>
                </div>
     
      </div>
     </div>
    
    <div class="col-sm-1">
    
          </div>
  </div>
  </div>

</body>
</html>

