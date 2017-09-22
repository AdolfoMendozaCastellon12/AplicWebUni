/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.dao;

import com.AplicWebUniSena.bd.ConectarDB;
import com.AplicWebUniSena.modelo.programaformacion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Estudiante
 */
public class ProgramaFDaoImpl implements IDAO{
    ConectarDB con;
    PreparedStatement psmt = null;
    ResultSet rs = null;
    String respuesta = null;
    programaformacion ProgF;
    
    public ProgramaFDaoImpl() {
        con = new ConectarDB();
        con.setDriver("com.mysql.jdbc.Driver");
        con.setUrl("jdbc:mysql://localhost:3306/bd_senaunicol");
        con.setUsuario("root");
        
        con.setPassword("");
    }

    @Override
    public String insertar(Object obj) throws SQLException {
        programaformacion objProgF =  (programaformacion) obj;
        try {
            psmt = con.conectar().prepareStatement("INSERT INTO suc_progformacion VALUES (null,?,?,?,?)");
           
            psmt.setString(1, objProgF.getSuc_Fich());
            psmt.setString(2, objProgF.getSuc_nomb());
            psmt.setString(3, objProgF.getTipoF());
            psmt.setString(4, objProgF.getSuc_Estado());
            psmt.executeUpdate();
            respuesta = "El registro se realizo con exito";
            
        } catch (Exception e) {
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
        programaformacion objProgF = (programaformacion) obj;
        try {
            psmt = con.conectar().prepareStatement("UPDATE suc_progformacion SET Suc_Estado=? WHERE idProg=?");
            psmt.setString(1, "Inactivo");
            psmt.setInt(2, Integer.valueOf(objProgF.getIdProg()));
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
    public String modificar(Object obj) throws SQLException {
        programaformacion objProgF = (programaformacion) obj;
    
         
         try {
            psmt = con.conectar().prepareStatement("UPDATE suc_progformacion SET Suc_Fich=?, Suc_nomb=?, TForm=?, Suc_Estado=? WHERE idProg=? ");
            
            
            psmt.setString(1, objProgF.getSuc_Fich());
            psmt.setString(2, objProgF.getSuc_nomb());
            psmt.setString(3, objProgF.getTipoF());
            psmt.setString(4, objProgF.getSuc_Estado());
            psmt.setInt(5, objProgF.getIdProg());
            psmt.executeUpdate();
            respuesta = "El registro se realizo con exito";
            
        } catch (Exception e) {
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
    public List<programaformacion> listar() throws SQLException {
        List<programaformacion> listaProgF = new ArrayList<>();
        try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_progformacion");
            rs = psmt.executeQuery();
            while (rs.next()) {                
                listaProgF.add(programaformacion.load(rs));
            }
        } catch (Exception e) {
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
       return listaProgF;
    }
    

    @Override
    public Object buscarPorID(String id) throws SQLException {
        try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_progformacion WHERE idProg=?");
            psmt.setString(1,id);
            rs = psmt.executeQuery();
            while (rs.next()) {                
                
                ProgF =  programaformacion.load(rs);
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
        
       return ProgF;
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
    public List<?> busquedaPorParametro(String field, Object param) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> existeUsuario(String usuario, String clave) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String generarCodigo() throws SQLException {
        String codigo = null;
        try {
            psmt=con.conectar().prepareStatement("SELECT COUNT(idProg) FROM suc_progformacion");
            rs=psmt.executeQuery();
            while(rs.next()){
                codigo = "" + rs.getString(1).length();
               
         }
            
            
        } catch (Exception e) {
            throw new SQLException("Erro al generar código: "+e.toString());

        }
         return codigo;
   }
    }
    

