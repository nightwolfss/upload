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

<title>Insert title here</title>
</head>
<body>
<style>
body{
	background-color: #DCDCDC;
}
video{
	width: 250px;
	height: 175px;
}

img{
	width: 50%;	
}

#titulo {
  background-color: #4F4F4F;
  color: white;
}
#hahaha {
  width: 20%;
  
}
</style>

<div id="titulo">
<div class="container">
<font size="5px">Galeria de Arquivos</font>
</div>
</div>

<div class="container">
<hr/>
<div>
<a class="btn btn-light" href="index.jsp">Inicio</a>
<br/>
<font color="white">${msg}</font>
</div>
<hr/>
<img id="hahaha" alt="hahaha" src="https://thumbs.gfycat.com/DemandingRashGiraffe-size_restricted.gif" align="right">
<br/><br/>
<table class="table table-responsive table-sm table-dark table-striped">

<%
File file = new File("c:\\Users\\VitorNet\\eclipse-workspace\\upload\\WebContent\\uploads\\");
File afile[] = file.listFiles();
ArrayList<String> lista = new ArrayList();
for (int i = 0; i < afile.length; i++) {
	File arquivos = afile[i];
	lista.add(arquivos.getName());
}

out.print("Nº de arquivos: "+ lista.size()+"<p/>");
for(int i = 0; i <lista.size(); i++){
	String nome = lista.get(i).substring(lista.get(i).length() - 3, lista.get(i).length());
	if(nome.equalsIgnoreCase("jpg") | nome.equalsIgnoreCase("peg") | nome.equalsIgnoreCase("gif") | nome.equalsIgnoreCase("png")){
		%>
		<tr><td scope="col"><img src='uploads\<%out.print(lista.get(i)); %>' height="auto" width="100%"><br/><%out.print(lista.get(i)); %></td><td><a href="uploads\<%out.print(lista.get(i)); %>" download="<%out.print(lista.get(i)); %>">baixar</a></td><td><a href="deletar.jsp?cmd=<%out.print(lista.get(i)); %>">deletar</a></td></tr>
		<%
	}
	else if(nome.equalsIgnoreCase("mpeg")){
		%>
		<tr><td scope="col"><video src="uploads\<%out.print(lista.get(i)); %>" type='video/mp4'	controls></video><br/><%out.print(lista.get(i)); %></td><td><a href="uploads\<%out.print(lista.get(i)); %>" download="<%out.print(lista.get(i)); %>">baixar</a></td><td><a href="deletar.jsp?cmd=<%out.print(lista.get(i)); %>">deletar</a></td></tr>
		<%
		
	}
	else if(nome.equalsIgnoreCase("mp4")){
		%>
		<tr><td scope="col"><video src="uploads\<%out.print(lista.get(i)); %>" type='video/mp4'	controls></video><br/><%out.print(lista.get(i)); %></td><td><a href="uploads\<%out.print(lista.get(i)); %>" download="<%out.print(lista.get(i)); %>">baixar</a></td><td><a href="deletar.jsp?cmd=<%out.print(lista.get(i)); %>">deletar</a></td></tr>
		<%
		
	}
	else if(nome.equalsIgnoreCase("mkv")){
		%>
		<tr><td scope="col"><video src="uploads\<%out.print(lista.get(i)); %>" type='video/mp4'	controls></video><br/><%out.print(lista.get(i)); %></td><td><a href="uploads\<%out.print(lista.get(i)); %>" download="<%out.print(lista.get(i)); %>">baixar</a></td><td><a href="deletar.jsp?cmd=<%out.print(lista.get(i)); %>">deletar</a></td></tr>
		<%
	}
	
	else if(nome.equalsIgnoreCase("avi")){
		%>
		<tr><td scope="col"><video src="uploads\<%out.print(lista.get(i)); %>" type='video/mp4'	controls></video><br/><%out.print(lista.get(i)); %></td><td><a href="uploads\<%out.print(lista.get(i)); %>" download="<%out.print(lista.get(i)); %>">baixar</a></td><td><a href="deletar.jsp?cmd=<%out.print(lista.get(i)); %>">deletar</a></td></tr>
		<%
	}
	else if(nome.equalsIgnoreCase("3gp")){
		%>
		<tr><td scope="col"><video src="uploads\<%out.print(lista.get(i)); %>" type='video/mp4'	controls></video><br/><%out.print(lista.get(i)); %></td><td><a href="uploads\<%out.print(lista.get(i)); %>" download="<%out.print(lista.get(i)); %>">baixar</a></td><td><a href="deletar.jsp?cmd=<%out.print(lista.get(i)); %>">deletar</a></td></tr>
		<%
	}
	else{
		%>
		<tr><td scope="col"><%out.print(lista.get(i)); %><br/>Outros</td><td><a href="uploads\<%out.print(lista.get(i)); %>" download="<%out.print(lista.get(i)); %>">baixar</a></td><td><a href="deletar.jsp?cmd=<%out.print(lista.get(i)); %>">deletar</a></td></tr>
		<%
	}
}

%>
<script src="js/jquery.js"> </script>
<script src="js/jquery.lazy.js"> </script>
<script src="js/index.js"> </script>
</table>
</div>
</body>
</html>