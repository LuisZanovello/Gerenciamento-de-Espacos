/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Reserva;
import model.Cliente;
import model.Espaco;

/**
 *
 * @author viict
 */
public class ManterReservaController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acao = request.getParameter("acao");

        if (acao.equals("confirmarOperacao")) {
            confirmarOperacao(request, response);

        } else {
            if (acao.equals("prepararOperacao")) {
                prepararOperacao(request, response);
            }
        }
    }

    public void prepararOperacao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String operacao = request.getParameter("operacao");
            request.setAttribute("operacao", operacao);
            request.setAttribute("espacos", Espaco.obterTodosEspacos());
            request.setAttribute("clientes", Cliente.obterTodosOsClientes());

            if (!operacao.equals("Incluir")) {
                long id = Long.parseLong(request.getParameter("id").trim());
                Reserva resv = Reserva.obterReserva((long) id);
                request.setAttribute("resv", resv);
            }
            RequestDispatcher view = request.getRequestDispatcher("/manterReserva.jsp");
            view.forward(request, response);

        } catch (ServletException e) {
            throw e;
        } catch (IOException e) {
            throw new ServletException(e);
        } catch (SQLException e) {
            throw new ServletException(e);
        } catch (ClassNotFoundException e) {
            throw new ServletException(e);
        }
    }

    
    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String operacao = request.getParameter("operacao");

        long id = Long.parseLong(request.getParameter("txtCodReserva"));
        String dataLocacao = request.getParameter("txtDataLocacao");
        String horaInicioLocacao = request.getParameter("txtHrInicio");
        String horaFimLocacao = request.getParameter("txtHrFim");
        Long qtPessoas = Long.parseLong(request.getParameter("txtqtPessoas"));
        double valorLocacao = Double.parseDouble(request.getParameter("txtvalorLocacao"));
        long notaAvaliacao = Long.parseLong(request.getParameter("txtAvaliacao"));
        long cliente = Long.parseLong(request.getParameter("optCliente"));
        long espaco = Long.parseLong(request.getParameter("optEspaco"));

        try {
            Cliente clit = null;
            Espaco esp = null;

            if (cliente != 0 && espaco != 0) {

                clit = Cliente.obterCliente(cliente);
                esp = Espaco.obterEspaco(espaco);
            }
            Reserva resv = new Reserva(id, dataLocacao, horaInicioLocacao, horaFimLocacao, qtPessoas, valorLocacao, notaAvaliacao, cliente, espaco);
            if (operacao.equals("Incluir")) {
                resv.gravar();
            } else {
                if (operacao.equals("Editar")) {
                    resv.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                        resv.excluir();
                    }
                }
            }
            RequestDispatcher view = request.getRequestDispatcher("PesquisaReservaController");
            view.forward(request, response);
        } catch (IOException e) {
            throw new ServletException(e);
        } catch (SQLException e) {
            throw new ServletException(e);
        } catch (ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
            throw e;
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
        processRequest(request, response);
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
        processRequest(request, response);
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

}
