<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hibernate Assessment </title>
</head>
<h2>Hibernate Assessment</h2>
<body bgcolor="cyan">
<form:form action="evaluate/hibernate/test" modelAttribute="hibernateTest" method="POST">
<h4>Question 1: What is the full form of ORM?</h4>
<form:radiobutton path="ques1" id="Q1-Opt1" name="Question1" value="Object Random Memory" label="Object Random Memory"/><br>
<form:radiobutton path="ques1" id="Q1-Opt2" name="Question1" value="Object Relational Mismatch" label="Object Relational Mismatch"/><br>
<form:radiobutton path="ques1" id="Q1-Opt3" name="Question1" value="Object Relational Mapping" label="Object Relational Mapping"/><br>
<form:radiobutton path="ques1" id="Q1-Opt4" name="Question1" value="Object Random Mapping" label="Object Random Mapping"/><br>
<br>
<h4>Question 2: In Hibernate, based on directionality, what could be the mappings?</h4>
<form:radiobutton path="ques2" id="Q2-Opt1" name="Question2" value="uni-directional & bi-directional" label="uni-directional and bi-directional"/><br>
<form:radiobutton path="ques2" id="Q2-Opt2" name="Question2" value="one-to-many & many-to-one" label="one-to-many and many-to-one"/><br>
<form:radiobutton path="ques2" id="Q2-Opt3" name="Question2" value="inheritance mapping" label="inheritance mapping"/><br>
<form:radiobutton path="ques2" id="Q2-Opt4" name="Question2" value="north & south mapping" label="north and south mapping"/><br>
<br>
<h4>Question 3: In an Hibernate application, which file would have datasource details?</h4>
<form:radiobutton path="ques3" id="Q3-Opt1" name="Question3" value="hibernate mapping file" label="Hibernate mapping file"/><br>
<form:radiobutton path="ques3" id="Q3-Opt2" name="Question3" value="configuration file" label="configuration file"/><br>
<form:radiobutton path="ques3" id="Q3-Opt3" name="Question3" value="Model/Entity class" label="Model/Entity class"/><br>
<form:radiobutton path="ques3" id="Q3-Opt4" name="Question3" value="HibernateUtil class" label="HibernateUtil class"/><br>
<br>
<h4>Question 4: What is the full form of HQL?</h4>
<form:radiobutton path="ques4" id="Q4-Opt1" name="Question4" value="High-level Query Language" label="High-level Query Languager"/><br>
<form:radiobutton path="ques4" id="Q4-Opt2" name="Question4" value="Hidden Query Language" label="Hidden Query Language"/><br>
<form:radiobutton path="ques4" id="Q4-Opt3" name="Question4" value="Hibernate Query Language" label="Hibernate Query Language"/><br>
<form:radiobutton path="ques4" id="Q4-Opt4" name="Question4" value="Hibernate Quadratic Language" label="Hibernate Quadratic Language"/><br>
<br>
<h4>Question 5: In an Hibernate application, concurrency can be controlled by setting?</h4>
<form:radiobutton path="ques5" id="Q5-Opt1" name="Question5" value="concurrency level" label="concurrency level"/><br>
<form:radiobutton path="ques5" id="Q5-Opt2" name="Question5" value="one-to-one mapping" label="one-to-one mapping"/><br>
<form:radiobutton path="ques5" id="Q5-Opt3" name="Question5" value="many-to-one bi-directional mapping" label="many-to-one bi-directional mapping"/><br>
<form:radiobutton path="ques5" id="Q5-Opt4" name="Question5" value="isolation levels" label="isolation levels"/><br>
<br>
<input type="submit" id="submithibernate" value="Submit">
</form:form>

</body>
</html>