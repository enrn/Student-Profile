<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Advisor Note page</title>
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
      
  <c:import url="/resources/images/AdvisorLinks.jsp" />
    </div>
    <div class="col-sm-10">
     <div style="overflow-x:auto;border-radius:5px 0 0 5px;">
     <label>Student List with Advisor's Note</label>
    <table class="table table-hover table-bordered" >
                    <thead style="background-color: #337ab7; ">
                    <tr>
                        <th> Student Id</th>
                        <th>Mark date</th>
                        <th>Prereq Status(met)</th>
                        <th>Note</th>
                        
                        
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${noteList}" var="note">
                        <tr>
                        	<th><c:out value="${note.student_id}"/></th>
                        	<th><c:out value="${note.mark_date}"/></th>
                        	
                        	<th><c:out value="${note.prereq_met}"/></th>
                        	<th><c:out value="${note.notes}"/></th>
                        	
                                                                                	
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

