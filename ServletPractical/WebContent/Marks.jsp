<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marks</title>
<script>
    function validate(){
      if(document.getElementById("science").value==""){
        alert("Science is compulsary");
      } else if(document.getElementById("science").value < 0){
          alert("Science marks cannot be less than 0");
      } else if(document.getElementById("science").value > 100){
          alert("Science marks cannot be more than 100");
      } else if(document.getElementById("english").value==""){
        alert("English is compulsary");
      } else if(document.getElementById("english").value < 0){
          alert("English marks cannot be less than 0");
      } else if(document.getElementById("english").value > 100){
          alert("English marks cannot be more than 100");
      } else if(document.getElementById("math").value==""){
        alert("Math is compulsary");
      } else if(document.getElementById("math").value < 0){
          alert("Math marks cannot be less than 0");
      } else if(document.getElementById("math").value > 100){
          alert("Math marks cannot be more than 100");
      } else {
        document.getElementById("marksform").submit();
      }
    }
 </script>
</head>
<body>
<h1>Marks Form</h1>
<h3>Please fill in your marks</h3>
<form action="MarksForm" method="GET" id="marksform">
	ID:<input type="text" name="id" value="<%=request.getParameter("id")%>" /><br/>
	Science	: <input type="text" name="science" id="science" /><br/>
	English : <input type="text" name="english" id="english" /><br/>
	Math	: <input type="text" name="math" id="math" /><br/>
	<input type ="button" onclick="validate()" value ="Submit" /> 
</form>
</body>
</html>