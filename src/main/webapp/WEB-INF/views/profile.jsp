<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../../layout/studentHeader.jsp"%>
<%@ page import="Model.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Code by Aaraf Islam -->
    <title>Profile</title>
    <!-- css style -->
    <style>
      .myCard {
        width: 100%;
        display: flex;
        justify-content: center;
        margin-top: 20px;
      }
      .myCardText {
        margin-right: 3px;
        font-weight: bold;
      }
    </style>
    <!-- css style end -->
  </head>
  <body>
  
   
    <!-- card start -->
	<div class="myCard">
		<div class="container" style="max-width: 35%">
			<div class="card text-white bg-primary mb-3 p-3">
				<div
					style="width: 100%; display: flex; justify-content: center; margin-top: 15px; margin-bottom: 15px;">
					<img src="img/john.jpg"
						style="border-radius: 50%; height: 250px; width: 250px" />
				</div>
				<div class="card-header"
					style="text-align: center; background-color: #131b23">
					<h4 class="card-title">
						<b><c:out value = "${student.getFname()}"/>  ${student.getLname()}</b>
					</h4>
				</div>
				<div class="card-body">
					<div style="display: flex; flex-direction: row">
						<p class="card-text myCardText">STUDENT ID:</p>
						<p class="card-text">${student.getMatricid()} </p>
					</div>
					<div style="display: flex; flex-direction: row">
						<p class="card-text myCardText">E-MAIL:</p>
						<p class="card-text">${student.getEmail()} </p>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- card end -->
  </body>

</html>
