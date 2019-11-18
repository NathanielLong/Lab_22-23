<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Coffee Main</title>
</head>
<body>
	<div class="jumbotron">
		<h1>Grand Coffee</h1>
		<h3>*To enter the web-site, please register with us!*</h3>
		<hr>
		<form action="add-person" method="post"
			onsubmit="return validateInput()">

			First Name: <input type="text" id="f" name="first">
			<hr>
			Last Name: <input type="text" id="l" name="last">
			<hr>
			Email: <input type="text" id="e" name="email">
			<hr>
			Phone Number: <input type="text" id="ph" name="phone">
			<hr>
			Password: <input type="password" id="psw" name="password">
			<hr>
			<input class="btn-primary" type="submit" value="Submit">
		</form>
	</div>
	<script>
		function validateInput() {
			var f = document.getElementById("f").value;
			var l = document.getElementById("l").value;
			var e = document.getElementById("e").value;
			var ph = document.getElementById("ph").value;
			var psw = document.getElementById("psw").value;

			if (2 >= f.length) {
				alert("Please enter a valid first name!");
				return false;
			}
			if (2 >= l.length) {
				alert("Please enter a valid last name!");
				return false;
			}
			/*if (!pattern.test(e)) {
				alert("Please enter a valid e-mail!");
				return false;
			}*/
			if (!pat.test(e)) {
				alert("Please enter a valid e-mail!")
				return false;
			}
			if ((10 < ph.length) || (10 > ph.length)) {
				alert("Please enter a valid phone number (Do NOT include hyphens)")
				return false;
			}

		}
	</script>
</body>
</html>