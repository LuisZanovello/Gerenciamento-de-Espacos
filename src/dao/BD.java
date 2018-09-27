package dao;

import java.sql.*;

public class BD {


    public static Connection getConexao()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection
                ("jdbc:mysql://localhost/bancoisport", "root", "");
    }

    public static void fecharConexao(Connection conexao, Statement comando){
        try{
            if (comando != null){
                comando.close();
            }
            if(conexao!= null){
                conexao.close();
            }
            } catch (SQLException ignored){

        }
    }

}
