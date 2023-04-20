<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="../../layout/studentHeader.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Invoice</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="invoice-title">
                    <h2>Invoice</h2><br>
                    <h3 class="pull-right">Request ${sm.smid}</h3>
                </div>
                <hr />
                <div class="row">
                    <div class="">
                        <address>
                            <strong>Billed To:</strong><br />
                            Name: ${sm.student.getFname()} ${sm.student.getLname()}<br />
                            Matric No.: ${sm.student.getMatricid()}<br />
                            Email: ${sm.student.getEmail()}<br />
                        </address>
                    </div>
                </div>
                <div class="row">
                    <div class="text-right">
                        <address>
                            <strong>Order Date:</strong><br />
                            ${sm.requestDatetime}<br /><br />
                        </address>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Request summary</strong></h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-condensed">
                                <thead>
                                    <tr>
                                        <td><strong>Item No.</strong></td>
                                        <td class="text-center"><strong>Book Name</strong></td>
                                        <td class="text-center"><strong>Return Date</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>01</td>
                                        <td class="text-center">${sm.material.getTitle()}</td>
                                        <td class="text-center">${sm.returnDatetime}</td>
                                    </tr>
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <a class="btn btn-primary" href="bookReqHistory" style="float: right;margin-right:50px;">Back</a>
</body>

</html>