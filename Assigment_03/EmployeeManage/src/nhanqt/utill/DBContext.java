/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhanqt.utill;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author NhanSE140052
 */
public class DBContext {
    private final String serverName = "SE140052\\MSSQLSERVER02";
    private final String portNumber = "1433";
    private final String dbName = "Employee";
    private final String userId = "SE";
    private final String password = "se";
    public Connection getConnection()throws Exception{
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber+";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url,userId,password);
    }
}
