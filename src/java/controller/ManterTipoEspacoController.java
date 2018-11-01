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
import model.TipoEspaco;

/**
 *
 * @author luisg
 */
public class ManterTipoEspacoController extends HttpServlet {

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
            Logger.getLogger(ManterTipoEspacoController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ManterTipoEspacoController.class.getName()).log(Level.SEVERE, null, ex);
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
                TipoEspaco tipoEspaco = TipoEspaco.obterTipoEspaco((long) id);
                request.setAttribute("tipoEspaco", tipoEspaco);
            }
            RequestDispatcher view = request.getRequestDispatcher("/manterTipoEspaco.jsp");
            view.forward(request, response);

        } catch (ServletException e) {
            throw e;
        } catch (IOException | SQLException | ClassNotFoundException e) {
            throw new ServletException((e));
        }
    }
    
    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String operacao = request.getParameter("operacao");

        long id = Long.parseLong(request.getParameter("txtTipoEspacoId"));
        String nome = request.getParameter("txtNome");
        long modalidade = Long.parseLong(request.getParameter("optModalidade"));
        try {
               Modalidade modal = null;
            if (modalidade != 0) {
                modal = Modalidade.obterModalidade(modalidade);
            }
           TipoEspaco tipoEspaco = new TipoEspaco(id,nome,modalidade);
            if (operacao.equals("Incluir")) {
                tipoEspaco.gravar();
            }else {
                if (operacao.equals("Editar")) {
                    tipoEspaco.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                        tipoEspaco.excluir();
                    }
                }
            }
        
            RequestDispatcher view = request.getRequestDispatcher("PesquisaTipoEspacoController");
            view.forward(request, response);
        } catch (IOException | SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
            throw e;
        }
    }
}
