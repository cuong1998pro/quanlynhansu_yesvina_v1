
package data_access_object;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class DataProvider {
    
    public final String connectString = "jdbc:mysql://"+"localhost"+":"+"3306"+"/"+"quanlynhansu";
    public static DataProvider instance=new DataProvider();
    
    private  Connection connection;
    private Statement statement;
    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
    
    public DataProvider(){
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection=DriverManager.getConnection(connectString,"root","vnmdnmlh");
            statement=connection.createStatement();
            JOptionPane.showMessageDialog(null, "Kết nối cơ sở dữ liệu thành công!");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage(),"",JOptionPane.ERROR_MESSAGE);
        }
    }
    public ResultSet executeQuery(String query){
        try{
            return statement.executeQuery(query);
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage(),"",JOptionPane.ERROR_MESSAGE);
            return null;
        }
    }
    public boolean executeNonQuery(String query){
        try{
             statement.execute(query);
            return true;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage(),"",JOptionPane.ERROR_MESSAGE);
            return false;
        }
    }
    public int excuteScala(String query){
        try{
            ResultSet rs=statement.executeQuery(query);
           if (rs.next())
              return rs.getInt(1);
           else 
               return -1;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage(),"",JOptionPane.ERROR_MESSAGE);
            return -1;
        }
    }
   
    
}
