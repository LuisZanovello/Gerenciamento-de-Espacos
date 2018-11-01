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
import model.Espaco;
import model.TipoEspaco;

/**
 *
 * @author luisg
 */

public class ManterEspacoController extends HttpServlet {

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
            Logger.getLogger(ManterEspacoController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ManterEspacoController.class.getName()).log(Level.SEVERE, null, ex);
            
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
            request.setAttribute("tiposEspacos", TipoEspaco.obterTodosTiposEspacos());
            if (!operacao.equals("Incluir")) {
                long id = Long.parseLong(request.getParameter("id").trim());
                Espaco espaco = Espaco.obterEspaco((long) id);
                request.setAttribute("espaco", espaco);
            }
            RequestDispatcher view = request.getRequestDispatcher("/manterEspaco.jsp");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException | SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        }
        
 
    }
    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String operacao = request.getParameter("operacao");

        long id = Long.parseLong(request.getParameter("txtIdEspaco"));
        String nome = request.getParameter("txtNome");
        String cnpj = request.getParameter("txtCnpj");
        String cep = request.getParameter("txtCep");
        String logradouro = request.getParameter("txtLogradouro");
        int numero = Integer.parseInt(request.getParameter("txtNumero"));
        String complemento = request.getParameter("txtComplemento");
        String bairro = request.getParameter("txtBairro");
        String cidade = request.getParameter("txtCidade");
        String uf = request.getParameter("txtUf");
        double area = Double.parseDouble(request.getParameter("txtArea"));
        int qtPessoas = Integer.parseInt(request.getParameter("txtQuantidadePessoas"));
        String horaI = request.getParameter("txtHoraFuncionamentoInicio");
        String horaF = request.getParameter("txtHoraFuncionamentoFinal");
        long tipoEspaco = Long.parseLong(request.getParameter("optTipoEspaco"));
        try {
            TipoEspaco tipo = null;
            if (tipoEspaco != 0) {
                tipo = TipoEspaco.obterTipoEspaco(tipoEspaco);
            }
            Espaco espaco = new Espaco(id,nome,cnpj,cep,logradouro,numero,complemento,bairro,cidade,uf,area,qtPessoas,horaI,horaF,tipoEspaco);
            if (operacao.equals("Incluir")) {
                espaco.gravar();
            }else {
                if (operacao.equals("Editar")) {
                    espaco.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                       espaco.excluir();
                    }
                }
            }
        
            RequestDispatcher view = request.getRequestDispatcher("PesquisaEspacoController");
            view.forward(request, response);
        } catch (IOException | SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
            throw e;
        }
    }
    
}
