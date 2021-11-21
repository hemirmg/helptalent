package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmprendedorDAO {

    String sql_auth = "SELECT * from emprendedor WHERE user = ? and password = ?";
    String sql_nuevo = "INSERT INTO emprendedor(nombre, telefono, whatsapp, email, user, password) VALUES(?, ?, ?, ?, ?, ?)";

    Emprendedor emprendedor = null;
    List<Emprendedor> emprendedores = new ArrayList<>();
    
   

    public boolean autenticacion(Emprendedor emprendedor) {
        Conexion conexion = new Conexion();
        Connection conn = null;
        conn = conexion.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql_auth);
            ps.setString(1, emprendedor.getUser());
            ps.setString(2, emprendedor.getPassword());
            rs = ps.executeQuery();

            if (rs.next()) {
                emprendedor.setIdEmprendedor(rs.getInt("id_emprendedor"));
                emprendedor.setNombre(rs.getString("nombre"));
                emprendedor.setTelefono(rs.getString("telefono"));
                emprendedor.setWhatsapp(rs.getString("whatsapp"));
                emprendedor.setEmail(rs.getString("email"));
                emprendedor.setUser(rs.getString("user"));
                emprendedor.setPassword(rs.getString("password"));
                return true;
            }

        } catch (SQLException ex) {
            System.out.println("Error al Autenticar Emprendedor: " + ex);
        } finally {
            conexion.close(rs);
            conexion.close(ps);
            conexion.close(conn);
        }
        return false;
    }


    public int nuevo(Emprendedor emprendedor) {
        Conexion conexion = new Conexion();
        Connection conn = null;
        conn = conexion.getConnection();
        PreparedStatement ps = null;
        int resultado = 0;
        try {
            ps = conn.prepareStatement(sql_nuevo);
            ps.setString(1, emprendedor.getNombre());
            ps.setString(2, emprendedor.getTelefono());
            ps.setString(3, emprendedor.getWhatsapp());
            ps.setString(4, emprendedor.getEmail());
            ps.setString(5, emprendedor.getUser());
            ps.setString(6, emprendedor.getPassword());

            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al guardar Emprendedor: " + ex);
        } finally {
            conexion.close(ps);
            conexion.close(conn);
        }
        return resultado;
    }


}
