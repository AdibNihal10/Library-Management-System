<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
		<%@ include file="../../layout/adminHeader.jsp"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
		    <link rel="stylesheet" href="bootstrap/bootstrap.css">
		    <link rel="stylesheet" href="bootstrap/_bootswatch.scss">
		    <link rel="stylesheet" href="bootstrap/_variables.scss">
<title>Update Payment Status</title>

<style>

.center{
  margin: auto;
  padding: 10px;
}

</style>
</head>

<body>
	<div style="text-align:center; padding-top: 2em;">
	Update Student Status
	</div> 

	<div style="padding-top: 2em;">
		<div class="card border-primary mb-3 center" style="max-width: 25rem;">
  			
  	<div class="card-body ">
    		   Matric ID : ${listReq.student.getMatricid()}<br>
		       Book Name : ${listReq.material.getTitle() }<br>
		       Request Date : ${listReq.requestDatetime}<br>
		       
		       <br>
		       <form action="updateStatus" method="GET">
    		
      		<div class="form-group">
		      <label for="exampleSelect1" class="form-label mt-4">Application Status </label>
		      <select class="form-select" id="exampleSelect1" name="status">
		        <option value="" selected disabled hidden>${listReq.status }</option>
		        <option value = "COMPLETED">Completed</option>
		        <option value = "APPROVED">Approved</option>
		        <option value = "OVERDUE">Overdue</option>
		      </select>
		    </div>
    		
    		<input type="hidden" value="${listReq.smid}" name="smid">
    		<input type="submit" name ="submit" value="Update" class="btn btn-primary" style="float: right; margin-top: 10px;">
    	</form>
  </div>
		</div>
  </div>

</body>

</html>