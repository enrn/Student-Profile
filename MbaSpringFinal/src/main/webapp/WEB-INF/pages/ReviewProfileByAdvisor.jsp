<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head> 
  <title>Welcome to Advisor page</title>
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
    <label>Student List with Concentration</label>
    <span style="float:right;">
    Welcome, ${adObject.first_name}||<label style="color:red;"><a href="Logout">Logout</a></label>
    </span>
     <div style="overflow-x:auto;border-radius:5px 0 0 5px;">
     
    <table class="table table-hover table-bordered" >
                    <thead style="background-color: #337ab7; ">
                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Ucmo Email</th>
                        <th>Concentration</th>
                        <th>Entry Date</th>
                        <th>Gre verbal</th>
                        <th>Gre Quantative</th>
                        <th>Gpa</th>
                        
                    </tr>
                    </thead>
                    <tbody>
                    
                        <tr>
                        	<th><c:out value="${student.student_id}"/></th>
                        	<th><c:out value="${student.first_name}"/></th>
                        	
                        	<th><c:out value="${student.address}"/></th>
                        	<th><c:out value="${student.alternate_email}"/></th>
                        	<th><c:out value="${student.ucmo_email}"/></th>
                        	<th><c:out value="${student.concentration}"/></th>
                        	<th><c:out value="${student.program_entry_date}"/></th> 
                        	<th><c:out value="${student.gre_verbal}"/></th>
                        	<th><c:out value="${student.gre_quantitative}"/></th>
                        	<th><c:out value="${student.gpa}"/></th>
                        	
                            
                                                    	
                        </tr>
                    
                    </tbody>
                </table>
                </div>
                <div style="overflow-x:auto;border-radius:5px 0 0 5px;">
     <label>Student's Answer to Question</label>
    <table class="table table-hover table-bordered" >
                    <thead style="background-color: #337ab7; ">
                    <tr>
                        
                        <th>Academic Code read</th>
                        <th>What is your Full name?</th>
                        <th>What is your major?</th>
                        <th>Write any three subjects related to this course.</th>
                        
                        
                    </tr>
                    </thead>
                    <tbody>
                    
                        <tr>
                        	<th><c:out value="${answer.Academic_code_read}"/></th>
                        	<th><c:out value="${answer.Answer1}"/></th>
                        	
                        	<th><c:out value="${answer.Answer2}"/></th>
                        	<th><c:out value="${answer.Answer3}"/></th>
                        	
                                               	
                        </tr>
                    
                    </tbody>
                </table>
                </div>
                
                 <div style="overflow-x:auto;border-radius:5px 0 0 5px;">
     <label>List of Prereq Courses</label>
    <table class="table table-hover table-bordered" >
                    <thead style="background-color: #337ab7; ">
                    <tr>
                        
                        <th>Id</th>
                        <th>Prereq Name</th>
                        <th>Prereq Prefix</th>
                         <th>status</th>
                        
                        
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${prereq}" var="prereq">
                        <tr>
                        	<th><c:out value="${prereq.prereq_id}"/></th>
                        	<th><c:out value="${prereq.prereq_name}"/></th>
                        	
                        	<th><c:out value="${prereq.prereq_prefix}"/></th>
                        	<th><c:out value="${prereq.status}"/></th>
                        	
                                               	
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                </div>
                <form class="form-horizontal" action="/saveAdvisorNote" method="post">
                
                <div class="form-group">
    
    <div class="col-sm-5"> 
      <input type="hidden" name="student_id" class="form-control" id="mark_date" value="${student.student_id}">
    </div>
  </div>
                
  <div class="form-group">
    <label class="control-label col-sm-5" for="prereq_met">Marks If All prereq are met:</label>
    <div class="col-sm-5">
      <input type="radio" name="prereq_met" id="prereq_met" value="yes">YES<br>
      <input type="radio" name="prereq_met"  id="prereq_met" value="no">NO
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5" for="mark_date">Date:</label>
    <div class="col-sm-5"> 
      <input type="text" name="mark_date" class="form-control" value="<%= new java.util.Date() %>" id="mark_date">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5" for="mark_date">Note:</label>
    <div class="col-sm-5"> 
      <textarea name="notes" rows="5" cols="30"></textarea>
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>
     
                </div>
      
      </div>
     </div>
    
    <div class="col-sm-1">
    
          </div>
  </div>
  </div>

</body>
</html>

