package controller;

import model.TipoEspaco;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class    PesquisaTipoEspacoController extends HttpServlet {
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
            request.setAttribute("tiposEspacos", TipoEspaco.obterTodosTiposEspacos());
            RequestDispatcher view = request.getRequestDispatcher("/pesquisaTipoEspaco.jsp");
            view.forward(request, response);
        } catch (ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (SQLException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }
}
