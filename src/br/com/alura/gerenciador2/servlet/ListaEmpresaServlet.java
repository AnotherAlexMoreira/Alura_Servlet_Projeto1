package br.com.alura.gerenciador2.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/listaEmpresa")
public class ListaEmpresaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Banco banco = new Banco();
        List<Empresa> lista = banco.getEmpresas();

        //empresas referencia o empresas no forEach
        request.setAttribute("empresas", lista);

        RequestDispatcher rd = request.getRequestDispatcher("/mostraEmpresa.jsp");
        rd.forward(request, response);
        //faz chamar o jsp
        //RequestDispatcher rd = request.getRequestDispatcher("/listaEmpresas.jsp");
        //rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Banco banco = new Banco();
        List<Empresa> lista = banco.getEmpresas();

        //empresas referencia o empresas no forEach
        request.setAttribute("empresas", lista);

        RequestDispatcher rd = request.getRequestDispatcher("/mostraEmpresa.jsp");
        rd.forward(request, response);
    }
}
