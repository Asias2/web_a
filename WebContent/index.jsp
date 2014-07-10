<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
table,th,td
{
border:1px solid black;
}
</style>
<title>Hello!</title>
</head>
<body>
	<h1>Hello</h1>
	<table>
		<%
			for (int i = 1; i < 11; i++) {
		%><tr>
			<%
				for (int j = 1; j < 11; j++) {
			%>

			<td><%=i*j%></td>

			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>