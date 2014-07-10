<%@page import="java.util.ArrayList"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<jsp:useBean id="lista" class="beans.CitiesWebReader"
	scope="application" />
<html>
<head>
<meta charset="utf-8">
<title>Hello!</title>
</head>
<body>
	<h1>Lista Miast</h1>

	<%
		System.out.println("?");
		ArrayList<String> al = lista.readCities();
		System.out.println(al.size());
		for (int i = 0; i < lista.readCities().size(); i++) {
	%>
	<%=al.get(i)%>
	<%
		}
	%>

</body>