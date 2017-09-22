
package com.AplicWebUniSena.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;


public class Competencias {
    private int idCompetencias;
    private String nombre;
    private int numeroHoras;
    private String estado;

    public Competencias() {
    }

    public Competencias(int idCompetencias, String nombre, int numeroHoras, String estado) {
        this.idCompetencias = idCompetencias;
        this.nombre = nombre;
        this.numeroHoras = numeroHoras;
        this.estado = estado;
    }
    public static Competencias load(ResultSet rs)throws SQLException{
        Competencias objCompet = new Competencias();
        objCompet.setIdCompetencias(rs.getInt(1));
        objCompet.setNombre(rs.getString(2));
        objCompet.setNumeroHoras(rs.getInt(3));
        objCompet.setEstado(rs.getString(4));
       
        return objCompet;
    }
    public int getIdCompetencias() {
        return idCompetencias;
    }

    public void setIdCompetencias(int idCompetencias) {
        this.idCompetencias = idCompetencias;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNumeroHoras() {
        return numeroHoras;
    }

    public void setNumeroHoras(int numeroHoras) {
        this.numeroHoras = numeroHoras;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Competencias{" + "idCompetencias=" + idCompetencias + ", nombre=" + nombre + ", numeroHoras=" + numeroHoras + ", estado=" + estado + '}';
    }
    
   
}
