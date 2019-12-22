package com.gupta.sarthak.TT_Online.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TestDetails")
public class Assessment {
	@Id
	@Column(name="Date")
	private String date;
	
	@Column(name= "Email")
	private String mail;
	
	@Column(name = "Assessment")
	private String assType;
	
	@Column(name = "TestMarks")
	private int marks;
	
	@Column(name = "TotalMarks")
	private int totalMarks;
	
	@Column(name = "Result")
	private String result;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAssType() {
		return assType;
	}

	public void setAssType(String assType) {
		this.assType = assType;
	}

	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}

	public int getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	}
