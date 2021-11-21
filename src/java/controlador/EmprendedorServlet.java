package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Emprendedor;
import modelo.EmprendedorDAO;

@WebServlet("/Emprendedor")
public class EmprendedorServlet extends HttpServlet {

    EmprendedorDAO emprendedorDAO = new EmprendedorDAO();
    Emprendedor emprendedor = new Emprendedor();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "editar":
                    //this.editarUsuario(request, response);
                    break;
                case "eliminar":
                    //this.eliminarUsuario(request, response);
                    break;
                default:
                    this.refrescarInformacion(request, response);
            }
        } else {
            this.refrescarInformacion(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "nuevo":
                    this.nuevoUsuario(request, response);
                    break;

                case "login":
                {
                    try {
                        this.login(request, response);
                    } catch (SQLException ex) {
                        Logger.getLogger(EmprendedorServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

                    break;


                default:
                    request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    private void refrescarInformacion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

response.sendRedirect("index.jsp"); //sendRedirect si notifica al navegador
    }

    private void nuevoUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("#########################");
        System.out.println("Capturando nuevo Usuario");
        String nombre= request.getParameter("txtNombre");
        String telefono= request.getParameter("txtTelefono");
        String whatsapp=request.getParameter("txtWhatsapp");
        String email= request.getParameter("txtEmail");
        String user= request.getParameter("txtUser");
        String password= request.getParameter("txtPassword");

        //Creamos un objeto de Emprendedor(modelo)
        Emprendedor emprendedor = new Emprendedor(nombre, telefono, whatsapp, email, user, password);
        //Insertamos en nuevo objeto en la base de datos por medio de EmprendedorDAO
        int resultadoRegistro = new EmprendedorDAO().nuevo(emprendedor);
        System.out.println("resultadoRegistro = " + resultadoRegistro);

        //Redirigimos a la accion por Default
        this.refrescarInformacion(request, response);
    }
    

    private void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        System.out.println("###Presionó el Boton Login###");
        Emprendedor emp = new Emprendedor();
        HttpSession sesion = request.getSession();
        String user = request.getParameter("txtUser");
        String password = request.getParameter("txtPasword");
        emp = new Emprendedor(user, password);
        System.out.println("### Datos ### Emprendedor: " + user + " - Contraseña: " + password);
        EmprendedorDAO empDAO = new EmprendedorDAO();
        if (empDAO.autenticacion(emp)) {
            System.out.println("el emprendedor es = " + emp);
            sesion.setAttribute("emprendedor", emp);
            response.sendRedirect("index.jsp");
        } else {
            System.out.println("### Se devuelve al INDEX");
            response.sendRedirect("index.jsp");
        }

    }


}
