/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package autocomplete.dao;

import autocomplete.conexao.Conexao;
import autocomplete.modelo.Pais;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Vanilson
 */
public class PaisDao {
    private Connection conexao;
    private ResultSet rs;
    private PreparedStatement ps;
    public PaisDao() {
    }
    public List<Pais> visualizarPais() {
        List<Pais> lp = new ArrayList<Pais>();
    
        try {
            conexao = Conexao.getConnection();
            ps = conexao.prepareStatement("select *from pais");
            rs = ps.executeQuery();
            if (!rs.next()) {
                System.out.println("Não existem paises cadastrados");
            } else {
                rs.beforeFirst();
                while (rs.next()) {
                    Pais p = new Pais();
                    p.setCodigo(rs.getInt("codigo_pais"));
                    p.setNome(rs.getString("nome_pais"));
                    lp.add(p);
                }
            }
        } catch (SQLException exception) {
            System.out.println("Impossivel visualizar paises " + exception);
        }
        return lp;
    }    
}
