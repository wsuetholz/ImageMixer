<%-- 
    Document   : index
    Created on : Jan 26, 2015, 6:13:31 PM
    Author     : wsuetholz
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Nifty Little Image Mixer</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="default.css">	
    </head>
    <body>
       	<h1 align="center">Nifty Little Image Mixer</h1>
	<h2 align="center">Please select one picture for left, middle and right</h2>
	<h2 align="center">and then press the Process button</h2>
	<div class="container-fluid">
	    <form id="listbox" name="listbox" method="POST" action="<%= request.getContextPath() %>/ShowImages">
		<div class="row">
		    <c:forEach var="i" begin="2" end="4">
			<div id="dog${i}" name="dog${i}" class="col-md-4">
			    <img src="images/dog${i}.jpg" alt="dog ${i}"/>
			    <p> </p>
			    <input type="radio" name="leftpic" value="${i}"/>Left
			    <input type="radio" name="midpic" value="${i}"/>Middle
			    <input type="radio" name="rightpic" value="${i}"/>Right
			    <p> </p>
			</div>
		    </c:forEach>
		</div>
		<div class="row">
		    <c:forEach var="i" begin="5" end="7">
			<div id="dog${i}" name="dog${i}" class="col-md-4">
			    <img src="images/dog${i}.jpg" alt="dog ${i}"/>
			    <p> </p>
			    <input type="radio" name="leftpic" value="${i}"/>Left
			    <input type="radio" name="midpic" value="${i}"/>Middle
			    <input type="radio" name="rightpic" value="${i}"/>Right
			    <p> </p>
			</div>
		    </c:forEach>
		</div>
		<p> </p>
		<div align="center">
		    <input class="btn-lg" type="submit" value="  Process  ">
		</div>
	    </form>
	</div>

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    </body>

</html>
