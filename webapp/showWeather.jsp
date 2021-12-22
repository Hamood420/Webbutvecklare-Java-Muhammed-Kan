<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.weatherBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The weather</title>
  <link rel="stylesheet" href="css/index.css">
</head>
<body>
	<%
	weatherBean wBean = (weatherBean) request.getAttribute("wBean");
	out.print("The weather " + wBean.getCityStr() + " is now a " + wBean.getCloudsStr()+ "<br>");
	out.print("Cloud status: " + wBean.getCountryStr()+ "<br>");
	out.print("Temperature: " + wBean.getTemperatureCelsius()+ "C <br>");
	out.print("Last updated date: " + wBean.getDateStr());
	%>

</body>
</html>