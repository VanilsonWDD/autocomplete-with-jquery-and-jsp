/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package autocomplete.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Vanilson
 */
public class Conexao {
    private final static String driver = "com.mysql.jdbc.Driver";
    private final static String path = "jdbc:mysql://localhost:3306/autocomplete";
    private final static String usuario = "root";
    private final static String senha = "root";
    private static Connection conexao;

    public static Connection getConnection() {
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(path, usuario, senha);
        } 
        catch (SQLException sqle) {
            System.out.println("Impossivel se conectar a base de dados");
        } 
        catch (ClassNotFoundException cnfe) {
            System.out.println("Impossivel encontrar a classe driver");
        }
        return conexao;
    }    
}
