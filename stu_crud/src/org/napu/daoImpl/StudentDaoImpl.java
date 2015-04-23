package org.napu.daoImpl;

import java.util.List;

import org.napu.bean.Student;
import org.napu.dao.StudentDao;
import org.napu.db.ControlDB;

public class StudentDaoImpl implements StudentDao {
	private ControlDB contrlDB = ControlDB.getInstance();
	@Override
	public boolean save(Student stu) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = true;
		String sql = "insert into student(name,classes,score) values('"+stu.getName()+"','"+stu.getClasses()+"','"+stu.getScore()+"')";
		flag = contrlDB.excuteUpdate(sql);
		return flag;
	}

	@Override
	public boolean delete(Student stu) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = true;
		String sql = "delete from student where id="+ stu.getId();
		flag = contrlDB.excuteUpdate(sql);
		return flag;
	}

	@Override
	public boolean update(Student stu) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = true;
		String sql = "update student set name = '"+stu.getName()+"',classes='"+stu.getClasses()+"',score='"+stu.getScore()+"' where id="+stu.getId();
		flag = contrlDB.excuteUpdate(sql);
		return flag;
	}

	@Override
	public List<Student> getAll() throws Exception {
		// TODO Auto-generated method stub
		String sql = "select * from student";
		List<Student> list = contrlDB.executeQuery(sql);
		return list;
	}

	@Override
	public Student getById(Student stu) throws Exception {
		// TODO Auto-generated method stub
		String sql = "select * from student where id="+stu.getId();
		List<Student> list = contrlDB.executeQuery(sql);
		return list.get(0);
	}
	
}
