<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ include file="../../layout/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/_bootswatch.scss">
    <link rel="stylesheet" href="bootstrap/_variables.scss">
<title>Login</title>

<style>

.center{
  margin: auto;
  padding: 10px;
}

</style>

</head>


<body>
<c:out value="${errorMsg }"/>
	<div style="text-align:center; padding-top: 2em;">
	<img src="${pageContext.request.contextPath}/img/UTM-LOGO.png" width="90" height="85"/>
	</div> 

	<div style="padding-top: 2em;">
		<div class="card border-primary mb-3 center" style="max-width: 25rem;">
  			<div class="card-header card-title" style="text-align:center; font-size: 20px;">Login</div>
  			
  	<div class="card-body ">
    	<form action="auth" method="GET">
    		<div class="form-group">
      		<input type="text" class="form-control" name="username" id="username" placeholder="Enter Username">
    		</div>
    		
    		<div class="form-group">
      		<input type="password" class="form-control" name="pass" id="pass" placeholder="Enter Password" style="margin-top: 10px;">
    		</div>
    		
    		<input type="submit" name ="submit" value="Login" class="btn btn-primary" style="float: right; margin-top: 10px;">
    	</form>
  </div>
		</div>
  </div>
  
	<div style="text-align:center;">
		<a href="SignUp">Create an Account</a>
	</div>
</body>

<c:if test="${not empty errorMsg}">
   <c:out value="${errorMsg}"/>
</c:if>

</html>