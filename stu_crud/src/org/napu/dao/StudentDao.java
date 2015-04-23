package org.napu.dao;

import java.util.List;

import org.napu.bean.Student;

public interface StudentDao {
	
	public boolean save(Student stu) throws Exception;
	
	public boolean delete(Student stu) throws Exception;
	
	public boolean update(Student stu) throws Exception;
	
	public List<Student> getAll() throws Exception;
	
	public Student getById(Student stu) throws Exception;
}
