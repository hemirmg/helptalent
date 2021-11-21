package modelo;

import java.io.InputStream;

public class Proyecto {
   int idProyecto;
   String nombre;
   //InputStream foto;
   String descripcion;
   String justificacion;
   String TipoProyecto1;
   String color;
   String TipoProyecto2;
   String inversion;
   String pdf;
   int idEmprendedor;
   int idInversionista;
   String nom;
   String tel;
   String was;
   String mail;


    public Proyecto(String nombre, String descripcion, String justificacion, String TipoProyecto1, String color, String TipoProyecto2, String inversion, String pdf, String nom, String tel, String was, String mail) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.justificacion = justificacion;
        this.TipoProyecto1 = TipoProyecto1;
        this.color = color;
        this.TipoProyecto2 = TipoProyecto2;
        this.inversion = inversion;
        this.pdf = pdf;
        this.nom = nom;
        this.tel = tel;
        this.was = was;
        this.mail = mail;
    }

   
   
    public Proyecto() {
    }

    public Proyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }

    public Proyecto(int idProyecto, String nombre, String descripcion, String justificacion, String TipoProyecto1, String color, String TipoProyecto2, String inversion, String pdf, int idEmprendedor, int idInversionista) {
        this.idProyecto = idProyecto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.justificacion = justificacion;
        this.TipoProyecto1 = TipoProyecto1;
        this.color = color;
        this.TipoProyecto2 = TipoProyecto2;
        this.inversion = inversion;
        this.pdf = pdf;
        this.idEmprendedor = idEmprendedor;
        this.idInversionista = idInversionista;
    }

    public Proyecto(String nombre, String descripcion, String justificacion, String TipoProyecto1, String color, String TipoProyecto2, String inversion, String pdf, int idEmprendedor, int idInversionista) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.justificacion = justificacion;
        this.TipoProyecto1 = TipoProyecto1;
        this.color = color;
        this.TipoProyecto2 = TipoProyecto2;
        this.inversion = inversion;
        this.pdf = pdf;
        this.idEmprendedor = idEmprendedor;
        this.idInversionista = idInversionista;
    }

    public Proyecto(String nombre, String descripcion, String justificacion, String TipoProyecto1, String color, String TipoProyecto2, String inversion, String pdf) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.justificacion = justificacion;
        this.TipoProyecto1 = TipoProyecto1;
        this.color = color;
        this.TipoProyecto2 = TipoProyecto2;
        this.inversion = inversion;
        this.pdf = pdf;
    }

    public Proyecto(int idProyecto, String nombre, String descripcion, String justificacion, String TipoProyecto1, String color, String TipoProyecto2, String inversion, String pdf, int idEmprendedor, int idInversionista, String nom, String tel, String was, String mail) {
        this.idProyecto = idProyecto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.justificacion = justificacion;
        this.TipoProyecto1 = TipoProyecto1;
        this.color = color;
        this.TipoProyecto2 = TipoProyecto2;
        this.inversion = inversion;
        this.pdf = pdf;
        this.idEmprendedor = idEmprendedor;
        this.idInversionista = idInversionista;
        this.nom = nom;
        this.tel = tel;
        this.was = was;
        this.mail = mail;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getWas() {
        return was;
    }

    public void setWas(String was) {
        this.was = was;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }


    
    



    public int getIdProyecto() {
        return idProyecto;
    }

    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getJustificacion() {
        return justificacion;
    }

    public void setJustificacion(String justificacion) {
        this.justificacion = justificacion;
    }

    public String getInversion() {
        return inversion;
    }

    public void setInversion(String inversion) {
        this.inversion = inversion;
    }

    public String getTipoProyecto1() {
        return TipoProyecto1;
    }

    public void setTipoProyecto1(String TipoProyecto1) {
        this.TipoProyecto1 = TipoProyecto1;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTipoProyecto2() {
        return TipoProyecto2;
    }

    public void setTipoProyecto2(String TipoProyecto2) {
        this.TipoProyecto2 = TipoProyecto2;
    }

    public String getPdf() {
        return pdf;
    }

    public void setPdf(String pdf) {
        this.pdf = pdf;
    }

    public int getIdEmprendedor() {
        return idEmprendedor;
    }

    public void setIdEmprendedor(int idEmprendedor) {
        this.idEmprendedor = idEmprendedor;
    }

    public int getIdInversionista() {
        return idInversionista;
    }

    public void setIdInversionista(int idInversionista) {
        this.idInversionista = idInversionista;
    }



   


    @Override
    public String toString() {
        return "Proyecto{" + "idProyecto=" + idProyecto + ", nombre=" + nombre + ", inversion=" + inversion + '}';
    }
 
}
