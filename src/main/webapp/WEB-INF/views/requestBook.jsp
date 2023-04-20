<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="../../layout/studentHeader.jsp" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!-- Code by Haidah-->

<style>
table {
    table-layout: fixed;
    width: 70%;
    margin : auto;
    border-collapse: collapse;
    height:400px;
    word-wrap: break-word;
    overflow-wrap:break-word;
    align-items: center;
}
</style>



<title>Book Description</title>
		<table class="center">  
		  <tbody>
		  <tr class="table-active">
		      <th scope="row"><h3><c:out value="${m.title}" /></h3></th>
		      <th scope="row"><h6>ISBN Number : <c:out value="${m.isbn}" /></h6></th>
		    </tr>
		    <tr class="table-active">
		      <th scope="row"><h3>Author : <c:out value="${m.author}" /></h3><br><h4>Description Book : </h4>
		      <p><c:out value="${m.description}" /></p></th>
		      <td><img src="img/book.jpg" width="250" height="250"/></td>
		    </tr>
		    <tr>
		    <td>
		    
		    
		  <c:choose>
		  <c:when test="${btn=='Download'}">
		  <a href="material" class="btn btn-primary">${btn}</a>
		  </c:when>
		  <c:otherwise>
		  <form action="matReq" method="GET">
		     <input type="hidden" value="${sid}" name="student">
      		<input type="hidden" value="${m.materialid}" name="materialid">
	 		 <input type="submit" class="btn btn-primary" value="${btn}" width="20" height="20">
      		</form>
		  </c:otherwise>
		  </c:choose>
		  
		    
		    	</td>
		    </tr>
		  </tbody>
		</table>
		
		