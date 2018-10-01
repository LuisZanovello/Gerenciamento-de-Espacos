package dao;

import model.Contato;
import model.Disponibilidade;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import model.Contato;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DisponibilidadeDAO {


    public static class ContatoDAO {
        public static void gravar(Disponibilidade disponibilidade) throws SQLException, ClassNotFoundException{
            Connection conexao = null;
            PreparedStatement comando = null;
            try{
                conexao = BD.getConexao();
                String sql = "insert into disponibilidade (id, data, hora_inicio, hora_fim)"
                        + "values(?,?, ?, ?)";
                comando = ((Connection) conexao).prepareStatement(sql);
                comando.setLong(1, disponibilidade.getId());

                if(disponibilidade.getEspaco() == null){
                    comando.setNull(2, Types.NULL);
                }
                else{
                    comando.setLong(2, disponibilidade.getEspaco().getId());
                }

                comando.execute();
                BD.fecharConexao(conexao, comando);
            }catch(SQLException e){
                throw e;
            }

        }

        public static void alterar(Disponibilidade disponibilidade) throws SQLException, ClassNotFoundException{
            Connection conexao = null;
            PreparedStatement comando = null;
            try{
                conexao = BD.getConexao();
                String sql = "update disponibilidade set  dt_disponivel = ?, hr_inicio = ?,"
                        + "hr_fim = ? where id = ?";
                comando = conexao.prepareStatement(sql);
                comando.setString(1, disponibilidade.getDataDisponivel());
                comando.setString(2, disponibilidade.getHora_inicio());
                comando.setString(3, disponibilidade.getHora_fim());
                comando.setLong(4, disponibilidade.getId());

                if(disponibilidade.getEspaco() == null){
                    comando.setNull(2, Types.NULL);
                }
                else{
                    comando.setLong(2, disponibilidade.getEspaco().getId());
                }

                comando.execute();
                BD.fecharConexao(conexao, comando);
            }catch(SQLException e){
                throw e;
            }
        }

        public static void excluir (Disponibilidade disponibilidade) throws SQLException, ClassNotFoundException{
            Connection conexao = null;
            PreparedStatement comando = null;

            try{
                conexao = BD.getConexao();
                String sql = "delete from disponibilidade where id = ?";
                comando = conexao.prepareStatement(sql);
                comando.setLong(1, disponibilidade.getId());
                comando.execute();
            }catch (SQLException e){
                throw e;
            }finally {
                BD.fecharConexao(conexao, comando);
            }
        }

        public static Disponibilidade obterDisponibilidade(long id) throws  ClassNotFoundException{
            Connection conexao = null;
            PreparedStatement comando = null;
            Disponibilidade disponibilidade= null;

            try{
                conexao = BD.getConexao();
                String sql = "select * from disponibilidade where id = ?";
                comando = conexao.prepareStatement(sql);
                comando.setLong(1, id);
                ResultSet rs = comando.executeQuery(sql);
                rs.first();
                disponibilidade = new Disponibilidade (rs.getLong("id"),
                        rs.getString("dataDisponivel")),
                        rs.getString("hora_inicio")),
                        rs.getString("hora_fim"));


            }catch (SQLException e){
                e.printStackTrace();
            }finally {
                BD.fecharConexao(conexao, comando);
            }
            return disponibilidade;
        }


        public static List<Disponibilidade> obterTodosAsDisponibilidade() throws  ClassNotFoundException{
            Connection conexao = null;
            Statement comando = null;
            List<Disponibilidade disponibilidades = new ArrayList<Disponibilidade>();
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                String sql = "SELECT * FROM contato";
                ResultSet rs = comando.executeQuery(sql);
                while(rs.next()){
                    Disponibilidade disponibilidade = new Disponibilidade(rs.getLong("id"),
                            rs.getString("numero"));
                    disponibilidade.setEspaco(rs.getInt("cliente"));
                    Disponibilidades.add(Disponibilidade);
                }
            }catch(SQLException e){
                e.printStackTrace();
            }finally{
                BD.fecharConexao(conexao, comando);
            }

            return disponibilidades;
        }

    }

}
