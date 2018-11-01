/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Modalidade;

/**
 *
 * @author luisg
 */
public class ManterModalidadeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     * @throws java.lang.ClassNotFoundException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        String acao = request.getParameter("acao");
        if (acao.equals("confirmarOperacao")) {
              confirmarOperacao(request, response);
        } else {
            if (acao.equals("prepararOperacao")) {
                prepararOperacao(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ManterModalidadeController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ManterModalidadeController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void prepararOperacao(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException, ServletException {
        try {
            String operacao = request.getParameter("operacao");
            request.setAttribute("operacao", operacao);
            request.setAttribute("modalidades", Modalidade.obterTodasModalidades());
            if (!operacao.equals("Incluir")) {
                long id = Long.parseLong(request.getParameter("id").trim());
                Modalidade modalidade = Modalidade.obterModalidade((long) id);
                request.setAttribute("modalidade", modalidade);
            }
            RequestDispatcher view = request.getRequestDispatcher("/manterModalidade.jsp");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException | SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        }
    }
     public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String operacao = request.getParameter("operacao");

        long id = Long.parseLong(request.getParameter("txtIdModalidade"));
        String nome = request.getParameter("txtModalidade");
        String descricao = request.getParameter("txtDescricao");

        try {
            
            Modalidade modalidade = new Modalidade(id,nome,descricao);
            if (operacao.equals("Incluir")) {
                modalidade.gravar();
            }else {
                if (operacao.equals("Editar")) {
                    modalidade.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                        modalidade.excluir();
                    }
                }
            }
        
            RequestDispatcher view = request.getRequestDispatcher("PesquisaModalidadeController");
            view.forward(request, response);
        } catch (IOException | SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
            throw e;
        }
    }
}
