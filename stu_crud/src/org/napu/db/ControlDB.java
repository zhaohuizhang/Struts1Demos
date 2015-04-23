package org.napu.db;

import java.sql.Connection;
import java.sql.ResultSet;
import org.napu.bean.Student;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

public class ControlDB {
	
	private static ControlDB controlDB = null;
	
	private ControlDB() {
		
	}
	public static ControlDB getInstance() {
		if (controlDB == null) {
			controlDB = new ControlDB();
		}
		return controlDB;
	}
	
	public List<Student> executeQuery(String sql) throws Exception {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Student> list = new ArrayList<Student>();
		try {
			con = ConnectionFactory.getConnection();
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				Student stu = new Student();
				int i = 1;
				stu.setId(rs.getInt(i++));
				stu.setName(rs.getString(i++));
				stu.setClasses(rs.getString(i++));
				stu.setScore(rs.getString(i++));
				list.add(stu);
			}
		}catch(Exception e){
			throw e;
		}finally {
			DBclose.closeObject(rs, stmt, con);
		}
		return list;
	}
	
	
	public boolean excuteUpdate(String sql) throws Exception{
		boolean flag = false;
		Connection con = null;
		Statement stmt = null;
		try{
			con = ConnectionFactory.getConnection();
			stmt = con.createStatement();
			int row = stmt.executeUpdate(sql);
			flag = row > 0 ? true:false;
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			DBclose.closeObject(stmt, con);
		}
		return flag;
	}
} 
