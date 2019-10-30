package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class Controller
 */

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Controller() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String var = request.getParameter("cmd");
		
		if(var.equalsIgnoreCase("logar")) {
			String nome = request.getParameter("user");
			HttpSession session = request.getSession();
			session.setAttribute("acao", nome);
			session.setAttribute("deletar", "delsim");
			response.sendRedirect("index.jsp");
			
			//request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		if(var.equalsIgnoreCase("upload")) {
			gravarArquivo(request, response);
		}
		if(var.equalsIgnoreCase("deletar")) {
			deletarArquivo(request, response);
		}
	}

	protected void gravarArquivo(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		try {
			List<FileItem> arquivos = sf.parseRequest(request);
			ArrayList<String> lista = new ArrayList<String>();
			for (FileItem f : arquivos) {
				String[] nome = f.getName().split("\\\\");
				f.write(new File("c:\\Users\\VitorNet\\eclipse-workspace\\upload\\WebContent\\uploads\\" + nome[nome.length - 1]));
				lista.add(f.getName());
				request.setAttribute("msg", "Arquivos Updados: " + lista);
//			} catch (Exception e) {
//				
//			}
			}

			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (FileUploadException e) {
			System.out.println("Erro ao listar arquivos: " + e.getMessage());
			request.setAttribute("msg", "Falha ao Listar arquivo");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (Exception e) {
			System.out.println("Erro ao upar o arquivo " + e.getMessage());
			request.setAttribute("msg", "Falha ao UPAR arquivo");
		}
	}
	
	protected void deletarArquivo(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	String deletar = request.getParameter("deletar");
	}

}
