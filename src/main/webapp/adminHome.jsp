<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<style type="text/css">
#header {
	background-color: skyblue;
	padding: 10px;
}

#SignUpLink {
	text-align: right;
	margin-right: 20px;
}

#header a {
	color: black;
	float: right;
	margin-right: 20px;
}

#header table {
	width: 100%;
}

table, th, td {
	border: 1px solid black;
}
</style>


</head>
<body>
	<div id="header">
		<table>
			<tr>
				<td>
					<h2>MyApp</h2>
				</td>
				<td><a href="index.jsp">SignUp</a> <a href="getAllTicket.jsp">getTicket</a>
					<a href="createNewTicket.jsp">CreateTicket</a>
					<div id="SignUpLink"></div></td>

			</tr>
		</table>
	</div>
	<form action="getAllOpenTicket" method="post">

		<label>Status :</label> <select name="status">
			<option value="open">Open</option>
			<option value="close">Close</option>
		</select> <input type="submit" value="Get Ticket" name="getTicket">
	</form>
	<div>
		<h4>GetAllOpenTicket details</h4>

		<table style="width: 100%">
			<tr>
				<th>Id</th>
				<th>Email</th>
				<th>Model</th>
				<th>Issue</th>
				<th>Asignee</th>
			</tr>

			<c:forEach var="dto" items="${dtos}">
				<div>
					<tr>

						<td><c:out value="${dto.id}" /></td>
						<td><c:out value="${dto.email}" /></td>
						<td><c:out value="${dto.model}" /></td>
						<td><c:out value="${dto.issue}" /></td>
						<td><c:out value="${dto.asignee}" /></td>


						<!-- 						<td><select name="asignee"> -->
						<%-- 						<c:forEach var ="dto1" items="${profilename}"> --%>
						<%-- 						<option value="${dto1.firstname}"><c:out value="${dto1.firstname}"/></option> --%>
						<%-- 						</c:forEach> --%>

						</select>
						</td>


					</tr>
				</div>
			</c:forEach>

		</table>
		<label>Asignee</label> <input type="checkbox" name="asignee"
			value="Worker1">Worker1 <input type="checkbox" name="asignee"
			value="Worker2">Worker2 <input type="checkbox" name="asignee"
			value="Worker3">Worker3<br> <input type="submit"
			value="Asignee" name="asignee">
	</div>


</body>
</html>