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
    </head>
    <body>
       	<h1>Nifty Little Image Mixer</h1>
	<h2>Please select 1 image from each column and press the Process button</h2>
	<article id="listbox" class="target">
	    <form id="listbox" name="listbox" method="POST" action="<%= request.getContextPath() %>/ShowImages">
		<c:forEach var="i" begin="2" end="7">
		    <div id="dog${i}" class="dogpic">
			<ul>
			    <li>Dog ${i}</li>
			</ul>
			<div><p>Picture Slice</p>
			<input type="radio" name="leftpic" value="${i}"/>Left
			<input type="radio" name="midpic" value="${i}"/>Middle
			<input type="radio" name="rightpic" value="${i}"/>Right
			</div>
			<figure>
			    <img src="images/dog${i}.jpg" alt="dog ${i}"/>
			</figure>
		    </div>
		</c:forEach>
		<input type="submit" value="Process">
	    </form>
	</article>
    </body>
</html>
