<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../../layout/adminHeader.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fine Payment</title>
</head>

 <style>
.pagination {
  position: absolute;
  right: 200px;
}

#rcorners {
  border: 2px solid #2c3e50;
  width: 1000px;
  height: 150px;  
  margin-left:17%;
  margin-right:20%;
}

h3{
margin-top: 50px;
margin-bottom: 20px;
margin-left: 17%;
}

</style>
<body>
    
    <h3>Fine Payment</h3>
     
		<table class="table table-hover" id="rcorners">
		  <tbody>
		  
		  <tr class="table-primary">
		       <th>Matric ID</th>
		       <th>Book Request ID</th>
		       <th>Book Title</th>
		       <th>Return Date</th>
		       <th>Payment Status</th>
		       <th>Actions</th>
		        </tr>
		  <c:forEach var="p" items="${p}">
		  <tr>
		  	<td>${p.sm.getStudent().getMatricid()}</td>
		  	<td>${p.sm.getSmid()}</td> 
		  	<td>${p.sm.getMaterial().getTitle()}</td> 
		      <td>${p.sm.getReturnDatetime()}</td>
		      
		      <td><span class="badge bg-success">${p.status}</span></td>
		      <td>
		      <form action="payFines" method="GET">
		      <input type="hidden" value="${p.paymentid}" name="pid">
		      <input type="hidden" value="${p.sm.smid}" name="smid">
      
				<c:choose>
			  <c:when test="${p.status == 'OVERDUE'}">
			  <input type="image" src="img/pay.png" alt="Submit" width="20" height="20" style="float:left">
			  </c:when>
			  <c:otherwise>
			    <input type="image" src="img/pay.png" alt="Submit" width="20" height="20" style="float:left" disabled>
			  </c:otherwise>
			  </c:choose>
			  </form>
			  
		      
		       <form action="deletePayment">
			  <c:choose>
			  <c:when test="${p.status == 'OVERDUE'}">
			  <input type="hidden" value="${p.sm.smid}" name="smid">
			  <input type="image" src="img/delete.png" alt="Submit" width="20" height="20" style="float:left" disabled>
			  </c:when>
			  <c:otherwise>
			  <input type="image" src="img/delete.png" alt="Submit" width="20" height="20" style="float:left" >
			  </c:otherwise>
			  </c:choose>
			  </form>
		      </td>
		    </tr>
		  </c:forEach>
		      
		  </tbody>
		</table>

<div class="center">
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="#">&laquo;</a>
    </li>
    <li class="page-item active">
      <a class="page-link" href="#">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">&raquo;</a>
    </li>
  </ul>
</div> 
</body>