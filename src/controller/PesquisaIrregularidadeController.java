package controller;

import model.Irregularidade;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class PesquisaIrregularidadeController extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    processRequest(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        processRequest(request,response);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setAttribute("irregularidades", Irregularidade.obterTodasIrregularidades());
            RequestDispatcher view = request.getRequestDispatcher("/pesquisaIrregularidade.jsp");
            view.forward(request,response);
        }catch (ClassNotFoundException e){
            throw new ServletException(e);
        }catch (SQLException e){
            throw new ServletException(e);
        }
    }
}
