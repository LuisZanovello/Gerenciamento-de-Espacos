package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BD {



    public static Connection getConexao() throws ClassNotFoundException
             {
        Connection conexao = null;
        //Class.forName("com.mysql.jdbc.Driver");

        try {
            conexao =  DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/bancoisport", "root", "");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conexao;
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
