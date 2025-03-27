package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.conexaobd.ConexaoBD;
import model.dto.Receita;

public class ReceitaDAO {

    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;

    public void cadastrarReceita(Receita objReceita) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "insert into tb_receitas(nome,descricao,tempo_preparo,rendimento,ingredientes,modo_preparo)"
                + "values(?,?,?,?,?,?)";
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setString(1, objReceita.getNome());
            this.ps.setString(2, objReceita.getDescricao());
            this.ps.setDouble(3, objReceita.getTempo_preparo());
            this.ps.setDouble(4, objReceita.getRendimento());
            this.ps.setString(5, objReceita.getIngredientes());
            this.ps.setString(6, objReceita.getModo_preparo());

            this.ps.execute();
            this.ps.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar no banco - classe ReceitaDAO - método cadastrarReceita() - Erro: " + e);
        }
    }

    public ArrayList<Receita> listarReceitas() {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "SELECT * FROM tb_receitas";
        ArrayList<Receita> livroReceitas = new ArrayList<>();

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.resultado = this.ps.executeQuery(sql);

            while (this.resultado.next()) {
                Receita objReceita = new Receita();

                objReceita.setId(this.resultado.getInt("id_receita"));
                objReceita.setNome(this.resultado.getString("nome"));
                objReceita.setDescricao(this.resultado.getString("descricao"));
                objReceita.setTempo_preparo(this.resultado.getInt("tempo_preparo"));
                objReceita.setRendimento(this.resultado.getInt("rendimento"));
                objReceita.setIngredientes(this.resultado.getString("ingredientes"));
                objReceita.setModo_preparo(this.resultado.getString("modo_preparo"));

                livroReceitas.add(objReceita);
            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Erro ao listar do banco - classe ReceitaDAO - método listarReceita() - Erro: " + e);
        }
        return livroReceitas;
    }

    public void editarReceita(Receita objReceita) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "update tb_receitas "
                + "set nome=?,descricao=?,tempo_preparo=?,rendimento=?,ingredientes=?,modo_preparo=?"
                + "where id_receita=?";

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setString(1, objReceita.getNome());
            this.ps.setString(2, objReceita.getDescricao());
            this.ps.setDouble(3, objReceita.getTempo_preparo());
            this.ps.setDouble(4, objReceita.getRendimento());
            this.ps.setString(5, objReceita.getIngredientes());
            this.ps.setString(6, objReceita.getModo_preparo());
            this.ps.setInt(7, objReceita.getId());

            this.ps.execute();
            this.ps.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar no banco - classe ContatoDAO - método alterarContato() - Erro: " + e);
        }
    }

    public void excluirReceita(Receita objReceita) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "delete from tb_receitas "
                + "where id_receita = ?";

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setInt(1, objReceita.getId());

            this.ps.execute();
            this.ps.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar no banco - classe ContatoDAO - método excluirContato() - Erro: " + e);
        }
    }
}


