package controlador;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import modelo.Emprendedor;
import modelo.EmprendedorDAO;
import modelo.Proyecto;
import modelo.ProyectoDAO;

@WebServlet(name = "Proyecto", urlPatterns = {"/Proyecto"})
@MultipartConfig
public class ProyectoServlet extends HttpServlet {

    ProyectoDAO proyectoDAO = new ProyectoDAO();
    Proyecto proyecto = new Proyecto();
    List<Proyecto> proyectos = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "ver":
                    this.verProyecto(request, response);
                    break;
                case "eliminar":

                    break;
                default:
                    proyectos = proyectoDAO.listar();
                    request.setAttribute("proyectos", proyectos);
                    request.getRequestDispatcher("proyectos.jsp").forward(request, response);
            }
        } else {
            proyectos = proyectoDAO.listar();
            request.setAttribute("proyectos", proyectos);
            request.getRequestDispatcher("proyectos.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "nuevo":
                    this.nuevoProyecto(request, response);
                    break;
                case "pdf":
                    this.cargarArchivo(request, response);
                    break;
                case "buscar":
                    //this.buscarUsuario(request, response);
                    break;
                case "login": {

                }
                break;

                default:
                    this.refrescarInformacion(request, response);
            }
        } else {
            this.refrescarInformacion(request, response);
        }
    }

    private void refrescarInformacion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.jsp"); //sendRedirect si notifica al navegador
    }

    private void nuevoProyecto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("#########################");
        System.out.println("Capturando datos del Proyecto");

        String nombre = request.getParameter("txtNombre");
        String descripcion = request.getParameter("txtDescripcion");
        String razon = request.getParameter("txtRazon");
        String tipo1 = request.getParameter("txtTipo11");
        String color = request.getParameter("txtTipo1");
        String tipo2 = request.getParameter("txtTipo2");
        String inversion = request.getParameter("txtInversion");
        Part archivo = request.getPart("txtPDF");
        String pdf = "http://localhost/uploads/"+archivo.getSubmittedFileName();
        
        String nom = request.getParameter("txtNom");
        String tel = request.getParameter("txtTel");
        String was = request.getParameter("txtWas");
        String email = request.getParameter("txtEmail");
        
        
        Proyecto proyecto = new Proyecto(nombre, descripcion, razon, tipo1, color, tipo2, inversion, pdf);

        int resultadoRegistro = new ProyectoDAO().nuevo(proyecto);
        this.cargarArchivo(request, response);
        System.out.println("resultadoRegistro = " + resultadoRegistro);
        response.sendRedirect("Proyecto?accion=explorar");
    }

    private void verProyecto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        //recuperamos cedulaCliente
        int id = Integer.parseInt(request.getParameter("id"));

        Proyecto proyecto = new ProyectoDAO().buscarID(new Proyecto(id));

        System.out.println("el id proyecto es = " + proyecto);
        sesion.setAttribute("proyecto", proyecto);

        response.sendRedirect("proyecto/ver.jsp");
    }

    private void cargarArchivo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();

        ProyectoDAO proDAO = new ProyectoDAO();
        Part archivo = request.getPart("txtPDF");
        String nombre = archivo.getSubmittedFileName();
        String url = "C:/Program Files/Apache Software Foundation/Tomcat 9.0_Tomcat9Servidor/webapps/uploads/"; //--funciona

        try {
            InputStream file = archivo.getInputStream();
            File copia = new File(url + nombre);
            //File copia = new File(url2);
            FileOutputStream escribir = new FileOutputStream(copia);
            int num = file.read();
            while (num != -1) {
                escribir.write(num);
                num = file.read();
            }
            escribir.close();
            file.close();
            System.out.println("** Archivo " + nombre + " Copiado Correctamente");

        } catch (Exception ex) {
            System.out.println("Error al cargar el Archivo al Servlet = " + ex.getMessage());
        }
    }

}
