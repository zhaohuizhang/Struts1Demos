package org.napu.form;

import org.apache.struts.action.ActionForm;

public class StudentForm extends ActionForm {
	
	private int id;
	private String name;
	private String classes;
	private String score;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	
		
	
}
