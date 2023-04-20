<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
		<%@ include file="../../layout/studentHeader.jsp"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>


<title>Pay Fines</title>

<style>

.center{
  margin: auto;
  padding: 10px;
}

</style>
</head>


<body>
	<div style="text-align:center; padding-top: 2em;">
	Pay Fines
	</div> 

	<div style="padding-top: 2em;">
		<div class="card border-primary mb-3 center" style="max-width: 25rem;">
  			
  	<div class="card-body ">
    		   Request Date : ${sm.requestDatetime }<br>
		       <br>Return Date : <div style="color: red;">${date}</div>
		       Payment Date : <div style="color: red;">${date}</div>
		       
		       <br>Book Title : ${sm.material.getTitle() }<br>
		       
		       <br>
		       
		       Total Due : <div style="color: red;">RM 20.00</div><br>

			<form action="pay" method="GET">
      		<input type="hidden" value="${sm.smid}" name="smid">
      		<input type="hidden" value="${date}" name="date">
			<input type="submit" name ="submit" value="Pay now" class="btn btn-primary" style="float: right; margin-top: 10px;">
			</form>
    		
    	
  </div>
  
		</div>
		<a href="bookReqHistory.jsp" class="btn btn-primary" style="float: right; margin-right: 560px;">Back</a>
  </div>

</body>

</html>