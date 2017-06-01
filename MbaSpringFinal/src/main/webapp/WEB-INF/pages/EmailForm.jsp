<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Email Form</title>
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
      <h2>Email Form</h2>
    <form class="form-horizontal" action="/sendEmail" method="POST">
    <div class="form-group">
    <label class="control-label col-sm-4" for="recepitent">To:</label>
    <div class="col-sm-8">
      <input type="text" name="recipient" class="form-control" id="recepitent" value="${studentObject.ucmo_email}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="subject">Subject:</label>
    <div class="col-sm-8">
      <input type="text" name="subject" class="form-control" id="subject" value="test">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="Message">Message:</label>
    <div class="col-sm-8">
      <textarea rows="8" cols="10" class="form-control" id="Message" name="message">
      
      
      Dear <b>${studentObject.first_name}&nbsp;&nbsp;${studentObject.last_name}</b>,

We are glad you have been accepted into the MBA Program - <b>${studentObject.concentration}</b> Concentration at the University of Central Missouri and are looking forward to your participation in the program.

Your next step is to access the web site linked below and answer questions which will enable your advisor to better serve you.  This information is shared between and MBA Program Director and the Program Advisors.  It is not made available to outside parties. 

Even if your plans change and you decide not to attend, we ask that you indicate such at the web site.

URL: <a href="http://localhost:8080/StudentLoginForm">Click this link to login in</a>

Student ID: ${studentObject.student_id}

Password: mba123

Questions about the questionnaire or the MBA program should be directed to Dr. Kerry Henson, MBA Program Director at

MBA@UCMO.EDU

Please do not reply to this message.

Thanks!

Kerry Henson, PhD
Assistant Dean
MBA Program Director
Harmon College of Business and Professional Studies
University of Central Missouri
Dockery 300C
Warrensburg, Missouri  64093

660-422-2705
mba@ucmo.edu
      
      
      </textarea>
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-8">
      <input type="submit" name="submit" value="send" class="btn btn-default">
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

