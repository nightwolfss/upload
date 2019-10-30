<% if(session.getAttribute("acao").equals(session.getAttribute("deletar"))){ %>
<%@page import="java.io.File"%>
<%@page import="controller.Controller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%String deletar = request.getParameter("cmd");
	out.print(deletar);
	
	File arquivo = new File("c:\\Users\\VitorNet\\eclipse-workspace\\upload\\WebContent\\uploads\\"+ deletar);
	arquivo.delete();
	
	request.setAttribute("msg", deletar + " excluído!!");
	request.getRequestDispatcher("view.jsp").forward(request, response);
}else{
	request.setAttribute("msg", "Sem permissão para deletar");
	request.getRequestDispatcher("index.jsp").forward(request, response);
}
%>
