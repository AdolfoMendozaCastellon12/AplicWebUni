/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.dao;

import com.AplicWebUniSena.bd.ConectarDB;
import com.AplicWebUniSena.modelo.TipoEmpleado;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Estudiante
 */
public class TipoEmpDaoImpl implements IDAO{
    ConectarDB con = new ConectarDB();
    PreparedStatement psmt = null;
    ResultSet rs = null;
    String respuesta = null;
    TipoEmpleado tipoemp;
    
    public TipoEmpDaoImpl() {
        con = new ConectarDB();
        con.setDriver("com.mysql.jdbc.Driver");
        con.setUrl("jdbc:mysql://localhost:3306/bd_senaunicol");
        con.setUsuario("root");
        
        con.setPassword("");
    }
    
    @Override
    public String insertar(Object obj) throws SQLException {
        TipoEmpleado objTipoEmp =  (TipoEmpleado) obj;
        try {
            psmt = con.conectar().prepareStatement("INSERT INTO suc_tipoemp VALUES (?,?,?,?)");
            psmt.setInt(1, objTipoEmp.getIdTipoEmp());
            psmt.setString(2, objTipoEmp.getSuc_Descrip());
            psmt.setString(3, objTipoEmp.getSuc_Estado());
            psmt.setInt(4, objTipoEmp.getSuc_Elimina());
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
        TipoEmpleado objTipoEmp = (TipoEmpleado) obj;
        try {
            psmt = con.conectar().prepareStatement("UPDATE suc_tipoemp SET Suc_Elimina=? WHERE idTipoEmp=?");
            psmt.setString(1, "0");
            psmt.setInt(2, objTipoEmp.getIdTipoEmp());
            psmt.executeUpdate();
            respuesta = "Se elimino el registro con exito";
        } catch (SQLException e) {
            throw new SQLException("Error al Eliminar: " + e.toString()); 
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
        TipoEmpleado objTipoEmpleado = (TipoEmpleado) obj;
        try {
            psmt = con.conectar().prepareStatement("UPDATE suc_tipoemp SET Suc_Descrip=?, Suc_Estado=? WHERE idTipoEmp=?");
            psmt.setString(1, objTipoEmpleado.getSuc_Descrip());
            psmt.setString(2, objTipoEmpleado.getSuc_Estado());
            psmt.setDouble(3, objTipoEmpleado.getIdTipoEmp());

            psmt.executeUpdate();
            respuesta = "El registro se actualizo con exito";
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
    public List<TipoEmpleado> listar() throws SQLException {
        List<TipoEmpleado> listatipoe = new ArrayList<>();
        try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_tipoemp WHERE Suc_Elimina='1'");
            rs = psmt.executeQuery();
            while (rs.next()) {                
                listatipoe.add(TipoEmpleado.load(rs));
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
       return listatipoe;
    }
    

    @Override
    public Object buscarPorID(String id) throws SQLException {
    try {
            psmt = con.conectar().prepareStatement("SELECT * FROM suc_tipoemp WHERE idTipoEmp=?");
            psmt.setString(1,id);
            rs = psmt.executeQuery();
            while (rs.next()) {                
                
                tipoemp =  TipoEmpleado.load(rs);
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
        
       return tipoemp;
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
    List<TipoEmpleado> listaBusquedaTipoE = new ArrayList<>();
        TipoEmpleado tipoe = (TipoEmpleado) param;
        int item = Integer.valueOf(field);
        String sql = null;
        try{
        switch (item) {
            case 0:
                sql="SELECT * FROM suc_tipoemp";
                psmt=con.conectar().prepareStatement(sql);
                break;
             case 1:
                sql="SELECT * FROM suc_tipoemp WHERE idTipoEmp LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setInt(1, tipoe.getIdTipoEmp());
                break;
            case 2:
                sql="SELECT * FROM suc_tipoemp WHERE Suc_Descrip LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setString(1, tipoe.getSuc_Descrip());
                break;
            case 3:
                sql="SELECT * FROM suc_tipoemp WHERE Suc_Estado LIKE ?";
                psmt=con.conectar().prepareStatement(sql);
                psmt.setString(1, tipoe.getSuc_Estado());
                break;
            
            default:
                throw new AssertionError();
        }
        rs = psmt.executeQuery();
        while(rs.next()){
        listaBusquedaTipoE.add(TipoEmpleado.load(rs));
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
        return listaBusquedaTipoE;
    }
    

    @Override
    public List<?> existeUsuario(String usuario, String clave) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String generarCodigo() throws SQLException {
        String codigo = null;
        try {
            psmt=con.conectar().prepareStatement("SELECT COUNT(idTipoEmp) FROM suc_tipoemp");
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
