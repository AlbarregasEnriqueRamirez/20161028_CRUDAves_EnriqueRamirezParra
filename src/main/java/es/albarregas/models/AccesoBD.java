/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author rpk19
 */
public class AccesoBD {
    Connection conexion;
    DataSource ds;

    public AccesoBD() {
        iniciarConexion();
    }
    
    
    
    
    //este metodo inicia la conexion con la bd mediante pool de conexiones. Se llamara en el constructor de accesobd
    private void iniciarConexion(){
        try {
                Context initialContext = new InitialContext();
                ds = (DataSource)initialContext.lookup("java:comp/env/jdbc/Pool");
                        conexion = ds.getConnection();

            } catch (Exception ex) {
                Logger.getLogger(AccesoBD.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    /**
     * cierra conexion
     * @throws SQLException 
     */
    public void cerrarConexion() throws SQLException{
       
        conexion.close();
    }
   /**
    * ejecuta consultas select
    * @param consulta
    * @return
    * @throws SQLException 
    */
    public ResultSet ejecutarPreparada(String sql) throws SQLException{
        if(conexion!=null){
            return conexion.prepareStatement(sql).executeQuery();
        }
        return null;
    }
    /**
     * ejecuta insert update o delete
     * @param consulta
     * @return
     * @throws SQLException 
     */
 
    public int ejecutarUpdate(String sql) throws SQLException{
        int respuesta = 0;
        if(conexion!=null)
            respuesta = conexion.createStatement().executeUpdate(sql);
       return respuesta;
    }
}
