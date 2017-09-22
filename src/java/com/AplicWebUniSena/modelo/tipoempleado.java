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
public class tipoempleado {
    private int idTipoEmp;
    private String Suc_Descrip;
    private String Suc_Estado;

    public tipoempleado() {
    }

    public tipoempleado(int idTipoEmp, String Suc_Descrip, String Suc_Estado) {
        this.idTipoEmp = idTipoEmp;
        this.Suc_Descrip = Suc_Descrip;
        this.Suc_Estado = Suc_Estado;
    }
    public static tipoempleado load(ResultSet rs)throws SQLException{
        tipoempleado objTipoEmp = new tipoempleado();
        objTipoEmp.setIdTipoEmp(rs.getInt(1));
        objTipoEmp.setSuc_Descrip(rs.getString(2));
        objTipoEmp.setSuc_Estado(rs.getString(3));
        
        return objTipoEmp;
    }

    public int getIdTipoEmp() {
        return idTipoEmp;
    }

    public void setIdTipoEmp(int idTipoEmp) {
        this.idTipoEmp = idTipoEmp;
    }

    public String getSuc_Descrip() {
        return Suc_Descrip;
    }

    public void setSuc_Descrip(String Suc_Descrip) {
        this.Suc_Descrip = Suc_Descrip;
    }

    public String getSuc_Estado() {
        return Suc_Estado;
    }

    public void setSuc_Estado(String Suc_Estado) {
        this.Suc_Estado = Suc_Estado;
    }

    @Override
    public String toString() {
        return "tipoempleado{" + "idTipoEmp=" + idTipoEmp + ", Suc_Descrip=" + Suc_Descrip + ", Suc_Estado=" + Suc_Estado + '}';
    }
    
}
