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
	<form action="workerHome" method="post">

		<label>Asignee :</label> <select name="asignee">
			<option value="workerHome">WorkerHome</option>
			<option value="adminHome">AdminHome</option>
			<option value="customerHome">CustomerHome</option>
			
		</select> <input type="submit" value="GetTicket">
	</form>
	<div>
		<h4>GetAllOpenTicket details</h4>

		<table>
			<tr>
				<th>Id</th>
				<th> Email</th> 
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
						
					</tr>
				</div>
			</c:forEach>

		</table>
	</div>
 <h4 style ="color: red;">${responseMsg} </h4>

</body>
</html>