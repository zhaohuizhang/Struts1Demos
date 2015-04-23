<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="449" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#B0D8FF" ordercolor="#99CCFF" lign="center">
  		<tr><td colspan="2" align="center"> ${username } </td></tr>
  		<tr><td colspan="2" align="center" > 保存成功!</td></tr>
  		<tr><td colspan="2"> &nbsp;</td></tr>
  	</table>
  </body>
</html>
