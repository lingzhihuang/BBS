package link;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class t {

	public static void main(String[] args) {
		
		 Connection conn =DataBaseConnection.getConnection();
         Statement ststment;
		try {
			ststment = (Statement) conn.createStatement();
			String sql = "SELECT * FROM test";
	         ResultSet rs = ststment.executeQuery(sql);
	         String name;
	         String password;
	         while(rs.next()){
	             name = rs.getString("name");
	             password = rs.getString("password");
	             System.out.println(name+"  "+password);
	         }
	         rs.close();
	         conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//”√¿¥÷¥––sql”Ô—‘
         
	}

}

/*public static void closeStatement(Statement stat){
	try{
		if(stat!=null){
			stat.close();
			stat =null;
		}
	}catch(Exception e){
		e.printStackTrace();*/