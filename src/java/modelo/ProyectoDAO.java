package modelo;

import config.Conexion;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletResponse;

public class ProyectoDAO {

    String sql_nuevo = "INSERT INTO proyecto(nombre, descripcion, justificacion, tipo1, color, tipo2, inversion ,pdf, id_emprendedor, id_inversionista) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    String sql_buscar_por_id = "SELECT * FROM proyecto WHERE id_proyecto = ?";

    Proyecto proyecto = null;
    List<Proyecto> proyectos = new ArrayList<>();

    Connection con;
    Conexion cn = new Conexion();

    PreparedStatement ps;
    ResultSet rs;

    public List listar() {
        List<Proyecto> productos = new ArrayList();
        String sql = "select * from proyecto ORDER BY id_proyecto DESC";

//        try {
//            con=cn.getConnection();
//            ps=con.prepareStatement(sql);
//            rs=ps.executeQuery();
//            while(rs.next()){
//                Proyecto p = new Proyecto();
//                p.setId(rs.getInt(1));
//                p.setNombres(rs.getString(2));
//                p.setFoto(rs.getString(3));
//                p.setDescripcion(rs.getString(4));
//                p.setPrecio(rs.getDouble(5));
//                p.setStock(rs.getInt(6));
//                productos.add(p);
//            }
//        } catch (Exception e) {
//        }
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proyecto p = new Proyecto();
                p.setIdProyecto(rs.getInt(1));
                p.setNombre(rs.getString(2));
                p.setDescripcion(rs.getString(3));
                p.setJustificacion(rs.getString(4));
                p.setTipoProyecto1(rs.getString(5));

                p.setColor(rs.getString(6));
                p.setTipoProyecto2(rs.getString(7));
                p.setInversion(rs.getString(8));
                p.setPdf(rs.getString(9));
                p.setIdEmprendedor(rs.getInt(10));
                p.setIdInversionista(rs.getInt(11));
                productos.add(p);

            }
        } catch (Exception e) {
        }
        System.out.println("Se cargaron los datos al proyecto");
        return productos;

    }
//    public void listarImg(int id, HttpServletResponse response){
//        
//        String sql ="select * from producto where idProducto="+id;
//        InputStream inputStream=null;
//        OutputStream outputStream=null;
//        BufferedInputStream bufferedInputStream=null;
//        BufferedOutputStream bufferedOutputStream=null;
//        try {
//            outputStream=response.getOutputStream();
//            con=cn.getConnection();
//            ps=con.prepareStatement(sql);
//            rs=ps.executeQuery();
//            
//            if (rs.next()){
//                inputStream=rs.getBinaryStream("Foto");
//            }
//            bufferedInputStream= new BufferedInputStream(inputStream);
//            bufferedOutputStream= new BufferedOutputStream(outputStream);
//            int i=0;
//            while((i=bufferedInputStream.read())!=-1){
//                bufferedOutputStream.write(i);
//            }
//        } catch (Exception e) {
//            System.err.println("no se cargó la imahens");
//        }
//    }

    public int nuevo(Proyecto proyecto) {
        Conexion conexion = new Conexion();
        Connection conn = null;
        conn = conexion.getConnection();
        PreparedStatement ps = null;
        int resultado = 0;
        try {
            ps = conn.prepareStatement(sql_nuevo);
            ps.setString(1, proyecto.getNombre());
            ps.setString(2, proyecto.getDescripcion());
            ps.setString(3, proyecto.getJustificacion());
            ps.setString(4, proyecto.getTipoProyecto1());
            ps.setString(5, proyecto.getColor());
            ps.setString(6, proyecto.getTipoProyecto2());
            ps.setString(7, proyecto.getInversion());
            ps.setString(8, proyecto.getPdf());
            ps.setInt(9, proyecto.getIdEmprendedor());
            ps.setInt(10, proyecto.getIdInversionista());

            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al guardar el Proyecto: " + ex);
        } finally {
            conexion.close(ps);
            conexion.close(conn);
        }
        return resultado;
    }

//    public boolean buscarPorID(Proyecto proyecto) {
//        Conexion conexion = new Conexion();
//        Connection conn = null;
//        conn = conexion.getConnection();
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            ps = conn.prepareStatement(sql_buscar_por_id);
//            ps.setInt(1, proyecto.getIdProyecto());
//            rs = ps.executeQuery();
//            //rs.absolute(1);//nos posicionamos en el primer registro devuelto
//            while (rs.next()) {
//                // capturamos la info de la base de datos y la guardamos en unas variables
//                int idProyecto = rs.getInt("id_proyecto");
//                String nombre = rs.getString("nombre");
//                String descripcion=rs.getString("descripcion");
//                String justificacion=rs.getString("justificacion");
//                String TipoProyecto1=rs.getString("tipo1");
//                String color=rs.getString("color");
//                String TipoProyecto2=rs.getString("tipo2");
//                String inversion=rs.getString("inversion");
//                String pdf =rs.getString("pdf");
//                int idEmprendedor=rs.getInt("id_emprendedor");
//                int idInversionista=rs.getInt("id_inversionista");
//                
//
//                // agregamos cada atribulo al objeto usuario y devolvemos un usuario completo
//                proyecto.setIdProyecto(idProyecto);
//                proyecto.setNombre(nombre);
//                proyecto.setDescripcion(descripcion);
//                proyecto.setJustificacion(justificacion);
//                proyecto.setTipoProyecto1(TipoProyecto1);
//                proyecto.setColor(color);
//                proyecto.setTipoProyecto2(TipoProyecto2);
//                proyecto.setInversion(inversion);
//                proyecto.setPdf(pdf);
//                proyecto.setIdEmprendedor(idEmprendedor);
//                proyecto.setIdInversionista(idInversionista);
//            }
//
//        } catch (SQLException ex) {
//            System.out.println("Error al Buscar Proyecto: " + ex.getMessage());
//        } finally {
//            conexion.close(rs);
//            conexion.close(ps);
//            conexion.close(conn);
//        }
//        return false;
//    }
    
        public Proyecto buscarID(Proyecto proyecto) {
        Conexion conexion = new Conexion();
        Connection conn = null;
        conn = conexion.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql_buscar_por_id);
            ps.setInt(1, proyecto.getIdProyecto());
            rs = ps.executeQuery();
            //rs.absolute(1);//nos posicionamos en el primer registro devuelto
            while (rs.next()) {
                // capturamos la info de la base de datos y la guardamos en unas variables
   int idProyecto = rs.getInt("id_proyecto");
                String nombre = rs.getString("nombre");
                String descripcion=rs.getString("descripcion");
                String justificacion=rs.getString("justificacion");
                String TipoProyecto1=rs.getString("tipo1");
                String color=rs.getString("color");
                String TipoProyecto2=rs.getString("tipo2");
                String inversion=rs.getString("inversion");
                String pdf =rs.getString("pdf");
                int idEmprendedor=rs.getInt("id_emprendedor");
                int idInversionista=rs.getInt("id_inversionista");
                String nom=rs.getString("nom");
                String tel=rs.getString("tel");
                String was=rs.getString("was");
                String mail=rs.getString("mail");
                
    

                // agregamos cada atribulo al objeto usuario y devolvemos un usuario completo
                proyecto.setIdProyecto(idProyecto);
                proyecto.setNombre(nombre);
                proyecto.setDescripcion(descripcion);
                proyecto.setJustificacion(justificacion);
                proyecto.setTipoProyecto1(TipoProyecto1);
                proyecto.setColor(color);
                proyecto.setTipoProyecto2(TipoProyecto2);
                proyecto.setInversion(inversion);
                proyecto.setPdf(pdf);
                proyecto.setIdEmprendedor(idEmprendedor);
                proyecto.setIdInversionista(idInversionista);
                proyecto.setNom(nom);
                proyecto.setTel(tel);
                proyecto.setWas(was);
                proyecto.setMail(mail);
            }

        } catch (SQLException ex) {
            System.out.println("Error al Buscar Proyecto: " + ex.getMessage());
        } finally {
            conexion.close(rs);
            conexion.close(ps);
            conexion.close(conn);
        }
        return proyecto;
    }

}
