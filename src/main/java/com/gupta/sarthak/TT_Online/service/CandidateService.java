package com.gupta.sarthak.TT_Online.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gupta.sarthak.TT_Online.model.Assessment;
import com.gupta.sarthak.TT_Online.model.Candidate;
import com.gupta.sarthak.TT_Online.repository.AssessmentRepository;
import com.gupta.sarthak.TT_Online.repository.CandidateRepository;

@Service
public class CandidateService {
	@Autowired
	CandidateRepository cRepo;
	@Autowired
	AssessmentRepository aRepo;
	private String mailId;

	public String getMailId() {
		return mailId;
	}

	public void setMailId(String mailId) {
		this.mailId = mailId;
	}

	public String checkLogin(String mail, String pwd){
		try{
			Candidate cd = cRepo.getOne(mail);
			setMailId(mail);
			if(cd==null){
				return "invalidUser";
			}
			String userType = cd.getType();
			if(!pwd.equalsIgnoreCase(cd.getPassword())){
				return "passwordError";
			}else if(userType.equalsIgnoreCase("candidate")){
				return "SuccessCandidate";
			}else{
				return "Reports";
			}
		}catch(Exception e){
			return "invalidUser";
		}
	}

	public String checkRegistration(String mail, String pwd, String fName, String lName, String type) {
		Candidate c = new Candidate();
		c.setEmail(mail);
		c.setPassword(pwd);
		c.setFirstName(fName);
		c.setLastName(lName);
		c.setType(type);
		cRepo.save(c);
		return "RegistrationSuccess";
	}

	public String springCalculator(String a,String b, String c, String d, String e) {
		Assessment ass = new Assessment();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		Date date = new Date();	
		int count = 0;
		if(a.equalsIgnoreCase("J2EE App Development Framework"))
			count++;
		if(b.equalsIgnoreCase("Inversion Of Control"))
			count++;
		if(c.equalsIgnoreCase("Aspect Oriented Programming"))
			count++;
		if(d.equalsIgnoreCase("Application Context"))
			count++;
		if(e.equalsIgnoreCase("Dispatcher Servlet"))
			count++;
		ass.setDate(formatter.format(date));
		ass.setAssType("Spring-L1");
		ass.setMarks(count*10);
		ass.setMail(getMailId());
		ass.setTotalMarks(50);
		System.out.println(a+"  "+b+"  "+c+"  "+mailId+"  *********************8               "+getMailId());
		if(count>=3){
			ass.setResult("Passed");
			aRepo.save(ass);
			return "SpringPass";
		}else{
			ass.setResult("Failed");
			aRepo.save(ass);
			return "SpringFail";
		}
	}
	
	public String hibernateCalculator(String a,String b, String c, String d, String e) {
		Assessment ass = new Assessment();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		Date date = new Date();
		int count = 0;
		if(a.equalsIgnoreCase("Object Relational Mapping"))
			count++;
		if(b.equalsIgnoreCase("uni-directional & bi-directional"))
			count++;
		if(c.equalsIgnoreCase("configuration file"))
			count++;
		if(d.equalsIgnoreCase("Hibernate Query Language"))
			count++;
		if(e.equalsIgnoreCase("isolation levels"))
			count++;
		ass.setDate(formatter.format(date));
		ass.setAssType("Hibernate-L1");
		ass.setMarks(count*10);
		ass.setMail(getMailId());
		ass.setTotalMarks(50);
		if(count>=3){
			ass.setResult("Passed");
			aRepo.save(ass);
			return "HibernatePass";
		}else{
			ass.setResult("Failed");
			aRepo.save(ass);
			return "HibernateFail";
		}
	}

	public List<Candidate> getUsers() {
	List<Candidate> users = cRepo.findAllByOrderByFirstNameAsc();
	return users;
	
	}

	public List<Assessment> getList() {
		return aRepo.findAll();
	}
}
