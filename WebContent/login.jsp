<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<title>Login</title>
</head>
<body>
<style>
#div1{
	width: 300px;
}
#titulo {
  background-color: #4F4F4F;
  color: white;
}
</style>

<div id="titulo">
<div class="container">
<font size="5px">Usuario</font>
</div>
</div>


<form action="Controller?cmd=logar" method="post">
<hr>

<div class="container">
<div id="div1">
	<table class="table">
		<tr><td>Nome: </td><td align="right"><input type="text" name="user" class="form-control form-control-sm"></td><td align="left"><input class="btn btn-dark" type="submit" value="Entrar"></td></tr>
	</table>
	<hr>
	<br/>
	<br/>
	
	${msg}
	
</div>
</div>
</form>

<br/>

</body>
</html>