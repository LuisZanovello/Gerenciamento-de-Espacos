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


        public static void gravar(Disponibilidade disponibilidade) throws SQLException, ClassNotFoundException{
            Connection conexao = null;
            PreparedStatement comando = null;
            try{
                conexao = BD.getConexao();
                String sql = "insert into disponibilidade (id, data_disponivel, espaco_id, hora_inicio, hora_fim)"
                        + "values(?,?,?, ?, ?)";
                comando = ((Connection) conexao).prepareStatement(sql);
                comando.setLong(1, disponibilidade.getId());
                comando.setString(2, disponibilidade.getDataDisponivel());
                comando.setString(4, disponibilidade.getHora_inicio());
                comando.setString(5, disponibilidade.getHora_fim());

                if(disponibilidade.getIdEspaco() == null){
                    comando.setNull(3, Types.NULL);
                }
                else{
                    comando.setLong(3, disponibilidade.getIdEspaco());
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
                String sql = "update disponibilidade set  data_disponivel = ?, hora_inicio = ?,"
                        + "hora_fim = ?, espaco_id = ? where id = ?";
                comando = conexao.prepareStatement(sql);
                comando.setString(1, disponibilidade.getDataDisponivel());
                comando.setString(2, disponibilidade.getHora_inicio());
                comando.setString(3, disponibilidade.getHora_fim());
        
               

     
                    comando.setLong(4, disponibilidade.getIdEspaco());
        comando.setLong(5, disponibilidade.getId());
                
         comando.execute();
                
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
                comando.setLong(1,id);
                ResultSet rs = comando.executeQuery();
                rs.first();
                disponibilidade = new Disponibilidade (rs.getLong("id"),
                        rs.getString("data_disponivel"),
                        rs.getString("hora_inicio"),
                        rs.getString("hora_fim"),
                        rs.getLong("espaco_id"));


            }catch (SQLException e){
                e.printStackTrace();
            }finally {
                BD.fecharConexao(conexao, comando);
            }
            return disponibilidade;
        }


        public static List<Disponibilidade> obterTodosAsDisponibilidades() throws  ClassNotFoundException{
            Connection conexao = null;
            Statement comando = null;
            List<Disponibilidade> disponibilidades = new ArrayList<Disponibilidade>();
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                String sql = "SELECT * FROM disponibilidade";
                ResultSet rs = comando.executeQuery(sql);
                while(rs.next()){
                    disponibilidades.add(new Disponibilidade (rs.getLong("id"),
                            rs.getString("data_disponivel"),
                            rs.getString("hora_inicio"),
                            rs.getString("hora_fim"),
                            rs.getLong("espaco_id")));
                }
            }catch(SQLException e){
                e.printStackTrace();
            }finally{
                BD.fecharConexao(conexao, comando);
                return disponibilidades;
            }


        }

    }


