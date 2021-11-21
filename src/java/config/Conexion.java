package config;

import java.sql.*;

public class Conexion {

    Connection con;
//    public String url = "jdbc:mysql://localhost:3306/bdtalent?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=false";
    public String url = "jdbc:mysql://prestamosvf.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/bdtalent?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=false";
    public String user = "admin";
    public String password = "Ciclo3_admi123";

    public Connection getConnection() {
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            Class.forName("org.mariadb.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            System.out.println("0 - Conexion exitosa.");
        } catch (Exception e) {
            System.out.println("No se puedo conectar..." + e.getMessage());
        }
        return con;
    }
    
        public void close(ResultSet rs) {
        try {
            rs.close();
            System.out.println("1 - Se cerró ResultSet");
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void close(PreparedStatement ps) {
        try {
            ps.close();
            System.out.println("2 - Se cerró PreparedStatement");
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void close(Connection con) {
        try {
            con.close();
            System.out.println("3 - Se cerró la Conexión");
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public static void main(String[] args){
        Conexion con = new Conexion();
        con.getConnection();
    }
}