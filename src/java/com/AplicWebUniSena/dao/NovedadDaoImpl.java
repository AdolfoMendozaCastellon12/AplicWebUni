/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.dao;

import com.AplicWebUniSena.bd.ConectarDB;
import com.AplicWebUniSena.modelo.Novedad;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author FLIACHICA
 */
public class NovedadDaoImpl implements IDAO{
ConectarDB con = new ConectarDB();
    PreparedStatement psmt = null;
    ResultSet rs = null;
    String respuesta = null;
    Novedad noved;
    
    public NovedadDaoImpl() {
        con = new ConectarDB();
        con.setDriver("com.mysql.jdbc.Driver");
        con.setUrl("jdbc:mysql://localhost:3306/bd_senaunicol");
        con.setUsuario("root");
        
        con.setPassword("");
    }
    
    @Override
    public String insertar(Object obj) throws SQLException {
        Novedad objNovedad =  (Novedad) obj;
        try {
            psmt = con.conectar().prepareStatement("INSERT INTO suc_noved VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
           
            psmt.setInt(1, objNovedad.getIdNoved());
            psmt.setInt(2, objNovedad.getNro_matriOrdi());
            psmt.setInt(3, objNovedad.getNro_matriExtemp());
            psmt.setInt(4, objNovedad.getRetiVoluntmes());
            psmt.setInt(5, objNovedad.getTotalReti());
            psmt.setInt(6, objNovedad.getCancelM());
            psmt.setInt(7, objNovedad.getCancelFich());
            psmt.setInt(8, objNovedad.getAplazamLect());
            psmt.setInt(9, objNovedad.getAprendiceReg());
            psmt.setInt(10, objNovedad.getAprendiceFor());
            psmt.setDate(11, objNovedad.getFechaRegistro());
            psmt.setInt(12, objNovedad.getIdInfor());
            psmt.executeUpdate();
            respuesta = "El registro se realizo con exito";
            
        } catch (SQLException e) {
            throw new SQLException("Error al registrar: " + e.toString());
        }finally{
            if(psmt!=null){
                psmt.close();
            }
            
            con.desconectar();
            
        }
        return respuesta;
    }
    

    @Override
    public String eliminar(Object obj) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String modificar(Object obj) throws SQLException {
        Novedad objNoved = (Novedad) obj;
    
         
         try {
            psmt = con.conectar().prepareStatement("UPDATE suc_noved SET Nro_matriOrdi=?, Nro_matriExtemp=?, RetiVoluntmes=?, totalReti=?, cancelM=?, cancelFich=?, aplazamLect=?, aprendiceReg=?, aprendiceFor=?, fechaRegistro=?, idInfor=? WHERE idNoved=? ");
            
            
            psmt.setInt(1, objNoved.getNro_matriOrdi());
            psmt.setInt(2, objNoved.getNro_matriExtemp());
            psmt.setInt(3, objNoved.getRetiVoluntmes());
            psmt.setInt(4, objNoved.getTotalReti());
            psmt.setInt(5, objNoved.getCancelM());
            psmt.setInt(6, objNoved.getCancelFich());
            psmt.setInt(7, objNoved.getAplazamLect());
            psmt.setInt(8, objNoved.getAprendiceReg());
            psmt.setInt(9, objNoved.getAprendiceFor());
            psmt.setDate(10, objNoved.getFechaRegistro());
            psmt.setInt(11, objNoved.getIdInfor());
            psmt.setInt(12, objNoved.getIdNoved());
            
            psmt.executeUpdate();
            respuesta = "El registro se realizo con exito";
            
        } catch (SQLException e) {
            throw new SQLException("Error al actualiza : " + e.toString());
        }finally{
            if(psmt!=null){
                psmt.close();
            }            
            con.desconectar();    
        }
        return respuesta;
    }
    

    @Override
    public List<Novedad> listar() throws SQLException {
        List<Novedad> listaNoved = new ArrayList<>();
        try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_noved");
            rs = psmt.executeQuery();
            while (rs.next()) {                
                listaNoved.add(Novedad.load(rs));
            }
        } catch (SQLException e) {
            System.out.println("Error en la consulta: " + e);
        }finally{
            if(psmt!=null){
                psmt.close();
            }
            if(rs!=null){
                rs.close();
            }
            
            con.desconectar();
        }
       return listaNoved;
    }
    

    @Override
    public Object buscarPorID(String id) throws SQLException {
        try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_noved WHERE idNoved=?");
            psmt.setString(1,id);
            rs = psmt.executeQuery();
            while (rs.next()) {                
                
                noved =  Novedad.load(rs);
            }
        } catch (SQLException e) {
            System.out.println("Error en la consulta: " + e);
        }finally{
            if(psmt!=null){
                psmt.close();
            }
            if(rs!=null){
                rs.close();
            }
            
            con.desconectar();
        }
        
       return noved;
    }
    

    @Override
    public int contar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean existe(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> busquedaPorParametro(String field, Object param) throws SQLException {
        List<Novedad> listaBusquedaNoved = new ArrayList<>();
        Novedad noved = (Novedad) param;
        int item = Integer.valueOf(field);
        String sql = null;
        try{
        switch (item) {
            case 0:
                sql="SELECT * FROM suc_noved";
                psmt=con.conectar().prepareStatement(sql);
                break;
            case 1:
                sql="SELECT * FROM suc_noved WHERE idNoved LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getIdNoved());
                break;
            case 2:
                sql="SELECT * FROM suc_noved WHERE Nro_matriOrdi LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getNro_matriOrdi());
                break;
            case 3:
                sql="SELECT * FROM suc_noved WHERE Nro_matriExtemp LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getNro_matriExtemp());
                break;
            case 4:
                sql="SELECT * FROM suc_noved WHERE RetiVoluntmes LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getRetiVoluntmes());
                break;
            case 5:
                sql="SELECT * FROM suc_noved WHERE totalReti LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getTotalReti());
                break;
            case 6:
                sql="SELECT * FROM suc_noved WHERE cancelM LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getCancelM());
                break;
            case 7:
                sql="SELECT * FROM suc_noved WHERE cancelFich LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getCancelFich());
                break;
            case 8:
                sql="SELECT * FROM suc_noved WHERE aplazamLect LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getAplazamLect());
                break;
            case 9:
                sql="SELECT * FROM suc_noved WHERE aprendiceReg LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getAprendiceReg());
                break;
            case 10:
                sql="SELECT * FROM suc_noved WHERE aprendiceFor LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getAprendiceFor());
                break;
            case 11:
                sql="SELECT * FROM suc_noved WHERE fechaRegistro LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setDate(1, noved.getFechaRegistro());
                break;
            case 12:
                sql="SELECT * FROM suc_noved WHERE idInfor LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, noved.getIdInfor());
                break;
            default:
                throw new AssertionError();
        }
        rs = psmt.executeQuery();
        while(rs.next()){
        listaBusquedaNoved.add(Novedad.load(rs));
        }
        }catch(SQLException e){
            System.out.println("Error en la consulta: " + e);
        }finally{
        if(psmt!=null){
        psmt.close();
        }
        if(rs!=null){
        rs.close();
        }
        con.desconectar();
        }
        return listaBusquedaNoved;
    }
    

    @Override
    public List<?> existeUsuario(String usuario, String clave) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String generarCodigo() throws SQLException {
        String codigo = null;
        try {
            psmt=con.conectar().prepareStatement("SELECT COUNT(idNoved) FROM suc_noved");
            rs=psmt.executeQuery();
//           int resultado= 1+ Integer.parseInt(rs.getString(1));
            
           
           while(rs.next()){
                int resultado= Integer.valueOf(rs.getString(1)) + 1;
                codigo="" + resultado;
               
         }
           
           
        } catch (SQLException e) {
            throw new SQLException("Error al generar código: "+e.toString());
        } finally{
        if(psmt!=null){
        psmt.close();
        }
        if(rs!=null){
        rs.close();
        }
        con.desconectar();  

        }
         return codigo;
    }
    
    }
    

