<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="../../layout/studentHeader.jsp" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!-- Code by Nurnajihah-->
     
<style>

.pagination {
  position: absolute;
  right: 200px;
}

#rcorners {
  border: 2px solid #2c3e50;
  padding: 20px; 
  width: 900px;
  height: 150px;  
  margin-left:20%;
  margin-right:20%;
}

h2{
margin-top: 100px;
margin-bottom: 2px;
margin-left: 20%;
}

</style>

    <title>Request History</title>
    
    <h2>List Of Materials</h2>
  <c:out value = "${message}"/>
		    <div style="float: right;margin-right:22%;margin-bottom: 5px;">
		    <form action="search" method="GET" class="d-flex">
        	<input class="form-control me-sm-2" type="search" name="title" placeholder="Search Title here">
        	<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
      		</form>
		    </div>
		    
		    
		<table class="table table-hover" id="rcorners">
		  <tbody>
		  <tr class="table-primary">
      <th>Image</th>
	  <th>Title</th>
	  <th>Type</th>
	  <th>Details</th>
    </tr>
  <c:forEach var="material" items="${m}" >
  <tr>
      <th scope="row"><img src="img/book.jpg" width="50" height="50"/></th>
      <td><h4>${material.title}</h4><h6>By ${material.author }</h6></td>
      <td>${material.type}</td>
      <td>
      <form action="materialDetails" method="GET">
      <input type="hidden" value="${sid}" name="student">
      <input type="hidden" value="${material.materialid}" name="materialid">
	  <input type="image" src="img/open-book.png" alt="Submit" width="20" height="20">
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