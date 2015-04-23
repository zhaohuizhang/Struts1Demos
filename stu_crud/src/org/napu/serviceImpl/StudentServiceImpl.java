package org.napu.serviceImpl;

import java.util.List;

import org.napu.bean.Student;
import org.napu.dao.StudentDao;
import org.napu.daoImpl.StudentDaoImpl;
import org.napu.service.StudentService;

public class StudentServiceImpl implements StudentService {
	private StudentDao studentDao = new StudentDaoImpl();
	@Override
	public boolean save(Student stu) throws Exception {
		// TODO Auto-generated method stub
		return studentDao.save(stu);
	}

	@Override
	public boolean delete(Student stu) throws Exception {
		// TODO Auto-generated method stub
		return studentDao.delete(stu);
	}

	@Override
	public boolean update(Student stu) throws Exception {
		// TODO Auto-generated method stub
		return studentDao.update(stu);
	}

	@Override
	public List<Student> getAll() throws Exception {
		// TODO Auto-generated method stub
		return studentDao.getAll();
	}

	@Override
	public Student getById(Student stu) throws Exception {
		// TODO Auto-generated method stub
		return studentDao.getById(stu);
	}

}
