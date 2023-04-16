<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
<script type="text/javascript">
	function showTicket() {
		var x = document.getElementById("inputs");
		var y = document.getElementById("call");
		if (x.style.display === "none") {
			y.style.display = "none";
			x.style.display = "block";
		} else {
			x.style.display = "none";
		}

	}

	function getallticket() {
		var y = document.getElementById("inputs");
		var x = document.getElementById("call");
		if (x.style.display === "none") {
			y.style.display = "none";
			x.style.display = "block";

		} else {
			x.style.display = "none";
		}

	}

	function saveDataInLocalSession(email) {
		console.log(email);
		localStorage.setItem("email", email);

	}
</script>

<style type="text/css">
body {
	margin: 0px auto;
	width: 52%;
	background-image:
		url('https://nayainsurancetax.com/wp-content/uploads/2019/01/insurance-quote-form-background-fontana-ca.jpg');
}

.container {
	padding: 50px;
	background-color: skyblue;
	background-image:
		url('https://th.bing.com/th/id/OIP.R4VQwmANq7Ft-ntsZLMJIgHaEw?pid=ImgDet&w=732&h=471&rs=1');
}

input[type=text], input[type=password], input[type=number], input[type=email],
	input[type=datetime-local], input[type=tel], textarea {
	width: 100%;
	padding: 10px;
	margin: 5px 0 25px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus input {
	background-color: orange;
	outline: none;
}

#header {
	background-color: gray;
	padding: 10px;
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


				<a href="forgetPassword.jsp">LogOut</a>
				<a href="Home.jsp">CustomerProfile</a>
				<a href="/getprofile/${responseMSG}">MyProfile</a>
				</td>
			</tr>
		</table>
	</div>
	<div class="container">
		<div onload="saveDataInLocalSession('${responseMSG}')">

			<div style="text-align: left;">
				<h2>Click On the button to create new ticket</h2>
				<input type="button" value="Create new ticket"
					onclick="showTicket()"> <input type="button"
					value="Get all ticket" onclick="getallticket()">
				<div id="click">
					<form action="customerHome" method="post">


						<div id="inputs">
							<label>Email :</label> <input type="email" name="email"><br>

							<label>Model :</label> <input type="text" name="model"><br>

							<label>Issue</label>
							<textarea name="issue" rows="2" cols="2"></textarea>

							<input type="submit" value="Submit"> <input type="submit"
								value="clear">

						</div>
					</form>
				</div>
				<div id="call">
					<form action="getAllTicket" method="post">

						<label>Email :</label> <input type="email" name="email"><br>

						<input type="submit" value="Submit"> <input type="submit"
							value="clear">

					</form>
					<div>
						<h4>GetAllTicket details</h4>

						<table>
							<tr>
								<th>Id</th>
								<th>Email</th>
								<th>Model</th>
								<th>Issue</th>
							</tr>

							<c:forEach var="dto" items="${dto}">
								<div>
									<tr>

										<td><c:out value="${dto.id}" /></td>
										<td><c:out value="${dto.email}" /></td>
										<td><c:out value="${dto.model}" /></td>
										<td><c:out value="${dto.issue}" /></td>

									</tr>
								</div>
							</c:forEach>

						</table>
					</div>

				</div>
			</div>
</body>
</html>


