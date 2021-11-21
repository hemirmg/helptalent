package modelo;

public class Emprendedor {
    private int idEmprendedor;
    private String nombre;
    private String telefono;
    private String whatsapp;
    private String email;
    private String user;
    private String password;
    

    public Emprendedor() {
    }

    
    public Emprendedor(String user, String password) {
        this.password = password;
        this.user = user;
    }

    public Emprendedor(int idEmprendedor, String nombre, String telefono, String whatsapp, String email, String user, String password) {
        this.idEmprendedor = idEmprendedor;
        this.nombre = nombre;
        this.telefono = telefono;
        this.whatsapp = whatsapp;
        this.email = email;
        this.user = user;
        this.password = password;
    }

    public Emprendedor(String nombre, String telefono, String whatsapp, String email, String user, String password) {
        this.nombre = nombre;
        this.telefono = telefono;
        this.whatsapp = whatsapp;
        this.email = email;
        this.user = user;
        this.password = password;
    }
    
    

    public int getIdEmprendedor() {
        return idEmprendedor;
    }

    public void setIdEmprendedor(int idEmprendedor) {
        this.idEmprendedor = idEmprendedor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getWhatsapp() {
        return whatsapp;
    }

    public void setWhatsapp(String whatsapp) {
        this.whatsapp = whatsapp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Emprendedor{" + "idEmprendedor=" + idEmprendedor + ", nombre=" + nombre + ", telefono=" + telefono + ", whatsapp=" + whatsapp + ", email=" + email + ", user=" + user + ", password=" + password + '}';
    }





        
    
}
