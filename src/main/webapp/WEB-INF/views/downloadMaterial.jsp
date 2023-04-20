<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="../../layout/studentHeader.jsp" %>
     
<!-- Code by Nurnajihah-->

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
      <th scope="row"><h3>Academic Writing</h3></th>
      <th scope="row"><h4>ISBN Number : XXXX</h4></th>
    </tr>
    <tr class="table-active">
      <th scope="row"><h3>Author : Stephen Bailee</h3><br><h4>Description Book : </h4>
      <p>Academic Writing is an ebook by the American author Stephen Bailee. </p></th>
      <td><img src="img/book.jpg" width="250" height="250"/></td>
    </tr>
    <tr>
        <td><a class="btn btn-primary" href="requestForm.jsp">Download Material</a></td>
    </tr>
  </tbody>
</table>