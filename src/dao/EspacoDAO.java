package dao;

import model.Espaco;
import model.TipoDeEspaco;

import java.sql.*;
import java.util.ArrayList;

public class EspacoDAO {

    public static void gravar(Espaco espaco) throws SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        String sql;

        try {
            conexao = BD.getConexao();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
             sql = "insert into espaco(id, nome, cnpj, cep, logradouro, numero, complemento, bairro, cidade, uf,area, " +
                     "quantidade_pessoas,hora_funcionamento_inicio, hora_funcionamento_final,tipo_espaco_id)"
                    + " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, espaco.getId());
            comando.setString(2, espaco.getNome());
            comando.setString(3, espaco.getCnpj());
            comando.setString(4, espaco.getCep());
            comando.setString(5, espaco.getLogradouro());
            comando.setInt(6,espaco.getNumero());
            comando.setString(7, espaco.getComplemento());
            comando.setString(8, espaco.getBairro());
            comando.setString(9, espaco.getCidade());
            comando.setString(10, espaco.getUf());
            comando.setDouble(11, espaco.getArea());
            comando.setInt(12, espaco.getQuantidadePessoas());
            comando.setString(13, espaco.getHoraFuncionamentoInicio());
            comando.setString(14, espaco.getHoraFuncionamentoFinal());


            if (espaco.getIdTipoEspaco()== null) {
                comando.setNull(15, Types.NULL);
            } else {
                comando.setLong(15, espaco.getIdTipoEspaco());
            }
            comando.execute();

            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Espaco espaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update espaco set nome=?, cnpj=?, cep=?, logradouro=?, numero=?, complemento=?, bairro=?, " +
                    "cidade=?, uf=?, area=?,quantidade_pessoas=?,hora_funcionamento_inicio=?, hora_funcionamento_final=?," +
                    "tipo_espaco_id=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1, espaco.getNome());
            comando.setString(2, espaco.getCnpj());
            comando.setString(3, espaco.getCep());
            comando.setString(4, espaco.getLogradouro());
            comando.setInt(5,espaco.getNumero());
            comando.setString(6, espaco.getComplemento());
            comando.setString(7, espaco.getBairro());
            comando.setString(8, espaco.getCidade());
            comando.setString(9, espaco.getUf());
            comando.setDouble(10, espaco.getArea());
            comando.setInt(11, espaco.getQuantidadePessoas());
            comando.setString(12, espaco.getHoraFuncionamentoInicio());
            comando.setString(13, espaco.getHoraFuncionamentoFinal());

            if (espaco.getIdTipoEspaco() == null) {
                comando.setNull(14, Types.NULL);
            } else {
                comando.setLong(14, espaco.getIdTipoEspaco());
            }
            comando.setLong(15, espaco.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Espaco espaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from espaco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, espaco.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }
    public static Espaco obterEspaco (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Espaco espaco = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from espaco  where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            espaco = new Espaco();
                    espaco.setId(rs.getLong("id"));
                    espaco.setNome(rs.getString("nome"));
                    espaco.setCnpj(rs.getString("cnpj"));
                    espaco.setCep(rs.getString("cep"));
                    espaco.setLogradouro(rs.getString("logradouro"));
                    espaco.setNumero(rs.getInt("numero"));
                    espaco.setComplemento(rs.getString("complemento"));
                    espaco.setBairro(rs.getString("bairro"));
                    espaco.setCidade(rs.getString("cidade"));
                    espaco.setUf(rs.getString("uf"));
                    espaco.setArea(rs.getDouble("area"));
                    espaco.setQuantidadePessoas(rs.getInt("quantidade_Pessoas"));
                    espaco.setHoraFuncionamentoInicio(rs.getString("hora_Funcionamento_Inicio"));
                    espaco.setHoraFuncionamentoFinal(rs.getString("hora_Funcionamento_Final"));
                    espaco.setIdTipoEspaco(rs.getLong("tipo_espaco_id"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return espaco;
    }

    public static ArrayList<Espaco> obterTodosEspacos() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;
        ArrayList<Espaco> lista = new ArrayList<>();
        Espaco espaco = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from espaco";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                lista.add(new Espaco()
                .setId(rs.getLong("id"))
                        .setNome(rs.getString("nome"))
                        .setCnpj(rs.getString("cnpj"))
                        .setCep(rs.getString("cep"))
                        .setLogradouro(rs.getString("logradouro"))
                        .setNumero(rs.getInt("numero"))
                        .setComplemento(rs.getString("complemento"))
                        .setBairro(rs.getString("bairro"))
                        .setCidade(rs.getString("cidade"))
                        .setUf(rs.getString("uf"))
                        .setArea(rs.getDouble("area"))
                        .setQuantidadePessoas(rs.getInt("quantidade_Pessoas"))
                        .setHoraFuncionamentoInicio(rs.getString("hora_Funcionamento_Inicio"))
                        .setHoraFuncionamentoFinal(rs.getString("hora_Funcionamento_Final"))
                        .setIdTipoEspaco(rs.getLong("tipo_espaco_id"))
                        );
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
            return lista;
        }

    }
}