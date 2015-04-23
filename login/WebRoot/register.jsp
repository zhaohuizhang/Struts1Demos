<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for RegisterForm form</title>
	</head>
	<body>
		<html:form action="/register">
			mail : <html:text property="mail"/><html:errors property="mail"/><br/>
			sex : <html:text property="sex"/><html:errors property="sex"/><br/>
			address : <html:text property="address"/><html:errors property="address"/><br/>
			age : <html:text property="age"/><html:errors property="age"/><br/>
			name : <html:text property="name"/><html:errors property="name"/><br/>
			repassword : <html:password property="repassword"/><html:errors property="repassword"/><br/>
			password : <html:password property="password"/><html:errors property="password"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

