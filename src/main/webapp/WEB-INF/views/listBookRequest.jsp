<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../../layout/adminHeader.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!-- Code by Nurnajihah-->
     
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
	<title>Book Request</title>
    
    <h3>Material Request Application</h3>

     
<table class="table table-hover" id="rcorners">
  <tbody>
  
  <tr class="table-primary">
      <th>ID</th>
	  <th>RequestDate</th>
	  <th>Matric ID</th>
	  <th>Book Details</th>
	  <th>Status</th>
	  <th>Action</th>
    </tr>
    
  <c:forEach var="sm" items="${listReq}" >
  <tr>
      <th scope="row">${sm.smid}</th>
      <td>${sm.requestDatetime}</td>
      <td>${sm.student.getMatricid() }</td> 
      <td>${sm.material.getTitle() }</td> 
      <td><span class="badge bg-success">${sm.status}</span></td>
      <td>
      <form action="studentReq" method="GET">
      <input type="hidden" value="${sm.smid}" name="smid">
	  <input type="image" src="img/update.png" alt="Submit" width="20" height="20" >
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
    