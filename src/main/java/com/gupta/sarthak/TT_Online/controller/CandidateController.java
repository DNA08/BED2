package com.gupta.sarthak.TT_Online.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gupta.sarthak.TT_Online.model.Assessment;
import com.gupta.sarthak.TT_Online.model.Candidate;
import com.gupta.sarthak.TT_Online.service.CandidateService;
import com.gupta.sarthak.TT_Online.Question;


@Controller
public class CandidateController {
	@Autowired
	CandidateService cs;
	
	@RequestMapping(value = "/")
	public String sayHello(Model m){
		m.addAttribute("candidate", new Candidate());
		return "HomePage";
	}
	
	@RequestMapping(value="/login/do")
	public String postLoggingSteps(@ModelAttribute("candidate")Candidate c){
		String mail = c.getEmail();
		String pwd = c.getPassword();
		return cs.checkLogin(mail, pwd);
	}
	
	@RequestMapping(value = "/register")
	public String registrationPage(Model m){
		m.addAttribute("newCandidate", new Candidate());
		return "registration";
	}
	
	@RequestMapping(value = "/registration/do")
	public String postRegistration(@ModelAttribute("newCandidate")Candidate c, ModelMap map){
		String mail = c.getEmail();
		String pwd = c.getPassword();
		String fName = c.getFirstName();
		String lName = c.getLastName();
		String type = "candidate";
		map.addAttribute("firstName", fName);
		map.addAttribute("lastName",lName);
		return cs.checkRegistration(mail,pwd,fName,lName,type);
	}
	
	@RequestMapping(value = "/springAssessment")
	public String launchSpringTest(Model m){
		m.addAttribute("springTest", new Question());
		return "springAssessment";
	}
	
	@RequestMapping(value = "/hibernateAssessment")
	public String launchHibernateTest(Model m){
		m.addAttribute("hibernateTest", new Question());
		return "hibernateAssessment";
	}
	
	@RequestMapping(value = "/evaluate/spring/test")
	public String springResult(@ModelAttribute("springTest")Question q){
		String ans1 = q.getQues1();
		String ans2 = q.getQues2();
		String ans3 = q.getQues3();
		String ans4 = q.getQues4();
		String ans5 = q.getQues5();
		return	cs.springCalculator(ans1, ans2, ans3, ans4, ans5);
	}
	@RequestMapping(value = "/evaluate/hibernate/test")
	public String hibernateResult(@ModelAttribute("hibernateTest")Question q){
		String ans1 = q.getQues1();
		String ans2 = q.getQues2();
		String ans3 = q.getQues3();
		String ans4 = q.getQues4();
		String ans5 = q.getQues5();
		return	cs.hibernateCalculator(ans1, ans2, ans3, ans4, ans5);
	}
	
	@RequestMapping(value = "/users/all")
	public String showAllUsers(ModelMap model){
		List<Candidate> userList = cs.getUsers();
		model.addAttribute("userList", userList);
		return "UserList";
	}
	
	@RequestMapping(value = "/tests/all")
	public String testReports(ModelMap model){
		List<Assessment> reports  = cs.getList();
		model.addAttribute("reports",reports);
		return "CandidateReports";
	}
	
}
