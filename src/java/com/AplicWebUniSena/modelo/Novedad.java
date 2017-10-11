/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.modelo;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author FLIACHICA
 */
public class Novedad {
    private int idNoved;
    private int Nro_matriOrdi;
    private int Nro_matriExtemp;
    private int RetiVoluntmes;
    private int totalReti;
    private int cancelM;
    private int cancelFich;
    private int aplazamLect;
    private int aprendiceReg;
    private int aprendiceFor;
    private Date fechaRegistro;
    private int idInfor;
    private int Suc_Elimina;

    public Novedad() {
    }

    public Novedad(int idNoved, int Nro_matriOrdi, int Nro_matriExtemp, int RetiVoluntmes, int totalReti, int cancelM, int cancelFich, int aplazamLect, int aprendiceReg, int aprendiceFor, Date fechaRegistro, int idInfor, int Suc_Elimina) {
        this.idNoved = idNoved;
        this.Nro_matriOrdi = Nro_matriOrdi;
        this.Nro_matriExtemp = Nro_matriExtemp;
        this.RetiVoluntmes = RetiVoluntmes;
        this.totalReti = totalReti;
        this.cancelM = cancelM;
        this.cancelFich = cancelFich;
        this.aplazamLect = aplazamLect;
        this.aprendiceReg = aprendiceReg;
        this.aprendiceFor = aprendiceFor;
        this.fechaRegistro = fechaRegistro;
        this.idInfor = idInfor;
        this.Suc_Elimina = Suc_Elimina;
    }

   
    public static Novedad load(ResultSet rs)throws SQLException{
        Novedad objNoved = new Novedad();
        objNoved.setIdNoved(rs.getInt(1));
        objNoved.setNro_matriOrdi(rs.getInt(2));
        objNoved.setNro_matriExtemp(rs.getInt(3));
        objNoved.setRetiVoluntmes(rs.getInt(4));
        objNoved.setTotalReti(rs.getInt(5));
        objNoved.setCancelM(rs.getInt(6));
        objNoved.setCancelFich(rs.getInt(7));
        objNoved.setAplazamLect(rs.getInt(8));
        objNoved.setAprendiceReg(rs.getInt(9));
        objNoved.setAprendiceFor(rs.getInt(10));
        objNoved.setFechaRegistro(rs.getDate(11));
        objNoved.setIdInfor(rs.getInt(12));
        
        return objNoved;
    }

    
   

    public int getIdNoved() {
        return idNoved;
    }

    public void setIdNoved(int idNoved) {
        this.idNoved = idNoved;
    }

    public int getNro_matriOrdi() {
        return Nro_matriOrdi;
    }

    public void setNro_matriOrdi(int Nro_matriOrdi) {
        this.Nro_matriOrdi = Nro_matriOrdi;
    }

    public int getNro_matriExtemp() {
        return Nro_matriExtemp;
    }

    public void setNro_matriExtemp(int Nro_matriExtemp) {
        this.Nro_matriExtemp = Nro_matriExtemp;
    }

    public int getRetiVoluntmes() {
        return RetiVoluntmes;
    }

    public void setRetiVoluntmes(int RetiVoluntmes) {
        this.RetiVoluntmes = RetiVoluntmes;
    }

    public int getTotalReti() {
        return totalReti;
    }

    public void setTotalReti(int totalReti) {
        this.totalReti = totalReti;
    }

    public int getCancelM() {
        return cancelM;
    }

    public void setCancelM(int cancelM) {
        this.cancelM = cancelM;
    }

    public int getCancelFich() {
        return cancelFich;
    }

    public void setCancelFich(int cancelFich) {
        this.cancelFich = cancelFich;
    }

    public int getAplazamLect() {
        return aplazamLect;
    }

    public void setAplazamLect(int aplazamLect) {
        this.aplazamLect = aplazamLect;
    }

    public int getAprendiceReg() {
        return aprendiceReg;
    }

    public void setAprendiceReg(int aprendiceReg) {
        this.aprendiceReg = aprendiceReg;
    }

    public int getAprendiceFor() {
        return aprendiceFor;
    }

    public void setAprendiceFor(int aprendiceFor) {
        this.aprendiceFor = aprendiceFor;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public int getIdInfor() {
        return idInfor;
    }

    public void setIdInfor(int idInfor) {
        this.idInfor = idInfor;
    }

    public int getSuc_Elimina() {
        return Suc_Elimina;
    }

    public void setSuc_Elimina(int Suc_Elimina) {
        this.Suc_Elimina = Suc_Elimina;
    }

    @Override
    public String toString() {
        return "Novedad{" + "idNoved=" + idNoved + ", Nro_matriOrdi=" + Nro_matriOrdi + ", Nro_matriExtemp=" + Nro_matriExtemp + ", RetiVoluntmes=" + RetiVoluntmes + ", totalReti=" + totalReti + ", cancelM=" + cancelM + ", cancelFich=" + cancelFich + ", aplazamLect=" + aplazamLect + ", aprendiceReg=" + aprendiceReg + ", aprendiceFor=" + aprendiceFor + ", fechaRegistro=" + fechaRegistro + ", idInfor=" + idInfor + ", Suc_Elimina=" + Suc_Elimina + '}';
    }
    
   
    
    
}
