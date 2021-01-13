<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employees List</title>
</head>
<body>
  <h2>All Employees List</h2>
  <table border = "1">
    <tr>
      <th>Id</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Delete</th>
      <th>Update</th>
     </tr>
     <c:forEach items="${Employees}" var="employee">
     <tr>
      <td>${employee.ID}</td>
      <td>${employee.FIRST_NAME}</td>
      <td>${employee.LAST_NAME}</td>
      <td><a href="deleteEmployee?id=${employee.ID}">Delete</a></td>
      <td><a href="updateEmployee?id=${employee.ID}">Update</a></td>
     </tr>
     </c:forEach>
  
  
  </table>

</body>
</html>