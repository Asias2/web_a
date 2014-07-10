<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<jsp:useBean id="calc" class="beans.Calc" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse
}
</style>
<title>Hello!</title>
</head>
<body>
	<h1>Hello</h1>
	<form action="calculator.jsp">
		<input type="text" name="a1" size="10"> <input type="text"
			name="b1" size="10"> <select name="c1">
			<option value="0">*</option>
			<option value="1">/</option>
			<option value="2">+</option>
			<option value="3">-</option>
		</select> <input type="submit" value="Wykonaj">
	</form>
	<%
		double wynik = 0;
		String a1, b1, c1;
		if (request.getParameter("a1") != null) {
			a1 = request.getParameter("a1");
			b1 = request.getParameter("b1");
			c1 = request.getParameter("c1");

			wynik = calc.calculate(a1, b1, c1);
		}
	%>
	Wynik wynosi: <%= wynik %>
</body>
</html>