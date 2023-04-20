<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.List, Model.StudentMaterial"%>
    
<!DOCTYPE html>
<html>
<%@ include file="../../layout/adminHeader.jsp"%>

    <!-- Code by Aaraf Islam -->
    <title>Monthly Report</title>
  </head>


<%
      HttpSession sess = request.getSession();
    List<StudentMaterial> uList = (List<StudentMaterial>)request.getAttribute("uList"); 
        %>
        
  <body>
    
    <div class="container" style="margin-top: 50px">
      <div style="display: flex; justify-content: space-between">
        <h3><b>MONTHLY REPORT</b></h3>
       
      </div>
      <br />
      <h4><b>BOOK BORROWING RECORDS</b></h4>
      <table
        class="table table-primary table-hover"
        style="border: 2px solid black"
      >
        <thead>
          <tr>
            
            <th scope="col">Book ID</th>
            <th scope="col">Matric ID</th>
            <th scope="col">Book Title</th>
            <th scope="col">Timeline</th>
            <th scope="col">Overdue</th>
            
          </tr>
        </thead>
        <tbody>
        <c:forEach var="book" items="${uList}">
          <tr class="table-light">
        
            
           <td>${book.smid}</td>
            <td>${book.student.getMatricid()}</td>
            <td>${book.material.getTitle()}</td>
            <td>${book.approvedDatetime} - ${book.returnDatetime}</td>
            <td>
            <c:choose>
			  <c:when test="${book.status == 'OVERDUE'}">
			  YES
			  </c:when>
			  <c:otherwise>
			  NO
			  </c:otherwise>
			  </c:choose>
            </td>
          </tr>
         </c:forEach>
        </tbody>
      </table>
      <div style="display: flex; justify-content: flex-end">
        
      </div>
    </div>
  </body>
  <!-- script tag bootstrap end -->
</html>
