<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../../layout/studentHeader.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>History</title>

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

</head>
<body>
	<body>
	<title>History</title>
    
<h3>Book Request History</h3>
<table class="table table-hover" id="rcorners">
  <tbody>
  
  <tr class="table-primary">
      <th>ID</th>
	  <th>Request Date</th>
	  <th>Book Title</th>
	  <th>Status</th>
	  <th>Invoice Note</th>
	  <th>Action</th>
    </tr>
   
     <c:forEach var="req" items="${m}" >
     
  <tr>
      <td>${req.smid}</td>
      <td>${req.requestDatetime}</td>
      <td>${req.material.getTitle()}</td>
      <td>${req.status}</td>
      <td>
      <form action="invoice">
		  <c:choose>
		  <c:when test="${req.status == 'COMPLETED' || req.status == 'APPROVED'}">
		  <input type="hidden" value="${req.smid}" name="smid">
     	 <input type="image" src="img/receipt.png" alt="Submit" width="20" height="20">
		  </c:when>
		  <c:otherwise>
		  </c:otherwise>
		  </c:choose>
		  </form>
      
      </td>
      <td>
      <form action="payFines" method="GET">
      <input type="hidden" value="${sid}" name="student">
      <input type="hidden" value="${req.smid}" name="smid">
      
		<c:choose>
		  <c:when test="${req.status == 'OVERDUE'}">
		  <input type="image" src="img/pay.png" alt="Submit" width="20" height="20" style="float:left">
		  </c:when>
		  <c:otherwise>
		    <input type="image" src="img/pay.png" alt="Submit" width="20" height="20" style="float:left" disabled>
		  </c:otherwise>
		  </c:choose>
		  </form>
		  
		  <form action="deleteRequest">
		  <c:choose>
		  <c:when test="${req.status == 'PENDING'}">
		  <input type="hidden" value="${req.smid}" name="smid">
		  <input type="image" src="img/delete.png" alt="Submit" width="20" height="20" style="float:left">
		  </c:when>
		  <c:otherwise>
		  <input type="image" src="img/delete.png" alt="Submit" width="20" height="20" style="float:left" disabled>
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
    
</html>