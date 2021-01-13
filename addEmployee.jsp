<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<h2>Add Employee Details Here</h2>
	<div class="container">
	${msg}
	</div>
	<div class="container">
		<form action="savedetails" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="text" name="ID"></td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="FIRST_NAME"></td>
				</tr>

				<tr>
					<td>Last Name</td>
					<td><input type="text" name="LAST_NAME"></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="ADDRESS"></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
					<td><input type="text" name="MOBILE"></td>
				</tr>
				<tr>
					<td>City</td>
					<td><input type="text" name="CITY"></td>
				</tr>
				<tr>
					<td><input type="submit" value="save"></td>
				</tr>

			</table>
		</form>
	</div>
	
</body>
</html>