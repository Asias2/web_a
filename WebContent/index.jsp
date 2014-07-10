<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hello!</title>
</head>
<body>
	<h1>Hello</h1>
	<table>
		<%
			for (int i = 0; i < 100; i++) {
		%>
		<tr>
			<td><%=i %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>