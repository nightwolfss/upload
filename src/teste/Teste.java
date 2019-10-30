package teste;

public class Teste {
	
	public static void main(String[] args) {
		
		String texto = "QualquerTexto.gif";
		String t = texto.substring(texto.length() - 3, texto.length());
		if(t.equalsIgnoreCase("jpg") | t.equalsIgnoreCase("peg") | t.equalsIgnoreCase("gif")) {
		System.out.println(t);
		
		}
		
	}

}
