<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="../../layout/header.jsp"/>
    
<!-- Code by Haidah-->
    
<head>
<title>Sign Up</title>

<style>
.center{
  margin: auto;
  padding: 10px;
  
}
</style>

</head>  

<body>

	<div style="text-align:center; padding-top: 2em;">
	<img src="img/UTM-LOGO.png" width="90" height="85"/>
	</div> 

  <div style="padding-top: 2em;">
		<div class="card border-primary mb-3 center" style="max-width: 50rem;">
  			<div class="card-header card-title" style="text-align:center; font-size: 20px;">Sign Up</div>
  			
  	<div class="card-body ">

	<form action = "register" method="post">
  	<fieldset>
    <div class="form-group">
      <label for="email" class="form-label mt-4">Email address</label>
      <input type="email" class="form-control" name = "email" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="fname" class="form-label mt-4">Username</label>
      <input type="text" class="form-control" name = "matricid" id="matricid" placeholder="Enter Matric Number" required>
    </div>
    <div class="form-group">
      <label for="fname" class="form-label mt-4">First Name</label>
      <input type="text" class="form-control" name = "fname" id="fname" placeholder="Enter First Name" required>
    </div>
    <div class="form-group">
      <label for="lname" class="form-label mt-4">Last Name</label>
      <input type="text" class="form-control" name = "lname" id="lname" placeholder="Enter Last Name" required>
    </div>
    <div class="form-group">
      <label for="password" class="form-label mt-4">Password</label>
      <input type="password" class="form-control" name = "password" id="password" placeholder="Password" required>
    <br>
   
    <input type="submit" name ="submit" value="Sign Up" class="btn btn-primary">
  	</fieldset>
  <h5>${message}</h5>
	</form>
</div>
  
		</div>
  </div>

<div style="text-align:center; margin-bottom:50px; margin-top:0px;">
<a  href="loginPage">Already have an account? Login</a>
</div>

</body>
