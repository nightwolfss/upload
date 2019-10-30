<%if(session.getAttribute("acao") != null){ %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>Arquivos</title>
</head>
<body>
<style>

body{
	background-color: #DCDCDC;
}
#titulo {
  background-color: #4F4F4F;
  color: white;
}

#tabela {
  background-color: #4F4F4F;
  color: white;
}
</style>

<div id="titulo">
<div class="container">
<font size="5px">Upload de Arquivos</font>
</div>
</div>

<hr>

<div class="container"">

	<form action="Controller?cmd=upload" method="post"enctype="multipart/form-data">
		<input class="btn btn-light" type="file" name="arquivo" multiple="multiple"><br/><br/>
		<input class="btn btn-light" type="submit" value="upload">
	</form>
<hr>

${msg}
 <img alt="kof girls" src="https://i2.wp.com/images.uncyc.org/pt/c/c2/Kula-allfriends.gif" width="30%" align="right">

<hr/>
<a class="btn btn-warning" href="view.jsp">Visualizar Arquivos</a>
<hr/>
<table class="table" border="1" id="tabela">
<%
File file = new File("c:\\Users\\VitorNet\\eclipse-workspace\\upload\\WebContent\\uploads\\");
File afile[] = file.listFiles();
ArrayList<String> lista = new ArrayList();
for (int i = 0; i < afile.length; i++) {
	File arquivos = afile[i];
	lista.add(arquivos.getName());
}

out.print("<br/>Nº de arquivos: "+ lista.size()+"<p/>");
for(int i = 0; i <lista.size(); i++){ out.print("<tr><td>" + lista.get(i) + "</td> <td><a href='deletar.jsp?cmd=" + lista.get(i) + "'>deletar</a></td></tr>");	
}

%>
</table>
</div>
</body>
</html>
<%}else{
	request.setAttribute("msg", "<script>alert('Informe o nome de usuario!!')</script>");
	request.getRequestDispatcher("login.jsp").forward(request, response);
}%>
