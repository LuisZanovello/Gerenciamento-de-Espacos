package controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class PesquisaContatoController {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            request.setAttribute("clientes", Cliente.obterClientes());
            RequestDispatcher view = request.getRequestDispatcher("/pesquisaCliente.jsp");
            view.forward(request, response);
        }catch (ClassNotFoundException e){
            throw new ServletException(e);
        }catch (SQLException e){
            throw new ServletException(e);
        }catch (ServletException e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response );
    }
}
