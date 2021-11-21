package modelo;

public class TipoProyecto1 {
    int idTipoProyecto1;
    String nombre;
    String color;

    public TipoProyecto1() {
    }

    public TipoProyecto1(int idTipoProyecto, String nombre, String color) {
        this.idTipoProyecto1 = idTipoProyecto1;
        this.nombre = nombre;
        this.color = color;
    }

    public int getIdTipoProyecto() {
        return idTipoProyecto1;
    }

    public void setIdTipoProyecto(int idTipoProyecto1) {
        this.idTipoProyecto1 = idTipoProyecto1;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    
    
}
