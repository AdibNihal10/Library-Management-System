<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../../layout/adminHeader.jsp"%>
    
<!-- Code by Haidah-->

<title>Upload Material (e-Book)</title>

<style>

h2{
  padding: 20px;
  text-align:center;
  margin-top: 10px;
}

.center{
  margin: auto;
  padding: 15px;
  
}

</style>

		<h2>Upload Material
		  <div class="btn-group" role="group" aria-label="Basic example">
		  <a class="btn btn-outline-primary" href="materialeBook">e-Book</a>
		  <a class="btn btn-outline-primary" href="materialPDF">PDF</a>
		</div>
	  </h2>

<div class="card border-primary mb-3 center" style="max-width: 50rem;">
	<div class="card-header" style="text-align:center; font-size: 20px;">e-Book</div>

<div class="card-body" style="margin-top:0px;">

<form action = "addBook" method="post">

  <fieldset>
    <div class="form-group">
      <input type="text" class="form-control" name="isbn" id="isbn" placeholder="Input ISBN Number">
    </div><br>
    <div class="form-group">
      <input type="text" class="form-control" name="title" id="title" placeholder="Input Tittle">
    </div><br>
    <div class="form-group">
      <input type="text" class="form-control" name="author" id="author" placeholder="Input Author">
    </div><br>
    <div class="form-group">
      <input type="text" class="form-control" name="publisher" id="publisher" placeholder="Input Publisher">
    </div><br>
    <div class="form-group">
      <input type="text" class="form-control" name="version" id="version" placeholder="Input Version">
    </div><br>
    <div class="form-group">
      <input type="text" class="form-control" name="description" id="description" placeholder="Input Description">
    </div><br>
     <div class="form-group">
      <input type="text" class="form-control" name="materialLink" id="materialLink" placeholder="Input Material Link">
    </div><br>
    <div class="form-group">
      <input type="hidden" class="form-control" name="type" id="type" value="eBook">
    </div><br>
   
    <input type="submit" class="btn btn-primary" value = "Submit">
  </fieldset>

  </form>
</div>
</div>
