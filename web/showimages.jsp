<%-- 
    Document   : showdog.jsp
    Created on : Jan 26, 2015, 6:26:36 PM
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
       	<h1>Nifty Little Image Mixer Output</h1>
	<article id="listbox" class="target">
	    <figure>
		<img src="images/dog${leftpic}_0000.jpg" alt="dog ${leftpic}"/>
		<img src="images/dog${midpic}_0001.jpg" alt="dog ${midpic}"/>
		<img src="images/dog${rightpic}_0002.jpg" alt="dog ${rightpic}"/>
	    </figure>
	</article>
    
	<p><a href="<%= request.getContextPath() %>/index.jsp">Back
    
    </body>
</html>
