<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Väderprognos</title>
<link rel="stylesheet" href="css/index.css">
</head>
<body>

 <form action="OWservlet" method="get">  
    City:<input type="text" name="city"/><br/>  
    Country (Language code):<input type="text" name="country"/><br/>  
    
    <input type="submit" value="go"/>  
    </form>  
    
    <%
    Cookie[] cookies = request.getCookies();
    
    if (cookies != null) {
    	//out.print("<br> Earlier searchs!");
		for (int i = 0; i < cookies.length; i++) {
    		out.print("<br>" + cookies[i].getName() + ": " + cookies[i].getValue());
    	}
    }
    %>


</body>
</html>