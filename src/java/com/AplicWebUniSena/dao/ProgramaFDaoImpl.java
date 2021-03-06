/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.dao;

import com.AplicWebUniSena.bd.ConectarDB;
import com.AplicWebUniSena.modelo.ProgramaFormacion;
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
    ConectarDB con = new ConectarDB();
    PreparedStatement psmt = null;
    ResultSet rs = null;
    String respuesta = null;
    ProgramaFormacion progF;
    
    public ProgramaFDaoImpl() {
        con = new ConectarDB();
        con.setDriver("com.mysql.jdbc.Driver");
        con.setUrl("jdbc:mysql://localhost:3306/bd_senaunicol");
        con.setUsuario("root");
        
        con.setPassword("");
    }

    @Override
    public String insertar(Object obj) throws SQLException {
        ProgramaFormacion objProgF =  (ProgramaFormacion) obj;
        try {
            psmt = con.conectar().prepareStatement("INSERT INTO suc_progformacion VALUES (?,?,?,?,?,?)");
            psmt.setInt(1, objProgF.getIdProg());
            psmt.setString(2, objProgF.getSuc_Fich());
            psmt.setString(3, objProgF.getSuc_nomb());
            psmt.setString(4, objProgF.getTipoF());
            psmt.setString(5, objProgF.getSuc_Estado());
            psmt.setInt(6, objProgF.getSuc_Elimina());
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
        ProgramaFormacion objProgF = (ProgramaFormacion) obj;
        try {
            psmt = con.conectar().prepareStatement("UPDATE suc_progformacion SET Suc_Elimina=? WHERE idProg=?");
            psmt.setString(1, "0");
            psmt.setInt(2, (objProgF.getIdProg()));
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
        ProgramaFormacion objProgF = (ProgramaFormacion) obj;
    
         
         try {
            psmt = con.conectar().prepareStatement("UPDATE suc_progformacion SET Suc_Fich=?, Suc_nomb=?, TForm=?, Suc_Estado=? WHERE idProg=? ");
            
            
            psmt.setString(1, objProgF.getSuc_Fich());
            psmt.setString(2, objProgF.getSuc_nomb());
            psmt.setString(3, objProgF.getTipoF());
            psmt.setString(4, objProgF.getSuc_Estado());
            psmt.setInt(5, objProgF.getIdProg());
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
    public List<ProgramaFormacion> listar() throws SQLException {
        List<ProgramaFormacion> listaProgF = new ArrayList<>();
        try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_progformacion WHERE Suc_Elimina='1'");
            rs = psmt.executeQuery();
            while (rs.next()) {                
                listaProgF.add(ProgramaFormacion.load(rs));
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
       return listaProgF;
    }
    

    @Override
    public Object buscarPorID(String id) throws SQLException {
        try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_progformacion WHERE idProg=?");
            psmt.setString(1,id);
            rs = psmt.executeQuery();
            while (rs.next()) {                
                
                progF =  ProgramaFormacion.load(rs);
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
        
       return progF;
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
        List<ProgramaFormacion> listaBusquedaProgF = new ArrayList<>();
        ProgramaFormacion progf = (ProgramaFormacion) param;
        int item = Integer.valueOf(field);
        String sql = null;
        try{
        switch (item) {
            case 0:
                sql="SELECT * FROM suc_progformacion";
                psmt=con.conectar().prepareStatement(sql);
                break;
            case 1:
                sql="SELECT * FROM suc_progformacion WHERE idProg LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, progf.getIdProg());
                break;
            case 2:
                sql="SELECT * FROM suc_progformacion WHERE Suc_Fich LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setString(1, progf.getSuc_Fich());
                break;
            case 3:
                sql="SELECT * FROM suc_progformacion WHERE Suc_nomb LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setString(1, progf.getSuc_nomb());
                break;
            case 4:
                sql="SELECT * FROM suc_progformacion WHERE TForm LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setString(1, progf.getTipoF());
                break;
            case 5:
                sql="SELECT * FROM suc_progformacion WHERE Suc_Estado LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setString(1, progf.getSuc_Estado());
                break;
            
            default:
                throw new AssertionError();
        }
        rs = psmt.executeQuery();
        while(rs.next()){
        listaBusquedaProgF.add(ProgramaFormacion.load(rs));
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
        return listaBusquedaProgF;
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
    
