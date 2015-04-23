<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑学生信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.napu{
			font-size:12px;
		}
	</style>
  </head>
  
  <body>
  	<form action="student.do?method=update" method="post">
  		<table width="328" border="1" cellpadding="1" cellspacing="0" style="border-style:inherit" bordercolordark="#FFFFFF" class="napu">
  			<tr>
  				<td colspan="2" align="center" valign="middle">
  					<h2>信息详情如下</h2>
  				</td>
  			</tr>
  			<tr>
    			<td width="115" align="center">姓名：</td>
    			<td width="280"><input type="text" name="name" value="<c:out value='${stu.name }' />" /></td>
    		</tr>
    		<tr>
    			<td width="115" align="center">班级：</td>
    			<td width="280"><input type="text" name="classes" value="<c:out value='${stu.classes }' />"></td>
    		</tr>
    		<tr>
    			<td width="115" align="center">成绩：</td>
    			<td width="280"><input type="text" name="score" value="<c:out value='${stu.score }' />"></td>
    		</tr>
    		<tr>
    			<td>&nbsp;</td>
    			<td>
    				<input type="hidden" name="id" value="${stu.id }">
    				<input type="submit" name="Submit" value="确定">
    				<input type="reset" name="Submit1" value="重置">
    				<a href="student.do?method=getAll">查看全部信息</a>    			
    			</td>
    		</tr>
  		</table>
  	</form>
  </body>
</html>
