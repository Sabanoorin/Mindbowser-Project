<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Sign Up</title>
</head>
<body>
	<h2>Manager Sign Up</h2>
	<div class="container">
	  ${msg}
	</div>
	<div class="container">
	<form action="saveSignup" method="post">
		<table>
		<tr>
				<td>Id</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Email id</td>
				<td><input type="text" name="EMAIL"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="PASSWORD"></td>
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
				<td>Mobile Number</td>
				<td><input type="text" name="MOBILE"></td>
			</tr>
			<tr>
				<td>Company</td>
				<td><input type="text" name="COMPANY"></td>
			</tr>
			<tr>
				<td><input type="submit" value="save"></td>
			</tr>

		</table>
	</form>
    </div>
</body>
</html>