/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package employee.payroll.system;
import java.sql.*;
import javax.swing.*;
import javax.swing.JOptionPane;
/**
 *
 * @author USER
 */
public class DBconn {
    
    Connection c=null;
    public static Connection java_dbconn()
    {
        try {
             Class.forName("org.sqlite.JDBC");
             Connection c = DriverManager.getConnection("jdbc:sqlite:F:\\New Folder\\Employee Payroll System\\mydatabase.sqlite");
             return c;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
    }
}
