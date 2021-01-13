<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee Details</title>
</head>
<body>
    <h2>Add Employee Details Here</h2>
	<div class="container">
	${msg}
	</div>
	<div class="container">
		<form action="updateEmployees" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="text" name="ID" value="${ID}" readonly></td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="FIRST_NAME" value="${FIRST_NAME}"></td>
				</tr>

				<tr>
					<td>Last Name</td>
					<td><input type="text" name="LAST_NAME" value="${LAST_NAME}"></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="ADDRESS" value="${ADDRESS}"></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
					<td><input type="text" name="MOBILE" value="${MOBILE}"></td>
				</tr>
				<tr>
					<td>City</td>
					<td><input type="text" name="CITY" value="${CITY}"></td>
				</tr>
				<tr>
					<td><input type="submit" value="save"></td>
				</tr>

			</table>
		</form>
	</div>
    

</body>
</html>