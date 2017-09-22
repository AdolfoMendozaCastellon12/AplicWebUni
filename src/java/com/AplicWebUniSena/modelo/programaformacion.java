/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Estudiante
 */
public class programaformacion {
    private int idProg;
    private String Suc_Fich;
    private String Suc_nomb;
    private String TipoF;
    private String Suc_Estado;

    public programaformacion() {
    }

    public programaformacion(int idProg, String Suc_Fich, String Suc_nomb, String TipoF, String Suc_Estado) {
        this.idProg = idProg;
        this.Suc_Fich = Suc_Fich;
        this.Suc_nomb = Suc_nomb;
        this.TipoF = TipoF;
        this.Suc_Estado = Suc_Estado;
 
    }
    public static programaformacion load(ResultSet rs)throws SQLException{
        programaformacion objProgramaF = new programaformacion();
        objProgramaF.setIdProg(rs.getInt(1));
        objProgramaF.setSuc_Fich(rs.getString(2));
        objProgramaF.setSuc_nomb(rs.getString(3));
        objProgramaF.setTipoF(rs.getString(4));
        objProgramaF.setSuc_Estado(rs.getString(5));
        
        return objProgramaF;
    }

    public int getIdProg() {
        return idProg;
    }

    public void setIdProg(int idProg) {
        this.idProg = idProg;
    }

    public String getSuc_Fich() {
        return Suc_Fich;
    }

    public void setSuc_Fich(String Suc_Fich) {
        this.Suc_Fich = Suc_Fich;
    }

    public String getSuc_nomb() {
        return Suc_nomb;
    }

    public void setSuc_nomb(String Suc_nomb) {
        this.Suc_nomb = Suc_nomb;
    }

    public String getTipoF() {
        return TipoF;
    }

    public void setTipoF(String TipoF) {
        this.TipoF = TipoF;
    }

    public String getSuc_Estado() {
        return Suc_Estado;
    }

    public void setSuc_Estado(String Suc_Estado) {
        this.Suc_Estado = Suc_Estado;
    }

    @Override
    public String toString() {
        return "programaformacion{" + "idProg=" + idProg + ", Suc_Fich=" + Suc_Fich + ", Suc_nomb=" + Suc_nomb + ", TipoF=" + TipoF + ", Suc_Estado=" + Suc_Estado + '}';
    }


   
}
    
