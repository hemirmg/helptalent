package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Emprendedor;
import modelo.EmprendedorDAO;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


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
//        String user = request.getParameter("user");
//        String pass = request.getParameter("pass");
//        System.out.println(user+pass);
        
        
        
        System.out.println("###Presionó el Boton Login###");
        Emprendedor emp = new Emprendedor();
        HttpSession sesion = request.getSession();
        String user = request.getParameter("txtUser");
        String pass = request.getParameter("txtPasword");
        System.out.println(user+pass);
        emp = new Emprendedor(user, pass);
        System.out.println("### Datos ### Emprendedor: " + user + " - Contraseña: " + pass);
        EmprendedorDAO empDAO = new EmprendedorDAO();
        if (empDAO.autenticacion(emp)) {
            System.out.println("el emprendedor es = " + emp);
            sesion.setAttribute("emprendedor", emp);
            response.sendRedirect("Proyecto?accion=explorar");
           
        } else {
            System.out.println("### Se devuelve al INDEX");
            response.sendRedirect("index.jsp");
        }
        
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
