<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Student</title>
</head>
<body>
<h1>New Student Form</h1>
<h3>Please fill in form below</h3>
<form action="NewStudentForm" method="GET">
	Student ID: <input type="text" name="id" /><br/>
	Password  : <input type="password" name="password" /><br/>
	Name      : <input type="text" name="name" /><br/>
	Department: <input type="text" name="department" >
	<input type ="submit" value ="Sign Up" /> 
</form>
</body>
</html>