package org.napu.service;

import org.napu.bean.Student;
import java.util.List;

public interface StudentService {
	
	public boolean save(Student stu) throws Exception;
	
	public boolean delete(Student stu) throws Exception;
	
	public boolean update(Student stu) throws Exception;
	
	public List<Student> getAll() throws Exception;
	
	public Student getById(Student stu) throws Exception;
}
