package controller;

import model.Administrador;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class PesquisaAdminController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        processRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws SecurityException, IOException, ServletException {
        try {
            ArrayList<Administrador>  lista = (ArrayList<Administrador>) Administrador.obterTodosAdministradores();
            
            request.setAttribute("administradores", lista);
            RequestDispatcher view = request.getRequestDispatcher("/pesquisaAdministrador.jsp");
            view.forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
        }
    }
}
