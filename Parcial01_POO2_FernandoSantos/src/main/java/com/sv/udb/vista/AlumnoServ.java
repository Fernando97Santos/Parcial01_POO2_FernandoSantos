/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.vista;

import com.sv.udb.controlador.AlumnosCtrl;
import com.sv.udb.modelo.Alumnos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ferna
 */
@WebServlet(name = "AlumnoServ", urlPatterns = {"/AlumnoServ"})
public class AlumnoServ extends HttpServlet {

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
        boolean esValido = request.getMethod().equals("POST");
        if(esValido)
        {
            String mens = "";
            String CRUD = request.getParameter("cursBton");
            if(CRUD.equals("Guardar"))
            {
                Alumnos obje = new Alumnos();
                obje.setNombAlum(request.getParameter("Nomb"));
                obje.setApelAlum(request.getParameter("Apel"));
                obje.setFechNaciAlum(new Date());
                obje.setMailAlum(request.getParameter("Mail"));
                obje.setTeleAlum(request.getParameter("Tele"));
                obje.setDireAlum(request.getParameter("Dire"));
                obje.setGeneAlum(request.getParameter("Gene").charAt(0));
                mens = new AlumnosCtrl().guar(obje) ? "Datos guardados exitosamente" : "Datos NO guardados";
            }
//            else if(CRUD.equals("Consultar"))
//            {
//                long Codi = Long.parseLong(request.getParameter("codiLugaAcce") == null ? 
//                        "0" : request.getParameter("codiLugaAcce"));
//                Alumnos objeEqui = new AlumnosCtrl().get(Codi);
//                if(objeEqui != null)
//                {
//                    request.setAttribute("CodiLugaAcce", objeEqui.getCodiLugaAcce());
//                    request.setAttribute("NombLugaAcce", objeEqui.getNombLugaAcce());
//                }
//            }
//            else if(CRUD.equals("Modificar"))
//            {
//                LugaAcce obje = new LugaAcce();
//                obje.setNombLugaAcce(request.getParameter("NombLugaAcce"));
//                obje.setFechAlta(new Date());
//                obje.setEsta(1);
//                obje.setCodiLugaAcce(Long.parseLong(request.getParameter("CodiLugaAcce")));
//                mens = new AlumnosCtrl().modi(obje) ? "Datos modificados" : "Datos no modificados";
//            }
//            else if(CRUD.equals("Eliminar"))
//            {
//                LugaAcce obje = new LugaAcce();
//                obje.setNombLugaAcce(request.getParameter("NombLugaAcce"));
//                obje.setFechBaja(new Date());
//                obje.setEsta(0);
//                obje.setCodiLugaAcce(Long.parseLong(request.getParameter("CodiLugaAcce")));
//                mens = new AlumnosCtrl().modi(obje) ? "Datos Eliminados" : "Datos no eliminados"; 
//            }
            request.setAttribute("mensAler", mens);
            request.getRequestDispatcher("Alumnos.jsp").forward(request, response);
        }
        else
        {
            response.sendRedirect(request.getContextPath() + "Alumnos.jsp");
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
