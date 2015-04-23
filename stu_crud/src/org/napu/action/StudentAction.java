package org.napu.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.napu.bean.Student;
import org.napu.form.StudentForm;
import org.napu.service.StudentService;
import org.napu.serviceImpl.StudentServiceImpl;

public class StudentAction extends DispatchAction {
	
	private StudentService stuService = new StudentServiceImpl();
	
	
	public ActionForward save(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		
		StudentForm stuForm = (StudentForm) form;
		Student stu = new Student();
		PropertyUtils.copyProperties(stu, stuForm);
		boolean flag = stuService.save(stu);
		return mapping.findForward("toGetList");
	}
	
	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception{
			
			StudentForm stuForm = (StudentForm) form;
			Student stu = new Student();
			PropertyUtils.copyProperties(stu, stuForm);
			boolean flag = stuService.delete(stu);
			return mapping.findForward("toGetList");
	}
	
	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		StudentForm stuForm = (StudentForm) form;
		Student stu = new Student();
		PropertyUtils.copyProperties(stu, stuForm);
		boolean flag = stuService.update(stu);
		return mapping.findForward("toGetList");
	}
	
	public ActionForward getById(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		StudentForm stuForm = (StudentForm) form;
		Student stu = new Student();
		PropertyUtils.copyProperties(stu, stuForm);
		stu = stuService.getById(stu);
		request.setAttribute("stu", stu);
		return mapping.findForward("toEdit");
	}
	public ActionForward getAll(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		List<Student> list = stuService.getAll();
		request.setAttribute("list", list);
		return mapping.findForward("toList");
	}
}
