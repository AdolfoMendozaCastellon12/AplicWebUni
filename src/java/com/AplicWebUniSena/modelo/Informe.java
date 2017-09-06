
package com.AplicWebUniSena.modelo;

import java.sql.Date;


public class Informe {
    
    private int idInfor;
    private Date Suc_Fregistro;
    private Date Suc_Finforme;
    private String Suc_Estado;
    
    private int idEmp;

    public Informe() {
    }

    public Informe(int idInfor, Date Suc_Fregistro, Date Suc_Finforme, String Suc_Estado, int idEmp) {
        this.idInfor = idInfor;
        this.Suc_Fregistro = Suc_Fregistro;
        this.Suc_Finforme = Suc_Finforme;
        this.Suc_Estado = Suc_Estado;
        this.idEmp = idEmp;
    }

    public int getIdInfor() {
        return idInfor;
    }

    public void setIdInfor(int idInfor) {
        this.idInfor = idInfor;
    }

    public Date getSuc_Fregistro() {
        return Suc_Fregistro;
    }

    public void setSuc_Fregistro(Date Suc_Fregistro) {
        this.Suc_Fregistro = Suc_Fregistro;
    }

    public Date getSuc_Finforme() {
        return Suc_Finforme;
    }

    public void setSuc_Finforme(Date Suc_Finforme) {
        this.Suc_Finforme = Suc_Finforme;
    }

    public String getSuc_Estado() {
        return Suc_Estado;
    }

    public void setSuc_Estado(String Suc_Estado) {
        this.Suc_Estado = Suc_Estado;
    }

    public int getIdEmp() {
        return idEmp;
    }

    public void setIdEmp(int idEmp) {
        this.idEmp = idEmp;
    }

    @Override
    public String toString() {
        return "Informe{" + "idInfor=" + idInfor + ", Suc_Fregistro=" + Suc_Fregistro + ", Suc_Finforme=" + Suc_Finforme + ", Suc_Estado=" + Suc_Estado + ", idEmp=" + idEmp + '}';
    }
    
    
    
}
