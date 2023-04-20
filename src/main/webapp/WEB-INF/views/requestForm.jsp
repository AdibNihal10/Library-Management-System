<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="../../layout/studentHeader.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Code by Haidah-->

<title>Request Form</title>

<style>
form{
  padding: 50px;
  width: 100%;
}

.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 300px;
}

.row:after {
  content: "";
  width: 50%;
  display: table;
  clear: both;
}

</style>

<h2 style = "padding: 50px;" >Detail Apply/Request For A Book</h2><br>

<div class="row">
  <div class="column">
<form action="addMatReq" method="GET">
  <fieldset>
  <div class="form-group">
    	Matric ID :
      <input type="email" class="form-control" id="email" value="${sid.matricid }" disabled>
    </div><br>
    <div class="form-group">
    	Email : 
      <input type="text" class="form-control" id="telNum"  value="${sid.email }" disabled>
    </div><br>
    <div class="form-group">
    	Book ISBN Number : 
      <input type="text" class="form-control" id="isbnNum"  value="${m.isbn }" disabled>
    </div><br>
    <div class="form-group">
    	Book Title :
      <input type="text" class="form-control" id="isbnNum"  value="${m.title }" disabled>
    </div><br>
    <div class="form-group">
    	Book Author :
      <input type="text" class="form-control" id="isbnNum"  value="${m.author }" disabled>
    </div><br>
    <div class="form-group">
    	Request Date :
      <input type="text" class="form-control" id="date"  value="${date }" disabled>
    </div><br>
    
      <input type="hidden" value="${sid}" name="student">
      <input type="hidden" value="${m.materialid}" name="materialid">
      <input type="hidden" value="${date}" name="date">
	  <input type="submit" class="btn btn-primary"  value="Confirm" >
      
    
  </fieldset>
 </form>
</div>
 <div class="column">
    <img src="img/book.jpg" width="250" height="250"/>
  </div>
</div>