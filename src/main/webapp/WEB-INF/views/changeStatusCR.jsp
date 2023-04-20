<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ include file="../../layout/adminHeader.jsp"%>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/_bootswatch.scss">
    <link rel="stylesheet" href="bootstrap/_variables.scss">
<title>Update Request Status</title>

<style>

.center{
  margin: auto;
  padding: 10px;
}

</style>
</head>


<body>
	<div style="text-align:center; padding-top: 2em;">
	Update Room Request Status
	</div> 

	<div style="padding-top: 2em;">
		<div class="card border-primary mb-3 center" style="max-width: 25rem;">
  			
  	<div class="card-body ">
    		   Matric ID : B00EC0001<br>
		       Room Number : 413<br>
		       Slot : 2.00 - 4.00 PM<br>
		       
		       <br>
		       <form action="">
    		
      		<div class="form-group">
		      <label for="exampleSelect1" class="form-label mt-4">Request Status: </label>
		      <select class="form-select" id="exampleSelect1">
		        <option></option>
		        <option>Approved</option>
		      </select>
		    </div>
    		
    		<input type="submit" name ="submit" value="Update" class="btn btn-primary" style="float: right; margin-top: 10px;">
    	</form>
  </div>
		</div>
  </div>

</body>

</html>