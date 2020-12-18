package link;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TitleDaoImpl implements TitleDao{
	private Connection con;
	private PreparedStatement stat;
	private ResultSet rs;
	public List<TitleListBean> getTitle() {
		List<TitleListBean> list = new ArrayList<TitleListBean>();
		try{
			con =  DataBaseConnection.getConnection();
			String sql= "select Id,Name,Message,Time from titles ordar by Id";
			stat = con.prepareStatement(sql);
			rs = stat.executeQuery();
			while(rs.next()){
				TitleListBean tt = new TitleListBean();
				tt.setId(rs.getString("Id"));
				tt.setName(rs.getString("Name"));
				tt.setMessage(rs.getString("Message"));
				tt.setTime(rs.getString("Time"));
				list.add(tt);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			 DataBaseConnection.closeResultSet(rs);
			 DataBaseConnection.closeStatement(stat);
			 DataBaseConnection.closeConnection(con);
		}
		return list;
	}

	public int addTitle(TitleListBean addtitle) {
		int result= 0;
		try{
			con =  DataBaseConnection.getConnection();
			String  sql = "insert into titles(Id,Name,Message,Time) values(?,?,?,?)";
			stat = con.prepareStatement(sql);
			stat.setString(1,addtitle.getId());
			stat.setString(2,addtitle.getName());
			stat.setString(3,addtitle.getMessage());
			stat.setString(4,addtitle.getTime());
			result = stat.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			 DataBaseConnection.closeResultSet(rs);
			 DataBaseConnection.closeStatement(stat);
			 DataBaseConnection.closeConnection(con);
		}
		return result;
		
	}

	public int deleteTitle(String isbn) {
		int delete=0;
		try{
			con =  DataBaseConnection.getConnection();
			String sql = "delete from titles where Id = '"+isbn+"'";
			stat = con.prepareStatement(sql);
			delete = stat.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			 DataBaseConnection.closeResultSet(rs);
			 DataBaseConnection.closeStatement(stat);
			 DataBaseConnection.closeConnection(con);
		}
		return delete;
	}

	public int updateTitle(TitleListBean updatetitle) {
		int update= 0;
		try{
			con =  DataBaseConnection.getConnection();
			String sql = "update titles set Name = ?,Message = ?,Time = ? where Id=?";
			stat = con.prepareStatement(sql);
			stat.setString(1, updatetitle.getName());
			stat.setString(2, updatetitle.getMessage());
			stat.setString(3, updatetitle.getTime());
			stat.setString(4, updatetitle.getId());
			update = stat.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			 DataBaseConnection.closeResultSet(rs);
			 DataBaseConnection.closeStatement(stat);
			 DataBaseConnection.closeConnection(con);
		}
		
		return update;
		
	}
	public TitleListBean findById(String name) {
		TitleListBean list = null;
		try{
			con =  DataBaseConnection.getConnection();
			String sql = "select * from titles where Name = '"+name+"'";
			stat = con.prepareStatement(sql);
			rs = stat.executeQuery();
			while(rs.next()){
				list = new TitleListBean();
				list.setId(rs.getString("Id"));
				list.setName(rs.getString("Name"));
				list.setMessage(rs.getString("Message"));
				list.setTime(rs.getString("Time"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			 DataBaseConnection.closeResultSet(rs);
			 DataBaseConnection.closeStatement(stat);
			 DataBaseConnection.closeConnection(con);
		}
		
		
		return list;
	}

}